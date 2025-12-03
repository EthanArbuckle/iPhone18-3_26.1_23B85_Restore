@interface XPCInternalTransaction
- (XPCInternalTransaction)init;
- (XPCInternalTransaction)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation XPCInternalTransaction

- (XPCInternalTransaction)initWithCoder:(id)coder
{
  swift_getObjectType();
  v4 = sub_1B72099DC(coder);
  swift_deallocPartialClassInstance();
  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  _s10FinanceKit19InternalTransactionV3XPCC6encode4withySo7NSCoderC_tF_0(coderCopy);
}

- (XPCInternalTransaction)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end