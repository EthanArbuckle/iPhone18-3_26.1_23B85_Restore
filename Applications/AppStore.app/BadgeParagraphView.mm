@interface BadgeParagraphView
- (CGSize)sizeThatFits:(CGSize)fits;
- (_TtC8AppStore18BadgeParagraphView)initWithCoder:(id)coder;
- (void)layoutSubviews;
- (void)preferredContentSizeCategoryDidChange;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation BadgeParagraphView

- (_TtC8AppStore18BadgeParagraphView)initWithCoder:(id)coder
{
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  height = fits.height;
  width = fits.width;
  v5 = *(&self->super.super.super.isa + OBJC_IVAR____TtC8AppStore18BadgeParagraphView_paragraphLabel);
  selfCopy = self;
  [v5 sizeThatFits:{width, height}];
  v8 = v7;
  traitCollection = [(BadgeParagraphView *)selfCopy traitCollection];
  v10 = sub_1005224E0(v8, width);
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
  sub_100521D28();
}

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  selfCopy = self;
  sub_100521FE0(change);
}

- (void)preferredContentSizeCategoryDidChange
{
  selfCopy = self;
  sub_100522130();
}

@end