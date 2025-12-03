@interface TUIPassthroughLayout
- ($E297CC25127479E857BE23A4F8632EA4)computeIntrinsicHeight;
- ($E297CC25127479E857BE23A4F8632EA4)computeIntrinsicWidth;
- ($E297CC25127479E857BE23A4F8632EA4)computedContentHeight;
- ($E297CC25127479E857BE23A4F8632EA4)computedContentWidth;
- (BOOL)groupedContainingIsGrouped;
- (UIEdgeInsets)groupedContainingInsets;
- (void)computeLayout;
@end

@implementation TUIPassthroughLayout

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
  grouped = [v2 grouped];

  return grouped;
}

- ($E297CC25127479E857BE23A4F8632EA4)computeIntrinsicWidth
{
  children = [(TUILayout *)self children];
  firstObject = [children firstObject];

  computeIntrinsicWidth = [firstObject computeIntrinsicWidth];
  return computeIntrinsicWidth;
}

- ($E297CC25127479E857BE23A4F8632EA4)computeIntrinsicHeight
{
  children = [(TUILayout *)self children];
  firstObject = [children firstObject];

  computeIntrinsicHeight = [firstObject computeIntrinsicHeight];
  return computeIntrinsicHeight;
}

- ($E297CC25127479E857BE23A4F8632EA4)computedContentWidth
{
  children = [(TUILayout *)self children];
  firstObject = [children firstObject];

  computedWidth = [firstObject computedWidth];
  return computedWidth;
}

- ($E297CC25127479E857BE23A4F8632EA4)computedContentHeight
{
  children = [(TUILayout *)self children];
  firstObject = [children firstObject];

  computedHeight = [firstObject computedHeight];
  return computedHeight;
}

- (void)computeLayout
{
  children = [(TUILayout *)self children];
  firstObject = [children firstObject];

  [(TUILayout *)self containingWidth];
  [firstObject setContainingWidth:?];
  [(TUILayout *)self containingHeight];
  [firstObject setContainingHeight:?];
  [(TUILayout *)self flexedWidth];
  [firstObject setFlexedWidth:?];
  [(TUILayout *)self flexedHeight];
  [firstObject setFlexedHeight:?];
  [firstObject validateLayout];
  [firstObject setComputedOrigin:{CGPointZero.x, CGPointZero.y}];
  [firstObject computedTransformedSize];
  [(TUILayout *)self setComputedNaturalSize:?];
}

@end