@interface PendingApplePayOrderImporter
+ (id)makeImporterAndReturnError:(id *)a3;
- (_TtC10FinanceKit28PendingApplePayOrderImporter)init;
- (void)insertOrUpdatePendingApplePayOrderWithOrderDetails:(id)a3;
@end

@implementation PendingApplePayOrderImporter

- (_TtC10FinanceKit28PendingApplePayOrderImporter)init
{
  result = sub_1B7801C88();
  __break(1u);
  return result;
}

+ (id)makeImporterAndReturnError:(id *)a3
{
  sub_1B765EF18();

  return v3;
}

- (void)insertOrUpdatePendingApplePayOrderWithOrderDetails:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1B765E0D4(v4);
}

@end