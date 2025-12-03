@interface CarPlaceCardCardViewController
- (BOOL)_canSafelyRequestFocusUpdate;
- (BOOL)_isGoButtonFocusable;
- (BOOL)_shouldHideNavigationRelatedInfo;
- (BOOL)_shouldShowEVViewsInline;
- (CarPlaceCardCardViewController)initWithSearchResult:(id)result style:(int64_t)style dataSource:(id)source delegate:(id)delegate;
- (CarPlaceCardCardViewControllerDataSource)dataSource;
- (CarPlaceCardCardViewControllerDelegate)delegate;
- (MKMapItem)mapItem;
- (NSArray)preferredFocusEnvironments;
- (_MKLocalizedHoursBuilder)localizedHoursBuilder;
- (id)_attributesForPlainSubtitleString;
- (id)_createAutohidingTextlabelWithVerticalCompressionResistancePriority:(float)priority;
- (id)_createEVChargingViewModel;
- (id)_createEtaLabelTrailingConstraint;
- (id)_localizedHours;
- (id)_sharingETAString;
- (id)_subtitleString;
- (id)_visibleButtons;
- (int64_t)titleNumberOfLines;
- (void)ETAProviderUpdated:(id)updated;
- (void)_callDestination;
- (void)_cancelScheduleETAUpdate;
- (void)_captureAnalytics;
- (void)_evChargingMoreButtonPressed:(id)pressed;
- (void)_externalDeviceUpdated:(id)updated;
- (void)_goButtonPressed:(id)pressed;
- (void)_initializeGoButtonState;
- (void)_moreButtonPressed:(id)pressed;
- (void)_presentMoreOptions;
- (void)_scheduleETAUpdate;
- (void)_scheduleOpeningHoursUpdate;
- (void)_setupConstraints;
- (void)_setupStyling;
- (void)_startETAProviderIfNeeded;
- (void)_updateConstraints;
- (void)_updateContents;
- (void)_updateETA;
- (void)_updateETARelatedContents;
- (void)_updateMoreButton;
- (void)_updateOpeningHours;
- (void)_updateRouteAdvisoriesStack;
- (void)dealloc;
- (void)setGoButtonEnabled:(BOOL)enabled;
- (void)setGoButtonHidden:(BOOL)hidden;
- (void)setHandoffEnabled:(BOOL)enabled;
- (void)setHasCardFinishedTransitioning:(BOOL)transitioning;
- (void)setLoading:(BOOL)loading;
- (void)setNavigationAidedDrivingEnabled:(BOOL)enabled;
- (void)setSearchResult:(id)result;
- (void)setShouldDisplayMoreButton:(BOOL)button;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLoad;
@end

@implementation CarPlaceCardCardViewController

- (CarPlaceCardCardViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (CarPlaceCardCardViewControllerDataSource)dataSource
{
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);

  return WeakRetained;
}

- (void)ETAProviderUpdated:(id)updated
{
  updatedCopy = updated;
  v5 = sub_100006E1C();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    [updatedCopy etaTravelTime];
    v9 = 134217984;
    v10 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "CarPlaceCard: ETAProviderUpdated: etaTravelTime: %f", &v9, 0xCu);
  }

  if (self->_style == 1 && self->_etaTravelTime == 0.0)
  {
    [updatedCopy etaTravelTime];
    if (v7 > 0.0)
    {
      [updatedCopy etaTravelTime];
      self->_etaTravelTime = v8;
      [(CarPlaceCardCardViewController *)self setGoButtonEnabled:1];
      [(CarPlaceCardCardViewController *)self setGoButtonHidden:0];
      [updatedCopy cancel];
    }
  }
}

- (NSArray)preferredFocusEnvironments
{
  if ([(CarPlaceCardCardViewController *)self isViewLoaded]&& [(CarPlaceCardCardViewController *)self _isGoButtonFocusable])
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

- (void)_externalDeviceUpdated:(id)updated
{
  v4 = sub_100006E1C();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "CarPlaceCard _externalDeviceUpdated", v7, 2u);
  }

  v5 = +[MapsExternalDevice sharedInstance];
  -[CarPlaceCardCardViewController setNavigationAidedDrivingEnabled:](self, "setNavigationAidedDrivingEnabled:", [v5 isNavigationAidedDrivingEnabled]);

  v6 = +[MapsExternalDevice sharedInstance];
  -[CarPlaceCardCardViewController setHandoffEnabled:](self, "setHandoffEnabled:", [v6 destinationHandoffEnabled]);
}

- (void)_evChargingMoreButtonPressed:(id)pressed
{
  v4 = sub_100006E1C();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *v12 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "CarPlaceCard EVCharging More button pressed", v12, 2u);
  }

  if (![(CarPlaceCardCardViewController *)self _shouldShowEVViewsInline])
  {
    v5 = [_TtC4Maps39CarEVChargingAvailabilityViewController alloc];
    evChargingViewModel = [(CarPlaceCardCardViewController *)self evChargingViewModel];
    v7 = [(CarEVChargingAvailabilityViewController *)v5 initWithViewModal:evChargingViewModel];
    [(CarPlaceCardCardViewController *)self setEvChargingAvailabilityVC:v7];

    evChargingAvailabilityVC = [(CarPlaceCardCardViewController *)self evChargingAvailabilityVC];
    [evChargingAvailabilityVC configureForModalPresentation];

    delegate = [(CarPlaceCardCardViewController *)self delegate];
    LOBYTE(evChargingViewModel) = objc_opt_respondsToSelector();

    if (evChargingViewModel)
    {
      delegate2 = [(CarPlaceCardCardViewController *)self delegate];
      evChargingAvailabilityVC2 = [(CarPlaceCardCardViewController *)self evChargingAvailabilityVC];
      [delegate2 placeCard:self wantsToPresentEVAvailability:evChargingAvailabilityVC2];
    }
  }
}

- (void)_goButtonPressed:(id)pressed
{
  isNavigationAidedDrivingEnabled = [(CarPlaceCardCardViewController *)self isNavigationAidedDrivingEnabled];
  v5 = sub_100006E1C();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_INFO);
  if (isNavigationAidedDrivingEnabled)
  {
    if (v6)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "CarPlaceCard go button pressed, NAD active -> handing off", buf, 2u);
    }

    delegate = [(CarPlaceCardCardViewController *)self delegate];
    [delegate placeCardDidSelectHandoff:self];
  }

  else
  {
    if (v6)
    {
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "CarPlaceCard go button pressed, NAD inactive -> starting nav", v8, 2u);
    }

    delegate = [(CarPlaceCardCardViewController *)self delegate];
    [delegate placeCardDidSelectGo:self];
  }
}

- (void)_moreButtonPressed:(id)pressed
{
  v4 = sub_100006E1C();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    options = [(CarMoreButton *)self->_moreButton options];
    v8 = 134217984;
    v9 = options;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "CarPlaceCard 'More' button pressed with options: %lu", &v8, 0xCu);
  }

  if ((~[(CarMoreButton *)self->_moreButton options]& 6) != 0)
  {
    if (([(CarMoreButton *)self->_moreButton options]& 2) != 0)
    {
      [(CarPlaceCardCardViewController *)self _callDestination];
    }

    else if (([(CarMoreButton *)self->_moreButton options]& 4) != 0)
    {
      delegate = [(CarPlaceCardCardViewController *)self delegate];
      [delegate placeCardDidSelectHandoff:self];
    }

    else
    {
      v6 = sub_100006E1C();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        LOWORD(v8) = 0;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "CarPlaceCard: pressed _moreButton with invalid options", &v8, 2u);
      }
    }
  }

  else
  {
    [(CarPlaceCardCardViewController *)self _presentMoreOptions];
  }
}

- (BOOL)_shouldShowEVViewsInline
{
  v2 = +[UIScreen _carScreen];
  currentMode = [v2 currentMode];
  [currentMode size];
  v5 = v4 >= 1000.0;

  return v5;
}

- (id)_createEVChargingViewModel
{
  mapItem = [(CarPlaceCardCardViewController *)self mapItem];

  if (mapItem)
  {
    v4 = [_TtC4Maps31CarPlaceCardEVChargingViewModel alloc];
    mapItem2 = [(CarPlaceCardCardViewController *)self mapItem];
    v6 = +[VGVirtualGarageService sharedService];
    v7 = [(CarPlaceCardEVChargingViewModel *)v4 initWithMapItem:mapItem2 virtualGarageService:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)_shouldHideNavigationRelatedInfo
{
  if ([(CarPlaceCardCardViewController *)self isNavigationAidedDrivingEnabled]|| [(CarPlaceCardCardViewController *)self isGoButtonHidden])
  {
    LOBYTE(v3) = 1;
  }

  else
  {
    v4 = +[MKLocationManager sharedLocationManager];
    v3 = [v4 isAuthorizedForPreciseLocation] ^ 1;
  }

  return v3;
}

- (void)_callDestination
{
  mapItem = [(SearchResult *)self->_searchResult mapItem];
  phoneNumber = [mapItem phoneNumber];

  if (phoneNumber && [phoneNumber length])
  {
    sub_10096B660(phoneNumber);
  }

  else if ([(SearchResult *)self->_searchResult isAddressBookResult])
  {
    address = [(SearchResult *)self->_searchResult address];
    contact = [address contact];

    phoneNumbers = [contact phoneNumbers];
    firstObject = [phoneNumbers firstObject];
    value = [firstObject value];

    stringValue = [value stringValue];
    sub_10096B660(stringValue);
  }

  else
  {
    v11 = sub_100006E1C();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      mapItem2 = [(SearchResult *)self->_searchResult mapItem];
      phoneNumber2 = [mapItem2 phoneNumber];
      v15 = 138412290;
      v16 = phoneNumber2;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "CarPlaceCard tried to call POI, but failed. Number: %@", &v15, 0xCu);
    }
  }

  delegate = [(CarPlaceCardCardViewController *)self delegate];
  [delegate placeCardDidSelectCall:self];
}

- (void)_presentMoreOptions
{
  v3 = [UIAlertController alertControllerWithTitle:0 message:0 preferredStyle:0];
  [v3 setModalPresentationStyle:5];
  objc_initWeak(&location, self);
  v4 = [[NSMutableArray alloc] initWithCapacity:3];
  if (([(CarMoreButton *)self->_moreButton options]& 2) != 0)
  {
    v5 = +[NSBundle mainBundle];
    v6 = [v5 localizedStringForKey:@"Call [CarPlay]" value:@"localized string not found" table:0];
    mapItem = [(CarPlaceCardCardViewController *)self mapItem];
    name = [mapItem name];
    v9 = [NSString stringWithFormat:v6, name];

    v10 = [UIImage _mapsCar_systemImageNamed:@"phone.fill" textStyle:UIFontTextStyleTitle3];
    v40[0] = _NSConcreteStackBlock;
    v40[1] = 3221225472;
    v40[2] = sub_10096BE10;
    v40[3] = &unk_101658AF0;
    objc_copyWeak(&v41, &location);
    v11 = [CarAlertAction actionWithTitle:v9 image:v10 handler:v40];

    [v4 addObject:v11];
    objc_destroyWeak(&v41);
  }

  if (([(CarMoreButton *)self->_moreButton options]& 4) != 0)
  {
    v12 = +[MapsExternalDevice sharedInstance];
    mapsDisplayName = [v12 mapsDisplayName];

    v14 = +[NSBundle mainBundle];
    if (mapsDisplayName)
    {
      v15 = [v14 localizedStringForKey:@"Share destination [CarPlay]" value:@"localized string not found" table:0];
      v16 = [NSString stringWithFormat:v15, mapsDisplayName];
    }

    else
    {
      v16 = [v14 localizedStringForKey:@"Share destination to unknown headunit [CarPlay]" value:@"localized string not found" table:0];
    }

    v17 = [UIImage _mapsCar_systemImageNamed:@"square.and.arrow.up" textStyle:UIFontTextStyleTitle3];
    v38[0] = _NSConcreteStackBlock;
    v38[1] = 3221225472;
    v38[2] = sub_10096BE98;
    v38[3] = &unk_101658AF0;
    objc_copyWeak(&v39, &location);
    v18 = [CarAlertAction actionWithTitle:v16 image:v17 handler:v38];

    [v4 addObject:v18];
    objc_destroyWeak(&v39);
  }

  v19 = +[NSBundle mainBundle];
  v20 = [v19 localizedStringForKey:@"Cancel [CarPlay value:No Route]" table:{@"localized string not found", 0}];
  v36[0] = _NSConcreteStackBlock;
  v36[1] = 3221225472;
  v36[2] = sub_10096BF50;
  v36[3] = &unk_101658AF0;
  objc_copyWeak(&v37, &location);
  v21 = [UIAlertAction actionWithTitle:v20 style:1 handler:v36];

  [v4 addObject:v21];
  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v22 = v4;
  v23 = [v22 countByEnumeratingWithState:&v32 objects:v45 count:16];
  if (v23)
  {
    v24 = *v33;
    do
    {
      v25 = 0;
      do
      {
        if (*v33 != v24)
        {
          objc_enumerationMutation(v22);
        }

        [v3 addAction:*(*(&v32 + 1) + 8 * v25)];
        v25 = v25 + 1;
      }

      while (v23 != v25);
      v23 = [v22 countByEnumeratingWithState:&v32 objects:v45 count:16];
    }

    while (v23);
  }

  v26 = sub_100006E1C();
  if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
  {
    v27 = [v22 count];
    *buf = 134217984;
    v44 = v27;
    _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_INFO, "Presenting actionSheet with %ld options.", buf, 0xCu);
  }

  v29[0] = _NSConcreteStackBlock;
  v29[1] = 3221225472;
  v29[2] = sub_10096BFC4;
  v29[3] = &unk_101661340;
  objc_copyWeak(&v31, &location);
  v28 = v3;
  v30 = v28;
  [(CarPlaceCardCardViewController *)self presentViewController:v28 animated:1 completion:v29];

  objc_destroyWeak(&v31);
  objc_destroyWeak(&v37);

  objc_destroyWeak(&location);
}

- (id)_createAutohidingTextlabelWithVerticalCompressionResistancePriority:(float)priority
{
  v4 = [[CarAutohidingLabel alloc] initWithFrame:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
  [(CarAutohidingLabel *)v4 setTranslatesAutoresizingMaskIntoConstraints:0];
  *&v5 = priority;
  [(CarAutohidingLabel *)v4 setContentCompressionResistancePriority:1 forAxis:v5];
  LODWORD(v6) = 1148846080;
  [(CarAutohidingLabel *)v4 setContentHuggingPriority:1 forAxis:v6];

  return v4;
}

- (id)_createEtaLabelTrailingConstraint
{
  shouldDisplayMoreButton = [(CarPlaceCardCardViewController *)self shouldDisplayMoreButton];
  trailingAnchor = [(UILabel *)self->_etaLabel trailingAnchor];
  if (shouldDisplayMoreButton)
  {
    leadingAnchor = [(CarMoreButton *)self->_moreButton leadingAnchor];
    v6 = [trailingAnchor constraintLessThanOrEqualToAnchor:leadingAnchor constant:-10.0];
  }

  else
  {
    leadingAnchor = [(CarPlaceCardCardViewController *)self view];
    trailingAnchor2 = [leadingAnchor trailingAnchor];
    v6 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:-10.0];
  }

  return v6;
}

- (id)_localizedHours
{
  mapItem = [(CarPlaceCardCardViewController *)self mapItem];
  _hasBusinessHours = [mapItem _hasBusinessHours];

  if (_hasBusinessHours)
  {
    localizedHoursBuilder = [(CarPlaceCardCardViewController *)self localizedHoursBuilder];
    v6 = ([localizedHoursBuilder geoMapItemOpeningHourOptions] & 0x1CC);

    localizedHoursBuilder2 = [(CarPlaceCardCardViewController *)self localizedHoursBuilder];
    geoMapItemOpeningHourOptions = [localizedHoursBuilder2 geoMapItemOpeningHourOptions];

    if (v6)
    {
      v9 = [NSAttributedString alloc];
      localizedHoursBuilder3 = [(CarPlaceCardCardViewController *)self localizedHoursBuilder];
      localizedOperatingHours = [localizedHoursBuilder3 localizedOperatingHours];
      v16[0] = NSFontAttributeName;
      v12 = [UIFont _mapsCar_fontForTextStyle:UIFontTextStyleCaption2 weight:UIFontWeightRegular];
      v17[0] = v12;
      v16[1] = NSForegroundColorAttributeName;
      if ((geoMapItemOpeningHourOptions & 0x40) != 0)
      {
        +[UIColor systemOrangeColor];
      }

      else
      {
        +[UIColor systemRedColor];
      }
      v13 = ;
      v17[1] = v13;
      v14 = [NSDictionary dictionaryWithObjects:v17 forKeys:v16 count:2];
      v6 = [v9 initWithString:localizedOperatingHours attributes:v14];
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)_sharingETAString
{
  dataSource = [(CarPlaceCardCardViewController *)self dataSource];
  automaticSharingContacts = [dataSource automaticSharingContacts];

  if ([automaticSharingContacts count])
  {
    if ([automaticSharingContacts count] == 1)
    {
      firstObject = [automaticSharingContacts firstObject];
      contact = [firstObject contact];
      givenName = [contact givenName];

      v7 = +[NSBundle mainBundle];
      v8 = [v7 localizedStringForKey:@"CarPlay_PlaceCard_SharingAutomatically_OneContact" value:@"localized string not found" table:0];
      v9 = [NSString stringWithFormat:v8, givenName];
    }

    else
    {
      firstObject = +[NSBundle mainBundle];
      givenName = [firstObject localizedStringForKey:@"CarPlay_PlaceCard_SharingAutomatically" value:@"localized string not found" table:0];
      v9 = +[NSString localizedStringWithFormat:](NSString, "localizedStringWithFormat:", givenName, [automaticSharingContacts count]);
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)_subtitleString
{
  mapItem = [(CarPlaceCardCardViewController *)self mapItem];
  _hasChargerNumberString = [mapItem _hasChargerNumberString];

  if (_hasChargerNumberString)
  {
    v5 = [NSAttributedString alloc];
    mapItem2 = [(CarPlaceCardCardViewController *)self mapItem];
    _chargerNumberString = [mapItem2 _chargerNumberString];
    _attributesForPlainSubtitleString = [(CarPlaceCardCardViewController *)self _attributesForPlainSubtitleString];
    v9 = [v5 initWithString:_chargerNumberString attributes:_attributesForPlainSubtitleString];
  }

  else
  {
    _localizedHours = [(CarPlaceCardCardViewController *)self _localizedHours];
    if (_localizedHours)
    {
      mapItem2 = _localizedHours;
      v9 = mapItem2;
    }

    else
    {
      mapItem3 = [(CarPlaceCardCardViewController *)self mapItem];
      _firstLocalizedCategoryName = [mapItem3 _firstLocalizedCategoryName];
      v13 = [_firstLocalizedCategoryName length];

      if (v13)
      {
        v14 = [NSAttributedString alloc];
        mapItem4 = [(CarPlaceCardCardViewController *)self mapItem];
        _firstLocalizedCategoryName2 = [mapItem4 _firstLocalizedCategoryName];
        _attributesForPlainSubtitleString2 = [(CarPlaceCardCardViewController *)self _attributesForPlainSubtitleString];
        v9 = [v14 initWithString:_firstLocalizedCategoryName2 attributes:_attributesForPlainSubtitleString2];

        mapItem2 = 0;
      }

      else
      {
        mapItem2 = 0;
        v9 = 0;
      }
    }
  }

  return v9;
}

- (id)_attributesForPlainSubtitleString
{
  v6[0] = NSFontAttributeName;
  v2 = [UIFont _mapsCar_fontForTextStyle:UIFontTextStyleCaption2 weight:UIFontWeightRegular];
  v7[0] = v2;
  v6[1] = NSForegroundColorAttributeName;
  v3 = +[UIColor labelColor];
  v7[1] = v3;
  v4 = [NSDictionary dictionaryWithObjects:v7 forKeys:v6 count:2];

  return v4;
}

- (id)_visibleButtons
{
  if ([(CarPlaceCardCardViewController *)self isViewLoaded])
  {
    v3 = +[NSMutableArray array];
    evChargingMoreButton = self->_evChargingMoreButton;
    if (evChargingMoreButton && ([(CarCardRoundedButton *)evChargingMoreButton isHidden]& 1) == 0)
    {
      [v3 addObject:self->_evChargingMoreButton];
    }

    if (([(CarMoreButton *)self->_moreButton isHidden]& 1) == 0)
    {
      [v3 addObject:self->_moreButton];
    }

    if ([(CarPlaceCardCardViewController *)self _isGoButtonFocusable])
    {
      [v3 addObject:self->_goButton];
    }

    v5 = [v3 copy];
  }

  else
  {
    v5 = &__NSArray0__struct;
  }

  return v5;
}

- (void)_updateOpeningHours
{
  mapItem = [(CarPlaceCardCardViewController *)self mapItem];
  _businessHours = [mapItem _businessHours];
  v5 = [_businessHours objectAtIndex:0];
  v6 = +[NSDate date];
  mapItem2 = [(CarPlaceCardCardViewController *)self mapItem];
  timeZone = [mapItem2 timeZone];
  v9 = [GEOMapItemOpenState _geoMapItemOpeningHoursOptionsForBusinessHours:v5 compareDate:v6 timeZone:timeZone];

  localizedHoursBuilder = [(CarPlaceCardCardViewController *)self localizedHoursBuilder];
  [localizedHoursBuilder setGeoMapItemOpeningHourOptions:v9];

  _subtitleString = [(CarPlaceCardCardViewController *)self _subtitleString];
  [(CarAutohidingLabel *)self->_subtitleLabel setAttributedText:_subtitleString];

  v12 = sub_100006E1C();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    attributedText = [(CarAutohidingLabel *)self->_subtitleLabel attributedText];
    string = [attributedText string];
    v15 = 138412290;
    v16 = string;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "CarPlaceCard: updating opening hours to: %@", &v15, 0xCu);
  }
}

- (void)_scheduleOpeningHoursUpdate
{
  if (!self->_openingHoursUpdateTimer)
  {
    v3 = [NSTimer scheduledTimerWithTimeInterval:self target:"_updateOpeningHours" selector:0 userInfo:1 repeats:900.0];
    openingHoursUpdateTimer = self->_openingHoursUpdateTimer;
    self->_openingHoursUpdateTimer = v3;
  }
}

- (void)_updateETA
{
  dataSource = [(CarPlaceCardCardViewController *)self dataSource];
  etaForCurrentRoute = [dataSource etaForCurrentRoute];
  latestETA = self->_latestETA;
  self->_latestETA = etaForCurrentRoute;

  v6 = sub_100006E1C();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    remainingMinutes = [(GuidanceETA *)self->_latestETA remainingMinutes];
    v8 = 134217984;
    v9 = remainingMinutes;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "CarPlaceCard: eta update timer fired. new ETA remainingMinutes: %lu", &v8, 0xCu);
  }

  [(CarPlaceCardCardViewController *)self _updateETARelatedContents];
  if (!self->_latestETA)
  {
    [(CarPlaceCardCardViewController *)self _cancelScheduleETAUpdate];
  }
}

- (void)_scheduleETAUpdate
{
  v3 = sub_100006E1C();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "CarPlaceCard: scheduling ETA update timer", v6, 2u);
  }

  if (!self->_etaUpdateTimer)
  {
    v4 = [NSTimer scheduledTimerWithTimeInterval:self target:"_updateETA" selector:0 userInfo:1 repeats:15.0];
    etaUpdateTimer = self->_etaUpdateTimer;
    self->_etaUpdateTimer = v4;
  }
}

- (void)_cancelScheduleETAUpdate
{
  v3 = sub_100006E1C();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "CarPlaceCard: canceling ETA update timer", v6, 2u);
  }

  etaUpdateTimer = self->_etaUpdateTimer;
  if (etaUpdateTimer)
  {
    [(NSTimer *)etaUpdateTimer invalidate];
    v5 = self->_etaUpdateTimer;
    self->_etaUpdateTimer = 0;
  }
}

- (BOOL)_canSafelyRequestFocusUpdate
{
  if (![(CarPlaceCardCardViewController *)self isViewLoaded])
  {
    return 0;
  }

  if (![(CarPlaceCardCardViewController *)self hasCardFinishedTransitioning])
  {
    return 0;
  }

  view = [(CarPlaceCardCardViewController *)self view];
  window = [view window];
  rootViewController = [window rootViewController];

  if (!rootViewController)
  {
    return 0;
  }

  view2 = [(CarPlaceCardCardViewController *)self view];
  superview = [view2 superview];
  if (superview)
  {
    traitCollection = [(CarPlaceCardCardViewController *)self traitCollection];
  }

  else
  {
    v11 = +[UIScreen _carScreen];
    traitCollection = [v11 traitCollection];
  }

  v9 = ([traitCollection interactionModel] & 0xA) != 0;
  return v9;
}

- (BOOL)_isGoButtonFocusable
{
  if (![(CarPlaceCardCardViewController *)self isViewLoaded]|| [(CarLoadingButton *)self->_goButton isLoading]|| ([(CarLoadingButton *)self->_goButton isHidden]& 1) != 0)
  {
    return 0;
  }

  goButton = self->_goButton;

  return [(CarLoadingButton *)goButton isEnabled];
}

- (int64_t)titleNumberOfLines
{
  if ([(CarAdvisoriesView *)self->_routeAdvisoriesView count]> 1)
  {
    return 1;
  }

  else
  {
    return 3;
  }
}

- (void)setHandoffEnabled:(BOOL)enabled
{
  if (self->_handoffEnabled != enabled)
  {
    self->_handoffEnabled = enabled;
    v4 = sub_100006E1C();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      if (self->_handoffEnabled)
      {
        v5 = @"YES";
      }

      else
      {
        v5 = @"NO";
      }

      v6 = v5;
      v7 = 138412290;
      v8 = v6;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "CarPlaceCard: setHandoffEnabled: %@", &v7, 0xCu);
    }

    [(CarPlaceCardCardViewController *)self _updateContents];
  }
}

- (void)setNavigationAidedDrivingEnabled:(BOOL)enabled
{
  if (self->_navigationAidedDrivingEnabled != enabled)
  {
    self->_navigationAidedDrivingEnabled = enabled;
    v4 = sub_100006E1C();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      if (self->_navigationAidedDrivingEnabled)
      {
        v5 = @"YES";
      }

      else
      {
        v5 = @"NO";
      }

      v6 = v5;
      v7 = 138412290;
      v8 = v6;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "CarPlaceCard: setNavigationAidedDrivingEnabled %@", &v7, 0xCu);
    }

    if (self->_navigationAidedDrivingEnabled)
    {
      [(CarPlaceCardCardViewController *)self setGoButtonHidden:0];
    }

    [(CarPlaceCardCardViewController *)self _updateContents];
  }
}

- (void)setGoButtonEnabled:(BOOL)enabled
{
  if (self->_goButtonEnabled != enabled)
  {
    self->_goButtonEnabled = enabled;
    v4 = +[CarDisplayController sharedInstance];
    chromeViewController = [v4 chromeViewController];
    [chromeViewController setNeedsFocusUpdate];

    v6 = sub_100006E1C();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      if (self->_goButtonEnabled)
      {
        v7 = @"YES";
      }

      else
      {
        v7 = @"NO";
      }

      v8 = v7;
      v9 = 138412290;
      v10 = v8;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "CarPlaceCard: setGoButtonEnabled: %@", &v9, 0xCu);
    }

    [PPTNotificationCenter postNotificationIfNeededWithName:@"CarPlaceCardCardViewControllerDidLoadRouteNotification" object:self userInfo:0];
    [(CarPlaceCardCardViewController *)self _updateContents];
  }
}

- (void)setGoButtonHidden:(BOOL)hidden
{
  if (self->_goButtonHidden != hidden)
  {
    self->_goButtonHidden = hidden;
    v4 = sub_100006E1C();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      if (self->_goButtonHidden)
      {
        v5 = @"YES";
      }

      else
      {
        v5 = @"NO";
      }

      v6 = v5;
      v7 = 138412290;
      v8 = v6;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "CarPlaceCard: setGoButtonHidden: %@", &v7, 0xCu);
    }

    [(CarPlaceCardCardViewController *)self _updateContents];
  }
}

- (void)setLoading:(BOOL)loading
{
  if (self->_loading != loading)
  {
    self->_loading = loading;
    v4 = sub_100006E1C();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      if (self->_loading)
      {
        v5 = @"YES";
      }

      else
      {
        v5 = @"NO";
      }

      v6 = v5;
      v7 = 138412290;
      v8 = v6;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "CarPlaceCard: setLoading: %@", &v7, 0xCu);
    }

    [(CarPlaceCardCardViewController *)self _updateContents];
  }
}

- (void)setHasCardFinishedTransitioning:(BOOL)transitioning
{
  if (self->_hasCardFinishedTransitioning != transitioning)
  {
    self->_hasCardFinishedTransitioning = transitioning;
    if (transitioning)
    {
      [(CarPlaceCardCardViewController *)self _updateContents];
    }
  }
}

- (void)setShouldDisplayMoreButton:(BOOL)button
{
  if (self->_shouldDisplayMoreButton != button)
  {
    self->_shouldDisplayMoreButton = button;
    [(CarPlaceCardCardViewController *)self _updateConstraints];
  }
}

- (_MKLocalizedHoursBuilder)localizedHoursBuilder
{
  localizedHoursBuilder = self->_localizedHoursBuilder;
  if (!localizedHoursBuilder)
  {
    v4 = [_MKLocalizedHoursBuilder alloc];
    mapItem = [(CarPlaceCardCardViewController *)self mapItem];
    v6 = [v4 initWithMapItem:mapItem localizedHoursStringOptions:41];
    v7 = self->_localizedHoursBuilder;
    self->_localizedHoursBuilder = v6;

    localizedHoursBuilder = self->_localizedHoursBuilder;
  }

  return localizedHoursBuilder;
}

- (MKMapItem)mapItem
{
  searchResult = [(CarPlaceCardCardViewController *)self searchResult];
  mapItem = [searchResult mapItem];

  return mapItem;
}

- (void)setSearchResult:(id)result
{
  resultCopy = result;
  if (self->_searchResult != resultCopy)
  {
    objc_storeStrong(&self->_searchResult, result);
    v6 = sub_100006E1C();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      mapItem = [(CarPlaceCardCardViewController *)self mapItem];
      name = [mapItem name];
      mapItem2 = [(CarPlaceCardCardViewController *)self mapItem];
      v10 = 138478083;
      v11 = name;
      v12 = 2049;
      _muid = [mapItem2 _muid];
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "CarPlaceCard: placecard changed searchResult with mapItem: (name: %{private}@, muid: %{private}llu)", &v10, 0x16u);
    }

    [(CarPlaceCardCardViewController *)self _initializeGoButtonState];
    [(CarPlaceCardCardViewController *)self _updateContents];
  }
}

- (void)_captureAnalytics
{
  v3 = sub_100006E1C();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    mapItem = [(CarPlaceCardCardViewController *)self mapItem];
    name = [mapItem name];
    mapItem2 = [(CarPlaceCardCardViewController *)self mapItem];
    v9 = 138478083;
    v10 = name;
    v11 = 2049;
    _muid = [mapItem2 _muid];
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "CarPlaceCard: placecard loaded and displayed with mapItem: (name: %{private}@, muid: %{private}llu)", &v9, 0x16u);
  }

  v7 = +[CarDisplayController sharedInstance];
  chromeViewController = [v7 chromeViewController];
  [chromeViewController captureUserAction:21];
}

- (void)_updateETARelatedContents
{
  style = [(CarPlaceCardCardViewController *)self style];
  if (style == 1)
  {
    mapItem = [(CarPlaceCardCardViewController *)self mapItem];
    v9 = [mapItem _maps_detourTextForIdiom:3];
    [(UILabel *)self->_etaLabel setText:v9];

    latestETA = self->_latestETA;
    if (latestETA)
    {
      [(GuidanceETA *)latestETA remainingDistance];
      dataSource2 = [NSString _navigation_localizedStringForDistance:0 detail:1 unitFormat:0 locale:0 useMetric:0 useYards:?];
      v11 = +[NSBundle mainBundle];
      v12 = [v11 localizedStringForKey:@"%@ miles away" value:@"localized string not found" table:0];
      v13 = [NSString localizedStringWithFormat:v12, dataSource2];
      [(UILabel *)self->_mainDescriptionLabel setText:v13];

      goto LABEL_7;
    }
  }

  else
  {
    if (style)
    {
      return;
    }

    etaDateString = [(GuidanceETA *)self->_latestETA etaDateString];
    [(UILabel *)self->_etaLabel setText:etaDateString];

    dataSource = [(CarPlaceCardCardViewController *)self dataSource];
    v6 = objc_opt_respondsToSelector();

    if (v6)
    {
      dataSource2 = [(CarPlaceCardCardViewController *)self dataSource];
      routeMainDescriptionText = [dataSource2 routeMainDescriptionText];
      [(UILabel *)self->_mainDescriptionLabel setAttributedText:routeMainDescriptionText];

LABEL_7:

      return;
    }
  }

  mainDescriptionLabel = self->_mainDescriptionLabel;

  [(UILabel *)mainDescriptionLabel setText:0];
}

- (void)_updateRouteAdvisoriesStack
{
  dataSource = [(CarPlaceCardCardViewController *)self dataSource];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    routeAdvisoriesView = self->_routeAdvisoriesView;
    dataSource2 = [(CarPlaceCardCardViewController *)self dataSource];
    currentRoute = [dataSource2 currentRoute];
    [(CarAdvisoriesView *)routeAdvisoriesView setRoute:currentRoute];

    if ([(CarAdvisoriesView *)self->_routeAdvisoriesView count])
    {
      _shouldHideNavigationRelatedInfo = [(CarPlaceCardCardViewController *)self _shouldHideNavigationRelatedInfo];
    }

    else
    {
      _shouldHideNavigationRelatedInfo = 1;
    }

    [(NSLayoutConstraint *)self->_routeAdvisoriesHeightConstraint setActive:_shouldHideNavigationRelatedInfo];
    v9 = self->_routeAdvisoriesView;

    [(CarAdvisoriesView *)v9 setHidden:_shouldHideNavigationRelatedInfo];
  }
}

- (void)_updateContents
{
  _shouldHideNavigationRelatedInfo = [(CarPlaceCardCardViewController *)self _shouldHideNavigationRelatedInfo];
  _subtitleString = [(CarPlaceCardCardViewController *)self _subtitleString];
  [(CarAutohidingLabel *)self->_subtitleLabel setAttributedText:_subtitleString];

  attributedText = [(CarAutohidingLabel *)self->_subtitleLabel attributedText];
  -[CarAutohidingLabel setHidden:](self->_subtitleLabel, "setHidden:", [attributedText length] == 0);

  if (!self->_openingHoursUpdateTimer)
  {
    mapItem = [(CarPlaceCardCardViewController *)self mapItem];
    _hasBusinessHours = [mapItem _hasBusinessHours];

    if (_hasBusinessHours)
    {
      [(CarPlaceCardCardViewController *)self _scheduleOpeningHoursUpdate];
    }
  }

  ratingView = self->_ratingView;
  mapItem2 = [(CarPlaceCardCardViewController *)self mapItem];
  [(CarStarRatingView *)ratingView setupWithMapItem:mapItem2];

  mapItem3 = [(CarPlaceCardCardViewController *)self mapItem];
  -[CarStarRatingView setHidden:](self->_ratingView, "setHidden:", [mapItem3 _hasUserRatingScore] ^ 1);

  mapItem4 = [(CarPlaceCardCardViewController *)self mapItem];
  _addressFormattedAsShortenedAddress = [mapItem4 _addressFormattedAsShortenedAddress];
  [(CarAutohidingLabel *)self->_addressLabel setText:_addressFormattedAsShortenedAddress];

  if (![(CarPlaceCardCardViewController *)self _shouldShowEVViewsInline])
  {
    evChargingViewModel = [(CarPlaceCardCardViewController *)self evChargingViewModel];
    hasSummaryInfo = [evChargingViewModel hasSummaryInfo];

    if (hasSummaryInfo)
    {
      evChargingViewModel2 = [(CarPlaceCardCardViewController *)self evChargingViewModel];
      summaryTitle = [evChargingViewModel2 summaryTitle];
      [(UILabel *)self->_evChargingTitleLabel setText:summaryTitle];

      evChargingViewModel3 = [(CarPlaceCardCardViewController *)self evChargingViewModel];
      summaryDescription = [evChargingViewModel3 summaryDescription];
      [(UILabel *)self->_evChargingAvailabilityLabel setAttributedText:summaryDescription];

      v19 = [UIImageSymbolConfiguration configurationWithTextStyle:UIFontTextStyleFootnote];
      v20 = [MUEVChargingHelper evPlugIconWithConfiguration:v19];

      [(CarCardRoundedButton *)self->_evChargingMoreButton setImage:v20 forState:0];
    }

    [(UILabel *)self->_evChargingTitleLabel setHidden:hasSummaryInfo ^ 1];
    [(UILabel *)self->_evChargingAvailabilityLabel setHidden:hasSummaryInfo ^ 1];
    [(CarCardRoundedButton *)self->_evChargingMoreButton setHidden:hasSummaryInfo ^ 1];
    if ([(NSArray *)self->_evChargingSummaryViewConstraints count])
    {
      evChargingSummaryViewConstraints = self->_evChargingSummaryViewConstraints;
      if (hasSummaryInfo)
      {
        [NSLayoutConstraint activateConstraints:evChargingSummaryViewConstraints];
      }

      else
      {
        [NSLayoutConstraint deactivateConstraints:evChargingSummaryViewConstraints];
      }
    }
  }

  _sharingETAString = [(CarPlaceCardCardViewController *)self _sharingETAString];
  [(CarAutohidingLabel *)self->_sharingETALabel setText:_sharingETAString];

  attributedText2 = [(CarAutohidingLabel *)self->_sharingETALabel attributedText];
  -[CarAutohidingLabel setHidden:](self->_sharingETALabel, "setHidden:", [attributedText2 length] == 0);

  [(CarPlaceCardCardViewController *)self _updateETA];
  if (!self->_etaUpdateTimer && ![(CarPlaceCardCardViewController *)self style])
  {
    [(CarPlaceCardCardViewController *)self _scheduleETAUpdate];
  }

  [(CarPlaceCardCardViewController *)self _updateETARelatedContents];
  [(UILabel *)self->_etaLabel setHidden:_shouldHideNavigationRelatedInfo];
  [(UILabel *)self->_mainDescriptionLabel setHidden:_shouldHideNavigationRelatedInfo];
  [(CarPlaceCardCardViewController *)self _updateMoreButton];
  [(CarMoreButton *)self->_moreButton setHidden:[(CarPlaceCardCardViewController *)self shouldDisplayMoreButton]^ 1];
  if ([(CarPlaceCardCardViewController *)self isLoading])
  {
    [(CarLoadingButton *)self->_goButton setTitle:0 forState:0];
    [(CarLoadingButton *)self->_goButton setImage:0 forState:0];
  }

  else
  {
    if ([(CarPlaceCardCardViewController *)self isNavigationAidedDrivingEnabled])
    {
      v24 = +[MapsExternalDevice sharedInstance];
      mapsDisplayName = [v24 mapsDisplayName];
      v26 = mapsDisplayName;
      if (mapsDisplayName)
      {
        v27 = mapsDisplayName;
      }

      else
      {
        v27 = sub_100ADA744();
      }

      v32 = v27;

      [(CarLoadingButton *)self->_goButton setTitle:v32 forState:0];
      v33 = [UIImage _mapsCar_systemImageNamed:@"square.and.arrow.up"];
    }

    else
    {
      style = [(CarPlaceCardCardViewController *)self style];
      v29 = +[NSBundle mainBundle];
      v30 = v29;
      if (style == 1)
      {
        v31 = @"Car_ADD_STOP_BUTTON";
      }

      else
      {
        v31 = @"Car_START_BUTTON";
      }

      v32 = [v29 localizedStringForKey:v31 value:@"localized string not found" table:0];

      v33 = 0;
      if ([(CarPlaceCardCardViewController *)self style]== 1)
      {
        v33 = [UIImage systemImageNamed:@"plus.circle.fill"];
      }

      [(CarLoadingButton *)self->_goButton setTitle:v32 forState:0];
    }

    [(CarLoadingButton *)self->_goButton setImage:v33 forState:0];
  }

  goButtonIsFocusable = self->_goButtonIsFocusable;
  [(CarLoadingButton *)self->_goButton setLoading:[(CarPlaceCardCardViewController *)self isLoading]];
  [(CarLoadingButton *)self->_goButton setHidden:[(CarPlaceCardCardViewController *)self isGoButtonHidden]];
  [(CarFocusableButton *)self->_goButton setEnabled:[(CarPlaceCardCardViewController *)self isGoButtonEnabled]];
  v35 = sub_100FF05BC([(CarLoadingButton *)self->_goButton isEnabled]);
  [(CarFocusableButton *)self->_goButton setNonFocusedBackgroundColor:v35];

  if ([(CarPlaceCardCardViewController *)self _isGoButtonFocusable]&& [(CarPlaceCardCardViewController *)self _canSafelyRequestFocusUpdate]&& !goButtonIsFocusable)
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10096DFE4;
    block[3] = &unk_101661B18;
    block[4] = self;
    dispatch_async(&_dispatch_main_q, block);
  }

  _isGoButtonFocusable = [(CarPlaceCardCardViewController *)self _isGoButtonFocusable];
  if (_isGoButtonFocusable)
  {
    LOBYTE(_isGoButtonFocusable) = [(CarPlaceCardCardViewController *)self _canSafelyRequestFocusUpdate];
  }

  self->_goButtonIsFocusable = _isGoButtonFocusable;
  [(CarPlaceCardCardViewController *)self _updateRouteAdvisoriesStack];
}

- (void)_updateConstraints
{
  if ([(CarPlaceCardCardViewController *)self isViewLoaded])
  {
    if (self->_etaLabelTrailingConstraint)
    {
      etaLabelTrailingConstraint = self->_etaLabelTrailingConstraint;
      v3 = [NSArray arrayWithObjects:&etaLabelTrailingConstraint count:1];
      [NSLayoutConstraint deactivateConstraints:v3];
    }

    _createEtaLabelTrailingConstraint = [(CarPlaceCardCardViewController *)self _createEtaLabelTrailingConstraint];
    v5 = self->_etaLabelTrailingConstraint;
    self->_etaLabelTrailingConstraint = _createEtaLabelTrailingConstraint;

    v7 = self->_etaLabelTrailingConstraint;
    v6 = [NSArray arrayWithObjects:&v7 count:1];
    [NSLayoutConstraint activateConstraints:v6];
  }
}

- (void)_updateMoreButton
{
  v3 = +[UIApplication sharedApplication];
  v4 = [NSURL URLWithString:@"tel:"];
  v5 = [v3 canOpenURL:v4];

  mapItem = [(SearchResult *)self->_searchResult mapItem];
  phoneNumber = [mapItem phoneNumber];

  if ((v5 & (phoneNumber != 0)) != 0)
  {
    v8 = 3;
  }

  else
  {
    v8 = 1;
  }

  if ([(CarPlaceCardCardViewController *)self isHandoffEnabled]&& ![(CarPlaceCardCardViewController *)self _shouldHideNavigationRelatedInfo])
  {
    v8 |= 4uLL;
  }

  [(CarMoreButton *)self->_moreButton setOptions:v8];

  [(CarPlaceCardCardViewController *)self setShouldDisplayMoreButton:v8 != 1];
}

- (void)_setupStyling
{
  v51 = [UIFont _mapsCar_fontForTextStyle:UIFontTextStyleCaption2 weight:UIFontWeightRegular];
  [(CarAutohidingLabel *)self->_subtitleLabel setFont:?];
  v3 = +[UIColor _carSystemPrimaryColor];
  [(CarAutohidingLabel *)self->_subtitleLabel setTextColor:v3];

  [(CarAutohidingLabel *)self->_subtitleLabel setLineBreakMode:4];
  [(CarAutohidingLabel *)self->_subtitleLabel setNumberOfLines:1];
  font4 = UIFontTextStyleCaption1;
  v5 = [UIFont _mapsCar_fontForTextStyle:UIFontTextStyleCaption1 traits:0x8000];
  [(CarAutohidingLabel *)self->_addressLabel setFont:v5];
  v6 = +[UIColor _carSystemPrimaryColor];
  [(CarAutohidingLabel *)self->_addressLabel setTextColor:v6];

  [(CarAutohidingLabel *)self->_addressLabel setLineBreakMode:4];
  [(CarAutohidingLabel *)self->_addressLabel setNumberOfLines:3];
  titleLabel4 = [UIFont _mapsCar_fontForTextStyle:UIFontTextStyleFootnote weight:UIFontWeightMedium];
  [(UILabel *)self->_evChargingTitleLabel setFont:titleLabel4];
  v8 = +[UIColor labelColor];
  [(UILabel *)self->_evChargingTitleLabel setTextColor:v8];

  [(UILabel *)self->_evChargingTitleLabel setLineBreakMode:4];
  [(UILabel *)self->_evChargingTitleLabel setNumberOfLines:1];
  v50 = [UIFont _mapsCar_fontForTextStyle:UIFontTextStyleCaption1 weight:UIFontWeightRegular];
  [(UILabel *)self->_evChargingAvailabilityLabel setFont:?];
  v9 = +[UIColor labelColor];
  [(UILabel *)self->_evChargingAvailabilityLabel setTextColor:v9];

  [(UILabel *)self->_evChargingAvailabilityLabel setLineBreakMode:4];
  [(UILabel *)self->_evChargingAvailabilityLabel setNumberOfLines:1];
  v49 = [UIFont _mapsCar_fontForTextStyle:UIFontTextStyleCaption2 weight:UIFontWeightRegular];
  [(CarAutohidingLabel *)self->_sharingETALabel setFont:?];
  v10 = +[UIColor _carSystemSecondaryColor];
  [(CarAutohidingLabel *)self->_sharingETALabel setTextColor:v10];

  [(CarAutohidingLabel *)self->_sharingETALabel setLineBreakMode:4];
  [(CarAutohidingLabel *)self->_sharingETALabel setNumberOfLines:1];
  v48 = [UIFont _mapsCar_fontForTextStyle:UIFontTextStyleFootnote weight:UIFontWeightMedium];
  [(UILabel *)self->_etaLabel setFont:?];
  v11 = +[UIColor labelColor];
  [(UILabel *)self->_etaLabel setTextColor:v11];

  [(UILabel *)self->_etaLabel setLineBreakMode:4];
  [(UILabel *)self->_etaLabel setNumberOfLines:1];
  v47 = [UIFont _mapsCar_fontForTextStyle:UIFontTextStyleCaption1 weight:UIFontWeightRegular];
  [(UILabel *)self->_mainDescriptionLabel setFont:?];
  v12 = +[UIColor _carSystemPrimaryColor];
  [(UILabel *)self->_mainDescriptionLabel setTextColor:v12];

  font = [(UILabel *)self->_mainDescriptionLabel font];
  [font pointSize];
  mainDescriptionLabel = self->_mainDescriptionLabel;
  v46 = v5;
  v52 = titleLabel4;
  if (10.0 / v14 > 1.0)
  {
    [(UILabel *)mainDescriptionLabel setMinimumScaleFactor:1.0];
  }

  else
  {
    font2 = [(UILabel *)mainDescriptionLabel font];
    [font2 pointSize];
    [(UILabel *)self->_mainDescriptionLabel setMinimumScaleFactor:10.0 / v17];
  }

  [(UILabel *)self->_mainDescriptionLabel setAdjustsFontSizeToFitWidth:1];
  [(UILabel *)self->_mainDescriptionLabel setLineBreakMode:4];
  [(UILabel *)self->_mainDescriptionLabel setNumberOfLines:1];
  v18 = +[UIColor systemWhiteColor];
  [(CarFocusableButton *)self->_goButton setNonFocusedTintColor:v18];

  v19 = sub_100FF05BC([(CarPlaceCardCardViewController *)self isGoButtonEnabled]);
  [(CarFocusableButton *)self->_goButton setNonFocusedBackgroundColor:v19];

  v20 = [UIFont _mapsCar_fontForTextStyle:UIFontTextStyleCallout weight:UIFontWeightBold];
  titleLabel = [(CarLoadingButton *)self->_goButton titleLabel];
  [titleLabel setFont:v20];

  titleLabel2 = [(CarLoadingButton *)self->_goButton titleLabel];
  [titleLabel2 setAdjustsFontSizeToFitWidth:1];

  titleLabel3 = [(CarLoadingButton *)self->_goButton titleLabel];
  font3 = [titleLabel3 font];
  [font3 pointSize];
  v26 = 10.0 / v25;
  v27 = 1.0;
  if (10.0 / v25 <= 1.0)
  {
    titleLabel4 = [(CarLoadingButton *)self->_goButton titleLabel];
    font4 = [titleLabel4 font];
    [font4 pointSize];
    v27 = 10.0 / v28;
  }

  titleLabel5 = [(CarLoadingButton *)self->_goButton titleLabel];
  [titleLabel5 setMinimumScaleFactor:v27];

  if (v26 <= 1.0)
  {
  }

  v30 = v52;
  if (_os_feature_enabled_impl())
  {
    [(CarAutohidingLabel *)self->_subtitleLabel setAdjustsFontForContentSizeCategory:1];
    v31 = [[UIFontMetrics alloc] initForTextStyle:UIFontTextStyleCaption2];
    v32 = [v31 scaledFontForFont:v51 maximumPointSize:13.0];
    [(CarAutohidingLabel *)self->_subtitleLabel setFont:v32];

    [(CarAutohidingLabel *)self->_addressLabel setAdjustsFontForContentSizeCategory:1];
    v33 = [[UIFontMetrics alloc] initForTextStyle:UIFontTextStyleCaption1];
    v34 = [v33 scaledFontForFont:v46 maximumPointSize:14.0];
    [(CarAutohidingLabel *)self->_addressLabel setFont:v34];

    [(UILabel *)self->_evChargingTitleLabel setAdjustsFontForContentSizeCategory:1];
    v35 = [[UIFontMetrics alloc] initForTextStyle:UIFontTextStyleFootnote];
    v36 = [v35 scaledFontForFont:v52 maximumPointSize:15.0];
    [(UILabel *)self->_evChargingTitleLabel setFont:v36];

    [(UILabel *)self->_evChargingAvailabilityLabel setAdjustsFontForContentSizeCategory:1];
    v37 = [[UIFontMetrics alloc] initForTextStyle:UIFontTextStyleCaption1];
    v38 = [v37 scaledFontForFont:v50 maximumPointSize:14.0];
    [(UILabel *)self->_evChargingAvailabilityLabel setFont:v38];

    [(CarAutohidingLabel *)self->_sharingETALabel setAdjustsFontForContentSizeCategory:1];
    v39 = [[UIFontMetrics alloc] initForTextStyle:UIFontTextStyleCaption2];
    v40 = [v39 scaledFontForFont:v49 maximumPointSize:13.0];
    [(CarAutohidingLabel *)self->_sharingETALabel setFont:v40];

    [(UILabel *)self->_etaLabel setAdjustsFontForContentSizeCategory:1];
    v41 = [[UIFontMetrics alloc] initForTextStyle:UIFontTextStyleFootnote];
    v42 = [v41 scaledFontForFont:v48 maximumPointSize:15.0];
    [(UILabel *)self->_etaLabel setFont:v42];

    [(UILabel *)self->_mainDescriptionLabel setAdjustsFontForContentSizeCategory:1];
    v43 = [[UIFontMetrics alloc] initForTextStyle:UIFontTextStyleCaption1];
    v44 = [v43 scaledFontForFont:v47 maximumPointSize:14.0];
    [(UILabel *)self->_mainDescriptionLabel setFont:v44];

    v30 = v52;
    titleLabel6 = [(CarLoadingButton *)self->_goButton titleLabel];
    [titleLabel6 setAdjustsFontForContentSizeCategory:1];
  }
}

- (void)_setupConstraints
{
  v164 = +[NSMutableArray array];
  firstBaselineAnchor = [(UIStackView *)self->_textStackView firstBaselineAnchor];
  view = [(CarPlaceCardCardViewController *)self view];
  topAnchor = [view topAnchor];
  v144 = [firstBaselineAnchor constraintEqualToAnchor:topAnchor constant:-1.0];
  v171[0] = v144;
  leadingAnchor = [(UIStackView *)self->_textStackView leadingAnchor];
  view2 = [(CarPlaceCardCardViewController *)self view];
  leadingAnchor2 = [view2 leadingAnchor];
  v124 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:10.0];
  v171[1] = v124;
  trailingAnchor = [(UIStackView *)self->_textStackView trailingAnchor];
  view3 = [(CarPlaceCardCardViewController *)self view];
  trailingAnchor2 = [view3 trailingAnchor];
  v5 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:-10.0];
  v171[2] = v5;
  bottomAnchor = [(UIStackView *)self->_textStackView bottomAnchor];
  view4 = [(CarPlaceCardCardViewController *)self view];
  bottomAnchor2 = [view4 bottomAnchor];
  v9 = [bottomAnchor constraintLessThanOrEqualToAnchor:bottomAnchor2];
  v171[3] = v9;
  v10 = [NSArray arrayWithObjects:v171 count:4];
  [v164 addObjectsFromArray:v10];

  addressLabel = self->_addressLabel;
  v12 = self->_textStackView;
  [(CarAutohidingLabel *)addressLabel firstBaselineAnchor];
  v161 = v157 = v12;
  lastBaselineAnchor = [(UIStackView *)v12 lastBaselineAnchor];
  LODWORD(v13) = 1144602624;
  v145 = [v161 constraintEqualToAnchor:lastBaselineAnchor constant:20.0 priority:v13];
  v170[0] = v145;
  firstBaselineAnchor2 = [(CarAutohidingLabel *)self->_addressLabel firstBaselineAnchor];
  lastBaselineAnchor2 = [(UIStackView *)v12 lastBaselineAnchor];
  v129 = [firstBaselineAnchor2 constraintGreaterThanOrEqualToAnchor:lastBaselineAnchor2 constant:14.0];
  v170[1] = v129;
  heightAnchor = [(CarAutohidingLabel *)self->_addressLabel heightAnchor];
  v120 = [heightAnchor constraintGreaterThanOrEqualToConstant:20.0];
  v170[2] = v120;
  leadingAnchor3 = [(CarAutohidingLabel *)self->_addressLabel leadingAnchor];
  view5 = [(CarPlaceCardCardViewController *)self view];
  leadingAnchor4 = [view5 leadingAnchor];
  v16 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4 constant:10.0];
  v170[3] = v16;
  trailingAnchor3 = [(CarAutohidingLabel *)self->_addressLabel trailingAnchor];
  view6 = [(CarPlaceCardCardViewController *)self view];
  trailingAnchor4 = [view6 trailingAnchor];
  v20 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4 constant:-10.0];
  v170[4] = v20;
  v21 = [NSArray arrayWithObjects:v170 count:5];
  [v164 addObjectsFromArray:v21];

  v22 = self->_addressLabel;
  evChargingViewModel = [(CarPlaceCardCardViewController *)self evChargingViewModel];

  if (evChargingViewModel)
  {
    v162 = v22;
    if ([(CarPlaceCardCardViewController *)self _shouldShowEVViewsInline])
    {
      evChargingAvailabilityVC = [(CarPlaceCardCardViewController *)self evChargingAvailabilityVC];
      view7 = [evChargingAvailabilityVC view];

      topAnchor2 = [(UILabel *)view7 topAnchor];
      lastBaselineAnchor3 = [(CarAutohidingLabel *)v22 lastBaselineAnchor];
      v146 = [topAnchor2 constraintEqualToAnchor:lastBaselineAnchor3 constant:12.0];
      v169[0] = v146;
      leadingAnchor5 = [(UILabel *)view7 leadingAnchor];
      view8 = [(CarPlaceCardCardViewController *)self view];
      leadingAnchor6 = [view8 leadingAnchor];
      v28 = [leadingAnchor5 constraintEqualToAnchor:leadingAnchor6 constant:10.0];
      v169[1] = v28;
      trailingAnchor5 = [(UILabel *)view7 trailingAnchor];
      view9 = [(CarPlaceCardCardViewController *)self view];
      trailingAnchor6 = [view9 trailingAnchor];
      v32 = [trailingAnchor5 constraintEqualToAnchor:trailingAnchor6 constant:-10.0];
      v169[2] = v32;
      v33 = [NSArray arrayWithObjects:v169 count:3];
      [v164 addObjectsFromArray:v33];
    }

    else
    {
      topAnchor3 = [(CarCardRoundedButton *)self->_evChargingMoreButton topAnchor];
      lastBaselineAnchor4 = [(CarAutohidingLabel *)v22 lastBaselineAnchor];
      v147 = [topAnchor3 constraintEqualToAnchor:lastBaselineAnchor4 constant:6.0];
      v168[0] = v147;
      heightAnchor2 = [(CarCardRoundedButton *)self->_evChargingMoreButton heightAnchor];
      v135 = [heightAnchor2 constraintEqualToConstant:30.0];
      v168[1] = v135;
      widthAnchor = [(CarCardRoundedButton *)self->_evChargingMoreButton widthAnchor];
      v126 = [widthAnchor constraintEqualToConstant:30.0];
      v168[2] = v126;
      trailingAnchor7 = [(CarCardRoundedButton *)self->_evChargingMoreButton trailingAnchor];
      view10 = [(CarPlaceCardCardViewController *)self view];
      trailingAnchor8 = [view10 trailingAnchor];
      v109 = [trailingAnchor7 constraintEqualToAnchor:trailingAnchor8 constant:-10.0];
      v168[3] = v109;
      bottomAnchor3 = [(UILabel *)self->_evChargingTitleLabel bottomAnchor];
      topAnchor4 = [(UILabel *)self->_evChargingAvailabilityLabel topAnchor];
      v101 = [bottomAnchor3 constraintEqualToAnchor:topAnchor4 constant:2.0];
      v168[4] = v101;
      leadingAnchor7 = [(UILabel *)self->_evChargingTitleLabel leadingAnchor];
      view11 = [(CarPlaceCardCardViewController *)self view];
      leadingAnchor8 = [view11 leadingAnchor];
      v91 = [leadingAnchor7 constraintEqualToAnchor:leadingAnchor8 constant:10.0];
      v168[5] = v91;
      trailingAnchor9 = [(UILabel *)self->_evChargingTitleLabel trailingAnchor];
      leadingAnchor9 = [(CarCardRoundedButton *)self->_evChargingMoreButton leadingAnchor];
      v85 = [trailingAnchor9 constraintLessThanOrEqualToAnchor:leadingAnchor9 constant:-10.0];
      v168[6] = v85;
      bottomAnchor4 = [(UILabel *)self->_evChargingAvailabilityLabel bottomAnchor];
      bottomAnchor5 = [(CarCardRoundedButton *)self->_evChargingMoreButton bottomAnchor];
      v34 = [bottomAnchor4 constraintEqualToAnchor:bottomAnchor5];
      v168[7] = v34;
      leadingAnchor10 = [(UILabel *)self->_evChargingAvailabilityLabel leadingAnchor];
      view12 = [(CarPlaceCardCardViewController *)self view];
      leadingAnchor11 = [view12 leadingAnchor];
      v38 = [leadingAnchor10 constraintEqualToAnchor:leadingAnchor11 constant:10.0];
      v168[8] = v38;
      trailingAnchor10 = [(UILabel *)self->_evChargingAvailabilityLabel trailingAnchor];
      leadingAnchor12 = [(CarCardRoundedButton *)self->_evChargingMoreButton leadingAnchor];
      v41 = [trailingAnchor10 constraintLessThanOrEqualToAnchor:leadingAnchor12 constant:-10.0];
      v168[9] = v41;
      v42 = [NSArray arrayWithObjects:v168 count:10];
      evChargingSummaryViewConstraints = self->_evChargingSummaryViewConstraints;
      self->_evChargingSummaryViewConstraints = v42;

      [v164 addObjectsFromArray:self->_evChargingSummaryViewConstraints];
      [(CarCardRoundedButton *)self->_evChargingMoreButton _setCornerRadius:15.0];
      view7 = self->_evChargingAvailabilityLabel;
    }

    v22 = view7;
  }

  topAnchor5 = [(CarMoreButton *)self->_moreButton topAnchor];
  v163 = v22;
  lastBaselineAnchor5 = [(CarAutohidingLabel *)v22 lastBaselineAnchor];
  v142 = [topAnchor5 constraintGreaterThanOrEqualToAnchor:lastBaselineAnchor5 constant:6.0];
  v167[0] = v142;
  bottomAnchor6 = [(UILabel *)self->_etaLabel bottomAnchor];
  topAnchor6 = [(UILabel *)self->_mainDescriptionLabel topAnchor];
  v127 = [bottomAnchor6 constraintEqualToAnchor:topAnchor6 constant:2.0];
  v167[1] = v127;
  leadingAnchor13 = [(UILabel *)self->_etaLabel leadingAnchor];
  view13 = [(CarPlaceCardCardViewController *)self view];
  leadingAnchor14 = [view13 leadingAnchor];
  v110 = [leadingAnchor13 constraintEqualToAnchor:leadingAnchor14 constant:10.0];
  v167[2] = v110;
  bottomAnchor7 = [(UILabel *)self->_mainDescriptionLabel bottomAnchor];
  bottomAnchor8 = [(CarMoreButton *)self->_moreButton bottomAnchor];
  v44 = [bottomAnchor7 constraintEqualToAnchor:bottomAnchor8];
  v167[3] = v44;
  leadingAnchor15 = [(UILabel *)self->_mainDescriptionLabel leadingAnchor];
  view14 = [(CarPlaceCardCardViewController *)self view];
  leadingAnchor16 = [view14 leadingAnchor];
  v48 = [leadingAnchor15 constraintEqualToAnchor:leadingAnchor16 constant:10.0];
  v167[4] = v48;
  trailingAnchor11 = [(UILabel *)self->_mainDescriptionLabel trailingAnchor];
  trailingAnchor12 = [(UILabel *)self->_etaLabel trailingAnchor];
  v51 = [trailingAnchor11 constraintEqualToAnchor:trailingAnchor12];
  v167[5] = v51;
  v52 = [NSArray arrayWithObjects:v167 count:6];
  [v164 addObjectsFromArray:v52];

  _createEtaLabelTrailingConstraint = [(CarPlaceCardCardViewController *)self _createEtaLabelTrailingConstraint];
  etaLabelTrailingConstraint = self->_etaLabelTrailingConstraint;
  self->_etaLabelTrailingConstraint = _createEtaLabelTrailingConstraint;

  [v164 addObject:self->_etaLabelTrailingConstraint];
  heightAnchor3 = [(CarMoreButton *)self->_moreButton heightAnchor];
  v149 = [heightAnchor3 constraintEqualToConstant:30.0];
  v166[0] = v149;
  widthAnchor2 = [(CarMoreButton *)self->_moreButton widthAnchor];
  v137 = [widthAnchor2 constraintEqualToConstant:30.0];
  v166[1] = v137;
  trailingAnchor13 = [(CarMoreButton *)self->_moreButton trailingAnchor];
  view15 = [(CarPlaceCardCardViewController *)self view];
  [view15 trailingAnchor];
  v118 = v132 = trailingAnchor13;
  v114 = [trailingAnchor13 constraintEqualToAnchor:-10.0 constant:?];
  v166[2] = v114;
  bottomAnchor9 = [(CarMoreButton *)self->_moreButton bottomAnchor];
  topAnchor7 = [(CarAdvisoriesView *)self->_routeAdvisoriesView topAnchor];
  v111 = bottomAnchor9;
  v105 = [bottomAnchor9 constraintLessThanOrEqualToAnchor:-6.0 constant:?];
  v166[3] = v105;
  leadingAnchor17 = [(CarAdvisoriesView *)self->_routeAdvisoriesView leadingAnchor];
  view16 = [(CarPlaceCardCardViewController *)self view];
  [view16 leadingAnchor];
  v98 = v102 = leadingAnchor17;
  v96 = [leadingAnchor17 constraintEqualToAnchor:10.0 constant:?];
  v166[4] = v96;
  trailingAnchor14 = [(CarAdvisoriesView *)self->_routeAdvisoriesView trailingAnchor];
  view17 = [(CarPlaceCardCardViewController *)self view];
  [view17 trailingAnchor];
  v92 = v95 = trailingAnchor14;
  v90 = [trailingAnchor14 constraintEqualToAnchor:-10.0 constant:?];
  v166[5] = v90;
  bottomAnchor10 = [(CarAdvisoriesView *)self->_routeAdvisoriesView bottomAnchor];
  topAnchor8 = [(CarLoadingButton *)self->_goButton topAnchor];
  v88 = bottomAnchor10;
  v84 = [bottomAnchor10 constraintLessThanOrEqualToAnchor:-6.0 constant:?];
  v166[6] = v84;
  leadingAnchor18 = [(CarLoadingButton *)self->_goButton leadingAnchor];
  view18 = [(CarPlaceCardCardViewController *)self view];
  [view18 leadingAnchor];
  v79 = v82 = leadingAnchor18;
  v78 = [leadingAnchor18 constraintEqualToAnchor:10.0 constant:?];
  v166[7] = v78;
  trailingAnchor15 = [(CarLoadingButton *)self->_goButton trailingAnchor];
  view19 = [(CarPlaceCardCardViewController *)self view];
  trailingAnchor16 = [view19 trailingAnchor];
  v77 = trailingAnchor15;
  v63 = [trailingAnchor15 constraintEqualToAnchor:trailingAnchor16 constant:-10.0];
  v166[8] = v63;
  heightAnchor4 = [(CarLoadingButton *)self->_goButton heightAnchor];
  goButton = self->_goButton;
  if (goButton)
  {
    [(CarCardRoundedButton *)goButton buttonMetrics];
    v66 = v165;
  }

  else
  {
    v66 = 0.0;
  }

  v67 = [heightAnchor4 constraintEqualToConstant:v66];
  v166[9] = v67;
  bottomAnchor11 = [(CarLoadingButton *)self->_goButton bottomAnchor];
  view20 = [(CarPlaceCardCardViewController *)self view];
  bottomAnchor12 = [view20 bottomAnchor];
  v71 = [bottomAnchor11 constraintEqualToAnchor:bottomAnchor12 constant:-10.0];
  v166[10] = v71;
  v72 = [NSArray arrayWithObjects:v166 count:11];
  [v164 addObjectsFromArray:v72];

  [(CarMoreButton *)self->_moreButton _setCornerRadius:15.0];
  heightAnchor5 = [(CarAdvisoriesView *)self->_routeAdvisoriesView heightAnchor];
  v74 = [heightAnchor5 constraintEqualToConstant:0.0];
  routeAdvisoriesHeightConstraint = self->_routeAdvisoriesHeightConstraint;
  self->_routeAdvisoriesHeightConstraint = v74;

  [NSLayoutConstraint activateConstraints:v164];
}

- (void)viewDidDisappear:(BOOL)disappear
{
  v4.receiver = self;
  v4.super_class = CarPlaceCardCardViewController;
  [(CarPlaceCardCardViewController *)&v4 viewDidDisappear:disappear];
  [(CarPlaceCardEVChargingViewModel *)self->_evChargingViewModel setIsActive:0];
}

- (void)viewDidAppear:(BOOL)appear
{
  v4.receiver = self;
  v4.super_class = CarPlaceCardCardViewController;
  [(CarPlaceCardCardViewController *)&v4 viewDidAppear:appear];
  self->_goButtonIsFocusable = 0;
  [(CarPlaceCardCardViewController *)self _updateContents];
  [PPTNotificationCenter postNotificationIfNeededWithName:@"CarPlaceCardCardViewControllerDidAppearNotification" object:self userInfo:0];
  [(CarPlaceCardEVChargingViewModel *)self->_evChargingViewModel setIsActive:1];
}

- (void)viewDidLoad
{
  v89.receiver = self;
  v89.super_class = CarPlaceCardCardViewController;
  [(CarPlaceCardCardViewController *)&v89 viewDidLoad];
  view = [(CarPlaceCardCardViewController *)self view];
  [view setAccessibilityIdentifier:@"CarPlaceCard"];

  LODWORD(v4) = 1144635392;
  v5 = [(CarPlaceCardCardViewController *)self _createAutohidingTextlabelWithVerticalCompressionResistancePriority:v4];
  subtitleLabel = self->_subtitleLabel;
  self->_subtitleLabel = v5;

  [(CarAutohidingLabel *)self->_subtitleLabel setAccessibilityIdentifier:@"SubtitleLabel"];
  v7 = objc_alloc_init(CarStarRatingView);
  ratingView = self->_ratingView;
  self->_ratingView = v7;

  [(CarStarRatingView *)self->_ratingView setTranslatesAutoresizingMaskIntoConstraints:0];
  LODWORD(v9) = 1148846080;
  [(CarStarRatingView *)self->_ratingView setContentHuggingPriority:1 forAxis:v9];
  LODWORD(v10) = 1144684544;
  [(CarStarRatingView *)self->_ratingView setContentCompressionResistancePriority:1 forAxis:v10];
  LODWORD(v11) = 1144717312;
  v12 = [(CarPlaceCardCardViewController *)self _createAutohidingTextlabelWithVerticalCompressionResistancePriority:v11];
  sharingETALabel = self->_sharingETALabel;
  self->_sharingETALabel = v12;

  [(CarAutohidingLabel *)self->_sharingETALabel setAccessibilityIdentifier:@"SharingETALabel"];
  v14 = [UIStackView alloc];
  v15 = self->_ratingView;
  v90[0] = self->_subtitleLabel;
  v90[1] = v15;
  v90[2] = self->_sharingETALabel;
  v16 = [NSArray arrayWithObjects:v90 count:3];
  v17 = [v14 initWithArrangedSubviews:v16];
  textStackView = self->_textStackView;
  self->_textStackView = v17;

  [(UIStackView *)self->_textStackView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UIStackView *)self->_textStackView setAxis:1];
  [(UIStackView *)self->_textStackView setAlignment:1];
  [(UIStackView *)self->_textStackView setDistribution:0];
  [(UIStackView *)self->_textStackView setBaselineRelativeArrangement:1];
  [(UIStackView *)self->_textStackView setSpacing:15.0];
  LODWORD(v19) = 1144750080;
  [(UIStackView *)self->_textStackView setContentHuggingPriority:1 forAxis:v19];
  view2 = [(CarPlaceCardCardViewController *)self view];
  [view2 addSubview:self->_textStackView];

  LODWORD(v21) = 1144619008;
  v22 = [(CarPlaceCardCardViewController *)self _createAutohidingTextlabelWithVerticalCompressionResistancePriority:v21];
  addressLabel = self->_addressLabel;
  self->_addressLabel = v22;

  [(CarAutohidingLabel *)self->_addressLabel setAccessibilityIdentifier:@"AddressLabel"];
  view3 = [(CarPlaceCardCardViewController *)self view];
  [view3 addSubview:self->_addressLabel];

  evChargingViewModel = [(CarPlaceCardCardViewController *)self evChargingViewModel];

  if (evChargingViewModel)
  {
    if ([(CarPlaceCardCardViewController *)self _shouldShowEVViewsInline])
    {
      v26 = [_TtC4Maps39CarEVChargingAvailabilityViewController alloc];
      evChargingViewModel2 = [(CarPlaceCardCardViewController *)self evChargingViewModel];
      v28 = [(CarEVChargingAvailabilityViewController *)v26 initWithViewModal:evChargingViewModel2];
      [(CarPlaceCardCardViewController *)self setEvChargingAvailabilityVC:v28];

      evChargingAvailabilityVC = [(CarPlaceCardCardViewController *)self evChargingAvailabilityVC];
      [(CarPlaceCardCardViewController *)self addChildViewController:evChargingAvailabilityVC];

      view4 = [(CarPlaceCardCardViewController *)self view];
      evChargingAvailabilityVC2 = [(CarPlaceCardCardViewController *)self evChargingAvailabilityVC];
      view5 = [evChargingAvailabilityVC2 view];
      [view4 addSubview:view5];

      evChargingAvailabilityVC3 = [(CarPlaceCardCardViewController *)self evChargingAvailabilityVC];
      view6 = [evChargingAvailabilityVC3 view];
      [view6 setTranslatesAutoresizingMaskIntoConstraints:0];

      evChargingAvailabilityVC4 = [(CarPlaceCardCardViewController *)self evChargingAvailabilityVC];
      [evChargingAvailabilityVC4 didMoveToParentViewController:self];
    }

    else
    {
      v36 = [UILabel alloc];
      y = CGRectZero.origin.y;
      width = CGRectZero.size.width;
      height = CGRectZero.size.height;
      v40 = [v36 initWithFrame:{CGRectZero.origin.x, y, width, height}];
      evChargingTitleLabel = self->_evChargingTitleLabel;
      self->_evChargingTitleLabel = v40;

      [(UILabel *)self->_evChargingTitleLabel setAccessibilityIdentifier:@"EVChargingTitleLabel"];
      [(UILabel *)self->_evChargingTitleLabel setTranslatesAutoresizingMaskIntoConstraints:0];
      LODWORD(v42) = 1148846080;
      [(UILabel *)self->_evChargingTitleLabel setContentHuggingPriority:1 forAxis:v42];
      LODWORD(v43) = 1144700928;
      [(UILabel *)self->_evChargingTitleLabel setContentCompressionResistancePriority:0 forAxis:v43];
      view7 = [(CarPlaceCardCardViewController *)self view];
      [view7 addSubview:self->_evChargingTitleLabel];

      v45 = [[UILabel alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
      evChargingAvailabilityLabel = self->_evChargingAvailabilityLabel;
      self->_evChargingAvailabilityLabel = v45;

      [(UILabel *)self->_evChargingAvailabilityLabel setAccessibilityIdentifier:@"EVChargingAvailabilityLabel"];
      [(UILabel *)self->_evChargingAvailabilityLabel setTranslatesAutoresizingMaskIntoConstraints:0];
      LODWORD(v47) = 1148846080;
      [(UILabel *)self->_evChargingAvailabilityLabel setContentHuggingPriority:1 forAxis:v47];
      LODWORD(v48) = 1144700928;
      [(UILabel *)self->_evChargingAvailabilityLabel setContentCompressionResistancePriority:0 forAxis:v48];
      view8 = [(CarPlaceCardCardViewController *)self view];
      [view8 addSubview:self->_evChargingAvailabilityLabel];

      height = [[CarCardRoundedButton alloc] initWithFrame:CGRectZero.origin.x, y, width, height];
      evChargingMoreButton = self->_evChargingMoreButton;
      self->_evChargingMoreButton = height;

      [(CarCardRoundedButton *)self->_evChargingMoreButton setAccessibilityIdentifier:@"EVChargingMoreButton"];
      [(CarCardRoundedButton *)self->_evChargingMoreButton setTranslatesAutoresizingMaskIntoConstraints:0];
      LODWORD(v52) = 1132068864;
      [(CarCardRoundedButton *)self->_evChargingMoreButton setContentHuggingPriority:1 forAxis:v52];
      LODWORD(v53) = 1148846080;
      [(CarCardRoundedButton *)self->_evChargingMoreButton setContentCompressionResistancePriority:0 forAxis:v53];
      LODWORD(v54) = 1148846080;
      [(CarCardRoundedButton *)self->_evChargingMoreButton setContentCompressionResistancePriority:1 forAxis:v54];
      [(CarCardRoundedButton *)self->_evChargingMoreButton addTarget:self action:"_evChargingMoreButtonPressed:" forControlEvents:64];
      evChargingAvailabilityVC4 = [(CarPlaceCardCardViewController *)self view];
      [evChargingAvailabilityVC4 addSubview:self->_evChargingMoreButton];
    }
  }

  v55 = [UILabel alloc];
  v56 = CGRectZero.origin.y;
  v57 = CGRectZero.size.width;
  v58 = CGRectZero.size.height;
  v59 = [v55 initWithFrame:{CGRectZero.origin.x, v56, v57, v58}];
  etaLabel = self->_etaLabel;
  self->_etaLabel = v59;

  [(UILabel *)self->_etaLabel setAccessibilityIdentifier:@"ETALabel"];
  [(UILabel *)self->_etaLabel setTranslatesAutoresizingMaskIntoConstraints:0];
  LODWORD(v61) = 1144733696;
  [(UILabel *)self->_etaLabel setContentHuggingPriority:1 forAxis:v61];
  LODWORD(v62) = 1144733696;
  [(UILabel *)self->_etaLabel setContentCompressionResistancePriority:0 forAxis:v62];
  view9 = [(CarPlaceCardCardViewController *)self view];
  [view9 addSubview:self->_etaLabel];

  v64 = [[UILabel alloc] initWithFrame:{CGRectZero.origin.x, v56, v57, v58}];
  mainDescriptionLabel = self->_mainDescriptionLabel;
  self->_mainDescriptionLabel = v64;

  [(UILabel *)self->_mainDescriptionLabel setAccessibilityIdentifier:@"MainDescriptionLabel"];
  [(UILabel *)self->_mainDescriptionLabel setTranslatesAutoresizingMaskIntoConstraints:0];
  LODWORD(v66) = 1148846080;
  [(UILabel *)self->_mainDescriptionLabel setContentHuggingPriority:1 forAxis:v66];
  LODWORD(v67) = 1148829696;
  [(UILabel *)self->_mainDescriptionLabel setContentCompressionResistancePriority:0 forAxis:v67];
  LODWORD(v68) = 1144668160;
  [(UILabel *)self->_mainDescriptionLabel setContentCompressionResistancePriority:1 forAxis:v68];
  view10 = [(CarPlaceCardCardViewController *)self view];
  [view10 addSubview:self->_mainDescriptionLabel];

  v70 = [[CarAdvisoriesView alloc] initWithFrame:CGRectZero.origin.x, v56, v57, v58];
  routeAdvisoriesView = self->_routeAdvisoriesView;
  self->_routeAdvisoriesView = v70;

  [(CarAdvisoriesView *)self->_routeAdvisoriesView setTranslatesAutoresizingMaskIntoConstraints:0];
  LODWORD(v72) = 1148846080;
  [(CarAdvisoriesView *)self->_routeAdvisoriesView setContentHuggingPriority:1 forAxis:v72];
  LODWORD(v73) = 1144651776;
  [(CarAdvisoriesView *)self->_routeAdvisoriesView setContentCompressionResistancePriority:1 forAxis:v73];
  view11 = [(CarPlaceCardCardViewController *)self view];
  [view11 addSubview:self->_routeAdvisoriesView];

  v75 = [[CarMoreButton alloc] initWithFrame:CGRectZero.origin.x, v56, v57, v58];
  moreButton = self->_moreButton;
  self->_moreButton = v75;

  [(CarMoreButton *)self->_moreButton setTranslatesAutoresizingMaskIntoConstraints:0];
  LODWORD(v77) = 1132068864;
  [(CarMoreButton *)self->_moreButton setContentHuggingPriority:1 forAxis:v77];
  LODWORD(v78) = 1148846080;
  [(CarMoreButton *)self->_moreButton setContentCompressionResistancePriority:0 forAxis:v78];
  LODWORD(v79) = 1148846080;
  [(CarMoreButton *)self->_moreButton setContentCompressionResistancePriority:1 forAxis:v79];
  [(CarMoreButton *)self->_moreButton addTarget:self action:"_moreButtonPressed:" forControlEvents:64];
  view12 = [(CarPlaceCardCardViewController *)self view];
  [view12 addSubview:self->_moreButton];

  v81 = [(CarCardRoundedButton *)[CarLoadingButton alloc] initWithFrame:CGRectZero.origin.x, v56, v57, v58];
  goButton = self->_goButton;
  self->_goButton = v81;

  [(CarLoadingButton *)self->_goButton setAccessibilityIdentifier:@"GoButton"];
  v83 = self->_goButton;
  accessibilityTraits = [(CarLoadingButton *)v83 accessibilityTraits];
  [(CarLoadingButton *)v83 setAccessibilityTraits:UIAccessibilityTraitButton | accessibilityTraits];
  [(CarLoadingButton *)self->_goButton setTranslatesAutoresizingMaskIntoConstraints:0];
  LODWORD(v85) = 1148846080;
  [(CarLoadingButton *)self->_goButton setContentHuggingPriority:1 forAxis:v85];
  LODWORD(v86) = 1148846080;
  [(CarLoadingButton *)self->_goButton setContentCompressionResistancePriority:1 forAxis:v86];
  [(CarLoadingButton *)self->_goButton addTarget:self action:"_goButtonPressed:" forControlEvents:64];
  view13 = [(CarPlaceCardCardViewController *)self view];
  [view13 addSubview:self->_goButton];

  [(CarPlaceCardCardViewController *)self _setupConstraints];
  [(CarPlaceCardCardViewController *)self _setupStyling];
  [(CarPlaceCardCardViewController *)self _updateContents];
  [(CarPlaceCardCardViewController *)self _captureAnalytics];
  [(CarPlaceCardCardViewController *)self _startETAProviderIfNeeded];
  evChargingViewModel = self->_evChargingViewModel;
  if (evChargingViewModel)
  {
    [(CarPlaceCardEVChargingViewModel *)evChargingViewModel setObserver:self];
  }
}

- (void)_startETAProviderIfNeeded
{
  if ([(CarPlaceCardCardViewController *)self isViewLoaded])
  {
    v3 = sub_100006E1C();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      etaProvider = self->_etaProvider;
      v5 = 138543362;
      v6 = etaProvider;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "CarPlaceCard: starting ETA provider: %{public}@", &v5, 0xCu);
    }

    [(MKETAProvider *)self->_etaProvider start];
  }
}

- (void)_initializeGoButtonState
{
  if (self->_style == 1)
  {
    v13 = v2;
    v14 = v3;
    mapItem = [(SearchResult *)self->_searchResult mapItem];
    _detourInfo = [mapItem _detourInfo];

    if (_detourInfo)
    {
      v7 = sub_100006E1C();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "CarPlaceCard: initializing with enabled go button due to having detourInfo", buf, 2u);
      }

      self->_goButtonEnabled = 1;
      self->_goButtonHidden = 0;
    }

    else
    {
      [(MKETAProvider *)self->_etaProvider removeObserver:self];
      [(MKETAProvider *)self->_etaProvider cancel];
      v8 = [[MKETAProvider alloc] initWithMapItem:mapItem];
      etaProvider = self->_etaProvider;
      self->_etaProvider = v8;

      [(MKETAProvider *)self->_etaProvider setAllowsDistantETA:1];
      [(MKETAProvider *)self->_etaProvider addObserver:self];
      v10 = sub_100006E1C();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        *v11 = 0;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "CarPlaceCard: disabling go button while waiting for ETA", v11, 2u);
      }

      self->_goButtonEnabled = 0;
      self->_goButtonHidden = [(MKETAProvider *)self->_etaProvider isLikelyToReturnETA]^ 1;
      [(CarPlaceCardCardViewController *)self _startETAProviderIfNeeded];
    }
  }
}

- (void)dealloc
{
  [(NSTimer *)self->_etaUpdateTimer invalidate];
  etaUpdateTimer = self->_etaUpdateTimer;
  self->_etaUpdateTimer = 0;

  [(NSTimer *)self->_openingHoursUpdateTimer invalidate];
  openingHoursUpdateTimer = self->_openingHoursUpdateTimer;
  self->_openingHoursUpdateTimer = 0;

  v5 = +[NSNotificationCenter defaultCenter];
  [v5 removeObserver:self];

  [(MKETAProvider *)self->_etaProvider cancel];
  etaProvider = self->_etaProvider;
  self->_etaProvider = 0;

  v7.receiver = self;
  v7.super_class = CarPlaceCardCardViewController;
  [(CarPlaceCardCardViewController *)&v7 dealloc];
}

- (CarPlaceCardCardViewController)initWithSearchResult:(id)result style:(int64_t)style dataSource:(id)source delegate:(id)delegate
{
  resultCopy = result;
  sourceCopy = source;
  delegateCopy = delegate;
  v28.receiver = self;
  v28.super_class = CarPlaceCardCardViewController;
  v14 = [(CarPlaceCardCardViewController *)&v28 initWithNibName:0 bundle:0];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_searchResult, result);
    objc_storeWeak(&v15->_dataSource, sourceCopy);
    objc_storeWeak(&v15->_delegate, delegateCopy);
    v15->_style = style;
    v16 = sub_100006E1C();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      mapItem = [(CarPlaceCardCardViewController *)v15 mapItem];
      name = [mapItem name];
      mapItem2 = [(CarPlaceCardCardViewController *)v15 mapItem];
      _muid = [mapItem2 _muid];
      *buf = 138543875;
      v30 = v15;
      v31 = 2113;
      v32 = name;
      v33 = 2049;
      v34 = _muid;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "CarPlaceCard: placecard initialized (%{public}@) with mapItem: (name: %{private}@, muid: %{private}llu)", buf, 0x20u);
    }

    [(CarPlaceCardCardViewController *)v15 _initializeGoButtonState];
    v21 = +[MapsExternalDevice sharedInstance];
    v15->_navigationAidedDrivingEnabled = [v21 isNavigationAidedDrivingEnabled];

    v22 = +[MapsExternalDevice sharedInstance];
    v15->_handoffEnabled = [v22 destinationHandoffEnabled];

    v23 = +[NSNotificationCenter defaultCenter];
    [v23 addObserver:v15 selector:"_externalDeviceUpdated:" name:@"MapsExternalDeviceUpdated" object:0];
  }

  _createEVChargingViewModel = [(CarPlaceCardCardViewController *)v15 _createEVChargingViewModel];
  evChargingViewModel = v15->_evChargingViewModel;
  v15->_evChargingViewModel = _createEVChargingViewModel;

  view = [(CarPlaceCardCardViewController *)v15 view];
  [view _maps_annotateViewWithCarPlaceCardCardViewController:v15];

  return v15;
}

@end