@interface MOSuggestionSheetViewController
- (_TtC16MomentsUIService31MOSuggestionSheetViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)cancelSheet;
- (void)handleContentSizeChanged;
- (void)pressedSegmentControl;
- (void)shouldDismissOnboarding;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidLoad;
- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4;
@end

@implementation MOSuggestionSheetViewController

- (void)shouldDismissOnboarding
{
  v2 = self;
  MOSuggestionSheetViewController.shouldDismissOnboarding()();
}

- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4
{
  height = a3.height;
  width = a3.width;
  swift_unknownObjectRetain();
  v8 = self;
  MOSuggestionSheetViewController.viewWillTransition(to:with:)(a4, width, height);
  swift_unknownObjectRelease();
}

- (void)handleContentSizeChanged
{
  v2 = *(&self->super.super.super.isa + OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetViewController_suggestionCollectionView);
  if (v2)
  {
    v6 = self;
    v3 = v2;
    v4 = [(MOSuggestionSheetViewController *)v6 traitCollection];
    v5 = [v4 preferredContentSizeCategory];

    (*((swift_isaMask & *v3) + 0x260))(v5);
  }
}

- (void)cancelSheet
{
  v2 = self;
  MOSuggestionSheetViewController.cancelSheet()();
}

- (void)viewDidLoad
{
  v6.receiver = self;
  v6.super_class = type metadata accessor for MOSuggestionSheetViewController();
  v2 = v6.receiver;
  [(MOSuggestionSheetViewController *)&v6 viewDidLoad];
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

- (void)viewDidAppear:(BOOL)a3
{
  v4 = self;
  MOSuggestionSheetViewController.viewDidAppear(_:)(a3);
}

- (void)pressedSegmentControl
{
  v2 = self;
  MOSuggestionSheetViewController.pressedSegmentControl()();
}

- (_TtC16MomentsUIService31MOSuggestionSheetViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end