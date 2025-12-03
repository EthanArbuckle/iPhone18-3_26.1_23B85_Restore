@interface ASDRequestResponse
- (ASDRequestResponse)init;
- (ASDRequestResponse)initWithCoder:(id)coder;
- (ASDRequestResponse)initWithError:(id)error;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
- (void)setError:(id)error;
- (void)setSuccess:(BOOL)success;
@end

@implementation ASDRequestResponse

- (ASDRequestResponse)init
{
  v3.receiver = self;
  v3.super_class = ASDRequestResponse;
  return [(ASDRequestResponse *)&v3 init];
}

- (ASDRequestResponse)initWithError:(id)error
{
  errorCopy = error;
  v9.receiver = self;
  v9.super_class = ASDRequestResponse;
  v5 = [(ASDRequestResponse *)&v9 init];
  if (v5)
  {
    v6 = [errorCopy copy];
    error = v5->_error;
    v5->_error = v6;
  }

  return v5;
}

- (void)setSuccess:(BOOL)success
{
  if (success)
  {
    v4 = 0;
  }

  else
  {
    v4 = [MEMORY[0x1E696ABC0] errorWithDomain:@"ASDErrorDomain" code:928 userInfo:0];
  }

  error = self->_error;
  self->_error = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)setError:(id)error
{
  v4 = [error copy];
  error = self->_error;
  self->_error = v4;

  MEMORY[0x1EEE66BB8]();
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSError *)self->_error copyWithZone:zone];
  v7 = v5[1];
  v5[1] = v6;

  return v5;
}

- (ASDRequestResponse)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = ASDRequestResponse;
  v5 = [(ASDRequestResponse *)&v9 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"error"];
    error = v5->_error;
    v5->_error = v6;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  error = self->_error;
  if (error)
  {
    coderCopy = coder;
    v5 = ASDErrorWithSafeUserInfo(error);
    [coderCopy encodeObject:v5 forKey:@"error"];
  }
}

@end