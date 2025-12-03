@interface EMMailbox
+ (id)receivingAccounts;
@end

@implementation EMMailbox

+ (id)receivingAccounts
{
  v2 = +[UIApplication sharedApplication];
  daemonInterface = [v2 daemonInterface];
  accountRepository = [daemonInterface accountRepository];
  receivingAccounts = [accountRepository receivingAccounts];

  return receivingAccounts;
}

@end