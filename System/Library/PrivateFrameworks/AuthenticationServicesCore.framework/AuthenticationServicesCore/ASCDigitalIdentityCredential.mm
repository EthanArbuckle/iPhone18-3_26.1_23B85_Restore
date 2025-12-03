@interface ASCDigitalIdentityCredential
- (ASCDigitalIdentityCredential)initWithCoder:(id)coder;
- (ASCDigitalIdentityCredential)initWithCommandResponseData:(id)data;
- (BOOL)isEqual:(id)equal;
@end

@implementation ASCDigitalIdentityCredential

- (ASCDigitalIdentityCredential)initWithCommandResponseData:(id)data
{
  dataCopy = data;
  if (dataCopy && (v9.receiver = self, v9.super_class = ASCDigitalIdentityCredential, (self = [(ASCDigitalIdentityCredential *)&v9 init]) != 0))
  {
    v5 = [dataCopy copy];
    commandResponseData = self->_commandResponseData;
    self->_commandResponseData = v5;

    self = self;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v7 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      commandResponseData = self->_commandResponseData;
      commandResponseData = [(ASCDigitalIdentityCredential *)equalCopy commandResponseData];
      v7 = [(NSData *)commandResponseData isEqual:commandResponseData];
    }

    else
    {
      v7 = 0;
    }
  }

  return v7;
}

- (ASCDigitalIdentityCredential)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"commandResponseData"];

  v6 = [(ASCDigitalIdentityCredential *)self initWithCommandResponseData:v5];
  return v6;
}

@end