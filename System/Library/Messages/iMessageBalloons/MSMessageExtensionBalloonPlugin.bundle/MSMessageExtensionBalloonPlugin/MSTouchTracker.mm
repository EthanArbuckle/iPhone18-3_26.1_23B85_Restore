@interface MSTouchTracker
- (void)checkForTouchWithCompletion:(id)completion;
- (void)touchReceived;
@end

@implementation MSTouchTracker

- (void)touchReceived
{
  selfCopy = self;
  TouchTracker.touchReceived()();
}

- (void)checkForTouchWithCompletion:(id)completion
{
  v4 = _Block_copy(completion);
  _Block_copy(v4);
  selfCopy = self;
  sub_2574C(selfCopy, v4);
  _Block_release(v4);
  _Block_release(v4);
}

@end