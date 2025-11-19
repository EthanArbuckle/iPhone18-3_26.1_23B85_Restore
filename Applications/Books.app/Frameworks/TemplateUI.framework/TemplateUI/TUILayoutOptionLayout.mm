@interface TUILayoutOptionLayout
- ($E297CC25127479E857BE23A4F8632EA4)computeIntrinsicHeight;
- ($E297CC25127479E857BE23A4F8632EA4)computeIntrinsicWidth;
- (TUILayoutOptionLayout)initWithModel:(id)a3 parent:(id)a4 controller:(id)a5;
- (double)computedScale;
- (void)computeLayout;
- (void)setScale:(double)a3;
@end

@implementation TUILayoutOptionLayout

- (TUILayoutOptionLayout)initWithModel:(id)a3 parent:(id)a4 controller:(id)a5
{
  v6.receiver = self;
  v6.super_class = TUILayoutOptionLayout;
  result = [(TUILayout *)&v6 initWithModel:a3 parent:a4 controller:a5];
  if (result)
  {
    result->_scale = 1.0;
  }

  return result;
}

- (double)computedScale
{
  v5.receiver = self;
  v5.super_class = TUILayoutOptionLayout;
  [(TUILayout *)&v5 computedScale];
  return v3 * self->_scale;
}

- (void)setScale:(double)a3
{
  if (self->_scale != a3)
  {
    self->_scale = a3;
    [(TUILayout *)self onComputedScaleDidChange];
  }
}

- (void)computeLayout
{
  v3 = [(TUILayout *)self children];
  v4 = [v3 firstObject];

  [(TUILayout *)self containingWidth];
  [v4 setContainingWidth:?];
  [(TUILayout *)self containingHeight];
  [v4 setContainingHeight:?];
  [(TUILayout *)self flexedWidth];
  [v4 setFlexedWidth:?];
  [(TUILayout *)self flexedHeight];
  [v4 setFlexedHeight:?];
  [v4 validateLayout];
  [v4 setComputedOrigin:{CGPointZero.x, CGPointZero.y}];
  [v4 computedTransformedSize];
  [(TUILayout *)self setComputedNaturalSize:?];
}

- ($E297CC25127479E857BE23A4F8632EA4)computeIntrinsicWidth
{
  v3 = [(TUILayout *)self children];
  v4 = [v3 firstObject];

  v5 = [v4 validatedIntrinsicWidthConsideringSpecified];
  return v5;
}

- ($E297CC25127479E857BE23A4F8632EA4)computeIntrinsicHeight
{
  v3 = [(TUILayout *)self children];
  v4 = [v3 firstObject];

  v5 = [v4 validatedIntrinsicHeightConsideringSpecified];
  return v5;
}

@end