@interface FKTrillianTransactionImporter
- (FKTrillianTransactionImporter)init;
@end

@implementation FKTrillianTransactionImporter

- (FKTrillianTransactionImporter)init
{
  v7.receiver = self;
  v7.super_class = FKTrillianTransactionImporter;
  v2 = [(FKTrillianTransactionImporter *)&v7 init];
  if (v2)
  {
    v3 = [_TtC10FinanceKit27TrillianTransactionImporter makeClassAndReturnError:0];
    wrappedClass = v2->_wrappedClass;
    v2->_wrappedClass = v3;

    if (!v2->_wrappedClass)
    {
      v5 = os_log_create("com.apple.FinanceKit", "Orders");
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        [(FKTrillianTransactionImporter *)v5 init];
      }
    }
  }

  return v2;
}

@end