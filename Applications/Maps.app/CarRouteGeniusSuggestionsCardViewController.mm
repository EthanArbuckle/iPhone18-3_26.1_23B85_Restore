@interface CarRouteGeniusSuggestionsCardViewController
- (CarChromeViewController)chromeViewController;
- (CarRouteGeniusSuggestionsCardViewController)init;
- (GuidanceETA)currentETA;
- (MapsSuggestionsRouteGeniusEntry)currentSuggestion;
- (void)becomeCurrent;
- (void)resignCurrent;
- (void)setCurrentETA:(id)a;
- (void)setCurrentSuggestion:(id)suggestion;
- (void)setRouteIsNavigable:(BOOL)navigable;
- (void)viewDidLoad;
@end

@implementation CarRouteGeniusSuggestionsCardViewController

- (void)resignCurrent
{
  if ((MapsFeature_IsEnabled_LocationIntelligenceMaps() & 1) == 0)
  {
    suggestionsView = [(CarRouteGeniusSuggestionsCardViewController *)self suggestionsView];
    [suggestionsView stopHideSelectLabelTimer];
  }
}

- (void)becomeCurrent
{
  if (MapsFeature_IsEnabled_LocationIntelligenceMaps())
  {
    currentSuggestion = [(CarRouteGeniusSuggestionsCardViewController *)self currentSuggestion];
    route = [currentSuggestion route];

    v4 = route;
    if (!route)
    {
      goto LABEL_7;
    }

    if ([route isFamiliarRoute])
    {
      chromeViewController = [(CarRouteGeniusSuggestionsCardViewController *)self chromeViewController];
      [chromeViewController captureUserAction:502 onTarget:146 eventValue:0];
    }
  }

  else
  {
    route = [(CarRouteGeniusSuggestionsCardViewController *)self suggestionsView];
    [route startHideSelectLabelTimer];
  }

  v4 = route;
LABEL_7:
}

- (CarChromeViewController)chromeViewController
{
  v2 = +[CarDisplayController sharedInstance];
  chromeViewController = [v2 chromeViewController];

  return chromeViewController;
}

- (GuidanceETA)currentETA
{
  suggestionsView = [(CarRouteGeniusSuggestionsCardViewController *)self suggestionsView];
  currentETA = [suggestionsView currentETA];

  return currentETA;
}

- (void)setCurrentETA:(id)a
{
  aCopy = a;
  suggestionsView = [(CarRouteGeniusSuggestionsCardViewController *)self suggestionsView];
  [suggestionsView setCurrentETA:aCopy];
}

- (MapsSuggestionsRouteGeniusEntry)currentSuggestion
{
  suggestionsView = [(CarRouteGeniusSuggestionsCardViewController *)self suggestionsView];
  objc_sync_enter(suggestionsView);
  suggestionsView2 = [(CarRouteGeniusSuggestionsCardViewController *)self suggestionsView];
  currentSuggestion = [suggestionsView2 currentSuggestion];

  objc_sync_exit(suggestionsView);

  return currentSuggestion;
}

- (void)setCurrentSuggestion:(id)suggestion
{
  suggestionCopy = suggestion;
  suggestionsView = [(CarRouteGeniusSuggestionsCardViewController *)self suggestionsView];
  objc_sync_enter(suggestionsView);
  suggestionsView2 = [(CarRouteGeniusSuggestionsCardViewController *)self suggestionsView];
  [suggestionsView2 setCurrentSuggestion:suggestionCopy];

  objc_sync_exit(suggestionsView);
}

- (void)setRouteIsNavigable:(BOOL)navigable
{
  navigableCopy = navigable;
  suggestionsView = [(CarRouteGeniusSuggestionsCardViewController *)self suggestionsView];
  [suggestionsView setRouteIsNavigable:navigableCopy];
}

- (void)viewDidLoad
{
  v31.receiver = self;
  v31.super_class = CarRouteGeniusSuggestionsCardViewController;
  [(CarRouteGeniusSuggestionsCardViewController *)&v31 viewDidLoad];
  suggestionsView = [(CarRouteGeniusSuggestionsCardViewController *)self suggestionsView];
  [suggestionsView setTranslatesAutoresizingMaskIntoConstraints:0];

  view = [(CarRouteGeniusSuggestionsCardViewController *)self view];
  suggestionsView2 = [(CarRouteGeniusSuggestionsCardViewController *)self suggestionsView];
  [view addSubview:suggestionsView2];

  suggestionsView3 = [(CarRouteGeniusSuggestionsCardViewController *)self suggestionsView];
  topAnchor = [suggestionsView3 topAnchor];
  view2 = [(CarRouteGeniusSuggestionsCardViewController *)self view];
  topAnchor2 = [view2 topAnchor];
  v26 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v32[0] = v26;
  suggestionsView4 = [(CarRouteGeniusSuggestionsCardViewController *)self suggestionsView];
  leadingAnchor = [suggestionsView4 leadingAnchor];
  view3 = [(CarRouteGeniusSuggestionsCardViewController *)self view];
  leadingAnchor2 = [view3 leadingAnchor];
  v21 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v32[1] = v21;
  view4 = [(CarRouteGeniusSuggestionsCardViewController *)self view];
  bottomAnchor = [view4 bottomAnchor];
  suggestionsView5 = [(CarRouteGeniusSuggestionsCardViewController *)self suggestionsView];
  bottomAnchor2 = [suggestionsView5 bottomAnchor];
  v9 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  v32[2] = v9;
  view5 = [(CarRouteGeniusSuggestionsCardViewController *)self view];
  trailingAnchor = [view5 trailingAnchor];
  suggestionsView6 = [(CarRouteGeniusSuggestionsCardViewController *)self suggestionsView];
  trailingAnchor2 = [suggestionsView6 trailingAnchor];
  v14 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v32[3] = v14;
  v19 = [NSArray arrayWithObjects:v32 count:4];

  [NSLayoutConstraint activateConstraints:v19];
  view6 = [(CarRouteGeniusSuggestionsCardViewController *)self view];
  LODWORD(v16) = 1148846080;
  [view6 setContentCompressionResistancePriority:1 forAxis:v16];

  view7 = [(CarRouteGeniusSuggestionsCardViewController *)self view];
  LODWORD(v18) = 1148846080;
  [view7 setContentHuggingPriority:1 forAxis:v18];
}

- (CarRouteGeniusSuggestionsCardViewController)init
{
  v6.receiver = self;
  v6.super_class = CarRouteGeniusSuggestionsCardViewController;
  v2 = [(CarRouteGeniusSuggestionsCardViewController *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(CarMapsSuggestionsView);
    suggestionsView = v2->_suggestionsView;
    v2->_suggestionsView = v3;
  }

  return v2;
}

@end