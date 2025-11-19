@interface StickerImageConfirmationController
- (_TtC22StickersUltraExtension34StickerImageConfirmationController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)didTapImageView:(id)a3;
- (void)imageAnalysisInteractionDidCompleteSubjectAnalysis:(id)a3;
- (void)loadView;
- (void)viewDidLoad;
- (void)viewWillDisappear:(BOOL)a3;
@end

@implementation StickerImageConfirmationController

- (void)loadView
{
  v2 = self;
  sub_100007DDC();
}

- (void)didTapImageView:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_100008800(v4);
}

- (void)viewDidLoad
{
  sub_100006D40(&unk_1000B2960);
  __chkstk_darwin();
  v4 = &v11 - v3;
  v5 = type metadata accessor for StickerImageConfirmationController();
  v11.receiver = self;
  v11.super_class = v5;
  v6 = self;
  [(StickerImageConfirmationController *)&v11 viewDidLoad];
  v7 = sub_10007D990();
  (*(*(v7 - 8) + 56))(v4, 1, 1, v7);
  sub_10007D960();
  v8 = v6;
  v9 = sub_10007D950();
  v10 = swift_allocObject();
  v10[2] = v9;
  v10[3] = &protocol witness table for MainActor;
  v10[4] = v8;
  sub_100009514(0, 0, v4, &unk_10008C4C8, v10);
}

- (void)viewWillDisappear:(BOOL)a3
{
  v3 = a3;
  v7.receiver = self;
  v7.super_class = type metadata accessor for StickerImageConfirmationController();
  v4 = v7.receiver;
  [(StickerImageConfirmationController *)&v7 viewWillDisappear:v3];
  v5 = [v4 presentedViewController];
  if (v5)
  {
    v6 = v5;
    sub_10007C850();
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

- (_TtC22StickersUltraExtension34StickerImageConfirmationController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)imageAnalysisInteractionDidCompleteSubjectAnalysis:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_100009D20(v4);
}

@end