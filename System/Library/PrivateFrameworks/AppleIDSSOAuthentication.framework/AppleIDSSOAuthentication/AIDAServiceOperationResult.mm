@interface AIDAServiceOperationResult
- (AIDAServiceOperationResult)initWithCoder:(id)coder;
- (AIDAServiceOperationResult)initWithSuccess:(BOOL)success error:(id)error type:(id)type;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation AIDAServiceOperationResult

- (AIDAServiceOperationResult)initWithSuccess:(BOOL)success error:(id)error type:(id)type
{
  errorCopy = error;
  typeCopy = type;
  v14.receiver = self;
  v14.super_class = AIDAServiceOperationResult;
  v11 = [(AIDAServiceOperationResult *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_error, error);
    v12->_success = success;
    objc_storeStrong(&v12->_type, type);
  }

  return v12;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_opt_new();
  v5 = [(NSError *)self->_error copy];
  v6 = *(v4 + 16);
  *(v4 + 16) = v5;

  *(v4 + 8) = self->_success;
  v7 = [(NSString *)self->_type copy];
  v8 = *(v4 + 24);
  *(v4 + 24) = v7;

  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  success = self->_success;
  coderCopy = coder;
  [coderCopy encodeBool:success forKey:@"_success"];
  [coderCopy encodeObject:self->_error forKey:@"_error"];
  [coderCopy encodeObject:self->_type forKey:@"_type"];
}

- (AIDAServiceOperationResult)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(AIDAServiceOperationResult *)self init];
  if (v5)
  {
    v5->_success = [coderCopy decodeBoolForKey:@"_success"];
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_error"];
    error = v5->_error;
    v5->_error = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_type"];
    type = v5->_type;
    v5->_type = v8;
  }

  return v5;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  type = [(AIDAServiceOperationResult *)self type];
  if ([(AIDAServiceOperationResult *)self success])
  {
    v5 = @"YES";
  }

  else
  {
    v5 = @"NO";
  }

  error = [(AIDAServiceOperationResult *)self error];
  v7 = [v3 stringWithFormat:@"TYPE: %@, SUCCESS: %@, ERROR: %@", type, v5, error];

  return v7;
}

@end