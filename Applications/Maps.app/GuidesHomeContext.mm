@interface GuidesHomeContext
- (ChromeViewController)chromeViewController;
- (_TtC4Maps17GuidesHomeContext)init;
- (_TtC4Maps17GuidesHomeContext)initWithConfiguration:(id)configuration;
- (id)desiredCards;
- (void)citySelectorViewController:(id)controller showGuidesHomeWithLocation:(id)location;
- (void)containeeViewControllerDidDismissExternally:(id)externally;
- (void)containeeViewControllerGoToPreviousState:(id)state withSender:(id)sender;
- (void)guidesHomeViewController:(id)controller showCitySelectorWithLocation:(id)location;
- (void)guidesHomeViewController:(id)controller showGuidesHomeWithLocation:(id)location;
- (void)prepareToEnterStackInChromeViewController:(id)controller;
@end

@implementation GuidesHomeContext

- (void)citySelectorViewController:(id)controller showGuidesHomeWithLocation:(id)location
{
  controllerCopy = controller;
  locationCopy = location;
  selfCopy = self;
  sub_10010136C(locationCopy);
}

- (id)desiredCards
{
  swift_beginAccess();

  sub_1000CE6B8(&unk_10190B260);
  v2.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v2.super.isa;
}

- (void)prepareToEnterStackInChromeViewController:(id)controller
{
  selfCopy = self;
  sub_100250994();
}

- (ChromeViewController)chromeViewController
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (_TtC4Maps17GuidesHomeContext)initWithConfiguration:(id)configuration
{
  ObjectType = swift_getObjectType();
  swift_unknownObjectWeakInit();
  *(self + OBJC_IVAR____TtC4Maps17GuidesHomeContext_configuration) = configuration;
  *(self + OBJC_IVAR____TtC4Maps17GuidesHomeContext_containees) = _swiftEmptyArrayStorage;
  v8.receiver = self;
  v8.super_class = ObjectType;
  configurationCopy = configuration;
  return [(GuidesHomeContext *)&v8 init];
}

- (_TtC4Maps17GuidesHomeContext)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)guidesHomeViewController:(id)controller showGuidesHomeWithLocation:(id)location
{
  controllerCopy = controller;
  locationCopy = location;
  selfCopy = self;
  sub_10025D338(locationCopy);
}

- (void)guidesHomeViewController:(id)controller showCitySelectorWithLocation:(id)location
{
  controllerCopy = controller;
  locationCopy = location;
  selfCopy = self;
  sub_10025D544(locationCopy);
}

- (void)containeeViewControllerGoToPreviousState:(id)state withSender:(id)sender
{
  if (sender)
  {
    stateCopy = state;
    selfCopy = self;
    swift_unknownObjectRetain();
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v10, 0, sizeof(v10));
    stateCopy2 = state;
    selfCopy2 = self;
  }

  sub_1002A1214();

  sub_1000DB2F4(v10);
}

- (void)containeeViewControllerDidDismissExternally:(id)externally
{
  externallyCopy = externally;
  selfCopy = self;
  sub_1002A1214();
}

@end