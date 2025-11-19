@interface CarHostingViewController
- (NSArray)preferredFocusEnvironments;
- (_TtC4Maps24CarHostingViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)externalDeviceDidUpdate:(id)a3;
- (void)updateHeaderWithTitle:(id)a3 primaryAccessory:(id)a4 secondaryAccessory:(id)a5 leadingImage:(id)a6 handler:(id)a7;
- (void)viewDidLoad;
@end

@implementation CarHostingViewController

- (void)viewDidLoad
{
  v2 = self;
  CarHostingViewController.viewDidLoad()();
}

- (void)updateHeaderWithTitle:(id)a3 primaryAccessory:(id)a4 secondaryAccessory:(id)a5 leadingImage:(id)a6 handler:(id)a7
{
  v12 = _Block_copy(a7);
  v13 = v12;
  if (a3)
  {
    v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    a3 = v15;
    if (v13)
    {
LABEL_3:
      v16 = swift_allocObject();
      *(v16 + 16) = v13;
      v13 = sub_10017E258;
      goto LABEL_6;
    }
  }

  else
  {
    v14 = 0;
    if (v12)
    {
      goto LABEL_3;
    }
  }

  v16 = 0;
LABEL_6:
  v17 = a4;
  v18 = a5;
  v19 = a6;
  v20 = self;
  CarHostingViewController.updateHeader(title:primaryAccessory:secondaryAccessory:leadingImage:handler:)(v14, a3, v17, a5, a6, v13, v16);
  sub_1000588AC(v13);
}

- (NSArray)preferredFocusEnvironments
{
  v2 = *(&self->super.super.super.super.isa + OBJC_IVAR____TtC4Maps24CarHostingViewController_hostingController);
  if (v2)
  {
    sub_1000CE6B8(&qword_101908400);
    v3 = swift_allocObject();
    *(v3 + 16) = xmmword_1011E47B0;
    *(v3 + 32) = v2;
  }

  v4 = v2;
  sub_1000CE6B8(&unk_10190DFB0);
  v5.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v5.super.isa;
}

- (_TtC4Maps24CarHostingViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  if (a3)
  {
    v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  v8 = a4;
  return CarHostingViewController.init(nibName:bundle:)(v5, v7, a4);
}

- (void)externalDeviceDidUpdate:(id)a3
{
  v4 = type metadata accessor for Notification();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Notification._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = self;
  sub_10017D524();

  (*(v5 + 8))(v7, v4);
}

@end