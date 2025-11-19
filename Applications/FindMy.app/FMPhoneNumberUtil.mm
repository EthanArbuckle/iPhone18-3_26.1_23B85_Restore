@interface FMPhoneNumberUtil
+ (BOOL)isEmailValidWithEmail:(id)a3;
+ (BOOL)isPhoneNumberValidWithPhoneNumber:(id)a3;
+ (id)unformatWithPhoneNumber:(id)a3;
- (_TtC6FindMy17FMPhoneNumberUtil)init;
@end

@implementation FMPhoneNumberUtil

+ (id)unformatWithPhoneNumber:(id)a3
{
  v3 = type metadata accessor for CharacterSet();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = v8;
  static CharacterSet.decimalDigits.getter();
  CharacterSet.insert(_:)();
  sub_100123328(v7, v9, v6);

  (*(v4 + 8))(v6, v3);
  v10 = String._bridgeToObjectiveC()();

  return v10;
}

+ (BOOL)isEmailValidWithEmail:(id)a3
{
  v3 = a3;
  v4 = static String.emailPredicate.getter();
  v5 = [v4 evaluateWithObject:v3];

  return v5;
}

+ (BOOL)isPhoneNumberValidWithPhoneNumber:(id)a3
{
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = sub_100122BFC(v3, v4);

  return v5;
}

- (_TtC6FindMy17FMPhoneNumberUtil)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for FMPhoneNumberUtil();
  return [(FMPhoneNumberUtil *)&v3 init];
}

@end