@interface MSTouchTracker
- (void)checkForTouchWithCompletion:(id)a3;
- (void)touchReceived;
@end

@implementation MSTouchTracker

- (void)touchReceived
{
  v2 = self;
  TouchTracker.touchReceived()();
}

- (void)checkForTouchWithCompletion:(id)a3
{
  v4 = _Block_copy(a3);
  _Block_copy(v4);
  v5 = self;
  sub_2574C(v5, v4);
  _Block_release(v4);
  _Block_release(v4);
}

@end