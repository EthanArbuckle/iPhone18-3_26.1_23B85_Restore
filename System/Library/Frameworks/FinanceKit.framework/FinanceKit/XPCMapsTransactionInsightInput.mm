@interface XPCMapsTransactionInsightInput
- (XPCMapsTransactionInsightInput)init;
- (XPCMapsTransactionInsightInput)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation XPCMapsTransactionInsightInput

- (XPCMapsTransactionInsightInput)initWithCoder:(id)a3
{
  swift_getObjectType();
  v4 = sub_1B7209CFC(a3);
  swift_deallocPartialClassInstance();
  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = self;
  _s10FinanceKit27MapsTransactionInsightInputV3XPCC6encode4withySo7NSCoderC_tF_0(v4);
}

- (XPCMapsTransactionInsightInput)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end