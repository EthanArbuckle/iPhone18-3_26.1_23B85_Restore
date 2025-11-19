@interface StickerLivePhotoConfirmationController
- (_TtC10StickerKit38StickerLivePhotoConfirmationController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)didTapLivePhotoView:(id)a3;
- (void)handleLiveButton;
- (void)imageAnalysisInteractionDidCompleteSubjectAnalysis:(id)a3;
- (void)loadView;
- (void)updateDimmingColor;
- (void)videoPreviewAvailableForImageAnalysisInteraction:(id)a3;
- (void)viewDidLoad;
- (void)viewWillDisappear:(BOOL)a3;
@end

@implementation StickerLivePhotoConfirmationController

- (void)updateDimmingColor
{
  v2 = self;
  sub_19A7037E0();
}

- (void)loadView
{
  v2 = self;
  sub_19A7040C0();
}

- (void)didTapLivePhotoView:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_19A704804(v4);
}

- (void)handleLiveButton
{
  v2 = self;
  sub_19A704AE8();
}

- (void)viewDidLoad
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFCD690);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v13 - v4;
  v6 = type metadata accessor for StickerLivePhotoConfirmationController();
  v13.receiver = self;
  v13.super_class = v6;
  v7 = self;
  [(StickerLivePhotoConfirmationController *)&v13 viewDidLoad];
  v8 = sub_19A7AB394();
  (*(*(v8 - 8) + 56))(v5, 1, 1, v8);
  sub_19A7AB354();
  v9 = v7;
  v10 = sub_19A7AB344();
  v11 = swift_allocObject();
  v12 = MEMORY[0x1E69E85E0];
  v11[2] = v10;
  v11[3] = v12;
  v11[4] = v9;
  sub_19A6816F0(0, 0, v5, &unk_19A7BEE90, v11);
}

- (void)viewWillDisappear:(BOOL)a3
{
  v3 = a3;
  v7.receiver = self;
  v7.super_class = type metadata accessor for StickerLivePhotoConfirmationController();
  v4 = v7.receiver;
  [(StickerLivePhotoConfirmationController *)&v7 viewWillDisappear:v3];
  v5 = [v4 presentedViewController];
  if (v5)
  {
    v6 = v5;
    sub_19A7A9604();
    if (swift_dynamicCastClass())
    {

      [v4 dismissViewControllerAnimated:v3 completion:0];
      swift_unknownObjectWeakAssign();
    }

    else
    {

      v4 = v6;
    }
  }
}

- (_TtC10StickerKit38StickerLivePhotoConfirmationController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)imageAnalysisInteractionDidCompleteSubjectAnalysis:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_19A709870(v4);
}

- (void)videoPreviewAvailableForImageAnalysisInteraction:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_19A70AF74();
}

@end