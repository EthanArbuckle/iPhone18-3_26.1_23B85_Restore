@interface XPCFinancialConnectionExtensionAuthorizationResult
- (XPCFinancialConnectionExtensionAuthorizationResult)init;
- (XPCFinancialConnectionExtensionAuthorizationResult)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation XPCFinancialConnectionExtensionAuthorizationResult

- (XPCFinancialConnectionExtensionAuthorizationResult)initWithCoder:(id)a3
{
  swift_getObjectType();
  sub_23865FD74(&qword_27DF12818, type metadata accessor for FinancialConnectionExtensionAuthorizationResult.XPC);
  sub_23865FDB8();
  sub_23865FE0C();
  v4 = a3;
  v5 = sub_238758B00();
  swift_deallocPartialClassInstance();
  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  swift_getObjectType();
  sub_23865FD74(&qword_27DF12818, type metadata accessor for FinancialConnectionExtensionAuthorizationResult.XPC);
  sub_23865FDB8();
  sub_23865FE0C();
  v5 = a3;
  v6 = self;
  sub_238758B10();
}

- (XPCFinancialConnectionExtensionAuthorizationResult)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end