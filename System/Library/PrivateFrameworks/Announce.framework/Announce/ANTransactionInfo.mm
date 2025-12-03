@interface ANTransactionInfo
+ (id)infoWithTransaction:(id)transaction;
@end

@implementation ANTransactionInfo

+ (id)infoWithTransaction:(id)transaction
{
  transactionCopy = transaction;
  v4 = objc_opt_new();
  [v4 setTransaction:transactionCopy];

  return v4;
}

@end