@interface ASAuthorizationPublicKeyCredentialLargeBlobAssertionInput
- (ASAuthorizationPublicKeyCredentialLargeBlobAssertionInput)initWithCoder:(id)a3;
- (id)_initWithOperation:(int64_t)a3 dataToWrite:(id)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation ASAuthorizationPublicKeyCredentialLargeBlobAssertionInput

- (id)_initWithOperation:(int64_t)a3 dataToWrite:(id)a4
{
  v6 = a4;
  v13.receiver = self;
  v13.super_class = ASAuthorizationPublicKeyCredentialLargeBlobAssertionInput;
  v7 = [(ASAuthorizationPublicKeyCredentialLargeBlobAssertionInput *)&v13 init];
  v8 = v7;
  if (v7)
  {
    v7->_operation = a3;
    v9 = [v6 copy];
    dataToWrite = v8->_dataToWrite;
    v8->_dataToWrite = v9;

    v11 = v8;
  }

  return v8;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [ASAuthorizationPublicKeyCredentialLargeBlobAssertionInput allocWithZone:a3];
  operation = self->_operation;
  dataToWrite = self->_dataToWrite;

  return [(ASAuthorizationPublicKeyCredentialLargeBlobAssertionInput *)v4 _initWithOperation:operation dataToWrite:dataToWrite];
}

- (void)encodeWithCoder:(id)a3
{
  operation = self->_operation;
  v5 = a3;
  [v5 encodeInteger:operation forKey:@"operation"];
  [v5 encodeObject:self->_dataToWrite forKey:@"dataToWrite"];
}

- (ASAuthorizationPublicKeyCredentialLargeBlobAssertionInput)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeIntegerForKey:@"operation"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"dataToWrite"];

  v7 = [(ASAuthorizationPublicKeyCredentialLargeBlobAssertionInput *)self _initWithOperation:v5 dataToWrite:v6];
  return v7;
}

@end