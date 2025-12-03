@interface PaperMarkupViewController
- (NSUndoManager)undoManager;
- (_TtC8PaperKit25PaperMarkupViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)insertNewLineWithLineStartMarker:(BOOL)marker lineEndMarker:(BOOL)endMarker;
- (void)insertNewShape:(int64_t)shape;
- (void)insertNewTextbox;
- (void)setEnableUndo:(BOOL)undo;
- (void)setScreenPotentialHeadroom:(double)headroom;
- (void)setZoomRangeWithMin:(double)min max:(double)max;
- (void)toolPickerIsRulerActiveDidChange:(id)change;
- (void)toolPickerSelectedToolItemDidChange:(id)change;
- (void)viewDidLoad;
- (void)xpc_receiveFileBookmark:(id)bookmark;
- (void)xpc_receiveMulticastData:(id)data;
- (void)xpc_setContentVisibleFrame:(CGRect)frame animated:(BOOL)animated;
- (void)xpc_startMulticastWithSharedContextSecurityScopedUrl:(id)url;
@end

@implementation PaperMarkupViewController

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

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v7, &async function pointer to partial apply for closure #1 in PaperMarkupViewController.setScreenPotentialHeadroom(_:), v12);
}

- (void)setEnableUndo:(BOOL)undo
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
  *(v12 + 32) = undo;
  *(v12 + 40) = v9;

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v7, &async function pointer to partial apply for closure #1 in PaperMarkupViewController.setEnableUndo(_:), v12);
}

- (void)insertNewShape:(int64_t)shape
{
  selfCopy = self;
  PaperMarkupViewController.insertNewShape(_:)(shape);
}

- (void)insertNewLineWithLineStartMarker:(BOOL)marker lineEndMarker:(BOOL)endMarker
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v16 - v8;
  v10 = type metadata accessor for TaskPriority();
  (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
  v11 = swift_allocObject();
  swift_unknownObjectWeakInit();
  type metadata accessor for MainActor();
  selfCopy = self;

  v13 = static MainActor.shared.getter();
  v14 = swift_allocObject();
  v15 = MEMORY[0x1E69E85E0];
  *(v14 + 16) = v13;
  *(v14 + 24) = v15;
  *(v14 + 32) = v11;
  *(v14 + 40) = marker;
  *(v14 + 41) = endMarker;

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCytSg_Tt2g5(0, 0, v9, &async function pointer to partial apply for closure #1 in PaperMarkupViewController.insertNewLine(lineStartMarker:lineEndMarker:), v14);
}

- (void)insertNewTextbox
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

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCytSg_Tt2g5(0, 0, v5, &async function pointer to partial apply for closure #1 in PaperMarkupViewController.insertNewTextbox(), v10);
}

- (void)xpc_setContentVisibleFrame:(CGRect)frame animated:(BOOL)animated
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v19 - v11;
  v13 = type metadata accessor for TaskPriority();
  (*(*(v13 - 8) + 56))(v12, 1, 1, v13);
  v14 = swift_allocObject();
  swift_unknownObjectWeakInit();
  type metadata accessor for MainActor();
  selfCopy = self;

  v16 = static MainActor.shared.getter();
  v17 = swift_allocObject();
  v18 = MEMORY[0x1E69E85E0];
  *(v17 + 16) = v16;
  *(v17 + 24) = v18;
  *(v17 + 32) = v14;
  *(v17 + 40) = x;
  *(v17 + 48) = y;
  *(v17 + 56) = width;
  *(v17 + 64) = height;
  *(v17 + 72) = animated;

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCytSg_Tt2g5(0, 0, v12, &async function pointer to partial apply for closure #1 in PaperMarkupViewController.xpc_setContentVisibleFrame(_:animated:), v17);
}

- (void)setZoomRangeWithMin:(double)min max:(double)max
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v16 - v8;
  v10 = type metadata accessor for TaskPriority();
  (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
  v11 = swift_allocObject();
  swift_unknownObjectWeakInit();
  type metadata accessor for MainActor();
  selfCopy = self;

  v13 = static MainActor.shared.getter();
  v14 = swift_allocObject();
  v15 = MEMORY[0x1E69E85E0];
  *(v14 + 16) = v13;
  *(v14 + 24) = v15;
  *(v14 + 32) = v11;
  *(v14 + 40) = min;
  *(v14 + 48) = max;

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCytSg_Tt2g5(0, 0, v9, &async function pointer to partial apply for closure #1 in PaperMarkupViewController.setZoomRange(min:max:), v14);
}

- (void)xpc_receiveMulticastData:(id)data
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v18 - v6;
  dataCopy = data;
  selfCopy = self;
  v10 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = v11;

  v13 = type metadata accessor for TaskPriority();
  (*(*(v13 - 8) + 56))(v7, 1, 1, v13);
  v14 = swift_allocObject();
  swift_unknownObjectWeakInit();
  type metadata accessor for MainActor();

  outlined copy of Data._Representation(v10, v12);
  v15 = static MainActor.shared.getter();
  v16 = swift_allocObject();
  v17 = MEMORY[0x1E69E85E0];
  v16[2] = v15;
  v16[3] = v17;
  v16[4] = v14;
  v16[5] = v10;
  v16[6] = v12;

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCytSg_Tt2g5(0, 0, v7, &async function pointer to partial apply for closure #1 in PaperMarkupViewController.xpc_receiveMulticastData(_:), v16);

  outlined consume of Data._Representation(v10, v12);
}

- (void)xpc_receiveFileBookmark:(id)bookmark
{
  bookmarkCopy = bookmark;
  selfCopy = self;
  v5 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;

  specialized PaperMarkupViewController.xpc_receiveFileBookmark(_:)(v5, v7);
  outlined consume of Data._Representation(v5, v7);
}

- (void)xpc_startMulticastWithSharedContextSecurityScopedUrl:(id)url
{
  urlCopy = url;
  if (url)
  {
    selfCopy = self;
    v5 = urlCopy;
    urlCopy = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v6;
  }

  else
  {
    selfCopy2 = self;
    v7 = 0xF000000000000000;
  }

  PaperMarkupViewController.xpc_startMulticast(sharedContextSecurityScopedUrl:)(urlCopy, v7);
  outlined consume of Data?(urlCopy, v7);
}

- (NSUndoManager)undoManager
{
  swift_getKeyPath();
  selfCopy = self;
  _s8PaperKit0A20MarkupViewControllerCAC11Observation10ObservableAAWlTm_0(&lazy protocol witness table cache variable for type PaperMarkupViewController and conformance PaperMarkupViewController, 255, type metadata accessor for PaperMarkupViewController);
  selfCopy2 = self;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (*(&selfCopy2->super.super.super.isa + OBJC_IVAR____TtC8PaperKit25PaperMarkupViewController__undoIsEnabled) == 1)
  {
    v6.receiver = selfCopy2;
    v6.super_class = type metadata accessor for PaperMarkupViewController();
    undoManager = [(PaperMarkupViewController *)&v6 undoManager];
  }

  else
  {
    undoManager = 0;
  }

  return undoManager;
}

- (void)viewDidLoad
{
  selfCopy = self;
  PaperMarkupViewController.viewDidLoad()();
}

- (void)toolPickerSelectedToolItemDidChange:(id)change
{
  changeCopy = change;
  selfCopy = self;
  PaperMarkupViewController.toolPickerSelectedToolItemDidChange(_:)(changeCopy);
}

- (void)toolPickerIsRulerActiveDidChange:(id)change
{
  changeCopy = change;
  selfCopy = self;
  PaperMarkupViewController.isRulerActive.setter([changeCopy isRulerActive]);
}

- (_TtC8PaperKit25PaperMarkupViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end