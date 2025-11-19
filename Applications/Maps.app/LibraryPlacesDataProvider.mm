@interface LibraryPlacesDataProvider
- (NSArray)storeSubscriptionTypes;
- (void)setStoreSubscriptionTypes:(id)a3;
- (void)storeDidChange:(id)a3;
@end

@implementation LibraryPlacesDataProvider

- (NSArray)storeSubscriptionTypes
{
  swift_beginAccess();

  sub_1000CE6B8(&qword_1019083F0);
  v2.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v2.super.isa;
}

- (void)setStoreSubscriptionTypes:(id)a3
{
  sub_1000CE6B8(&qword_1019083F0);
  v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  swift_beginAccess();
  *(self + 10) = v4;
}

- (void)storeDidChange:(id)a3
{
  v3 = *(self + 7);
  v4 = *(self + 8);

  sub_1004A9814(v3, v4);
}

@end