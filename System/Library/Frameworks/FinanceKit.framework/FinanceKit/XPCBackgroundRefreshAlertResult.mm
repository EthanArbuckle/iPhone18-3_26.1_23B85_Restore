@interface XPCBackgroundRefreshAlertResult
- (XPCBackgroundRefreshAlertResult)init;
- (XPCBackgroundRefreshAlertResult)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation XPCBackgroundRefreshAlertResult

- (XPCBackgroundRefreshAlertResult)initWithCoder:(id)coder
{
  swift_getObjectType();
  v4 = sub_1B720860C(coder);
  swift_deallocPartialClassInstance();
  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  _s10FinanceKit28BackgroundRefreshAlertResultO3XPCC6encode4withySo7NSCoderC_tF_0(coderCopy);
}

- (XPCBackgroundRefreshAlertResult)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end