@interface TransactionReceiver
- (void)receivedTransactions:(id)a3;
@end

@implementation TransactionReceiver

- (void)receivedTransactions:(id)a3
{
  if (a3)
  {
    v3 = sub_1B256DC5C();
  }

  else
  {
    v3 = 0;
  }

  sub_1B2479184(v3);
}

@end