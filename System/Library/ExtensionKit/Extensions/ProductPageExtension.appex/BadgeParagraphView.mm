@interface BadgeParagraphView
- (CGSize)sizeThatFits:(CGSize)a3;
- (_TtC20ProductPageExtension18BadgeParagraphView)initWithCoder:(id)a3;
- (void)layoutSubviews;
- (void)preferredContentSizeCategoryDidChange;
- (void)traitCollectionDidChange:(id)a3;
@end

@implementation BadgeParagraphView

- (_TtC20ProductPageExtension18BadgeParagraphView)initWithCoder:(id)a3
{
  result = sub_10077156C();
  __break(1u);
  return result;
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v5 = *(&self->super.super.super.isa + OBJC_IVAR____TtC20ProductPageExtension18BadgeParagraphView_paragraphLabel);
  v6 = self;
  [v5 sizeThatFits:{width, height}];
  v8 = v7;
  v9 = [(BadgeParagraphView *)v6 traitCollection];
  v10 = sub_1000182D0(v8, width);
  v12 = v11;

  v13 = v10;
  v14 = v12;
  result.height = v14;
  result.width = v13;
  return result;
}

- (void)layoutSubviews
{
  v2 = self;
  sub_100017A04();
}

- (void)traitCollectionDidChange:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_100017CBC(a3);
}

- (void)preferredContentSizeCategoryDidChange
{
  v2 = self;
  sub_100017E0C();
}

@end