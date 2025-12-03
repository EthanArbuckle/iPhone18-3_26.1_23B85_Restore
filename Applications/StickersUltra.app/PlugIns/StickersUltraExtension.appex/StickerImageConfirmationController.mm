@interface StickerImageConfirmationController
- (_TtC22StickersUltraExtension34StickerImageConfirmationController)initWithNibName:(id)name bundle:(id)bundle;
- (void)didTapImageView:(id)view;
- (void)imageAnalysisInteractionDidCompleteSubjectAnalysis:(id)analysis;
- (void)loadView;
- (void)viewDidLoad;
- (void)viewWillDisappear:(BOOL)disappear;
@end

@implementation StickerImageConfirmationController

- (void)loadView
{
  selfCopy = self;
  sub_100007DDC();
}

- (void)didTapImageView:(id)view
{
  viewCopy = view;
  selfCopy = self;
  sub_100008800(viewCopy);
}

- (void)viewDidLoad
{
  sub_100006D40(&unk_1000B2960);
  __chkstk_darwin();
  v4 = &v11 - v3;
  v5 = type metadata accessor for StickerImageConfirmationController();
  v11.receiver = self;
  v11.super_class = v5;
  selfCopy = self;
  [(StickerImageConfirmationController *)&v11 viewDidLoad];
  v7 = sub_10007D990();
  (*(*(v7 - 8) + 56))(v4, 1, 1, v7);
  sub_10007D960();
  v8 = selfCopy;
  v9 = sub_10007D950();
  v10 = swift_allocObject();
  v10[2] = v9;
  v10[3] = &protocol witness table for MainActor;
  v10[4] = v8;
  sub_100009514(0, 0, v4, &unk_10008C4C8, v10);
}

- (void)viewWillDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  v7.receiver = self;
  v7.super_class = type metadata accessor for StickerImageConfirmationController();
  v4 = v7.receiver;
  [(StickerImageConfirmationController *)&v7 viewWillDisappear:disappearCopy];
  presentedViewController = [v4 presentedViewController];
  if (presentedViewController)
  {
    v6 = presentedViewController;
    sub_10007C850();
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

- (_TtC22StickersUltraExtension34StickerImageConfirmationController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)imageAnalysisInteractionDidCompleteSubjectAnalysis:(id)analysis
{
  analysisCopy = analysis;
  selfCopy = self;
  sub_100009D20(analysisCopy);
}

@end