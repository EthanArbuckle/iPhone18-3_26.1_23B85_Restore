@interface CacheServiceConnection.TransactionReceiver
- (void)receivedTransactions:(id)a3;
@end

@implementation CacheServiceConnection.TransactionReceiver

- (void)receivedTransactions:(id)a3
{
  if (a3)
  {
    v4 = sub_1B256DC5C();
  }

  else
  {
    v4 = 0;
  }

  v5 = self;
  sub_1B24E4990(v4);
}

@end