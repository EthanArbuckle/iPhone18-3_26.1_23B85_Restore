@interface CanvasElementPDFAnnotation
- (Class)annotationSubclassForPopup;
- (_TtC8PaperKit26CanvasElementPDFAnnotation)initWithBounds:(CGRect)bounds forType:(id)type withProperties:(id)properties;
- (_TtC8PaperKit26CanvasElementPDFAnnotation)initWithCGPDFAnnotation:(CGPDFAnnotation *)annotation forPage:(id)page;
- (id)copyWithZone:(void *)zone;
- (void)_addAKAnnotationToDictionary:(__CFDictionary *)dictionary;
- (void)addControl;
- (void)drawWithBox:(int64_t)box inContext:(CGContext *)context;
- (void)setIsFullyConstructed:(BOOL)constructed;
@end

@implementation CanvasElementPDFAnnotation

- (_TtC8PaperKit26CanvasElementPDFAnnotation)initWithBounds:(CGRect)bounds forType:(id)type withProperties:(id)properties
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  if (properties)
  {
    v10 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v10 = 0;
  }

  return CanvasElementPDFAnnotation.init(bounds:forType:withProperties:)(type, v10, x, y, width, height);
}

- (_TtC8PaperKit26CanvasElementPDFAnnotation)initWithCGPDFAnnotation:(CGPDFAnnotation *)annotation forPage:(id)page
{
  annotationCopy = annotation;
  pageCopy = page;
  return CanvasElementPDFAnnotation.init(cgpdfAnnotation:for:)(annotation, page);
}

- (id)copyWithZone:(void *)zone
{
  selfCopy = self;
  CanvasElementPDFAnnotation.copy(with:)(zone, v7);

  __swift_project_boxed_opaque_existential_1(v7, v7[3]);
  v5 = _bridgeAnythingToObjectiveC<A>(_:)();
  __swift_destroy_boxed_opaque_existential_0(v7);
  return v5;
}

- (void)setIsFullyConstructed:(BOOL)constructed
{
  constructedCopy = constructed;
  selfCopy = self;
  v5 = selfCopy;
  if (constructedCopy)
  {
    createAKAnnotation = [(PDFAnnotation *)selfCopy createAKAnnotation];
    v7 = *(&v5->super.super.isa + OBJC_IVAR____TtC8PaperKit26CanvasElementPDFAnnotation__akAnnotation);
    *(&v5->super.super.isa + OBJC_IVAR____TtC8PaperKit26CanvasElementPDFAnnotation__akAnnotation) = createAKAnnotation;
  }

  v8.receiver = v5;
  v8.super_class = type metadata accessor for CanvasElementPDFAnnotation();
  [(PDFAnnotation *)&v8 setIsFullyConstructed:constructedCopy];
}

- (void)drawWithBox:(int64_t)box inContext:(CGContext *)context
{
  contextCopy = context;
  selfCopy = self;
  CanvasElementPDFAnnotation.draw(with:in:)(box, contextCopy);
}

- (void)_addAKAnnotationToDictionary:(__CFDictionary *)dictionary
{
  dictionaryCopy = dictionary;
  selfCopy = self;
  CanvasElementPDFAnnotation._addAKAnnotation(to:)(dictionary);
}

- (Class)annotationSubclassForPopup
{
  type metadata accessor for CanvasElementPDFAnnotation();

  return swift_getObjCClassFromMetadata();
}

- (void)addControl
{
  selfCopy = self;
  CanvasElementPDFAnnotation.addControl()();
}

@end