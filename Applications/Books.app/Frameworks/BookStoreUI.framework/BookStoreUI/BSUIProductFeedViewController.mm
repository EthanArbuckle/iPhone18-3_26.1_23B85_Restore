@interface BSUIProductFeedViewController
- (_TtC11BookStoreUI29BSUIProductFeedViewController)initWithOptions:(id)options;
- (id)resumeAndRebuildForReason:(id)reason;
- (int64_t)adaptivePresentationStyleForPresentationController:(id)controller;
- (void)_handleEngagementMessageRequest:(id)request forIdentifier:(id)identifier;
- (void)cardPresentationTransitionDidComplete:(BOOL)complete;
- (void)didSetCurrentCardState:(id)state;
- (void)feedController:(id)controller didLoadCardResource:(id)resource;
- (void)feedViewControllerInitialContentReady:(id)ready;
- (void)handleTrigger:(id)trigger didChangeState:(unint64_t)state updateEvent:(unint64_t)event;
- (void)messageViewController:(id)controller didFailWithError:(id)error;
- (void)messageViewController:(id)controller didSelectActionWithURL:(id)l;
- (void)messageViewControllerDidSelectCancel:(id)cancel;
- (void)presentationControllerDidDismiss:(id)dismiss;
- (void)suspendAndTeardownForReason:(id)reason;
- (void)updateTopScrollEdgeEffectVisibilityWithViewController:(id)controller previousTraitCollection:(id)collection;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation BSUIProductFeedViewController

- (_TtC11BookStoreUI29BSUIProductFeedViewController)initWithOptions:(id)options
{
  if (options)
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

- (void)viewWillAppear:(BOOL)appear
{
  selfCopy = self;
  sub_D9AD4(appear);
}

- (void)suspendAndTeardownForReason:(id)reason
{
  if (reason)
  {
    sub_2C58C8();
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  selfCopy = self;
  triggerStateManager = [(BSUIProductFeedViewController *)selfCopy triggerStateManager];
  if (triggerStateManager)
  {
    v8 = triggerStateManager;
    v9 = sub_2C5888();
    [v8 removeObserver:selfCopy forTrigger:v9];
  }

  if (v5)
  {
    v10 = sub_2C5888();
  }

  else
  {
    v10 = 0;
  }

  v11.receiver = selfCopy;
  v11.super_class = type metadata accessor for BSUIProductFeedViewController();
  [(BSUIFeedViewController *)&v11 suspendAndTeardownForReason:v10];
}

- (id)resumeAndRebuildForReason:(id)reason
{
  if (reason)
  {
    sub_2C58C8();
    selfCopy = self;
    v5 = sub_2C5888();
  }

  else
  {
    selfCopy2 = self;
    v5 = 0;
  }

  v12.receiver = self;
  v12.super_class = type metadata accessor for BSUIProductFeedViewController();
  v7 = [(BSUIFeedViewController *)&v12 resumeAndRebuildForReason:v5];

  triggerStateManager = [(BSUIProductFeedViewController *)self triggerStateManager];
  if (triggerStateManager)
  {
    v9 = triggerStateManager;
    v10 = sub_2C5888();
    [v9 addObserver:self forTrigger:v10];
  }

  else
  {
  }

  return v7;
}

- (void)didSetCurrentCardState:(id)state
{
  v6.receiver = self;
  v6.super_class = type metadata accessor for BSUIProductFeedViewController();
  stateCopy = state;
  v5 = v6.receiver;
  [(BSUIFeedViewController *)&v6 didSetCurrentCardState:stateCopy];
  sub_DA388();
}

- (void)feedController:(id)controller didLoadCardResource:(id)resource
{
  sub_2C57E8();
  controllerCopy = controller;
  selfCopy = self;
  sub_DCA24();
}

- (void)feedViewControllerInitialContentReady:(id)ready
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for BSUIProductFeedViewController();
  readyCopy = ready;
  v5 = v7.receiver;
  [(BSUIFeedViewController *)&v7 feedViewControllerInitialContentReady:readyCopy];
  v6 = v5[OBJC_IVAR____TtC11BookStoreUI29BSUIProductFeedViewController_isInitialContentReady];
  v5[OBJC_IVAR____TtC11BookStoreUI29BSUIProductFeedViewController_isInitialContentReady] = 1;
  if ((v6 & 1) == 0)
  {
    sub_DBD2C();
  }
}

- (void)_handleEngagementMessageRequest:(id)request forIdentifier:(id)identifier
{
  requestCopy = request;
  identifierCopy = identifier;
  selfCopy = self;
  sub_D9FDC(request, identifier);
}

- (void)cardPresentationTransitionDidComplete:(BOOL)complete
{
  selfCopy = self;
  sub_DCD58();
}

- (void)updateTopScrollEdgeEffectVisibilityWithViewController:(id)controller previousTraitCollection:(id)collection
{
  controllerCopy = controller;
  collectionCopy = collection;
  selfCopy = self;
  sub_DCF1C(controllerCopy);
}

- (void)handleTrigger:(id)trigger didChangeState:(unint64_t)state updateEvent:(unint64_t)event
{
  v8 = sub_2C58C8();
  v10 = v9;
  triggerCopy = trigger;
  selfCopy = self;
  v12._rawValue = &off_389F88;
  v17._countAndFlagsBits = v8;
  v17._object = v10;
  v13 = sub_2C63E8(v12, v17);

  if (!v13)
  {
    *&selfCopy->super.TUIFeedViewController_opaque[OBJC_IVAR____TtC11BookStoreUI29BSUIProductFeedViewController_scrolledPastLockupState] = state;
    traitCollection = [(BSUIProductFeedViewController *)selfCopy traitCollection];
    [(BSUIProductFeedViewController *)selfCopy updateTopScrollEdgeEffectVisibilityWithViewController:selfCopy previousTraitCollection:traitCollection];

    sub_DB8BC(1);
  }
}

- (void)messageViewController:(id)controller didSelectActionWithURL:(id)l
{
  v6 = sub_2BE3B8();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2BE398();
  controllerCopy = controller;
  selfCopy = self;
  BSUIProductFeedViewController.messageViewController(_:didSelectActionWith:)(controllerCopy);

  (*(v7 + 8))(v9, v6);
}

- (void)messageViewControllerDidSelectCancel:(id)cancel
{
  cancelCopy = cancel;
  selfCopy = self;
  BSUIProductFeedViewController.messageViewControllerDidSelectCancel(_:)(cancelCopy);
}

- (void)messageViewController:(id)controller didFailWithError:(id)error
{
  controllerCopy = controller;
  selfCopy = self;
  errorCopy = error;
  sub_DD048(error);
}

- (int64_t)adaptivePresentationStyleForPresentationController:(id)controller
{
  presentedViewController = [controller presentedViewController];
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

- (void)presentationControllerDidDismiss:(id)dismiss
{
  dismissCopy = dismiss;
  selfCopy = self;
  BSUIProductFeedViewController.presentationControllerDidDismiss(_:)(dismissCopy);
}

@end