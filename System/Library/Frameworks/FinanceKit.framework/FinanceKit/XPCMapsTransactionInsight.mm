@interface XPCMapsTransactionInsight
- (XPCMapsTransactionInsight)init;
- (XPCMapsTransactionInsight)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation XPCMapsTransactionInsight

- (XPCMapsTransactionInsight)initWithCoder:(id)coder
{
  swift_getObjectType();
  v4 = sub_1B7208A60(coder);
  swift_deallocPartialClassInstance();
  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  _s10FinanceKit22MapsTransactionInsightV3XPCC6encode4withySo7NSCoderC_tF_0(coderCopy);
}

- (XPCMapsTransactionInsight)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end