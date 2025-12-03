@interface TransactionReceiver
- (void)receivedTransactions:(id)transactions;
@end

@implementation TransactionReceiver

- (void)receivedTransactions:(id)transactions
{
  if (transactions)
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