@interface GuidesHomeContext
- (ChromeViewController)chromeViewController;
- (_TtC4Maps17GuidesHomeContext)init;
- (_TtC4Maps17GuidesHomeContext)initWithConfiguration:(id)a3;
- (id)desiredCards;
- (void)citySelectorViewController:(id)a3 showGuidesHomeWithLocation:(id)a4;
- (void)containeeViewControllerDidDismissExternally:(id)a3;
- (void)containeeViewControllerGoToPreviousState:(id)a3 withSender:(id)a4;
- (void)guidesHomeViewController:(id)a3 showCitySelectorWithLocation:(id)a4;
- (void)guidesHomeViewController:(id)a3 showGuidesHomeWithLocation:(id)a4;
- (void)prepareToEnterStackInChromeViewController:(id)a3;
@end

@implementation GuidesHomeContext

- (void)citySelectorViewController:(id)a3 showGuidesHomeWithLocation:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_10010136C(v7);
}

- (id)desiredCards
{
  swift_beginAccess();

  sub_1000CE6B8(&unk_10190B260);
  v2.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v2.super.isa;
}

- (void)prepareToEnterStackInChromeViewController:(id)a3
{
  v3 = self;
  sub_100250994();
}

- (ChromeViewController)chromeViewController
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (_TtC4Maps17GuidesHomeContext)initWithConfiguration:(id)a3
{
  ObjectType = swift_getObjectType();
  swift_unknownObjectWeakInit();
  *(self + OBJC_IVAR____TtC4Maps17GuidesHomeContext_configuration) = a3;
  *(self + OBJC_IVAR____TtC4Maps17GuidesHomeContext_containees) = _swiftEmptyArrayStorage;
  v8.receiver = self;
  v8.super_class = ObjectType;
  v6 = a3;
  return [(GuidesHomeContext *)&v8 init];
}

- (_TtC4Maps17GuidesHomeContext)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)guidesHomeViewController:(id)a3 showGuidesHomeWithLocation:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_10025D338(v7);
}

- (void)guidesHomeViewController:(id)a3 showCitySelectorWithLocation:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_10025D544(v7);
}

- (void)containeeViewControllerGoToPreviousState:(id)a3 withSender:(id)a4
{
  if (a4)
  {
    v6 = a3;
    v7 = self;
    swift_unknownObjectRetain();
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v10, 0, sizeof(v10));
    v8 = a3;
    v9 = self;
  }

  sub_1002A1214();

  sub_1000DB2F4(v10);
}

- (void)containeeViewControllerDidDismissExternally:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1002A1214();
}

@end