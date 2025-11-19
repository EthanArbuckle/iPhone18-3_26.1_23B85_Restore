@interface AVNewsWidgetPlayerLegacyBehavior
- (AVPlayerViewControllerContentTransitioning_NewsOnly)legacyDelegate;
- (id)playerForContentTransitionType:(int64_t)a3;
- (void)didCancelContentTransition;
- (void)didCompleteContentTransition;
- (void)didUpdateContentTransitionProgress:(double)a3;
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
  v5 = [(AVNewsWidgetPlayerLegacyBehavior *)self legacyDelegate];
  v3 = [(AVNewsWidgetPlayerBehavior *)self behaviorContext];
  v4 = [v3 playerViewController];
  [v5 playerViewControllerDidCancelContentTransition:v4];
}

- (void)willCancelContentTransition
{
  v5 = [(AVNewsWidgetPlayerLegacyBehavior *)self legacyDelegate];
  v3 = [(AVNewsWidgetPlayerBehavior *)self behaviorContext];
  v4 = [v3 playerViewController];
  [v5 playerViewControllerWillCancelContentTransition:v4];
}

- (void)didCompleteContentTransition
{
  v5 = [(AVNewsWidgetPlayerLegacyBehavior *)self legacyDelegate];
  v3 = [(AVNewsWidgetPlayerBehavior *)self behaviorContext];
  v4 = [v3 playerViewController];
  [v5 playerViewControllerDidCompleteContentTransition:v4];
}

- (void)willCompleteContentTransition
{
  v5 = [(AVNewsWidgetPlayerLegacyBehavior *)self legacyDelegate];
  v3 = [(AVNewsWidgetPlayerBehavior *)self behaviorContext];
  v4 = [v3 playerViewController];
  [v5 playerViewControllerWillCompleteContentTransition:v4];
}

- (void)didUpdateContentTransitionProgress:(double)a3
{
  v7 = [(AVNewsWidgetPlayerLegacyBehavior *)self legacyDelegate];
  v5 = [(AVNewsWidgetPlayerBehavior *)self behaviorContext];
  v6 = [v5 playerViewController];
  [v7 playerViewController:v6 didUpdateContentTransitionProgress:a3];
}

- (void)willBeginContentTransition
{
  v5 = [(AVNewsWidgetPlayerLegacyBehavior *)self legacyDelegate];
  v3 = [(AVNewsWidgetPlayerBehavior *)self behaviorContext];
  v4 = [v3 playerViewController];
  [v5 playerViewControllerWillBeginContentTransition:v4];
}

- (id)playerForContentTransitionType:(int64_t)a3
{
  v5 = [(AVNewsWidgetPlayerLegacyBehavior *)self legacyDelegate];
  v6 = [(AVNewsWidgetPlayerBehavior *)self behaviorContext];
  v7 = [v6 playerViewController];
  v8 = [v5 playerViewController:v7 playerForContentTransitionType:a3];

  return v8;
}

@end