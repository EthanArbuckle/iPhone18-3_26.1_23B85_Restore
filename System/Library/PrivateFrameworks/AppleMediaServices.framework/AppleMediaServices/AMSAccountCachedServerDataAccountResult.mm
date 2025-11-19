@interface AMSAccountCachedServerDataAccountResult
- (AMSAccountCachedServerDataAccountResult)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation AMSAccountCachedServerDataAccountResult

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(AMSAccountCachedServerDataAccountResult *)self fields];
  [v4 encodeObject:v5 forKey:@"kFields"];

  v6 = [(AMSAccountCachedServerDataAccountResult *)self error];
  [v4 encodeObject:v6 forKey:@"kError"];
}

- (AMSAccountCachedServerDataAccountResult)initWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = AMSAccountCachedServerDataAccountResult;
  v5 = [(AMSAccountCachedServerDataAccountResult *)&v11 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kFields"];
    fields = v5->_fields;
    v5->_fields = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kError"];
    error = v5->_error;
    v5->_error = v8;
  }

  return v5;
}

@end