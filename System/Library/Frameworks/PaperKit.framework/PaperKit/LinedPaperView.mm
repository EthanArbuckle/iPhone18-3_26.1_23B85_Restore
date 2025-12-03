@interface LinedPaperView
- (CGAffineTransform)drawingTransform;
- (_TtC8PaperKit14LinedPaperView)initWithFrame:(CGRect)frame;
- (id)linedPaperLayerAttachmentContainerView:(id)view;
- (id)linedPaperLayerTraitCollection:(id)collection;
- (void)setDrawingTransform:(CGAffineTransform *)transform;
@end

@implementation LinedPaperView

- (CGAffineTransform)drawingTransform
{
  v3 = self + OBJC_IVAR____TtC8PaperKit14LinedPaperView_drawingTransform;
  v4 = *(&self->c + OBJC_IVAR____TtC8PaperKit14LinedPaperView_drawingTransform);
  *&retstr->a = *(&self->a + OBJC_IVAR____TtC8PaperKit14LinedPaperView_drawingTransform);
  *&retstr->c = v4;
  *&retstr->tx = *(v3 + 2);
  return self;
}

- (void)setDrawingTransform:(CGAffineTransform *)transform
{
  v3 = (self + OBJC_IVAR____TtC8PaperKit14LinedPaperView_drawingTransform);
  v4 = *&transform->c;
  v5 = *&transform->tx;
  *v3 = *&transform->a;
  v3[1] = v4;
  v3[2] = v5;
}

- (id)linedPaperLayerAttachmentContainerView:(id)view
{
  superview = [(LinedPaperView *)self superview];

  return superview;
}

- (id)linedPaperLayerTraitCollection:(id)collection
{
  traitCollection = [(LinedPaperView *)self traitCollection];

  return traitCollection;
}

- (_TtC8PaperKit14LinedPaperView)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC8PaperKit14LinedPaperView_linedPaperLayer) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC8PaperKit14LinedPaperView_linedPaper) = 0;
  v8 = (&self->super.super.super.isa + OBJC_IVAR____TtC8PaperKit14LinedPaperView_drawingTransform);
  *v8 = 0x3FF0000000000000;
  v8[1] = 0;
  v8[2] = 0;
  v8[3] = 0x3FF0000000000000;
  v9 = type metadata accessor for LinedPaperView();
  v8[4] = 0;
  v8[5] = 0;
  v11.receiver = self;
  v11.super_class = v9;
  return [(LinedPaperView *)&v11 initWithFrame:x, y, width, height];
}

@end