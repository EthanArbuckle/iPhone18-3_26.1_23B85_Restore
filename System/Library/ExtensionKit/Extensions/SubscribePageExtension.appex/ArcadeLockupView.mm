@interface ArcadeLockupView
- (CGSize)sizeThatFits:(CGSize)fits;
- (NSString)accessibilityIdentifier;
- (_TtC22SubscribePageExtension16ArcadeLockupView)initWithCoder:(id)coder;
- (_TtC22SubscribePageExtension16ArcadeLockupView)initWithFrame:(CGRect)frame;
- (void)layoutSubviews;
- (void)offerButtonWasTapped;
- (void)setAccessibilityIdentifier:(id)identifier;
@end

@implementation ArcadeLockupView

- (_TtC22SubscribePageExtension16ArcadeLockupView)initWithFrame:(CGRect)frame
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

- (_TtC22SubscribePageExtension16ArcadeLockupView)initWithCoder:(id)coder
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

- (CGSize)sizeThatFits:(CGSize)fits
{
  selfCopy = self;
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
  selfCopy = self;
  sub_1004AF250();
}

- (void)offerButtonWasTapped
{
  v2 = *(&self->super.super.super.isa + OBJC_IVAR____TtC22SubscribePageExtension16ArcadeLockupView_offerButtonTapHandler);
  if (v2)
  {
    v3 = *(&self->super.super.super.isa + OBJC_IVAR____TtC22SubscribePageExtension16ArcadeLockupView_offerButton);
    selfCopy = self;
    sub_10001B5AC(v2);
    v2(v3);
    sub_1000164A8(v2);
  }
}

- (NSString)accessibilityIdentifier
{
  swift_getObjectType();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  selfCopy = self;
  v5 = NSStringFromClass(ObjCClassFromMetadata);
  v6 = sub_100753094();
  v8 = v7;

  sub_10041AA9C(v6, v8, 0, 0);

  v9 = sub_100753064();

  return v9;
}

- (void)setAccessibilityIdentifier:(id)identifier
{
  if (identifier)
  {
    sub_100753094();
    selfCopy = self;
    v5 = sub_100753064();
  }

  else
  {
    selfCopy2 = self;
    v5 = 0;
  }

  v7.receiver = self;
  v7.super_class = type metadata accessor for ArcadeLockupView();
  [(ArcadeLockupView *)&v7 setAccessibilityIdentifier:v5];
}

@end