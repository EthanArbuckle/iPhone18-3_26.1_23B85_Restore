@interface HomeContext
- (BOOL)chromeDidSelectClusteredFeatureAnnotationsMarker:(id)marker;
- (BOOL)chromeDidSelectCustomPOIAnnotation:(id)annotation;
- (BOOL)chromeDidSelectMarkerForMapItem:(id)item;
- (BOOL)chromeDidSelectUserLocationAnnotation:(id)annotation;
- (ChromeViewController)chromeViewController;
- (_TtC4Maps11HomeContext)init;
- (id)desiredCards;
- (id)personalizedItemSources;
- (void)containeeViewControllerDidDismissExternally:(id)externally;
- (void)containeeViewControllerGoToPreviousState:(id)state withSender:(id)sender;
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
  selfCopy = self;
  sub_1000E2320();

  sub_1000E2690();
  v3.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v3.super.isa;
}

- (BOOL)chromeDidSelectUserLocationAnnotation:(id)annotation
{
  annotationCopy = annotation;
  selfCopy = self;
  sub_1000E26EC(annotationCopy);

  return 1;
}

- (BOOL)chromeDidSelectMarkerForMapItem:(id)item
{
  itemCopy = item;
  selfCopy = self;
  sub_1000E28BC(itemCopy);

  return 1;
}

- (BOOL)chromeDidSelectCustomPOIAnnotation:(id)annotation
{
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_1000E2A48(annotation);
  swift_unknownObjectRelease();

  return 1;
}

- (BOOL)chromeDidSelectClusteredFeatureAnnotationsMarker:(id)marker
{
  markerCopy = marker;
  selfCopy = self;
  VisitedPlacesLibraryContext.chromeDidSelectClusteredFeatureAnnotationsMarker(_:)(markerCopy);

  return 1;
}

- (void)containeeViewControllerGoToPreviousState:(id)state withSender:(id)sender
{
  if (sender)
  {
    selfCopy = self;
    swift_unknownObjectRetain();
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v7, 0, sizeof(v7));
    selfCopy2 = self;
  }

  sub_1000E2E7C();

  sub_1000DB2F4(v7);
}

- (void)containeeViewControllerDidDismissExternally:(id)externally
{
  selfCopy = self;
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