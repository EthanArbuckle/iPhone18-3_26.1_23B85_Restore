@interface CanvasElementResizeViewMoreButton
- (_TtC8PaperKit33CanvasElementResizeViewMoreButton)initWithFrame:(CGRect)a3;
- (id)contextMenuInteraction:(id)a3 configurationForMenuAtLocation:(CGPoint)a4;
- (id)pointerInteraction:(id)a3 styleForRegion:(id)a4;
- (void)didMoveToWindow;
@end

@implementation CanvasElementResizeViewMoreButton

- (void)didMoveToWindow
{
  v2 = self;
  CanvasElementResizeViewMoreButton.didMoveToWindow()();
}

- (id)contextMenuInteraction:(id)a3 configurationForMenuAtLocation:(CGPoint)a4
{
  y = a4.y;
  x = a4.x;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = [Strong contextMenuInteraction:a3 configurationForMenuAtLocation:{x, y}];
    swift_unknownObjectRelease();
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)pointerInteraction:(id)a3 styleForRegion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  v9 = specialized CanvasElementResizeViewMoreButton.pointerInteraction(_:styleFor:)(v6);

  return v9;
}

- (_TtC8PaperKit33CanvasElementResizeViewMoreButton)initWithFrame:(CGRect)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end