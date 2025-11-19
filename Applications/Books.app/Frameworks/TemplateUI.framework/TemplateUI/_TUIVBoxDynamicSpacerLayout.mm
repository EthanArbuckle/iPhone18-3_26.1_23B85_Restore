@interface _TUIVBoxDynamicSpacerLayout
- ($E297CC25127479E857BE23A4F8632EA4)computeIntrinsicHeight;
- ($E297CC25127479E857BE23A4F8632EA4)computeIntrinsicWidth;
- (_NSRange)range;
- (_TUIVBoxItemLayoutSummary)summary;
- (void)computeLayout;
- (void)setRange:(_NSRange)a3;
@end

@implementation _TUIVBoxDynamicSpacerLayout

- (void)computeLayout
{
  v5 = [(TUILayout *)self parent];
  [v5 summaryForRange:{self->_range.location, self->_range.length}];
  self->_summary.width = v3;
  self->_summary.height = v4;
  [(TUILayout *)self setComputedNaturalSize:?];
}

- (void)setRange:(_NSRange)a3
{
  if (a3.location != self->_range.location || a3.length != self->_range.length)
  {
    self->_range = a3;
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

- (_TUIVBoxItemLayoutSummary)summary
{
  width = self->_summary.width;
  height = self->_summary.height;
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