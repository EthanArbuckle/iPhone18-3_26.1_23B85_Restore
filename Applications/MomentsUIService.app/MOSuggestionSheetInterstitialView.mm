@interface MOSuggestionSheetInterstitialView
- (_TtC16MomentsUIService33MOSuggestionSheetInterstitialView)initWithNibName:(id)name bundle:(id)bundle;
- (void)addButtonTapped;
- (void)cancelSheet;
- (void)didToggleListCarouselViewButtonWithCarouselIndex:(int64_t)index;
- (void)handleContentSizeChanged;
- (void)handleLabelEditTap:(id)tap;
- (void)journalButtonTapped:(id)tapped;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLoad;
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
@end

@implementation MOSuggestionSheetInterstitialView

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  height = size.height;
  width = size.width;
  swift_unknownObjectRetain();
  selfCopy = self;
  MOSuggestionSheetInterstitialView.viewWillTransition(to:with:)(coordinator, width, height);
  swift_unknownObjectRelease();
}

- (void)viewDidLoad
{
  v6.receiver = self;
  v6.super_class = type metadata accessor for MOSuggestionSheetInterstitialView();
  v2 = v6.receiver;
  [(MOSuggestionSheetInterstitialView *)&v6 viewDidLoad];
  view = [v2 view];
  if (view)
  {
    v4 = view;
    systemBackgroundColor = [objc_opt_self() systemBackgroundColor];
    [v4 setBackgroundColor:systemBackgroundColor];
  }

  else
  {
    __break(1u);
  }
}

- (void)viewDidDisappear:(BOOL)disappear
{
  selfCopy = self;
  MOSuggestionSheetInterstitialView.viewDidDisappear(_:)(disappear);
}

- (void)cancelSheet
{
  v2 = one-time initialization token for shared;
  selfCopy = self;
  if (v2 != -1)
  {
    swift_once();
  }

  (*(*static MOSuggestionAssetCacheManager.shared + 288))();
  [(MOSuggestionSheetInterstitialView *)selfCopy dismissViewControllerAnimated:1 completion:0];
}

- (void)journalButtonTapped:(id)tapped
{
  tappedCopy = tapped;
  selfCopy = self;
  specialized MOSuggestionSheetInterstitialView.journalButtonTapped(_:)();
}

- (void)addButtonTapped
{
  selfCopy = self;
  MOSuggestionSheetInterstitialView.addButtonTapped()();
}

- (void)handleContentSizeChanged
{
  selfCopy = self;
  MOSuggestionSheetInterstitialView.updateTitleLabelString()();
}

- (void)handleLabelEditTap:(id)tap
{
  tapCopy = tap;
  selfCopy = self;
  specialized MOSuggestionSheetInterstitialView.handleLabelEditTap(_:)();
}

- (void)didToggleListCarouselViewButtonWithCarouselIndex:(int64_t)index
{
  selfCopy = self;
  specialized MOSuggestionSheetInterstitialView.didToggleListCarouselViewButton(carouselIndex:)();
}

- (_TtC16MomentsUIService33MOSuggestionSheetInterstitialView)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end