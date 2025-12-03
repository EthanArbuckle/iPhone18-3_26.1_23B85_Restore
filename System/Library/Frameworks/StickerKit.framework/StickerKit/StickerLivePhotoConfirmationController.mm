@interface StickerLivePhotoConfirmationController
- (_TtC10StickerKit38StickerLivePhotoConfirmationController)initWithNibName:(id)name bundle:(id)bundle;
- (void)didTapLivePhotoView:(id)view;
- (void)handleLiveButton;
- (void)imageAnalysisInteractionDidCompleteSubjectAnalysis:(id)analysis;
- (void)loadView;
- (void)updateDimmingColor;
- (void)videoPreviewAvailableForImageAnalysisInteraction:(id)interaction;
- (void)viewDidLoad;
- (void)viewWillDisappear:(BOOL)disappear;
@end

@implementation StickerLivePhotoConfirmationController

- (void)updateDimmingColor
{
  selfCopy = self;
  sub_19A7037E0();
}

- (void)loadView
{
  selfCopy = self;
  sub_19A7040C0();
}

- (void)didTapLivePhotoView:(id)view
{
  viewCopy = view;
  selfCopy = self;
  sub_19A704804(viewCopy);
}

- (void)handleLiveButton
{
  selfCopy = self;
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
  selfCopy = self;
  [(StickerLivePhotoConfirmationController *)&v13 viewDidLoad];
  v8 = sub_19A7AB394();
  (*(*(v8 - 8) + 56))(v5, 1, 1, v8);
  sub_19A7AB354();
  v9 = selfCopy;
  v10 = sub_19A7AB344();
  v11 = swift_allocObject();
  v12 = MEMORY[0x1E69E85E0];
  v11[2] = v10;
  v11[3] = v12;
  v11[4] = v9;
  sub_19A6816F0(0, 0, v5, &unk_19A7BEE90, v11);
}

- (void)viewWillDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  v7.receiver = self;
  v7.super_class = type metadata accessor for StickerLivePhotoConfirmationController();
  v4 = v7.receiver;
  [(StickerLivePhotoConfirmationController *)&v7 viewWillDisappear:disappearCopy];
  presentedViewController = [v4 presentedViewController];
  if (presentedViewController)
  {
    v6 = presentedViewController;
    sub_19A7A9604();
    if (swift_dynamicCastClass())
    {

      [v4 dismissViewControllerAnimated:disappearCopy completion:0];
      swift_unknownObjectWeakAssign();
    }

    else
    {

      v4 = v6;
    }
  }
}

- (_TtC10StickerKit38StickerLivePhotoConfirmationController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)imageAnalysisInteractionDidCompleteSubjectAnalysis:(id)analysis
{
  analysisCopy = analysis;
  selfCopy = self;
  sub_19A709870(analysisCopy);
}

- (void)videoPreviewAvailableForImageAnalysisInteraction:(id)interaction
{
  interactionCopy = interaction;
  selfCopy = self;
  sub_19A70AF74();
}

@end