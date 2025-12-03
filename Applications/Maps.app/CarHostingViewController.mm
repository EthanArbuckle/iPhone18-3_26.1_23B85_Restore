@interface CarHostingViewController
- (NSArray)preferredFocusEnvironments;
- (_TtC4Maps24CarHostingViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)externalDeviceDidUpdate:(id)update;
- (void)updateHeaderWithTitle:(id)title primaryAccessory:(id)accessory secondaryAccessory:(id)secondaryAccessory leadingImage:(id)image handler:(id)handler;
- (void)viewDidLoad;
@end

@implementation CarHostingViewController

- (void)viewDidLoad
{
  selfCopy = self;
  CarHostingViewController.viewDidLoad()();
}

- (void)updateHeaderWithTitle:(id)title primaryAccessory:(id)accessory secondaryAccessory:(id)secondaryAccessory leadingImage:(id)image handler:(id)handler
{
  v12 = _Block_copy(handler);
  v13 = v12;
  if (title)
  {
    v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    title = v15;
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
  accessoryCopy = accessory;
  secondaryAccessoryCopy = secondaryAccessory;
  imageCopy = image;
  selfCopy = self;
  CarHostingViewController.updateHeader(title:primaryAccessory:secondaryAccessory:leadingImage:handler:)(v14, title, accessoryCopy, secondaryAccessory, image, v13, v16);
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

- (_TtC4Maps24CarHostingViewController)initWithNibName:(id)name bundle:(id)bundle
{
  if (name)
  {
    v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  bundleCopy = bundle;
  return CarHostingViewController.init(nibName:bundle:)(v5, v7, bundle);
}

- (void)externalDeviceDidUpdate:(id)update
{
  v4 = type metadata accessor for Notification();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Notification._unconditionallyBridgeFromObjectiveC(_:)();
  selfCopy = self;
  sub_10017D524();

  (*(v5 + 8))(v7, v4);
}

@end