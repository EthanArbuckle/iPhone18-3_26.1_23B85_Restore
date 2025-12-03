@interface XPCMapsTransactionInsightResult
- (XPCMapsTransactionInsightResult)init;
- (XPCMapsTransactionInsightResult)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation XPCMapsTransactionInsightResult

- (XPCMapsTransactionInsightResult)initWithCoder:(id)coder
{
  swift_getObjectType();
  v4 = sub_1B720A01C(coder);
  swift_deallocPartialClassInstance();
  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  _s10FinanceKit28MapsTransactionInsightResultO3XPCC6encode4withySo7NSCoderC_tF_0(coderCopy);
}

- (XPCMapsTransactionInsightResult)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end