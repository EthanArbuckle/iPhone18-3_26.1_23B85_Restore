@interface FMFriendLocationAlertsViewController
- (void)handleFenceTapWithGestureRecognizer:(id)a3;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
@end

@implementation FMFriendLocationAlertsViewController

- (void)viewWillAppear:(BOOL)a3
{
  v3 = a3;
  v7.receiver = self;
  v7.super_class = type metadata accessor for FMFriendLocationAlertsViewController();
  v4 = v7.receiver;
  [(FMSettingsUpdateViewController *)&v7 viewWillAppear:v3];
  v5 = *(*&v4[OBJC_IVAR____TtC6FindMy24FMMediatedViewController_mediator] + 48);

  v6 = sub_10015D034(v4, v5);

  *&v4[OBJC_IVAR____TtC6FindMy36FMFriendLocationAlertsViewController_peopleSubscription] = v6;
}

- (void)viewWillDisappear:(BOOL)a3
{
  v4 = self;
  sub_10015917C(a3);
}

- (void)handleFenceTapWithGestureRecognizer:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_10015B418(v4);
}

@end