@interface DrawingAssetView
- (_TtC7Journal16DrawingAssetView)initWithFrame:(CGRect)a3;
- (void)willMoveToWindow:(id)a3;
@end

@implementation DrawingAssetView

- (void)willMoveToWindow:(id)a3
{
  v4 = self;
  if (a3)
  {
    v5 = a3;
    sub_10071B9C4();
  }

  v6.receiver = v4;
  v6.super_class = type metadata accessor for DrawingAssetView();
  [(DrawingAssetView *)&v6 willMoveToWindow:a3];
}

- (_TtC7Journal16DrawingAssetView)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC7Journal16DrawingAssetView_paperKitCanvasView) = 0;
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC7Journal16DrawingAssetView_drawingAsset) = 0;
  swift_unknownObjectWeakInit();
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC7Journal16DrawingAssetView_toolsVisible) = 0;
  v9.receiver = self;
  v9.super_class = type metadata accessor for DrawingAssetView();
  return [(JournalAssetView *)&v9 initWithFrame:x, y, width, height];
}

@end