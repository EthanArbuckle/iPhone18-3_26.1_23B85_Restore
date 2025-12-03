@interface CRLCanvasLayerSnapshotHostingView
- (_TtC8Freeform33CRLCanvasLayerSnapshotHostingView)initWithCoder:(id)coder;
- (_TtC8Freeform33CRLCanvasLayerSnapshotHostingView)initWithFrame:(CGRect)frame;
@end

@implementation CRLCanvasLayerSnapshotHostingView

- (_TtC8Freeform33CRLCanvasLayerSnapshotHostingView)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v8.receiver = self;
  v8.super_class = type metadata accessor for CRLCanvasLayerSnapshotHostingView();
  return [(CRLUserInteractionTogglableView *)&v8 initWithFrame:x, y, width, height];
}

- (_TtC8Freeform33CRLCanvasLayerSnapshotHostingView)initWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for CRLCanvasLayerSnapshotHostingView();
  coderCopy = coder;
  v5 = [(CRLUserInteractionTogglableView *)&v7 initWithCoder:coderCopy];

  if (v5)
  {
  }

  return v5;
}

@end