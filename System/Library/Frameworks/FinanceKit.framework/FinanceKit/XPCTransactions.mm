@interface XPCTransactions
- (XPCTransactions)init;
- (XPCTransactions)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation XPCTransactions

- (XPCTransactions)initWithCoder:(id)coder
{
  swift_getObjectType();
  v4 = sub_1B72082B4(coder);
  swift_deallocPartialClassInstance();
  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  _s10FinanceKit11TransactionV8XPCArrayC6encode4withySo7NSCoderC_tF_0(coderCopy);
}

- (XPCTransactions)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end