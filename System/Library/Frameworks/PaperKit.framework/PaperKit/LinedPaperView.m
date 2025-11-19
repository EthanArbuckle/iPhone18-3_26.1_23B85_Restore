@interface LinedPaperView
- (CGAffineTransform)drawingTransform;
- (_TtC8PaperKit14LinedPaperView)initWithFrame:(CGRect)a3;
- (id)linedPaperLayerAttachmentContainerView:(id)a3;
- (id)linedPaperLayerTraitCollection:(id)a3;
- (void)setDrawingTransform:(CGAffineTransform *)a3;
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

- (void)setDrawingTransform:(CGAffineTransform *)a3
{
  v3 = (self + OBJC_IVAR____TtC8PaperKit14LinedPaperView_drawingTransform);
  v4 = *&a3->c;
  v5 = *&a3->tx;
  *v3 = *&a3->a;
  v3[1] = v4;
  v3[2] = v5;
}

- (id)linedPaperLayerAttachmentContainerView:(id)a3
{
  v3 = [(LinedPaperView *)self superview];

  return v3;
}

- (id)linedPaperLayerTraitCollection:(id)a3
{
  v3 = [(LinedPaperView *)self traitCollection];

  return v3;
}

- (_TtC8PaperKit14LinedPaperView)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
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