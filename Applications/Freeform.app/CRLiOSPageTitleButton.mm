@interface CRLiOSPageTitleButton
- (BOOL)pointInside:(CGPoint)a3 withEvent:(id)a4;
- (UIEdgeInsets)hitTestingInsets;
- (UIEdgeInsets)insets;
- (_TtC8Freeform21CRLiOSPageTitleButton)initWithFrame:(CGRect)a3;
- (_TtC8Freeform21CRLiOSPageTitleButton)initWithTitle:(id)a3 insets:(UIEdgeInsets)a4;
- (void)dealloc;
- (void)setAttributedTitle:(id)a3 forState:(unint64_t)a4;
- (void)updateConfiguration;
@end

@implementation CRLiOSPageTitleButton

- (UIEdgeInsets)insets
{
  v2 = sub_100F796E0(self, a2, &OBJC_IVAR____TtC8Freeform21CRLiOSPageTitleButton_insets);
  result.right = v5;
  result.bottom = v4;
  result.left = v3;
  result.top = v2;
  return result;
}

- (UIEdgeInsets)hitTestingInsets
{
  v2 = sub_100F796E0(self, a2, &OBJC_IVAR____TtC8Freeform21CRLiOSPageTitleButton_hitTestingInsets);
  result.right = v5;
  result.bottom = v4;
  result.left = v3;
  result.top = v2;
  return result;
}

- (_TtC8Freeform21CRLiOSPageTitleButton)initWithTitle:(id)a3 insets:(UIEdgeInsets)a4
{
  right = a4.right;
  bottom = a4.bottom;
  left = a4.left;
  top = a4.top;
  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  return CRLiOSPageTitleButton.init(title:insets:)(v8, v9, top, left, bottom, right);
}

- (void)dealloc
{
  v3 = objc_opt_self();
  v4 = self;
  v5 = [v3 sharedHelper];
  [v5 stopHandlingTouchUpDownAnimationsForControl:v4];

  v6.receiver = v4;
  v6.super_class = type metadata accessor for CRLiOSPageTitleButton();
  [(CRLiOSPageTitleButton *)&v6 dealloc];
}

- (void)setAttributedTitle:(id)a3 forState:(unint64_t)a4
{
  v7 = self;
  if (a3)
  {
    v6 = [a3 string];
    if (!v6)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v6 = String._bridgeToObjectiveC()();
    }
  }

  else
  {
    v6 = 0;
  }

  [(CRLiOSPageTitleButton *)v7 setTitle:v6 forState:a4];
}

- (void)updateConfiguration
{
  v2 = self;
  CRLiOSPageTitleButton.updateConfiguration()();
}

- (BOOL)pointInside:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  v7 = a4;
  v8 = self;
  if ([(CRLiOSPageTitleButton *)v8 isEnabled]&& ([(CRLiOSPageTitleButton *)v8 isHidden]& 1) == 0)
  {
    [(CRLiOSPageTitleButton *)v8 bounds];
    v11 = v10;
    v13 = v12;
    v15 = v14;
    v17 = v16;
    v18 = (v8 + OBJC_IVAR____TtC8Freeform21CRLiOSPageTitleButton_hitTestingInsets);
    swift_beginAccess();
    v23.origin.x = sub_100BDDE50(v11, v13, v15, v17, *v18, v18[1]);
    v22.x = x;
    v22.y = y;
    v9 = CGRectContainsPoint(v23, v22);
  }

  else
  {
    v21.receiver = v8;
    v21.super_class = type metadata accessor for CRLiOSPageTitleButton();
    v9 = [(CRLiOSPageTitleButton *)&v21 pointInside:v7 withEvent:x, y];
  }

  v19 = v9;

  return v19;
}

- (_TtC8Freeform21CRLiOSPageTitleButton)initWithFrame:(CGRect)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end