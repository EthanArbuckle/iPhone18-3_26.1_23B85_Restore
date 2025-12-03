@interface UIScrollView(PKAdditions)
- (double)_pk_closestContentOffsetFromOffset:()PKAdditions;
- (double)_pk_maximumContentOffset;
- (double)_pk_minimumContentOffset;
@end

@implementation UIScrollView(PKAdditions)

- (double)_pk_minimumContentOffset
{
  [self contentInset];
  v3 = -v2;
  [self contentInset];
  return v3;
}

- (double)_pk_maximumContentOffset
{
  [self contentSize];
  v3 = v2;
  [self bounds];
  v5 = v3 - v4;
  [self contentInset];
  v7 = v6 + v5;
  [self contentSize];
  [self bounds];
  [self contentInset];
  return v7;
}

- (double)_pk_closestContentOffsetFromOffset:()PKAdditions
{
  [self _pk_minimumContentOffset];
  if (a2 <= v6)
  {
    [self _pk_minimumContentOffset];
    if (a3 <= v7)
    {
      [self _pk_minimumContentOffset];
      return v10;
    }
  }

  [self _pk_maximumContentOffset];
  if (a2 >= v8)
  {
    [self _pk_maximumContentOffset];
    if (a3 >= v9)
    {
      [self _pk_maximumContentOffset];
      return v10;
    }
  }

  return a2;
}

@end