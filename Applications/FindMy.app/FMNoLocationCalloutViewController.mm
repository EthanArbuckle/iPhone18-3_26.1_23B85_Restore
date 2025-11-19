@interface FMNoLocationCalloutViewController
- (_TtC6FindMy33FMNoLocationCalloutViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)infoButtonPressed;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
@end

@implementation FMNoLocationCalloutViewController

- (void)viewDidLoad
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for FMNoLocationCalloutViewController();
  v2 = v3.receiver;
  [(FMNoLocationCalloutViewController *)&v3 viewDidLoad];
  sub_10040F258();
  sub_10040F7B0();
}

- (void)viewDidLayoutSubviews
{
  v2 = self;
  sub_10040F100();
}

- (void)infoButtonPressed
{
  v3 = self + OBJC_IVAR____TtC6FindMy33FMNoLocationCalloutViewController_delegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v4 = *(v3 + 1);
    ObjectType = swift_getObjectType();
    v6 = *(v4 + 8);
    v7 = self;
    v6(ObjectType, v4);
    swift_unknownObjectRelease();
  }
}

- (_TtC6FindMy33FMNoLocationCalloutViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end