@interface UIScrollView(PKAdditions)
- (double)_pk_closestContentOffsetFromOffset:()PKAdditions;
- (double)_pk_maximumContentOffset;
- (double)_pk_minimumContentOffset;
@end

@implementation UIScrollView(PKAdditions)

- (double)_pk_minimumContentOffset
{
  [a1 contentInset];
  v3 = -v2;
  [a1 contentInset];
  return v3;
}

- (double)_pk_maximumContentOffset
{
  [a1 contentSize];
  v3 = v2;
  [a1 bounds];
  v5 = v3 - v4;
  [a1 contentInset];
  v7 = v6 + v5;
  [a1 contentSize];
  [a1 bounds];
  [a1 contentInset];
  return v7;
}

- (double)_pk_closestContentOffsetFromOffset:()PKAdditions
{
  [a1 _pk_minimumContentOffset];
  if (a2 <= v6)
  {
    [a1 _pk_minimumContentOffset];
    if (a3 <= v7)
    {
      [a1 _pk_minimumContentOffset];
      return v10;
    }
  }

  [a1 _pk_maximumContentOffset];
  if (a2 >= v8)
  {
    [a1 _pk_maximumContentOffset];
    if (a3 >= v9)
    {
      [a1 _pk_maximumContentOffset];
      return v10;
    }
  }

  return a2;
}

@end