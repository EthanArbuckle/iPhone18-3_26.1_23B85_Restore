@interface QLSwipeDownTracker
- (CGAffineTransform)trackedTransform;
- (CGPoint)anchorPoint;
- (void)startTrackingCenter:(CGPoint)center bounds:(CGRect)bounds transform:(CGAffineTransform *)transform withInitialGestureLocation:(CGPoint)location;
@end

@implementation QLSwipeDownTracker

- (void)startTrackingCenter:(CGPoint)center bounds:(CGRect)bounds transform:(CGAffineTransform *)transform withInitialGestureLocation:(CGPoint)location
{
  self->_initialBounds = bounds;
  v8.receiver = self;
  v8.super_class = QLSwipeDownTracker;
  v6 = *&transform->c;
  v7[0] = *&transform->a;
  v7[1] = v6;
  v7[2] = *&transform->tx;
  [(QLPHSwipeDownTracker *)&v8 startTrackingCenter:v7 bounds:center.x transform:center.y withInitialGestureLocation:?];
}

- (CGPoint)anchorPoint
{
  v2 = 0.5;
  v3 = 0.5;
  result.y = v3;
  result.x = v2;
  return result;
}

- (CGAffineTransform)trackedTransform
{
  memset(&v10, 0, sizeof(v10));
  v9.receiver = self;
  v9.super_class = QLSwipeDownTracker;
  [(CGAffineTransform *)&v9 trackedTransform];
  [(QLPHSwipeDownTracker *)self trackedBounds];
  Width = CGRectGetWidth(v11);
  v6 = CGRectGetWidth(self->_initialBounds);
  v8 = v10;
  return CGAffineTransformScale(retstr, &v8, Width / v6, Width / v6);
}

@end