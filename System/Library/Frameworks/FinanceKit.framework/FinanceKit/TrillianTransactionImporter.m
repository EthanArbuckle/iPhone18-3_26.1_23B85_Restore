@interface TrillianTransactionImporter
+ (id)makeClassAndReturnError:(id *)a3;
- (_TtC10FinanceKit27TrillianTransactionImporter)init;
- (void)registerPaymentTransaction:(id)a3;
@end

@implementation TrillianTransactionImporter

- (_TtC10FinanceKit27TrillianTransactionImporter)init
{
  result = sub_1B7801C88();
  __break(1u);
  return result;
}

+ (id)makeClassAndReturnError:(id *)a3
{
  sub_1B7390658();

  return v3;
}

- (void)registerPaymentTransaction:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1B738FDB0(v4);
}

@end