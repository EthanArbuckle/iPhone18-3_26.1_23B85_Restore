@interface MRUIBackgroundContentScene
- (void)handleTouchAction:(id)action;
@end

@implementation MRUIBackgroundContentScene

- (void)handleTouchAction:(id)action
{
  actionCopy = action;
  v4 = +[UIApplication sharedApplication];
  [v4 setIdleTimerDisabled:1];

  v5 = +[UIApplication sharedApplication];
  [v5 setIdleTimerDisabled:0];

  v10 = +[_TtC13MediaRemoteUI21LockScreenCoordinator shared];
  [actionCopy location];
  v7 = v6;
  v9 = v8;

  [v10 handleBackgroundTapAt:{v7, v9}];
}

@end