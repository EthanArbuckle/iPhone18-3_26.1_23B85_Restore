@interface GatheringDataViewController
- (_TtC23NewDeviceSetupUIService27GatheringDataViewController)initWithContentView:(id)a3;
- (void)dismissViewControllerAnimated:(BOOL)a3 completion:(id)a4;
- (void)viewDidLoad;
@end

@implementation GatheringDataViewController

- (void)viewDidLoad
{
  v2 = self;
  sub_100005834();
}

- (void)dismissViewControllerAnimated:(BOOL)a3 completion:(id)a4
{
  v6 = _Block_copy(a4);
  if (v6)
  {
    v7 = swift_allocObject();
    *(v7 + 16) = v6;
    v6 = sub_1000061C4;
  }

  else
  {
    v7 = 0;
  }

  v8 = self;
  sub_100005F20(a3, v6, v7);
  sub_10000617C(v6);
}

- (_TtC23NewDeviceSetupUIService27GatheringDataViewController)initWithContentView:(id)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end