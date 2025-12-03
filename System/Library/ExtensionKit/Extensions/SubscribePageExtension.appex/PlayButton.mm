@interface PlayButton
- (CGSize)sizeThatFits:(CGSize)result;
- (_TtC22SubscribePageExtension10PlayButton)initWithFrame:(CGRect)frame;
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
  selfCopy = self;
  sub_100494E78();
}

- (void)didTap
{
  v2 = *(&self->super.super.super.super.isa + OBJC_IVAR____TtC22SubscribePageExtension10PlayButton_tapActionBlock);
  if (v2)
  {
    selfCopy = self;
    v4 = sub_10001B5AC(v2);
    v2(v4);

    sub_1000164A8(v2);
  }
}

- (_TtC22SubscribePageExtension10PlayButton)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end