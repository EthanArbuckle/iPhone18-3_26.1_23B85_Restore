@interface AIDAServiceOperationResult
- (AIDAServiceOperationResult)initWithCoder:(id)a3;
- (AIDAServiceOperationResult)initWithSuccess:(BOOL)a3 error:(id)a4 type:(id)a5;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation AIDAServiceOperationResult

- (AIDAServiceOperationResult)initWithSuccess:(BOOL)a3 error:(id)a4 type:(id)a5
{
  v9 = a4;
  v10 = a5;
  v14.receiver = self;
  v14.super_class = AIDAServiceOperationResult;
  v11 = [(AIDAServiceOperationResult *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_error, a4);
    v12->_success = a3;
    objc_storeStrong(&v12->_type, a5);
  }

  return v12;
}

- (id)copyWithZone:(_NSZone *)a3
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

- (void)encodeWithCoder:(id)a3
{
  success = self->_success;
  v5 = a3;
  [v5 encodeBool:success forKey:@"_success"];
  [v5 encodeObject:self->_error forKey:@"_error"];
  [v5 encodeObject:self->_type forKey:@"_type"];
}

- (AIDAServiceOperationResult)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(AIDAServiceOperationResult *)self init];
  if (v5)
  {
    v5->_success = [v4 decodeBoolForKey:@"_success"];
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_error"];
    error = v5->_error;
    v5->_error = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_type"];
    type = v5->_type;
    v5->_type = v8;
  }

  return v5;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [(AIDAServiceOperationResult *)self type];
  if ([(AIDAServiceOperationResult *)self success])
  {
    v5 = @"YES";
  }

  else
  {
    v5 = @"NO";
  }

  v6 = [(AIDAServiceOperationResult *)self error];
  v7 = [v3 stringWithFormat:@"TYPE: %@, SUCCESS: %@, ERROR: %@", v4, v5, v6];

  return v7;
}

@end