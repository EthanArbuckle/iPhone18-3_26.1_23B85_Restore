@interface UIScrollView
- (id)_simulateScrollWithTranslation:(CGPoint)a3 numIterations:(int)a4 duration:(double)a5 reversed:(BOOL)a6;
@end

@implementation UIScrollView

- (id)_simulateScrollWithTranslation:(CGPoint)a3 numIterations:(int)a4 duration:(double)a5 reversed:(BOOL)a6
{
  if (a4 <= 0)
  {
    v16 = [NAFuture futureWithNoResult:a3.x];
  }

  else
  {
    v6 = a6;
    y = a3.y;
    x = a3.x;
    v12 = objc_opt_new();
    if (v6)
    {
      v13 = -x;
    }

    else
    {
      v13 = x;
    }

    if (v6)
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
    [(UIScrollView *)self _simulateScrollWithTranslation:&stru_1000C2F58 duration:v23 willBeginDragging:&stru_1000C2FA0 didEndDragging:v21 willBeginDecelerating:v13 didEndDecelerating:v14, a5];
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_100023040;
    v18[3] = &unk_1000C2FC8;
    v18[4] = self;
    *&v18[5] = x;
    *&v18[6] = y;
    v19 = a4;
    *&v18[7] = a5;
    v20 = v6;
    v16 = [v15 flatMap:v18];
  }

  return v16;
}

@end