@interface RingCelebrationViewController
- (_TtC10FitnessApp29RingCelebrationViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)appWillResignActive:(id)a3;
- (void)beginFadeOut;
- (void)configurePlayer;
- (void)teardownPlayer;
- (void)textSizeChangedWithNotification:(id)a3;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
@end

@implementation RingCelebrationViewController

- (void)viewDidLoad
{
  v2 = self;
  sub_10064A494();
}

- (void)viewDidLayoutSubviews
{
  v6.receiver = self;
  v6.super_class = type metadata accessor for RingCelebrationViewController();
  v2 = v6.receiver;
  [(RingCelebrationViewController *)&v6 viewDidLayoutSubviews];
  v3 = *&v2[OBJC_IVAR____TtC10FitnessApp29RingCelebrationViewController_playerLayer];
  if (v3)
  {
    v4 = *&v2[OBJC_IVAR____TtC10FitnessApp29RingCelebrationViewController_containerView];
    v5 = v3;
    [v4 bounds];
    [v5 setFrame:?];
  }
}

- (void)viewDidAppear:(BOOL)a3
{
  v4 = self;
  sub_10064B4EC(a3);
}

- (void)viewDidDisappear:(BOOL)a3
{
  v3 = a3;
  v5.receiver = self;
  v5.super_class = type metadata accessor for RingCelebrationViewController();
  v4 = v5.receiver;
  [(RingCelebrationViewController *)&v5 viewDidDisappear:v3];
  [v4 teardownPlayer];
}

- (void)textSizeChangedWithNotification:(id)a3
{
  v4 = type metadata accessor for Notification();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Notification._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = *(&self->super.super.super.isa + OBJC_IVAR____TtC10FitnessApp29RingCelebrationViewController_bottomLabelConstraint);
  v9 = objc_opt_self();
  v10 = self;
  v11 = v8;
  v12 = [v9 preferredFontForTextStyle:UIFontTextStyleFootnote];
  [v12 _scaledValueForValue:-40.0];
  v14 = v13;

  [v11 setConstant:v14];
  (*(v5 + 8))(v7, v4);
}

- (void)appWillResignActive:(id)a3
{
  v4 = type metadata accessor for Notification();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v8 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Notification._unconditionallyBridgeFromObjectiveC(_:)();
  [(RingCelebrationViewController *)self dismissViewControllerAnimated:0 completion:0];
  (*(v5 + 8))(v7, v4);
}

- (void)beginFadeOut
{
  v2 = self;
  sub_10064C094();
}

- (_TtC10FitnessApp29RingCelebrationViewController)initWithNibName:(id)a3 bundle:(id)a4
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
  return sub_10064C594(v5, v7, a4);
}

- (void)configurePlayer
{
  v2 = self;
  sub_10064CD44();
}

- (void)teardownPlayer
{
  v2 = self;
  sub_10064D824();
}

@end