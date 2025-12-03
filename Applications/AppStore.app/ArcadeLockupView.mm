@interface ArcadeLockupView
- (CGSize)sizeThatFits:(CGSize)fits;
- (NSString)accessibilityIdentifier;
- (_TtC8AppStore16ArcadeLockupView)initWithCoder:(id)coder;
- (_TtC8AppStore16ArcadeLockupView)initWithFrame:(CGRect)frame;
- (void)layoutSubviews;
- (void)offerButtonWasTapped;
- (void)setAccessibilityIdentifier:(id)identifier;
@end

@implementation ArcadeLockupView

- (_TtC8AppStore16ArcadeLockupView)initWithFrame:(CGRect)frame
{
  v3 = (self + OBJC_IVAR____TtC8AppStore16ArcadeLockupView_offerLabelPresenter);
  *v3 = 0u;
  v3[1] = 0u;
  v4 = (&self->super.super.super.isa + OBJC_IVAR____TtC8AppStore16ArcadeLockupView_offerButtonTapHandler);
  *v4 = 0;
  v4[1] = 0;
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (_TtC8AppStore16ArcadeLockupView)initWithCoder:(id)coder
{
  v3 = (self + OBJC_IVAR____TtC8AppStore16ArcadeLockupView_offerLabelPresenter);
  *v3 = 0u;
  v3[1] = 0u;
  v4 = (&self->super.super.super.isa + OBJC_IVAR____TtC8AppStore16ArcadeLockupView_offerButtonTapHandler);
  *v4 = 0;
  v4[1] = 0;
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  selfCopy = self;
  sub_1001C76D8();
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
  sub_1001C79B4();
}

- (void)offerButtonWasTapped
{
  v2 = *(&self->super.super.super.isa + OBJC_IVAR____TtC8AppStore16ArcadeLockupView_offerButtonTapHandler);
  if (v2)
  {
    v3 = *(&self->super.super.super.isa + OBJC_IVAR____TtC8AppStore16ArcadeLockupView_offerButton);
    selfCopy = self;
    sub_10000827C(v2);
    v2(v3);
    sub_10001F63C(v2);
  }
}

- (NSString)accessibilityIdentifier
{
  swift_getObjectType();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  selfCopy = self;
  v5 = NSStringFromClass(ObjCClassFromMetadata);
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;

  sub_10075288C(v6, v8, 0, 0);

  v9 = String._bridgeToObjectiveC()();

  return v9;
}

- (void)setAccessibilityIdentifier:(id)identifier
{
  if (identifier)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    selfCopy = self;
    v5 = String._bridgeToObjectiveC()();
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