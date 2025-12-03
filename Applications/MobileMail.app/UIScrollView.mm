@interface UIScrollView
- (int)desiredScrollLength:(id)length;
@end

@implementation UIScrollView

- (int)desiredScrollLength:(id)length
{
  lengthCopy = length;
  mf_testName = [lengthCopy mf_testName];
  if ([mf_testName mf_isScrollMessageListTest])
  {
    mf_maxScrollLength = 80000.0;
  }

  else
  {
    mf_maxScrollLength = [lengthCopy mf_maxScrollLength];
  }

  [(UIScrollView *)self contentSize];
  v8 = v7;
  [(UIScrollView *)self bounds];
  v10 = v8 + v9;
  if (mf_maxScrollLength < v8 + v9)
  {
    v10 = mf_maxScrollLength;
  }

  v11 = v10;

  return v11;
}

@end