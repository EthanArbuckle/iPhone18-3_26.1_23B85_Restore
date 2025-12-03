@interface FMUTContentViewController
- (void)dismissInformationalControllerWithSender:(id)sender;
- (void)dismissWelcomeController;
- (void)handleDisableTap;
- (void)handleFindButton;
- (void)handleLearnMoreTap;
- (void)handlePlaySound;
- (void)ignoreTag;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
@end

@implementation FMUTContentViewController

- (void)viewDidLoad
{
  selfCopy = self;
  view = [(FMUTContentViewController *)selfCopy view];
  if (view)
  {
    v4 = view;
    [view setFrame:{0.0, 0.0, 100.0, 100.0}];

    v5.receiver = selfCopy;
    v5.super_class = type metadata accessor for FMUTContentViewController();
    [(FMBaseContentViewController *)&v5 viewDidLoad];
  }

  else
  {
    __break(1u);
  }
}

- (void)viewWillAppear:(BOOL)appear
{
  appearCopy = appear;
  v5.receiver = self;
  v5.super_class = type metadata accessor for FMUTContentViewController();
  v4 = v5.receiver;
  [(FMUTContentViewController *)&v5 viewWillAppear:appearCopy];
  *(*&v4[OBJC_IVAR____TtC6FindMy25FMUTContentViewController_dataSource] + OBJC_IVAR____TtC6FindMy20FMUTDetailDataSource_updatesEnabled) = 1;

  sub_10028B38C();
}

- (void)viewDidAppear:(BOOL)appear
{
  selfCopy = self;
  sub_1002F88C0(appear);
}

- (void)viewDidLayoutSubviews
{
  selfCopy = self;
  sub_1002F9390();
}

- (void)viewWillDisappear:(BOOL)disappear
{
  selfCopy = self;
  sub_1002F94D4(disappear);
}

- (void)handleLearnMoreTap
{
  selfCopy = self;
  sub_1002FEFF0();
}

- (void)ignoreTag
{
  selfCopy = self;
  sub_1002FFD6C();
}

- (void)handleDisableTap
{
  selfCopy = self;
  sub_1003008B8();
}

- (void)handlePlaySound
{
  selfCopy = self;
  sub_100305FE0();
}

- (void)handleFindButton
{
  selfCopy = self;
  sub_100303FB0(0, 0);
}

- (void)dismissWelcomeController
{
  selfCopy = self;
  sub_1003075EC();
}

- (void)dismissInformationalControllerWithSender:(id)sender
{
  swift_unknownObjectRetain();
  selfCopy = self;
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  sub_100307724();

  sub_100006060(&v5);
}

@end