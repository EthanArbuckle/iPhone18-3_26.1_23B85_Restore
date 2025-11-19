@interface BSUIProductFeedViewController
- (_TtC11BookStoreUI29BSUIProductFeedViewController)initWithOptions:(id)a3;
- (id)resumeAndRebuildForReason:(id)a3;
- (int64_t)adaptivePresentationStyleForPresentationController:(id)a3;
- (void)_handleEngagementMessageRequest:(id)a3 forIdentifier:(id)a4;
- (void)cardPresentationTransitionDidComplete:(BOOL)a3;
- (void)didSetCurrentCardState:(id)a3;
- (void)feedController:(id)a3 didLoadCardResource:(id)a4;
- (void)feedViewControllerInitialContentReady:(id)a3;
- (void)handleTrigger:(id)a3 didChangeState:(unint64_t)a4 updateEvent:(unint64_t)a5;
- (void)messageViewController:(id)a3 didFailWithError:(id)a4;
- (void)messageViewController:(id)a3 didSelectActionWithURL:(id)a4;
- (void)messageViewControllerDidSelectCancel:(id)a3;
- (void)presentationControllerDidDismiss:(id)a3;
- (void)suspendAndTeardownForReason:(id)a3;
- (void)updateTopScrollEdgeEffectVisibilityWithViewController:(id)a3 previousTraitCollection:(id)a4;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation BSUIProductFeedViewController

- (_TtC11BookStoreUI29BSUIProductFeedViewController)initWithOptions:(id)a3
{
  if (a3)
  {
    v3 = sub_2C57E8();
  }

  else
  {
    v3 = 0;
  }

  BSUIProductFeedViewController.init(options:)(v3);
  return result;
}

- (void)viewWillAppear:(BOOL)a3
{
  v4 = self;
  sub_D9AD4(a3);
}

- (void)suspendAndTeardownForReason:(id)a3
{
  if (a3)
  {
    sub_2C58C8();
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v6 = self;
  v7 = [(BSUIProductFeedViewController *)v6 triggerStateManager];
  if (v7)
  {
    v8 = v7;
    v9 = sub_2C5888();
    [v8 removeObserver:v6 forTrigger:v9];
  }

  if (v5)
  {
    v10 = sub_2C5888();
  }

  else
  {
    v10 = 0;
  }

  v11.receiver = v6;
  v11.super_class = type metadata accessor for BSUIProductFeedViewController();
  [(BSUIFeedViewController *)&v11 suspendAndTeardownForReason:v10];
}

- (id)resumeAndRebuildForReason:(id)a3
{
  if (a3)
  {
    sub_2C58C8();
    v4 = self;
    v5 = sub_2C5888();
  }

  else
  {
    v6 = self;
    v5 = 0;
  }

  v12.receiver = self;
  v12.super_class = type metadata accessor for BSUIProductFeedViewController();
  v7 = [(BSUIFeedViewController *)&v12 resumeAndRebuildForReason:v5];

  v8 = [(BSUIProductFeedViewController *)self triggerStateManager];
  if (v8)
  {
    v9 = v8;
    v10 = sub_2C5888();
    [v9 addObserver:self forTrigger:v10];
  }

  else
  {
  }

  return v7;
}

- (void)didSetCurrentCardState:(id)a3
{
  v6.receiver = self;
  v6.super_class = type metadata accessor for BSUIProductFeedViewController();
  v4 = a3;
  v5 = v6.receiver;
  [(BSUIFeedViewController *)&v6 didSetCurrentCardState:v4];
  sub_DA388();
}

- (void)feedController:(id)a3 didLoadCardResource:(id)a4
{
  sub_2C57E8();
  v6 = a3;
  v7 = self;
  sub_DCA24();
}

- (void)feedViewControllerInitialContentReady:(id)a3
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for BSUIProductFeedViewController();
  v4 = a3;
  v5 = v7.receiver;
  [(BSUIFeedViewController *)&v7 feedViewControllerInitialContentReady:v4];
  v6 = v5[OBJC_IVAR____TtC11BookStoreUI29BSUIProductFeedViewController_isInitialContentReady];
  v5[OBJC_IVAR____TtC11BookStoreUI29BSUIProductFeedViewController_isInitialContentReady] = 1;
  if ((v6 & 1) == 0)
  {
    sub_DBD2C();
  }
}

- (void)_handleEngagementMessageRequest:(id)a3 forIdentifier:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = self;
  sub_D9FDC(a3, a4);
}

- (void)cardPresentationTransitionDidComplete:(BOOL)a3
{
  v3 = self;
  sub_DCD58();
}

- (void)updateTopScrollEdgeEffectVisibilityWithViewController:(id)a3 previousTraitCollection:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_DCF1C(v6);
}

- (void)handleTrigger:(id)a3 didChangeState:(unint64_t)a4 updateEvent:(unint64_t)a5
{
  v8 = sub_2C58C8();
  v10 = v9;
  v11 = a3;
  v15 = self;
  v12._rawValue = &off_389F88;
  v17._countAndFlagsBits = v8;
  v17._object = v10;
  v13 = sub_2C63E8(v12, v17);

  if (!v13)
  {
    *&v15->super.TUIFeedViewController_opaque[OBJC_IVAR____TtC11BookStoreUI29BSUIProductFeedViewController_scrolledPastLockupState] = a4;
    v14 = [(BSUIProductFeedViewController *)v15 traitCollection];
    [(BSUIProductFeedViewController *)v15 updateTopScrollEdgeEffectVisibilityWithViewController:v15 previousTraitCollection:v14];

    sub_DB8BC(1);
  }
}

- (void)messageViewController:(id)a3 didSelectActionWithURL:(id)a4
{
  v6 = sub_2BE3B8();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2BE398();
  v10 = a3;
  v11 = self;
  BSUIProductFeedViewController.messageViewController(_:didSelectActionWith:)(v10);

  (*(v7 + 8))(v9, v6);
}

- (void)messageViewControllerDidSelectCancel:(id)a3
{
  v4 = a3;
  v5 = self;
  BSUIProductFeedViewController.messageViewControllerDidSelectCancel(_:)(v4);
}

- (void)messageViewController:(id)a3 didFailWithError:(id)a4
{
  v6 = a3;
  v7 = self;
  v8 = a4;
  sub_DD048(a4);
}

- (int64_t)adaptivePresentationStyleForPresentationController:(id)a3
{
  v3 = [a3 presentedViewController];
  objc_opt_self();
  v4 = swift_dynamicCastObjCClass();

  if (v4)
  {
    return -1;
  }

  else
  {
    return -2;
  }
}

- (void)presentationControllerDidDismiss:(id)a3
{
  v4 = a3;
  v5 = self;
  BSUIProductFeedViewController.presentationControllerDidDismiss(_:)(v4);
}

@end