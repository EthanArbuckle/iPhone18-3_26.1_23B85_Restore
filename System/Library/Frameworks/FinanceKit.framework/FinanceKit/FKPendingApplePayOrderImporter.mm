@interface FKPendingApplePayOrderImporter
- (FKPendingApplePayOrderImporter)init;
@end

@implementation FKPendingApplePayOrderImporter

- (FKPendingApplePayOrderImporter)init
{
  v7.receiver = self;
  v7.super_class = FKPendingApplePayOrderImporter;
  v2 = [(FKPendingApplePayOrderImporter *)&v7 init];
  if (v2)
  {
    v3 = [_TtC10FinanceKit28PendingApplePayOrderImporter makeImporterAndReturnError:0];
    wrappedImporter = v2->_wrappedImporter;
    v2->_wrappedImporter = v3;

    if (!v2->_wrappedImporter)
    {
      v5 = os_log_create("com.apple.FinanceKit", "Orders");
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        [(FKPendingApplePayOrderImporter *)v5 init];
      }
    }
  }

  return v2;
}

@end