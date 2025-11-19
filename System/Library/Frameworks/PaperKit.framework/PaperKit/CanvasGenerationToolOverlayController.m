@interface CanvasGenerationToolOverlayController
- (_TtC8PaperKit37CanvasGenerationToolOverlayController)init;
- (void)imageGenerationControllerShouldShowImageGenerationUIDidChange:(id)a3;
@end

@implementation CanvasGenerationToolOverlayController

- (void)imageGenerationControllerShouldShowImageGenerationUIDidChange:(id)a3
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v12 - v5;
  v7 = type metadata accessor for TaskPriority();
  (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
  type metadata accessor for MainActor();
  v8 = self;
  v9 = static MainActor.shared.getter();
  v10 = swift_allocObject();
  v11 = MEMORY[0x1E69E85E0];
  v10[2] = v9;
  v10[3] = v11;
  v10[4] = v8;
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v6, &async function pointer to partial apply for closure #1 in CanvasGenerationToolOverlayController.imageGenerationControllerShouldShowImageGenerationUIDidChange(_:), v10);
}

- (_TtC8PaperKit37CanvasGenerationToolOverlayController)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end