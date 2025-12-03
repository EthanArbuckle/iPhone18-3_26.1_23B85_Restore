@interface ASAuthorizationPublicKeyCredentialLargeBlobAssertionOutput
- (ASAuthorizationPublicKeyCredentialLargeBlobAssertionOutput)initWithCoder:(id)coder;
- (id)_initWithData:(id)data didWrite:(BOOL)write;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ASAuthorizationPublicKeyCredentialLargeBlobAssertionOutput

- (id)_initWithData:(id)data didWrite:(BOOL)write
{
  dataCopy = data;
  v12.receiver = self;
  v12.super_class = ASAuthorizationPublicKeyCredentialLargeBlobAssertionOutput;
  v7 = [(ASAuthorizationPublicKeyCredentialLargeBlobAssertionOutput *)&v12 init];
  if (v7)
  {
    v8 = [dataCopy copy];
    readData = v7->_readData;
    v7->_readData = v8;

    v7->_didWrite = write;
    v10 = v7;
  }

  return v7;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [ASAuthorizationPublicKeyCredentialLargeBlobAssertionOutput allocWithZone:zone];
  readData = self->_readData;
  didWrite = self->_didWrite;

  return [(ASAuthorizationPublicKeyCredentialLargeBlobAssertionOutput *)v4 _initWithData:readData didWrite:didWrite];
}

- (void)encodeWithCoder:(id)coder
{
  readData = self->_readData;
  coderCopy = coder;
  [coderCopy encodeObject:readData forKey:@"readData"];
  [coderCopy encodeBool:self->_didWrite forKey:@"didWrite"];
}

- (ASAuthorizationPublicKeyCredentialLargeBlobAssertionOutput)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"readData"];
  v6 = [coderCopy decodeBoolForKey:@"didWrite"];

  v7 = [(ASAuthorizationPublicKeyCredentialLargeBlobAssertionOutput *)self _initWithData:v5 didWrite:v6];
  return v7;
}

@end