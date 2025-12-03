@interface AVNewsWidgetPlayerLegacyBehavior
- (AVPlayerViewControllerContentTransitioning_NewsOnly)legacyDelegate;
- (id)playerForContentTransitionType:(int64_t)type;
- (void)didCancelContentTransition;
- (void)didCompleteContentTransition;
- (void)didUpdateContentTransitionProgress:(double)progress;
- (void)willBeginContentTransition;
- (void)willCancelContentTransition;
- (void)willCompleteContentTransition;
@end

@implementation AVNewsWidgetPlayerLegacyBehavior

- (AVPlayerViewControllerContentTransitioning_NewsOnly)legacyDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_legacyDelegate);

  return WeakRetained;
}

- (void)didCancelContentTransition
{
  legacyDelegate = [(AVNewsWidgetPlayerLegacyBehavior *)self legacyDelegate];
  behaviorContext = [(AVNewsWidgetPlayerBehavior *)self behaviorContext];
  playerViewController = [behaviorContext playerViewController];
  [legacyDelegate playerViewControllerDidCancelContentTransition:playerViewController];
}

- (void)willCancelContentTransition
{
  legacyDelegate = [(AVNewsWidgetPlayerLegacyBehavior *)self legacyDelegate];
  behaviorContext = [(AVNewsWidgetPlayerBehavior *)self behaviorContext];
  playerViewController = [behaviorContext playerViewController];
  [legacyDelegate playerViewControllerWillCancelContentTransition:playerViewController];
}

- (void)didCompleteContentTransition
{
  legacyDelegate = [(AVNewsWidgetPlayerLegacyBehavior *)self legacyDelegate];
  behaviorContext = [(AVNewsWidgetPlayerBehavior *)self behaviorContext];
  playerViewController = [behaviorContext playerViewController];
  [legacyDelegate playerViewControllerDidCompleteContentTransition:playerViewController];
}

- (void)willCompleteContentTransition
{
  legacyDelegate = [(AVNewsWidgetPlayerLegacyBehavior *)self legacyDelegate];
  behaviorContext = [(AVNewsWidgetPlayerBehavior *)self behaviorContext];
  playerViewController = [behaviorContext playerViewController];
  [legacyDelegate playerViewControllerWillCompleteContentTransition:playerViewController];
}

- (void)didUpdateContentTransitionProgress:(double)progress
{
  legacyDelegate = [(AVNewsWidgetPlayerLegacyBehavior *)self legacyDelegate];
  behaviorContext = [(AVNewsWidgetPlayerBehavior *)self behaviorContext];
  playerViewController = [behaviorContext playerViewController];
  [legacyDelegate playerViewController:playerViewController didUpdateContentTransitionProgress:progress];
}

- (void)willBeginContentTransition
{
  legacyDelegate = [(AVNewsWidgetPlayerLegacyBehavior *)self legacyDelegate];
  behaviorContext = [(AVNewsWidgetPlayerBehavior *)self behaviorContext];
  playerViewController = [behaviorContext playerViewController];
  [legacyDelegate playerViewControllerWillBeginContentTransition:playerViewController];
}

- (id)playerForContentTransitionType:(int64_t)type
{
  legacyDelegate = [(AVNewsWidgetPlayerLegacyBehavior *)self legacyDelegate];
  behaviorContext = [(AVNewsWidgetPlayerBehavior *)self behaviorContext];
  playerViewController = [behaviorContext playerViewController];
  v8 = [legacyDelegate playerViewController:playerViewController playerForContentTransitionType:type];

  return v8;
}

@end