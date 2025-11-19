@interface XPCFinancialDataPersistentHistoryChange
- (XPCFinancialDataPersistentHistoryChange)init;
- (XPCFinancialDataPersistentHistoryChange)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation XPCFinancialDataPersistentHistoryChange

- (XPCFinancialDataPersistentHistoryChange)initWithCoder:(id)a3
{
  swift_getObjectType();
  v4 = sub_1B7207BC0(a3);
  swift_deallocPartialClassInstance();
  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1B7206190(v4);
}

- (XPCFinancialDataPersistentHistoryChange)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end