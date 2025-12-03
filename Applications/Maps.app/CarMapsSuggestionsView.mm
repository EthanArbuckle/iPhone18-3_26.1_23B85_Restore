@interface CarMapsSuggestionsView
- ($65C3FA8A572F9D8A414E710B16373297)lastLayoutConfig;
- (BOOL)_needsViewLayout;
- (CarMapsSuggestionsView)init;
- (unint64_t)accessibilityTraits;
- (void)_externalDeviceUpdated:(id)updated;
- (void)_hideSelectLabel;
- (void)_setNeedsViewLayout;
- (void)_updateContents;
- (void)_updateViewLayout;
- (void)dealloc;
- (void)setCurrentETA:(id)a;
- (void)setCurrentSuggestion:(id)suggestion;
- (void)setNavigationAidedDrivingEnabled:(BOOL)enabled;
- (void)setShowSelectLabel:(BOOL)label;
- (void)startHideSelectLabelTimer;
- (void)stopHideSelectLabelTimer;
@end

@implementation CarMapsSuggestionsView

- ($65C3FA8A572F9D8A414E710B16373297)lastLayoutConfig
{
  objc_copyStruct(v4, &self->_lastLayoutConfig, 16, 1, 0);
  v2 = v4[0];
  v3 = v4[1];
  result.var2 = v3;
  result.var0 = v2;
  result.var1 = BYTE1(v2);
  return result;
}

- (unint64_t)accessibilityTraits
{
  v3.receiver = self;
  v3.super_class = CarMapsSuggestionsView;
  return UIAccessibilityTraitButton | [(CarMapsSuggestionsView *)&v3 accessibilityTraits];
}

- (void)_hideSelectLabel
{
  if ((MapsFeature_IsEnabled_LocationIntelligenceMaps() & 1) == 0)
  {
    [(CarMapsSuggestionsView *)self stopHideSelectLabelTimer];

    [(CarMapsSuggestionsView *)self setShowSelectLabel:0];
  }
}

- (void)stopHideSelectLabelTimer
{
  if ((MapsFeature_IsEnabled_LocationIntelligenceMaps() & 1) == 0)
  {
    hideSelectLabelTimer = [(CarMapsSuggestionsView *)self hideSelectLabelTimer];
    [hideSelectLabelTimer invalidate];

    [(CarMapsSuggestionsView *)self setHideSelectLabelTimer:0];
  }
}

- (void)startHideSelectLabelTimer
{
  if ((MapsFeature_IsEnabled_LocationIntelligenceMaps() & 1) == 0)
  {
    [(CarMapsSuggestionsView *)self stopHideSelectLabelTimer];
    GEOConfigGetDouble();
    if (v3 > 0.0)
    {
      v4 = [NSTimer scheduledTimerWithTimeInterval:self target:"_hideSelectLabel" selector:0 userInfo:0 repeats:?];
      [(CarMapsSuggestionsView *)self setHideSelectLabelTimer:v4];
    }
  }
}

- (void)setCurrentETA:(id)a
{
  aCopy = a;
  remainingMinutes = [aCopy remainingMinutes];
  if (remainingMinutes != -[GuidanceETA remainingMinutes](self->_currentETA, "remainingMinutes") || ([aCopy etaDate], v6 = objc_claimAutoreleasedReturnValue(), -[GuidanceETA etaDate](self->_currentETA, "etaDate"), v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v6, "isEqual:", v7), v7, v6, (v8 & 1) == 0))
  {
    objc_storeStrong(&self->_currentETA, a);
    [(CarMapsSuggestionsView *)self _updateContents];
  }
}

- (void)setCurrentSuggestion:(id)suggestion
{
  suggestionCopy = suggestion;
  [(CarMapsSuggestionsView *)self setSuggestionKey:[(CarMapsSuggestionsView *)self suggestionKey]+ 1];
  route = [suggestionCopy route];
  if (route)
  {
    route2 = [suggestionCopy route];
    -[CarMapsSuggestionsView setRouteIsNavigable:](self, "setRouteIsNavigable:", [route2 isNavigable]);
  }

  else
  {
    [(CarMapsSuggestionsView *)self setRouteIsNavigable:0];
  }

  entry = [(MapsSuggestionsRouteGeniusEntry *)self->_currentSuggestion entry];
  geoMapItem = [entry geoMapItem];

  currentSuggestion = self->_currentSuggestion;
  self->_currentSuggestion = suggestionCopy;
  v9 = suggestionCopy;

  entry2 = [(MapsSuggestionsRouteGeniusEntry *)self->_currentSuggestion entry];

  geoMapItem2 = [entry2 geoMapItem];

  [(CarMapsSuggestionsView *)self _updateContents];
  if (![(CarMapsSuggestionsView *)self showSelectLabel])
  {
    v12 = 1;
    if (geoMapItem && geoMapItem2)
    {
      v12 = GEOMapItemIsEqualToMapItemForPurpose() ^ 1;
    }

    [(CarMapsSuggestionsView *)self setShowSelectLabel:v12];
  }

  [(CarMapsSuggestionsView *)self _setNeedsViewLayout];
}

- (void)setShowSelectLabel:(BOOL)label
{
  if (self->_showSelectLabel != label)
  {
    labelCopy = label;
    self->_showSelectLabel = label;
    if ((MapsFeature_IsEnabled_LocationIntelligenceMaps() & 1) == 0)
    {
      if (labelCopy)
      {
        [(CarMapsSuggestionsView *)self startHideSelectLabelTimer];
      }

      else
      {
        [(CarMapsSuggestionsView *)self stopHideSelectLabelTimer];
      }
    }

    [(CarMapsSuggestionsView *)self _setNeedsViewLayout];
  }
}

- (void)_updateContents
{
  route3 = 16;
  entry = [(MapsSuggestionsRouteGeniusEntry *)self->_currentSuggestion entry];
  v40 = [entry stringForKey:@"MapsSuggestionsResumeRouteDefaultTitle"];

  title = v40;
  if (!v40)
  {
    entry = [(MapsSuggestionsRouteGeniusEntry *)self->_currentSuggestion entry];
    title = [entry title];
  }

  etaOnlyView = [(CarMapsSuggestionsView *)self etaOnlyView];
  [etaOnlyView setTitle:title];

  if (!v40)
  {
  }

  if (MapsFeature_IsEnabled_LocationIntelligenceMaps())
  {
    route = [(MapsSuggestionsRouteGeniusEntry *)self->_currentSuggestion route];
    mutableData = [route mutableData];
    routeOverviewDescriptionStrings = [mutableData routeOverviewDescriptionStrings];

    firstObject = [routeOverviewDescriptionStrings firstObject];
    stringWithDefaultOptions = [firstObject stringWithDefaultOptions];

    if (stringWithDefaultOptions)
    {
      etaOnlyView2 = [(CarMapsSuggestionsView *)self etaOnlyView];
      [etaOnlyView2 setDescriptionText:stringWithDefaultOptions];
    }
  }

  route2 = [(MapsSuggestionsRouteGeniusEntry *)self->_currentSuggestion route];
  legs = [route2 legs];
  v16 = [legs count];
  if (v16)
  {
    route3 = [(MapsSuggestionsRouteGeniusEntry *)self->_currentSuggestion route];
    legs2 = [route3 legs];
    v17 = [legs2 count] - 1;
  }

  else
  {
    v17 = 0;
  }

  etaOnlyView3 = [(CarMapsSuggestionsView *)self etaOnlyView];
  [etaOnlyView3 setNumberOfStops:v17];

  if (v16)
  {
  }

  routeIsNavigable = [(CarMapsSuggestionsView *)self routeIsNavigable];
  if (routeIsNavigable)
  {
    currentETA = [(CarMapsSuggestionsView *)self currentETA];
  }

  else
  {
    currentETA = 0;
  }

  etaOnlyView4 = [(CarMapsSuggestionsView *)self etaOnlyView];
  [etaOnlyView4 setLatestETA:currentETA];

  if (routeIsNavigable)
  {
  }

  if ([(CarMapsSuggestionsView *)self routeIsNavigable])
  {
    etaOnlyView5 = [(CarMapsSuggestionsView *)self etaOnlyView];
    [etaOnlyView5 setSubtitleOverride:0];
  }

  else
  {
    etaOnlyView5 = sub_100FA8E84();
    etaOnlyView6 = [(CarMapsSuggestionsView *)self etaOnlyView];
    [etaOnlyView6 setSubtitleOverride:etaOnlyView5];
  }

  v24 = +[CarDisplayController sharedInstance];
  supportsTouchInteractionModel = [v24 supportsTouchInteractionModel];

  if (supportsTouchInteractionModel)
  {
    v26 = @"CAR_PROACTIVE_TAP";
  }

  else
  {
    v26 = @"CAR_PROACTIVE_SELECT";
  }

  v27 = +[NSBundle mainBundle];
  v28 = [v27 localizedStringForKey:v26 value:@"localized string not found" table:0];

  selectLabel = [(CarMapsSuggestionsView *)self selectLabel];
  [selectLabel setText:v28];

  v30 = +[NSMutableArray array];
  etaOnlyView7 = [(CarMapsSuggestionsView *)self etaOnlyView];
  title2 = [etaOnlyView7 title];

  if (title2)
  {
    etaOnlyView8 = [(CarMapsSuggestionsView *)self etaOnlyView];
    title3 = [etaOnlyView8 title];
    [v30 addObject:title3];
  }

  selectLabel2 = [(CarMapsSuggestionsView *)self selectLabel];
  text = [selectLabel2 text];

  if (text)
  {
    selectLabel3 = [(CarMapsSuggestionsView *)self selectLabel];
    text2 = [selectLabel3 text];
    [v30 addObject:text2];
  }

  v39 = [v30 copy];
  [(CarMapsSuggestionsView *)self setAccessibilityUserInputLabels:v39];
}

- (void)_updateViewLayout
{
  layoutUpdateTimer = [(CarMapsSuggestionsView *)self layoutUpdateTimer];
  [layoutUpdateTimer invalidate];

  [(CarMapsSuggestionsView *)self setLayoutUpdateTimer:0];
  currentConstraints = [(CarMapsSuggestionsView *)self currentConstraints];
  [NSLayoutConstraint deactivateConstraints:currentConstraints];

  v30 = objc_opt_new();
  selectLabel = [(CarMapsSuggestionsView *)self selectLabel];
  [selectLabel removeFromSuperview];

  if ([(CarMapsSuggestionsView *)self showSelectLabel])
  {
    selectLabel2 = [(CarMapsSuggestionsView *)self selectLabel];
    [(CarMapsSuggestionsView *)self addSubview:selectLabel2];

    selectLabel3 = [(CarMapsSuggestionsView *)self selectLabel];
    topAnchor = [selectLabel3 topAnchor];
    etaOnlyView = [(CarMapsSuggestionsView *)self etaOnlyView];
    bottomAnchor = [etaOnlyView bottomAnchor];
    v11 = [topAnchor constraintEqualToAnchor:bottomAnchor constant:10.0];
    [v30 addObject:v11];

    selectLabel4 = [(CarMapsSuggestionsView *)self selectLabel];
    leadingAnchor = [selectLabel4 leadingAnchor];
    leadingAnchor2 = [(CarMapsSuggestionsView *)self leadingAnchor];
    v15 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:10.0];
    [v30 addObject:v15];

    selectLabel5 = [(CarMapsSuggestionsView *)self selectLabel];
    trailingAnchor = [selectLabel5 trailingAnchor];
    trailingAnchor2 = [(CarMapsSuggestionsView *)self trailingAnchor];
    v19 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:-10.0];
    [v30 addObject:v19];

    selectLabel6 = [(CarMapsSuggestionsView *)self selectLabel];
    bottomAnchor2 = [selectLabel6 bottomAnchor];
    bottomAnchor3 = [(CarMapsSuggestionsView *)self bottomAnchor];
    v23 = -10.0;
    v24 = bottomAnchor2;
  }

  else
  {
    selectLabel6 = [(CarMapsSuggestionsView *)self bottomAnchor];
    bottomAnchor2 = [(CarMapsSuggestionsView *)self etaOnlyView];
    bottomAnchor3 = [bottomAnchor2 bottomAnchor];
    v23 = 10.0;
    v24 = selectLabel6;
  }

  v25 = [v24 constraintEqualToAnchor:bottomAnchor3 constant:v23];
  [v30 addObject:v25];

  [(CarMapsSuggestionsView *)self setCurrentConstraints:v30];
  showSelectLabel = [(CarMapsSuggestionsView *)self showSelectLabel];
  navigationAidedDrivingEnabled = [(CarMapsSuggestionsView *)self navigationAidedDrivingEnabled];
  suggestionKey = [(CarMapsSuggestionsView *)self suggestionKey];
  v29 = 256;
  if (!navigationAidedDrivingEnabled)
  {
    v29 = 0;
  }

  [(CarMapsSuggestionsView *)self setLastLayoutConfig:v29 | showSelectLabel, suggestionKey];
  [NSLayoutConstraint activateConstraints:v30];
}

- (BOOL)_needsViewLayout
{
  suggestionKey = [(CarMapsSuggestionsView *)self suggestionKey];
  [(CarMapsSuggestionsView *)self lastLayoutConfig];
  if (suggestionKey == v4 && (v5 = [(CarMapsSuggestionsView *)self showSelectLabel], v5 == ([(CarMapsSuggestionsView *)self lastLayoutConfig]& 1)))
  {
    navigationAidedDrivingEnabled = [(CarMapsSuggestionsView *)self navigationAidedDrivingEnabled];
    return navigationAidedDrivingEnabled ^ ([(CarMapsSuggestionsView *)self lastLayoutConfig]>> 8) & 1;
  }

  else
  {
    LOBYTE(v6) = 1;
  }

  return v6;
}

- (void)_setNeedsViewLayout
{
  if ((MapsFeature_IsEnabled_LocationIntelligenceMaps() & 1) == 0)
  {
    _needsViewLayout = [(CarMapsSuggestionsView *)self _needsViewLayout];
    layoutUpdateTimer = [(CarMapsSuggestionsView *)self layoutUpdateTimer];

    if (_needsViewLayout)
    {
      if (!layoutUpdateTimer)
      {
        objc_initWeak(&location, self);
        v7 = _NSConcreteStackBlock;
        v8 = 3221225472;
        v9 = sub_101017EC0;
        v10 = &unk_101661BC8;
        objc_copyWeak(&v11, &location);
        v5 = [NSTimer scheduledTimerWithTimeInterval:0 repeats:&v7 block:0.0];
        [(CarMapsSuggestionsView *)self setLayoutUpdateTimer:v5, v7, v8, v9, v10];

        objc_destroyWeak(&v11);
        objc_destroyWeak(&location);
      }
    }

    else if (layoutUpdateTimer)
    {
      layoutUpdateTimer2 = [(CarMapsSuggestionsView *)self layoutUpdateTimer];
      [layoutUpdateTimer2 invalidate];

      [(CarMapsSuggestionsView *)self setLayoutUpdateTimer:0];
    }
  }
}

- (void)setNavigationAidedDrivingEnabled:(BOOL)enabled
{
  if (self->_navigationAidedDrivingEnabled != enabled)
  {
    self->_navigationAidedDrivingEnabled = enabled;
    [(CarMapsSuggestionsView *)self _setNeedsViewLayout];
  }
}

- (void)_externalDeviceUpdated:(id)updated
{
  v4 = +[MapsExternalDevice sharedInstance];
  -[CarMapsSuggestionsView setNavigationAidedDrivingEnabled:](self, "setNavigationAidedDrivingEnabled:", [v4 isNavigationAidedDrivingEnabled]);
}

- (void)dealloc
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = CarMapsSuggestionsView;
  [(CarMapsSuggestionsView *)&v4 dealloc];
}

- (CarMapsSuggestionsView)init
{
  v29.receiver = self;
  v29.super_class = CarMapsSuggestionsView;
  y = CGRectZero.origin.y;
  width = CGRectZero.size.width;
  height = CGRectZero.size.height;
  height = [(CarMapsSuggestionsView *)&v29 initWithFrame:CGRectZero.origin.x, y, width, height];
  v7 = height;
  if (height)
  {
    LODWORD(v6) = 1144750080;
    [(CarMapsSuggestionsView *)height setContentHuggingPriority:1 forAxis:v6];
    v7->_routeIsNavigable = 1;
    v7->_showSelectLabel = 1;
    v8 = +[MapsExternalDevice sharedInstance];
    v7->_navigationAidedDrivingEnabled = [v8 isNavigationAidedDrivingEnabled];

    v9 = !v7->_navigationAidedDrivingEnabled;
    v7->_lastLayoutConfig.showSelectLabel = !v7->_showSelectLabel;
    v7->_lastLayoutConfig.navigationAidedDrivingEnabled = v9;
    v7->_lastLayoutConfig.suggestionKey = 0;
    height2 = [[CarETAOnlyGuidanceSign alloc] initWithFrame:CGRectZero.origin.x, y, width, height];
    etaOnlyView = v7->_etaOnlyView;
    v7->_etaOnlyView = height2;

    [(CarETAOnlyGuidanceSign *)v7->_etaOnlyView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(CarMapsSuggestionsView *)v7 addSubview:v7->_etaOnlyView];
    v12 = [[UILabel alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
    selectLabel = v7->_selectLabel;
    v7->_selectLabel = v12;

    [(UILabel *)v7->_selectLabel setLineBreakMode:4];
    if (MapsFeature_IsEnabled_LocationIntelligenceMaps())
    {
      [(UILabel *)v7->_selectLabel setTextAlignment:1];
    }

    v14 = +[UIColor _carSystemTertiaryColor];
    [(UILabel *)v7->_selectLabel setTextColor:v14];

    [(UILabel *)v7->_selectLabel setNumberOfLines:2];
    v15 = [UIFont _mapsCar_fontForTextStyle:UIFontTextStyleCaption1 weight:UIFontWeightRegular];
    [(UILabel *)v7->_selectLabel setFont:v15];

    [(UILabel *)v7->_selectLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    LODWORD(v16) = 1148846080;
    [(UILabel *)v7->_selectLabel setContentCompressionResistancePriority:1 forAxis:v16];
    topAnchor = [(CarETAOnlyGuidanceSign *)v7->_etaOnlyView topAnchor];
    topAnchor2 = [(CarMapsSuggestionsView *)v7 topAnchor];
    v18 = [topAnchor constraintEqualToAnchor:topAnchor2];
    v30[0] = v18;
    leadingAnchor = [(CarETAOnlyGuidanceSign *)v7->_etaOnlyView leadingAnchor];
    leadingAnchor2 = [(CarMapsSuggestionsView *)v7 leadingAnchor];
    v21 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    v30[1] = v21;
    trailingAnchor = [(CarETAOnlyGuidanceSign *)v7->_etaOnlyView trailingAnchor];
    trailingAnchor2 = [(CarMapsSuggestionsView *)v7 trailingAnchor];
    v24 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    v30[2] = v24;
    v25 = [NSArray arrayWithObjects:v30 count:3];
    [NSLayoutConstraint activateConstraints:v25];

    [(CarMapsSuggestionsView *)v7 _updateViewLayout];
    v26 = +[NSNotificationCenter defaultCenter];
    [v26 addObserver:v7 selector:"_externalDeviceUpdated:" name:@"MapsExternalDeviceUpdated" object:0];
  }

  return v7;
}

@end