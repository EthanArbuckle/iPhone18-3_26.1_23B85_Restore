@interface ASDRequestResponse
- (ASDRequestResponse)init;
- (ASDRequestResponse)initWithCoder:(id)a3;
- (ASDRequestResponse)initWithError:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
- (void)setError:(id)a3;
- (void)setSuccess:(BOOL)a3;
@end

@implementation ASDRequestResponse

- (ASDRequestResponse)init
{
  v3.receiver = self;
  v3.super_class = ASDRequestResponse;
  return [(ASDRequestResponse *)&v3 init];
}

- (ASDRequestResponse)initWithError:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = ASDRequestResponse;
  v5 = [(ASDRequestResponse *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    error = v5->_error;
    v5->_error = v6;
  }

  return v5;
}

- (void)setSuccess:(BOOL)a3
{
  if (a3)
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

- (void)setError:(id)a3
{
  v4 = [a3 copy];
  error = self->_error;
  self->_error = v4;

  MEMORY[0x1EEE66BB8]();
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSError *)self->_error copyWithZone:a3];
  v7 = v5[1];
  v5[1] = v6;

  return v5;
}

- (ASDRequestResponse)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = ASDRequestResponse;
  v5 = [(ASDRequestResponse *)&v9 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"error"];
    error = v5->_error;
    v5->_error = v6;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  error = self->_error;
  if (error)
  {
    v4 = a3;
    v5 = ASDErrorWithSafeUserInfo(error);
    [v4 encodeObject:v5 forKey:@"error"];
  }
}

@end