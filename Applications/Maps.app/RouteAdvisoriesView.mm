@interface RouteAdvisoriesView
- (ActionCoordinator)coordinator;
- (BOOL)isVisible;
- (RouteAdvisoriesView)init;
- (void)_logAnalyticsIfNeeded;
- (void)didMoveToWindow;
- (void)refreshContent;
- (void)setAdvisories:(id)a3 coordinator:(id)a4;
- (void)setOverrideTextColor:(id)a3 isSelected:(BOOL)a4;
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
        v9 = [v7 handler];

        if (v9)
        {
          v10 = [v7 handler];
          [(RouteAdvisoryView *)v8 setActionHandler:v10];
        }

        else
        {
          v11 = [v7 advisory];
          v12 = [v11 isClickable];

          if (v12)
          {
            v13 = [v7 advisory];
            [(RouteAdvisoryView *)v8 setAlwaysClickable:1];
            objc_initWeak(&from, v8);
            v17[0] = _NSConcreteStackBlock;
            v17[1] = 3221225472;
            v17[2] = sub_100E18E0C;
            v17[3] = &unk_1016559D0;
            objc_copyWeak(&v19, &location);
            v14 = v13;
            v18 = v14;
            objc_copyWeak(&v20, &from);
            [(RouteAdvisoryView *)v8 setActionHandler:v17];
            objc_destroyWeak(&v20);

            objc_destroyWeak(&v19);
            objc_destroyWeak(&from);

            goto LABEL_11;
          }
        }

        [(RouteAdvisoryView *)v8 setAlwaysClickable:v9 != 0];
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
  v15 = [(RouteAdvisoriesView *)self advisoryStackView];
  [v15 _maps_setArrangedSubviews:v3];

  objc_destroyWeak(&location);
}

- (void)_logAnalyticsIfNeeded
{
  if (!self->_hasLoggedAdvisoryAnalytics)
  {
    if ([(NSArray *)self->_viewModels count])
    {
      v3 = [(RouteAdvisoriesView *)self window];

      if (v3)
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
              v10 = [v9 advisory];

              if (v10)
              {
                v11 = +[MKMapService sharedService];
                v12 = [v9 advisory];
                [v11 captureUserAction:247 onTarget:504 forAdvisory:v12];
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

- (void)setAdvisories:(id)a3 coordinator:(id)a4
{
  v7 = a3;
  v8 = a4;
  viewModels = self->_viewModels;
  v12 = v7;
  v10 = viewModels;
  if (v12 | v10)
  {
    v11 = [v12 isEqual:v10];

    if ((v11 & 1) == 0)
    {
      objc_storeStrong(&self->_viewModels, a3);
      objc_storeWeak(&self->_coordinator, v8);
      self->_hasLoggedAdvisoryAnalytics = 0;
      [(RouteAdvisoriesView *)self refreshContent];
    }
  }
}

- (BOOL)isVisible
{
  v2 = [(RouteAdvisoriesView *)self advisoryStackView];
  v3 = [v2 arrangedSubviews];
  v4 = [v3 count] != 0;

  return v4;
}

- (void)setOverrideTextColor:(id)a3 isSelected:(BOOL)a4
{
  v4 = a4;
  v7 = a3;
  v8 = self->_overrideTextColor;
  v9 = v7;
  if (v9 | v8 && (v10 = [v8 isEqual:v9], v9, v8, !v10) || self->_isSelected != v4)
  {
    objc_storeStrong(&self->_overrideTextColor, a3);
    self->_isSelected = v4;
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v11 = [(RouteAdvisoriesView *)self advisoryStackView];
    v12 = [v11 arrangedSubviews];

    v13 = [v12 countByEnumeratingWithState:&v17 objects:v21 count:16];
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
            objc_enumerationMutation(v12);
          }

          [*(*(&v17 + 1) + 8 * v16) setOverrideTextColor:self->_overrideTextColor];
          v16 = v16 + 1;
        }

        while (v14 != v16);
        v14 = [v12 countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v14);
    }
  }
}

- (void)setupSubViews
{
  v3 = objc_alloc_init(UIStackView);
  [(RouteAdvisoriesView *)self setAdvisoryStackView:v3];

  v4 = [(RouteAdvisoriesView *)self advisoryStackView];
  [v4 setTranslatesAutoresizingMaskIntoConstraints:0];

  v5 = [(RouteAdvisoriesView *)self advisoryStackView];
  [v5 setAxis:1];

  v6 = [(RouteAdvisoriesView *)self advisoryStackView];
  [v6 setAlignment:0];

  v7 = [(RouteAdvisoriesView *)self advisoryStackView];
  [v7 setDistribution:0];

  v8 = [(RouteAdvisoriesView *)self advisoryStackView];
  [v8 setSpacing:3.0];

  v9 = [(RouteAdvisoriesView *)self advisoryStackView];
  LODWORD(v10) = 1148846080;
  [v9 setContentHuggingPriority:1 forAxis:v10];

  v11 = [(RouteAdvisoriesView *)self advisoryStackView];
  [(RouteAdvisoriesView *)self addSubview:v11];

  v28 = [(RouteAdvisoriesView *)self advisoryStackView];
  v27 = [v28 leadingAnchor];
  v26 = [(RouteAdvisoriesView *)self leadingAnchor];
  v25 = [v27 constraintEqualToAnchor:v26];
  v29[0] = v25;
  v24 = [(RouteAdvisoriesView *)self advisoryStackView];
  v23 = [v24 trailingAnchor];
  v22 = [(RouteAdvisoriesView *)self trailingAnchor];
  v21 = [v23 constraintEqualToAnchor:v22];
  v29[1] = v21;
  v12 = [(RouteAdvisoriesView *)self advisoryStackView];
  v13 = [v12 topAnchor];
  v14 = [(RouteAdvisoriesView *)self topAnchor];
  v15 = [v13 constraintEqualToAnchor:v14];
  v29[2] = v15;
  v16 = [(RouteAdvisoriesView *)self advisoryStackView];
  v17 = [v16 bottomAnchor];
  v18 = [(RouteAdvisoriesView *)self bottomAnchor];
  v19 = [v17 constraintEqualToAnchor:v18];
  v29[3] = v19;
  v20 = [NSArray arrayWithObjects:v29 count:4];
  [(RouteAdvisoriesView *)self addConstraints:v20];
}

- (void)didMoveToWindow
{
  v4.receiver = self;
  v4.super_class = RouteAdvisoriesView;
  [(RouteAdvisoriesView *)&v4 didMoveToWindow];
  v3 = [(RouteAdvisoriesView *)self window];

  if (v3)
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