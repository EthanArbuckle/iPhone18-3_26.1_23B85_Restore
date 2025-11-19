@interface StickerLivePhotoConfirmationController
- (_TtC22StickersUltraExtension38StickerLivePhotoConfirmationController)initWithNibName:(id)a3 bundle:(id)a4;
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
  sub_10005A664();
}

- (void)loadView
{
  v2 = self;
  sub_10005B9E0();
}

- (void)didTapLivePhotoView:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_10005C154(v4);
}

- (void)handleLiveButton
{
  v2 = self;
  sub_10005C478();
}

- (void)viewWillDisappear:(BOOL)a3
{
  v4 = self;
  sub_10005C7D4(a3);
}

- (void)viewDidLoad
{
  v3 = sub_100006D40(&unk_1000B2960);
  __chkstk_darwin(v3 - 8);
  v5 = &v12 - v4;
  v6 = type metadata accessor for StickerLivePhotoConfirmationController(0);
  v12.receiver = self;
  v12.super_class = v6;
  v7 = self;
  [(StickerLivePhotoConfirmationController *)&v12 viewDidLoad];
  v8 = sub_10007D990();
  (*(*(v8 - 8) + 56))(v5, 1, 1, v8);
  sub_10007D960();
  v9 = v7;
  v10 = sub_10007D950();
  v11 = swift_allocObject();
  v11[2] = v10;
  v11[3] = &protocol witness table for MainActor;
  v11[4] = v9;
  sub_100009514(0, 0, v5, &unk_10008E960, v11);
}

- (_TtC22StickersUltraExtension38StickerLivePhotoConfirmationController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)imageAnalysisInteractionDidCompleteSubjectAnalysis:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_100060E94(v4);
}

- (void)videoPreviewAvailableForImageAnalysisInteraction:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_100062ED0();
}

@end