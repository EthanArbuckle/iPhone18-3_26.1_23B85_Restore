@interface FMPersonDetailContentViewController
- (void)handleContact;
- (void)handleDirections;
- (void)handleFavorite;
- (void)handleFind;
- (void)handleInnaccurateLocationAttentionTap;
- (void)handleLocationLabel;
- (void)handleNotificationsOffAttentionTap;
- (void)handleRemoveFriend;
- (void)handleStartFollowing;
- (void)handleStartSharing;
- (void)handleStopSharingWithGestureRecognizer:(id)recognizer;
- (void)handleTapNotificationsPausedAttention;
- (void)handleUnfavorite;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
@end

@implementation FMPersonDetailContentViewController

- (void)viewDidLoad
{
  selfCopy = self;
  view = [(FMPersonDetailContentViewController *)selfCopy view];
  if (view)
  {
    v4 = view;
    [view setFrame:{0.0, 0.0, 100.0, 100.0}];

    v6.receiver = selfCopy;
    v6.super_class = type metadata accessor for FMPersonDetailContentViewController();
    [(FMBaseContentViewController *)&v6 viewDidLoad];
    v5 = OBJC_IVAR____TtC6FindMy35FMPersonDetailContentViewController_peopleManagementHostingController;
    [(FMPersonDetailContentViewController *)selfCopy addChildViewController:*(&selfCopy->super.super.super.super.isa + OBJC_IVAR____TtC6FindMy35FMPersonDetailContentViewController_peopleManagementHostingController)];
    [*(&selfCopy->super.super.super.super.isa + v5) didMoveToParentViewController:selfCopy];
  }

  else
  {
    __break(1u);
  }
}

- (void)viewWillAppear:(BOOL)appear
{
  selfCopy = self;
  sub_10012AFF4(appear);
}

- (void)viewDidAppear:(BOOL)appear
{
  selfCopy = self;
  sub_10012B104(appear);
}

- (void)viewWillDisappear:(BOOL)disappear
{
  selfCopy = self;
  sub_10012B288(disappear);
}

- (void)viewDidLayoutSubviews
{
  selfCopy = self;
  sub_10012BAF4();
}

- (void)handleDirections
{
  selfCopy = self;
  sub_100134454();
}

- (void)handleFind
{
  selfCopy = self;
  sub_1001349A0();
}

- (void)handleLocationLabel
{
  selfCopy = self;
  sub_100136700();
}

- (void)handleContact
{
  selfCopy = self;
  sub_100137198();
}

- (void)handleStartFollowing
{
  selfCopy = self;
  sub_1001374A0();
}

- (void)handleRemoveFriend
{
  selfCopy = self;
  sub_100138248();
}

- (void)handleStartSharing
{
  selfCopy = self;
  sub_100138504();
}

- (void)handleStopSharingWithGestureRecognizer:(id)recognizer
{
  recognizerCopy = recognizer;
  selfCopy = self;
  sub_1001389E0(recognizer, 1);
}

- (void)handleTapNotificationsPausedAttention
{
  v3 = objc_allocWithZone(type metadata accessor for FMPauseNotificationsViewController());
  selfCopy = self;

  v5 = sub_1004114EC(v4);
  v6 = objc_allocWithZone(type metadata accessor for FMActivityIndicatingNavigationController());
  v7 = v5;
  v8 = sub_1000CC510(v7, 2);
  [(FMPersonDetailContentViewController *)selfCopy presentViewController:v8 animated:1 completion:0];
}

- (void)handleFavorite
{
  selfCopy = self;
  sub_10013A78C();
}

- (void)handleUnfavorite
{
  selfCopy = self;
  sub_10013A808();
}

- (void)handleInnaccurateLocationAttentionTap
{
  selfCopy = self;
  sub_10013B150();
}

- (void)handleNotificationsOffAttentionTap
{
  selfCopy = self;
  sub_100140270();
}

@end