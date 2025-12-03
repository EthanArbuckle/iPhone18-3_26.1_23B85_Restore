@interface CanvasElementResizeHandle
- (BOOL)scribbleInteraction:(id)interaction shouldBeginAtLocation:(CGPoint)location;
- (_TtC8PaperKit25CanvasElementResizeHandle)initWithCoder:(id)coder;
- (_TtC8PaperKit25CanvasElementResizeHandle)initWithFrame:(CGRect)frame;
- (id)pointerInteraction:(id)interaction styleForRegion:(id)region;
- (void)didMoveToWindow;
@end

@implementation CanvasElementResizeHandle

- (void)didMoveToWindow
{
  selfCopy = self;
  CanvasElementResizeHandle.didMoveToWindow()();
}

- (_TtC8PaperKit25CanvasElementResizeHandle)initWithCoder:(id)coder
{
  v3 = self + OBJC_IVAR____TtC8PaperKit25CanvasElementResizeHandle_resizeViewCenter;
  *v3 = 0;
  *(v3 + 1) = 0;
  v3[16] = 1;
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (id)pointerInteraction:(id)interaction styleForRegion:(id)region
{
  interactionCopy = interaction;
  regionCopy = region;
  selfCopy = self;
  v9 = specialized CanvasElementResizeHandle.pointerInteraction(_:styleFor:)(interactionCopy);

  return v9;
}

- (BOOL)scribbleInteraction:(id)interaction shouldBeginAtLocation:(CGPoint)location
{
  y = location.y;
  x = location.x;
  selfCopy = self;
  CanvasElementResizeHandle.hitHandle(_:with:)(0, x, y);
  v8 = v7;

  return v8 & 1;
}

- (_TtC8PaperKit25CanvasElementResizeHandle)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end