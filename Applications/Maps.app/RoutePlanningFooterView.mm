@interface RoutePlanningFooterView
- (BOOL)shouldStackButtonsForWidth:(double)a3;
- (RoutePlanningFooterView)initWithCoder:(id)a3;
- (RoutePlanningFooterView)initWithFrame:(CGRect)a3;
- (RoutePlanningFooterViewDelegate)delegate;
- (id)_getTicketsMenuProvider;
- (void)_didTapButton:(id)a3;
- (void)_didTapTicketingSegmentInfo:(id)a3;
- (void)_setupConstraints;
- (void)_updateVisibleCommandsForCommandSet;
- (void)customInit;
- (void)layoutSubviews;
- (void)setVisibleCommandSet:(int64_t)a3;
- (void)traitCollectionDidChange:(id)a3;
- (void)updateTheme;
@end

@implementation RoutePlanningFooterView

- (RoutePlanningFooterViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)_didTapButton:(id)a3
{
  v4 = [a3 tag];
  if (v4 > 3)
  {
    if (v4 == 4)
    {
      v11 = [(RoutePlanningFooterView *)self delegate];
      v12 = objc_opt_respondsToSelector();

      if ((v12 & 1) == 0)
      {
        return;
      }

      v13 = [(RoutePlanningFooterView *)self delegate];
      [v13 didTapGetTicketsOnRoutePlanningFooterView:self];
    }

    else
    {
      if (v4 != 8)
      {
        return;
      }

      if (!sub_100741964())
      {
        return;
      }

      v7 = [(RoutePlanningFooterView *)self delegate];
      v8 = objc_opt_respondsToSelector();

      if ((v8 & 1) == 0)
      {
        return;
      }

      v13 = [(RoutePlanningFooterView *)self delegate];
      [v13 didTapReportAProblemButtonOnRoutePlanningFooterView:self];
    }
  }

  else if (v4 == 1)
  {
    v9 = [(RoutePlanningFooterView *)self delegate];
    v10 = objc_opt_respondsToSelector();

    if ((v10 & 1) == 0)
    {
      return;
    }

    v13 = [(RoutePlanningFooterView *)self delegate];
    [v13 didTapMoreRidesharingChoicesButtonOnRoutePlanningFooterView:self];
  }

  else
  {
    if (v4 != 2)
    {
      return;
    }

    v5 = [(RoutePlanningFooterView *)self delegate];
    v6 = objc_opt_respondsToSelector();

    if ((v6 & 1) == 0)
    {
      return;
    }

    v13 = [(RoutePlanningFooterView *)self delegate];
    [v13 didTapShareButtonOnRoutePlanningFooterView:self];
  }
}

- (BOOL)shouldStackButtonsForWidth:(double)a3
{
  v5 = [(RoutePlanningFooterView *)self traitCollection];
  v6 = [v5 userInterfaceIdiom];

  if (v6 == 5)
  {
    return 0;
  }

  v8 = [(RoutePlanningFooterView *)self leadingButton];
  [v8 intrinsicContentSize];
  v10 = v9;

  v11 = [(RoutePlanningFooterView *)self trailingButton];
  [v11 intrinsicContentSize];
  v13 = v12;

  return v13 + v10 > fmax(a3 + -48.0, 0.0);
}

- (void)_setupConstraints
{
  v3 = [(RoutePlanningFooterView *)self trailingButton];
  LODWORD(v4) = 1144750080;
  [v3 setContentCompressionResistancePriority:0 forAxis:v4];

  v5 = &_s10MapsDesign17ListCellViewModelCMa_ptr_0;
  [NSLayoutConstraint deactivateConstraints:self->_constraints];
  [(RoutePlanningFooterView *)self bounds];
  v6 = [(RoutePlanningFooterView *)self shouldStackButtonsForWidth:CGRectGetWidth(v83)];
  v7 = [(RoutePlanningFooterView *)self stackView];
  v8 = v7;
  v9 = &OBJC_METACLASS___NavShareETACell;
  v79 = v6;
  if (v6)
  {
    [v7 setAxis:1];

    v10 = [(RoutePlanningFooterView *)self stackView];
    [v10 setAlignment:1];

    v11 = [(RoutePlanningFooterView *)self stackView];
    [DynamicTypeWizard autoscaleStackView:v11 spacing:&stru_10165D8C8 withFontProvider:31.0];

    v12 = [(RoutePlanningFooterView *)self trailingButton];
    [v12 setContentHorizontalAlignment:4];

    v13 = [(RoutePlanningFooterView *)self trailingHairlineView];
    [v13 setTopHairlineHidden:0];

    v80 = objc_alloc_init(NSMutableArray);
    v14 = [(RoutePlanningFooterView *)self trailingHairlineView];
    v15 = [v14 topAnchor];
    v16 = [(RoutePlanningFooterView *)self centerYAnchor];
    v17 = [v15 constraintEqualToAnchor:v16 constant:3.0];

    v78 = [DynamicTypeWizard autoscaledConstraint:v17 constant:&stru_10165D8C8 withFontProvider:3.0];

    v82[0] = v78;
    v77 = [(RoutePlanningFooterView *)self stackView];
    v75 = [v77 leadingAnchor];
    v76 = [(RoutePlanningFooterView *)self trailingHairlineView];
    v74 = [v76 leadingAnchor];
    v73 = [v75 constraintEqualToAnchor:v74];
    v82[1] = v73;
    v72 = [(RoutePlanningFooterView *)self trailingHairlineView];
    v70 = [v72 bottomAnchor];
    v71 = [(RoutePlanningFooterView *)self trailingButton];
    v18 = [v71 lastBaselineAnchor];
    v19 = [v70 constraintEqualToAnchor:v18];
    v82[2] = v19;
    v20 = [(RoutePlanningFooterView *)self trailingHairlineView];
    v21 = [v20 trailingAnchor];
    v22 = [(RoutePlanningFooterView *)self stackView];
    v23 = [v22 trailingAnchor];
    v24 = [v21 constraintEqualToAnchor:v23];
    v82[3] = v24;
    v25 = [NSArray arrayWithObjects:v82 count:4];
    [v80 addObjectsFromArray:v25];

    v5 = &_s10MapsDesign17ListCellViewModelCMa_ptr_0;
    v9 = &OBJC_METACLASS___NavShareETACell;
  }

  else
  {
    [v7 setSpacing:16.0];

    v26 = [(RoutePlanningFooterView *)self stackView];
    [v26 setAxis:0];

    v27 = [(RoutePlanningFooterView *)self stackView];
    [v27 setAlignment:2];

    v28 = [(RoutePlanningFooterView *)self stackView];
    [DynamicTypeWizard stopAutoscalingStackView:v28];

    v29 = [(RoutePlanningFooterView *)self trailingButton];
    [v29 setContentHorizontalAlignment:5];

    v30 = [(RoutePlanningFooterView *)self trailingHairlineView];
    [v30 setTopHairlineHidden:1];

    v31 = objc_alloc_init(NSMutableArray);
    v32 = [(RoutePlanningFooterView *)self trailingButton];
    v33 = [(RoutePlanningFooterView *)self trailingHairlineView];
    LODWORD(v34) = 1148846080;
    v35 = [v32 _maps_constraintsEqualToEdgesOfView:v33 priority:v34];
    v36 = [v35 allConstraints];
    v80 = v31;
    [v31 addObjectsFromArray:v36];
  }

  v37 = [(RoutePlanningFooterView *)self traitCollection];
  v38 = [v37 userInterfaceIdiom];

  v39 = [(RoutePlanningFooterView *)self stackView];
  v41 = v39;
  if (v38 == 5)
  {
    LODWORD(v40) = 1148846080;
    v42 = [v39 _maps_constraintsEqualToEdgesOfView:self insets:8.0 priority:{16.0, 8.0, 16.0, v40}];
    v43 = [v42 allConstraints];
    v44 = v80;
    [v80 addObjectsFromArray:v43];
  }

  else
  {
    v45 = [v39 firstBaselineAnchor];
    v46 = [(RoutePlanningFooterView *)self topAnchor];
    v47 = [v45 constraintEqualToAnchor:v46 constant:32.0];

    v48 = [(RoutePlanningFooterView *)self bottomAnchor];
    v49 = [(RoutePlanningFooterView *)self stackView];
    v50 = [v49 lastBaselineAnchor];
    v51 = [v48 constraintEqualToAnchor:v50 constant:15.0];

    v41 = [&v9[55] autoscaledConstraint:v47 constant:&stru_10165D8C8 withFontProvider:32.0];

    v42 = [&v9[55] autoscaledConstraint:v51 constant:&stru_10165D8C8 withFontProvider:15.0];

    v81[0] = v41;
    v52 = [(RoutePlanningFooterView *)self stackView];
    v53 = [v52 leadingAnchor];
    v54 = [(RoutePlanningFooterView *)self leadingAnchor];
    v55 = [v53 constraintEqualToAnchor:v54 constant:16.0];
    v81[1] = v55;
    v81[2] = v42;
    v56 = [NSArray arrayWithObjects:v81 count:3];
    [v80 addObjectsFromArray:v56];

    v57 = [(RoutePlanningFooterView *)self trailingAnchor];
    v58 = [(RoutePlanningFooterView *)self stackView];
    v59 = [v58 trailingAnchor];
    v60 = [v57 constraintEqualToAnchor:v59 constant:16.0];
    [(RoutePlanningFooterView *)self setStackViewTrailingConstraint:v60];

    v61 = [(RoutePlanningFooterView *)self trailingAnchor];
    v62 = [(RoutePlanningFooterView *)self stackView];
    v63 = [v62 trailingAnchor];
    v64 = [v61 constraintGreaterThanOrEqualToAnchor:v63 constant:16.0];
    [(RoutePlanningFooterView *)self setStackViewFlexibleTrailingConstraint:v64];

    v65 = [(RoutePlanningFooterView *)self trailingButton];
    LODWORD(v62) = v79 | [v65 isHidden] ^ 1;

    if (v62 == 1)
    {
      v66 = [(RoutePlanningFooterView *)self stackViewFlexibleTrailingConstraint];
      [v66 setActive:0];

      [(RoutePlanningFooterView *)self stackViewTrailingConstraint];
    }

    else
    {
      v67 = [(RoutePlanningFooterView *)self stackViewTrailingConstraint];
      [v67 setActive:0];

      [(RoutePlanningFooterView *)self stackViewFlexibleTrailingConstraint];
    }
    v43 = ;
    v44 = v80;
    [v80 addObject:v43];
  }

  v68 = [v44 copy];
  constraints = self->_constraints;
  self->_constraints = v68;

  [v5[433] activateConstraints:self->_constraints];
}

- (void)layoutSubviews
{
  v6.receiver = self;
  v6.super_class = RoutePlanningFooterView;
  [(RoutePlanningFooterView *)&v6 layoutSubviews];
  [(RoutePlanningFooterView *)self bounds];
  Width = CGRectGetWidth(v7);
  if (Width != self->_previousLayoutWidth)
  {
    v4 = [(RoutePlanningFooterView *)self shouldStackButtonsForWidth:?];
    v5 = [(RoutePlanningFooterView *)self shouldStackButtonsForWidth:Width];
    self->_previousLayoutWidth = Width;
    if (v4 != v5)
    {
      [(RoutePlanningFooterView *)self _setupConstraints];
    }
  }
}

- (void)setVisibleCommandSet:(int64_t)a3
{
  if (self->_visibleCommandSet != a3)
  {
    self->_visibleCommandSet = a3;
    [(RoutePlanningFooterView *)self _updateVisibleCommandsForCommandSet];

    [(RoutePlanningFooterView *)self _setupConstraints];
  }
}

- (void)_didTapTicketingSegmentInfo:(id)a3
{
  v12 = a3;
  v4 = [(RoutePlanningFooterView *)self delegate];
  v5 = objc_opt_respondsToSelector();

  v6 = v12;
  if (v5)
  {
    v7 = [v12 ticketingUrl];
    v8 = +[NSCharacterSet URLQueryAllowedCharacterSet];
    v9 = [v7 stringByAddingPercentEncodingWithAllowedCharacters:v8];

    v10 = [NSURL URLWithString:v9];
    if (v10)
    {
      v11 = [(RoutePlanningFooterView *)self delegate];
      [v11 routePlanningView:self didTapGetTicketsForURL:v10];
    }

    v6 = v12;
  }
}

- (id)_getTicketsMenuProvider
{
  v3 = +[MKMapService sharedService];
  [v3 captureUserAction:7014 onTarget:606 eventValue:0];

  objc_initWeak(&location, self);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100AFFE24;
  v7[3] = &unk_101638020;
  objc_copyWeak(&v8, &location);
  v7[4] = self;
  v4 = objc_retainBlock(v7);
  v5 = objc_retainBlock(v4);

  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);

  return v5;
}

- (void)_updateVisibleCommandsForCommandSet
{
  v3 = [[NSMutableArray alloc] initWithCapacity:2];
  v4 = [(RoutePlanningFooterView *)self visibleCommandSet];
  if (sub_100741964() && (v4 & 8) != 0)
  {
    v55[1] = @"title";
    v56[0] = &off_1016E8678;
    v55[0] = @"command";
    v5 = +[NSBundle mainBundle];
    v6 = [v5 localizedStringForKey:@"Report an Issue" value:@"localized string not found" table:0];
    v56[1] = v6;
    v7 = [NSDictionary dictionaryWithObjects:v56 forKeys:v55 count:2];
    [v3 addObject:v7];
  }

  if (v4)
  {
    v54[0] = &off_1016E8690;
    v53[0] = @"command";
    v53[1] = @"title";
    v17 = +[NSBundle mainBundle];
    v18 = [v17 localizedStringForKey:@"More Rides" value:@"localized string not found" table:0];
    v54[1] = v18;
    v19 = [NSDictionary dictionaryWithObjects:v54 forKeys:v53 count:2];
    [v3 addObject:v19];

    if ((v4 & 2) == 0)
    {
LABEL_6:
      if ((v4 & 4) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_7;
    }
  }

  else if ((v4 & 2) == 0)
  {
    goto LABEL_6;
  }

  v51[1] = @"title";
  v52[0] = &off_1016E86A8;
  v51[0] = @"command";
  v20 = +[NSBundle mainBundle];
  v21 = [v20 localizedStringForKey:@"Share" value:@"localized string not found" table:0];
  v52[1] = v21;
  v22 = [NSDictionary dictionaryWithObjects:v52 forKeys:v51 count:2];
  [v3 addObject:v22];

  if ((v4 & 4) != 0)
  {
LABEL_7:
    v50[0] = &off_1016E86C0;
    v49[0] = @"command";
    v49[1] = @"title";
    v8 = +[NSBundle mainBundle];
    v9 = [v8 localizedStringForKey:@"Get Tickets" value:@"localized string not found" table:0];
    v50[1] = v9;
    v49[2] = @"menuProvider";
    v10 = [(RoutePlanningFooterView *)self _getTicketsMenuProvider];
    v50[2] = v10;
    v11 = [NSDictionary dictionaryWithObjects:v50 forKeys:v49 count:3];
    [v3 addObject:v11];
  }

LABEL_8:
  v46 = v3;
  v12 = [v3 firstObject];
  v13 = v12;
  if (v12)
  {
    v45 = [v12 objectForKeyedSubscript:@"title"];
    v14 = [v13 objectForKeyedSubscript:@"command"];
    v15 = [v14 integerValue];

    v16 = [v13 objectForKeyedSubscript:@"menuProvider"];
  }

  else
  {
    v16 = 0;
    v15 = 0;
    v45 = &stru_1016631F0;
  }

  v23 = [v46 lastObject];
  v24 = 0;
  v25 = &stru_1016631F0;
  if (v23)
  {
    v26 = 0;
    if (v23 != v13)
    {
      v25 = [v23 objectForKeyedSubscript:@"title"];
      v27 = [v23 objectForKeyedSubscript:@"command"];
      v24 = [v27 integerValue];

      v26 = [v23 objectForKeyedSubscript:@"menuProvider"];
    }
  }

  else
  {
    v26 = 0;
  }

  v28 = [(__CFString *)v45 length]== 0;
  v29 = [(RoutePlanningFooterView *)self leadingButton];
  [v29 setHidden:v28];

  v30 = [(RoutePlanningFooterView *)self leadingButton];
  [v30 setTitle:v45 forState:0];

  v31 = [(RoutePlanningFooterView *)self leadingButton];
  [v31 setTag:v15];

  if (sub_10000FA08(self) == 5)
  {
    v32 = [(RoutePlanningFooterView *)self leadingButton];
    [v32 _setMenuProvider:v16];

    v33 = [(RoutePlanningFooterView *)self leadingButton];
    [v33 setContextMenuInteractionEnabled:1];

    v34 = [(RoutePlanningFooterView *)self leadingButton];
    [v34 setShowsMenuAsPrimaryAction:v16 != 0];
  }

  v35 = [(__CFString *)v25 length]== 0;
  v36 = [(RoutePlanningFooterView *)self trailingButton];
  [v36 setHidden:v35];

  v37 = [(RoutePlanningFooterView *)self trailingButton];
  [v37 setTitle:v25 forState:0];

  v38 = [(RoutePlanningFooterView *)self trailingButton];
  [v38 setTag:v24];

  if (sub_10000FA08(self) == 5)
  {
    v39 = [(RoutePlanningFooterView *)self trailingButton];
    [v39 _setMenuProvider:v44];

    v40 = [(RoutePlanningFooterView *)self trailingButton];
    [v40 setContextMenuInteractionEnabled:1];

    v41 = [(RoutePlanningFooterView *)self trailingButton];
    [v41 setShowsMenuAsPrimaryAction:v44 != 0];
  }

  v47[0] = _NSConcreteStackBlock;
  v47[1] = 3221225472;
  v47[2] = sub_100B00780;
  v47[3] = &unk_101637FF8;
  v48 = 1;
  v42 = [(RoutePlanningFooterView *)self trailingButton];
  [v42 setTitleColorProvider:v47];

  v43 = [(RoutePlanningFooterView *)self trailingButton];
  [v43 setUserInteractionEnabled:1];
}

- (void)updateTheme
{
  v4 = [(RoutePlanningFooterView *)self theme];
  v3 = [v4 hairlineColor];
  [(MKViewWithHairline *)self->_trailingHairlineView setHairlineColor:v3];
}

- (void)traitCollectionDidChange:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = RoutePlanningFooterView;
  [(RoutePlanningFooterView *)&v9 traitCollectionDidChange:v5];
  if (v5 && (v6 = [v5 userInterfaceStyle], -[RoutePlanningFooterView traitCollection](self, "traitCollection"), v3 = objc_claimAutoreleasedReturnValue(), v6 == objc_msgSend(v3, "userInterfaceStyle")))
  {
  }

  else
  {
    v7 = [(RoutePlanningFooterView *)self traitCollection];
    v8 = [v7 userInterfaceStyle];

    if (v5)
    {
    }

    if (v8)
    {
      [(RoutePlanningFooterView *)self updateTheme];
    }
  }
}

- (void)customInit
{
  self->_previousLayoutWidth = -1.0;
  v3 = +[UIColor clearColor];
  [(RoutePlanningFooterView *)self setBackgroundColor:v3];

  v4 = [MapsThemeButton alloc];
  y = CGRectZero.origin.y;
  width = CGRectZero.size.width;
  height = CGRectZero.size.height;
  v8 = [(MapsThemeButton *)v4 initWithFrame:CGRectZero.origin.x, y, width, height];
  [(RoutePlanningFooterView *)self setLeadingButton:v8];

  v9 = [(RoutePlanningFooterView *)self leadingButton];
  [v9 setTitleColorProvider:&stru_1016309D0];

  v10 = [(RoutePlanningFooterView *)self leadingButton];
  [v10 setTranslatesAutoresizingMaskIntoConstraints:0];

  v11 = [(RoutePlanningFooterView *)self leadingButton];
  [v11 setContentHorizontalAlignment:4];

  v12 = [(RoutePlanningFooterView *)self leadingButton];
  v13 = [v12 titleLabel];
  [v13 setLineBreakMode:4];

  v14 = [(RoutePlanningFooterView *)self leadingButton];
  LODWORD(v15) = 1148846080;
  [v14 setContentCompressionResistancePriority:1 forAxis:v15];

  v16 = [(RoutePlanningFooterView *)self leadingButton];
  [v16 setAccessibilityIdentifier:@"LeadingButton"];

  v17 = [[MapsThemeButton alloc] initWithFrame:CGRectZero.origin.x, y, width, height];
  [(RoutePlanningFooterView *)self setTrailingButton:v17];

  v18 = [(RoutePlanningFooterView *)self trailingButton];
  [v18 setTranslatesAutoresizingMaskIntoConstraints:0];

  v19 = [(RoutePlanningFooterView *)self trailingButton];
  v20 = [v19 titleLabel];
  [v20 setLineBreakMode:4];

  v21 = [(RoutePlanningFooterView *)self trailingButton];
  [v21 setContentHorizontalAlignment:5];

  v22 = [(RoutePlanningFooterView *)self trailingButton];
  LODWORD(v23) = 1148846080;
  [v22 setContentCompressionResistancePriority:1 forAxis:v23];

  v24 = [(RoutePlanningFooterView *)self trailingButton];
  [v24 setAccessibilityIdentifier:@"TrailingButton"];

  v25 = [[MKViewWithHairline alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
  trailingHairlineView = self->_trailingHairlineView;
  self->_trailingHairlineView = v25;

  [(MKViewWithHairline *)self->_trailingHairlineView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(MKViewWithHairline *)self->_trailingHairlineView setTopHairlineHidden:1];
  [(MKViewWithHairline *)self->_trailingHairlineView setBottomHairlineHidden:1];
  [(RoutePlanningFooterView *)self addSubview:self->_trailingHairlineView];
  v27 = sub_10000FA08(self);
  v28 = [(RoutePlanningFooterView *)self leadingButton];
  v29 = [v28 titleLabel];
  if (v27 == 5)
  {
    v30 = &stru_10165D8C8;
  }

  else
  {
    v30 = &stru_10165D908;
  }

  [DynamicTypeWizard autorefreshLabel:v29 withFontProvider:v30];

  v31 = [(RoutePlanningFooterView *)self trailingButton];
  v32 = [v31 titleLabel];
  [DynamicTypeWizard autorefreshLabel:v32 withFontProvider:v30];

  v33 = [(RoutePlanningFooterView *)self leadingButton];
  [v33 addTarget:self action:"_didTapButton:" forControlEvents:64];

  v34 = [(RoutePlanningFooterView *)self trailingButton];
  [v34 addTarget:self action:"_didTapButton:" forControlEvents:64];

  v35 = [UIStackView alloc];
  v36 = [(RoutePlanningFooterView *)self leadingButton];
  v48[0] = v36;
  v37 = [(RoutePlanningFooterView *)self trailingButton];
  v48[1] = v37;
  v38 = [NSArray arrayWithObjects:v48 count:2];
  v39 = [v35 initWithArrangedSubviews:v38];
  [(RoutePlanningFooterView *)self setStackView:v39];

  v40 = [(RoutePlanningFooterView *)self stackView];
  [v40 setTranslatesAutoresizingMaskIntoConstraints:0];

  v41 = [(RoutePlanningFooterView *)self stackView];
  [v41 setAxis:0];

  v42 = [(RoutePlanningFooterView *)self stackView];
  [v42 setDistribution:3];

  v43 = [(RoutePlanningFooterView *)self stackView];
  [v43 setAlignment:2];

  v44 = [(RoutePlanningFooterView *)self stackView];
  [v44 setBaselineRelativeArrangement:1];

  v45 = [(RoutePlanningFooterView *)self stackView];
  [v45 setSpacing:16.0];

  v46 = [(RoutePlanningFooterView *)self stackView];
  [v46 setAccessibilityIdentifier:@"RoutePlanningFooterStack"];

  v47 = [(RoutePlanningFooterView *)self stackView];
  [(RoutePlanningFooterView *)self addSubview:v47];

  [(RoutePlanningFooterView *)self _updateVisibleCommandsForCommandSet];
  [(RoutePlanningFooterView *)self _setupConstraints];
}

- (RoutePlanningFooterView)initWithFrame:(CGRect)a3
{
  v6.receiver = self;
  v6.super_class = RoutePlanningFooterView;
  v3 = [(RoutePlanningFooterView *)&v6 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(RoutePlanningFooterView *)v3 customInit];
  }

  return v4;
}

- (RoutePlanningFooterView)initWithCoder:(id)a3
{
  v6.receiver = self;
  v6.super_class = RoutePlanningFooterView;
  v3 = [(RoutePlanningFooterView *)&v6 initWithCoder:a3];
  v4 = v3;
  if (v3)
  {
    [(RoutePlanningFooterView *)v3 customInit];
  }

  return v4;
}

@end