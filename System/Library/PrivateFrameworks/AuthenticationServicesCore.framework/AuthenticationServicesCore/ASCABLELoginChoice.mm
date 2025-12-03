@interface ASCABLELoginChoice
- (ASCABLELoginChoice)initWithCoder:(id)coder;
- (ASCABLELoginChoice)initWithQRCodeURL:(id)l;
@end

@implementation ASCABLELoginChoice

- (ASCABLELoginChoice)initWithQRCodeURL:(id)l
{
  lCopy = l;
  v10.receiver = self;
  v10.super_class = ASCABLELoginChoice;
  v6 = [(ASCABLELoginChoice *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_qrCodeURL, l);
    v8 = v7;
  }

  return v7;
}

- (ASCABLELoginChoice)initWithCoder:(id)coder
{
  coderCopy = coder;
  v10.receiver = self;
  v10.super_class = ASCABLELoginChoice;
  v5 = [(ASCABLELoginChoice *)&v10 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"qrCodeURL"];
    qrCodeURL = v5->_qrCodeURL;
    v5->_qrCodeURL = v6;

    v8 = v5;
  }

  return v5;
}

@end