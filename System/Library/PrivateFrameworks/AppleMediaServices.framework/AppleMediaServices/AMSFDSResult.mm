@interface AMSFDSResult
- (AMSFDSResult)initWithCoder:(id)coder;
- (AMSFDSResult)initWithValue:(id)value action:(unint64_t)action;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation AMSFDSResult

- (AMSFDSResult)initWithValue:(id)value action:(unint64_t)action
{
  valueCopy = value;
  v11.receiver = self;
  v11.super_class = AMSFDSResult;
  v7 = [(AMSFDSResult *)&v11 init];
  if (v7)
  {
    v8 = [valueCopy copy];
    value = v7->_value;
    v7->_value = v8;

    v7->_action = action;
  }

  return v7;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = objc_alloc_init(AMSFDSResult);
  v5->_action = self->_action;
  v6 = [(NSString *)self->_sessionIdentifier copyWithZone:zone];
  sessionIdentifier = v5->_sessionIdentifier;
  v5->_sessionIdentifier = v6;

  v8 = [(NSString *)self->_value copyWithZone:zone];
  value = v5->_value;
  v5->_value = v8;

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeInteger:-[AMSFDSResult action](self forKey:{"action"), @"action"}];
  sessionIdentifier = [(AMSFDSResult *)self sessionIdentifier];
  [coderCopy encodeObject:sessionIdentifier forKey:@"sessionIdentifier"];

  value = [(AMSFDSResult *)self value];
  [coderCopy encodeObject:value forKey:@"value"];
}

- (AMSFDSResult)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = AMSFDSResult;
  v5 = [(AMSFDSResult *)&v11 init];
  if (v5)
  {
    v5->_action = [coderCopy decodeIntegerForKey:@"action"];
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"sessionIdentifier"];
    sessionIdentifier = v5->_sessionIdentifier;
    v5->_sessionIdentifier = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"value"];
    value = v5->_value;
    v5->_value = v8;
  }

  return v5;
}

@end