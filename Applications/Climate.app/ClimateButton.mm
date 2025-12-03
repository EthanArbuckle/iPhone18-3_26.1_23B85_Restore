@interface ClimateButton
- (BOOL)canBecomeFocused;
- (BOOL)isHighlighted;
- (NSUUID)id;
- (UIColor)backgroundColor;
- (_TtC7Climate13ClimateButton)initWithFrame:(CGRect)frame;
- (void)didMoveToSuperview;
- (void)didUpdateFocusInContext:(id)context withAnimationCoordinator:(id)coordinator;
- (void)drawRect:(CGRect)rect;
- (void)longPressGestureTriggered:(id)triggered;
- (void)setHighlighted:(BOOL)highlighted;
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
  backgroundColor = [*(self + OBJC_IVAR____TtC7Climate13ClimateButton_backgroundView) backgroundColor];

  return backgroundColor;
}

- (BOOL)isHighlighted
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for ClimateButton();
  return [(ClimateButton *)&v3 isHighlighted];
}

- (void)setHighlighted:(BOOL)highlighted
{
  selfCopy = self;
  ClimateButton.isHighlighted.setter(highlighted);
}

- (void)drawRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v8.receiver = self;
  v8.super_class = type metadata accessor for ClimateButton();
  v7 = v8.receiver;
  [(ClimateButton *)&v8 drawRect:x, y, width, height];
  ClimateButton.createEdgeInsets()();
}

- (void)touchUpInsideActionTriggered
{
  selfCopy = self;
  ClimateButton.touchUpInsideActionTriggered()();
}

- (void)didUpdateFocusInContext:(id)context withAnimationCoordinator:(id)coordinator
{
  v10.receiver = self;
  v10.super_class = type metadata accessor for ClimateButton();
  contextCopy = context;
  coordinatorCopy = coordinator;
  v8 = v10.receiver;
  v9 = [(ClimateButton *)&v10 didUpdateFocusInContext:contextCopy withAnimationCoordinator:coordinatorCopy];
  (*((swift_isaMask & *v8) + 0x208))(v9);
}

- (void)longPressGestureTriggered:(id)triggered
{
  triggeredCopy = triggered;
  selfCopy = self;
  ClimateButton.longPressGestureTriggered(_:)(triggeredCopy);
}

- (void)didMoveToSuperview
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for ClimateButton();
  v2 = v3.receiver;
  [(ClimateButton *)&v3 didMoveToSuperview];
  sub_1000946A8();
}

- (_TtC7Climate13ClimateButton)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end