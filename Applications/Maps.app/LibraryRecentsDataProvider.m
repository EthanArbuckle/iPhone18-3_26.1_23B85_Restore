@interface LibraryRecentsDataProvider
- (NSArray)storeSubscriptionTypes;
- (void)setStoreSubscriptionTypes:(id)a3;
- (void)storeDidChange:(id)a3;
@end

@implementation LibraryRecentsDataProvider

- (NSArray)storeSubscriptionTypes
{
  swift_getKeyPath();
  sub_100131CA8();

  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();

  sub_1000CE6B8(&qword_1019083F0);
  v2.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v2.super.isa;
}

- (void)setStoreSubscriptionTypes:(id)a3
{
  sub_1000CE6B8(&qword_1019083F0);
  static Array._unconditionallyBridgeFromObjectiveC(_:)();
  swift_getKeyPath();
  sub_100131CA8();

  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
}

- (void)storeDidChange:(id)a3
{
  v4 = *self->_TtCs12_SwiftObject_opaque;
  v5 = sub_1000CE6B8(&unk_10190BA50);
  __chkstk_darwin(v5 - 8);
  v7 = &v10 - v6;
  v8 = type metadata accessor for TaskPriority();
  (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
  v9 = swift_allocObject();
  v9[2] = 0;
  v9[3] = 0;
  v9[4] = self;
  v9[5] = v4;

  sub_10020AAE4(0, 0, v7, &unk_10120A198, v9);
}

@end