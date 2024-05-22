resource "aws_instance" "my_instance" {
  count         = 2
  instance_type = "t2.micro"
  ami           = "ami-04b70fa74e45c3917"

  tags = {
    Name = "TF_automated"
  }
}

output "aws_instance_infor" {
  value = aws_instance.my_instance[*].private_ip
}

resource "aws_s3_bucket" "my-bucket" {
  bucket = "devops-zero-to-hero-batch-4-bucket"
}
