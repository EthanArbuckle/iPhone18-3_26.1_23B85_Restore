@interface NotifyMeButton
- (CGSize)sizeThatFits:(CGSize)fits;
- (_TtC20ProductPageExtension14NotifyMeButton)initWithCoder:(id)coder;
- (_TtC20ProductPageExtension14NotifyMeButton)initWithFrame:(CGRect)frame;
- (void)_dynamicUserInterfaceTraitDidChange;
- (void)layoutSubviews;
@end

@implementation NotifyMeButton

- (_TtC20ProductPageExtension14NotifyMeButton)initWithCoder:(id)coder
{
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC20ProductPageExtension14NotifyMeButton_style) = 0;
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC20ProductPageExtension14NotifyMeButton_isActive) = 0;
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC20ProductPageExtension14NotifyMeButton_bellMicaPlayer) = 0;
  result = sub_10077156C();
  __break(1u);
  return result;
}

- (void)layoutSubviews
{
  selfCopy = self;
  sub_10050FCA4();
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  width = fits.width;
  selfCopy = self;
  sub_100510270(width);
  v6 = v5;
  v8 = v7;

  v9 = v6;
  v10 = v8;
  result.height = v10;
  result.width = v9;
  return result;
}

- (void)_dynamicUserInterfaceTraitDidChange
{
  v3.receiver = self;
  v3.super_class = swift_getObjectType();
  v2 = v3.receiver;
  [(NotifyMeButton *)&v3 _dynamicUserInterfaceTraitDidChange];
  sub_10050E5DC();
}

- (_TtC20ProductPageExtension14NotifyMeButton)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end