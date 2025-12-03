@interface UIScrollView(MFUtilities)
- (double)mf_maxContentOffset;
- (double)mf_minContentOffset;
- (double)mf_visibleBounds;
- (double)mf_visibleFrame;
- (double)mf_visibleHeight;
@end

@implementation UIScrollView(MFUtilities)

- (double)mf_visibleFrame
{
  [self frame];
  v3 = v2;
  [self contentInset];
  return v3 + v4;
}

- (double)mf_visibleBounds
{
  [self bounds];
  v3 = v2;
  [self contentInset];
  return v3 + v4;
}

- (double)mf_visibleHeight
{
  [self mf_visibleFrame];

  return CGRectGetHeight(*&v1);
}

- (double)mf_minContentOffset
{
  [self contentInset];
  v3 = -v2;
  [self contentInset];
  return v3;
}

- (double)mf_maxContentOffset
{
  [self contentSize];
  v3 = v2;
  [self bounds];
  v4 = v3 - CGRectGetWidth(v8);
  [self contentInset];
  v6 = v4 + v5;
  [self contentSize];
  [self bounds];
  CGRectGetHeight(v9);
  [self contentInset];
  return v6;
}

@end