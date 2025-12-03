@interface DDEventAddViewController
- (void)doneWithAddingEvent;
- (void)prepareForAction:(id)action;
- (void)willTransitionToTraitCollection:(id)collection withTransitionCoordinator:(id)coordinator;
@end

@implementation DDEventAddViewController

- (void)prepareForAction:(id)action
{
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10000489C;
  v6[3] = &unk_100018968;
  actionCopy = action;
  v8 = objc_alloc_init(EKEventStore);
  selfCopy = self;
  v4 = v8;
  v5 = actionCopy;
  [v4 requestFullAccessToEventsWithCompletion:v6];
}

- (void)doneWithAddingEvent
{
  [(DDEventAddViewController *)self setCancellable:1];
  _remoteViewControllerProxy = [(DDEventAddViewController *)self _remoteViewControllerProxy];
  [_remoteViewControllerProxy actionDidFinishShouldDismiss:1];
}

- (void)willTransitionToTraitCollection:(id)collection withTransitionCoordinator:(id)coordinator
{
  collectionCopy = collection;
  coordinatorCopy = coordinator;
  v14.receiver = self;
  v14.super_class = DDEventAddViewController;
  [(DDEventAddViewController *)&v14 willTransitionToTraitCollection:collectionCopy withTransitionCoordinator:coordinatorCopy];
  verticalSizeClass = [collectionCopy verticalSizeClass];
  traitCollection = [(DDEventAddViewController *)self traitCollection];
  verticalSizeClass2 = [traitCollection verticalSizeClass];

  if (verticalSizeClass != verticalSizeClass2)
  {
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_100004D5C;
    v11[3] = &unk_100018990;
    v12 = collectionCopy;
    v13 = coordinatorCopy;
    [v13 animateAlongsideTransition:v11 completion:0];
  }
}

@end