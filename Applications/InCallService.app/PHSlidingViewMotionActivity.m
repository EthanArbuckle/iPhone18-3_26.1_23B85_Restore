@interface PHSlidingViewMotionActivity
- (PHSlidingViewMotionActivity)initWithIsMounted:(BOOL)a3 probability:(double)a4;
@end

@implementation PHSlidingViewMotionActivity

- (PHSlidingViewMotionActivity)initWithIsMounted:(BOOL)a3 probability:(double)a4
{
  v7.receiver = self;
  v7.super_class = PHSlidingViewMotionActivity;
  result = [(PHSlidingViewMotionActivity *)&v7 init];
  if (result)
  {
    result->_isMounted = a3;
    result->_mountedProbability = a4;
  }

  return result;
}

@end