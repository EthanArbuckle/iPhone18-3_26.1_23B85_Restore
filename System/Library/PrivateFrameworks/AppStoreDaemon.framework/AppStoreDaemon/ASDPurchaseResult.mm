@interface ASDPurchaseResult
- (ASDPurchaseResult)initWithCoder:(id)coder;
- (ASDPurchaseResult)initWithSuccess:(BOOL)success error:(id)error;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ASDPurchaseResult

- (ASDPurchaseResult)initWithSuccess:(BOOL)success error:(id)error
{
  errorCopy = error;
  v11.receiver = self;
  v11.super_class = ASDPurchaseResult;
  v8 = [(ASDPurchaseResult *)&v11 init];
  v9 = v8;
  if (v8)
  {
    v8->_success = success;
    objc_storeStrong(&v8->_error, error);
  }

  return v9;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = objc_alloc_init(objc_opt_class());
  v6 = [(NSError *)self->_error copyWithZone:zone];
  v7 = v5[2];
  v5[2] = v6;

  *(v5 + 8) = self->_success;
  return v5;
}

- (ASDPurchaseResult)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(ASDPurchaseResult *)self init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"error"];
    error = v5->_error;
    v5->_error = v6;

    v5->_success = [coderCopy decodeBoolForKey:@"success"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  error = self->_error;
  if (error)
  {
    v5 = ASDErrorWithSafeUserInfo(error);
    [coderCopy encodeObject:v5 forKey:@"error"];
  }

  [coderCopy encodeBool:self->_success forKey:@"success"];
}

@end