@interface AMSAccountCachedServerDataAccountResult
- (AMSAccountCachedServerDataAccountResult)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation AMSAccountCachedServerDataAccountResult

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  fields = [(AMSAccountCachedServerDataAccountResult *)self fields];
  [coderCopy encodeObject:fields forKey:@"kFields"];

  error = [(AMSAccountCachedServerDataAccountResult *)self error];
  [coderCopy encodeObject:error forKey:@"kError"];
}

- (AMSAccountCachedServerDataAccountResult)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = AMSAccountCachedServerDataAccountResult;
  v5 = [(AMSAccountCachedServerDataAccountResult *)&v11 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kFields"];
    fields = v5->_fields;
    v5->_fields = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kError"];
    error = v5->_error;
    v5->_error = v8;
  }

  return v5;
}

@end