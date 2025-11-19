@interface FMUTContentViewController
- (void)dismissInformationalControllerWithSender:(id)a3;
- (void)dismissWelcomeController;
- (void)handleDisableTap;
- (void)handleFindButton;
- (void)handleLearnMoreTap;
- (void)handlePlaySound;
- (void)ignoreTag;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
@end

@implementation FMUTContentViewController

- (void)viewDidLoad
{
  v2 = self;
  v3 = [(FMUTContentViewController *)v2 view];
  if (v3)
  {
    v4 = v3;
    [v3 setFrame:{0.0, 0.0, 100.0, 100.0}];

    v5.receiver = v2;
    v5.super_class = type metadata accessor for FMUTContentViewController();
    [(FMBaseContentViewController *)&v5 viewDidLoad];
  }

  else
  {
    __break(1u);
  }
}

- (void)viewWillAppear:(BOOL)a3
{
  v3 = a3;
  v5.receiver = self;
  v5.super_class = type metadata accessor for FMUTContentViewController();
  v4 = v5.receiver;
  [(FMUTContentViewController *)&v5 viewWillAppear:v3];
  *(*&v4[OBJC_IVAR____TtC6FindMy25FMUTContentViewController_dataSource] + OBJC_IVAR____TtC6FindMy20FMUTDetailDataSource_updatesEnabled) = 1;

  sub_10028B38C();
}

- (void)viewDidAppear:(BOOL)a3
{
  v4 = self;
  sub_1002F88C0(a3);
}

- (void)viewDidLayoutSubviews
{
  v2 = self;
  sub_1002F9390();
}

- (void)viewWillDisappear:(BOOL)a3
{
  v4 = self;
  sub_1002F94D4(a3);
}

- (void)handleLearnMoreTap
{
  v2 = self;
  sub_1002FEFF0();
}

- (void)ignoreTag
{
  v2 = self;
  sub_1002FFD6C();
}

- (void)handleDisableTap
{
  v2 = self;
  sub_1003008B8();
}

- (void)handlePlaySound
{
  v2 = self;
  sub_100305FE0();
}

- (void)handleFindButton
{
  v2 = self;
  sub_100303FB0(0, 0);
}

- (void)dismissWelcomeController
{
  v2 = self;
  sub_1003075EC();
}

- (void)dismissInformationalControllerWithSender:(id)a3
{
  swift_unknownObjectRetain();
  v4 = self;
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  sub_100307724();

  sub_100006060(&v5);
}

@end