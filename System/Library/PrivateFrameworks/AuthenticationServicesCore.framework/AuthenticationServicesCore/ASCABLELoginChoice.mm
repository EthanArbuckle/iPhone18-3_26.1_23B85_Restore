@interface ASCABLELoginChoice
- (ASCABLELoginChoice)initWithCoder:(id)a3;
- (ASCABLELoginChoice)initWithQRCodeURL:(id)a3;
@end

@implementation ASCABLELoginChoice

- (ASCABLELoginChoice)initWithQRCodeURL:(id)a3
{
  v5 = a3;
  v10.receiver = self;
  v10.super_class = ASCABLELoginChoice;
  v6 = [(ASCABLELoginChoice *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_qrCodeURL, a3);
    v8 = v7;
  }

  return v7;
}

- (ASCABLELoginChoice)initWithCoder:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = ASCABLELoginChoice;
  v5 = [(ASCABLELoginChoice *)&v10 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"qrCodeURL"];
    qrCodeURL = v5->_qrCodeURL;
    v5->_qrCodeURL = v6;

    v8 = v5;
  }

  return v5;
}

@end