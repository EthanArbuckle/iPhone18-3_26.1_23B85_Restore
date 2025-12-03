@interface D2DSetupStartViewController
- (_TtC18SharingViewService27D2DSetupStartViewController)initWithContentView:(id)view;
- (void)didReceiveDeviceSetupNotification:(id)notification;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation D2DSetupStartViewController

- (void)viewDidLoad
{
  selfCopy = self;
  sub_100069228();
}

- (void)viewWillAppear:(BOOL)appear
{
  selfCopy = self;
  sub_100069CB8(appear);
}

- (void)viewDidDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  v7.receiver = self;
  v7.super_class = type metadata accessor for D2DSetupStartViewController();
  v4 = v7.receiver;
  [(D2DSetupBaseViewController *)&v7 viewDidDisappear:disappearCopy];
  defaultCenter = [objc_opt_self() defaultCenter];
  v6 = String._bridgeToObjectiveC()();
  [defaultCenter removeObserver:v4 name:v6 object:0];
}

- (void)didReceiveDeviceSetupNotification:(id)notification
{
  if (swift_unknownObjectWeakLoadStrong())
  {
    notificationCopy = notification;
    selfCopy = self;
    sub_1000AE248(notificationCopy);
    swift_unknownObjectRelease();
  }
}

- (_TtC18SharingViewService27D2DSetupStartViewController)initWithContentView:(id)view
{
  v5.receiver = self;
  v5.super_class = type metadata accessor for D2DSetupStartViewController();
  return [(D2DSetupBaseViewController *)&v5 initWithContentView:view];
}

@end