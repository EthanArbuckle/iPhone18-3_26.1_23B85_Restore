@interface XPCAccountSelectionResult
- (XPCAccountSelectionResult)init;
- (XPCAccountSelectionResult)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation XPCAccountSelectionResult

- (XPCAccountSelectionResult)initWithCoder:(id)coder
{
  swift_getObjectType();
  v4 = sub_1B72088E4(coder);
  swift_deallocPartialClassInstance();
  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  _s10FinanceKit22AccountSelectionResultO3XPCC6encode4withySo7NSCoderC_tF_0(coderCopy);
}

- (XPCAccountSelectionResult)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end