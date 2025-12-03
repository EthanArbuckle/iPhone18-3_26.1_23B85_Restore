@interface PendingApplePayOrderImporter
+ (id)makeImporterAndReturnError:(id *)error;
- (_TtC10FinanceKit28PendingApplePayOrderImporter)init;
- (void)insertOrUpdatePendingApplePayOrderWithOrderDetails:(id)details;
@end

@implementation PendingApplePayOrderImporter

- (_TtC10FinanceKit28PendingApplePayOrderImporter)init
{
  result = sub_1B7801C88();
  __break(1u);
  return result;
}

+ (id)makeImporterAndReturnError:(id *)error
{
  sub_1B765EF18();

  return v3;
}

- (void)insertOrUpdatePendingApplePayOrderWithOrderDetails:(id)details
{
  detailsCopy = details;
  selfCopy = self;
  sub_1B765E0D4(detailsCopy);
}

@end