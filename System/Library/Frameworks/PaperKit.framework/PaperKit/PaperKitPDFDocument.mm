@interface PaperKitPDFDocument
- (BOOL)unlockWithPassword:(id)password;
- (Class)annotationSubclassForType:(id)type;
- (Class)pageClass;
- (_TtC8PaperKit19PaperKitPDFDocument)init;
- (_TtC8PaperKit19PaperKitPDFDocument)initWithData:(id)data;
- (_TtC8PaperKit19PaperKitPDFDocument)initWithURL:(id)l;
- (id)copyWithZone:(void *)zone;
- (id)pageAtIndex:(int64_t)index;
- (void)exchangePageAtIndex:(int64_t)index withPageAtIndex:(int64_t)atIndex;
- (void)insertPage:(id)page atIndex:(int64_t)index;
- (void)removePageAtIndex:(int64_t)index;
@end

@implementation PaperKitPDFDocument

- (Class)pageClass
{
  type metadata accessor for PaperKitPDFPage(0);

  return swift_getObjCClassFromMetadata();
}

- (Class)annotationSubclassForType:(id)type
{
  type metadata accessor for CanvasElementPDFAnnotation();

  return swift_getObjCClassFromMetadata();
}

- (_TtC8PaperKit19PaperKitPDFDocument)init
{
  v3 = MEMORY[0x1E69E7CC0];
  *(&self->super.super.isa + OBJC_IVAR____TtC8PaperKit19PaperKitPDFDocument_pageProxies) = MEMORY[0x1E69E7CC0];
  v4 = OBJC_IVAR____TtC8PaperKit19PaperKitPDFDocument_pdfPageIdMap;
  *(&self->super.super.isa + v4) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC8PaperKit9PDFPageIDV_SiTt0g5Tf4g_n(v3);
  v5 = OBJC_IVAR____TtC8PaperKit19PaperKitPDFDocument_pageIdMap;
  *(&self->super.super.isa + v5) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC9Coherence9CRKeyPathV_SiTt0g5Tf4g_n(v3);
  v7.receiver = self;
  v7.super_class = type metadata accessor for PaperKitPDFDocument();
  return [(PDFDocument *)&v7 init];
}

- (_TtC8PaperKit19PaperKitPDFDocument)initWithURL:(id)l
{
  v3 = type metadata accessor for URL();
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  static URL._unconditionallyBridgeFromObjectiveC(_:)();
  return PaperKitPDFDocument.init(url:)(v5);
}

- (_TtC8PaperKit19PaperKitPDFDocument)initWithData:(id)data
{
  dataCopy = data;
  v4 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;

  return PaperKitPDFDocument.init(data:)(v4, v6);
}

- (id)copyWithZone:(void *)zone
{
  selfCopy = self;
  PaperKitPDFDocument.copy(with:)(zone, v7);

  __swift_project_boxed_opaque_existential_1(v7, v7[3]);
  v5 = _bridgeAnythingToObjectiveC<A>(_:)();
  __swift_destroy_boxed_opaque_existential_0(v7);
  return v5;
}

- (id)pageAtIndex:(int64_t)index
{
  selfCopy = self;
  PaperKitPDFDocument.page(at:)(v5, index);
  v7 = v6;

  return v7;
}

- (void)removePageAtIndex:(int64_t)index
{
  selfCopy = self;
  PaperKitPDFDocument.removePage(at:)(index);
}

- (void)insertPage:(id)page atIndex:(int64_t)index
{
  pageCopy = page;
  selfCopy = self;
  PaperKitPDFDocument.insert(_:at:)(pageCopy, index);
}

- (void)exchangePageAtIndex:(int64_t)index withPageAtIndex:(int64_t)atIndex
{
  selfCopy = self;
  PaperKitPDFDocument.exchangePage(at:withPageAt:)(index, atIndex);
}

- (BOOL)unlockWithPassword:(id)password
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit6PageIdVSgMd);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v15 - v6;
  v8 = type metadata accessor for PaperKitPDFDocument();
  v16.receiver = self;
  v16.super_class = v8;
  selfCopy = self;
  v10 = [(PDFDocument *)&v16 unlockWithPassword:password];
  if (v10)
  {
    v11 = type metadata accessor for PageId(0);
    (*(*(v11 - 8) + 56))(v7, 1, 1, v11);
    v12 = _sSa9repeating5countSayxGx_SitcfC8PaperKit6PageIdVSg_Tt1g5(v7, [(PDFDocument *)selfCopy pageCount]);
    v13 = OBJC_IVAR____TtC8PaperKit19PaperKitPDFDocument_pageProxies;
    swift_beginAccess();
    *(&selfCopy->super.super.isa + v13) = v12;
  }

  else
  {
  }

  return v10;
}

@end