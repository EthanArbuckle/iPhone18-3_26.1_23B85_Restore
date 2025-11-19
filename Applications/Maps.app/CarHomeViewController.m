@interface CarHomeViewController
- (_TtC4Maps21CarHomeViewController)initWithCoder:(id)a3;
- (_TtC4Maps21CarHomeViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation CarHomeViewController

- (void)viewDidLoad
{
  v2 = self;
  sub_10022D08C();
}

- (void)viewWillAppear:(BOOL)a3
{
  v4 = self;
  sub_10022D934(a3);
}

- (void)viewDidDisappear:(BOOL)a3
{
  v4 = self;
  sub_10022DBE0(a3);
}

- (_TtC4Maps21CarHomeViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  ObjectType = swift_getObjectType();
  if (a3)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    a3 = v8;
  }

  v9 = OBJC_IVAR____TtC4Maps21CarHomeViewController_viewModel;
  type metadata accessor for CarHomeViewModel();
  swift_allocObject();
  v10 = a4;
  *(&self->super.super.super.super.super.isa + v9) = sub_1003A4748();
  *&self->super.hostingController[OBJC_IVAR____TtC4Maps21CarHomeViewController_actionDelegate] = 0;
  swift_unknownObjectWeakInit();
  if (a3)
  {
    v11 = String._bridgeToObjectiveC()();
  }

  else
  {
    v11 = 0;
  }

  v14.receiver = self;
  v14.super_class = ObjectType;
  v12 = [(CarHostingViewController *)&v14 initWithNibName:v11 bundle:v10];

  return v12;
}

- (_TtC4Maps21CarHomeViewController)initWithCoder:(id)a3
{
  ObjectType = swift_getObjectType();
  v6 = OBJC_IVAR____TtC4Maps21CarHomeViewController_viewModel;
  type metadata accessor for CarHomeViewModel();
  swift_allocObject();
  v7 = a3;
  *(&self->super.super.super.super.super.isa + v6) = sub_1003A4748();
  *&self->super.hostingController[OBJC_IVAR____TtC4Maps21CarHomeViewController_actionDelegate] = 0;
  swift_unknownObjectWeakInit();
  v10.receiver = self;
  v10.super_class = ObjectType;
  v8 = [(CarHostingViewController *)&v10 initWithCoder:v7];

  if (v8)
  {
  }

  return v8;
}

@end