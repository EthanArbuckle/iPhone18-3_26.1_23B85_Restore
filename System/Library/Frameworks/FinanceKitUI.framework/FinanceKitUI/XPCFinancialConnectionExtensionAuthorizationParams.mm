@interface XPCFinancialConnectionExtensionAuthorizationParams
- (_TtC12FinanceKitUI50XPCFinancialConnectionExtensionAuthorizationParams)init;
- (_TtC12FinanceKitUI50XPCFinancialConnectionExtensionAuthorizationParams)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation XPCFinancialConnectionExtensionAuthorizationParams

- (_TtC12FinanceKitUI50XPCFinancialConnectionExtensionAuthorizationParams)initWithCoder:(id)coder
{
  swift_getObjectType();
  sub_23865FD74(&qword_27DF12738, type metadata accessor for XPCFinancialConnectionExtensionAuthorizationParams);
  sub_23865DEFC(&qword_27DF12740);
  sub_23865DEFC(&qword_27DF12750);
  coderCopy = coder;
  v5 = sub_238758B00();
  swift_deallocPartialClassInstance();
  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  swift_getObjectType();
  sub_23865FD74(&qword_27DF12738, type metadata accessor for XPCFinancialConnectionExtensionAuthorizationParams);
  sub_23865DEFC(&qword_27DF12740);
  sub_23865DEFC(&qword_27DF12750);
  coderCopy = coder;
  selfCopy = self;
  sub_238758B10();
}

- (_TtC12FinanceKitUI50XPCFinancialConnectionExtensionAuthorizationParams)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end