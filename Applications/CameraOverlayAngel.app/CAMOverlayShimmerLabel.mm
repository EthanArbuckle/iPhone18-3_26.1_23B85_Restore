@interface CAMOverlayShimmerLabel
- (CGSize)intrinsicContentSize;
- (void)layoutSubviews;
- (void)setMaxShimmerOffset;
- (void)setMinShimmerOffset;
- (void)setOrientation:(int64_t)orientation;
- (void)setShimmerOffset:(double)offset;
@end

@implementation CAMOverlayShimmerLabel

- (CGSize)intrinsicContentSize
{
  v2 = *(&self->super.super.super.isa + OBJC_IVAR___CAMOverlayShimmerLabel_label);
  selfCopy = self;
  [v2 intrinsicContentSize];
  traitCollection = [(CAMOverlayShimmerLabel *)selfCopy traitCollection];
  [traitCollection displayScale];

  UISizeCeilToScale();
  v6 = v5;
  v8 = v7;

  v9 = v6;
  v10 = v8;
  result.height = v10;
  result.width = v9;
  return result;
}

- (void)layoutSubviews
{
  selfCopy = self;
  sub_10001BDB8();
}

- (void)setOrientation:(int64_t)orientation
{
  v4 = *(&self->super.super.super.isa + OBJC_IVAR___CAMOverlayShimmerLabel_orientation);
  *(&self->super.super.super.isa + OBJC_IVAR___CAMOverlayShimmerLabel_orientation) = orientation;
  if (v4 != orientation)
  {
    selfCopy = self;
    sub_10001BA54();
  }
}

- (void)setShimmerOffset:(double)offset
{
  *(&self->super.super.super.isa + OBJC_IVAR___CAMOverlayShimmerLabel_shimmerOffset) = offset;
  selfCopy = self;
  sub_10001BFF4();
}

- (void)setMinShimmerOffset
{
  *(&self->super.super.super.isa + OBJC_IVAR___CAMOverlayShimmerLabel_shimmerOffset) = *(&self->super.super.super.isa + OBJC_IVAR___CAMOverlayShimmerLabel_minOffset);
  selfCopy = self;
  sub_10001BFF4();
}

- (void)setMaxShimmerOffset
{
  *(&self->super.super.super.isa + OBJC_IVAR___CAMOverlayShimmerLabel_shimmerOffset) = 0x7FF0000000000000;
  selfCopy = self;
  sub_10001BFF4();
}

@end