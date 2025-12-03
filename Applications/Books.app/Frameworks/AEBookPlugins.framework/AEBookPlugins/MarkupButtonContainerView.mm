@interface MarkupButtonContainerView
- (CGSize)intrinsicContentSize;
- (CGSize)sizeThatFits:(CGSize)fits;
- (_TtC13AEBookPlugins25MarkupButtonContainerView)initWithCoder:(id)coder;
- (void)_traitCollectionDidChangeWithSender:(id)sender previousTraitCollection:(id)collection;
- (void)layoutSubviews;
- (void)updateForMiniBarState:(BOOL)state;
@end

@implementation MarkupButtonContainerView

- (_TtC13AEBookPlugins25MarkupButtonContainerView)initWithCoder:(id)coder
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtC13AEBookPlugins25MarkupButtonContainerView_regularButtonPadding) = 0x4010000000000000;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC13AEBookPlugins25MarkupButtonContainerView_compactButtonPadding) = 0x4008000000000000;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC13AEBookPlugins25MarkupButtonContainerView_intrinsicWidthPadding) = 0x4036000000000000;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC13AEBookPlugins25MarkupButtonContainerView_intrinsicHeight) = 0x4046000000000000;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC13AEBookPlugins25MarkupButtonContainerView_luminanceThreshold) = 0x3FE0000000000000;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC13AEBookPlugins25MarkupButtonContainerView_selected) = 0;
  result = sub_139C50();
  __break(1u);
  return result;
}

- (void)layoutSubviews
{
  selfCopy = self;
  sub_121B08();
}

- (void)_traitCollectionDidChangeWithSender:(id)sender previousTraitCollection:(id)collection
{
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_139B70();
  swift_unknownObjectRelease();
  sub_121CB4();

  sub_1223F0(&v6);
}

- (void)updateForMiniBarState:(BOOL)state
{
  selfCopy = self;
  [(MarkupButtonContainerView *)selfCopy setNeedsLayout];
  [(MarkupButtonContainerView *)selfCopy layoutIfNeeded];
}

- (CGSize)intrinsicContentSize
{
  [*(&self->super.super.super.isa + OBJC_IVAR____TtC13AEBookPlugins25MarkupButtonContainerView_button) intrinsicContentSize];
  v3 = v2 + 22.0;
  v4 = 44.0;
  result.height = v4;
  result.width = v3;
  return result;
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  [(MarkupButtonContainerView *)self intrinsicContentSize:fits.width];
  result.height = v4;
  result.width = v3;
  return result;
}

@end