@interface TUIRestrictedLayout
- ($E297CC25127479E857BE23A4F8632EA4)computeIntrinsicHeight;
- ($E297CC25127479E857BE23A4F8632EA4)computeIntrinsicWidth;
- ($E297CC25127479E857BE23A4F8632EA4)computedContentHeight;
- ($E297CC25127479E857BE23A4F8632EA4)computedContentWidth;
- (BOOL)groupedContainingIsGrouped;
- (UIEdgeInsets)groupedContainingInsets;
- (void)computeLayout;
@end

@implementation TUIRestrictedLayout

- (UIEdgeInsets)groupedContainingInsets
{
  top = UIEdgeInsetsZero.top;
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (BOOL)groupedContainingIsGrouped
{
  v2 = [(TUILayout *)self box];
  v3 = [v2 grouped];

  return v3;
}

- ($E297CC25127479E857BE23A4F8632EA4)computeIntrinsicWidth
{
  v3 = [(TUILayout *)self children];
  v4 = [v3 firstObject];

  v5 = [v4 computeIntrinsicWidth];
  return v5;
}

- ($E297CC25127479E857BE23A4F8632EA4)computeIntrinsicHeight
{
  v3 = [(TUILayout *)self children];
  v4 = [v3 firstObject];

  v5 = [v4 computeIntrinsicHeight];
  return v5;
}

- ($E297CC25127479E857BE23A4F8632EA4)computedContentWidth
{
  v3 = [(TUILayout *)self children];
  v4 = [v3 firstObject];

  v5 = [v4 computedWidth];
  return v5;
}

- ($E297CC25127479E857BE23A4F8632EA4)computedContentHeight
{
  v3 = [(TUILayout *)self children];
  v4 = [v3 firstObject];

  v5 = [v4 computedHeight];
  return v5;
}

- (void)computeLayout
{
  v3 = [(TUILayout *)self children];
  v4 = [v3 firstObject];

  [v4 setContainingWidth:NAN];
  [v4 setContainingHeight:NAN];
  [v4 setFlexedWidth:NAN];
  [v4 setFlexedHeight:NAN];
  [v4 validateLayout];
  [v4 setComputedOrigin:{CGPointZero.x, CGPointZero.y}];
  [v4 computedTransformedSize];
  [(TUILayout *)self setComputedNaturalSize:?];
}

@end