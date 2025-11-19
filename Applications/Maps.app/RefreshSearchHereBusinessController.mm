@interface RefreshSearchHereBusinessController
- ($873BFAB23BBB6E2F0B0288ED2F935688)visibleMapRect;
- (BOOL)didStopRespondingToGesture:(id)a3;
- (BOOL)shouldShowManualRedoButton;
- (LocalSearchBusinessControllerDelegate)delegate;
- (RefreshSearchHereBusinessController)init;
- (RefreshSearchHereBusinessController)initWithDelegate:(id)a3;
- (unint64_t)state;
- (void)didStartRespondingToGesture:(id)a3;
- (void)sendAnalyticsOnBecomeVisibleWithTarget:(int)a3;
- (void)setContentView:(id)a3;
- (void)setSearchSession:(id)a3;
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

- (void)sendAnalyticsOnBecomeVisibleWithTarget:(int)a3
{
  v3 = *&a3;
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

  v4 = [(SearchSession *)self->_searchSession lastError];
  v5 = v4 != 0;

  return 4 * v5;
}

- (void)updateTrigger
{
  v3 = [(RefreshSearchHereBusinessController *)self delegate];
  if (!v3 || (v4 = v3, -[RefreshSearchHereBusinessController delegate](self, "delegate"), v5 = objc_claimAutoreleasedReturnValue(), v6 = [v5 isEnabled], v5, v4, v6))
  {
    v13 = [(SearchSession *)self->_searchSession searchInfo];
    if ([v13 canRedoSearch])
    {
      v7 = [(SearchSession *)self->_searchSession searchInfo];
      v8 = [v7 searchAutoRedoThreshold];

      if (!v8)
      {
        return;
      }

      redoSearchController = self->_redoSearchController;
      v13 = [(SearchSession *)self->_searchSession searchInfo];
      v10 = [v13 searchAutoRedoThreshold];
      v11 = [(SearchSession *)self->_searchSession searchInfo];
      v12 = [v11 results];
      self->_triggered = [(RedoSearchController *)redoSearchController shouldTriggerAutoRedoWithThreshold:v10 searchResults:v12];
    }
  }
}

- (void)updateState
{
  v3 = [(RefreshSearchHereBusinessController *)self state];
  v4 = [(RefreshSearchHereBusinessController *)self contentView];
  v5 = [v4 state];

  if (v3 != v5)
  {
    v6 = [(RefreshSearchHereBusinessController *)self delegate];
    v7 = v6;
    if (v5 && v3)
    {
      [v6 businessControllerContentSizeDidChange:self];
    }

    else
    {
      [v6 businessControllerVisibilityDidChange:self];
    }

    v8 = [(RefreshSearchHereBusinessController *)self contentView];
    [v8 setState:v3];
  }
}

- (BOOL)shouldShowManualRedoButton
{
  if (self->_triggered)
  {
    return 0;
  }

  v4 = [(SearchSession *)self->_searchSession searchInfo];
  v5 = v4;
  if (v4 && [v4 shouldAllowManualRedoButton])
  {
    redoSearchController = self->_redoSearchController;
    v7 = [v5 searchRedoButtonThreshold];
    v8 = [v5 results];
    v2 = [(RedoSearchController *)redoSearchController shouldShowManualRedoSearchButton:v7 searchResults:v8];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (BOOL)didStopRespondingToGesture:(id)a3
{
  v4 = a3;
  v5 = [v4 mapRegion];
  [v4 _zoomLevel];
  v7 = v6;
  [v4 visibleMapRect];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;

  [(RefreshSearchHereBusinessController *)self setVisibleMapRect:v9, v11, v13, v15];
  v16 = [[RedoSearchMapState alloc] initWithMapRegion:v5 zoomLevel:v7];
  [(RedoSearchController *)self->_redoSearchController setCurrentState:v16];

  [(RefreshSearchHereBusinessController *)self updateState];
  [(RefreshSearchHereBusinessController *)self updateTrigger];
  if (self->_triggered)
  {
    v17 = [[RedoSearchMapState alloc] initWithMapRegion:v5 zoomLevel:v7];
    [(RedoSearchController *)self->_redoSearchController setOriginalState:v17];

    triggered = self->_triggered;
  }

  else
  {
    triggered = 0;
  }

  return triggered;
}

- (void)didStartRespondingToGesture:(id)a3
{
  v4 = a3;
  [v4 visibleMapRect];
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
    v20 = [v4 mapRegion];
    [v4 _zoomLevel];
    v22 = v21;
    [v4 visibleMapRect];
    [(RefreshSearchHereBusinessController *)self setVisibleMapRect:?];
    v23 = [(RedoSearchController *)self->_redoSearchController originalState];

    if (!v23)
    {
      v24 = [[RedoSearchMapState alloc] initWithMapRegion:v20 zoomLevel:v22];
      [(RedoSearchController *)self->_redoSearchController setOriginalState:v24];
    }

    [(RefreshSearchHereBusinessController *)self updateState];
    if (self->_triggered)
    {
      v25 = [[RedoSearchMapState alloc] initWithMapRegion:v20 zoomLevel:v22];
      [(RedoSearchController *)self->_redoSearchController setOriginalState:v25];
    }
  }
}

- (void)setContentView:(id)a3
{
  objc_storeStrong(&self->_contentView, a3);
  v5 = a3;
  [(LocalSearchView *)self->_contentView setAccessibilityIdentifier:@"LocalSearchContentView"];
  v6 = +[NSBundle mainBundle];
  v7 = [v6 localizedStringForKey:@"Search Here" value:@"localized string not found" table:0];
  [v5 setText:v7 forState:1];

  v8 = +[NSBundle mainBundle];
  v9 = [v8 localizedStringForKey:@"Searching Here" value:@"localized string not found" table:0];
  [v5 setText:v9 forState:3];

  v10 = +[NSBundle mainBundle];
  v11 = [v10 localizedStringForKey:@"No results found in this area." value:@"localized string not found" table:0];
  [v5 setText:v11 forState:4];

  [(RefreshSearchHereBusinessController *)self updateState];
}

- (void)setSearchSession:(id)a3
{
  objc_storeStrong(&self->_searchSession, a3);
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

- (RefreshSearchHereBusinessController)initWithDelegate:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = RefreshSearchHereBusinessController;
  v5 = [(RefreshSearchHereBusinessController *)&v10 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_delegate, v4);
    v7 = objc_alloc_init(RedoSearchController);
    redoSearchController = v6->_redoSearchController;
    v6->_redoSearchController = v7;
  }

  return v6;
}

@end