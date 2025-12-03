@interface MOSuggestionSheetViewController
- (_TtC16MomentsUIService31MOSuggestionSheetViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)cancelSheet;
- (void)handleContentSizeChanged;
- (void)pressedSegmentControl;
- (void)shouldDismissOnboarding;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLoad;
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
@end

@implementation MOSuggestionSheetViewController

- (void)shouldDismissOnboarding
{
  selfCopy = self;
  MOSuggestionSheetViewController.shouldDismissOnboarding()();
}

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  height = size.height;
  width = size.width;
  swift_unknownObjectRetain();
  selfCopy = self;
  MOSuggestionSheetViewController.viewWillTransition(to:with:)(coordinator, width, height);
  swift_unknownObjectRelease();
}

- (void)handleContentSizeChanged
{
  v2 = *(&self->super.super.super.isa + OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetViewController_suggestionCollectionView);
  if (v2)
  {
    selfCopy = self;
    v3 = v2;
    traitCollection = [(MOSuggestionSheetViewController *)selfCopy traitCollection];
    preferredContentSizeCategory = [traitCollection preferredContentSizeCategory];

    (*((swift_isaMask & *v3) + 0x260))(preferredContentSizeCategory);
  }
}

- (void)cancelSheet
{
  selfCopy = self;
  MOSuggestionSheetViewController.cancelSheet()();
}

- (void)viewDidLoad
{
  v6.receiver = self;
  v6.super_class = type metadata accessor for MOSuggestionSheetViewController();
  v2 = v6.receiver;
  [(MOSuggestionSheetViewController *)&v6 viewDidLoad];
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

- (void)viewDidAppear:(BOOL)appear
{
  selfCopy = self;
  MOSuggestionSheetViewController.viewDidAppear(_:)(appear);
}

- (void)pressedSegmentControl
{
  selfCopy = self;
  MOSuggestionSheetViewController.pressedSegmentControl()();
}

- (_TtC16MomentsUIService31MOSuggestionSheetViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end