@interface BankConnectPushNotificationHandler
+ (id)makeHandler;
- (_TtC10FinanceKit34BankConnectPushNotificationHandler)init;
- (void)handlePushNotificationWithPayload:(id)a3;
@end

@implementation BankConnectPushNotificationHandler

+ (id)makeHandler
{
  if (qword_1EDAF8978 != -1)
  {
    swift_once();
  }

  v2 = *(off_1EDAF8980 + 2);
  v3 = type metadata accessor for BankConnectPushNotificationHandler();
  v4 = objc_allocWithZone(v3);
  *&v4[OBJC_IVAR____TtC10FinanceKit34BankConnectPushNotificationHandler_store] = v2;
  v7.receiver = v4;
  v7.super_class = v3;

  v5 = objc_msgSendSuper2(&v7, sel_init);

  return v5;
}

- (void)handlePushNotificationWithPayload:(id)a3
{
  v4 = sub_1B7800728();
  v5 = self;
  sub_1B72C6814(v4);
}

- (_TtC10FinanceKit34BankConnectPushNotificationHandler)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end