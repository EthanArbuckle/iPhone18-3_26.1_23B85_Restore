@interface ClimateButton
- (BOOL)canBecomeFocused;
- (BOOL)isHighlighted;
- (NSUUID)id;
- (UIColor)backgroundColor;
- (_TtC7Climate13ClimateButton)initWithFrame:(CGRect)a3;
- (void)didMoveToSuperview;
- (void)didUpdateFocusInContext:(id)a3 withAnimationCoordinator:(id)a4;
- (void)drawRect:(CGRect)a3;
- (void)longPressGestureTriggered:(id)a3;
- (void)setHighlighted:(BOOL)a3;
- (void)touchUpInsideActionTriggered;
@end

@implementation ClimateButton

- (NSUUID)id
{
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v7, self + OBJC_IVAR____TtC7Climate13ClimateButton_id, v3, v5);
  v8.super.isa = UUID._bridgeToObjectiveC()().super.isa;
  (*(v4 + 8))(v7, v3);

  return v8.super.isa;
}

- (BOOL)canBecomeFocused
{
  v3 = OBJC_IVAR____TtC7Climate13ClimateButton_allowFocus;
  swift_beginAccess();
  return *(self + v3);
}

- (UIColor)backgroundColor
{
  v2 = [*(self + OBJC_IVAR____TtC7Climate13ClimateButton_backgroundView) backgroundColor];

  return v2;
}

- (BOOL)isHighlighted
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for ClimateButton();
  return [(ClimateButton *)&v3 isHighlighted];
}

- (void)setHighlighted:(BOOL)a3
{
  v4 = self;
  ClimateButton.isHighlighted.setter(a3);
}

- (void)drawRect:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8.receiver = self;
  v8.super_class = type metadata accessor for ClimateButton();
  v7 = v8.receiver;
  [(ClimateButton *)&v8 drawRect:x, y, width, height];
  ClimateButton.createEdgeInsets()();
}

- (void)touchUpInsideActionTriggered
{
  v2 = self;
  ClimateButton.touchUpInsideActionTriggered()();
}

- (void)didUpdateFocusInContext:(id)a3 withAnimationCoordinator:(id)a4
{
  v10.receiver = self;
  v10.super_class = type metadata accessor for ClimateButton();
  v6 = a3;
  v7 = a4;
  v8 = v10.receiver;
  v9 = [(ClimateButton *)&v10 didUpdateFocusInContext:v6 withAnimationCoordinator:v7];
  (*((swift_isaMask & *v8) + 0x208))(v9);
}

- (void)longPressGestureTriggered:(id)a3
{
  v4 = a3;
  v5 = self;
  ClimateButton.longPressGestureTriggered(_:)(v4);
}

- (void)didMoveToSuperview
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for ClimateButton();
  v2 = v3.receiver;
  [(ClimateButton *)&v3 didMoveToSuperview];
  sub_1000946A8();
}

- (_TtC7Climate13ClimateButton)initWithFrame:(CGRect)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end