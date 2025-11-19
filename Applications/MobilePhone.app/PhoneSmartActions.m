@interface PhoneSmartActions
+ (NSString)calendarBundleName;
+ (NSString)contactsBundleName;
+ (NSString)mapsBundleName;
+ (NSString)phoneBundleName;
+ (NSString)reminderBundleName;
+ (NSString)weatherBundleName;
- (NSDictionary)parameters;
- (NSString)appBundleIdentifier;
- (_TtC11MobilePhone17PhoneSmartActions)init;
- (id)getAppActionTitle;
- (void)setAppBundleIdentifier:(id)a3;
- (void)setParameters:(id)a3;
@end

@implementation PhoneSmartActions

- (NSString)appBundleIdentifier
{
  swift_beginAccess();

  v2 = String._bridgeToObjectiveC()();

  return v2;
}

- (void)setAppBundleIdentifier:(id)a3
{
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;
  v7 = (self + OBJC_IVAR____TtC11MobilePhone17PhoneSmartActions_appBundleIdentifier);
  swift_beginAccess();
  *v7 = v4;
  v7[1] = v6;
}

- (NSDictionary)parameters
{
  swift_beginAccess();

  v2.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;

  return v2.super.isa;
}

- (void)setParameters:(id)a3
{
  v4 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = OBJC_IVAR____TtC11MobilePhone17PhoneSmartActions_parameters;
  swift_beginAccess();
  *(self + v5) = v4;
}

+ (NSString)reminderBundleName
{
  v2 = String._bridgeToObjectiveC()();

  return v2;
}

+ (NSString)calendarBundleName
{
  v2 = String._bridgeToObjectiveC()();

  return v2;
}

+ (NSString)contactsBundleName
{
  v2 = String._bridgeToObjectiveC()();

  return v2;
}

+ (NSString)mapsBundleName
{
  v2 = String._bridgeToObjectiveC()();

  return v2;
}

+ (NSString)weatherBundleName
{
  v2 = String._bridgeToObjectiveC()();

  return v2;
}

+ (NSString)phoneBundleName
{
  v2 = String._bridgeToObjectiveC()();

  return v2;
}

- (id)getAppActionTitle
{
  v2 = self;
  object = PhoneSmartActions.getAppActionTitle()().value._object;

  if (object)
  {
    v4 = String._bridgeToObjectiveC()();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (_TtC11MobilePhone17PhoneSmartActions)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end