@interface FadingDescriptionLabel
- (CGSize)intrinsicContentSize;
- (void)layoutSubviews;
- (void)traitCollectionDidChange:(id)a3;
@end

@implementation FadingDescriptionLabel

- (CGSize)intrinsicContentSize
{
  [*(&self->super.super.super.isa + OBJC_IVAR____TtC23ShelfKitCollectionViews22FadingDescriptionLabel_descriptionLabel) intrinsicContentSize];
  result.height = v3;
  result.width = v2;
  return result;
}

- (void)layoutSubviews
{
  v2 = self;
  sub_23FDF0();
}

- (void)traitCollectionDidChange:(id)a3
{
  v3 = *(&self->super.super.super.isa + OBJC_IVAR____TtC23ShelfKitCollectionViews22FadingDescriptionLabel_descriptionMask);
  v4 = self;
  v5 = [(FadingDescriptionLabel *)v4 traitCollection];
  v6 = sub_30C9D8();

  v7 = OBJC_IVAR____TtC23ShelfKitCollectionViews14CornerFadeView_alignment;
  swift_beginAccess();
  v3[v7] = (v6 & 1) == 0;
  [v3 setNeedsDisplay];
}

@end