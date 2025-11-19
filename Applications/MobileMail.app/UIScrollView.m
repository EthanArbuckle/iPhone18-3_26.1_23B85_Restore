@interface UIScrollView
- (int)desiredScrollLength:(id)a3;
@end

@implementation UIScrollView

- (int)desiredScrollLength:(id)a3
{
  v4 = a3;
  v5 = [v4 mf_testName];
  if ([v5 mf_isScrollMessageListTest])
  {
    v6 = 80000.0;
  }

  else
  {
    v6 = [v4 mf_maxScrollLength];
  }

  [(UIScrollView *)self contentSize];
  v8 = v7;
  [(UIScrollView *)self bounds];
  v10 = v8 + v9;
  if (v6 < v8 + v9)
  {
    v10 = v6;
  }

  v11 = v10;

  return v11;
}

@end