@interface XPCBackgroundRefreshAlertResult
- (XPCBackgroundRefreshAlertResult)init;
- (XPCBackgroundRefreshAlertResult)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation XPCBackgroundRefreshAlertResult

- (XPCBackgroundRefreshAlertResult)initWithCoder:(id)a3
{
  swift_getObjectType();
  v4 = sub_1B720860C(a3);
  swift_deallocPartialClassInstance();
  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = self;
  _s10FinanceKit28BackgroundRefreshAlertResultO3XPCC6encode4withySo7NSCoderC_tF_0(v4);
}

- (XPCBackgroundRefreshAlertResult)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end