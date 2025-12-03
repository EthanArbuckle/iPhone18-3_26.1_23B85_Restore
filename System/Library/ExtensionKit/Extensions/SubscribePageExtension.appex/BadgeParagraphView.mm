@interface BadgeParagraphView
- (CGSize)sizeThatFits:(CGSize)fits;
- (_TtC22SubscribePageExtension18BadgeParagraphView)initWithCoder:(id)coder;
- (void)layoutSubviews;
- (void)preferredContentSizeCategoryDidChange;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation BadgeParagraphView

- (_TtC22SubscribePageExtension18BadgeParagraphView)initWithCoder:(id)coder
{
  result = sub_100754644();
  __break(1u);
  return result;
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  height = fits.height;
  width = fits.width;
  v5 = *(&self->super.super.super.isa + OBJC_IVAR____TtC22SubscribePageExtension18BadgeParagraphView_paragraphLabel);
  selfCopy = self;
  [v5 sizeThatFits:{width, height}];
  v8 = v7;
  traitCollection = [(BadgeParagraphView *)selfCopy traitCollection];
  v10 = sub_100539784(v8, width);
  v12 = v11;

  v13 = v10;
  v14 = v12;
  result.height = v14;
  result.width = v13;
  return result;
}

- (void)layoutSubviews
{
  selfCopy = self;
  sub_100538EF0();
}

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  selfCopy = self;
  sub_1005391A8(change);
}

- (void)preferredContentSizeCategoryDidChange
{
  selfCopy = self;
  sub_1005392F8();
}

@end