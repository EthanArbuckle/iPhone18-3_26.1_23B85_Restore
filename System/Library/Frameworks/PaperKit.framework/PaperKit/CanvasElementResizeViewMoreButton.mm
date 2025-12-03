@interface CanvasElementResizeViewMoreButton
- (_TtC8PaperKit33CanvasElementResizeViewMoreButton)initWithFrame:(CGRect)frame;
- (id)contextMenuInteraction:(id)interaction configurationForMenuAtLocation:(CGPoint)location;
- (id)pointerInteraction:(id)interaction styleForRegion:(id)region;
- (void)didMoveToWindow;
@end

@implementation CanvasElementResizeViewMoreButton

- (void)didMoveToWindow
{
  selfCopy = self;
  CanvasElementResizeViewMoreButton.didMoveToWindow()();
}

- (id)contextMenuInteraction:(id)interaction configurationForMenuAtLocation:(CGPoint)location
{
  y = location.y;
  x = location.x;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = [Strong contextMenuInteraction:interaction configurationForMenuAtLocation:{x, y}];
    swift_unknownObjectRelease();
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)pointerInteraction:(id)interaction styleForRegion:(id)region
{
  interactionCopy = interaction;
  regionCopy = region;
  selfCopy = self;
  v9 = specialized CanvasElementResizeViewMoreButton.pointerInteraction(_:styleFor:)(interactionCopy);

  return v9;
}

- (_TtC8PaperKit33CanvasElementResizeViewMoreButton)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end