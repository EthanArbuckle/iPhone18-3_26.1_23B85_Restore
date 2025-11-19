@interface DDEventAddViewController
- (void)doneWithAddingEvent;
- (void)prepareForAction:(id)a3;
- (void)willTransitionToTraitCollection:(id)a3 withTransitionCoordinator:(id)a4;
@end

@implementation DDEventAddViewController

- (void)prepareForAction:(id)a3
{
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10000489C;
  v6[3] = &unk_100018968;
  v7 = a3;
  v8 = objc_alloc_init(EKEventStore);
  v9 = self;
  v4 = v8;
  v5 = v7;
  [v4 requestFullAccessToEventsWithCompletion:v6];
}

- (void)doneWithAddingEvent
{
  [(DDEventAddViewController *)self setCancellable:1];
  v3 = [(DDEventAddViewController *)self _remoteViewControllerProxy];
  [v3 actionDidFinishShouldDismiss:1];
}

- (void)willTransitionToTraitCollection:(id)a3 withTransitionCoordinator:(id)a4
{
  v6 = a3;
  v7 = a4;
  v14.receiver = self;
  v14.super_class = DDEventAddViewController;
  [(DDEventAddViewController *)&v14 willTransitionToTraitCollection:v6 withTransitionCoordinator:v7];
  v8 = [v6 verticalSizeClass];
  v9 = [(DDEventAddViewController *)self traitCollection];
  v10 = [v9 verticalSizeClass];

  if (v8 != v10)
  {
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_100004D5C;
    v11[3] = &unk_100018990;
    v12 = v6;
    v13 = v7;
    [v13 animateAlongsideTransition:v11 completion:0];
  }
}

@end