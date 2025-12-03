@interface XPCAuthorizationStatus
- (XPCAuthorizationStatus)init;
- (XPCAuthorizationStatus)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation XPCAuthorizationStatus

- (XPCAuthorizationStatus)initWithCoder:(id)coder
{
  swift_getObjectType();
  v4 = sub_1B7208778(coder);
  swift_deallocPartialClassInstance();
  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  _s10FinanceKit19AuthorizationStatusO3XPCC6encode4withySo7NSCoderC_tF_0(coderCopy);
}

- (XPCAuthorizationStatus)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end