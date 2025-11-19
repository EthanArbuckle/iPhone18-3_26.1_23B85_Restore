@interface HomeContext
- (BOOL)chromeDidSelectClusteredFeatureAnnotationsMarker:(id)a3;
- (BOOL)chromeDidSelectCustomPOIAnnotation:(id)a3;
- (BOOL)chromeDidSelectMarkerForMapItem:(id)a3;
- (BOOL)chromeDidSelectUserLocationAnnotation:(id)a3;
- (ChromeViewController)chromeViewController;
- (_TtC4Maps11HomeContext)init;
- (id)desiredCards;
- (id)personalizedItemSources;
- (void)containeeViewControllerDidDismissExternally:(id)a3;
- (void)containeeViewControllerGoToPreviousState:(id)a3 withSender:(id)a4;
@end

@implementation HomeContext

- (id)desiredCards
{
  swift_beginAccess();

  sub_1000CE6B8(&unk_10190B260);
  v2.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v2.super.isa;
}

- (id)personalizedItemSources
{
  v2 = self;
  sub_1000E2320();

  sub_1000E2690();
  v3.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v3.super.isa;
}

- (BOOL)chromeDidSelectUserLocationAnnotation:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1000E26EC(v4);

  return 1;
}

- (BOOL)chromeDidSelectMarkerForMapItem:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1000E28BC(v4);

  return 1;
}

- (BOOL)chromeDidSelectCustomPOIAnnotation:(id)a3
{
  swift_unknownObjectRetain();
  v5 = self;
  sub_1000E2A48(a3);
  swift_unknownObjectRelease();

  return 1;
}

- (BOOL)chromeDidSelectClusteredFeatureAnnotationsMarker:(id)a3
{
  v4 = a3;
  v5 = self;
  VisitedPlacesLibraryContext.chromeDidSelectClusteredFeatureAnnotationsMarker(_:)(v4);

  return 1;
}

- (void)containeeViewControllerGoToPreviousState:(id)a3 withSender:(id)a4
{
  if (a4)
  {
    v5 = self;
    swift_unknownObjectRetain();
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v7, 0, sizeof(v7));
    v6 = self;
  }

  sub_1000E2E7C();

  sub_1000DB2F4(v7);
}

- (void)containeeViewControllerDidDismissExternally:(id)a3
{
  v3 = self;
  sub_1000E2E7C();
}

- (ChromeViewController)chromeViewController
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (_TtC4Maps11HomeContext)init
{
  ObjectType = swift_getObjectType();
  swift_unknownObjectWeakInit();
  *(self + OBJC_IVAR____TtC4Maps11HomeContext_containees) = _swiftEmptyArrayStorage;
  v6.receiver = self;
  v6.super_class = ObjectType;
  v4 = [(HomeContext *)&v6 init];
  sub_1000E30A8();

  return v4;
}

@end