@interface BuddyDeviceImageUtilities
+ (id)imageForDeviceModelWithModel:(id)a3 traitCollection:(id)a4;
- (_TtC5Setup25BuddyDeviceImageUtilities)init;
@end

@implementation BuddyDeviceImageUtilities

+ (id)imageForDeviceModelWithModel:(id)a3 traitCollection:(id)a4
{
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;
  v8 = a4;
  v9 = sub_1000226BC(v5, v7, v8);

  return v9;
}

- (_TtC5Setup25BuddyDeviceImageUtilities)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for BuddyDeviceImageUtilities();
  return [(BuddyDeviceImageUtilities *)&v3 init];
}

@end