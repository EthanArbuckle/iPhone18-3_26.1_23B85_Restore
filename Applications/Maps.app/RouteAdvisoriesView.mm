@interface RouteAdvisoriesView
- (ActionCoordinator)coordinator;
- (BOOL)isVisible;
- (RouteAdvisoriesView)init;
- (void)_logAnalyticsIfNeeded;
- (void)didMoveToWindow;
- (void)refreshContent;
- (void)setAdvisories:(id)advisories coordinator:(id)coordinator;
- (void)setOverrideTextColor:(id)color isSelected:(BOOL)selected;
- (void)setupSubViews;
@end

@implementation RouteAdvisoriesView

- (ActionCoordinator)coordinator
{
  WeakRetained = objc_loadWeakRetained(&self->_coordinator);

  return WeakRetained;
}

- (void)refreshContent
{
  v3 = objc_alloc_init(NSMutableArray);
  objc_initWeak(&location, self);
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  obj = self->_viewModels;
  v4 = [(NSArray *)obj countByEnumeratingWithState:&v22 objects:v27 count:16];
  if (v4)
  {
    v5 = *v23;
    do
    {
      v6 = 0;
      do
      {
        if (*v23 != v5)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v22 + 1) + 8 * v6);
        v8 = [[RouteAdvisoryView alloc] initWithViewModel:v7];
        handler = [v7 handler];

        if (handler)
        {
          handler2 = [v7 handler];
          [(RouteAdvisoryView *)v8 setActionHandler:handler2];
        }

        else
        {
          advisory = [v7 advisory];
          isClickable = [advisory isClickable];

          if (isClickable)
          {
            advisory2 = [v7 advisory];
            [(RouteAdvisoryView *)v8 setAlwaysClickable:1];
            objc_initWeak(&from, v8);
            v17[0] = _NSConcreteStackBlock;
            v17[1] = 3221225472;
            v17[2] = sub_100E18E0C;
            v17[3] = &unk_1016559D0;
            objc_copyWeak(&v19, &location);
            v14 = advisory2;
            v18 = v14;
            objc_copyWeak(&v20, &from);
            [(RouteAdvisoryView *)v8 setActionHandler:v17];
            objc_destroyWeak(&v20);

            objc_destroyWeak(&v19);
            objc_destroyWeak(&from);

            goto LABEL_11;
          }
        }

        [(RouteAdvisoryView *)v8 setAlwaysClickable:handler != 0];
LABEL_11:
        [(RouteAdvisoryView *)v8 setOverrideTextColor:self->_overrideTextColor];
        [v3 addObject:v8];

        v6 = v6 + 1;
      }

      while (v4 != v6);
      v4 = [(NSArray *)obj countByEnumeratingWithState:&v22 objects:v27 count:16];
    }

    while (v4);
  }

  [(RouteAdvisoriesView *)self _logAnalyticsIfNeeded];
  advisoryStackView = [(RouteAdvisoriesView *)self advisoryStackView];
  [advisoryStackView _maps_setArrangedSubviews:v3];

  objc_destroyWeak(&location);
}

- (void)_logAnalyticsIfNeeded
{
  if (!self->_hasLoggedAdvisoryAnalytics)
  {
    if ([(NSArray *)self->_viewModels count])
    {
      window = [(RouteAdvisoriesView *)self window];

      if (window)
      {
        v15 = 0u;
        v16 = 0u;
        v13 = 0u;
        v14 = 0u;
        v4 = self->_viewModels;
        v5 = [(NSArray *)v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
        if (v5)
        {
          v6 = v5;
          v7 = *v14;
          do
          {
            for (i = 0; i != v6; i = i + 1)
            {
              if (*v14 != v7)
              {
                objc_enumerationMutation(v4);
              }

              v9 = *(*(&v13 + 1) + 8 * i);
              advisory = [v9 advisory];

              if (advisory)
              {
                v11 = +[MKMapService sharedService];
                advisory2 = [v9 advisory];
                [v11 captureUserAction:247 onTarget:504 forAdvisory:advisory2];
              }
            }

            v6 = [(NSArray *)v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
          }

          while (v6);
        }

        self->_hasLoggedAdvisoryAnalytics = 1;
      }
    }
  }
}

- (void)setAdvisories:(id)advisories coordinator:(id)coordinator
{
  advisoriesCopy = advisories;
  coordinatorCopy = coordinator;
  viewModels = self->_viewModels;
  v12 = advisoriesCopy;
  v10 = viewModels;
  if (v12 | v10)
  {
    v11 = [v12 isEqual:v10];

    if ((v11 & 1) == 0)
    {
      objc_storeStrong(&self->_viewModels, advisories);
      objc_storeWeak(&self->_coordinator, coordinatorCopy);
      self->_hasLoggedAdvisoryAnalytics = 0;
      [(RouteAdvisoriesView *)self refreshContent];
    }
  }
}

- (BOOL)isVisible
{
  advisoryStackView = [(RouteAdvisoriesView *)self advisoryStackView];
  arrangedSubviews = [advisoryStackView arrangedSubviews];
  v4 = [arrangedSubviews count] != 0;

  return v4;
}

- (void)setOverrideTextColor:(id)color isSelected:(BOOL)selected
{
  selectedCopy = selected;
  colorCopy = color;
  v8 = self->_overrideTextColor;
  v9 = colorCopy;
  if (v9 | v8 && (v10 = [v8 isEqual:v9], v9, v8, !v10) || self->_isSelected != selectedCopy)
  {
    objc_storeStrong(&self->_overrideTextColor, color);
    self->_isSelected = selectedCopy;
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    advisoryStackView = [(RouteAdvisoriesView *)self advisoryStackView];
    arrangedSubviews = [advisoryStackView arrangedSubviews];

    v13 = [arrangedSubviews countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v18;
      do
      {
        v16 = 0;
        do
        {
          if (*v18 != v15)
          {
            objc_enumerationMutation(arrangedSubviews);
          }

          [*(*(&v17 + 1) + 8 * v16) setOverrideTextColor:self->_overrideTextColor];
          v16 = v16 + 1;
        }

        while (v14 != v16);
        v14 = [arrangedSubviews countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v14);
    }
  }
}

- (void)setupSubViews
{
  v3 = objc_alloc_init(UIStackView);
  [(RouteAdvisoriesView *)self setAdvisoryStackView:v3];

  advisoryStackView = [(RouteAdvisoriesView *)self advisoryStackView];
  [advisoryStackView setTranslatesAutoresizingMaskIntoConstraints:0];

  advisoryStackView2 = [(RouteAdvisoriesView *)self advisoryStackView];
  [advisoryStackView2 setAxis:1];

  advisoryStackView3 = [(RouteAdvisoriesView *)self advisoryStackView];
  [advisoryStackView3 setAlignment:0];

  advisoryStackView4 = [(RouteAdvisoriesView *)self advisoryStackView];
  [advisoryStackView4 setDistribution:0];

  advisoryStackView5 = [(RouteAdvisoriesView *)self advisoryStackView];
  [advisoryStackView5 setSpacing:3.0];

  advisoryStackView6 = [(RouteAdvisoriesView *)self advisoryStackView];
  LODWORD(v10) = 1148846080;
  [advisoryStackView6 setContentHuggingPriority:1 forAxis:v10];

  advisoryStackView7 = [(RouteAdvisoriesView *)self advisoryStackView];
  [(RouteAdvisoriesView *)self addSubview:advisoryStackView7];

  advisoryStackView8 = [(RouteAdvisoriesView *)self advisoryStackView];
  leadingAnchor = [advisoryStackView8 leadingAnchor];
  leadingAnchor2 = [(RouteAdvisoriesView *)self leadingAnchor];
  v25 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v29[0] = v25;
  advisoryStackView9 = [(RouteAdvisoriesView *)self advisoryStackView];
  trailingAnchor = [advisoryStackView9 trailingAnchor];
  trailingAnchor2 = [(RouteAdvisoriesView *)self trailingAnchor];
  v21 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v29[1] = v21;
  advisoryStackView10 = [(RouteAdvisoriesView *)self advisoryStackView];
  topAnchor = [advisoryStackView10 topAnchor];
  topAnchor2 = [(RouteAdvisoriesView *)self topAnchor];
  v15 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v29[2] = v15;
  advisoryStackView11 = [(RouteAdvisoriesView *)self advisoryStackView];
  bottomAnchor = [advisoryStackView11 bottomAnchor];
  bottomAnchor2 = [(RouteAdvisoriesView *)self bottomAnchor];
  v19 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  v29[3] = v19;
  v20 = [NSArray arrayWithObjects:v29 count:4];
  [(RouteAdvisoriesView *)self addConstraints:v20];
}

- (void)didMoveToWindow
{
  v4.receiver = self;
  v4.super_class = RouteAdvisoriesView;
  [(RouteAdvisoriesView *)&v4 didMoveToWindow];
  window = [(RouteAdvisoriesView *)self window];

  if (window)
  {
    [(RouteAdvisoriesView *)self _logAnalyticsIfNeeded];
  }
}

- (RouteAdvisoriesView)init
{
  v5.receiver = self;
  v5.super_class = RouteAdvisoriesView;
  v2 = [(RouteAdvisoriesView *)&v5 initWithFrame:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
  v3 = v2;
  if (v2)
  {
    [(RouteAdvisoriesView *)v2 setupSubViews];
  }

  return v3;
}

@end