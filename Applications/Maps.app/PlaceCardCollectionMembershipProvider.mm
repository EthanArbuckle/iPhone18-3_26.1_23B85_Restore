@interface PlaceCardCollectionMembershipProvider
- (MKMapItem)mapItem;
- (NSArray)containingCollections;
- (_TtP4Maps45PlaceCardCollectionMembershipProviderDelegate_)delegate;
- (id)containingCollectionWithIdentifer:(id)identifer;
- (void)collectionHandlerContentUpdated:(id)updated;
- (void)collectionManager:(id)manager contentDidChange:(id)change;
- (void)dealloc;
- (void)setContainingCollections:(id)collections;
- (void)setMapItem:(id)item;
@end

@implementation PlaceCardCollectionMembershipProvider

- (MKMapItem)mapItem
{
  v3 = OBJC_IVAR____TtC4Maps37PlaceCardCollectionMembershipProvider_mapItem;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setMapItem:(id)item
{
  v5 = OBJC_IVAR____TtC4Maps37PlaceCardCollectionMembershipProvider_mapItem;
  swift_beginAccess();
  v6 = *(self + v5);
  *(self + v5) = item;
  itemCopy = item;
  selfCopy = self;

  sharedManager = [objc_opt_self() sharedManager];
  currentCollections = [sharedManager currentCollections];

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

- (void)setContainingCollections:(id)collections
{
  sub_100014C84(0, &qword_101922CC0);
  v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = OBJC_IVAR____TtC4Maps37PlaceCardCollectionMembershipProvider_containingCollections;
  swift_beginAccess();
  *(self + v5) = v4;
  selfCopy = self;

  sub_100362408();
}

- (void)dealloc
{
  ObjectType = swift_getObjectType();
  v4 = objc_opt_self();
  selfCopy = self;
  sharedManager = [v4 sharedManager];
  [sharedManager removeObserver:selfCopy];

  v7.receiver = selfCopy;
  v7.super_class = ObjectType;
  [(PlaceCardCollectionMembershipProvider *)&v7 dealloc];
}

- (id)containingCollectionWithIdentifer:(id)identifer
{
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;
  selfCopy = self;
  v8._countAndFlagsBits = v4;
  v8._object = v6;
  PlaceCardCollectionMembershipProvider.containingCollection(withIdentifer:)(v9, v8);
  v11 = v10;

  return v11;
}

- (void)collectionManager:(id)manager contentDidChange:(id)change
{
  sub_100014C84(0, &qword_101922CC0);
  v5 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  selfCopy = self;
  sub_100361BA0(v5);
}

- (void)collectionHandlerContentUpdated:(id)updated
{
  updatedCopy = updated;
  selfCopy = self;
  PlaceCardCollectionMembershipProvider.collectionHandlerContentUpdated(_:)(updatedCopy);
}

@end