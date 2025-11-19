@interface PaperMarkupViewController
- (NSUndoManager)undoManager;
- (_TtC8PaperKit25PaperMarkupViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)insertNewLineWithLineStartMarker:(BOOL)a3 lineEndMarker:(BOOL)a4;
- (void)insertNewShape:(int64_t)a3;
- (void)insertNewTextbox;
- (void)setEnableUndo:(BOOL)a3;
- (void)setScreenPotentialHeadroom:(double)a3;
- (void)setZoomRangeWithMin:(double)a3 max:(double)a4;
- (void)toolPickerIsRulerActiveDidChange:(id)a3;
- (void)toolPickerSelectedToolItemDidChange:(id)a3;
- (void)viewDidLoad;
- (void)xpc_receiveFileBookmark:(id)a3;
- (void)xpc_receiveMulticastData:(id)a3;
- (void)xpc_setContentVisibleFrame:(CGRect)a3 animated:(BOOL)a4;
- (void)xpc_startMulticastWithSharedContextSecurityScopedUrl:(id)a3;
@end

@implementation PaperMarkupViewController

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

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v7, &async function pointer to partial apply for closure #1 in PaperMarkupViewController.setScreenPotentialHeadroom(_:), v12);
}

- (void)setEnableUndo:(BOOL)a3
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

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v7, &async function pointer to partial apply for closure #1 in PaperMarkupViewController.setEnableUndo(_:), v12);
}

- (void)insertNewShape:(int64_t)a3
{
  v4 = self;
  PaperMarkupViewController.insertNewShape(_:)(a3);
}

- (void)insertNewLineWithLineStartMarker:(BOOL)a3 lineEndMarker:(BOOL)a4
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v16 - v8;
  v10 = type metadata accessor for TaskPriority();
  (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
  v11 = swift_allocObject();
  swift_unknownObjectWeakInit();
  type metadata accessor for MainActor();
  v12 = self;

  v13 = static MainActor.shared.getter();
  v14 = swift_allocObject();
  v15 = MEMORY[0x1E69E85E0];
  *(v14 + 16) = v13;
  *(v14 + 24) = v15;
  *(v14 + 32) = v11;
  *(v14 + 40) = a3;
  *(v14 + 41) = a4;

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
  v8 = self;

  v9 = static MainActor.shared.getter();
  v10 = swift_allocObject();
  v11 = MEMORY[0x1E69E85E0];
  v10[2] = v9;
  v10[3] = v11;
  v10[4] = v7;

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCytSg_Tt2g5(0, 0, v5, &async function pointer to partial apply for closure #1 in PaperMarkupViewController.insertNewTextbox(), v10);
}

- (void)xpc_setContentVisibleFrame:(CGRect)a3 animated:(BOOL)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v19 - v11;
  v13 = type metadata accessor for TaskPriority();
  (*(*(v13 - 8) + 56))(v12, 1, 1, v13);
  v14 = swift_allocObject();
  swift_unknownObjectWeakInit();
  type metadata accessor for MainActor();
  v15 = self;

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
  *(v17 + 72) = a4;

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCytSg_Tt2g5(0, 0, v12, &async function pointer to partial apply for closure #1 in PaperMarkupViewController.xpc_setContentVisibleFrame(_:animated:), v17);
}

- (void)setZoomRangeWithMin:(double)a3 max:(double)a4
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v16 - v8;
  v10 = type metadata accessor for TaskPriority();
  (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
  v11 = swift_allocObject();
  swift_unknownObjectWeakInit();
  type metadata accessor for MainActor();
  v12 = self;

  v13 = static MainActor.shared.getter();
  v14 = swift_allocObject();
  v15 = MEMORY[0x1E69E85E0];
  *(v14 + 16) = v13;
  *(v14 + 24) = v15;
  *(v14 + 32) = v11;
  *(v14 + 40) = a3;
  *(v14 + 48) = a4;

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCytSg_Tt2g5(0, 0, v9, &async function pointer to partial apply for closure #1 in PaperMarkupViewController.setZoomRange(min:max:), v14);
}

- (void)xpc_receiveMulticastData:(id)a3
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v18 - v6;
  v8 = a3;
  v9 = self;
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

- (void)xpc_receiveFileBookmark:(id)a3
{
  v4 = a3;
  v8 = self;
  v5 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;

  specialized PaperMarkupViewController.xpc_receiveFileBookmark(_:)(v5, v7);
  outlined consume of Data._Representation(v5, v7);
}

- (void)xpc_startMulticastWithSharedContextSecurityScopedUrl:(id)a3
{
  v3 = a3;
  if (a3)
  {
    v4 = self;
    v5 = v3;
    v3 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v6;
  }

  else
  {
    v8 = self;
    v7 = 0xF000000000000000;
  }

  PaperMarkupViewController.xpc_startMulticast(sharedContextSecurityScopedUrl:)(v3, v7);
  outlined consume of Data?(v3, v7);
}

- (NSUndoManager)undoManager
{
  swift_getKeyPath();
  v7 = self;
  _s8PaperKit0A20MarkupViewControllerCAC11Observation10ObservableAAWlTm_0(&lazy protocol witness table cache variable for type PaperMarkupViewController and conformance PaperMarkupViewController, 255, type metadata accessor for PaperMarkupViewController);
  v3 = self;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (*(&v3->super.super.super.isa + OBJC_IVAR____TtC8PaperKit25PaperMarkupViewController__undoIsEnabled) == 1)
  {
    v6.receiver = v3;
    v6.super_class = type metadata accessor for PaperMarkupViewController();
    v4 = [(PaperMarkupViewController *)&v6 undoManager];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)viewDidLoad
{
  v2 = self;
  PaperMarkupViewController.viewDidLoad()();
}

- (void)toolPickerSelectedToolItemDidChange:(id)a3
{
  v4 = a3;
  v5 = self;
  PaperMarkupViewController.toolPickerSelectedToolItemDidChange(_:)(v4);
}

- (void)toolPickerIsRulerActiveDidChange:(id)a3
{
  v4 = a3;
  v5 = self;
  PaperMarkupViewController.isRulerActive.setter([v4 isRulerActive]);
}

- (_TtC8PaperKit25PaperMarkupViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end