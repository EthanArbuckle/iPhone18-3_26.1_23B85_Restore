@interface CacheServiceConnection.TransactionReceiver
- (void)receivedTransactions:(id)transactions;
@end

@implementation CacheServiceConnection.TransactionReceiver

- (void)receivedTransactions:(id)transactions
{
  if (transactions)
  {
    v4 = sub_1B256DC5C();
  }

  else
  {
    v4 = 0;
  }

  selfCopy = self;
  sub_1B24E4990(v4);
}

@end