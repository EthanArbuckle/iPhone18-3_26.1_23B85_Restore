@interface OverlayLayer
- (_TtC16AutomationModeUI12OverlayLayer)initWithLayer:(id)a3;
- (void)dealloc;
- (void)layoutSublayers;
@end

@implementation OverlayLayer

- (_TtC16AutomationModeUI12OverlayLayer)initWithLayer:(id)a3
{
  swift_unknownObjectRetain();
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  return sub_100007444(v4);
}

- (void)dealloc
{
  v3 = *(&self->super.super.isa + OBJC_IVAR____TtC16AutomationModeUI12OverlayLayer_textGroupMoveTimer);
  v4 = self;
  if (v3)
  {
    [v3 invalidate];
  }

  v5.receiver = self;
  v5.super_class = type metadata accessor for OverlayLayer();
  [(OverlayLayer *)&v5 dealloc];
}

- (void)layoutSublayers
{
  v2 = self;
  sub_100008624();
}

@end