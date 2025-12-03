@interface PaperDocumentThumbnailView.ThumbnailDelegate
- (_TtCC8PaperKit26PaperDocumentThumbnailView17ThumbnailDelegate)init;
- (id)menuElementsForPage:(id)page;
- (id)pasteActionForPage:(id)page;
- (void)didSelectPage;
- (void)handlePageOrderedCollectionDifference:(id)difference;
- (void)insertFileAtURL:(id)l atIndex:(int64_t)index completionHandler:(id)handler;
- (void)registerFileRepresentationsForPage:(int64_t)page toItemProvider:(id)provider;
@end

@implementation PaperDocumentThumbnailView.ThumbnailDelegate

- (void)didSelectPage
{
  v3 = objc_opt_self();
  selfCopy = self;
  defaultCenter = [v3 defaultCenter];
  if (one-time initialization token for PaperKitPDFThumbnailViewDidSelectPageNotification != -1)
  {
    swift_once();
  }

  v5 = PaperKitPDFThumbnailViewDidSelectPageNotification;
  Strong = swift_unknownObjectWeakLoadStrong();
  [defaultCenter postNotificationName:v5 object:Strong];
}

- (id)menuElementsForPage:(id)page
{
  pageCopy = page;
  selfCopy = self;
  v6 = PaperDocumentThumbnailView.ThumbnailDelegate.menuElements(for:)(pageCopy, PaperDocumentView.menuElements(for:));

  if (v6)
  {
    type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for UIMenuElement);
    v7.super.isa = Array._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v7.super.isa = 0;
  }

  return v7.super.isa;
}

- (void)handlePageOrderedCollectionDifference:(id)difference
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss20CollectionDifferenceVySo7PDFPageCGMd);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v12 - v6;
  type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for PDFPage);
  static CollectionDifference._unconditionallyBridgeFromObjectiveC(_:)();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v9 = Strong;
    swift_beginAccess();
    v10 = swift_unknownObjectWeakLoadStrong();
    selfCopy = self;

    if (v10)
    {
      PaperDocumentView.handlePageOrderedCollectionDifference(_:)();

      selfCopy = v10;
    }
  }

  (*(v5 + 8))(v7, v4);
}

- (void)insertFileAtURL:(id)l atIndex:(int64_t)index completionHandler:(id)handler
{
  v8 = type metadata accessor for URL();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = _Block_copy(handler);
  static URL._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = swift_allocObject();
  *(v13 + 16) = v12;
  selfCopy = self;
  PaperDocumentThumbnailView.ThumbnailDelegate.insertFile(at:at:completionHandler:)(v11, index, partial apply for thunk for @escaping @callee_unowned @convention(block) (@unowned UITargetedDragPreview) -> (), v13);

  (*(v9 + 8))(v11, v8);
}

- (void)registerFileRepresentationsForPage:(int64_t)page toItemProvider:(id)provider
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    swift_beginAccess();
    v9 = swift_unknownObjectWeakLoadStrong();
    providerCopy = provider;
    selfCopy = self;

    if (v9)
    {
      PaperDocumentView.registerFileRepresentations(forPage:to:)(page, providerCopy);

      providerCopy = selfCopy;
      selfCopy = v9;
    }
  }
}

- (id)pasteActionForPage:(id)page
{
  pageCopy = page;
  selfCopy = self;
  v7 = PaperDocumentThumbnailView.ThumbnailDelegate.menuElements(for:)(page, PaperDocumentView.pasteAction(for:));

  return v7;
}

- (_TtCC8PaperKit26PaperDocumentThumbnailView17ThumbnailDelegate)init
{
  ObjectType = swift_getObjectType();
  swift_unknownObjectWeakInit();
  v5.receiver = self;
  v5.super_class = ObjectType;
  return [(PaperDocumentThumbnailView.ThumbnailDelegate *)&v5 init];
}

@end