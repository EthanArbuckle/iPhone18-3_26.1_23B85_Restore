@interface ASAuthorizationPublicKeyCredentialLargeBlobAssertionOutput
- (ASAuthorizationPublicKeyCredentialLargeBlobAssertionOutput)initWithCoder:(id)a3;
- (id)_initWithData:(id)a3 didWrite:(BOOL)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation ASAuthorizationPublicKeyCredentialLargeBlobAssertionOutput

- (id)_initWithData:(id)a3 didWrite:(BOOL)a4
{
  v6 = a3;
  v12.receiver = self;
  v12.super_class = ASAuthorizationPublicKeyCredentialLargeBlobAssertionOutput;
  v7 = [(ASAuthorizationPublicKeyCredentialLargeBlobAssertionOutput *)&v12 init];
  if (v7)
  {
    v8 = [v6 copy];
    readData = v7->_readData;
    v7->_readData = v8;

    v7->_didWrite = a4;
    v10 = v7;
  }

  return v7;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [ASAuthorizationPublicKeyCredentialLargeBlobAssertionOutput allocWithZone:a3];
  readData = self->_readData;
  didWrite = self->_didWrite;

  return [(ASAuthorizationPublicKeyCredentialLargeBlobAssertionOutput *)v4 _initWithData:readData didWrite:didWrite];
}

- (void)encodeWithCoder:(id)a3
{
  readData = self->_readData;
  v5 = a3;
  [v5 encodeObject:readData forKey:@"readData"];
  [v5 encodeBool:self->_didWrite forKey:@"didWrite"];
}

- (ASAuthorizationPublicKeyCredentialLargeBlobAssertionOutput)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"readData"];
  v6 = [v4 decodeBoolForKey:@"didWrite"];

  v7 = [(ASAuthorizationPublicKeyCredentialLargeBlobAssertionOutput *)self _initWithData:v5 didWrite:v6];
  return v7;
}

@end