@interface EnhancedEmergencyPIPCoordinator
- (CGRect)pictureInPictureProxyViewFrameForTransitionAnimation:(id)animation;
- (id)pictureInPictureProxyViewControllerWindowForTransitionAnimation:(id)animation;
- (void)pictureInPictureProxy:(id)proxy willStopPictureInPictureWithAnimationType:(int64_t)type reason:(int64_t)reason;
@end

@implementation EnhancedEmergencyPIPCoordinator

- (void)pictureInPictureProxy:(id)proxy willStopPictureInPictureWithAnimationType:(int64_t)type reason:(int64_t)reason
{
  proxyCopy = proxy;
  selfCopy = self;
  sub_10017B05C(selfCopy, v8, reason);
}

- (id)pictureInPictureProxyViewControllerWindowForTransitionAnimation:(id)animation
{
  animationCopy = animation;
  selfCopy = self;
  v6 = sub_10017B12C();

  return v6;
}

- (CGRect)pictureInPictureProxyViewFrameForTransitionAnimation:(id)animation
{
  animationCopy = animation;
  selfCopy = self;
  v6 = sub_10017B438();
  v8 = v7;
  v10 = v9;
  v12 = v11;

  v13 = v6;
  v14 = v8;
  v15 = v10;
  v16 = v12;
  result.size.height = v16;
  result.size.width = v15;
  result.origin.y = v14;
  result.origin.x = v13;
  return result;
}

@end