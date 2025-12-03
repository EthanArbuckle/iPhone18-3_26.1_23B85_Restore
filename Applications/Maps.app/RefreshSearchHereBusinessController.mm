@interface RefreshSearchHereBusinessController
- ($873BFAB23BBB6E2F0B0288ED2F935688)visibleMapRect;
- (BOOL)didStopRespondingToGesture:(id)gesture;
- (BOOL)shouldShowManualRedoButton;
- (LocalSearchBusinessControllerDelegate)delegate;
- (RefreshSearchHereBusinessController)init;
- (RefreshSearchHereBusinessController)initWithDelegate:(id)delegate;
- (unint64_t)state;
- (void)didStartRespondingToGesture:(id)gesture;
- (void)sendAnalyticsOnBecomeVisibleWithTarget:(int)target;
- (void)setContentView:(id)view;
- (void)setSearchSession:(id)session;
- (void)updateState;
- (void)updateTrigger;
@end

@implementation RefreshSearchHereBusinessController

- ($873BFAB23BBB6E2F0B0288ED2F935688)visibleMapRect
{
  x = self->_visibleMapRect.origin.x;
  y = self->_visibleMapRect.origin.y;
  width = self->_visibleMapRect.size.width;
  height = self->_visibleMapRect.size.height;
  result.var1.var1 = height;
  result.var1.var0 = width;
  result.var0.var1 = y;
  result.var0.var0 = x;
  return result;
}

- (LocalSearchBusinessControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)sendAnalyticsOnBecomeVisibleWithTarget:(int)target
{
  v3 = *&target;
  v4 = +[MKMapService sharedService];
  [v4 captureUserAction:2016 onTarget:v3 eventValue:0];
}

- (unint64_t)state
{
  if ([(SearchSession *)self->_searchSession isRedoOrAutoRedoSearchType]&& [(SearchSession *)self->_searchSession isLoading])
  {
    return 3;
  }

  if (self->_triggered)
  {
    return 2;
  }

  if (![(SearchSession *)self->_searchSession isRedoOrAutoRedoSearchType])
  {
    return 0;
  }

  lastError = [(SearchSession *)self->_searchSession lastError];
  v5 = lastError != 0;

  return 4 * v5;
}

- (void)updateTrigger
{
  delegate = [(RefreshSearchHereBusinessController *)self delegate];
  if (!delegate || (v4 = delegate, -[RefreshSearchHereBusinessController delegate](self, "delegate"), v5 = objc_claimAutoreleasedReturnValue(), v6 = [v5 isEnabled], v5, v4, v6))
  {
    searchInfo = [(SearchSession *)self->_searchSession searchInfo];
    if ([searchInfo canRedoSearch])
    {
      searchInfo2 = [(SearchSession *)self->_searchSession searchInfo];
      searchAutoRedoThreshold = [searchInfo2 searchAutoRedoThreshold];

      if (!searchAutoRedoThreshold)
      {
        return;
      }

      redoSearchController = self->_redoSearchController;
      searchInfo = [(SearchSession *)self->_searchSession searchInfo];
      searchAutoRedoThreshold2 = [searchInfo searchAutoRedoThreshold];
      searchInfo3 = [(SearchSession *)self->_searchSession searchInfo];
      results = [searchInfo3 results];
      self->_triggered = [(RedoSearchController *)redoSearchController shouldTriggerAutoRedoWithThreshold:searchAutoRedoThreshold2 searchResults:results];
    }
  }
}

- (void)updateState
{
  state = [(RefreshSearchHereBusinessController *)self state];
  contentView = [(RefreshSearchHereBusinessController *)self contentView];
  state2 = [contentView state];

  if (state != state2)
  {
    delegate = [(RefreshSearchHereBusinessController *)self delegate];
    v7 = delegate;
    if (state2 && state)
    {
      [delegate businessControllerContentSizeDidChange:self];
    }

    else
    {
      [delegate businessControllerVisibilityDidChange:self];
    }

    contentView2 = [(RefreshSearchHereBusinessController *)self contentView];
    [contentView2 setState:state];
  }
}

- (BOOL)shouldShowManualRedoButton
{
  if (self->_triggered)
  {
    return 0;
  }

  searchInfo = [(SearchSession *)self->_searchSession searchInfo];
  v5 = searchInfo;
  if (searchInfo && [searchInfo shouldAllowManualRedoButton])
  {
    redoSearchController = self->_redoSearchController;
    searchRedoButtonThreshold = [v5 searchRedoButtonThreshold];
    results = [v5 results];
    v2 = [(RedoSearchController *)redoSearchController shouldShowManualRedoSearchButton:searchRedoButtonThreshold searchResults:results];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (BOOL)didStopRespondingToGesture:(id)gesture
{
  gestureCopy = gesture;
  mapRegion = [gestureCopy mapRegion];
  [gestureCopy _zoomLevel];
  v7 = v6;
  [gestureCopy visibleMapRect];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;

  [(RefreshSearchHereBusinessController *)self setVisibleMapRect:v9, v11, v13, v15];
  v16 = [[RedoSearchMapState alloc] initWithMapRegion:mapRegion zoomLevel:v7];
  [(RedoSearchController *)self->_redoSearchController setCurrentState:v16];

  [(RefreshSearchHereBusinessController *)self updateState];
  [(RefreshSearchHereBusinessController *)self updateTrigger];
  if (self->_triggered)
  {
    v17 = [[RedoSearchMapState alloc] initWithMapRegion:mapRegion zoomLevel:v7];
    [(RedoSearchController *)self->_redoSearchController setOriginalState:v17];

    triggered = self->_triggered;
  }

  else
  {
    triggered = 0;
  }

  return triggered;
}

- (void)didStartRespondingToGesture:(id)gesture
{
  gestureCopy = gesture;
  [gestureCopy visibleMapRect];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  [(RefreshSearchHereBusinessController *)self visibleMapRect];
  if (v6 == v16 && v8 == v13 && v10 == v14 && v12 == v15)
  {
    v26 = sub_1007991E4();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
    {
      *v27 = 0;
      _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEBUG, "Requested region is equal to existing region, ignoring.", v27, 2u);
    }
  }

  else
  {
    mapRegion = [gestureCopy mapRegion];
    [gestureCopy _zoomLevel];
    v22 = v21;
    [gestureCopy visibleMapRect];
    [(RefreshSearchHereBusinessController *)self setVisibleMapRect:?];
    originalState = [(RedoSearchController *)self->_redoSearchController originalState];

    if (!originalState)
    {
      v24 = [[RedoSearchMapState alloc] initWithMapRegion:mapRegion zoomLevel:v22];
      [(RedoSearchController *)self->_redoSearchController setOriginalState:v24];
    }

    [(RefreshSearchHereBusinessController *)self updateState];
    if (self->_triggered)
    {
      v25 = [[RedoSearchMapState alloc] initWithMapRegion:mapRegion zoomLevel:v22];
      [(RedoSearchController *)self->_redoSearchController setOriginalState:v25];
    }
  }
}

- (void)setContentView:(id)view
{
  objc_storeStrong(&self->_contentView, view);
  viewCopy = view;
  [(LocalSearchView *)self->_contentView setAccessibilityIdentifier:@"LocalSearchContentView"];
  v6 = +[NSBundle mainBundle];
  v7 = [v6 localizedStringForKey:@"Search Here" value:@"localized string not found" table:0];
  [viewCopy setText:v7 forState:1];

  v8 = +[NSBundle mainBundle];
  v9 = [v8 localizedStringForKey:@"Searching Here" value:@"localized string not found" table:0];
  [viewCopy setText:v9 forState:3];

  v10 = +[NSBundle mainBundle];
  v11 = [v10 localizedStringForKey:@"No results found in this area." value:@"localized string not found" table:0];
  [viewCopy setText:v11 forState:4];

  [(RefreshSearchHereBusinessController *)self updateState];
}

- (void)setSearchSession:(id)session
{
  objc_storeStrong(&self->_searchSession, session);
  self->_triggered = 0;

  [(RefreshSearchHereBusinessController *)self updateState];
}

- (RefreshSearchHereBusinessController)init
{
  v6.receiver = self;
  v6.super_class = RefreshSearchHereBusinessController;
  v2 = [(RefreshSearchHereBusinessController *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(RedoSearchController);
    redoSearchController = v2->_redoSearchController;
    v2->_redoSearchController = v3;
  }

  return v2;
}

- (RefreshSearchHereBusinessController)initWithDelegate:(id)delegate
{
  delegateCopy = delegate;
  v10.receiver = self;
  v10.super_class = RefreshSearchHereBusinessController;
  v5 = [(RefreshSearchHereBusinessController *)&v10 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_delegate, delegateCopy);
    v7 = objc_alloc_init(RedoSearchController);
    redoSearchController = v6->_redoSearchController;
    v6->_redoSearchController = v7;
  }

  return v6;
}

@end