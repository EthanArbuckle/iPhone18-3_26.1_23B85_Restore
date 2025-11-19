@interface ASDPurchaseResult
- (ASDPurchaseResult)initWithCoder:(id)a3;
- (ASDPurchaseResult)initWithSuccess:(BOOL)a3 error:(id)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation ASDPurchaseResult

- (ASDPurchaseResult)initWithSuccess:(BOOL)a3 error:(id)a4
{
  v7 = a4;
  v11.receiver = self;
  v11.super_class = ASDPurchaseResult;
  v8 = [(ASDPurchaseResult *)&v11 init];
  v9 = v8;
  if (v8)
  {
    v8->_success = a3;
    objc_storeStrong(&v8->_error, a4);
  }

  return v9;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = objc_alloc_init(objc_opt_class());
  v6 = [(NSError *)self->_error copyWithZone:a3];
  v7 = v5[2];
  v5[2] = v6;

  *(v5 + 8) = self->_success;
  return v5;
}

- (ASDPurchaseResult)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(ASDPurchaseResult *)self init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"error"];
    error = v5->_error;
    v5->_error = v6;

    v5->_success = [v4 decodeBoolForKey:@"success"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v6 = a3;
  error = self->_error;
  if (error)
  {
    v5 = ASDErrorWithSafeUserInfo(error);
    [v6 encodeObject:v5 forKey:@"error"];
  }

  [v6 encodeBool:self->_success forKey:@"success"];
}

@end