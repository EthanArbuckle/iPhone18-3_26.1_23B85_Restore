@interface CanvasElementPDFAnnotationAppearanceStreamView
- (_TtC8PaperKit46CanvasElementPDFAnnotationAppearanceStreamView)initWithCoder:(id)a3;
- (_TtC8PaperKit46CanvasElementPDFAnnotationAppearanceStreamView)initWithFrame:(CGRect)a3;
- (void)drawRect:(CGRect)a3;
@end

@implementation CanvasElementPDFAnnotationAppearanceStreamView

- (_TtC8PaperKit46CanvasElementPDFAnnotationAppearanceStreamView)initWithCoder:(id)a3
{
  swift_unknownObjectWeakInit();
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (void)drawRect:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v7 = self;
  v9.origin.x = x;
  v9.origin.y = y;
  v9.size.width = width;
  v9.size.height = height;
  CanvasElementPDFAnnotationAppearanceStreamView.draw(_:)(v9);
}

- (_TtC8PaperKit46CanvasElementPDFAnnotationAppearanceStreamView)initWithFrame:(CGRect)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end