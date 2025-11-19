@interface XPCAuthorizationStatus
- (XPCAuthorizationStatus)init;
- (XPCAuthorizationStatus)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation XPCAuthorizationStatus

- (XPCAuthorizationStatus)initWithCoder:(id)a3
{
  swift_getObjectType();
  v4 = sub_1B7208778(a3);
  swift_deallocPartialClassInstance();
  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = self;
  _s10FinanceKit19AuthorizationStatusO3XPCC6encode4withySo7NSCoderC_tF_0(v4);
}

- (XPCAuthorizationStatus)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end