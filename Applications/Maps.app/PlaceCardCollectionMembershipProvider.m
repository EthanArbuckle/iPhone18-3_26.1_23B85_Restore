@interface PlaceCardCollectionMembershipProvider
- (MKMapItem)mapItem;
- (NSArray)containingCollections;
- (_TtP4Maps45PlaceCardCollectionMembershipProviderDelegate_)delegate;
- (id)containingCollectionWithIdentifer:(id)a3;
- (void)collectionHandlerContentUpdated:(id)a3;
- (void)collectionManager:(id)a3 contentDidChange:(id)a4;
- (void)dealloc;
- (void)setContainingCollections:(id)a3;
- (void)setMapItem:(id)a3;
@end

@implementation PlaceCardCollectionMembershipProvider

- (MKMapItem)mapItem
{
  v3 = OBJC_IVAR____TtC4Maps37PlaceCardCollectionMembershipProvider_mapItem;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setMapItem:(id)a3
{
  v5 = OBJC_IVAR____TtC4Maps37PlaceCardCollectionMembershipProvider_mapItem;
  swift_beginAccess();
  v6 = *(self + v5);
  *(self + v5) = a3;
  v7 = a3;
  v8 = self;

  v9 = [objc_opt_self() sharedManager];
  v10 = [v9 currentCollections];

  sub_100014C84(0, &qword_101922CC0);
  v11 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  sub_100361BA0(v11);
}

- (_TtP4Maps45PlaceCardCollectionMembershipProviderDelegate_)delegate
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (NSArray)containingCollections
{
  swift_beginAccess();
  sub_100014C84(0, &qword_101922CC0);

  v2.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v2.super.isa;
}

- (void)setContainingCollections:(id)a3
{
  sub_100014C84(0, &qword_101922CC0);
  v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = OBJC_IVAR____TtC4Maps37PlaceCardCollectionMembershipProvider_containingCollections;
  swift_beginAccess();
  *(self + v5) = v4;
  v6 = self;

  sub_100362408();
}

- (void)dealloc
{
  ObjectType = swift_getObjectType();
  v4 = objc_opt_self();
  v5 = self;
  v6 = [v4 sharedManager];
  [v6 removeObserver:v5];

  v7.receiver = v5;
  v7.super_class = ObjectType;
  [(PlaceCardCollectionMembershipProvider *)&v7 dealloc];
}

- (id)containingCollectionWithIdentifer:(id)a3
{
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;
  v7 = self;
  v8._countAndFlagsBits = v4;
  v8._object = v6;
  PlaceCardCollectionMembershipProvider.containingCollection(withIdentifer:)(v9, v8);
  v11 = v10;

  return v11;
}

- (void)collectionManager:(id)a3 contentDidChange:(id)a4
{
  sub_100014C84(0, &qword_101922CC0);
  v5 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = self;
  sub_100361BA0(v5);
}

- (void)collectionHandlerContentUpdated:(id)a3
{
  v4 = a3;
  v5 = self;
  PlaceCardCollectionMembershipProvider.collectionHandlerContentUpdated(_:)(v4);
}

@end