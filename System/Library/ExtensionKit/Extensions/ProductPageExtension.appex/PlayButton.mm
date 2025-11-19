@interface PlayButton
- (CGSize)sizeThatFits:(CGSize)result;
- (_TtC20ProductPageExtension10PlayButton)initWithFrame:(CGRect)a3;
- (void)didTap;
- (void)layoutSubviews;
@end

@implementation PlayButton

- (CGSize)sizeThatFits:(CGSize)result
{
  if (result.height < result.width)
  {
    result.width = result.height;
  }

  if (result.width > 60.0)
  {
    result.width = 60.0;
  }

  if (result.width <= 31.0)
  {
    result.width = 0.0;
  }

  width = result.width;
  result.height = width;
  return result;
}

- (void)layoutSubviews
{
  v2 = self;
  sub_1004BE564();
}

- (void)didTap
{
  v2 = *(&self->super.super.super.super.isa + OBJC_IVAR____TtC20ProductPageExtension10PlayButton_tapActionBlock);
  if (v2)
  {
    v3 = self;
    v4 = sub_10001CE50(v2);
    v2(v4);

    sub_1000167E0(v2);
  }
}

- (_TtC20ProductPageExtension10PlayButton)initWithFrame:(CGRect)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end