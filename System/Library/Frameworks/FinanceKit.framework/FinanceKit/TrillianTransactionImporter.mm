@interface TrillianTransactionImporter
+ (id)makeClassAndReturnError:(id *)error;
- (_TtC10FinanceKit27TrillianTransactionImporter)init;
- (void)registerPaymentTransaction:(id)transaction;
@end

@implementation TrillianTransactionImporter

- (_TtC10FinanceKit27TrillianTransactionImporter)init
{
  result = sub_1B7801C88();
  __break(1u);
  return result;
}

+ (id)makeClassAndReturnError:(id *)error
{
  sub_1B7390658();

  return v3;
}

- (void)registerPaymentTransaction:(id)transaction
{
  transactionCopy = transaction;
  selfCopy = self;
  sub_1B738FDB0(transactionCopy);
}

@end