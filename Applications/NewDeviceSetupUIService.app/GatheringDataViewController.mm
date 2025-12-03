@interface GatheringDataViewController
- (_TtC23NewDeviceSetupUIService27GatheringDataViewController)initWithContentView:(id)view;
- (void)dismissViewControllerAnimated:(BOOL)animated completion:(id)completion;
- (void)viewDidLoad;
@end

@implementation GatheringDataViewController

- (void)viewDidLoad
{
  selfCopy = self;
  sub_100005834();
}

- (void)dismissViewControllerAnimated:(BOOL)animated completion:(id)completion
{
  v6 = _Block_copy(completion);
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

  selfCopy = self;
  sub_100005F20(animated, v6, v7);
  sub_10000617C(v6);
}

- (_TtC23NewDeviceSetupUIService27GatheringDataViewController)initWithContentView:(id)view
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end