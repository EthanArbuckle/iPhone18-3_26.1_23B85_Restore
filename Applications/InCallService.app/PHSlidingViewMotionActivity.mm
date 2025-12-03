@interface PHSlidingViewMotionActivity
- (PHSlidingViewMotionActivity)initWithIsMounted:(BOOL)mounted probability:(double)probability;
@end

@implementation PHSlidingViewMotionActivity

- (PHSlidingViewMotionActivity)initWithIsMounted:(BOOL)mounted probability:(double)probability
{
  v7.receiver = self;
  v7.super_class = PHSlidingViewMotionActivity;
  result = [(PHSlidingViewMotionActivity *)&v7 init];
  if (result)
  {
    result->_isMounted = mounted;
    result->_mountedProbability = probability;
  }

  return result;
}

@end