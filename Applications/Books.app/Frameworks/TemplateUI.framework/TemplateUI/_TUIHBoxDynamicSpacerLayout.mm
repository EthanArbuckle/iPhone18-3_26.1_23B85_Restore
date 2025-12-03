@interface _TUIHBoxDynamicSpacerLayout
- ($E297CC25127479E857BE23A4F8632EA4)computeIntrinsicHeight;
- ($E297CC25127479E857BE23A4F8632EA4)computeIntrinsicWidth;
- (_NSRange)range;
- (_TUIHBoxItemLayoutSummary)summary;
- (void)computeLayout;
- (void)onChildTransformedSizeDidChange:(id)change;
- (void)setRange:(_NSRange)range;
@end

@implementation _TUIHBoxDynamicSpacerLayout

- (void)onChildTransformedSizeDidChange:(id)change
{
  changeCopy = change;
  v5.receiver = self;
  v5.super_class = _TUIHBoxDynamicSpacerLayout;
  [(TUILayout *)&v5 onChildTransformedSizeDidChange:changeCopy];
  [(TUILayout *)self setFlexedWidth:NAN];
}

- (void)computeLayout
{
  parent = [(TUILayout *)self parent];
  [parent summaryForRange:{self->_range.location, self->_range.length}];
  self->_summary.width = v3;
  self->_summary.height = v4;
  self->_summary.heightAbovePivot = v5;
  [(TUILayout *)self setComputedNaturalSize:?];
}

- (void)setRange:(_NSRange)range
{
  if (range.location != self->_range.location || range.length != self->_range.length)
  {
    self->_range = range;
    [(TUILayout *)self invalidateLayout];

    [(TUILayout *)self invalidateIntrinsicSize];
  }
}

- ($E297CC25127479E857BE23A4F8632EA4)computeIntrinsicWidth
{
  [(TUILayout *)self validateLayout];
  width = self->_summary.width;
  if (width <= -3.40282347e38)
  {
    v7 = 4286578687;
  }

  else
  {
    if (width < 3.40282347e38)
    {
      *&v5 = width;
      return (v5 | 0x7FC0000000000000);
    }

    v7 = 2139095039;
  }

  return (v7 & 0xFFFFFFFFFFFFLL | 0x7FC0000000000000);
}

- ($E297CC25127479E857BE23A4F8632EA4)computeIntrinsicHeight
{
  [(TUILayout *)self validateLayout];
  height = self->_summary.height;
  if (height <= -3.40282347e38)
  {
    v7 = 4286578687;
  }

  else
  {
    if (height < 3.40282347e38)
    {
      *&v5 = height;
      return (v5 | 0x7FC0000000000000);
    }

    v7 = 2139095039;
  }

  return (v7 & 0xFFFFFFFFFFFFLL | 0x7FC0000000000000);
}

- (_TUIHBoxItemLayoutSummary)summary
{
  width = self->_summary.width;
  height = self->_summary.height;
  heightAbovePivot = self->_summary.heightAbovePivot;
  result.heightAbovePivot = heightAbovePivot;
  result.height = height;
  result.width = width;
  return result;
}

- (_NSRange)range
{
  p_range = &self->_range;
  location = self->_range.location;
  length = p_range->length;
  result.length = length;
  result.location = location;
  return result;
}

@end