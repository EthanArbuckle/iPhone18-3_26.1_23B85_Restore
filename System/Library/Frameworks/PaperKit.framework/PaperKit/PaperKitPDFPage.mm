@interface PaperKitPDFPage
- (Class)annotationSubclassForSubtype:(id)subtype;
- (NSArray)annotations;
- (NSString)description;
- (_TtC8PaperKit15PaperKitPDFPage)init;
- (_TtC8PaperKit15PaperKitPDFPage)initWithImage:(id)image options:(id)options;
- (char)isCandidateForOCR;
- (id)copyWithZone:(void *)zone;
- (void)drawWithBox:(int64_t)box inContext:(CGContext *)context withOptions:(id)options;
- (void)setCandidateForOCR:(char)r;
@end

@implementation PaperKitPDFPage

- (id)copyWithZone:(void *)zone
{
  selfCopy = self;
  PaperKitPDFPage.copy(with:)(zone, v7);

  __swift_project_boxed_opaque_existential_1(v7, v7[3]);
  v5 = _bridgeAnythingToObjectiveC<A>(_:)();
  __swift_destroy_boxed_opaque_existential_0(v7);
  return v5;
}

- (NSArray)annotations
{
  selfCopy = self;
  PaperKitPDFPage.annotations.getter();

  type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for PDFAnnotation);
  v3.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v3.super.isa;
}

- (NSString)description
{
  selfCopy = self;
  v3 = PaperKitPDFPage.description.getter();
  v5 = v4;

  v6 = MEMORY[0x1DA6CCED0](v3, v5);

  return v6;
}

- (char)isCandidateForOCR
{
  selfCopy = self;
  v3 = PaperKitPDFPage.candidateForOCR.getter();

  return v3;
}

- (void)setCandidateForOCR:(char)r
{
  rCopy = r;
  v4.receiver = self;
  v4.super_class = type metadata accessor for PaperKitPDFPage(0);
  [(PaperKitPDFPage *)&v4 setCandidateForOCR:rCopy];
}

- (void)drawWithBox:(int64_t)box inContext:(CGContext *)context withOptions:(id)options
{
  type metadata accessor for PDFPageDrawWithBoxOption(0);
  lazy protocol witness table accessor for type CRKeyPath and conformance CRKeyPath(&lazy protocol witness table cache variable for type PDFPageDrawWithBoxOption and conformance PDFPageDrawWithBoxOption, type metadata accessor for PDFPageDrawWithBoxOption);
  v8 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  contextCopy = context;
  selfCopy = self;
  PaperKitPDFPage.draw(with:in:withOptions:)(box, contextCopy, v8);
}

- (Class)annotationSubclassForSubtype:(id)subtype
{
  type metadata accessor for CanvasElementPDFAnnotation();

  return swift_getObjCClassFromMetadata();
}

- (_TtC8PaperKit15PaperKitPDFPage)init
{
  v3 = (&self->super.super.isa + OBJC_IVAR____TtC8PaperKit15PaperKitPDFPage_render);
  *v3 = 0;
  v3[1] = 0;
  v4 = OBJC_IVAR____TtC8PaperKit15PaperKitPDFPage_pageId;
  v5 = type metadata accessor for PageId(0);
  (*(*(v5 - 8) + 56))(self + v4, 1, 1, v5);
  *(&self->super.super.isa + OBJC_IVAR____TtC8PaperKit15PaperKitPDFPage_appearanceStreamAnnotations) = 0;
  *(&self->super.super.isa + OBJC_IVAR____TtC8PaperKit15PaperKitPDFPage_annotationIDState) = 0;
  v7.receiver = self;
  v7.super_class = type metadata accessor for PaperKitPDFPage(0);
  return [(PaperKitPDFPage *)&v7 init];
}

- (_TtC8PaperKit15PaperKitPDFPage)initWithImage:(id)image options:(id)options
{
  type metadata accessor for PDFPageImageInitializationOption(0);
  lazy protocol witness table accessor for type CRKeyPath and conformance CRKeyPath(&lazy protocol witness table cache variable for type PDFPageImageInitializationOption and conformance PDFPageImageInitializationOption, type metadata accessor for PDFPageImageInitializationOption);
  static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  return PaperKitPDFPage.init(image:options:)(image);
}

@end