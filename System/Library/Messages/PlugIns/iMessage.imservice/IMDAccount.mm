@interface IMDAccount
- (id)idsAccount;
@end

@implementation IMDAccount

- (id)idsAccount
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = [(IMDAccount *)self idsAccount];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

@end