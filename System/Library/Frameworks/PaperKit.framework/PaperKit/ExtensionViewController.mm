@interface ExtensionViewController
- (_TtC8PaperKit23ExtensionViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)dealloc;
- (void)endSearch;
- (void)handleLink:(id)link;
- (void)loadBookmark:(id)bookmark readOnly:(BOOL)only;
- (void)loadPaper:(id)paper paperBookmark:(id)bookmark coherenceContextBookmark:(id)contextBookmark encrypted:(BOOL)encrypted userInterfaceState:(int64_t)state;
- (void)loadPaper:(id)paper paperURL:(id)l coherenceContextURL:(id)rL encrypted:(BOOL)encrypted userInterfaceState:(int64_t)state;
- (void)reportSafeAreaInsetsWithTop:(double)top left:(double)left bottom:(double)bottom right:(double)right;
- (void)revertAllChanges;
- (void)searchFor:(id)for ignoreCase:(BOOL)case wholeWords:(BOOL)words reply:(id)reply;
- (void)searchScrollToVisible:(int64_t)visible;
- (void)setHasLiveStreamMessenger:(BOOL)messenger;
- (void)setLinedPaperWithHorizontalLineSpacing:(double)spacing verticalLineSpacing:(double)lineSpacing horizontalInset:(double)inset;
- (void)setMathDocument:(id)document;
- (void)setMathEnabled:(BOOL)enabled;
- (void)setMathResult:(id)result expressionUUID:(id)d;
- (void)setPaperDocumentInlineThumbnailsVisible:(BOOL)visible;
- (void)setScreenPotentialHeadroom:(double)headroom;
- (void)setTool:(id)tool;
- (void)setUserInterfaceStyle:(int64_t)style;
- (void)setupWithData:(id)data transparentBackground:(BOOL)background;
@end

@implementation ExtensionViewController

- (void)dealloc
{
  if (*(&self->super.super.super.isa + OBJC_IVAR____TtC8PaperKit23ExtensionViewController_hostRequestQueueSuspended) == 1)
  {
    v3 = *(&self->super.super.super.isa + OBJC_IVAR____TtC8PaperKit23ExtensionViewController_hostRequestQueue);
    selfCopy = self;
    dispatch_resume(v3);
  }

  else
  {
    selfCopy2 = self;
  }

  v6.receiver = self;
  v6.super_class = type metadata accessor for ExtensionViewController();
  [(ExtensionViewController *)&v6 dealloc];
}

- (void)loadPaper:(id)paper paperURL:(id)l coherenceContextURL:(id)rL encrypted:(BOOL)encrypted userInterfaceState:(int64_t)state
{
  stateCopy = state;
  encryptedCopy = encrypted;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v22 - v11;
  v13 = type metadata accessor for URL();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v22 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v19 = v18;
  static URL._unconditionallyBridgeFromObjectiveC(_:)();
  if (rL)
  {
    static URL._unconditionallyBridgeFromObjectiveC(_:)();
    v20 = 0;
  }

  else
  {
    v20 = 1;
  }

  (*(v14 + 56))(v12, v20, 1, v13);
  selfCopy = self;
  ExtensionViewController.loadPaper(_:paperURL:coherenceContextURL:encrypted:userInterfaceState:)(v17, v19, v16, v12, encryptedCopy, stateCopy);

  outlined destroy of StocksKitCurrencyCache.Provider?(v12, &_s10Foundation3URLVSgMd);
  (*(v14 + 8))(v16, v13);
}

- (void)loadPaper:(id)paper paperBookmark:(id)bookmark coherenceContextBookmark:(id)contextBookmark encrypted:(BOOL)encrypted userInterfaceState:(int64_t)state
{
  encryptedCopy = encrypted;
  v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v14 = v13;
  bookmarkCopy = bookmark;
  selfCopy = self;
  contextBookmarkCopy = contextBookmark;
  v18 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v20 = v19;

  if (contextBookmarkCopy)
  {
    v21 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v23 = v22;
  }

  else
  {
    v21 = 0;
    v23 = 0xF000000000000000;
  }

  ExtensionViewController.loadPaper(_:paperBookmark:coherenceContextBookmark:encrypted:userInterfaceState:)(v12, v14, v18, v20, v21, v23, encryptedCopy, state);
  outlined consume of Data?(v21, v23);
  outlined consume of Data._Representation(v18, v20);
}

- (void)loadBookmark:(id)bookmark readOnly:(BOOL)only
{
  onlyCopy = only;
  bookmarkCopy = bookmark;
  selfCopy = self;
  v7 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = v8;

  ExtensionViewController.loadBookmark(_:readOnly:)(v7, v9, onlyCopy);
  outlined consume of Data._Representation(v7, v9);
}

- (void)setupWithData:(id)data transparentBackground:(BOOL)background
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v20 - v8;
  dataCopy = data;
  selfCopy = self;
  v12 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v14 = v13;

  v15 = type metadata accessor for TaskPriority();
  (*(*(v15 - 8) + 56))(v9, 1, 1, v15);
  type metadata accessor for MainActor();
  v16 = selfCopy;
  outlined copy of Data._Representation(v12, v14);
  v17 = static MainActor.shared.getter();
  v18 = swift_allocObject();
  v19 = MEMORY[0x1E69E85E0];
  *(v18 + 16) = v17;
  *(v18 + 24) = v19;
  *(v18 + 32) = v16;
  *(v18 + 40) = background;
  *(v18 + 48) = v12;
  *(v18 + 56) = v14;
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v9, &async function pointer to partial apply for closure #1 in ExtensionViewController.setupWithData(_:transparentBackground:), v18);

  outlined consume of Data._Representation(v12, v14);
}

- (void)setTool:(id)tool
{
  toolCopy = tool;
  selfCopy = self;
  ExtensionViewController.setTool(_:)(toolCopy);
}

- (void)setLinedPaperWithHorizontalLineSpacing:(double)spacing verticalLineSpacing:(double)lineSpacing horizontalInset:(double)inset
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v18 - v10;
  v12 = type metadata accessor for TaskPriority();
  (*(*(v12 - 8) + 56))(v11, 1, 1, v12);
  v13 = swift_allocObject();
  swift_unknownObjectWeakInit();
  type metadata accessor for MainActor();
  selfCopy = self;

  v15 = static MainActor.shared.getter();
  v16 = swift_allocObject();
  v17 = MEMORY[0x1E69E85E0];
  *(v16 + 16) = v15;
  *(v16 + 24) = v17;
  *(v16 + 32) = v13;
  *(v16 + 40) = spacing;
  *(v16 + 48) = lineSpacing;
  *(v16 + 56) = inset;

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v11, &async function pointer to partial apply for closure #1 in ExtensionViewController.setLinedPaper(horizontalLineSpacing:verticalLineSpacing:horizontalInset:), v16);
}

- (void)setHasLiveStreamMessenger:(BOOL)messenger
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v13 - v6;
  v8 = type metadata accessor for TaskPriority();
  (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
  type metadata accessor for MainActor();
  selfCopy = self;
  v10 = static MainActor.shared.getter();
  v11 = swift_allocObject();
  v12 = MEMORY[0x1E69E85E0];
  *(v11 + 16) = v10;
  *(v11 + 24) = v12;
  *(v11 + 32) = messenger;
  *(v11 + 40) = selfCopy;
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v7, &async function pointer to partial apply for closure #1 in ExtensionViewController.setHasLiveStreamMessenger(_:), v11);
}

- (void)setUserInterfaceStyle:(int64_t)style
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v14 - v6;
  v8 = type metadata accessor for TaskPriority();
  (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
  v9 = swift_allocObject();
  swift_unknownObjectWeakInit();
  type metadata accessor for MainActor();
  selfCopy = self;

  v11 = static MainActor.shared.getter();
  v12 = swift_allocObject();
  v13 = MEMORY[0x1E69E85E0];
  v12[2] = v11;
  v12[3] = v13;
  v12[4] = style;
  v12[5] = v9;

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v7, &async function pointer to partial apply for closure #1 in ExtensionViewController.setUserInterfaceStyle(_:), v12);
}

- (void)setScreenPotentialHeadroom:(double)headroom
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v14 - v6;
  v8 = type metadata accessor for TaskPriority();
  (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
  v9 = swift_allocObject();
  swift_unknownObjectWeakInit();
  type metadata accessor for MainActor();
  selfCopy = self;

  v11 = static MainActor.shared.getter();
  v12 = swift_allocObject();
  v13 = MEMORY[0x1E69E85E0];
  *(v12 + 16) = v11;
  *(v12 + 24) = v13;
  *(v12 + 32) = headroom;
  *(v12 + 40) = v9;

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v7, &async function pointer to partial apply for closure #1 in ExtensionViewController.setScreenPotentialHeadroom(_:), v12);
}

- (void)setPaperDocumentInlineThumbnailsVisible:(BOOL)visible
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v14 - v6;
  v8 = type metadata accessor for TaskPriority();
  (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
  v9 = swift_allocObject();
  swift_unknownObjectWeakInit();
  type metadata accessor for MainActor();
  selfCopy = self;

  v11 = static MainActor.shared.getter();
  v12 = swift_allocObject();
  v13 = MEMORY[0x1E69E85E0];
  *(v12 + 16) = v11;
  *(v12 + 24) = v13;
  *(v12 + 32) = v9;
  *(v12 + 40) = visible;

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCytSg_Tt2g5(0, 0, v7, &async function pointer to partial apply for closure #1 in ExtensionViewController.setPaperDocumentInlineThumbnailsVisible(_:), v12);
}

- (void)reportSafeAreaInsetsWithTop:(double)top left:(double)left bottom:(double)bottom right:(double)right
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v20 - v12;
  v14 = type metadata accessor for TaskPriority();
  (*(*(v14 - 8) + 56))(v13, 1, 1, v14);
  v15 = swift_allocObject();
  swift_unknownObjectWeakInit();
  type metadata accessor for MainActor();
  selfCopy = self;

  v17 = static MainActor.shared.getter();
  v18 = swift_allocObject();
  v19 = MEMORY[0x1E69E85E0];
  *(v18 + 16) = v17;
  *(v18 + 24) = v19;
  *(v18 + 32) = top;
  *(v18 + 40) = left;
  *(v18 + 48) = bottom;
  *(v18 + 56) = right;
  *(v18 + 64) = v15;

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v13, &async function pointer to partial apply for closure #1 in ExtensionViewController.reportSafeAreaInsets(top:left:bottom:right:), v18);
}

- (void)revertAllChanges
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v12 - v4;
  v6 = type metadata accessor for TaskPriority();
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  v7 = swift_allocObject();
  swift_unknownObjectWeakInit();
  type metadata accessor for MainActor();
  selfCopy = self;

  v9 = static MainActor.shared.getter();
  v10 = swift_allocObject();
  v11 = MEMORY[0x1E69E85E0];
  v10[2] = v9;
  v10[3] = v11;
  v10[4] = v7;

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v5, &closure #1 in ExtensionViewController.revertAllChanges()partial apply, v10);
}

- (void)setMathDocument:(id)document
{
  documentCopy = document;
  selfCopy = self;
  v5 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;

  ExtensionViewController.setMathDocument(_:)();
  outlined consume of Data._Representation(v5, v7);
}

- (void)setMathResult:(id)result expressionUUID:(id)d
{
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = v10;
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  selfCopy = self;
  ExtensionViewController.setMathResult(_:expressionUUID:)(v9, v11, v8);

  (*(v6 + 8))(v8, v5);
}

- (void)setMathEnabled:(BOOL)enabled
{
  selfCopy = self;
  ExtensionViewController.setMathEnabled(_:)(enabled);
}

- (void)searchFor:(id)for ignoreCase:(BOOL)case wholeWords:(BOOL)words reply:(id)reply
{
  wordsCopy = words;
  caseCopy = case;
  v9 = _Block_copy(reply);
  v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = v11;
  _Block_copy(v9);
  selfCopy = self;
  specialized ExtensionViewController.search(for:ignoreCase:wholeWords:reply:)(v10, v12, caseCopy, wordsCopy, selfCopy, v9);
  _Block_release(v9);
  _Block_release(v9);
}

- (void)endSearch
{
  selfCopy = self;
  ExtensionViewController.endSearch()();
}

- (void)searchScrollToVisible:(int64_t)visible
{
  selfCopy = self;
  ExtensionViewController.searchScrollToVisible(_:)(visible);
}

- (void)handleLink:(id)link
{
  v4 = type metadata accessor for Notification();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Notification._unconditionallyBridgeFromObjectiveC(_:)();
  selfCopy = self;
  ExtensionViewController.handleLink(_:)();

  (*(v5 + 8))(v7, v4);
}

- (_TtC8PaperKit23ExtensionViewController)initWithNibName:(id)name bundle:(id)bundle
{
  if (name)
  {
    v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  bundleCopy = bundle;
  return ExtensionViewController.init(nibName:bundle:)(v5, v7, bundle);
}

@end