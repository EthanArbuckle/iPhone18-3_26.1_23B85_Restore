@interface FadingDescriptionLabel
- (CGSize)intrinsicContentSize;
- (void)layoutSubviews;
- (void)traitCollectionDidChange:(id)change;
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
  selfCopy = self;
  sub_23FDF0();
}

- (void)traitCollectionDidChange:(id)change
{
  v3 = *(&self->super.super.super.isa + OBJC_IVAR____TtC23ShelfKitCollectionViews22FadingDescriptionLabel_descriptionMask);
  selfCopy = self;
  traitCollection = [(FadingDescriptionLabel *)selfCopy traitCollection];
  v6 = sub_30C9D8();

  v7 = OBJC_IVAR____TtC23ShelfKitCollectionViews14CornerFadeView_alignment;
  swift_beginAccess();
  v3[v7] = (v6 & 1) == 0;
  [v3 setNeedsDisplay];
}

@end