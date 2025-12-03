@interface IMDAccount
- (id)idsAccount;
@end

@implementation IMDAccount

- (id)idsAccount
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    idsAccount = [(IMDAccount *)self idsAccount];
  }

  else
  {
    idsAccount = 0;
  }

  return idsAccount;
}

@end