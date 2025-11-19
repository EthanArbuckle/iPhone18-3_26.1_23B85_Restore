@interface FMPhoneNumberUtil
+ (BOOL)isEmailValidWithEmail:(id)a3;
+ (BOOL)isPhoneNumberValidWithPhoneNumber:(id)a3;
+ (id)unformatWithPhoneNumber:(id)a3;
- (_TtC26FindMyNotificationsService17FMPhoneNumberUtil)init;
@end

@implementation FMPhoneNumberUtil

+ (id)unformatWithPhoneNumber:(id)a3
{
  v3 = type metadata accessor for CharacterSet();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;
  static CharacterSet.decimalDigits.getter();
  CharacterSet.insert(_:)();
  sub_10000DB90(v8, v10, v7);

  (*(v4 + 8))(v7, v3);
  v11 = String._bridgeToObjectiveC()();

  return v11;
}

+ (BOOL)isEmailValidWithEmail:(id)a3
{
  v3 = qword_100020BC0;
  v4 = a3;
  if (v3 != -1)
  {
    swift_once();
  }

  v5 = [static String.emailPredicate evaluateWithObject:v4];

  return v5;
}

+ (BOOL)isPhoneNumberValidWithPhoneNumber:(id)a3
{
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = sub_10000D668(v3, v4);

  return v5;
}

- (_TtC26FindMyNotificationsService17FMPhoneNumberUtil)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for FMPhoneNumberUtil();
  return [(FMPhoneNumberUtil *)&v3 init];
}

@end