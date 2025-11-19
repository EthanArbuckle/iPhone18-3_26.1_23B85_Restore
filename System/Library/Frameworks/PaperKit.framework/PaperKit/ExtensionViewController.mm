@interface ExtensionViewController
- (_TtC8PaperKit23ExtensionViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)dealloc;
- (void)endSearch;
- (void)handleLink:(id)a3;
- (void)loadBookmark:(id)a3 readOnly:(BOOL)a4;
- (void)loadPaper:(id)a3 paperBookmark:(id)a4 coherenceContextBookmark:(id)a5 encrypted:(BOOL)a6 userInterfaceState:(int64_t)a7;
- (void)loadPaper:(id)a3 paperURL:(id)a4 coherenceContextURL:(id)a5 encrypted:(BOOL)a6 userInterfaceState:(int64_t)a7;
- (void)reportSafeAreaInsetsWithTop:(double)a3 left:(double)a4 bottom:(double)a5 right:(double)a6;
- (void)revertAllChanges;
- (void)searchFor:(id)a3 ignoreCase:(BOOL)a4 wholeWords:(BOOL)a5 reply:(id)a6;
- (void)searchScrollToVisible:(int64_t)a3;
- (void)setHasLiveStreamMessenger:(BOOL)a3;
- (void)setLinedPaperWithHorizontalLineSpacing:(double)a3 verticalLineSpacing:(double)a4 horizontalInset:(double)a5;
- (void)setMathDocument:(id)a3;
- (void)setMathEnabled:(BOOL)a3;
- (void)setMathResult:(id)a3 expressionUUID:(id)a4;
- (void)setPaperDocumentInlineThumbnailsVisible:(BOOL)a3;
- (void)setScreenPotentialHeadroom:(double)a3;
- (void)setTool:(id)a3;
- (void)setUserInterfaceStyle:(int64_t)a3;
- (void)setupWithData:(id)a3 transparentBackground:(BOOL)a4;
@end

@implementation ExtensionViewController

- (void)dealloc
{
  if (*(&self->super.super.super.isa + OBJC_IVAR____TtC8PaperKit23ExtensionViewController_hostRequestQueueSuspended) == 1)
  {
    v3 = *(&self->super.super.super.isa + OBJC_IVAR____TtC8PaperKit23ExtensionViewController_hostRequestQueue);
    v4 = self;
    dispatch_resume(v3);
  }

  else
  {
    v5 = self;
  }

  v6.receiver = self;
  v6.super_class = type metadata accessor for ExtensionViewController();
  [(ExtensionViewController *)&v6 dealloc];
}

- (void)loadPaper:(id)a3 paperURL:(id)a4 coherenceContextURL:(id)a5 encrypted:(BOOL)a6 userInterfaceState:(int64_t)a7
{
  v23 = a7;
  v7 = a6;
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
  if (a5)
  {
    static URL._unconditionallyBridgeFromObjectiveC(_:)();
    v20 = 0;
  }

  else
  {
    v20 = 1;
  }

  (*(v14 + 56))(v12, v20, 1, v13);
  v21 = self;
  ExtensionViewController.loadPaper(_:paperURL:coherenceContextURL:encrypted:userInterfaceState:)(v17, v19, v16, v12, v7, v23);

  outlined destroy of StocksKitCurrencyCache.Provider?(v12, &_s10Foundation3URLVSgMd);
  (*(v14 + 8))(v16, v13);
}

- (void)loadPaper:(id)a3 paperBookmark:(id)a4 coherenceContextBookmark:(id)a5 encrypted:(BOOL)a6 userInterfaceState:(int64_t)a7
{
  v8 = a6;
  v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v14 = v13;
  v15 = a4;
  v16 = self;
  v17 = a5;
  v18 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v20 = v19;

  if (v17)
  {
    v21 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v23 = v22;
  }

  else
  {
    v21 = 0;
    v23 = 0xF000000000000000;
  }

  ExtensionViewController.loadPaper(_:paperBookmark:coherenceContextBookmark:encrypted:userInterfaceState:)(v12, v14, v18, v20, v21, v23, v8, a7);
  outlined consume of Data?(v21, v23);
  outlined consume of Data._Representation(v18, v20);
}

- (void)loadBookmark:(id)a3 readOnly:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v10 = self;
  v7 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = v8;

  ExtensionViewController.loadBookmark(_:readOnly:)(v7, v9, v4);
  outlined consume of Data._Representation(v7, v9);
}

- (void)setupWithData:(id)a3 transparentBackground:(BOOL)a4
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v20 - v8;
  v10 = a3;
  v11 = self;
  v12 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v14 = v13;

  v15 = type metadata accessor for TaskPriority();
  (*(*(v15 - 8) + 56))(v9, 1, 1, v15);
  type metadata accessor for MainActor();
  v16 = v11;
  outlined copy of Data._Representation(v12, v14);
  v17 = static MainActor.shared.getter();
  v18 = swift_allocObject();
  v19 = MEMORY[0x1E69E85E0];
  *(v18 + 16) = v17;
  *(v18 + 24) = v19;
  *(v18 + 32) = v16;
  *(v18 + 40) = a4;
  *(v18 + 48) = v12;
  *(v18 + 56) = v14;
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v9, &async function pointer to partial apply for closure #1 in ExtensionViewController.setupWithData(_:transparentBackground:), v18);

  outlined consume of Data._Representation(v12, v14);
}

- (void)setTool:(id)a3
{
  v4 = a3;
  v5 = self;
  ExtensionViewController.setTool(_:)(v4);
}

- (void)setLinedPaperWithHorizontalLineSpacing:(double)a3 verticalLineSpacing:(double)a4 horizontalInset:(double)a5
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v18 - v10;
  v12 = type metadata accessor for TaskPriority();
  (*(*(v12 - 8) + 56))(v11, 1, 1, v12);
  v13 = swift_allocObject();
  swift_unknownObjectWeakInit();
  type metadata accessor for MainActor();
  v14 = self;

  v15 = static MainActor.shared.getter();
  v16 = swift_allocObject();
  v17 = MEMORY[0x1E69E85E0];
  *(v16 + 16) = v15;
  *(v16 + 24) = v17;
  *(v16 + 32) = v13;
  *(v16 + 40) = a3;
  *(v16 + 48) = a4;
  *(v16 + 56) = a5;

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v11, &async function pointer to partial apply for closure #1 in ExtensionViewController.setLinedPaper(horizontalLineSpacing:verticalLineSpacing:horizontalInset:), v16);
}

- (void)setHasLiveStreamMessenger:(BOOL)a3
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v13 - v6;
  v8 = type metadata accessor for TaskPriority();
  (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
  type metadata accessor for MainActor();
  v9 = self;
  v10 = static MainActor.shared.getter();
  v11 = swift_allocObject();
  v12 = MEMORY[0x1E69E85E0];
  *(v11 + 16) = v10;
  *(v11 + 24) = v12;
  *(v11 + 32) = a3;
  *(v11 + 40) = v9;
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v7, &async function pointer to partial apply for closure #1 in ExtensionViewController.setHasLiveStreamMessenger(_:), v11);
}

- (void)setUserInterfaceStyle:(int64_t)a3
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v14 - v6;
  v8 = type metadata accessor for TaskPriority();
  (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
  v9 = swift_allocObject();
  swift_unknownObjectWeakInit();
  type metadata accessor for MainActor();
  v10 = self;

  v11 = static MainActor.shared.getter();
  v12 = swift_allocObject();
  v13 = MEMORY[0x1E69E85E0];
  v12[2] = v11;
  v12[3] = v13;
  v12[4] = a3;
  v12[5] = v9;

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v7, &async function pointer to partial apply for closure #1 in ExtensionViewController.setUserInterfaceStyle(_:), v12);
}

- (void)setScreenPotentialHeadroom:(double)a3
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v14 - v6;
  v8 = type metadata accessor for TaskPriority();
  (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
  v9 = swift_allocObject();
  swift_unknownObjectWeakInit();
  type metadata accessor for MainActor();
  v10 = self;

  v11 = static MainActor.shared.getter();
  v12 = swift_allocObject();
  v13 = MEMORY[0x1E69E85E0];
  *(v12 + 16) = v11;
  *(v12 + 24) = v13;
  *(v12 + 32) = a3;
  *(v12 + 40) = v9;

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v7, &async function pointer to partial apply for closure #1 in ExtensionViewController.setScreenPotentialHeadroom(_:), v12);
}

- (void)setPaperDocumentInlineThumbnailsVisible:(BOOL)a3
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v14 - v6;
  v8 = type metadata accessor for TaskPriority();
  (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
  v9 = swift_allocObject();
  swift_unknownObjectWeakInit();
  type metadata accessor for MainActor();
  v10 = self;

  v11 = static MainActor.shared.getter();
  v12 = swift_allocObject();
  v13 = MEMORY[0x1E69E85E0];
  *(v12 + 16) = v11;
  *(v12 + 24) = v13;
  *(v12 + 32) = v9;
  *(v12 + 40) = a3;

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCytSg_Tt2g5(0, 0, v7, &async function pointer to partial apply for closure #1 in ExtensionViewController.setPaperDocumentInlineThumbnailsVisible(_:), v12);
}

- (void)reportSafeAreaInsetsWithTop:(double)a3 left:(double)a4 bottom:(double)a5 right:(double)a6
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v20 - v12;
  v14 = type metadata accessor for TaskPriority();
  (*(*(v14 - 8) + 56))(v13, 1, 1, v14);
  v15 = swift_allocObject();
  swift_unknownObjectWeakInit();
  type metadata accessor for MainActor();
  v16 = self;

  v17 = static MainActor.shared.getter();
  v18 = swift_allocObject();
  v19 = MEMORY[0x1E69E85E0];
  *(v18 + 16) = v17;
  *(v18 + 24) = v19;
  *(v18 + 32) = a3;
  *(v18 + 40) = a4;
  *(v18 + 48) = a5;
  *(v18 + 56) = a6;
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
  v8 = self;

  v9 = static MainActor.shared.getter();
  v10 = swift_allocObject();
  v11 = MEMORY[0x1E69E85E0];
  v10[2] = v9;
  v10[3] = v11;
  v10[4] = v7;

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v5, &closure #1 in ExtensionViewController.revertAllChanges()partial apply, v10);
}

- (void)setMathDocument:(id)a3
{
  v4 = a3;
  v8 = self;
  v5 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;

  ExtensionViewController.setMathDocument(_:)();
  outlined consume of Data._Representation(v5, v7);
}

- (void)setMathResult:(id)a3 expressionUUID:(id)a4
{
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = v10;
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = self;
  ExtensionViewController.setMathResult(_:expressionUUID:)(v9, v11, v8);

  (*(v6 + 8))(v8, v5);
}

- (void)setMathEnabled:(BOOL)a3
{
  v4 = self;
  ExtensionViewController.setMathEnabled(_:)(a3);
}

- (void)searchFor:(id)a3 ignoreCase:(BOOL)a4 wholeWords:(BOOL)a5 reply:(id)a6
{
  v6 = a5;
  v7 = a4;
  v9 = _Block_copy(a6);
  v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = v11;
  _Block_copy(v9);
  v13 = self;
  specialized ExtensionViewController.search(for:ignoreCase:wholeWords:reply:)(v10, v12, v7, v6, v13, v9);
  _Block_release(v9);
  _Block_release(v9);
}

- (void)endSearch
{
  v2 = self;
  ExtensionViewController.endSearch()();
}

- (void)searchScrollToVisible:(int64_t)a3
{
  v4 = self;
  ExtensionViewController.searchScrollToVisible(_:)(a3);
}

- (void)handleLink:(id)a3
{
  v4 = type metadata accessor for Notification();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Notification._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = self;
  ExtensionViewController.handleLink(_:)();

  (*(v5 + 8))(v7, v4);
}

- (_TtC8PaperKit23ExtensionViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  if (a3)
  {
    v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  v8 = a4;
  return ExtensionViewController.init(nibName:bundle:)(v5, v7, a4);
}

@end