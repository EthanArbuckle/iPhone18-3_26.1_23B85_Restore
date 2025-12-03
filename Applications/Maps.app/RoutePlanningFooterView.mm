@interface RoutePlanningFooterView
- (BOOL)shouldStackButtonsForWidth:(double)width;
- (RoutePlanningFooterView)initWithCoder:(id)coder;
- (RoutePlanningFooterView)initWithFrame:(CGRect)frame;
- (RoutePlanningFooterViewDelegate)delegate;
- (id)_getTicketsMenuProvider;
- (void)_didTapButton:(id)button;
- (void)_didTapTicketingSegmentInfo:(id)info;
- (void)_setupConstraints;
- (void)_updateVisibleCommandsForCommandSet;
- (void)customInit;
- (void)layoutSubviews;
- (void)setVisibleCommandSet:(int64_t)set;
- (void)traitCollectionDidChange:(id)change;
- (void)updateTheme;
@end

@implementation RoutePlanningFooterView

- (RoutePlanningFooterViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)_didTapButton:(id)button
{
  v4 = [button tag];
  if (v4 > 3)
  {
    if (v4 == 4)
    {
      delegate = [(RoutePlanningFooterView *)self delegate];
      v12 = objc_opt_respondsToSelector();

      if ((v12 & 1) == 0)
      {
        return;
      }

      delegate2 = [(RoutePlanningFooterView *)self delegate];
      [delegate2 didTapGetTicketsOnRoutePlanningFooterView:self];
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

      delegate3 = [(RoutePlanningFooterView *)self delegate];
      v8 = objc_opt_respondsToSelector();

      if ((v8 & 1) == 0)
      {
        return;
      }

      delegate2 = [(RoutePlanningFooterView *)self delegate];
      [delegate2 didTapReportAProblemButtonOnRoutePlanningFooterView:self];
    }
  }

  else if (v4 == 1)
  {
    delegate4 = [(RoutePlanningFooterView *)self delegate];
    v10 = objc_opt_respondsToSelector();

    if ((v10 & 1) == 0)
    {
      return;
    }

    delegate2 = [(RoutePlanningFooterView *)self delegate];
    [delegate2 didTapMoreRidesharingChoicesButtonOnRoutePlanningFooterView:self];
  }

  else
  {
    if (v4 != 2)
    {
      return;
    }

    delegate5 = [(RoutePlanningFooterView *)self delegate];
    v6 = objc_opt_respondsToSelector();

    if ((v6 & 1) == 0)
    {
      return;
    }

    delegate2 = [(RoutePlanningFooterView *)self delegate];
    [delegate2 didTapShareButtonOnRoutePlanningFooterView:self];
  }
}

- (BOOL)shouldStackButtonsForWidth:(double)width
{
  traitCollection = [(RoutePlanningFooterView *)self traitCollection];
  userInterfaceIdiom = [traitCollection userInterfaceIdiom];

  if (userInterfaceIdiom == 5)
  {
    return 0;
  }

  leadingButton = [(RoutePlanningFooterView *)self leadingButton];
  [leadingButton intrinsicContentSize];
  v10 = v9;

  trailingButton = [(RoutePlanningFooterView *)self trailingButton];
  [trailingButton intrinsicContentSize];
  v13 = v12;

  return v13 + v10 > fmax(width + -48.0, 0.0);
}

- (void)_setupConstraints
{
  trailingButton = [(RoutePlanningFooterView *)self trailingButton];
  LODWORD(v4) = 1144750080;
  [trailingButton setContentCompressionResistancePriority:0 forAxis:v4];

  v5 = &_s10MapsDesign17ListCellViewModelCMa_ptr_0;
  [NSLayoutConstraint deactivateConstraints:self->_constraints];
  [(RoutePlanningFooterView *)self bounds];
  v6 = [(RoutePlanningFooterView *)self shouldStackButtonsForWidth:CGRectGetWidth(v83)];
  stackView = [(RoutePlanningFooterView *)self stackView];
  v8 = stackView;
  v9 = &OBJC_METACLASS___NavShareETACell;
  v79 = v6;
  if (v6)
  {
    [stackView setAxis:1];

    stackView2 = [(RoutePlanningFooterView *)self stackView];
    [stackView2 setAlignment:1];

    stackView3 = [(RoutePlanningFooterView *)self stackView];
    [DynamicTypeWizard autoscaleStackView:stackView3 spacing:&stru_10165D8C8 withFontProvider:31.0];

    trailingButton2 = [(RoutePlanningFooterView *)self trailingButton];
    [trailingButton2 setContentHorizontalAlignment:4];

    trailingHairlineView = [(RoutePlanningFooterView *)self trailingHairlineView];
    [trailingHairlineView setTopHairlineHidden:0];

    v80 = objc_alloc_init(NSMutableArray);
    trailingHairlineView2 = [(RoutePlanningFooterView *)self trailingHairlineView];
    topAnchor = [trailingHairlineView2 topAnchor];
    centerYAnchor = [(RoutePlanningFooterView *)self centerYAnchor];
    v17 = [topAnchor constraintEqualToAnchor:centerYAnchor constant:3.0];

    v78 = [DynamicTypeWizard autoscaledConstraint:v17 constant:&stru_10165D8C8 withFontProvider:3.0];

    v82[0] = v78;
    stackView4 = [(RoutePlanningFooterView *)self stackView];
    leadingAnchor = [stackView4 leadingAnchor];
    trailingHairlineView3 = [(RoutePlanningFooterView *)self trailingHairlineView];
    leadingAnchor2 = [trailingHairlineView3 leadingAnchor];
    v73 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    v82[1] = v73;
    trailingHairlineView4 = [(RoutePlanningFooterView *)self trailingHairlineView];
    bottomAnchor = [trailingHairlineView4 bottomAnchor];
    trailingButton3 = [(RoutePlanningFooterView *)self trailingButton];
    lastBaselineAnchor = [trailingButton3 lastBaselineAnchor];
    v19 = [bottomAnchor constraintEqualToAnchor:lastBaselineAnchor];
    v82[2] = v19;
    trailingHairlineView5 = [(RoutePlanningFooterView *)self trailingHairlineView];
    trailingAnchor = [trailingHairlineView5 trailingAnchor];
    stackView5 = [(RoutePlanningFooterView *)self stackView];
    trailingAnchor2 = [stackView5 trailingAnchor];
    v24 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    v82[3] = v24;
    v25 = [NSArray arrayWithObjects:v82 count:4];
    [v80 addObjectsFromArray:v25];

    v5 = &_s10MapsDesign17ListCellViewModelCMa_ptr_0;
    v9 = &OBJC_METACLASS___NavShareETACell;
  }

  else
  {
    [stackView setSpacing:16.0];

    stackView6 = [(RoutePlanningFooterView *)self stackView];
    [stackView6 setAxis:0];

    stackView7 = [(RoutePlanningFooterView *)self stackView];
    [stackView7 setAlignment:2];

    stackView8 = [(RoutePlanningFooterView *)self stackView];
    [DynamicTypeWizard stopAutoscalingStackView:stackView8];

    trailingButton4 = [(RoutePlanningFooterView *)self trailingButton];
    [trailingButton4 setContentHorizontalAlignment:5];

    trailingHairlineView6 = [(RoutePlanningFooterView *)self trailingHairlineView];
    [trailingHairlineView6 setTopHairlineHidden:1];

    v31 = objc_alloc_init(NSMutableArray);
    trailingButton5 = [(RoutePlanningFooterView *)self trailingButton];
    trailingHairlineView7 = [(RoutePlanningFooterView *)self trailingHairlineView];
    LODWORD(v34) = 1148846080;
    v35 = [trailingButton5 _maps_constraintsEqualToEdgesOfView:trailingHairlineView7 priority:v34];
    allConstraints = [v35 allConstraints];
    v80 = v31;
    [v31 addObjectsFromArray:allConstraints];
  }

  traitCollection = [(RoutePlanningFooterView *)self traitCollection];
  userInterfaceIdiom = [traitCollection userInterfaceIdiom];

  stackView9 = [(RoutePlanningFooterView *)self stackView];
  v41 = stackView9;
  if (userInterfaceIdiom == 5)
  {
    LODWORD(v40) = 1148846080;
    v42 = [stackView9 _maps_constraintsEqualToEdgesOfView:self insets:8.0 priority:{16.0, 8.0, 16.0, v40}];
    allConstraints2 = [v42 allConstraints];
    v44 = v80;
    [v80 addObjectsFromArray:allConstraints2];
  }

  else
  {
    firstBaselineAnchor = [stackView9 firstBaselineAnchor];
    topAnchor2 = [(RoutePlanningFooterView *)self topAnchor];
    v47 = [firstBaselineAnchor constraintEqualToAnchor:topAnchor2 constant:32.0];

    bottomAnchor2 = [(RoutePlanningFooterView *)self bottomAnchor];
    stackView10 = [(RoutePlanningFooterView *)self stackView];
    lastBaselineAnchor2 = [stackView10 lastBaselineAnchor];
    v51 = [bottomAnchor2 constraintEqualToAnchor:lastBaselineAnchor2 constant:15.0];

    v41 = [&v9[55] autoscaledConstraint:v47 constant:&stru_10165D8C8 withFontProvider:32.0];

    v42 = [&v9[55] autoscaledConstraint:v51 constant:&stru_10165D8C8 withFontProvider:15.0];

    v81[0] = v41;
    stackView11 = [(RoutePlanningFooterView *)self stackView];
    leadingAnchor3 = [stackView11 leadingAnchor];
    leadingAnchor4 = [(RoutePlanningFooterView *)self leadingAnchor];
    v55 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4 constant:16.0];
    v81[1] = v55;
    v81[2] = v42;
    v56 = [NSArray arrayWithObjects:v81 count:3];
    [v80 addObjectsFromArray:v56];

    trailingAnchor3 = [(RoutePlanningFooterView *)self trailingAnchor];
    stackView12 = [(RoutePlanningFooterView *)self stackView];
    trailingAnchor4 = [stackView12 trailingAnchor];
    v60 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4 constant:16.0];
    [(RoutePlanningFooterView *)self setStackViewTrailingConstraint:v60];

    trailingAnchor5 = [(RoutePlanningFooterView *)self trailingAnchor];
    stackView13 = [(RoutePlanningFooterView *)self stackView];
    trailingAnchor6 = [stackView13 trailingAnchor];
    v64 = [trailingAnchor5 constraintGreaterThanOrEqualToAnchor:trailingAnchor6 constant:16.0];
    [(RoutePlanningFooterView *)self setStackViewFlexibleTrailingConstraint:v64];

    trailingButton6 = [(RoutePlanningFooterView *)self trailingButton];
    LODWORD(stackView13) = v79 | [trailingButton6 isHidden] ^ 1;

    if (stackView13 == 1)
    {
      stackViewFlexibleTrailingConstraint = [(RoutePlanningFooterView *)self stackViewFlexibleTrailingConstraint];
      [stackViewFlexibleTrailingConstraint setActive:0];

      [(RoutePlanningFooterView *)self stackViewTrailingConstraint];
    }

    else
    {
      stackViewTrailingConstraint = [(RoutePlanningFooterView *)self stackViewTrailingConstraint];
      [stackViewTrailingConstraint setActive:0];

      [(RoutePlanningFooterView *)self stackViewFlexibleTrailingConstraint];
    }
    allConstraints2 = ;
    v44 = v80;
    [v80 addObject:allConstraints2];
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

- (void)setVisibleCommandSet:(int64_t)set
{
  if (self->_visibleCommandSet != set)
  {
    self->_visibleCommandSet = set;
    [(RoutePlanningFooterView *)self _updateVisibleCommandsForCommandSet];

    [(RoutePlanningFooterView *)self _setupConstraints];
  }
}

- (void)_didTapTicketingSegmentInfo:(id)info
{
  infoCopy = info;
  delegate = [(RoutePlanningFooterView *)self delegate];
  v5 = objc_opt_respondsToSelector();

  v6 = infoCopy;
  if (v5)
  {
    ticketingUrl = [infoCopy ticketingUrl];
    v8 = +[NSCharacterSet URLQueryAllowedCharacterSet];
    v9 = [ticketingUrl stringByAddingPercentEncodingWithAllowedCharacters:v8];

    v10 = [NSURL URLWithString:v9];
    if (v10)
    {
      delegate2 = [(RoutePlanningFooterView *)self delegate];
      [delegate2 routePlanningView:self didTapGetTicketsForURL:v10];
    }

    v6 = infoCopy;
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
  visibleCommandSet = [(RoutePlanningFooterView *)self visibleCommandSet];
  if (sub_100741964() && (visibleCommandSet & 8) != 0)
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

  if (visibleCommandSet)
  {
    v54[0] = &off_1016E8690;
    v53[0] = @"command";
    v53[1] = @"title";
    v17 = +[NSBundle mainBundle];
    v18 = [v17 localizedStringForKey:@"More Rides" value:@"localized string not found" table:0];
    v54[1] = v18;
    v19 = [NSDictionary dictionaryWithObjects:v54 forKeys:v53 count:2];
    [v3 addObject:v19];

    if ((visibleCommandSet & 2) == 0)
    {
LABEL_6:
      if ((visibleCommandSet & 4) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_7;
    }
  }

  else if ((visibleCommandSet & 2) == 0)
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

  if ((visibleCommandSet & 4) != 0)
  {
LABEL_7:
    v50[0] = &off_1016E86C0;
    v49[0] = @"command";
    v49[1] = @"title";
    v8 = +[NSBundle mainBundle];
    v9 = [v8 localizedStringForKey:@"Get Tickets" value:@"localized string not found" table:0];
    v50[1] = v9;
    v49[2] = @"menuProvider";
    _getTicketsMenuProvider = [(RoutePlanningFooterView *)self _getTicketsMenuProvider];
    v50[2] = _getTicketsMenuProvider;
    v11 = [NSDictionary dictionaryWithObjects:v50 forKeys:v49 count:3];
    [v3 addObject:v11];
  }

LABEL_8:
  v46 = v3;
  firstObject = [v3 firstObject];
  v13 = firstObject;
  if (firstObject)
  {
    v45 = [firstObject objectForKeyedSubscript:@"title"];
    v14 = [v13 objectForKeyedSubscript:@"command"];
    integerValue = [v14 integerValue];

    v16 = [v13 objectForKeyedSubscript:@"menuProvider"];
  }

  else
  {
    v16 = 0;
    integerValue = 0;
    v45 = &stru_1016631F0;
  }

  lastObject = [v46 lastObject];
  integerValue2 = 0;
  v25 = &stru_1016631F0;
  if (lastObject)
  {
    v26 = 0;
    if (lastObject != v13)
    {
      v25 = [lastObject objectForKeyedSubscript:@"title"];
      v27 = [lastObject objectForKeyedSubscript:@"command"];
      integerValue2 = [v27 integerValue];

      v26 = [lastObject objectForKeyedSubscript:@"menuProvider"];
    }
  }

  else
  {
    v26 = 0;
  }

  v28 = [(__CFString *)v45 length]== 0;
  leadingButton = [(RoutePlanningFooterView *)self leadingButton];
  [leadingButton setHidden:v28];

  leadingButton2 = [(RoutePlanningFooterView *)self leadingButton];
  [leadingButton2 setTitle:v45 forState:0];

  leadingButton3 = [(RoutePlanningFooterView *)self leadingButton];
  [leadingButton3 setTag:integerValue];

  if (sub_10000FA08(self) == 5)
  {
    leadingButton4 = [(RoutePlanningFooterView *)self leadingButton];
    [leadingButton4 _setMenuProvider:v16];

    leadingButton5 = [(RoutePlanningFooterView *)self leadingButton];
    [leadingButton5 setContextMenuInteractionEnabled:1];

    leadingButton6 = [(RoutePlanningFooterView *)self leadingButton];
    [leadingButton6 setShowsMenuAsPrimaryAction:v16 != 0];
  }

  v35 = [(__CFString *)v25 length]== 0;
  trailingButton = [(RoutePlanningFooterView *)self trailingButton];
  [trailingButton setHidden:v35];

  trailingButton2 = [(RoutePlanningFooterView *)self trailingButton];
  [trailingButton2 setTitle:v25 forState:0];

  trailingButton3 = [(RoutePlanningFooterView *)self trailingButton];
  [trailingButton3 setTag:integerValue2];

  if (sub_10000FA08(self) == 5)
  {
    trailingButton4 = [(RoutePlanningFooterView *)self trailingButton];
    [trailingButton4 _setMenuProvider:v44];

    trailingButton5 = [(RoutePlanningFooterView *)self trailingButton];
    [trailingButton5 setContextMenuInteractionEnabled:1];

    trailingButton6 = [(RoutePlanningFooterView *)self trailingButton];
    [trailingButton6 setShowsMenuAsPrimaryAction:v44 != 0];
  }

  v47[0] = _NSConcreteStackBlock;
  v47[1] = 3221225472;
  v47[2] = sub_100B00780;
  v47[3] = &unk_101637FF8;
  v48 = 1;
  trailingButton7 = [(RoutePlanningFooterView *)self trailingButton];
  [trailingButton7 setTitleColorProvider:v47];

  trailingButton8 = [(RoutePlanningFooterView *)self trailingButton];
  [trailingButton8 setUserInteractionEnabled:1];
}

- (void)updateTheme
{
  theme = [(RoutePlanningFooterView *)self theme];
  hairlineColor = [theme hairlineColor];
  [(MKViewWithHairline *)self->_trailingHairlineView setHairlineColor:hairlineColor];
}

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  v9.receiver = self;
  v9.super_class = RoutePlanningFooterView;
  [(RoutePlanningFooterView *)&v9 traitCollectionDidChange:changeCopy];
  if (changeCopy && (v6 = [changeCopy userInterfaceStyle], -[RoutePlanningFooterView traitCollection](self, "traitCollection"), v3 = objc_claimAutoreleasedReturnValue(), v6 == objc_msgSend(v3, "userInterfaceStyle")))
  {
  }

  else
  {
    traitCollection = [(RoutePlanningFooterView *)self traitCollection];
    userInterfaceStyle = [traitCollection userInterfaceStyle];

    if (changeCopy)
    {
    }

    if (userInterfaceStyle)
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
  height = [(MapsThemeButton *)v4 initWithFrame:CGRectZero.origin.x, y, width, height];
  [(RoutePlanningFooterView *)self setLeadingButton:height];

  leadingButton = [(RoutePlanningFooterView *)self leadingButton];
  [leadingButton setTitleColorProvider:&stru_1016309D0];

  leadingButton2 = [(RoutePlanningFooterView *)self leadingButton];
  [leadingButton2 setTranslatesAutoresizingMaskIntoConstraints:0];

  leadingButton3 = [(RoutePlanningFooterView *)self leadingButton];
  [leadingButton3 setContentHorizontalAlignment:4];

  leadingButton4 = [(RoutePlanningFooterView *)self leadingButton];
  titleLabel = [leadingButton4 titleLabel];
  [titleLabel setLineBreakMode:4];

  leadingButton5 = [(RoutePlanningFooterView *)self leadingButton];
  LODWORD(v15) = 1148846080;
  [leadingButton5 setContentCompressionResistancePriority:1 forAxis:v15];

  leadingButton6 = [(RoutePlanningFooterView *)self leadingButton];
  [leadingButton6 setAccessibilityIdentifier:@"LeadingButton"];

  height2 = [[MapsThemeButton alloc] initWithFrame:CGRectZero.origin.x, y, width, height];
  [(RoutePlanningFooterView *)self setTrailingButton:height2];

  trailingButton = [(RoutePlanningFooterView *)self trailingButton];
  [trailingButton setTranslatesAutoresizingMaskIntoConstraints:0];

  trailingButton2 = [(RoutePlanningFooterView *)self trailingButton];
  titleLabel2 = [trailingButton2 titleLabel];
  [titleLabel2 setLineBreakMode:4];

  trailingButton3 = [(RoutePlanningFooterView *)self trailingButton];
  [trailingButton3 setContentHorizontalAlignment:5];

  trailingButton4 = [(RoutePlanningFooterView *)self trailingButton];
  LODWORD(v23) = 1148846080;
  [trailingButton4 setContentCompressionResistancePriority:1 forAxis:v23];

  trailingButton5 = [(RoutePlanningFooterView *)self trailingButton];
  [trailingButton5 setAccessibilityIdentifier:@"TrailingButton"];

  v25 = [[MKViewWithHairline alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
  trailingHairlineView = self->_trailingHairlineView;
  self->_trailingHairlineView = v25;

  [(MKViewWithHairline *)self->_trailingHairlineView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(MKViewWithHairline *)self->_trailingHairlineView setTopHairlineHidden:1];
  [(MKViewWithHairline *)self->_trailingHairlineView setBottomHairlineHidden:1];
  [(RoutePlanningFooterView *)self addSubview:self->_trailingHairlineView];
  v27 = sub_10000FA08(self);
  leadingButton7 = [(RoutePlanningFooterView *)self leadingButton];
  titleLabel3 = [leadingButton7 titleLabel];
  if (v27 == 5)
  {
    v30 = &stru_10165D8C8;
  }

  else
  {
    v30 = &stru_10165D908;
  }

  [DynamicTypeWizard autorefreshLabel:titleLabel3 withFontProvider:v30];

  trailingButton6 = [(RoutePlanningFooterView *)self trailingButton];
  titleLabel4 = [trailingButton6 titleLabel];
  [DynamicTypeWizard autorefreshLabel:titleLabel4 withFontProvider:v30];

  leadingButton8 = [(RoutePlanningFooterView *)self leadingButton];
  [leadingButton8 addTarget:self action:"_didTapButton:" forControlEvents:64];

  trailingButton7 = [(RoutePlanningFooterView *)self trailingButton];
  [trailingButton7 addTarget:self action:"_didTapButton:" forControlEvents:64];

  v35 = [UIStackView alloc];
  leadingButton9 = [(RoutePlanningFooterView *)self leadingButton];
  v48[0] = leadingButton9;
  trailingButton8 = [(RoutePlanningFooterView *)self trailingButton];
  v48[1] = trailingButton8;
  v38 = [NSArray arrayWithObjects:v48 count:2];
  v39 = [v35 initWithArrangedSubviews:v38];
  [(RoutePlanningFooterView *)self setStackView:v39];

  stackView = [(RoutePlanningFooterView *)self stackView];
  [stackView setTranslatesAutoresizingMaskIntoConstraints:0];

  stackView2 = [(RoutePlanningFooterView *)self stackView];
  [stackView2 setAxis:0];

  stackView3 = [(RoutePlanningFooterView *)self stackView];
  [stackView3 setDistribution:3];

  stackView4 = [(RoutePlanningFooterView *)self stackView];
  [stackView4 setAlignment:2];

  stackView5 = [(RoutePlanningFooterView *)self stackView];
  [stackView5 setBaselineRelativeArrangement:1];

  stackView6 = [(RoutePlanningFooterView *)self stackView];
  [stackView6 setSpacing:16.0];

  stackView7 = [(RoutePlanningFooterView *)self stackView];
  [stackView7 setAccessibilityIdentifier:@"RoutePlanningFooterStack"];

  stackView8 = [(RoutePlanningFooterView *)self stackView];
  [(RoutePlanningFooterView *)self addSubview:stackView8];

  [(RoutePlanningFooterView *)self _updateVisibleCommandsForCommandSet];
  [(RoutePlanningFooterView *)self _setupConstraints];
}

- (RoutePlanningFooterView)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = RoutePlanningFooterView;
  v3 = [(RoutePlanningFooterView *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(RoutePlanningFooterView *)v3 customInit];
  }

  return v4;
}

- (RoutePlanningFooterView)initWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = RoutePlanningFooterView;
  v3 = [(RoutePlanningFooterView *)&v6 initWithCoder:coder];
  v4 = v3;
  if (v3)
  {
    [(RoutePlanningFooterView *)v3 customInit];
  }

  return v4;
}

@end