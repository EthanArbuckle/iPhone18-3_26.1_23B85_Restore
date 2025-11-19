@interface MOSuggestionSheetInterstitialView
- (_TtC16MomentsUIService33MOSuggestionSheetInterstitialView)initWithNibName:(id)a3 bundle:(id)a4;
- (void)addButtonTapped;
- (void)cancelSheet;
- (void)didToggleListCarouselViewButtonWithCarouselIndex:(int64_t)a3;
- (void)handleContentSizeChanged;
- (void)handleLabelEditTap:(id)a3;
- (void)journalButtonTapped:(id)a3;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewDidLoad;
- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4;
@end

@implementation MOSuggestionSheetInterstitialView

- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4
{
  height = a3.height;
  width = a3.width;
  swift_unknownObjectRetain();
  v8 = self;
  MOSuggestionSheetInterstitialView.viewWillTransition(to:with:)(a4, width, height);
  swift_unknownObjectRelease();
}

- (void)viewDidLoad
{
  v6.receiver = self;
  v6.super_class = type metadata accessor for MOSuggestionSheetInterstitialView();
  v2 = v6.receiver;
  [(MOSuggestionSheetInterstitialView *)&v6 viewDidLoad];
  v3 = [v2 view];
  if (v3)
  {
    v4 = v3;
    v5 = [objc_opt_self() systemBackgroundColor];
    [v4 setBackgroundColor:v5];
  }

  else
  {
    __break(1u);
  }
}

- (void)viewDidDisappear:(BOOL)a3
{
  v4 = self;
  MOSuggestionSheetInterstitialView.viewDidDisappear(_:)(a3);
}

- (void)cancelSheet
{
  v2 = one-time initialization token for shared;
  v3 = self;
  if (v2 != -1)
  {
    swift_once();
  }

  (*(*static MOSuggestionAssetCacheManager.shared + 288))();
  [(MOSuggestionSheetInterstitialView *)v3 dismissViewControllerAnimated:1 completion:0];
}

- (void)journalButtonTapped:(id)a3
{
  v4 = a3;
  v5 = self;
  specialized MOSuggestionSheetInterstitialView.journalButtonTapped(_:)();
}

- (void)addButtonTapped
{
  v2 = self;
  MOSuggestionSheetInterstitialView.addButtonTapped()();
}

- (void)handleContentSizeChanged
{
  v2 = self;
  MOSuggestionSheetInterstitialView.updateTitleLabelString()();
}

- (void)handleLabelEditTap:(id)a3
{
  v4 = a3;
  v5 = self;
  specialized MOSuggestionSheetInterstitialView.handleLabelEditTap(_:)();
}

- (void)didToggleListCarouselViewButtonWithCarouselIndex:(int64_t)a3
{
  v3 = self;
  specialized MOSuggestionSheetInterstitialView.didToggleListCarouselViewButton(carouselIndex:)();
}

- (_TtC16MomentsUIService33MOSuggestionSheetInterstitialView)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end