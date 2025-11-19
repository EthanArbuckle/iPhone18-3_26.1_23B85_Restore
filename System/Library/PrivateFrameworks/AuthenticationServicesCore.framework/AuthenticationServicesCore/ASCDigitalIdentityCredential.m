@interface ASCDigitalIdentityCredential
- (ASCDigitalIdentityCredential)initWithCoder:(id)a3;
- (ASCDigitalIdentityCredential)initWithCommandResponseData:(id)a3;
- (BOOL)isEqual:(id)a3;
@end

@implementation ASCDigitalIdentityCredential

- (ASCDigitalIdentityCredential)initWithCommandResponseData:(id)a3
{
  v4 = a3;
  if (v4 && (v9.receiver = self, v9.super_class = ASCDigitalIdentityCredential, (self = [(ASCDigitalIdentityCredential *)&v9 init]) != 0))
  {
    v5 = [v4 copy];
    commandResponseData = self->_commandResponseData;
    self->_commandResponseData = v5;

    self = self;
    v7 = self;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v7 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      commandResponseData = self->_commandResponseData;
      v6 = [(ASCDigitalIdentityCredential *)v4 commandResponseData];
      v7 = [(NSData *)commandResponseData isEqual:v6];
    }

    else
    {
      v7 = 0;
    }
  }

  return v7;
}

- (ASCDigitalIdentityCredential)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"commandResponseData"];

  v6 = [(ASCDigitalIdentityCredential *)self initWithCommandResponseData:v5];
  return v6;
}

@end