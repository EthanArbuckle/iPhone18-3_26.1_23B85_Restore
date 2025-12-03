@interface NotifyMeButton
- (CGSize)sizeThatFits:(CGSize)fits;
- (_TtC8AppStore14NotifyMeButton)initWithCoder:(id)coder;
- (_TtC8AppStore14NotifyMeButton)initWithFrame:(CGRect)frame;
- (void)_dynamicUserInterfaceTraitDidChange;
- (void)layoutSubviews;
@end

@implementation NotifyMeButton

- (_TtC8AppStore14NotifyMeButton)initWithCoder:(id)coder
{
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC8AppStore14NotifyMeButton_style) = 0;
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC8AppStore14NotifyMeButton_isActive) = 0;
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC8AppStore14NotifyMeButton_bellMicaPlayer) = 0;
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (void)layoutSubviews
{
  selfCopy = self;
  sub_1004AD3B8();
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  width = fits.width;
  selfCopy = self;
  sub_1004AD984(width);
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
  sub_1004ABCF0();
}

- (_TtC8AppStore14NotifyMeButton)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end