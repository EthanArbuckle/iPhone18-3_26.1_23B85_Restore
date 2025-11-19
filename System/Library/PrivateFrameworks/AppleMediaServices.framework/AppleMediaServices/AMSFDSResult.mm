@interface AMSFDSResult
- (AMSFDSResult)initWithCoder:(id)a3;
- (AMSFDSResult)initWithValue:(id)a3 action:(unint64_t)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation AMSFDSResult

- (AMSFDSResult)initWithValue:(id)a3 action:(unint64_t)a4
{
  v6 = a3;
  v11.receiver = self;
  v11.super_class = AMSFDSResult;
  v7 = [(AMSFDSResult *)&v11 init];
  if (v7)
  {
    v8 = [v6 copy];
    value = v7->_value;
    v7->_value = v8;

    v7->_action = a4;
  }

  return v7;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = objc_alloc_init(AMSFDSResult);
  v5->_action = self->_action;
  v6 = [(NSString *)self->_sessionIdentifier copyWithZone:a3];
  sessionIdentifier = v5->_sessionIdentifier;
  v5->_sessionIdentifier = v6;

  v8 = [(NSString *)self->_value copyWithZone:a3];
  value = v5->_value;
  v5->_value = v8;

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  [v4 encodeInteger:-[AMSFDSResult action](self forKey:{"action"), @"action"}];
  v5 = [(AMSFDSResult *)self sessionIdentifier];
  [v4 encodeObject:v5 forKey:@"sessionIdentifier"];

  v6 = [(AMSFDSResult *)self value];
  [v4 encodeObject:v6 forKey:@"value"];
}

- (AMSFDSResult)initWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = AMSFDSResult;
  v5 = [(AMSFDSResult *)&v11 init];
  if (v5)
  {
    v5->_action = [v4 decodeIntegerForKey:@"action"];
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"sessionIdentifier"];
    sessionIdentifier = v5->_sessionIdentifier;
    v5->_sessionIdentifier = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"value"];
    value = v5->_value;
    v5->_value = v8;
  }

  return v5;
}

@end