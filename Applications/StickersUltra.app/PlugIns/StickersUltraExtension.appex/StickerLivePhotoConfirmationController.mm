@interface StickerLivePhotoConfirmationController
- (_TtC22StickersUltraExtension38StickerLivePhotoConfirmationController)initWithNibName:(id)name bundle:(id)bundle;
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
  sub_10005A664();
}

- (void)loadView
{
  selfCopy = self;
  sub_10005B9E0();
}

- (void)didTapLivePhotoView:(id)view
{
  viewCopy = view;
  selfCopy = self;
  sub_10005C154(viewCopy);
}

- (void)handleLiveButton
{
  selfCopy = self;
  sub_10005C478();
}

- (void)viewWillDisappear:(BOOL)disappear
{
  selfCopy = self;
  sub_10005C7D4(disappear);
}

- (void)viewDidLoad
{
  v3 = sub_100006D40(&unk_1000B2960);
  __chkstk_darwin(v3 - 8);
  v5 = &v12 - v4;
  v6 = type metadata accessor for StickerLivePhotoConfirmationController(0);
  v12.receiver = self;
  v12.super_class = v6;
  selfCopy = self;
  [(StickerLivePhotoConfirmationController *)&v12 viewDidLoad];
  v8 = sub_10007D990();
  (*(*(v8 - 8) + 56))(v5, 1, 1, v8);
  sub_10007D960();
  v9 = selfCopy;
  v10 = sub_10007D950();
  v11 = swift_allocObject();
  v11[2] = v10;
  v11[3] = &protocol witness table for MainActor;
  v11[4] = v9;
  sub_100009514(0, 0, v5, &unk_10008E960, v11);
}

- (_TtC22StickersUltraExtension38StickerLivePhotoConfirmationController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)imageAnalysisInteractionDidCompleteSubjectAnalysis:(id)analysis
{
  analysisCopy = analysis;
  selfCopy = self;
  sub_100060E94(analysisCopy);
}

- (void)videoPreviewAvailableForImageAnalysisInteraction:(id)interaction
{
  interactionCopy = interaction;
  selfCopy = self;
  sub_100062ED0();
}

@end