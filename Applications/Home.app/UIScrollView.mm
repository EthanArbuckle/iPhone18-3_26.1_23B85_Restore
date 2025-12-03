@interface UIScrollView
- (id)_simulateScrollWithTranslation:(CGPoint)translation numIterations:(int)iterations duration:(double)duration reversed:(BOOL)reversed;
@end

@implementation UIScrollView

- (id)_simulateScrollWithTranslation:(CGPoint)translation numIterations:(int)iterations duration:(double)duration reversed:(BOOL)reversed
{
  if (iterations <= 0)
  {
    v16 = [NAFuture futureWithNoResult:translation.x];
  }

  else
  {
    reversedCopy = reversed;
    y = translation.y;
    x = translation.x;
    v12 = objc_opt_new();
    if (reversedCopy)
    {
      v13 = -x;
    }

    else
    {
      v13 = x;
    }

    if (reversedCopy)
    {
      v14 = -y;
    }

    else
    {
      v14 = y;
    }

    v23[0] = _NSConcreteStackBlock;
    v23[1] = 3221225472;
    v23[2] = sub_100023024;
    v23[3] = &unk_1000C2F80;
    v24 = v12;
    v21[0] = _NSConcreteStackBlock;
    v21[1] = 3221225472;
    v21[2] = sub_100023038;
    v21[3] = &unk_1000C1CF0;
    v22 = v24;
    v15 = v24;
    [(UIScrollView *)self _simulateScrollWithTranslation:&stru_1000C2F58 duration:v23 willBeginDragging:&stru_1000C2FA0 didEndDragging:v21 willBeginDecelerating:v13 didEndDecelerating:v14, duration];
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_100023040;
    v18[3] = &unk_1000C2FC8;
    v18[4] = self;
    *&v18[5] = x;
    *&v18[6] = y;
    iterationsCopy = iterations;
    *&v18[7] = duration;
    v20 = reversedCopy;
    v16 = [v15 flatMap:v18];
  }

  return v16;
}

@end