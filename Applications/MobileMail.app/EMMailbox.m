@interface EMMailbox
+ (id)receivingAccounts;
@end

@implementation EMMailbox

+ (id)receivingAccounts
{
  v2 = +[UIApplication sharedApplication];
  v3 = [v2 daemonInterface];
  v4 = [v3 accountRepository];
  v5 = [v4 receivingAccounts];

  return v5;
}

@end