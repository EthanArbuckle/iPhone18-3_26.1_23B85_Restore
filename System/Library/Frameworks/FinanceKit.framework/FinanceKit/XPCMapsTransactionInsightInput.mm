@interface XPCMapsTransactionInsightInput
- (XPCMapsTransactionInsightInput)init;
- (XPCMapsTransactionInsightInput)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation XPCMapsTransactionInsightInput

- (XPCMapsTransactionInsightInput)initWithCoder:(id)coder
{
  swift_getObjectType();
  v4 = sub_1B7209CFC(coder);
  swift_deallocPartialClassInstance();
  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  _s10FinanceKit27MapsTransactionInsightInputV3XPCC6encode4withySo7NSCoderC_tF_0(coderCopy);
}

- (XPCMapsTransactionInsightInput)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end