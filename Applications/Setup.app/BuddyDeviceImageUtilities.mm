@interface BuddyDeviceImageUtilities
+ (id)imageForDeviceModelWithModel:(id)model traitCollection:(id)collection;
- (_TtC5Setup25BuddyDeviceImageUtilities)init;
@end

@implementation BuddyDeviceImageUtilities

+ (id)imageForDeviceModelWithModel:(id)model traitCollection:(id)collection
{
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;
  collectionCopy = collection;
  v9 = sub_1000226BC(v5, v7, collectionCopy);

  return v9;
}

- (_TtC5Setup25BuddyDeviceImageUtilities)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for BuddyDeviceImageUtilities();
  return [(BuddyDeviceImageUtilities *)&v3 init];
}

@end