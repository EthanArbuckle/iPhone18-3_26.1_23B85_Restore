@interface QLSwipeDownTracker
- (CGAffineTransform)trackedTransform;
- (CGPoint)anchorPoint;
- (void)startTrackingCenter:(CGPoint)a3 bounds:(CGRect)a4 transform:(CGAffineTransform *)a5 withInitialGestureLocation:(CGPoint)a6;
@end

@implementation QLSwipeDownTracker

- (void)startTrackingCenter:(CGPoint)a3 bounds:(CGRect)a4 transform:(CGAffineTransform *)a5 withInitialGestureLocation:(CGPoint)a6
{
  self->_initialBounds = a4;
  v8.receiver = self;
  v8.super_class = QLSwipeDownTracker;
  v6 = *&a5->c;
  v7[0] = *&a5->a;
  v7[1] = v6;
  v7[2] = *&a5->tx;
  [(QLPHSwipeDownTracker *)&v8 startTrackingCenter:v7 bounds:a3.x transform:a3.y withInitialGestureLocation:?];
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