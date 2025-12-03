@interface CarRouteGeniusDetailCardViewController
- (BOOL)_canSafelyRequestFocusUpdate;
- (CarRouteGeniusDetailCardViewController)initWithDelegate:(id)delegate;
- (CarRouteGeniusDetailCardViewControllerDelegate)delegate;
- (NSArray)actionButtons;
- (NSArray)focusOrderSubItems;
- (NSArray)preferredFocusEnvironments;
- (id)_createEtaLabelTrailingConstraint;
- (id)_sharingETAString;
- (void)_alertsOnlyButtonPressed:(id)pressed;
- (void)_disableInteraction;
- (void)_externalDeviceUpdated:(id)updated;
- (void)_goButtonPressed:(id)pressed;
- (void)_handoffButtonPressed:(id)pressed;
- (void)_setupConstraints;
- (void)_setupStyling;
- (void)_updateConstraints;
- (void)_updateContents;
- (void)allowInteraction;
- (void)dealloc;
- (void)setCurrentETA:(id)a;
- (void)setCurrentSuggestion:(id)suggestion;
- (void)setHandoffEnabled:(BOOL)enabled;
- (void)setHasCardFinishedTransitioning:(BOOL)transitioning;
- (void)setNavigationAidedDrivingEnabled:(BOOL)enabled;
- (void)setRouteIsNavigable:(BOOL)navigable;
- (void)updateRouteAdvisories;
- (void)viewDidAppear:(BOOL)appear;
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
    selfCopy = self;
    if (!selfCopy)
    {
      selfCopy = @"<nil>";
      goto LABEL_10;
    }

    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    if (objc_opt_respondsToSelector())
    {
      v7 = [(CarRouteGeniusDetailCardViewController *)selfCopy performSelector:"accessibilityIdentifier"];
      v8 = v7;
      if (v7 && ![v7 isEqualToString:v6])
      {
        selfCopy = [NSString stringWithFormat:@"%@<%p, %@>", v6, selfCopy, v8];

        goto LABEL_8;
      }
    }

    selfCopy = [NSString stringWithFormat:@"%@<%p>", v6, selfCopy];
LABEL_8:

LABEL_10:
    *buf = 138543362;
    v21 = selfCopy;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "[%{public}@] RG detail: Enabling action buttons.", buf, 0xCu);
  }

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  actionButtons = [(CarRouteGeniusDetailCardViewController *)self actionButtons];
  v11 = [actionButtons countByEnumeratingWithState:&v15 objects:v19 count:16];
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
          objc_enumerationMutation(actionButtons);
        }

        [*(*(&v15 + 1) + 8 * i) setEnabled:1];
      }

      v12 = [actionButtons countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v12);
  }
}

- (void)_disableInteraction
{
  v3 = sub_10008B0B8();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    selfCopy = self;
    if (!selfCopy)
    {
      selfCopy = @"<nil>";
      goto LABEL_10;
    }

    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    if (objc_opt_respondsToSelector())
    {
      v7 = [(CarRouteGeniusDetailCardViewController *)selfCopy performSelector:"accessibilityIdentifier"];
      v8 = v7;
      if (v7 && ![v7 isEqualToString:v6])
      {
        selfCopy = [NSString stringWithFormat:@"%@<%p, %@>", v6, selfCopy, v8];

        goto LABEL_8;
      }
    }

    selfCopy = [NSString stringWithFormat:@"%@<%p>", v6, selfCopy];
LABEL_8:

LABEL_10:
    *buf = 138543362;
    v21 = selfCopy;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "[%{public}@] RG detail: Disabling action buttons.", buf, 0xCu);
  }

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  actionButtons = [(CarRouteGeniusDetailCardViewController *)self actionButtons];
  v11 = [actionButtons countByEnumeratingWithState:&v15 objects:v19 count:16];
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
          objc_enumerationMutation(actionButtons);
        }

        [*(*(&v15 + 1) + 8 * i) setEnabled:0];
      }

      v12 = [actionButtons countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v12);
  }
}

- (void)_goButtonPressed:(id)pressed
{
  [(CarRouteGeniusDetailCardViewController *)self _disableInteraction];
  isNavigationAidedDrivingEnabled = [(CarRouteGeniusDetailCardViewController *)self isNavigationAidedDrivingEnabled];
  delegate = [(CarRouteGeniusDetailCardViewController *)self delegate];
  v6 = delegate;
  if (isNavigationAidedDrivingEnabled)
  {
    [delegate detailCardDidHandOff:self];
  }

  else
  {
    [delegate detailCardDidAccept:self navigationType:0];
  }
}

- (void)_alertsOnlyButtonPressed:(id)pressed
{
  [(CarRouteGeniusDetailCardViewController *)self _disableInteraction];
  delegate = [(CarRouteGeniusDetailCardViewController *)self delegate];
  [delegate detailCardDidAccept:self navigationType:2];
}

- (void)_handoffButtonPressed:(id)pressed
{
  [(CarRouteGeniusDetailCardViewController *)self _disableInteraction];
  delegate = [(CarRouteGeniusDetailCardViewController *)self delegate];
  [delegate detailCardDidHandOff:self];
}

- (void)_externalDeviceUpdated:(id)updated
{
  v4 = +[MapsExternalDevice sharedInstance];
  -[CarRouteGeniusDetailCardViewController setNavigationAidedDrivingEnabled:](self, "setNavigationAidedDrivingEnabled:", [v4 isNavigationAidedDrivingEnabled]);

  v5 = +[MapsExternalDevice sharedInstance];
  -[CarRouteGeniusDetailCardViewController setHandoffEnabled:](self, "setHandoffEnabled:", [v5 destinationHandoffEnabled]);
}

- (id)_createEtaLabelTrailingConstraint
{
  isHandoffEnabled = [(CarRouteGeniusDetailCardViewController *)self isHandoffEnabled];
  trailingAnchor = [(UILabel *)self->_etaLabel trailingAnchor];
  if (isHandoffEnabled)
  {
    leadingAnchor = [(CarMoreButton *)self->_handoffButton leadingAnchor];
    v6 = [trailingAnchor constraintEqualToAnchor:leadingAnchor constant:-10.0];
  }

  else
  {
    leadingAnchor = [(CarRouteGeniusDetailCardViewController *)self view];
    trailingAnchor2 = [leadingAnchor trailingAnchor];
    v6 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:-10.0];
  }

  return v6;
}

- (void)updateRouteAdvisories
{
  routeAdvisoriesView = self->_routeAdvisoriesView;
  route = [(MapsSuggestionsRouteGeniusEntry *)self->_currentSuggestion route];
  [(CarAdvisoriesView *)routeAdvisoriesView setRoute:route];

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

  view = [(CarRouteGeniusDetailCardViewController *)self view];
  window = [view window];
  rootViewController = [window rootViewController];

  if (!rootViewController)
  {
    return 0;
  }

  view2 = [(CarRouteGeniusDetailCardViewController *)self view];
  superview = [view2 superview];
  if (superview)
  {
    traitCollection = [(CarRouteGeniusDetailCardViewController *)self traitCollection];
  }

  else
  {
    v11 = +[UIScreen _carScreen];
    traitCollection = [v11 traitCollection];
  }

  v9 = ([traitCollection interactionModel] & 0xA) != 0;
  return v9;
}

- (void)setHasCardFinishedTransitioning:(BOOL)transitioning
{
  if (self->_hasCardFinishedTransitioning != transitioning)
  {
    self->_hasCardFinishedTransitioning = transitioning;
    if (transitioning)
    {
      [(CarRouteGeniusDetailCardViewController *)self _updateContents];
    }
  }
}

- (void)setHandoffEnabled:(BOOL)enabled
{
  if (self->_handoffEnabled != enabled)
  {
    self->_handoffEnabled = enabled;
    [(CarRouteGeniusDetailCardViewController *)self _updateContents];

    [(CarRouteGeniusDetailCardViewController *)self _updateConstraints];
  }
}

- (void)setNavigationAidedDrivingEnabled:(BOOL)enabled
{
  if (self->_navigationAidedDrivingEnabled != enabled)
  {
    self->_navigationAidedDrivingEnabled = enabled;
    [(CarRouteGeniusDetailCardViewController *)self _updateContents];
  }
}

- (void)setCurrentETA:(id)a
{
  aCopy = a;
  if (self->_currentETA != aCopy)
  {
    v6 = aCopy;
    objc_storeStrong(&self->_currentETA, a);
    [(CarRouteGeniusDetailCardViewController *)self _updateContents];
    aCopy = v6;
  }
}

- (void)setCurrentSuggestion:(id)suggestion
{
  suggestionCopy = suggestion;
  if (self->_currentSuggestion != suggestionCopy)
  {
    v6 = suggestionCopy;
    objc_storeStrong(&self->_currentSuggestion, suggestion);
    [(CarRouteGeniusDetailCardViewController *)self _updateContents];
    suggestionCopy = v6;
  }
}

- (void)setRouteIsNavigable:(BOOL)navigable
{
  if (self->_routeIsNavigable != navigable)
  {
    self->_routeIsNavigable = navigable;
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

    _createEtaLabelTrailingConstraint = [(CarRouteGeniusDetailCardViewController *)self _createEtaLabelTrailingConstraint];
    v5 = self->_etaLabelTrailingConstraint;
    self->_etaLabelTrailingConstraint = _createEtaLabelTrailingConstraint;

    v7 = self->_etaLabelTrailingConstraint;
    v6 = [NSArray arrayWithObjects:&v7 count:1];
    [NSLayoutConstraint activateConstraints:v6];
  }
}

- (id)_sharingETAString
{
  currentSuggestion = [(CarRouteGeniusDetailCardViewController *)self currentSuggestion];
  entry = [currentSuggestion entry];
  sharingContacts = [entry sharingContacts];

  if ([sharingContacts count])
  {
    if ([sharingContacts count] == 1)
    {
      firstObject = [sharingContacts firstObject];
      contact = [firstObject contact];
      givenName = [contact givenName];

      v8 = +[NSBundle mainBundle];
      v9 = [v8 localizedStringForKey:@"CarPlay_PlaceCard_SharingAutomatically_OneContact" value:@"localized string not found" table:0];
      v10 = [NSString stringWithFormat:v9, givenName];
    }

    else
    {
      firstObject = +[NSBundle mainBundle];
      givenName = [firstObject localizedStringForKey:@"CarPlay_PlaceCard_SharingAutomatically" value:@"localized string not found" table:0];
      v10 = +[NSString localizedStringWithFormat:](NSString, "localizedStringWithFormat:", givenName, [sharingContacts count]);
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
  currentETA = [(CarRouteGeniusDetailCardViewController *)self currentETA];
  v5 = currentETA;
  if (IsEnabled_LocationIntelligenceMaps)
  {
    arrivalAMPMTimeString = [currentETA arrivalAMPMTimeString];

    currentETA2 = [(CarRouteGeniusDetailCardViewController *)self currentETA];
    v8 = +[NSString _navigation_stringWithMinutes:andAbbreviationType:](NSString, "_navigation_stringWithMinutes:andAbbreviationType:", [currentETA2 remainingMinutes], 1);

    v9 = +[NSBundle mainBundle];
    v10 = [v9 localizedStringForKey:@"CarPlay Widget [Delimiter]" value:@"localized string not found" table:0];

    v11 = +[NSBundle mainBundle];
    v12 = [v11 localizedStringForKey:@"[CarPlay Widget] Route Genius Description" value:@"localized string not found" table:0];

    v51 = 0;
    v49 = arrivalAMPMTimeString;
    v13 = [NSString localizedStringWithValidatedFormat:v12 validFormatSpecifiers:@"%@ %@ %@" error:&v51, arrivalAMPMTimeString, v10, v8];
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
    etaDateString = [currentETA etaDateString];

    v49 = etaDateString;
    [(UILabel *)self->_etaLabel setText:etaDateString];
  }

  v17 = [MKServerFormattedString alloc];
  route = [(MapsSuggestionsRouteGeniusEntry *)self->_currentSuggestion route];
  planningDescriptionString = [route planningDescriptionString];
  v20 = [v17 initWithComposedString:planningDescriptionString];

  v21 = [UIFont _mapsCar_fontForTextStyle:UIFontTextStyleCaption1 weight:UIFontWeightRegular];
  v52 = NSFontAttributeName;
  v53 = v21;
  v22 = [NSDictionary dictionaryWithObjects:&v53 forKeys:&v52 count:1];
  v48 = v20;
  v23 = [v20 multiPartAttributedStringWithAttributes:v22];
  attributedString = [v23 attributedString];

  [(UILabel *)self->_mainDescriptionLabel setAttributedText:attributedString];
  _sharingETAString = [(CarRouteGeniusDetailCardViewController *)self _sharingETAString];
  v26 = [_sharingETAString length];
  mainDescriptionLabel = self->_mainDescriptionLabel;
  if (v26)
  {
    text = [(UILabel *)mainDescriptionLabel text];
    v29 = [text stringByAppendingFormat:@"\n%@", _sharingETAString];
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
    isNavigationAidedDrivingEnabled = [(CarRouteGeniusDetailCardViewController *)self isNavigationAidedDrivingEnabled];
  }

  else
  {
    isNavigationAidedDrivingEnabled = 1;
  }

  [(CarMoreButton *)self->_handoffButton setHidden:isNavigationAidedDrivingEnabled];
  if ([(CarRouteGeniusDetailCardViewController *)self isNavigationAidedDrivingEnabled])
  {
    v32 = +[MapsExternalDevice sharedInstance];
    mapsDisplayName = [v32 mapsDisplayName];
    v34 = mapsDisplayName;
    if (mapsDisplayName)
    {
      v35 = mapsDisplayName;
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

  isNavigationAidedDrivingEnabled2 = [(CarRouteGeniusDetailCardViewController *)self routeIsNavigable]|| [(CarRouteGeniusDetailCardViewController *)self isNavigationAidedDrivingEnabled];
  [(CarFocusableButton *)self->_alertsOnlyButton setEnabled:isNavigationAidedDrivingEnabled2];
  goButtonIsFocusable = self->_goButtonIsFocusable;
  isNavigationAidedDrivingEnabled3 = [(CarRouteGeniusDetailCardViewController *)self routeIsNavigable]|| [(CarRouteGeniusDetailCardViewController *)self isNavigationAidedDrivingEnabled];
  [(CarFocusableButton *)self->_goButton setEnabled:isNavigationAidedDrivingEnabled3];
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

  isEnabled = [(CarCardRoundedButton *)self->_goButton isEnabled];
  if (isEnabled)
  {
    LOBYTE(isEnabled) = [(CarRouteGeniusDetailCardViewController *)self _canSafelyRequestFocusUpdate];
  }

  self->_goButtonIsFocusable = isEnabled;
  v46 = +[CarDisplayController sharedInstance];
  chromeViewController = [v46 chromeViewController];
  [chromeViewController setNeedsFocusUpdate];
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

  font = [(UILabel *)self->_mainDescriptionLabel font];
  [font pointSize];
  [(UILabel *)self->_mainDescriptionLabel setMinimumScaleFactor:10.0 / v8];

  [(CarMoreButton *)self->_handoffButton setOptions:4];
  alertsOnlyButton = self->_alertsOnlyButton;
  v10 = +[NSBundle mainBundle];
  v11 = [v10 localizedStringForKey:@"Car_ALERTS_ONLY" value:@"localized string not found" table:0];
  [(CarCardRoundedButton *)alertsOnlyButton setTitle:v11 forState:0];

  titleLabel = [(CarCardRoundedButton *)self->_alertsOnlyButton titleLabel];
  v13 = [UIFont _mapsCar_fontForTextStyle:UIFontTextStyleCallout weight:UIFontWeightRegular];
  [titleLabel setFont:v13];

  v14 = +[UIColor _carSystemQuaternaryColor];
  [(CarFocusableButton *)self->_alertsOnlyButton setNonFocusedBackgroundColor:v14];

  v15 = +[UIColor labelColor];
  [(CarFocusableButton *)self->_alertsOnlyButton setNonFocusedTintColor:v15];

  goButton = self->_goButton;
  v17 = +[NSBundle mainBundle];
  v18 = [v17 localizedStringForKey:@"Car_START_BUTTON" value:@"localized string not found" table:0];
  [(CarCardRoundedButton *)goButton setTitle:v18 forState:0];

  titleLabel2 = [(CarCardRoundedButton *)self->_goButton titleLabel];
  v20 = [UIFont _mapsCar_fontForTextStyle:UIFontTextStyleCallout weight:UIFontWeightBold];
  [titleLabel2 setFont:v20];

  v21 = sub_100FF05BC([(CarCardRoundedButton *)self->_goButton isEnabled]);
  [(CarFocusableButton *)self->_goButton setNonFocusedBackgroundColor:v21];

  v22 = +[UIColor systemWhiteColor];
  [(CarFocusableButton *)self->_goButton setNonFocusedTintColor:v22];
}

- (void)_setupConstraints
{
  v116 = +[NSMutableArray array];
  topAnchor = [(UILabel *)self->_etaLabel topAnchor];
  view = [(CarRouteGeniusDetailCardViewController *)self view];
  [view topAnchor];
  v113 = v115 = topAnchor;
  v112 = [topAnchor constraintEqualToAnchor:?];
  v119[0] = v112;
  leadingAnchor = [(UILabel *)self->_etaLabel leadingAnchor];
  view2 = [(CarRouteGeniusDetailCardViewController *)self view];
  [view2 leadingAnchor];
  v109 = v111 = leadingAnchor;
  v108 = [leadingAnchor constraintEqualToAnchor:10.0 constant:?];
  v119[1] = v108;
  trailingAnchor = [(CarMoreButton *)self->_handoffButton trailingAnchor];
  [(UILabel *)self->_etaLabel trailingAnchor];
  v106 = v107 = trailingAnchor;
  v105 = [trailingAnchor constraintGreaterThanOrEqualToAnchor:10.0 constant:?];
  v119[2] = v105;
  firstBaselineAnchor = [(UILabel *)self->_mainDescriptionLabel firstBaselineAnchor];
  firstBaselineAnchor2 = [(UILabel *)self->_etaLabel firstBaselineAnchor];
  v104 = firstBaselineAnchor;
  v102 = [firstBaselineAnchor constraintEqualToAnchor:16.0 constant:?];
  v119[3] = v102;
  leadingAnchor2 = [(UILabel *)self->_mainDescriptionLabel leadingAnchor];
  view3 = [(CarRouteGeniusDetailCardViewController *)self view];
  [view3 leadingAnchor];
  v99 = v101 = leadingAnchor2;
  v98 = [leadingAnchor2 constraintEqualToAnchor:10.0 constant:?];
  v119[4] = v98;
  trailingAnchor2 = [(UILabel *)self->_mainDescriptionLabel trailingAnchor];
  trailingAnchor3 = [(UILabel *)self->_etaLabel trailingAnchor];
  v97 = trailingAnchor2;
  v95 = [trailingAnchor2 constraintEqualToAnchor:?];
  v119[5] = v95;
  topAnchor2 = [(CarAdvisoriesView *)self->_routeAdvisoriesView topAnchor];
  lastBaselineAnchor = [(UILabel *)self->_mainDescriptionLabel lastBaselineAnchor];
  v94 = topAnchor2;
  v92 = [topAnchor2 constraintEqualToAnchor:10.0 constant:?];
  v119[6] = v92;
  leadingAnchor3 = [(CarAdvisoriesView *)self->_routeAdvisoriesView leadingAnchor];
  view4 = [(CarRouteGeniusDetailCardViewController *)self view];
  [view4 leadingAnchor];
  v89 = v91 = leadingAnchor3;
  v88 = [leadingAnchor3 constraintEqualToAnchor:10.0 constant:?];
  v119[7] = v88;
  trailingAnchor4 = [(CarAdvisoriesView *)self->_routeAdvisoriesView trailingAnchor];
  view5 = [(CarRouteGeniusDetailCardViewController *)self view];
  [view5 trailingAnchor];
  v85 = v87 = trailingAnchor4;
  v84 = [trailingAnchor4 constraintEqualToAnchor:-10.0 constant:?];
  v119[8] = v84;
  heightAnchor = [(CarMoreButton *)self->_handoffButton heightAnchor];
  v82 = [heightAnchor constraintEqualToConstant:30.0];
  v119[9] = v82;
  widthAnchor = [(CarMoreButton *)self->_handoffButton widthAnchor];
  v80 = [widthAnchor constraintEqualToConstant:30.0];
  v119[10] = v80;
  topAnchor3 = [(CarMoreButton *)self->_handoffButton topAnchor];
  topAnchor4 = [(UILabel *)self->_etaLabel topAnchor];
  v79 = topAnchor3;
  v77 = [topAnchor3 constraintEqualToAnchor:?];
  v119[11] = v77;
  trailingAnchor5 = [(CarMoreButton *)self->_handoffButton trailingAnchor];
  view6 = [(CarRouteGeniusDetailCardViewController *)self view];
  [view6 trailingAnchor];
  v74 = v76 = trailingAnchor5;
  v73 = [trailingAnchor5 constraintEqualToAnchor:-10.0 constant:?];
  v119[12] = v73;
  topAnchor5 = [(CarCardRoundedButton *)self->_alertsOnlyButton topAnchor];
  bottomAnchor = [(UILabel *)self->_mainDescriptionLabel bottomAnchor];
  LODWORD(v16) = 1144733696;
  v71 = bottomAnchor;
  v72 = topAnchor5;
  v70 = [topAnchor5 constraintEqualToAnchor:4.0 constant:v16 priority:?];
  v119[13] = v70;
  topAnchor6 = [(CarCardRoundedButton *)self->_alertsOnlyButton topAnchor];
  bottomAnchor2 = [(UILabel *)self->_mainDescriptionLabel bottomAnchor];
  v69 = topAnchor6;
  v67 = [topAnchor6 constraintGreaterThanOrEqualToAnchor:4.0 constant:?];
  v119[14] = v67;
  topAnchor7 = [(CarCardRoundedButton *)self->_alertsOnlyButton topAnchor];
  bottomAnchor3 = [(CarAdvisoriesView *)self->_routeAdvisoriesView bottomAnchor];
  LODWORD(v20) = 1144750080;
  v65 = bottomAnchor3;
  v66 = topAnchor7;
  v64 = [topAnchor7 constraintEqualToAnchor:4.0 constant:v20 priority:?];
  v119[15] = v64;
  topAnchor8 = [(CarCardRoundedButton *)self->_alertsOnlyButton topAnchor];
  bottomAnchor4 = [(CarAdvisoriesView *)self->_routeAdvisoriesView bottomAnchor];
  v63 = topAnchor8;
  v61 = [topAnchor8 constraintGreaterThanOrEqualToAnchor:4.0 constant:?];
  v119[16] = v61;
  leadingAnchor4 = [(CarCardRoundedButton *)self->_alertsOnlyButton leadingAnchor];
  view7 = [(CarRouteGeniusDetailCardViewController *)self view];
  [view7 leadingAnchor];
  v58 = v60 = leadingAnchor4;
  v57 = [leadingAnchor4 constraintEqualToAnchor:10.0 constant:?];
  v119[17] = v57;
  trailingAnchor6 = [(CarCardRoundedButton *)self->_alertsOnlyButton trailingAnchor];
  view8 = [(CarRouteGeniusDetailCardViewController *)self view];
  [view8 trailingAnchor];
  v54 = v56 = trailingAnchor6;
  v53 = [trailingAnchor6 constraintEqualToAnchor:-10.0 constant:?];
  v119[18] = v53;
  heightAnchor2 = [(CarCardRoundedButton *)self->_alertsOnlyButton heightAnchor];
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

  v51 = [heightAnchor2 constraintEqualToConstant:v26];
  v119[19] = v51;
  topAnchor9 = [(CarCardRoundedButton *)self->_goButton topAnchor];
  bottomAnchor5 = [(CarCardRoundedButton *)self->_alertsOnlyButton bottomAnchor];
  v50 = topAnchor9;
  v48 = [topAnchor9 constraintEqualToAnchor:2.0 constant:?];
  v119[20] = v48;
  heightAnchor3 = [(CarCardRoundedButton *)self->_goButton heightAnchor];
  goButton = self->_goButton;
  v52 = heightAnchor2;
  if (goButton)
  {
    [(CarCardRoundedButton *)goButton buttonMetrics];
    v30 = v117;
  }

  else
  {
    v30 = 0.0;
  }

  v47 = [heightAnchor3 constraintEqualToConstant:v30];
  v119[21] = v47;
  leadingAnchor5 = [(CarCardRoundedButton *)self->_goButton leadingAnchor];
  view9 = [(CarRouteGeniusDetailCardViewController *)self view];
  leadingAnchor6 = [view9 leadingAnchor];
  v43 = [leadingAnchor5 constraintEqualToAnchor:leadingAnchor6 constant:10.0];
  v119[22] = v43;
  trailingAnchor7 = [(CarCardRoundedButton *)self->_goButton trailingAnchor];
  view10 = [(CarRouteGeniusDetailCardViewController *)self view];
  trailingAnchor8 = [view10 trailingAnchor];
  v34 = [trailingAnchor7 constraintEqualToAnchor:trailingAnchor8 constant:-10.0];
  v119[23] = v34;
  bottomAnchor6 = [(CarCardRoundedButton *)self->_goButton bottomAnchor];
  view11 = [(CarRouteGeniusDetailCardViewController *)self view];
  bottomAnchor7 = [view11 bottomAnchor];
  [bottomAnchor6 constraintEqualToAnchor:bottomAnchor7 constant:-10.0];
  v38 = v42 = heightAnchor3;
  v119[24] = v38;
  v39 = [NSArray arrayWithObjects:v119 count:25];
  [v116 addObjectsFromArray:v39];

  _createEtaLabelTrailingConstraint = [(CarRouteGeniusDetailCardViewController *)self _createEtaLabelTrailingConstraint];
  etaLabelTrailingConstraint = self->_etaLabelTrailingConstraint;
  self->_etaLabelTrailingConstraint = _createEtaLabelTrailingConstraint;

  [v116 addObject:self->_etaLabelTrailingConstraint];
  [NSLayoutConstraint activateConstraints:v116];
}

- (void)viewDidAppear:(BOOL)appear
{
  v4.receiver = self;
  v4.super_class = CarRouteGeniusDetailCardViewController;
  [(CarRouteGeniusDetailCardViewController *)&v4 viewDidAppear:appear];
  self->_goButtonIsFocusable = 0;
  [(CarRouteGeniusDetailCardViewController *)self _updateContents];
}

- (void)viewDidLoad
{
  v38.receiver = self;
  v38.super_class = CarRouteGeniusDetailCardViewController;
  [(CarRouteGeniusDetailCardViewController *)&v38 viewDidLoad];
  view = [(CarRouteGeniusDetailCardViewController *)self view];
  [view setAccessibilityIdentifier:@"CarRouteGeniusDetailCard"];

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
  font = [(UILabel *)self->_etaLabel font];
  [font pointSize];
  v11 = self->_etaLabel;
  if (v12 < 12.0)
  {
    [(UILabel *)v11 setMinimumScaleFactor:1.0];
  }

  else
  {
    font2 = [(UILabel *)v11 font];
    [font2 pointSize];
    [(UILabel *)self->_etaLabel setMinimumScaleFactor:12.0 / v14];
  }

  view2 = [(CarRouteGeniusDetailCardViewController *)self view];
  [view2 addSubview:self->_etaLabel];

  v16 = [[UILabel alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
  mainDescriptionLabel = self->_mainDescriptionLabel;
  self->_mainDescriptionLabel = v16;

  [(UILabel *)self->_mainDescriptionLabel setAccessibilityIdentifier:@"MainDescriptionLabel"];
  [(UILabel *)self->_mainDescriptionLabel setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UILabel *)self->_mainDescriptionLabel setNumberOfLines:1];
  view3 = [(CarRouteGeniusDetailCardViewController *)self view];
  [view3 addSubview:self->_mainDescriptionLabel];

  height = [[CarAdvisoriesView alloc] initWithFrame:CGRectZero.origin.x, y, width, height];
  routeAdvisoriesView = self->_routeAdvisoriesView;
  self->_routeAdvisoriesView = height;

  [(CarAdvisoriesView *)self->_routeAdvisoriesView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(CarAdvisoriesView *)self->_routeAdvisoriesView setHidden:1];
  view4 = [(CarRouteGeniusDetailCardViewController *)self view];
  [view4 addSubview:self->_routeAdvisoriesView];

  height2 = [[CarMoreButton alloc] initWithFrame:CGRectZero.origin.x, y, width, height];
  handoffButton = self->_handoffButton;
  self->_handoffButton = height2;

  [(CarMoreButton *)self->_handoffButton setAccessibilityIdentifier:@"HandoffButton"];
  [(CarMoreButton *)self->_handoffButton setTranslatesAutoresizingMaskIntoConstraints:0];
  LODWORD(v24) = 1132068864;
  [(CarMoreButton *)self->_handoffButton setContentHuggingPriority:1 forAxis:v24];
  LODWORD(v25) = 1148846080;
  [(CarMoreButton *)self->_handoffButton setContentCompressionResistancePriority:0 forAxis:v25];
  LODWORD(v26) = 1148846080;
  [(CarMoreButton *)self->_handoffButton setContentCompressionResistancePriority:1 forAxis:v26];
  [(CarMoreButton *)self->_handoffButton addTarget:self action:"_handoffButtonPressed:" forControlEvents:64];
  view5 = [(CarRouteGeniusDetailCardViewController *)self view];
  [view5 addSubview:self->_handoffButton];

  height3 = [[CarCardRoundedButton alloc] initWithFrame:CGRectZero.origin.x, y, width, height];
  alertsOnlyButton = self->_alertsOnlyButton;
  self->_alertsOnlyButton = height3;

  [(CarCardRoundedButton *)self->_alertsOnlyButton setAccessibilityIdentifier:@"AlertsOnlyButton"];
  [(CarCardRoundedButton *)self->_alertsOnlyButton setTranslatesAutoresizingMaskIntoConstraints:0];
  LODWORD(v30) = 1148846080;
  [(CarCardRoundedButton *)self->_alertsOnlyButton setContentCompressionResistancePriority:1 forAxis:v30];
  [(CarCardRoundedButton *)self->_alertsOnlyButton addTarget:self action:"_alertsOnlyButtonPressed:" forControlEvents:64];
  view6 = [(CarRouteGeniusDetailCardViewController *)self view];
  [view6 addSubview:self->_alertsOnlyButton];

  height4 = [[CarCardRoundedButton alloc] initWithFrame:CGRectZero.origin.x, y, width, height];
  goButton = self->_goButton;
  self->_goButton = height4;

  [(CarCardRoundedButton *)self->_goButton setAccessibilityIdentifier:@"GoButton"];
  v34 = self->_goButton;
  accessibilityTraits = [(CarCardRoundedButton *)v34 accessibilityTraits];
  [(CarCardRoundedButton *)v34 setAccessibilityTraits:UIAccessibilityTraitButton | accessibilityTraits];
  [(CarCardRoundedButton *)self->_goButton setTranslatesAutoresizingMaskIntoConstraints:0];
  LODWORD(v36) = 1148846080;
  [(CarCardRoundedButton *)self->_goButton setContentCompressionResistancePriority:1 forAxis:v36];
  [(CarCardRoundedButton *)self->_goButton addTarget:self action:"_goButtonPressed:" forControlEvents:64];
  view7 = [(CarRouteGeniusDetailCardViewController *)self view];
  [view7 addSubview:self->_goButton];

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

- (CarRouteGeniusDetailCardViewController)initWithDelegate:(id)delegate
{
  delegateCopy = delegate;
  v11.receiver = self;
  v11.super_class = CarRouteGeniusDetailCardViewController;
  v5 = [(CarRouteGeniusDetailCardViewController *)&v11 initWithNibName:0 bundle:0];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_delegate, delegateCopy);
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