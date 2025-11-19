@interface CarMapsSuggestionsView
- ($65C3FA8A572F9D8A414E710B16373297)lastLayoutConfig;
- (BOOL)_needsViewLayout;
- (CarMapsSuggestionsView)init;
- (unint64_t)accessibilityTraits;
- (void)_externalDeviceUpdated:(id)a3;
- (void)_hideSelectLabel;
- (void)_setNeedsViewLayout;
- (void)_updateContents;
- (void)_updateViewLayout;
- (void)dealloc;
- (void)setCurrentETA:(id)a3;
- (void)setCurrentSuggestion:(id)a3;
- (void)setNavigationAidedDrivingEnabled:(BOOL)a3;
- (void)setShowSelectLabel:(BOOL)a3;
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
    v3 = [(CarMapsSuggestionsView *)self hideSelectLabelTimer];
    [v3 invalidate];

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

- (void)setCurrentETA:(id)a3
{
  v9 = a3;
  v5 = [v9 remainingMinutes];
  if (v5 != -[GuidanceETA remainingMinutes](self->_currentETA, "remainingMinutes") || ([v9 etaDate], v6 = objc_claimAutoreleasedReturnValue(), -[GuidanceETA etaDate](self->_currentETA, "etaDate"), v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v6, "isEqual:", v7), v7, v6, (v8 & 1) == 0))
  {
    objc_storeStrong(&self->_currentETA, a3);
    [(CarMapsSuggestionsView *)self _updateContents];
  }
}

- (void)setCurrentSuggestion:(id)a3
{
  v4 = a3;
  [(CarMapsSuggestionsView *)self setSuggestionKey:[(CarMapsSuggestionsView *)self suggestionKey]+ 1];
  v5 = [v4 route];
  if (v5)
  {
    v6 = [v4 route];
    -[CarMapsSuggestionsView setRouteIsNavigable:](self, "setRouteIsNavigable:", [v6 isNavigable]);
  }

  else
  {
    [(CarMapsSuggestionsView *)self setRouteIsNavigable:0];
  }

  v7 = [(MapsSuggestionsRouteGeniusEntry *)self->_currentSuggestion entry];
  v13 = [v7 geoMapItem];

  currentSuggestion = self->_currentSuggestion;
  self->_currentSuggestion = v4;
  v9 = v4;

  v10 = [(MapsSuggestionsRouteGeniusEntry *)self->_currentSuggestion entry];

  v11 = [v10 geoMapItem];

  [(CarMapsSuggestionsView *)self _updateContents];
  if (![(CarMapsSuggestionsView *)self showSelectLabel])
  {
    v12 = 1;
    if (v13 && v11)
    {
      v12 = GEOMapItemIsEqualToMapItemForPurpose() ^ 1;
    }

    [(CarMapsSuggestionsView *)self setShowSelectLabel:v12];
  }

  [(CarMapsSuggestionsView *)self _setNeedsViewLayout];
}

- (void)setShowSelectLabel:(BOOL)a3
{
  if (self->_showSelectLabel != a3)
  {
    v4 = a3;
    self->_showSelectLabel = a3;
    if ((MapsFeature_IsEnabled_LocationIntelligenceMaps() & 1) == 0)
    {
      if (v4)
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
  v4 = 16;
  v5 = [(MapsSuggestionsRouteGeniusEntry *)self->_currentSuggestion entry];
  v40 = [v5 stringForKey:@"MapsSuggestionsResumeRouteDefaultTitle"];

  v6 = v40;
  if (!v40)
  {
    v5 = [(MapsSuggestionsRouteGeniusEntry *)self->_currentSuggestion entry];
    v6 = [v5 title];
  }

  v7 = [(CarMapsSuggestionsView *)self etaOnlyView];
  [v7 setTitle:v6];

  if (!v40)
  {
  }

  if (MapsFeature_IsEnabled_LocationIntelligenceMaps())
  {
    v8 = [(MapsSuggestionsRouteGeniusEntry *)self->_currentSuggestion route];
    v9 = [v8 mutableData];
    v10 = [v9 routeOverviewDescriptionStrings];

    v11 = [v10 firstObject];
    v12 = [v11 stringWithDefaultOptions];

    if (v12)
    {
      v13 = [(CarMapsSuggestionsView *)self etaOnlyView];
      [v13 setDescriptionText:v12];
    }
  }

  v14 = [(MapsSuggestionsRouteGeniusEntry *)self->_currentSuggestion route];
  v15 = [v14 legs];
  v16 = [v15 count];
  if (v16)
  {
    v4 = [(MapsSuggestionsRouteGeniusEntry *)self->_currentSuggestion route];
    v2 = [v4 legs];
    v17 = [v2 count] - 1;
  }

  else
  {
    v17 = 0;
  }

  v18 = [(CarMapsSuggestionsView *)self etaOnlyView];
  [v18 setNumberOfStops:v17];

  if (v16)
  {
  }

  v19 = [(CarMapsSuggestionsView *)self routeIsNavigable];
  if (v19)
  {
    v20 = [(CarMapsSuggestionsView *)self currentETA];
  }

  else
  {
    v20 = 0;
  }

  v21 = [(CarMapsSuggestionsView *)self etaOnlyView];
  [v21 setLatestETA:v20];

  if (v19)
  {
  }

  if ([(CarMapsSuggestionsView *)self routeIsNavigable])
  {
    v22 = [(CarMapsSuggestionsView *)self etaOnlyView];
    [v22 setSubtitleOverride:0];
  }

  else
  {
    v22 = sub_100FA8E84();
    v23 = [(CarMapsSuggestionsView *)self etaOnlyView];
    [v23 setSubtitleOverride:v22];
  }

  v24 = +[CarDisplayController sharedInstance];
  v25 = [v24 supportsTouchInteractionModel];

  if (v25)
  {
    v26 = @"CAR_PROACTIVE_TAP";
  }

  else
  {
    v26 = @"CAR_PROACTIVE_SELECT";
  }

  v27 = +[NSBundle mainBundle];
  v28 = [v27 localizedStringForKey:v26 value:@"localized string not found" table:0];

  v29 = [(CarMapsSuggestionsView *)self selectLabel];
  [v29 setText:v28];

  v30 = +[NSMutableArray array];
  v31 = [(CarMapsSuggestionsView *)self etaOnlyView];
  v32 = [v31 title];

  if (v32)
  {
    v33 = [(CarMapsSuggestionsView *)self etaOnlyView];
    v34 = [v33 title];
    [v30 addObject:v34];
  }

  v35 = [(CarMapsSuggestionsView *)self selectLabel];
  v36 = [v35 text];

  if (v36)
  {
    v37 = [(CarMapsSuggestionsView *)self selectLabel];
    v38 = [v37 text];
    [v30 addObject:v38];
  }

  v39 = [v30 copy];
  [(CarMapsSuggestionsView *)self setAccessibilityUserInputLabels:v39];
}

- (void)_updateViewLayout
{
  v3 = [(CarMapsSuggestionsView *)self layoutUpdateTimer];
  [v3 invalidate];

  [(CarMapsSuggestionsView *)self setLayoutUpdateTimer:0];
  v4 = [(CarMapsSuggestionsView *)self currentConstraints];
  [NSLayoutConstraint deactivateConstraints:v4];

  v30 = objc_opt_new();
  v5 = [(CarMapsSuggestionsView *)self selectLabel];
  [v5 removeFromSuperview];

  if ([(CarMapsSuggestionsView *)self showSelectLabel])
  {
    v6 = [(CarMapsSuggestionsView *)self selectLabel];
    [(CarMapsSuggestionsView *)self addSubview:v6];

    v7 = [(CarMapsSuggestionsView *)self selectLabel];
    v8 = [v7 topAnchor];
    v9 = [(CarMapsSuggestionsView *)self etaOnlyView];
    v10 = [v9 bottomAnchor];
    v11 = [v8 constraintEqualToAnchor:v10 constant:10.0];
    [v30 addObject:v11];

    v12 = [(CarMapsSuggestionsView *)self selectLabel];
    v13 = [v12 leadingAnchor];
    v14 = [(CarMapsSuggestionsView *)self leadingAnchor];
    v15 = [v13 constraintEqualToAnchor:v14 constant:10.0];
    [v30 addObject:v15];

    v16 = [(CarMapsSuggestionsView *)self selectLabel];
    v17 = [v16 trailingAnchor];
    v18 = [(CarMapsSuggestionsView *)self trailingAnchor];
    v19 = [v17 constraintEqualToAnchor:v18 constant:-10.0];
    [v30 addObject:v19];

    v20 = [(CarMapsSuggestionsView *)self selectLabel];
    v21 = [v20 bottomAnchor];
    v22 = [(CarMapsSuggestionsView *)self bottomAnchor];
    v23 = -10.0;
    v24 = v21;
  }

  else
  {
    v20 = [(CarMapsSuggestionsView *)self bottomAnchor];
    v21 = [(CarMapsSuggestionsView *)self etaOnlyView];
    v22 = [v21 bottomAnchor];
    v23 = 10.0;
    v24 = v20;
  }

  v25 = [v24 constraintEqualToAnchor:v22 constant:v23];
  [v30 addObject:v25];

  [(CarMapsSuggestionsView *)self setCurrentConstraints:v30];
  v26 = [(CarMapsSuggestionsView *)self showSelectLabel];
  v27 = [(CarMapsSuggestionsView *)self navigationAidedDrivingEnabled];
  v28 = [(CarMapsSuggestionsView *)self suggestionKey];
  v29 = 256;
  if (!v27)
  {
    v29 = 0;
  }

  [(CarMapsSuggestionsView *)self setLastLayoutConfig:v29 | v26, v28];
  [NSLayoutConstraint activateConstraints:v30];
}

- (BOOL)_needsViewLayout
{
  v3 = [(CarMapsSuggestionsView *)self suggestionKey];
  [(CarMapsSuggestionsView *)self lastLayoutConfig];
  if (v3 == v4 && (v5 = [(CarMapsSuggestionsView *)self showSelectLabel], v5 == ([(CarMapsSuggestionsView *)self lastLayoutConfig]& 1)))
  {
    v7 = [(CarMapsSuggestionsView *)self navigationAidedDrivingEnabled];
    return v7 ^ ([(CarMapsSuggestionsView *)self lastLayoutConfig]>> 8) & 1;
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
    v3 = [(CarMapsSuggestionsView *)self _needsViewLayout];
    v4 = [(CarMapsSuggestionsView *)self layoutUpdateTimer];

    if (v3)
    {
      if (!v4)
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

    else if (v4)
    {
      v6 = [(CarMapsSuggestionsView *)self layoutUpdateTimer];
      [v6 invalidate];

      [(CarMapsSuggestionsView *)self setLayoutUpdateTimer:0];
    }
  }
}

- (void)setNavigationAidedDrivingEnabled:(BOOL)a3
{
  if (self->_navigationAidedDrivingEnabled != a3)
  {
    self->_navigationAidedDrivingEnabled = a3;
    [(CarMapsSuggestionsView *)self _setNeedsViewLayout];
  }
}

- (void)_externalDeviceUpdated:(id)a3
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
  v5 = [(CarMapsSuggestionsView *)&v29 initWithFrame:CGRectZero.origin.x, y, width, height];
  v7 = v5;
  if (v5)
  {
    LODWORD(v6) = 1144750080;
    [(CarMapsSuggestionsView *)v5 setContentHuggingPriority:1 forAxis:v6];
    v7->_routeIsNavigable = 1;
    v7->_showSelectLabel = 1;
    v8 = +[MapsExternalDevice sharedInstance];
    v7->_navigationAidedDrivingEnabled = [v8 isNavigationAidedDrivingEnabled];

    v9 = !v7->_navigationAidedDrivingEnabled;
    v7->_lastLayoutConfig.showSelectLabel = !v7->_showSelectLabel;
    v7->_lastLayoutConfig.navigationAidedDrivingEnabled = v9;
    v7->_lastLayoutConfig.suggestionKey = 0;
    v10 = [[CarETAOnlyGuidanceSign alloc] initWithFrame:CGRectZero.origin.x, y, width, height];
    etaOnlyView = v7->_etaOnlyView;
    v7->_etaOnlyView = v10;

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
    v28 = [(CarETAOnlyGuidanceSign *)v7->_etaOnlyView topAnchor];
    v17 = [(CarMapsSuggestionsView *)v7 topAnchor];
    v18 = [v28 constraintEqualToAnchor:v17];
    v30[0] = v18;
    v19 = [(CarETAOnlyGuidanceSign *)v7->_etaOnlyView leadingAnchor];
    v20 = [(CarMapsSuggestionsView *)v7 leadingAnchor];
    v21 = [v19 constraintEqualToAnchor:v20];
    v30[1] = v21;
    v22 = [(CarETAOnlyGuidanceSign *)v7->_etaOnlyView trailingAnchor];
    v23 = [(CarMapsSuggestionsView *)v7 trailingAnchor];
    v24 = [v22 constraintEqualToAnchor:v23];
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