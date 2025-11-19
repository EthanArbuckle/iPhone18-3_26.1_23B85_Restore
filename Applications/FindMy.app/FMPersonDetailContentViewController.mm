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
- (void)handleStopSharingWithGestureRecognizer:(id)a3;
- (void)handleTapNotificationsPausedAttention;
- (void)handleUnfavorite;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
@end

@implementation FMPersonDetailContentViewController

- (void)viewDidLoad
{
  v2 = self;
  v3 = [(FMPersonDetailContentViewController *)v2 view];
  if (v3)
  {
    v4 = v3;
    [v3 setFrame:{0.0, 0.0, 100.0, 100.0}];

    v6.receiver = v2;
    v6.super_class = type metadata accessor for FMPersonDetailContentViewController();
    [(FMBaseContentViewController *)&v6 viewDidLoad];
    v5 = OBJC_IVAR____TtC6FindMy35FMPersonDetailContentViewController_peopleManagementHostingController;
    [(FMPersonDetailContentViewController *)v2 addChildViewController:*(&v2->super.super.super.super.isa + OBJC_IVAR____TtC6FindMy35FMPersonDetailContentViewController_peopleManagementHostingController)];
    [*(&v2->super.super.super.super.isa + v5) didMoveToParentViewController:v2];
  }

  else
  {
    __break(1u);
  }
}

- (void)viewWillAppear:(BOOL)a3
{
  v4 = self;
  sub_10012AFF4(a3);
}

- (void)viewDidAppear:(BOOL)a3
{
  v4 = self;
  sub_10012B104(a3);
}

- (void)viewWillDisappear:(BOOL)a3
{
  v4 = self;
  sub_10012B288(a3);
}

- (void)viewDidLayoutSubviews
{
  v2 = self;
  sub_10012BAF4();
}

- (void)handleDirections
{
  v2 = self;
  sub_100134454();
}

- (void)handleFind
{
  v2 = self;
  sub_1001349A0();
}

- (void)handleLocationLabel
{
  v2 = self;
  sub_100136700();
}

- (void)handleContact
{
  v2 = self;
  sub_100137198();
}

- (void)handleStartFollowing
{
  v2 = self;
  sub_1001374A0();
}

- (void)handleRemoveFriend
{
  v2 = self;
  sub_100138248();
}

- (void)handleStartSharing
{
  v2 = self;
  sub_100138504();
}

- (void)handleStopSharingWithGestureRecognizer:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_1001389E0(a3, 1);
}

- (void)handleTapNotificationsPausedAttention
{
  v3 = objc_allocWithZone(type metadata accessor for FMPauseNotificationsViewController());
  v9 = self;

  v5 = sub_1004114EC(v4);
  v6 = objc_allocWithZone(type metadata accessor for FMActivityIndicatingNavigationController());
  v7 = v5;
  v8 = sub_1000CC510(v7, 2);
  [(FMPersonDetailContentViewController *)v9 presentViewController:v8 animated:1 completion:0];
}

- (void)handleFavorite
{
  v2 = self;
  sub_10013A78C();
}

- (void)handleUnfavorite
{
  v2 = self;
  sub_10013A808();
}

- (void)handleInnaccurateLocationAttentionTap
{
  v2 = self;
  sub_10013B150();
}

- (void)handleNotificationsOffAttentionTap
{
  v2 = self;
  sub_100140270();
}

@end