@interface XPCTimeWindow
- (XPCTimeWindow)init;
- (XPCTimeWindow)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation XPCTimeWindow

- (XPCTimeWindow)initWithCoder:(id)coder
{
  swift_getObjectType();
  v4 = sub_1B72096BC(coder);
  swift_deallocPartialClassInstance();
  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  _s10FinanceKit10TimeWindowV3XPCC6encode4withySo7NSCoderC_tF_0(coderCopy);
}

- (XPCTimeWindow)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end