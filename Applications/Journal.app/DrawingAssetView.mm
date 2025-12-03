@interface DrawingAssetView
- (_TtC7Journal16DrawingAssetView)initWithFrame:(CGRect)frame;
- (void)willMoveToWindow:(id)window;
@end

@implementation DrawingAssetView

- (void)willMoveToWindow:(id)window
{
  selfCopy = self;
  if (window)
  {
    windowCopy = window;
    sub_10071B9C4();
  }

  v6.receiver = selfCopy;
  v6.super_class = type metadata accessor for DrawingAssetView();
  [(DrawingAssetView *)&v6 willMoveToWindow:window];
}

- (_TtC7Journal16DrawingAssetView)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC7Journal16DrawingAssetView_paperKitCanvasView) = 0;
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC7Journal16DrawingAssetView_drawingAsset) = 0;
  swift_unknownObjectWeakInit();
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC7Journal16DrawingAssetView_toolsVisible) = 0;
  v9.receiver = self;
  v9.super_class = type metadata accessor for DrawingAssetView();
  return [(JournalAssetView *)&v9 initWithFrame:x, y, width, height];
}

@end