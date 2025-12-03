@interface ASAuthorizationPublicKeyCredentialLargeBlobAssertionInput
- (ASAuthorizationPublicKeyCredentialLargeBlobAssertionInput)initWithCoder:(id)coder;
- (id)_initWithOperation:(int64_t)operation dataToWrite:(id)write;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ASAuthorizationPublicKeyCredentialLargeBlobAssertionInput

- (id)_initWithOperation:(int64_t)operation dataToWrite:(id)write
{
  writeCopy = write;
  v13.receiver = self;
  v13.super_class = ASAuthorizationPublicKeyCredentialLargeBlobAssertionInput;
  v7 = [(ASAuthorizationPublicKeyCredentialLargeBlobAssertionInput *)&v13 init];
  v8 = v7;
  if (v7)
  {
    v7->_operation = operation;
    v9 = [writeCopy copy];
    dataToWrite = v8->_dataToWrite;
    v8->_dataToWrite = v9;

    v11 = v8;
  }

  return v8;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [ASAuthorizationPublicKeyCredentialLargeBlobAssertionInput allocWithZone:zone];
  operation = self->_operation;
  dataToWrite = self->_dataToWrite;

  return [(ASAuthorizationPublicKeyCredentialLargeBlobAssertionInput *)v4 _initWithOperation:operation dataToWrite:dataToWrite];
}

- (void)encodeWithCoder:(id)coder
{
  operation = self->_operation;
  coderCopy = coder;
  [coderCopy encodeInteger:operation forKey:@"operation"];
  [coderCopy encodeObject:self->_dataToWrite forKey:@"dataToWrite"];
}

- (ASAuthorizationPublicKeyCredentialLargeBlobAssertionInput)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeIntegerForKey:@"operation"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"dataToWrite"];

  v7 = [(ASAuthorizationPublicKeyCredentialLargeBlobAssertionInput *)self _initWithOperation:v5 dataToWrite:v6];
  return v7;
}

@end