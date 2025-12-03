@interface CarHomeViewController
- (_TtC4Maps21CarHomeViewController)initWithCoder:(id)coder;
- (_TtC4Maps21CarHomeViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation CarHomeViewController

- (void)viewDidLoad
{
  selfCopy = self;
  sub_10022D08C();
}

- (void)viewWillAppear:(BOOL)appear
{
  selfCopy = self;
  sub_10022D934(appear);
}

- (void)viewDidDisappear:(BOOL)disappear
{
  selfCopy = self;
  sub_10022DBE0(disappear);
}

- (_TtC4Maps21CarHomeViewController)initWithNibName:(id)name bundle:(id)bundle
{
  ObjectType = swift_getObjectType();
  if (name)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    name = v8;
  }

  v9 = OBJC_IVAR____TtC4Maps21CarHomeViewController_viewModel;
  type metadata accessor for CarHomeViewModel();
  swift_allocObject();
  bundleCopy = bundle;
  *(&self->super.super.super.super.super.isa + v9) = sub_1003A4748();
  *&self->super.hostingController[OBJC_IVAR____TtC4Maps21CarHomeViewController_actionDelegate] = 0;
  swift_unknownObjectWeakInit();
  if (name)
  {
    v11 = String._bridgeToObjectiveC()();
  }

  else
  {
    v11 = 0;
  }

  v14.receiver = self;
  v14.super_class = ObjectType;
  v12 = [(CarHostingViewController *)&v14 initWithNibName:v11 bundle:bundleCopy];

  return v12;
}

- (_TtC4Maps21CarHomeViewController)initWithCoder:(id)coder
{
  ObjectType = swift_getObjectType();
  v6 = OBJC_IVAR____TtC4Maps21CarHomeViewController_viewModel;
  type metadata accessor for CarHomeViewModel();
  swift_allocObject();
  coderCopy = coder;
  *(&self->super.super.super.super.super.isa + v6) = sub_1003A4748();
  *&self->super.hostingController[OBJC_IVAR____TtC4Maps21CarHomeViewController_actionDelegate] = 0;
  swift_unknownObjectWeakInit();
  v10.receiver = self;
  v10.super_class = ObjectType;
  v8 = [(CarHostingViewController *)&v10 initWithCoder:coderCopy];

  if (v8)
  {
  }

  return v8;
}

@end