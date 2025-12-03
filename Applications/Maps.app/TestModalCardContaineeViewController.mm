@interface TestModalCardContaineeViewController
- (_TtC4Maps36TestModalCardContaineeViewController)initWithCoder:(id)coder;
- (_TtC4Maps36TestModalCardContaineeViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)viewDidLoad;
@end

@implementation TestModalCardContaineeViewController

- (void)viewDidLoad
{
  v6.receiver = self;
  v6.super_class = swift_getObjectType();
  v2 = v6.receiver;
  [(MapsHostingContaineeViewController *)&v6 viewDidLoad];
  v3 = *&v2[OBJC_IVAR____TtC4Maps36TestModalCardContaineeViewController_viewModel];
  v4 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v5 = *(v3 + 16);
  *(v3 + 16) = sub_1000D8714;
  *(v3 + 24) = v4;

  sub_1000588AC(v5);
}

- (_TtC4Maps36TestModalCardContaineeViewController)initWithNibName:(id)name bundle:(id)bundle
{
  ObjectType = swift_getObjectType();
  if (name)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = OBJC_IVAR____TtC4Maps36TestModalCardContaineeViewController_viewModel;
    type metadata accessor for TestModalCardContaineeViewController.ModalCardViewModel();
    v9 = swift_allocObject();
    *(v9 + 2) = 0;
    *(v9 + 3) = 0;
    *(&self->super.super.super.super.super.super.isa + v8) = v9;
    bundleCopy = bundle;
    v11 = String._bridgeToObjectiveC()();
  }

  else
  {
    v12 = OBJC_IVAR____TtC4Maps36TestModalCardContaineeViewController_viewModel;
    type metadata accessor for TestModalCardContaineeViewController.ModalCardViewModel();
    v13 = swift_allocObject();
    *(v13 + 2) = 0;
    *(v13 + 3) = 0;
    *(&self->super.super.super.super.super.super.isa + v12) = v13;
    bundleCopy2 = bundle;
    v11 = 0;
  }

  v17.receiver = self;
  v17.super_class = ObjectType;
  v15 = [(MapsHostingContaineeViewController *)&v17 initWithNibName:v11 bundle:bundle];

  return v15;
}

- (_TtC4Maps36TestModalCardContaineeViewController)initWithCoder:(id)coder
{
  ObjectType = swift_getObjectType();
  v6 = OBJC_IVAR____TtC4Maps36TestModalCardContaineeViewController_viewModel;
  type metadata accessor for TestModalCardContaineeViewController.ModalCardViewModel();
  v7 = swift_allocObject();
  *(v7 + 2) = 0;
  *(v7 + 3) = 0;
  *(&self->super.super.super.super.super.super.isa + v6) = v7;
  v11.receiver = self;
  v11.super_class = ObjectType;
  coderCopy = coder;
  v9 = [(MapsHostingContaineeViewController *)&v11 initWithCoder:coderCopy];

  if (v9)
  {
  }

  return v9;
}

@end