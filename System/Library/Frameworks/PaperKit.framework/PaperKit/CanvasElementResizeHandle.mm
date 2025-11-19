@interface CanvasElementResizeHandle
- (BOOL)scribbleInteraction:(id)a3 shouldBeginAtLocation:(CGPoint)a4;
- (_TtC8PaperKit25CanvasElementResizeHandle)initWithCoder:(id)a3;
- (_TtC8PaperKit25CanvasElementResizeHandle)initWithFrame:(CGRect)a3;
- (id)pointerInteraction:(id)a3 styleForRegion:(id)a4;
- (void)didMoveToWindow;
@end

@implementation CanvasElementResizeHandle

- (void)didMoveToWindow
{
  v2 = self;
  CanvasElementResizeHandle.didMoveToWindow()();
}

- (_TtC8PaperKit25CanvasElementResizeHandle)initWithCoder:(id)a3
{
  v3 = self + OBJC_IVAR____TtC8PaperKit25CanvasElementResizeHandle_resizeViewCenter;
  *v3 = 0;
  *(v3 + 1) = 0;
  v3[16] = 1;
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (id)pointerInteraction:(id)a3 styleForRegion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  v9 = specialized CanvasElementResizeHandle.pointerInteraction(_:styleFor:)(v6);

  return v9;
}

- (BOOL)scribbleInteraction:(id)a3 shouldBeginAtLocation:(CGPoint)a4
{
  y = a4.y;
  x = a4.x;
  v6 = self;
  CanvasElementResizeHandle.hitHandle(_:with:)(0, x, y);
  v8 = v7;

  return v8 & 1;
}

- (_TtC8PaperKit25CanvasElementResizeHandle)initWithFrame:(CGRect)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end