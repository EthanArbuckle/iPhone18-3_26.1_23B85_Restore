@interface ARQuickLookOverlayView
- (_TtC11AssetViewer22ARQuickLookOverlayView)initWithCoder:(id)a3;
- (_TtC11AssetViewer22ARQuickLookOverlayView)initWithFrame:(CGRect)a3;
- (id)hitTest:(CGPoint)a3 withEvent:(id)a4;
@end

@implementation ARQuickLookOverlayView

- (id)hitTest:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  v14.receiver = self;
  v14.super_class = type metadata accessor for ARQuickLookOverlayView();
  v7 = v14.receiver;
  v8 = a4;
  v9 = [(ARQuickLookOverlayView *)&v14 hitTest:v8 withEvent:x, y];
  if (v9)
  {
    v10 = v9;
    sub_2412B3E48();
    v11 = v7;
    v12 = v10;
    LOBYTE(v10) = sub_2413542BC();

    if (v10)
    {

      v12 = *&v11[OBJC_IVAR____TtC11AssetViewer22ARQuickLookOverlayView_overrideView];
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (_TtC11AssetViewer22ARQuickLookOverlayView)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC11AssetViewer22ARQuickLookOverlayView_overrideView) = 0;
  v8.receiver = self;
  v8.super_class = type metadata accessor for ARQuickLookOverlayView();
  return [(ARQuickLookOverlayView *)&v8 initWithFrame:x, y, width, height];
}

- (_TtC11AssetViewer22ARQuickLookOverlayView)initWithCoder:(id)a3
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtC11AssetViewer22ARQuickLookOverlayView_overrideView) = 0;
  v7.receiver = self;
  v7.super_class = type metadata accessor for ARQuickLookOverlayView();
  v4 = a3;
  v5 = [(ARQuickLookOverlayView *)&v7 initWithCoder:v4];

  if (v5)
  {
  }

  return v5;
}

@end