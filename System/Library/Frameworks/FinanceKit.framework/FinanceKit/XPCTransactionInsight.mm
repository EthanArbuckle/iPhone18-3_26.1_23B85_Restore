@interface XPCTransactionInsight
- (XPCTransactionInsight)init;
- (XPCTransactionInsight)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation XPCTransactionInsight

- (XPCTransactionInsight)initWithCoder:(id)coder
{
  swift_getObjectType();
  v4 = sub_1B720939C(coder);
  swift_deallocPartialClassInstance();
  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  _s10FinanceKit11TransactionV7InsightO3XPCC6encode4withySo7NSCoderC_tF_0(coderCopy);
}

- (XPCTransactionInsight)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end