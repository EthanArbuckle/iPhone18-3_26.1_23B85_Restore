@interface EnhancedEmergencyPIPCoordinator
- (CGRect)pictureInPictureProxyViewFrameForTransitionAnimation:(id)a3;
- (id)pictureInPictureProxyViewControllerWindowForTransitionAnimation:(id)a3;
- (void)pictureInPictureProxy:(id)a3 willStopPictureInPictureWithAnimationType:(int64_t)a4 reason:(int64_t)a5;
@end

@implementation EnhancedEmergencyPIPCoordinator

- (void)pictureInPictureProxy:(id)a3 willStopPictureInPictureWithAnimationType:(int64_t)a4 reason:(int64_t)a5
{
  v7 = a3;
  v9 = self;
  sub_10017B05C(v9, v8, a5);
}

- (id)pictureInPictureProxyViewControllerWindowForTransitionAnimation:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = sub_10017B12C();

  return v6;
}

- (CGRect)pictureInPictureProxyViewFrameForTransitionAnimation:(id)a3
{
  v4 = a3;
  v5 = self;
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