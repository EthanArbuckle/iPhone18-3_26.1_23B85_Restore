@interface MRUIBackgroundContentScene
- (void)handleTouchAction:(id)a3;
@end

@implementation MRUIBackgroundContentScene

- (void)handleTouchAction:(id)a3
{
  v3 = a3;
  v4 = +[UIApplication sharedApplication];
  [v4 setIdleTimerDisabled:1];

  v5 = +[UIApplication sharedApplication];
  [v5 setIdleTimerDisabled:0];

  v10 = +[_TtC13MediaRemoteUI21LockScreenCoordinator shared];
  [v3 location];
  v7 = v6;
  v9 = v8;

  [v10 handleBackgroundTapAt:{v7, v9}];
}

@end