@interface TransitDirectionsBoardingInfoStepView
- (TransitDirectionsBoardingInfoStepViewDelegate)boardingInfoDelegate;
- (id)_initialConstraints;
- (void)_createSubviews;
- (void)_scheduleButtonTapped:(id)tapped;
- (void)_updateNavigationStateAlpha:(double)alpha;
- (void)configureWithItem:(id)item;
- (void)setHighlighted:(BOOL)highlighted;
- (void)setUseNavigationMetrics:(BOOL)metrics;
@end

@implementation TransitDirectionsBoardingInfoStepView

- (TransitDirectionsBoardingInfoStepViewDelegate)boardingInfoDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_boardingInfoDelegate);

  return WeakRetained;
}

- (void)_updateNavigationStateAlpha:(double)alpha
{
  v5.receiver = self;
  v5.super_class = TransitDirectionsBoardingInfoStepView;
  [(TransitDirectionsStepView *)&v5 _updateNavigationStateAlpha:?];
  [(TransitDirectionsBoardingInfoListView *)self->_boardingInfoListView setAlpha:alpha];
}

- (void)setUseNavigationMetrics:(BOOL)metrics
{
  v6.receiver = self;
  v6.super_class = TransitDirectionsBoardingInfoStepView;
  [(TransitDirectionsStepView *)&v6 setUseNavigationMetrics:metrics];
  boardingInfoListView = self->_boardingInfoListView;
  if ([(TransitDirectionsStepView *)self useNavigationMetrics])
  {
    v5 = 610;
  }

  else
  {
    v5 = 606;
  }

  [(TransitDirectionsBoardingInfoListView *)boardingInfoListView setTargetForAnalytics:v5];
}

- (void)configureWithItem:(id)item
{
  itemCopy = item;
  v16.receiver = self;
  v16.super_class = TransitDirectionsBoardingInfoStepView;
  [(TransitDirectionsStepView *)&v16 configureWithItem:itemCopy];
  v5 = itemCopy;
  matchingRouteStep = [v5 matchingRouteStep];
  segment = [matchingRouteStep segment];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = segment;
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;

  transitLine = [v9 transitLine];

  boardingInfoListView = self->_boardingInfoListView;
  if (transitLine)
  {
    v12 = [transitLine departureTimeDisplayStyle] == 1;
  }

  else
  {
    v12 = 0;
  }

  [(TransitDirectionsBoardingInfoListView *)boardingInfoListView setDropPastDepartures:v12];
  boardingInfo = [v5 boardingInfo];

  v14 = self->_boardingInfoListView;
  if (boardingInfo)
  {
    boardingInfo2 = [v5 boardingInfo];
    [(TransitDirectionsBoardingInfoListView *)v14 setBoardingInfo:boardingInfo2];
  }

  else
  {
    boardingInfo2 = [v5 preboardingStrings];
    [(TransitDirectionsBoardingInfoListView *)v14 setPreboardingStrings:boardingInfo2];
  }
}

- (void)_scheduleButtonTapped:(id)tapped
{
  boardingInfoDelegate = [(TransitDirectionsBoardingInfoStepView *)self boardingInfoDelegate];
  transitListItem = [(TransitDirectionsStepView *)self transitListItem];
  parentItem = [transitListItem parentItem];
  [boardingInfoDelegate transitDirectionsBoardingInfoStepView:self didSelectScheduleForItem:parentItem];
}

- (void)setHighlighted:(BOOL)highlighted
{
  highlightedCopy = highlighted;
  v5.receiver = self;
  v5.super_class = TransitDirectionsBoardingInfoStepView;
  [(TransitDirectionsStepView *)&v5 setHighlighted:?];
  [(TransitDirectionsBoardingInfoListView *)self->_boardingInfoListView setHighlighted:highlightedCopy];
}

- (id)_initialConstraints
{
  v39.receiver = self;
  v39.super_class = TransitDirectionsBoardingInfoStepView;
  _initialConstraints = [(TransitDirectionsStepView *)&v39 _initialConstraints];
  leadingAnchor = [(TransitDirectionsBoardingInfoListView *)self->_boardingInfoListView leadingAnchor];
  contentLayoutGuide = [(TransitDirectionsStepView *)self contentLayoutGuide];
  [contentLayoutGuide leadingAnchor];
  v32 = v36 = leadingAnchor;
  v31 = [leadingAnchor constraintEqualToAnchor:?];
  v41[0] = v31;
  topAnchor = [(TransitDirectionsBoardingInfoListView *)self->_boardingInfoListView topAnchor];
  contentLayoutGuide2 = [(TransitDirectionsStepView *)self contentLayoutGuide];
  [contentLayoutGuide2 topAnchor];
  v28 = v30 = topAnchor;
  v27 = [topAnchor constraintEqualToAnchor:?];
  v41[1] = v27;
  scrollControlsView = self->_scrollControlsView;
  if (scrollControlsView)
  {
    [(TransitDirectionsBoardingInfoStepView *)self trailingAnchor];
  }

  else
  {
    contentLayoutGuide3 = [(TransitDirectionsStepView *)self contentLayoutGuide];
    [contentLayoutGuide3 trailingAnchor];
  }
  v6 = ;
  trailingAnchor = [(TransitDirectionsBoardingInfoListView *)self->_boardingInfoListView trailingAnchor];
  v8 = [v6 constraintEqualToAnchor:trailingAnchor];
  v41[2] = v8;
  contentLayoutGuide4 = [(TransitDirectionsStepView *)self contentLayoutGuide];
  bottomAnchor = [contentLayoutGuide4 bottomAnchor];
  bottomAnchor2 = [(TransitDirectionsBoardingInfoListView *)self->_boardingInfoListView bottomAnchor];
  [(TransitDirectionsBoardingInfoListView *)self->_boardingInfoListView _contentBottomAnchorAdjustment];
  v12 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2 constant:?];
  v41[3] = v12;
  v13 = [NSArray arrayWithObjects:v41 count:4];
  [_initialConstraints addObjectsFromArray:v13];

  if (!scrollControlsView)
  {

    v6 = contentLayoutGuide3;
  }

  v14 = self->_scrollControlsView;
  if (v14)
  {
    leadingAnchor2 = [(MUPagingScrollControlsView *)v14 leadingAnchor];
    leadingAnchor3 = [(TransitDirectionsBoardingInfoStepView *)self leadingAnchor];
    v33 = [leadingAnchor2 constraintEqualToAnchor:leadingAnchor3 constant:3.0];
    v40[0] = v33;
    topAnchor2 = [(MUPagingScrollControlsView *)self->_scrollControlsView topAnchor];
    topAnchor3 = [(TransitDirectionsBoardingInfoListView *)self->_boardingInfoListView topAnchor];
    v17 = [topAnchor2 constraintEqualToAnchor:topAnchor3];
    v40[1] = v17;
    trailingAnchor2 = [(TransitDirectionsBoardingInfoStepView *)self trailingAnchor];
    trailingAnchor3 = [(MUPagingScrollControlsView *)self->_scrollControlsView trailingAnchor];
    v20 = [trailingAnchor2 constraintEqualToAnchor:trailingAnchor3 constant:3.0];
    v40[2] = v20;
    bottomAnchor3 = [(TransitDirectionsBoardingInfoListView *)self->_boardingInfoListView bottomAnchor];
    bottomAnchor4 = [(MUPagingScrollControlsView *)self->_scrollControlsView bottomAnchor];
    v23 = [bottomAnchor3 constraintEqualToAnchor:bottomAnchor4];
    v40[3] = v23;
    v24 = [NSArray arrayWithObjects:v40 count:4];
    [_initialConstraints addObjectsFromArray:v24];
  }

  return _initialConstraints;
}

- (void)_createSubviews
{
  v11.receiver = self;
  v11.super_class = TransitDirectionsBoardingInfoStepView;
  [(TransitDirectionsStepView *)&v11 _createSubviews];
  v3 = [[TransitDirectionsBoardingInfoListView alloc] initWithFrame:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
  boardingInfoListView = self->_boardingInfoListView;
  self->_boardingInfoListView = v3;

  [(TransitDirectionsBoardingInfoListView *)self->_boardingInfoListView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(TransitDirectionsBoardingInfoListView *)self->_boardingInfoListView setClipsToBounds:0];
  [(TransitDirectionsBoardingInfoListView *)self->_boardingInfoListView setTargetForAnalytics:606];
  v5 = self->_boardingInfoListView;
  v6 = +[TransitDirectionsBoardingInfoListView defaultFinalButtonTitle];
  [(TransitDirectionsBoardingInfoListView *)v5 setFinalButtonTitle:v6 target:self action:"_scheduleButtonTapped:"];

  [(TransitDirectionsBoardingInfoStepView *)self addSubview:self->_boardingInfoListView];
  if (sub_10000FA08(self) == 5)
  {
    v7 = [MUPagingScrollControlsView alloc];
    _scrollView = [(TransitDirectionsBoardingInfoListView *)self->_boardingInfoListView _scrollView];
    v9 = [v7 initWithHorizontalScrollView:_scrollView];

    [v9 setTranslatesAutoresizingMaskIntoConstraints:0];
    [(TransitDirectionsBoardingInfoStepView *)self addSubview:v9];
    scrollControlsView = self->_scrollControlsView;
    self->_scrollControlsView = v9;
  }
}

@end