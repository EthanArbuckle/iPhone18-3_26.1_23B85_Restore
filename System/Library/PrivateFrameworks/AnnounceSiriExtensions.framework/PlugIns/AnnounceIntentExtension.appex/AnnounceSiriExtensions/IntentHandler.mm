@interface IntentHandler
- (_TtC23AnnounceIntentExtension13IntentHandler)init;
- (id)handlerForIntent:(id)a3;
- (void)transactionDidCompleteForIntentIdentifier:(id)a3;
@end

@implementation IntentHandler

- (id)handlerForIntent:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_100003C24(v4, v8);

  sub_1000058D8(v8, v8[3]);
  v6 = sub_1000166A4();
  sub_100002C00(v8);

  return v6;
}

- (_TtC23AnnounceIntentExtension13IntentHandler)init
{
  v3 = OBJC_IVAR____TtC23AnnounceIntentExtension13IntentHandler_recentIntentHandlers;
  *(&self->super.super.isa + v3) = sub_1000057D4(&_swiftEmptyArrayStorage);
  v4 = OBJC_IVAR____TtC23AnnounceIntentExtension13IntentHandler____lazy_storage___logger;
  v5 = sub_100016394();
  (*(*(v5 - 8) + 56))(self + v4, 1, 1, v5);
  v7.receiver = self;
  v7.super_class = type metadata accessor for IntentHandler();
  return [(IntentHandler *)&v7 init];
}

- (void)transactionDidCompleteForIntentIdentifier:(id)a3
{
  v4 = sub_1000163D4();
  v6 = v5;
  v7 = self;
  sub_100004B5C(v4, v6);
}

@end