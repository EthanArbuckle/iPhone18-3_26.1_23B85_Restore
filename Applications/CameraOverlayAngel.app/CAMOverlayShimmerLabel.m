@interface CAMOverlayShimmerLabel
- (CGSize)intrinsicContentSize;
- (void)layoutSubviews;
- (void)setMaxShimmerOffset;
- (void)setMinShimmerOffset;
- (void)setOrientation:(int64_t)a3;
- (void)setShimmerOffset:(double)a3;
@end

@implementation CAMOverlayShimmerLabel

- (CGSize)intrinsicContentSize
{
  v2 = *(&self->super.super.super.isa + OBJC_IVAR___CAMOverlayShimmerLabel_label);
  v3 = self;
  [v2 intrinsicContentSize];
  v4 = [(CAMOverlayShimmerLabel *)v3 traitCollection];
  [v4 displayScale];

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
  v2 = self;
  sub_10001BDB8();
}

- (void)setOrientation:(int64_t)a3
{
  v4 = *(&self->super.super.super.isa + OBJC_IVAR___CAMOverlayShimmerLabel_orientation);
  *(&self->super.super.super.isa + OBJC_IVAR___CAMOverlayShimmerLabel_orientation) = a3;
  if (v4 != a3)
  {
    v5 = self;
    sub_10001BA54();
  }
}

- (void)setShimmerOffset:(double)a3
{
  *(&self->super.super.super.isa + OBJC_IVAR___CAMOverlayShimmerLabel_shimmerOffset) = a3;
  v3 = self;
  sub_10001BFF4();
}

- (void)setMinShimmerOffset
{
  *(&self->super.super.super.isa + OBJC_IVAR___CAMOverlayShimmerLabel_shimmerOffset) = *(&self->super.super.super.isa + OBJC_IVAR___CAMOverlayShimmerLabel_minOffset);
  v2 = self;
  sub_10001BFF4();
}

- (void)setMaxShimmerOffset
{
  *(&self->super.super.super.isa + OBJC_IVAR___CAMOverlayShimmerLabel_shimmerOffset) = 0x7FF0000000000000;
  v2 = self;
  sub_10001BFF4();
}

@end