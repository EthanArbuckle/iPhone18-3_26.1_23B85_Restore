@interface PaperDocumentThumbnailView.ThumbnailDelegate
- (_TtCC8PaperKit26PaperDocumentThumbnailView17ThumbnailDelegate)init;
- (id)menuElementsForPage:(id)a3;
- (id)pasteActionForPage:(id)a3;
- (void)didSelectPage;
- (void)handlePageOrderedCollectionDifference:(id)a3;
- (void)insertFileAtURL:(id)a3 atIndex:(int64_t)a4 completionHandler:(id)a5;
- (void)registerFileRepresentationsForPage:(int64_t)a3 toItemProvider:(id)a4;
@end

@implementation PaperDocumentThumbnailView.ThumbnailDelegate

- (void)didSelectPage
{
  v3 = objc_opt_self();
  v7 = self;
  v4 = [v3 defaultCenter];
  if (one-time initialization token for PaperKitPDFThumbnailViewDidSelectPageNotification != -1)
  {
    swift_once();
  }

  v5 = PaperKitPDFThumbnailViewDidSelectPageNotification;
  Strong = swift_unknownObjectWeakLoadStrong();
  [v4 postNotificationName:v5 object:Strong];
}

- (id)menuElementsForPage:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = PaperDocumentThumbnailView.ThumbnailDelegate.menuElements(for:)(v4, PaperDocumentView.menuElements(for:));

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

- (void)handlePageOrderedCollectionDifference:(id)a3
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
    v11 = self;

    if (v10)
    {
      PaperDocumentView.handlePageOrderedCollectionDifference(_:)();

      v11 = v10;
    }
  }

  (*(v5 + 8))(v7, v4);
}

- (void)insertFileAtURL:(id)a3 atIndex:(int64_t)a4 completionHandler:(id)a5
{
  v8 = type metadata accessor for URL();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = _Block_copy(a5);
  static URL._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = swift_allocObject();
  *(v13 + 16) = v12;
  v14 = self;
  PaperDocumentThumbnailView.ThumbnailDelegate.insertFile(at:at:completionHandler:)(v11, a4, partial apply for thunk for @escaping @callee_unowned @convention(block) (@unowned UITargetedDragPreview) -> (), v13);

  (*(v9 + 8))(v11, v8);
}

- (void)registerFileRepresentationsForPage:(int64_t)a3 toItemProvider:(id)a4
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    swift_beginAccess();
    v9 = swift_unknownObjectWeakLoadStrong();
    v10 = a4;
    v11 = self;

    if (v9)
    {
      PaperDocumentView.registerFileRepresentations(forPage:to:)(a3, v10);

      v10 = v11;
      v11 = v9;
    }
  }
}

- (id)pasteActionForPage:(id)a3
{
  v5 = a3;
  v6 = self;
  v7 = PaperDocumentThumbnailView.ThumbnailDelegate.menuElements(for:)(a3, PaperDocumentView.pasteAction(for:));

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