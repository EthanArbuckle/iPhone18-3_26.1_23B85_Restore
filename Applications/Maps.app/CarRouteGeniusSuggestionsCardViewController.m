@interface CarRouteGeniusSuggestionsCardViewController
- (CarChromeViewController)chromeViewController;
- (CarRouteGeniusSuggestionsCardViewController)init;
- (GuidanceETA)currentETA;
- (MapsSuggestionsRouteGeniusEntry)currentSuggestion;
- (void)becomeCurrent;
- (void)resignCurrent;
- (void)setCurrentETA:(id)a3;
- (void)setCurrentSuggestion:(id)a3;
- (void)setRouteIsNavigable:(BOOL)a3;
- (void)viewDidLoad;
@end

@implementation CarRouteGeniusSuggestionsCardViewController

- (void)resignCurrent
{
  if ((MapsFeature_IsEnabled_LocationIntelligenceMaps() & 1) == 0)
  {
    v3 = [(CarRouteGeniusSuggestionsCardViewController *)self suggestionsView];
    [v3 stopHideSelectLabelTimer];
  }
}

- (void)becomeCurrent
{
  if (MapsFeature_IsEnabled_LocationIntelligenceMaps())
  {
    v3 = [(CarRouteGeniusSuggestionsCardViewController *)self currentSuggestion];
    v6 = [v3 route];

    v4 = v6;
    if (!v6)
    {
      goto LABEL_7;
    }

    if ([v6 isFamiliarRoute])
    {
      v5 = [(CarRouteGeniusSuggestionsCardViewController *)self chromeViewController];
      [v5 captureUserAction:502 onTarget:146 eventValue:0];
    }
  }

  else
  {
    v6 = [(CarRouteGeniusSuggestionsCardViewController *)self suggestionsView];
    [v6 startHideSelectLabelTimer];
  }

  v4 = v6;
LABEL_7:
}

- (CarChromeViewController)chromeViewController
{
  v2 = +[CarDisplayController sharedInstance];
  v3 = [v2 chromeViewController];

  return v3;
}

- (GuidanceETA)currentETA
{
  v2 = [(CarRouteGeniusSuggestionsCardViewController *)self suggestionsView];
  v3 = [v2 currentETA];

  return v3;
}

- (void)setCurrentETA:(id)a3
{
  v4 = a3;
  v5 = [(CarRouteGeniusSuggestionsCardViewController *)self suggestionsView];
  [v5 setCurrentETA:v4];
}

- (MapsSuggestionsRouteGeniusEntry)currentSuggestion
{
  v3 = [(CarRouteGeniusSuggestionsCardViewController *)self suggestionsView];
  objc_sync_enter(v3);
  v4 = [(CarRouteGeniusSuggestionsCardViewController *)self suggestionsView];
  v5 = [v4 currentSuggestion];

  objc_sync_exit(v3);

  return v5;
}

- (void)setCurrentSuggestion:(id)a3
{
  v6 = a3;
  v4 = [(CarRouteGeniusSuggestionsCardViewController *)self suggestionsView];
  objc_sync_enter(v4);
  v5 = [(CarRouteGeniusSuggestionsCardViewController *)self suggestionsView];
  [v5 setCurrentSuggestion:v6];

  objc_sync_exit(v4);
}

- (void)setRouteIsNavigable:(BOOL)a3
{
  v3 = a3;
  v4 = [(CarRouteGeniusSuggestionsCardViewController *)self suggestionsView];
  [v4 setRouteIsNavigable:v3];
}

- (void)viewDidLoad
{
  v31.receiver = self;
  v31.super_class = CarRouteGeniusSuggestionsCardViewController;
  [(CarRouteGeniusSuggestionsCardViewController *)&v31 viewDidLoad];
  v3 = [(CarRouteGeniusSuggestionsCardViewController *)self suggestionsView];
  [v3 setTranslatesAutoresizingMaskIntoConstraints:0];

  v4 = [(CarRouteGeniusSuggestionsCardViewController *)self view];
  v5 = [(CarRouteGeniusSuggestionsCardViewController *)self suggestionsView];
  [v4 addSubview:v5];

  v30 = [(CarRouteGeniusSuggestionsCardViewController *)self suggestionsView];
  v28 = [v30 topAnchor];
  v29 = [(CarRouteGeniusSuggestionsCardViewController *)self view];
  v27 = [v29 topAnchor];
  v26 = [v28 constraintEqualToAnchor:v27];
  v32[0] = v26;
  v25 = [(CarRouteGeniusSuggestionsCardViewController *)self suggestionsView];
  v23 = [v25 leadingAnchor];
  v24 = [(CarRouteGeniusSuggestionsCardViewController *)self view];
  v22 = [v24 leadingAnchor];
  v21 = [v23 constraintEqualToAnchor:v22];
  v32[1] = v21;
  v20 = [(CarRouteGeniusSuggestionsCardViewController *)self view];
  v6 = [v20 bottomAnchor];
  v7 = [(CarRouteGeniusSuggestionsCardViewController *)self suggestionsView];
  v8 = [v7 bottomAnchor];
  v9 = [v6 constraintEqualToAnchor:v8];
  v32[2] = v9;
  v10 = [(CarRouteGeniusSuggestionsCardViewController *)self view];
  v11 = [v10 trailingAnchor];
  v12 = [(CarRouteGeniusSuggestionsCardViewController *)self suggestionsView];
  v13 = [v12 trailingAnchor];
  v14 = [v11 constraintEqualToAnchor:v13];
  v32[3] = v14;
  v19 = [NSArray arrayWithObjects:v32 count:4];

  [NSLayoutConstraint activateConstraints:v19];
  v15 = [(CarRouteGeniusSuggestionsCardViewController *)self view];
  LODWORD(v16) = 1148846080;
  [v15 setContentCompressionResistancePriority:1 forAxis:v16];

  v17 = [(CarRouteGeniusSuggestionsCardViewController *)self view];
  LODWORD(v18) = 1148846080;
  [v17 setContentHuggingPriority:1 forAxis:v18];
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