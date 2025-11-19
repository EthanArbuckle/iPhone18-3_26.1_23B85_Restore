@interface ArcadeLockupView
- (CGSize)sizeThatFits:(CGSize)a3;
- (NSString)accessibilityIdentifier;
- (_TtC22SubscribePageExtension16ArcadeLockupView)initWithCoder:(id)a3;
- (_TtC22SubscribePageExtension16ArcadeLockupView)initWithFrame:(CGRect)a3;
- (void)layoutSubviews;
- (void)offerButtonWasTapped;
- (void)setAccessibilityIdentifier:(id)a3;
@end

@implementation ArcadeLockupView

- (_TtC22SubscribePageExtension16ArcadeLockupView)initWithFrame:(CGRect)a3
{
  v3 = (self + OBJC_IVAR____TtC22SubscribePageExtension16ArcadeLockupView_offerLabelPresenter);
  *v3 = 0u;
  v3[1] = 0u;
  v4 = (&self->super.super.super.isa + OBJC_IVAR____TtC22SubscribePageExtension16ArcadeLockupView_offerButtonTapHandler);
  *v4 = 0;
  v4[1] = 0;
  result = sub_100754644();
  __break(1u);
  return result;
}

- (_TtC22SubscribePageExtension16ArcadeLockupView)initWithCoder:(id)a3
{
  v3 = (self + OBJC_IVAR____TtC22SubscribePageExtension16ArcadeLockupView_offerLabelPresenter);
  *v3 = 0u;
  v3[1] = 0u;
  v4 = (&self->super.super.super.isa + OBJC_IVAR____TtC22SubscribePageExtension16ArcadeLockupView_offerButtonTapHandler);
  *v4 = 0;
  v4[1] = 0;
  result = sub_100754644();
  __break(1u);
  return result;
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  v3 = self;
  sub_1004AEF74();
  v5 = v4;
  v7 = v6;

  v8 = v5;
  v9 = v7;
  result.height = v9;
  result.width = v8;
  return result;
}

- (void)layoutSubviews
{
  v2 = self;
  sub_1004AF250();
}

- (void)offerButtonWasTapped
{
  v2 = *(&self->super.super.super.isa + OBJC_IVAR____TtC22SubscribePageExtension16ArcadeLockupView_offerButtonTapHandler);
  if (v2)
  {
    v3 = *(&self->super.super.super.isa + OBJC_IVAR____TtC22SubscribePageExtension16ArcadeLockupView_offerButton);
    v4 = self;
    sub_10001B5AC(v2);
    v2(v3);
    sub_1000164A8(v2);
  }
}

- (NSString)accessibilityIdentifier
{
  swift_getObjectType();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v4 = self;
  v5 = NSStringFromClass(ObjCClassFromMetadata);
  v6 = sub_100753094();
  v8 = v7;

  sub_10041AA9C(v6, v8, 0, 0);

  v9 = sub_100753064();

  return v9;
}

- (void)setAccessibilityIdentifier:(id)a3
{
  if (a3)
  {
    sub_100753094();
    v4 = self;
    v5 = sub_100753064();
  }

  else
  {
    v6 = self;
    v5 = 0;
  }

  v7.receiver = self;
  v7.super_class = type metadata accessor for ArcadeLockupView();
  [(ArcadeLockupView *)&v7 setAccessibilityIdentifier:v5];
}

@end