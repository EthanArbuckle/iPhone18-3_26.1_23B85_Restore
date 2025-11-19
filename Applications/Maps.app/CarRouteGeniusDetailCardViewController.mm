@interface CarRouteGeniusDetailCardViewController
- (BOOL)_canSafelyRequestFocusUpdate;
- (CarRouteGeniusDetailCardViewController)initWithDelegate:(id)a3;
- (CarRouteGeniusDetailCardViewControllerDelegate)delegate;
- (NSArray)actionButtons;
- (NSArray)focusOrderSubItems;
- (NSArray)preferredFocusEnvironments;
- (id)_createEtaLabelTrailingConstraint;
- (id)_sharingETAString;
- (void)_alertsOnlyButtonPressed:(id)a3;
- (void)_disableInteraction;
- (void)_externalDeviceUpdated:(id)a3;
- (void)_goButtonPressed:(id)a3;
- (void)_handoffButtonPressed:(id)a3;
- (void)_setupConstraints;
- (void)_setupStyling;
- (void)_updateConstraints;
- (void)_updateContents;
- (void)allowInteraction;
- (void)dealloc;
- (void)setCurrentETA:(id)a3;
- (void)setCurrentSuggestion:(id)a3;
- (void)setHandoffEnabled:(BOOL)a3;
- (void)setHasCardFinishedTransitioning:(BOOL)a3;
- (void)setNavigationAidedDrivingEnabled:(BOOL)a3;
- (void)setRouteIsNavigable:(BOOL)a3;
- (void)updateRouteAdvisories;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidLoad;
@end

@implementation CarRouteGeniusDetailCardViewController

- (CarRouteGeniusDetailCardViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (NSArray)preferredFocusEnvironments
{
  if ([(CarCardRoundedButton *)self->_goButton isEnabled])
  {
    goButton = self->_goButton;
    v3 = [NSArray arrayWithObjects:&goButton count:1];
  }

  else
  {
    v3 = &__NSArray0__struct;
  }

  return v3;
}

- (NSArray)focusOrderSubItems
{
  if ([(CarRouteGeniusDetailCardViewController *)self isViewLoaded])
  {
    alertsOnlyButton = self->_alertsOnlyButton;
    v8[0] = self->_handoffButton;
    v8[1] = alertsOnlyButton;
    v8[2] = self->_goButton;
    v4 = [NSArray arrayWithObjects:v8 count:3];
    v5 = [NSPredicate predicateWithBlock:&stru_101626D98];
    v6 = [v4 filteredArrayUsingPredicate:v5];
  }

  else
  {
    v6 = &__NSArray0__struct;
  }

  return v6;
}

- (void)allowInteraction
{
  v3 = sub_10008B0B8();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4 = self;
    if (!v4)
    {
      v9 = @"<nil>";
      goto LABEL_10;
    }

    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    if (objc_opt_respondsToSelector())
    {
      v7 = [(CarRouteGeniusDetailCardViewController *)v4 performSelector:"accessibilityIdentifier"];
      v8 = v7;
      if (v7 && ![v7 isEqualToString:v6])
      {
        v9 = [NSString stringWithFormat:@"%@<%p, %@>", v6, v4, v8];

        goto LABEL_8;
      }
    }

    v9 = [NSString stringWithFormat:@"%@<%p>", v6, v4];
LABEL_8:

LABEL_10:
    *buf = 138543362;
    v21 = v9;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "[%{public}@] RG detail: Enabling action buttons.", buf, 0xCu);
  }

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v10 = [(CarRouteGeniusDetailCardViewController *)self actionButtons];
  v11 = [v10 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v16;
    do
    {
      for (i = 0; i != v12; i = i + 1)
      {
        if (*v16 != v13)
        {
          objc_enumerationMutation(v10);
        }

        [*(*(&v15 + 1) + 8 * i) setEnabled:1];
      }

      v12 = [v10 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v12);
  }
}

- (void)_disableInteraction
{
  v3 = sub_10008B0B8();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4 = self;
    if (!v4)
    {
      v9 = @"<nil>";
      goto LABEL_10;
    }

    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    if (objc_opt_respondsToSelector())
    {
      v7 = [(CarRouteGeniusDetailCardViewController *)v4 performSelector:"accessibilityIdentifier"];
      v8 = v7;
      if (v7 && ![v7 isEqualToString:v6])
      {
        v9 = [NSString stringWithFormat:@"%@<%p, %@>", v6, v4, v8];

        goto LABEL_8;
      }
    }

    v9 = [NSString stringWithFormat:@"%@<%p>", v6, v4];
LABEL_8:

LABEL_10:
    *buf = 138543362;
    v21 = v9;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "[%{public}@] RG detail: Disabling action buttons.", buf, 0xCu);
  }

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v10 = [(CarRouteGeniusDetailCardViewController *)self actionButtons];
  v11 = [v10 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v16;
    do
    {
      for (i = 0; i != v12; i = i + 1)
      {
        if (*v16 != v13)
        {
          objc_enumerationMutation(v10);
        }

        [*(*(&v15 + 1) + 8 * i) setEnabled:0];
      }

      v12 = [v10 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v12);
  }
}

- (void)_goButtonPressed:(id)a3
{
  [(CarRouteGeniusDetailCardViewController *)self _disableInteraction];
  v4 = [(CarRouteGeniusDetailCardViewController *)self isNavigationAidedDrivingEnabled];
  v5 = [(CarRouteGeniusDetailCardViewController *)self delegate];
  v6 = v5;
  if (v4)
  {
    [v5 detailCardDidHandOff:self];
  }

  else
  {
    [v5 detailCardDidAccept:self navigationType:0];
  }
}

- (void)_alertsOnlyButtonPressed:(id)a3
{
  [(CarRouteGeniusDetailCardViewController *)self _disableInteraction];
  v4 = [(CarRouteGeniusDetailCardViewController *)self delegate];
  [v4 detailCardDidAccept:self navigationType:2];
}

- (void)_handoffButtonPressed:(id)a3
{
  [(CarRouteGeniusDetailCardViewController *)self _disableInteraction];
  v4 = [(CarRouteGeniusDetailCardViewController *)self delegate];
  [v4 detailCardDidHandOff:self];
}

- (void)_externalDeviceUpdated:(id)a3
{
  v4 = +[MapsExternalDevice sharedInstance];
  -[CarRouteGeniusDetailCardViewController setNavigationAidedDrivingEnabled:](self, "setNavigationAidedDrivingEnabled:", [v4 isNavigationAidedDrivingEnabled]);

  v5 = +[MapsExternalDevice sharedInstance];
  -[CarRouteGeniusDetailCardViewController setHandoffEnabled:](self, "setHandoffEnabled:", [v5 destinationHandoffEnabled]);
}

- (id)_createEtaLabelTrailingConstraint
{
  v3 = [(CarRouteGeniusDetailCardViewController *)self isHandoffEnabled];
  v4 = [(UILabel *)self->_etaLabel trailingAnchor];
  if (v3)
  {
    v5 = [(CarMoreButton *)self->_handoffButton leadingAnchor];
    v6 = [v4 constraintEqualToAnchor:v5 constant:-10.0];
  }

  else
  {
    v5 = [(CarRouteGeniusDetailCardViewController *)self view];
    v7 = [v5 trailingAnchor];
    v6 = [v4 constraintEqualToAnchor:v7 constant:-10.0];
  }

  return v6;
}

- (void)updateRouteAdvisories
{
  routeAdvisoriesView = self->_routeAdvisoriesView;
  v4 = [(MapsSuggestionsRouteGeniusEntry *)self->_currentSuggestion route];
  [(CarAdvisoriesView *)routeAdvisoriesView setRoute:v4];

  v5 = [(CarAdvisoriesView *)self->_routeAdvisoriesView count]== 0;
  v6 = self->_routeAdvisoriesView;

  [(CarAdvisoriesView *)v6 setHidden:v5];
}

- (BOOL)_canSafelyRequestFocusUpdate
{
  if (![(CarRouteGeniusDetailCardViewController *)self isViewLoaded])
  {
    return 0;
  }

  if (![(CarRouteGeniusDetailCardViewController *)self hasCardFinishedTransitioning])
  {
    return 0;
  }

  v3 = [(CarRouteGeniusDetailCardViewController *)self view];
  v4 = [v3 window];
  v5 = [v4 rootViewController];

  if (!v5)
  {
    return 0;
  }

  v6 = [(CarRouteGeniusDetailCardViewController *)self view];
  v7 = [v6 superview];
  if (v7)
  {
    v8 = [(CarRouteGeniusDetailCardViewController *)self traitCollection];
  }

  else
  {
    v11 = +[UIScreen _carScreen];
    v8 = [v11 traitCollection];
  }

  v9 = ([v8 interactionModel] & 0xA) != 0;
  return v9;
}

- (void)setHasCardFinishedTransitioning:(BOOL)a3
{
  if (self->_hasCardFinishedTransitioning != a3)
  {
    self->_hasCardFinishedTransitioning = a3;
    if (a3)
    {
      [(CarRouteGeniusDetailCardViewController *)self _updateContents];
    }
  }
}

- (void)setHandoffEnabled:(BOOL)a3
{
  if (self->_handoffEnabled != a3)
  {
    self->_handoffEnabled = a3;
    [(CarRouteGeniusDetailCardViewController *)self _updateContents];

    [(CarRouteGeniusDetailCardViewController *)self _updateConstraints];
  }
}

- (void)setNavigationAidedDrivingEnabled:(BOOL)a3
{
  if (self->_navigationAidedDrivingEnabled != a3)
  {
    self->_navigationAidedDrivingEnabled = a3;
    [(CarRouteGeniusDetailCardViewController *)self _updateContents];
  }
}

- (void)setCurrentETA:(id)a3
{
  v5 = a3;
  if (self->_currentETA != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_currentETA, a3);
    [(CarRouteGeniusDetailCardViewController *)self _updateContents];
    v5 = v6;
  }
}

- (void)setCurrentSuggestion:(id)a3
{
  v5 = a3;
  if (self->_currentSuggestion != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_currentSuggestion, a3);
    [(CarRouteGeniusDetailCardViewController *)self _updateContents];
    v5 = v6;
  }
}

- (void)setRouteIsNavigable:(BOOL)a3
{
  if (self->_routeIsNavigable != a3)
  {
    self->_routeIsNavigable = a3;
    [(CarRouteGeniusDetailCardViewController *)self _updateContents];
  }
}

- (NSArray)actionButtons
{
  alertsOnlyButton = self->_alertsOnlyButton;
  v5[0] = self->_handoffButton;
  v5[1] = alertsOnlyButton;
  v5[2] = self->_goButton;
  v3 = [NSArray arrayWithObjects:v5 count:3];

  return v3;
}

- (void)_updateConstraints
{
  if ([(CarRouteGeniusDetailCardViewController *)self isViewLoaded])
  {
    if (self->_etaLabelTrailingConstraint)
    {
      etaLabelTrailingConstraint = self->_etaLabelTrailingConstraint;
      v3 = [NSArray arrayWithObjects:&etaLabelTrailingConstraint count:1];
      [NSLayoutConstraint deactivateConstraints:v3];
    }

    v4 = [(CarRouteGeniusDetailCardViewController *)self _createEtaLabelTrailingConstraint];
    v5 = self->_etaLabelTrailingConstraint;
    self->_etaLabelTrailingConstraint = v4;

    v7 = self->_etaLabelTrailingConstraint;
    v6 = [NSArray arrayWithObjects:&v7 count:1];
    [NSLayoutConstraint activateConstraints:v6];
  }
}

- (id)_sharingETAString
{
  v2 = [(CarRouteGeniusDetailCardViewController *)self currentSuggestion];
  v3 = [v2 entry];
  v4 = [v3 sharingContacts];

  if ([v4 count])
  {
    if ([v4 count] == 1)
    {
      v5 = [v4 firstObject];
      v6 = [v5 contact];
      v7 = [v6 givenName];

      v8 = +[NSBundle mainBundle];
      v9 = [v8 localizedStringForKey:@"CarPlay_PlaceCard_SharingAutomatically_OneContact" value:@"localized string not found" table:0];
      v10 = [NSString stringWithFormat:v9, v7];
    }

    else
    {
      v5 = +[NSBundle mainBundle];
      v7 = [v5 localizedStringForKey:@"CarPlay_PlaceCard_SharingAutomatically" value:@"localized string not found" table:0];
      v10 = +[NSString localizedStringWithFormat:](NSString, "localizedStringWithFormat:", v7, [v4 count]);
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (void)_updateContents
{
  IsEnabled_LocationIntelligenceMaps = MapsFeature_IsEnabled_LocationIntelligenceMaps();
  v4 = [(CarRouteGeniusDetailCardViewController *)self currentETA];
  v5 = v4;
  if (IsEnabled_LocationIntelligenceMaps)
  {
    v6 = [v4 arrivalAMPMTimeString];

    v7 = [(CarRouteGeniusDetailCardViewController *)self currentETA];
    v8 = +[NSString _navigation_stringWithMinutes:andAbbreviationType:](NSString, "_navigation_stringWithMinutes:andAbbreviationType:", [v7 remainingMinutes], 1);

    v9 = +[NSBundle mainBundle];
    v10 = [v9 localizedStringForKey:@"CarPlay Widget [Delimiter]" value:@"localized string not found" table:0];

    v11 = +[NSBundle mainBundle];
    v12 = [v11 localizedStringForKey:@"[CarPlay Widget] Route Genius Description" value:@"localized string not found" table:0];

    v51 = 0;
    v49 = v6;
    v13 = [NSString localizedStringWithValidatedFormat:v12 validFormatSpecifiers:@"%@ %@ %@" error:&v51, v6, v10, v8];
    v14 = v51;
    if (v14 || ![v13 length])
    {
      v15 = sub_10008B0B8();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v55 = v14;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "RG Details: There is an error while creating a string to show for ETA label. Error: %@", buf, 0xCu);
      }
    }

    else
    {
      [(UILabel *)self->_etaLabel setText:v13];
    }
  }

  else
  {
    v16 = [v4 etaDateString];

    v49 = v16;
    [(UILabel *)self->_etaLabel setText:v16];
  }

  v17 = [MKServerFormattedString alloc];
  v18 = [(MapsSuggestionsRouteGeniusEntry *)self->_currentSuggestion route];
  v19 = [v18 planningDescriptionString];
  v20 = [v17 initWithComposedString:v19];

  v21 = [UIFont _mapsCar_fontForTextStyle:UIFontTextStyleCaption1 weight:UIFontWeightRegular];
  v52 = NSFontAttributeName;
  v53 = v21;
  v22 = [NSDictionary dictionaryWithObjects:&v53 forKeys:&v52 count:1];
  v48 = v20;
  v23 = [v20 multiPartAttributedStringWithAttributes:v22];
  v24 = [v23 attributedString];

  [(UILabel *)self->_mainDescriptionLabel setAttributedText:v24];
  v25 = [(CarRouteGeniusDetailCardViewController *)self _sharingETAString];
  v26 = [v25 length];
  mainDescriptionLabel = self->_mainDescriptionLabel;
  if (v26)
  {
    v28 = [(UILabel *)mainDescriptionLabel text];
    v29 = [v28 stringByAppendingFormat:@"\n%@", v25];
    [(UILabel *)self->_mainDescriptionLabel setText:v29];

    mainDescriptionLabel = self->_mainDescriptionLabel;
    v30 = 2;
  }

  else
  {
    v30 = 1;
  }

  [(UILabel *)mainDescriptionLabel setNumberOfLines:v30];
  [(UILabel *)self->_mainDescriptionLabel setAdjustsFontSizeToFitWidth:v26 != 0];
  [(CarRouteGeniusDetailCardViewController *)self updateRouteAdvisories];
  if ([(CarRouteGeniusDetailCardViewController *)self isHandoffEnabled])
  {
    v31 = [(CarRouteGeniusDetailCardViewController *)self isNavigationAidedDrivingEnabled];
  }

  else
  {
    v31 = 1;
  }

  [(CarMoreButton *)self->_handoffButton setHidden:v31];
  if ([(CarRouteGeniusDetailCardViewController *)self isNavigationAidedDrivingEnabled])
  {
    v32 = +[MapsExternalDevice sharedInstance];
    v33 = [v32 mapsDisplayName];
    v34 = v33;
    if (v33)
    {
      v35 = v33;
    }

    else
    {
      v35 = sub_100ADA744();
    }

    v39 = v35;

    [(CarCardRoundedButton *)self->_goButton setTitle:v39 forState:0];
    v40 = [UIImage _mapsCar_systemImageNamed:@"square.and.arrow.up" textStyle:UIFontTextStyleCaption1 weight:6];
    [(CarCardRoundedButton *)self->_goButton setImage:v40 forState:0];
  }

  else
  {
    goButton = self->_goButton;
    v37 = +[NSBundle mainBundle];
    v38 = [v37 localizedStringForKey:@"Car_START_BUTTON" value:@"localized string not found" table:0];
    [(CarCardRoundedButton *)goButton setTitle:v38 forState:0];

    [(CarCardRoundedButton *)self->_goButton setImage:0 forState:0];
  }

  v41 = [(CarRouteGeniusDetailCardViewController *)self routeIsNavigable]|| [(CarRouteGeniusDetailCardViewController *)self isNavigationAidedDrivingEnabled];
  [(CarFocusableButton *)self->_alertsOnlyButton setEnabled:v41];
  goButtonIsFocusable = self->_goButtonIsFocusable;
  v43 = [(CarRouteGeniusDetailCardViewController *)self routeIsNavigable]|| [(CarRouteGeniusDetailCardViewController *)self isNavigationAidedDrivingEnabled];
  [(CarFocusableButton *)self->_goButton setEnabled:v43];
  v44 = sub_100FF05BC([(CarCardRoundedButton *)self->_goButton isEnabled]);
  [(CarFocusableButton *)self->_goButton setNonFocusedBackgroundColor:v44];

  if ([(CarCardRoundedButton *)self->_goButton isEnabled]&& [(CarRouteGeniusDetailCardViewController *)self _canSafelyRequestFocusUpdate]&& !goButtonIsFocusable)
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1006E28AC;
    block[3] = &unk_101661B18;
    block[4] = self;
    dispatch_async(&_dispatch_main_q, block);
  }

  v45 = [(CarCardRoundedButton *)self->_goButton isEnabled];
  if (v45)
  {
    LOBYTE(v45) = [(CarRouteGeniusDetailCardViewController *)self _canSafelyRequestFocusUpdate];
  }

  self->_goButtonIsFocusable = v45;
  v46 = +[CarDisplayController sharedInstance];
  v47 = [v46 chromeViewController];
  [v47 setNeedsFocusUpdate];
}

- (void)_setupStyling
{
  v3 = [UIFont _mapsCar_fontForTextStyle:UIFontTextStyleFootnote weight:UIFontWeightMedium];
  [(UILabel *)self->_etaLabel setFont:v3];

  v4 = +[UIColor labelColor];
  [(UILabel *)self->_etaLabel setTextColor:v4];

  v5 = [UIFont preferredFontForTextStyle:UIFontTextStyleCaption1];
  [(UILabel *)self->_mainDescriptionLabel setFont:v5];

  v6 = +[UIColor _carSystemPrimaryColor];
  [(UILabel *)self->_mainDescriptionLabel setTextColor:v6];

  v7 = [(UILabel *)self->_mainDescriptionLabel font];
  [v7 pointSize];
  [(UILabel *)self->_mainDescriptionLabel setMinimumScaleFactor:10.0 / v8];

  [(CarMoreButton *)self->_handoffButton setOptions:4];
  alertsOnlyButton = self->_alertsOnlyButton;
  v10 = +[NSBundle mainBundle];
  v11 = [v10 localizedStringForKey:@"Car_ALERTS_ONLY" value:@"localized string not found" table:0];
  [(CarCardRoundedButton *)alertsOnlyButton setTitle:v11 forState:0];

  v12 = [(CarCardRoundedButton *)self->_alertsOnlyButton titleLabel];
  v13 = [UIFont _mapsCar_fontForTextStyle:UIFontTextStyleCallout weight:UIFontWeightRegular];
  [v12 setFont:v13];

  v14 = +[UIColor _carSystemQuaternaryColor];
  [(CarFocusableButton *)self->_alertsOnlyButton setNonFocusedBackgroundColor:v14];

  v15 = +[UIColor labelColor];
  [(CarFocusableButton *)self->_alertsOnlyButton setNonFocusedTintColor:v15];

  goButton = self->_goButton;
  v17 = +[NSBundle mainBundle];
  v18 = [v17 localizedStringForKey:@"Car_START_BUTTON" value:@"localized string not found" table:0];
  [(CarCardRoundedButton *)goButton setTitle:v18 forState:0];

  v19 = [(CarCardRoundedButton *)self->_goButton titleLabel];
  v20 = [UIFont _mapsCar_fontForTextStyle:UIFontTextStyleCallout weight:UIFontWeightBold];
  [v19 setFont:v20];

  v21 = sub_100FF05BC([(CarCardRoundedButton *)self->_goButton isEnabled]);
  [(CarFocusableButton *)self->_goButton setNonFocusedBackgroundColor:v21];

  v22 = +[UIColor systemWhiteColor];
  [(CarFocusableButton *)self->_goButton setNonFocusedTintColor:v22];
}

- (void)_setupConstraints
{
  v116 = +[NSMutableArray array];
  v3 = [(UILabel *)self->_etaLabel topAnchor];
  v114 = [(CarRouteGeniusDetailCardViewController *)self view];
  [v114 topAnchor];
  v113 = v115 = v3;
  v112 = [v3 constraintEqualToAnchor:?];
  v119[0] = v112;
  v4 = [(UILabel *)self->_etaLabel leadingAnchor];
  v110 = [(CarRouteGeniusDetailCardViewController *)self view];
  [v110 leadingAnchor];
  v109 = v111 = v4;
  v108 = [v4 constraintEqualToAnchor:10.0 constant:?];
  v119[1] = v108;
  v5 = [(CarMoreButton *)self->_handoffButton trailingAnchor];
  [(UILabel *)self->_etaLabel trailingAnchor];
  v106 = v107 = v5;
  v105 = [v5 constraintGreaterThanOrEqualToAnchor:10.0 constant:?];
  v119[2] = v105;
  v6 = [(UILabel *)self->_mainDescriptionLabel firstBaselineAnchor];
  v103 = [(UILabel *)self->_etaLabel firstBaselineAnchor];
  v104 = v6;
  v102 = [v6 constraintEqualToAnchor:16.0 constant:?];
  v119[3] = v102;
  v7 = [(UILabel *)self->_mainDescriptionLabel leadingAnchor];
  v100 = [(CarRouteGeniusDetailCardViewController *)self view];
  [v100 leadingAnchor];
  v99 = v101 = v7;
  v98 = [v7 constraintEqualToAnchor:10.0 constant:?];
  v119[4] = v98;
  v8 = [(UILabel *)self->_mainDescriptionLabel trailingAnchor];
  v96 = [(UILabel *)self->_etaLabel trailingAnchor];
  v97 = v8;
  v95 = [v8 constraintEqualToAnchor:?];
  v119[5] = v95;
  v9 = [(CarAdvisoriesView *)self->_routeAdvisoriesView topAnchor];
  v93 = [(UILabel *)self->_mainDescriptionLabel lastBaselineAnchor];
  v94 = v9;
  v92 = [v9 constraintEqualToAnchor:10.0 constant:?];
  v119[6] = v92;
  v10 = [(CarAdvisoriesView *)self->_routeAdvisoriesView leadingAnchor];
  v90 = [(CarRouteGeniusDetailCardViewController *)self view];
  [v90 leadingAnchor];
  v89 = v91 = v10;
  v88 = [v10 constraintEqualToAnchor:10.0 constant:?];
  v119[7] = v88;
  v11 = [(CarAdvisoriesView *)self->_routeAdvisoriesView trailingAnchor];
  v86 = [(CarRouteGeniusDetailCardViewController *)self view];
  [v86 trailingAnchor];
  v85 = v87 = v11;
  v84 = [v11 constraintEqualToAnchor:-10.0 constant:?];
  v119[8] = v84;
  v83 = [(CarMoreButton *)self->_handoffButton heightAnchor];
  v82 = [v83 constraintEqualToConstant:30.0];
  v119[9] = v82;
  v81 = [(CarMoreButton *)self->_handoffButton widthAnchor];
  v80 = [v81 constraintEqualToConstant:30.0];
  v119[10] = v80;
  v12 = [(CarMoreButton *)self->_handoffButton topAnchor];
  v78 = [(UILabel *)self->_etaLabel topAnchor];
  v79 = v12;
  v77 = [v12 constraintEqualToAnchor:?];
  v119[11] = v77;
  v13 = [(CarMoreButton *)self->_handoffButton trailingAnchor];
  v75 = [(CarRouteGeniusDetailCardViewController *)self view];
  [v75 trailingAnchor];
  v74 = v76 = v13;
  v73 = [v13 constraintEqualToAnchor:-10.0 constant:?];
  v119[12] = v73;
  v14 = [(CarCardRoundedButton *)self->_alertsOnlyButton topAnchor];
  v15 = [(UILabel *)self->_mainDescriptionLabel bottomAnchor];
  LODWORD(v16) = 1144733696;
  v71 = v15;
  v72 = v14;
  v70 = [v14 constraintEqualToAnchor:4.0 constant:v16 priority:?];
  v119[13] = v70;
  v17 = [(CarCardRoundedButton *)self->_alertsOnlyButton topAnchor];
  v68 = [(UILabel *)self->_mainDescriptionLabel bottomAnchor];
  v69 = v17;
  v67 = [v17 constraintGreaterThanOrEqualToAnchor:4.0 constant:?];
  v119[14] = v67;
  v18 = [(CarCardRoundedButton *)self->_alertsOnlyButton topAnchor];
  v19 = [(CarAdvisoriesView *)self->_routeAdvisoriesView bottomAnchor];
  LODWORD(v20) = 1144750080;
  v65 = v19;
  v66 = v18;
  v64 = [v18 constraintEqualToAnchor:4.0 constant:v20 priority:?];
  v119[15] = v64;
  v21 = [(CarCardRoundedButton *)self->_alertsOnlyButton topAnchor];
  v62 = [(CarAdvisoriesView *)self->_routeAdvisoriesView bottomAnchor];
  v63 = v21;
  v61 = [v21 constraintGreaterThanOrEqualToAnchor:4.0 constant:?];
  v119[16] = v61;
  v22 = [(CarCardRoundedButton *)self->_alertsOnlyButton leadingAnchor];
  v59 = [(CarRouteGeniusDetailCardViewController *)self view];
  [v59 leadingAnchor];
  v58 = v60 = v22;
  v57 = [v22 constraintEqualToAnchor:10.0 constant:?];
  v119[17] = v57;
  v23 = [(CarCardRoundedButton *)self->_alertsOnlyButton trailingAnchor];
  v55 = [(CarRouteGeniusDetailCardViewController *)self view];
  [v55 trailingAnchor];
  v54 = v56 = v23;
  v53 = [v23 constraintEqualToAnchor:-10.0 constant:?];
  v119[18] = v53;
  v24 = [(CarCardRoundedButton *)self->_alertsOnlyButton heightAnchor];
  alertsOnlyButton = self->_alertsOnlyButton;
  if (alertsOnlyButton)
  {
    [(CarCardRoundedButton *)alertsOnlyButton buttonMetrics];
    v26 = v118;
  }

  else
  {
    v26 = 0.0;
  }

  v51 = [v24 constraintEqualToConstant:v26];
  v119[19] = v51;
  v27 = [(CarCardRoundedButton *)self->_goButton topAnchor];
  v49 = [(CarCardRoundedButton *)self->_alertsOnlyButton bottomAnchor];
  v50 = v27;
  v48 = [v27 constraintEqualToAnchor:2.0 constant:?];
  v119[20] = v48;
  v28 = [(CarCardRoundedButton *)self->_goButton heightAnchor];
  goButton = self->_goButton;
  v52 = v24;
  if (goButton)
  {
    [(CarCardRoundedButton *)goButton buttonMetrics];
    v30 = v117;
  }

  else
  {
    v30 = 0.0;
  }

  v47 = [v28 constraintEqualToConstant:v30];
  v119[21] = v47;
  v45 = [(CarCardRoundedButton *)self->_goButton leadingAnchor];
  v46 = [(CarRouteGeniusDetailCardViewController *)self view];
  v44 = [v46 leadingAnchor];
  v43 = [v45 constraintEqualToAnchor:v44 constant:10.0];
  v119[22] = v43;
  v31 = [(CarCardRoundedButton *)self->_goButton trailingAnchor];
  v32 = [(CarRouteGeniusDetailCardViewController *)self view];
  v33 = [v32 trailingAnchor];
  v34 = [v31 constraintEqualToAnchor:v33 constant:-10.0];
  v119[23] = v34;
  v35 = [(CarCardRoundedButton *)self->_goButton bottomAnchor];
  v36 = [(CarRouteGeniusDetailCardViewController *)self view];
  v37 = [v36 bottomAnchor];
  [v35 constraintEqualToAnchor:v37 constant:-10.0];
  v38 = v42 = v28;
  v119[24] = v38;
  v39 = [NSArray arrayWithObjects:v119 count:25];
  [v116 addObjectsFromArray:v39];

  v40 = [(CarRouteGeniusDetailCardViewController *)self _createEtaLabelTrailingConstraint];
  etaLabelTrailingConstraint = self->_etaLabelTrailingConstraint;
  self->_etaLabelTrailingConstraint = v40;

  [v116 addObject:self->_etaLabelTrailingConstraint];
  [NSLayoutConstraint activateConstraints:v116];
}

- (void)viewDidAppear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = CarRouteGeniusDetailCardViewController;
  [(CarRouteGeniusDetailCardViewController *)&v4 viewDidAppear:a3];
  self->_goButtonIsFocusable = 0;
  [(CarRouteGeniusDetailCardViewController *)self _updateContents];
}

- (void)viewDidLoad
{
  v38.receiver = self;
  v38.super_class = CarRouteGeniusDetailCardViewController;
  [(CarRouteGeniusDetailCardViewController *)&v38 viewDidLoad];
  v3 = [(CarRouteGeniusDetailCardViewController *)self view];
  [v3 setAccessibilityIdentifier:@"CarRouteGeniusDetailCard"];

  v4 = [UILabel alloc];
  y = CGRectZero.origin.y;
  width = CGRectZero.size.width;
  height = CGRectZero.size.height;
  v8 = [v4 initWithFrame:{CGRectZero.origin.x, y, width, height}];
  etaLabel = self->_etaLabel;
  self->_etaLabel = v8;

  [(UILabel *)self->_etaLabel setAccessibilityIdentifier:@"ETALabel"];
  [(UILabel *)self->_etaLabel setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UILabel *)self->_etaLabel setNumberOfLines:1];
  [(UILabel *)self->_etaLabel setAdjustsFontSizeToFitWidth:1];
  v10 = [(UILabel *)self->_etaLabel font];
  [v10 pointSize];
  v11 = self->_etaLabel;
  if (v12 < 12.0)
  {
    [(UILabel *)v11 setMinimumScaleFactor:1.0];
  }

  else
  {
    v13 = [(UILabel *)v11 font];
    [v13 pointSize];
    [(UILabel *)self->_etaLabel setMinimumScaleFactor:12.0 / v14];
  }

  v15 = [(CarRouteGeniusDetailCardViewController *)self view];
  [v15 addSubview:self->_etaLabel];

  v16 = [[UILabel alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
  mainDescriptionLabel = self->_mainDescriptionLabel;
  self->_mainDescriptionLabel = v16;

  [(UILabel *)self->_mainDescriptionLabel setAccessibilityIdentifier:@"MainDescriptionLabel"];
  [(UILabel *)self->_mainDescriptionLabel setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UILabel *)self->_mainDescriptionLabel setNumberOfLines:1];
  v18 = [(CarRouteGeniusDetailCardViewController *)self view];
  [v18 addSubview:self->_mainDescriptionLabel];

  v19 = [[CarAdvisoriesView alloc] initWithFrame:CGRectZero.origin.x, y, width, height];
  routeAdvisoriesView = self->_routeAdvisoriesView;
  self->_routeAdvisoriesView = v19;

  [(CarAdvisoriesView *)self->_routeAdvisoriesView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(CarAdvisoriesView *)self->_routeAdvisoriesView setHidden:1];
  v21 = [(CarRouteGeniusDetailCardViewController *)self view];
  [v21 addSubview:self->_routeAdvisoriesView];

  v22 = [[CarMoreButton alloc] initWithFrame:CGRectZero.origin.x, y, width, height];
  handoffButton = self->_handoffButton;
  self->_handoffButton = v22;

  [(CarMoreButton *)self->_handoffButton setAccessibilityIdentifier:@"HandoffButton"];
  [(CarMoreButton *)self->_handoffButton setTranslatesAutoresizingMaskIntoConstraints:0];
  LODWORD(v24) = 1132068864;
  [(CarMoreButton *)self->_handoffButton setContentHuggingPriority:1 forAxis:v24];
  LODWORD(v25) = 1148846080;
  [(CarMoreButton *)self->_handoffButton setContentCompressionResistancePriority:0 forAxis:v25];
  LODWORD(v26) = 1148846080;
  [(CarMoreButton *)self->_handoffButton setContentCompressionResistancePriority:1 forAxis:v26];
  [(CarMoreButton *)self->_handoffButton addTarget:self action:"_handoffButtonPressed:" forControlEvents:64];
  v27 = [(CarRouteGeniusDetailCardViewController *)self view];
  [v27 addSubview:self->_handoffButton];

  v28 = [[CarCardRoundedButton alloc] initWithFrame:CGRectZero.origin.x, y, width, height];
  alertsOnlyButton = self->_alertsOnlyButton;
  self->_alertsOnlyButton = v28;

  [(CarCardRoundedButton *)self->_alertsOnlyButton setAccessibilityIdentifier:@"AlertsOnlyButton"];
  [(CarCardRoundedButton *)self->_alertsOnlyButton setTranslatesAutoresizingMaskIntoConstraints:0];
  LODWORD(v30) = 1148846080;
  [(CarCardRoundedButton *)self->_alertsOnlyButton setContentCompressionResistancePriority:1 forAxis:v30];
  [(CarCardRoundedButton *)self->_alertsOnlyButton addTarget:self action:"_alertsOnlyButtonPressed:" forControlEvents:64];
  v31 = [(CarRouteGeniusDetailCardViewController *)self view];
  [v31 addSubview:self->_alertsOnlyButton];

  v32 = [[CarCardRoundedButton alloc] initWithFrame:CGRectZero.origin.x, y, width, height];
  goButton = self->_goButton;
  self->_goButton = v32;

  [(CarCardRoundedButton *)self->_goButton setAccessibilityIdentifier:@"GoButton"];
  v34 = self->_goButton;
  v35 = [(CarCardRoundedButton *)v34 accessibilityTraits];
  [(CarCardRoundedButton *)v34 setAccessibilityTraits:UIAccessibilityTraitButton | v35];
  [(CarCardRoundedButton *)self->_goButton setTranslatesAutoresizingMaskIntoConstraints:0];
  LODWORD(v36) = 1148846080;
  [(CarCardRoundedButton *)self->_goButton setContentCompressionResistancePriority:1 forAxis:v36];
  [(CarCardRoundedButton *)self->_goButton addTarget:self action:"_goButtonPressed:" forControlEvents:64];
  v37 = [(CarRouteGeniusDetailCardViewController *)self view];
  [v37 addSubview:self->_goButton];

  [(CarRouteGeniusDetailCardViewController *)self _setupConstraints];
  [(CarRouteGeniusDetailCardViewController *)self _setupStyling];
  [(CarRouteGeniusDetailCardViewController *)self _updateContents];
}

- (void)dealloc
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = CarRouteGeniusDetailCardViewController;
  [(CarRouteGeniusDetailCardViewController *)&v4 dealloc];
}

- (CarRouteGeniusDetailCardViewController)initWithDelegate:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = CarRouteGeniusDetailCardViewController;
  v5 = [(CarRouteGeniusDetailCardViewController *)&v11 initWithNibName:0 bundle:0];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_delegate, v4);
    v7 = +[MapsExternalDevice sharedInstance];
    v6->_navigationAidedDrivingEnabled = [v7 isNavigationAidedDrivingEnabled];

    v8 = +[MapsExternalDevice sharedInstance];
    v6->_handoffEnabled = [v8 destinationHandoffEnabled];

    v9 = +[NSNotificationCenter defaultCenter];
    [v9 addObserver:v6 selector:"_externalDeviceUpdated:" name:@"MapsExternalDeviceUpdated" object:0];
  }

  return v6;
}

@end