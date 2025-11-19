@interface ArcadeLockupView
- (CGSize)sizeThatFits:(CGSize)a3;
- (NSString)accessibilityIdentifier;
- (_TtC18ASMessagesProvider16ArcadeLockupView)initWithCoder:(id)a3;
- (_TtC18ASMessagesProvider16ArcadeLockupView)initWithFrame:(CGRect)a3;
- (void)layoutSubviews;
- (void)offerButtonWasTapped;
- (void)setAccessibilityIdentifier:(id)a3;
@end

@implementation ArcadeLockupView

- (_TtC18ASMessagesProvider16ArcadeLockupView)initWithFrame:(CGRect)a3
{
  v3 = (self + OBJC_IVAR____TtC18ASMessagesProvider16ArcadeLockupView_offerLabelPresenter);
  *v3 = 0u;
  v3[1] = 0u;
  v4 = (&self->super.super.super.isa + OBJC_IVAR____TtC18ASMessagesProvider16ArcadeLockupView_offerButtonTapHandler);
  *v4 = 0;
  v4[1] = 0;
  result = sub_76A840();
  __break(1u);
  return result;
}

- (_TtC18ASMessagesProvider16ArcadeLockupView)initWithCoder:(id)a3
{
  v3 = (self + OBJC_IVAR____TtC18ASMessagesProvider16ArcadeLockupView_offerLabelPresenter);
  *v3 = 0u;
  v3[1] = 0u;
  v4 = (&self->super.super.super.isa + OBJC_IVAR____TtC18ASMessagesProvider16ArcadeLockupView_offerButtonTapHandler);
  *v4 = 0;
  v4[1] = 0;
  result = sub_76A840();
  __break(1u);
  return result;
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  v3 = self;
  sub_5C184();
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
  sub_5C460();
}

- (void)offerButtonWasTapped
{
  v2 = *(&self->super.super.super.isa + OBJC_IVAR____TtC18ASMessagesProvider16ArcadeLockupView_offerButtonTapHandler);
  if (v2)
  {
    v3 = *(&self->super.super.super.isa + OBJC_IVAR____TtC18ASMessagesProvider16ArcadeLockupView_offerButton);
    v4 = self;
    sub_F714(v2);
    v2(v3);
    sub_F704(v2);
  }
}

- (NSString)accessibilityIdentifier
{
  swift_getObjectType();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v4 = self;
  v5 = NSStringFromClass(ObjCClassFromMetadata);
  v6 = sub_769240();
  v8 = v7;

  sub_D271C(v6, v8, 0, 0);

  v9 = sub_769210();

  return v9;
}

- (void)setAccessibilityIdentifier:(id)a3
{
  if (a3)
  {
    sub_769240();
    v4 = self;
    v5 = sub_769210();
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