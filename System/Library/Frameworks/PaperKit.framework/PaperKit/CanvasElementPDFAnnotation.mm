@interface CanvasElementPDFAnnotation
- (Class)annotationSubclassForPopup;
- (_TtC8PaperKit26CanvasElementPDFAnnotation)initWithBounds:(CGRect)a3 forType:(id)a4 withProperties:(id)a5;
- (_TtC8PaperKit26CanvasElementPDFAnnotation)initWithCGPDFAnnotation:(CGPDFAnnotation *)a3 forPage:(id)a4;
- (id)copyWithZone:(void *)a3;
- (void)_addAKAnnotationToDictionary:(__CFDictionary *)a3;
- (void)addControl;
- (void)drawWithBox:(int64_t)a3 inContext:(CGContext *)a4;
- (void)setIsFullyConstructed:(BOOL)a3;
@end

@implementation CanvasElementPDFAnnotation

- (_TtC8PaperKit26CanvasElementPDFAnnotation)initWithBounds:(CGRect)a3 forType:(id)a4 withProperties:(id)a5
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  if (a5)
  {
    v10 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v10 = 0;
  }

  return CanvasElementPDFAnnotation.init(bounds:forType:withProperties:)(a4, v10, x, y, width, height);
}

- (_TtC8PaperKit26CanvasElementPDFAnnotation)initWithCGPDFAnnotation:(CGPDFAnnotation *)a3 forPage:(id)a4
{
  v6 = a3;
  v7 = a4;
  return CanvasElementPDFAnnotation.init(cgpdfAnnotation:for:)(a3, a4);
}

- (id)copyWithZone:(void *)a3
{
  v4 = self;
  CanvasElementPDFAnnotation.copy(with:)(a3, v7);

  __swift_project_boxed_opaque_existential_1(v7, v7[3]);
  v5 = _bridgeAnythingToObjectiveC<A>(_:)();
  __swift_destroy_boxed_opaque_existential_0(v7);
  return v5;
}

- (void)setIsFullyConstructed:(BOOL)a3
{
  v3 = a3;
  v4 = self;
  v5 = v4;
  if (v3)
  {
    v6 = [(PDFAnnotation *)v4 createAKAnnotation];
    v7 = *(&v5->super.super.isa + OBJC_IVAR____TtC8PaperKit26CanvasElementPDFAnnotation__akAnnotation);
    *(&v5->super.super.isa + OBJC_IVAR____TtC8PaperKit26CanvasElementPDFAnnotation__akAnnotation) = v6;
  }

  v8.receiver = v5;
  v8.super_class = type metadata accessor for CanvasElementPDFAnnotation();
  [(PDFAnnotation *)&v8 setIsFullyConstructed:v3];
}

- (void)drawWithBox:(int64_t)a3 inContext:(CGContext *)a4
{
  v6 = a4;
  v7 = self;
  CanvasElementPDFAnnotation.draw(with:in:)(a3, v6);
}

- (void)_addAKAnnotationToDictionary:(__CFDictionary *)a3
{
  v5 = a3;
  v6 = self;
  CanvasElementPDFAnnotation._addAKAnnotation(to:)(a3);
}

- (Class)annotationSubclassForPopup
{
  type metadata accessor for CanvasElementPDFAnnotation();

  return swift_getObjCClassFromMetadata();
}

- (void)addControl
{
  v2 = self;
  CanvasElementPDFAnnotation.addControl()();
}

@end