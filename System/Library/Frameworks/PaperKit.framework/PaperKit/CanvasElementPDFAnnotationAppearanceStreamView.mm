@interface CanvasElementPDFAnnotationAppearanceStreamView
- (_TtC8PaperKit46CanvasElementPDFAnnotationAppearanceStreamView)initWithCoder:(id)coder;
- (_TtC8PaperKit46CanvasElementPDFAnnotationAppearanceStreamView)initWithFrame:(CGRect)frame;
- (void)drawRect:(CGRect)rect;
@end

@implementation CanvasElementPDFAnnotationAppearanceStreamView

- (_TtC8PaperKit46CanvasElementPDFAnnotationAppearanceStreamView)initWithCoder:(id)coder
{
  swift_unknownObjectWeakInit();
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (void)drawRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  selfCopy = self;
  v9.origin.x = x;
  v9.origin.y = y;
  v9.size.width = width;
  v9.size.height = height;
  CanvasElementPDFAnnotationAppearanceStreamView.draw(_:)(v9);
}

- (_TtC8PaperKit46CanvasElementPDFAnnotationAppearanceStreamView)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end