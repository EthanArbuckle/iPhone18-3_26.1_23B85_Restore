@interface XPCFinancialDataPersistentHistoryChange
- (XPCFinancialDataPersistentHistoryChange)init;
- (XPCFinancialDataPersistentHistoryChange)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation XPCFinancialDataPersistentHistoryChange

- (XPCFinancialDataPersistentHistoryChange)initWithCoder:(id)coder
{
  swift_getObjectType();
  v4 = sub_1B7207BC0(coder);
  swift_deallocPartialClassInstance();
  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  sub_1B7206190(coderCopy);
}

- (XPCFinancialDataPersistentHistoryChange)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end