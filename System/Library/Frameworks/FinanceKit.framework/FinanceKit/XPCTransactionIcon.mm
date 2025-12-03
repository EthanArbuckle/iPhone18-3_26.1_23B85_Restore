@interface XPCTransactionIcon
- (XPCTransactionIcon)init;
- (XPCTransactionIcon)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation XPCTransactionIcon

- (XPCTransactionIcon)initWithCoder:(id)coder
{
  swift_getObjectType();
  v4 = sub_1B7208104(coder);
  swift_deallocPartialClassInstance();
  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  _s10FinanceKit11TransactionV4IconV3XPCC6encode4withySo7NSCoderC_tF_0(coderCopy);
}

- (XPCTransactionIcon)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end