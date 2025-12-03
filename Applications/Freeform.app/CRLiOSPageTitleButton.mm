@interface CRLiOSPageTitleButton
- (BOOL)pointInside:(CGPoint)inside withEvent:(id)event;
- (UIEdgeInsets)hitTestingInsets;
- (UIEdgeInsets)insets;
- (_TtC8Freeform21CRLiOSPageTitleButton)initWithFrame:(CGRect)frame;
- (_TtC8Freeform21CRLiOSPageTitleButton)initWithTitle:(id)title insets:(UIEdgeInsets)insets;
- (void)dealloc;
- (void)setAttributedTitle:(id)title forState:(unint64_t)state;
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

- (_TtC8Freeform21CRLiOSPageTitleButton)initWithTitle:(id)title insets:(UIEdgeInsets)insets
{
  right = insets.right;
  bottom = insets.bottom;
  left = insets.left;
  top = insets.top;
  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  return CRLiOSPageTitleButton.init(title:insets:)(v8, v9, top, left, bottom, right);
}

- (void)dealloc
{
  v3 = objc_opt_self();
  selfCopy = self;
  sharedHelper = [v3 sharedHelper];
  [sharedHelper stopHandlingTouchUpDownAnimationsForControl:selfCopy];

  v6.receiver = selfCopy;
  v6.super_class = type metadata accessor for CRLiOSPageTitleButton();
  [(CRLiOSPageTitleButton *)&v6 dealloc];
}

- (void)setAttributedTitle:(id)title forState:(unint64_t)state
{
  selfCopy = self;
  if (title)
  {
    string = [title string];
    if (!string)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      string = String._bridgeToObjectiveC()();
    }
  }

  else
  {
    string = 0;
  }

  [(CRLiOSPageTitleButton *)selfCopy setTitle:string forState:state];
}

- (void)updateConfiguration
{
  selfCopy = self;
  CRLiOSPageTitleButton.updateConfiguration()();
}

- (BOOL)pointInside:(CGPoint)inside withEvent:(id)event
{
  y = inside.y;
  x = inside.x;
  eventCopy = event;
  selfCopy = self;
  if ([(CRLiOSPageTitleButton *)selfCopy isEnabled]&& ([(CRLiOSPageTitleButton *)selfCopy isHidden]& 1) == 0)
  {
    [(CRLiOSPageTitleButton *)selfCopy bounds];
    v11 = v10;
    v13 = v12;
    v15 = v14;
    v17 = v16;
    v18 = (selfCopy + OBJC_IVAR____TtC8Freeform21CRLiOSPageTitleButton_hitTestingInsets);
    swift_beginAccess();
    v23.origin.x = sub_100BDDE50(v11, v13, v15, v17, *v18, v18[1]);
    v22.x = x;
    v22.y = y;
    v9 = CGRectContainsPoint(v23, v22);
  }

  else
  {
    v21.receiver = selfCopy;
    v21.super_class = type metadata accessor for CRLiOSPageTitleButton();
    v9 = [(CRLiOSPageTitleButton *)&v21 pointInside:eventCopy withEvent:x, y];
  }

  v19 = v9;

  return v19;
}

- (_TtC8Freeform21CRLiOSPageTitleButton)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end