@interface ARQuickLookOverlayView
- (_TtC11AssetViewer22ARQuickLookOverlayView)initWithCoder:(id)coder;
- (_TtC11AssetViewer22ARQuickLookOverlayView)initWithFrame:(CGRect)frame;
- (id)hitTest:(CGPoint)test withEvent:(id)event;
@end

@implementation ARQuickLookOverlayView

- (id)hitTest:(CGPoint)test withEvent:(id)event
{
  y = test.y;
  x = test.x;
  v14.receiver = self;
  v14.super_class = type metadata accessor for ARQuickLookOverlayView();
  v7 = v14.receiver;
  eventCopy = event;
  v9 = [(ARQuickLookOverlayView *)&v14 hitTest:eventCopy withEvent:x, y];
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

- (_TtC11AssetViewer22ARQuickLookOverlayView)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC11AssetViewer22ARQuickLookOverlayView_overrideView) = 0;
  v8.receiver = self;
  v8.super_class = type metadata accessor for ARQuickLookOverlayView();
  return [(ARQuickLookOverlayView *)&v8 initWithFrame:x, y, width, height];
}

- (_TtC11AssetViewer22ARQuickLookOverlayView)initWithCoder:(id)coder
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtC11AssetViewer22ARQuickLookOverlayView_overrideView) = 0;
  v7.receiver = self;
  v7.super_class = type metadata accessor for ARQuickLookOverlayView();
  coderCopy = coder;
  v5 = [(ARQuickLookOverlayView *)&v7 initWithCoder:coderCopy];

  if (v5)
  {
  }

  return v5;
}

@end