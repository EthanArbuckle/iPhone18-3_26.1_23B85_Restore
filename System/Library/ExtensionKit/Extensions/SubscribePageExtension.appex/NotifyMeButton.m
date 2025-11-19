@interface NotifyMeButton
- (CGSize)sizeThatFits:(CGSize)a3;
- (_TtC22SubscribePageExtension14NotifyMeButton)initWithCoder:(id)a3;
- (_TtC22SubscribePageExtension14NotifyMeButton)initWithFrame:(CGRect)a3;
- (void)_dynamicUserInterfaceTraitDidChange;
- (void)layoutSubviews;
@end

@implementation NotifyMeButton

- (_TtC22SubscribePageExtension14NotifyMeButton)initWithCoder:(id)a3
{
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC22SubscribePageExtension14NotifyMeButton_style) = 0;
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC22SubscribePageExtension14NotifyMeButton_isActive) = 0;
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC22SubscribePageExtension14NotifyMeButton_bellMicaPlayer) = 0;
  result = sub_100754644();
  __break(1u);
  return result;
}

- (void)layoutSubviews
{
  v2 = self;
  sub_1006E2178();
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  width = a3.width;
  v4 = self;
  sub_1006E2744(width);
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
  sub_1006E0AB0();
}

- (_TtC22SubscribePageExtension14NotifyMeButton)initWithFrame:(CGRect)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end