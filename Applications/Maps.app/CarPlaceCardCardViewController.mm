@interface CarPlaceCardCardViewController
- (BOOL)_canSafelyRequestFocusUpdate;
- (BOOL)_isGoButtonFocusable;
- (BOOL)_shouldHideNavigationRelatedInfo;
- (BOOL)_shouldShowEVViewsInline;
- (CarPlaceCardCardViewController)initWithSearchResult:(id)a3 style:(int64_t)a4 dataSource:(id)a5 delegate:(id)a6;
- (CarPlaceCardCardViewControllerDataSource)dataSource;
- (CarPlaceCardCardViewControllerDelegate)delegate;
- (MKMapItem)mapItem;
- (NSArray)preferredFocusEnvironments;
- (_MKLocalizedHoursBuilder)localizedHoursBuilder;
- (id)_attributesForPlainSubtitleString;
- (id)_createAutohidingTextlabelWithVerticalCompressionResistancePriority:(float)a3;
- (id)_createEVChargingViewModel;
- (id)_createEtaLabelTrailingConstraint;
- (id)_localizedHours;
- (id)_sharingETAString;
- (id)_subtitleString;
- (id)_visibleButtons;
- (int64_t)titleNumberOfLines;
- (void)ETAProviderUpdated:(id)a3;
- (void)_callDestination;
- (void)_cancelScheduleETAUpdate;
- (void)_captureAnalytics;
- (void)_evChargingMoreButtonPressed:(id)a3;
- (void)_externalDeviceUpdated:(id)a3;
- (void)_goButtonPressed:(id)a3;
- (void)_initializeGoButtonState;
- (void)_moreButtonPressed:(id)a3;
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
- (void)setGoButtonEnabled:(BOOL)a3;
- (void)setGoButtonHidden:(BOOL)a3;
- (void)setHandoffEnabled:(BOOL)a3;
- (void)setHasCardFinishedTransitioning:(BOOL)a3;
- (void)setLoading:(BOOL)a3;
- (void)setNavigationAidedDrivingEnabled:(BOOL)a3;
- (void)setSearchResult:(id)a3;
- (void)setShouldDisplayMoreButton:(BOOL)a3;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidDisappear:(BOOL)a3;
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

- (void)ETAProviderUpdated:(id)a3
{
  v4 = a3;
  v5 = sub_100006E1C();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    [v4 etaTravelTime];
    v9 = 134217984;
    v10 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "CarPlaceCard: ETAProviderUpdated: etaTravelTime: %f", &v9, 0xCu);
  }

  if (self->_style == 1 && self->_etaTravelTime == 0.0)
  {
    [v4 etaTravelTime];
    if (v7 > 0.0)
    {
      [v4 etaTravelTime];
      self->_etaTravelTime = v8;
      [(CarPlaceCardCardViewController *)self setGoButtonEnabled:1];
      [(CarPlaceCardCardViewController *)self setGoButtonHidden:0];
      [v4 cancel];
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

- (void)_externalDeviceUpdated:(id)a3
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

- (void)_evChargingMoreButtonPressed:(id)a3
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
    v6 = [(CarPlaceCardCardViewController *)self evChargingViewModel];
    v7 = [(CarEVChargingAvailabilityViewController *)v5 initWithViewModal:v6];
    [(CarPlaceCardCardViewController *)self setEvChargingAvailabilityVC:v7];

    v8 = [(CarPlaceCardCardViewController *)self evChargingAvailabilityVC];
    [v8 configureForModalPresentation];

    v9 = [(CarPlaceCardCardViewController *)self delegate];
    LOBYTE(v6) = objc_opt_respondsToSelector();

    if (v6)
    {
      v10 = [(CarPlaceCardCardViewController *)self delegate];
      v11 = [(CarPlaceCardCardViewController *)self evChargingAvailabilityVC];
      [v10 placeCard:self wantsToPresentEVAvailability:v11];
    }
  }
}

- (void)_goButtonPressed:(id)a3
{
  v4 = [(CarPlaceCardCardViewController *)self isNavigationAidedDrivingEnabled];
  v5 = sub_100006E1C();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_INFO);
  if (v4)
  {
    if (v6)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "CarPlaceCard go button pressed, NAD active -> handing off", buf, 2u);
    }

    v7 = [(CarPlaceCardCardViewController *)self delegate];
    [v7 placeCardDidSelectHandoff:self];
  }

  else
  {
    if (v6)
    {
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "CarPlaceCard go button pressed, NAD inactive -> starting nav", v8, 2u);
    }

    v7 = [(CarPlaceCardCardViewController *)self delegate];
    [v7 placeCardDidSelectGo:self];
  }
}

- (void)_moreButtonPressed:(id)a3
{
  v4 = sub_100006E1C();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = [(CarMoreButton *)self->_moreButton options];
    v8 = 134217984;
    v9 = v5;
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
      v7 = [(CarPlaceCardCardViewController *)self delegate];
      [v7 placeCardDidSelectHandoff:self];
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
  v3 = [v2 currentMode];
  [v3 size];
  v5 = v4 >= 1000.0;

  return v5;
}

- (id)_createEVChargingViewModel
{
  v3 = [(CarPlaceCardCardViewController *)self mapItem];

  if (v3)
  {
    v4 = [_TtC4Maps31CarPlaceCardEVChargingViewModel alloc];
    v5 = [(CarPlaceCardCardViewController *)self mapItem];
    v6 = +[VGVirtualGarageService sharedService];
    v7 = [(CarPlaceCardEVChargingViewModel *)v4 initWithMapItem:v5 virtualGarageService:v6];
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
  v3 = [(SearchResult *)self->_searchResult mapItem];
  v4 = [v3 phoneNumber];

  if (v4 && [v4 length])
  {
    sub_10096B660(v4);
  }

  else if ([(SearchResult *)self->_searchResult isAddressBookResult])
  {
    v5 = [(SearchResult *)self->_searchResult address];
    v6 = [v5 contact];

    v7 = [v6 phoneNumbers];
    v8 = [v7 firstObject];
    v9 = [v8 value];

    v10 = [v9 stringValue];
    sub_10096B660(v10);
  }

  else
  {
    v11 = sub_100006E1C();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = [(SearchResult *)self->_searchResult mapItem];
      v13 = [v12 phoneNumber];
      v15 = 138412290;
      v16 = v13;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "CarPlaceCard tried to call POI, but failed. Number: %@", &v15, 0xCu);
    }
  }

  v14 = [(CarPlaceCardCardViewController *)self delegate];
  [v14 placeCardDidSelectCall:self];
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
    v7 = [(CarPlaceCardCardViewController *)self mapItem];
    v8 = [v7 name];
    v9 = [NSString stringWithFormat:v6, v8];

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
    v13 = [v12 mapsDisplayName];

    v14 = +[NSBundle mainBundle];
    if (v13)
    {
      v15 = [v14 localizedStringForKey:@"Share destination [CarPlay]" value:@"localized string not found" table:0];
      v16 = [NSString stringWithFormat:v15, v13];
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

- (id)_createAutohidingTextlabelWithVerticalCompressionResistancePriority:(float)a3
{
  v4 = [[CarAutohidingLabel alloc] initWithFrame:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
  [(CarAutohidingLabel *)v4 setTranslatesAutoresizingMaskIntoConstraints:0];
  *&v5 = a3;
  [(CarAutohidingLabel *)v4 setContentCompressionResistancePriority:1 forAxis:v5];
  LODWORD(v6) = 1148846080;
  [(CarAutohidingLabel *)v4 setContentHuggingPriority:1 forAxis:v6];

  return v4;
}

- (id)_createEtaLabelTrailingConstraint
{
  v3 = [(CarPlaceCardCardViewController *)self shouldDisplayMoreButton];
  v4 = [(UILabel *)self->_etaLabel trailingAnchor];
  if (v3)
  {
    v5 = [(CarMoreButton *)self->_moreButton leadingAnchor];
    v6 = [v4 constraintLessThanOrEqualToAnchor:v5 constant:-10.0];
  }

  else
  {
    v5 = [(CarPlaceCardCardViewController *)self view];
    v7 = [v5 trailingAnchor];
    v6 = [v4 constraintEqualToAnchor:v7 constant:-10.0];
  }

  return v6;
}

- (id)_localizedHours
{
  v3 = [(CarPlaceCardCardViewController *)self mapItem];
  v4 = [v3 _hasBusinessHours];

  if (v4)
  {
    v5 = [(CarPlaceCardCardViewController *)self localizedHoursBuilder];
    v6 = ([v5 geoMapItemOpeningHourOptions] & 0x1CC);

    v7 = [(CarPlaceCardCardViewController *)self localizedHoursBuilder];
    v8 = [v7 geoMapItemOpeningHourOptions];

    if (v6)
    {
      v9 = [NSAttributedString alloc];
      v10 = [(CarPlaceCardCardViewController *)self localizedHoursBuilder];
      v11 = [v10 localizedOperatingHours];
      v16[0] = NSFontAttributeName;
      v12 = [UIFont _mapsCar_fontForTextStyle:UIFontTextStyleCaption2 weight:UIFontWeightRegular];
      v17[0] = v12;
      v16[1] = NSForegroundColorAttributeName;
      if ((v8 & 0x40) != 0)
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
      v6 = [v9 initWithString:v11 attributes:v14];
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
  v2 = [(CarPlaceCardCardViewController *)self dataSource];
  v3 = [v2 automaticSharingContacts];

  if ([v3 count])
  {
    if ([v3 count] == 1)
    {
      v4 = [v3 firstObject];
      v5 = [v4 contact];
      v6 = [v5 givenName];

      v7 = +[NSBundle mainBundle];
      v8 = [v7 localizedStringForKey:@"CarPlay_PlaceCard_SharingAutomatically_OneContact" value:@"localized string not found" table:0];
      v9 = [NSString stringWithFormat:v8, v6];
    }

    else
    {
      v4 = +[NSBundle mainBundle];
      v6 = [v4 localizedStringForKey:@"CarPlay_PlaceCard_SharingAutomatically" value:@"localized string not found" table:0];
      v9 = +[NSString localizedStringWithFormat:](NSString, "localizedStringWithFormat:", v6, [v3 count]);
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
  v3 = [(CarPlaceCardCardViewController *)self mapItem];
  v4 = [v3 _hasChargerNumberString];

  if (v4)
  {
    v5 = [NSAttributedString alloc];
    v6 = [(CarPlaceCardCardViewController *)self mapItem];
    v7 = [v6 _chargerNumberString];
    v8 = [(CarPlaceCardCardViewController *)self _attributesForPlainSubtitleString];
    v9 = [v5 initWithString:v7 attributes:v8];
  }

  else
  {
    v10 = [(CarPlaceCardCardViewController *)self _localizedHours];
    if (v10)
    {
      v6 = v10;
      v9 = v6;
    }

    else
    {
      v11 = [(CarPlaceCardCardViewController *)self mapItem];
      v12 = [v11 _firstLocalizedCategoryName];
      v13 = [v12 length];

      if (v13)
      {
        v14 = [NSAttributedString alloc];
        v15 = [(CarPlaceCardCardViewController *)self mapItem];
        v16 = [v15 _firstLocalizedCategoryName];
        v17 = [(CarPlaceCardCardViewController *)self _attributesForPlainSubtitleString];
        v9 = [v14 initWithString:v16 attributes:v17];

        v6 = 0;
      }

      else
      {
        v6 = 0;
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
  v3 = [(CarPlaceCardCardViewController *)self mapItem];
  v4 = [v3 _businessHours];
  v5 = [v4 objectAtIndex:0];
  v6 = +[NSDate date];
  v7 = [(CarPlaceCardCardViewController *)self mapItem];
  v8 = [v7 timeZone];
  v9 = [GEOMapItemOpenState _geoMapItemOpeningHoursOptionsForBusinessHours:v5 compareDate:v6 timeZone:v8];

  v10 = [(CarPlaceCardCardViewController *)self localizedHoursBuilder];
  [v10 setGeoMapItemOpeningHourOptions:v9];

  v11 = [(CarPlaceCardCardViewController *)self _subtitleString];
  [(CarAutohidingLabel *)self->_subtitleLabel setAttributedText:v11];

  v12 = sub_100006E1C();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    v13 = [(CarAutohidingLabel *)self->_subtitleLabel attributedText];
    v14 = [v13 string];
    v15 = 138412290;
    v16 = v14;
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
  v3 = [(CarPlaceCardCardViewController *)self dataSource];
  v4 = [v3 etaForCurrentRoute];
  latestETA = self->_latestETA;
  self->_latestETA = v4;

  v6 = sub_100006E1C();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = [(GuidanceETA *)self->_latestETA remainingMinutes];
    v8 = 134217984;
    v9 = v7;
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

  v3 = [(CarPlaceCardCardViewController *)self view];
  v4 = [v3 window];
  v5 = [v4 rootViewController];

  if (!v5)
  {
    return 0;
  }

  v6 = [(CarPlaceCardCardViewController *)self view];
  v7 = [v6 superview];
  if (v7)
  {
    v8 = [(CarPlaceCardCardViewController *)self traitCollection];
  }

  else
  {
    v11 = +[UIScreen _carScreen];
    v8 = [v11 traitCollection];
  }

  v9 = ([v8 interactionModel] & 0xA) != 0;
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

- (void)setHandoffEnabled:(BOOL)a3
{
  if (self->_handoffEnabled != a3)
  {
    self->_handoffEnabled = a3;
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

- (void)setNavigationAidedDrivingEnabled:(BOOL)a3
{
  if (self->_navigationAidedDrivingEnabled != a3)
  {
    self->_navigationAidedDrivingEnabled = a3;
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

- (void)setGoButtonEnabled:(BOOL)a3
{
  if (self->_goButtonEnabled != a3)
  {
    self->_goButtonEnabled = a3;
    v4 = +[CarDisplayController sharedInstance];
    v5 = [v4 chromeViewController];
    [v5 setNeedsFocusUpdate];

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

- (void)setGoButtonHidden:(BOOL)a3
{
  if (self->_goButtonHidden != a3)
  {
    self->_goButtonHidden = a3;
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

- (void)setLoading:(BOOL)a3
{
  if (self->_loading != a3)
  {
    self->_loading = a3;
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

- (void)setHasCardFinishedTransitioning:(BOOL)a3
{
  if (self->_hasCardFinishedTransitioning != a3)
  {
    self->_hasCardFinishedTransitioning = a3;
    if (a3)
    {
      [(CarPlaceCardCardViewController *)self _updateContents];
    }
  }
}

- (void)setShouldDisplayMoreButton:(BOOL)a3
{
  if (self->_shouldDisplayMoreButton != a3)
  {
    self->_shouldDisplayMoreButton = a3;
    [(CarPlaceCardCardViewController *)self _updateConstraints];
  }
}

- (_MKLocalizedHoursBuilder)localizedHoursBuilder
{
  localizedHoursBuilder = self->_localizedHoursBuilder;
  if (!localizedHoursBuilder)
  {
    v4 = [_MKLocalizedHoursBuilder alloc];
    v5 = [(CarPlaceCardCardViewController *)self mapItem];
    v6 = [v4 initWithMapItem:v5 localizedHoursStringOptions:41];
    v7 = self->_localizedHoursBuilder;
    self->_localizedHoursBuilder = v6;

    localizedHoursBuilder = self->_localizedHoursBuilder;
  }

  return localizedHoursBuilder;
}

- (MKMapItem)mapItem
{
  v2 = [(CarPlaceCardCardViewController *)self searchResult];
  v3 = [v2 mapItem];

  return v3;
}

- (void)setSearchResult:(id)a3
{
  v5 = a3;
  if (self->_searchResult != v5)
  {
    objc_storeStrong(&self->_searchResult, a3);
    v6 = sub_100006E1C();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = [(CarPlaceCardCardViewController *)self mapItem];
      v8 = [v7 name];
      v9 = [(CarPlaceCardCardViewController *)self mapItem];
      v10 = 138478083;
      v11 = v8;
      v12 = 2049;
      v13 = [v9 _muid];
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
    v4 = [(CarPlaceCardCardViewController *)self mapItem];
    v5 = [v4 name];
    v6 = [(CarPlaceCardCardViewController *)self mapItem];
    v9 = 138478083;
    v10 = v5;
    v11 = 2049;
    v12 = [v6 _muid];
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "CarPlaceCard: placecard loaded and displayed with mapItem: (name: %{private}@, muid: %{private}llu)", &v9, 0x16u);
  }

  v7 = +[CarDisplayController sharedInstance];
  v8 = [v7 chromeViewController];
  [v8 captureUserAction:21];
}

- (void)_updateETARelatedContents
{
  v3 = [(CarPlaceCardCardViewController *)self style];
  if (v3 == 1)
  {
    v8 = [(CarPlaceCardCardViewController *)self mapItem];
    v9 = [v8 _maps_detourTextForIdiom:3];
    [(UILabel *)self->_etaLabel setText:v9];

    latestETA = self->_latestETA;
    if (latestETA)
    {
      [(GuidanceETA *)latestETA remainingDistance];
      v15 = [NSString _navigation_localizedStringForDistance:0 detail:1 unitFormat:0 locale:0 useMetric:0 useYards:?];
      v11 = +[NSBundle mainBundle];
      v12 = [v11 localizedStringForKey:@"%@ miles away" value:@"localized string not found" table:0];
      v13 = [NSString localizedStringWithFormat:v12, v15];
      [(UILabel *)self->_mainDescriptionLabel setText:v13];

      goto LABEL_7;
    }
  }

  else
  {
    if (v3)
    {
      return;
    }

    v4 = [(GuidanceETA *)self->_latestETA etaDateString];
    [(UILabel *)self->_etaLabel setText:v4];

    v5 = [(CarPlaceCardCardViewController *)self dataSource];
    v6 = objc_opt_respondsToSelector();

    if (v6)
    {
      v15 = [(CarPlaceCardCardViewController *)self dataSource];
      v7 = [v15 routeMainDescriptionText];
      [(UILabel *)self->_mainDescriptionLabel setAttributedText:v7];

LABEL_7:

      return;
    }
  }

  mainDescriptionLabel = self->_mainDescriptionLabel;

  [(UILabel *)mainDescriptionLabel setText:0];
}

- (void)_updateRouteAdvisoriesStack
{
  v3 = [(CarPlaceCardCardViewController *)self dataSource];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    routeAdvisoriesView = self->_routeAdvisoriesView;
    v6 = [(CarPlaceCardCardViewController *)self dataSource];
    v7 = [v6 currentRoute];
    [(CarAdvisoriesView *)routeAdvisoriesView setRoute:v7];

    if ([(CarAdvisoriesView *)self->_routeAdvisoriesView count])
    {
      v8 = [(CarPlaceCardCardViewController *)self _shouldHideNavigationRelatedInfo];
    }

    else
    {
      v8 = 1;
    }

    [(NSLayoutConstraint *)self->_routeAdvisoriesHeightConstraint setActive:v8];
    v9 = self->_routeAdvisoriesView;

    [(CarAdvisoriesView *)v9 setHidden:v8];
  }
}

- (void)_updateContents
{
  v3 = [(CarPlaceCardCardViewController *)self _shouldHideNavigationRelatedInfo];
  v4 = [(CarPlaceCardCardViewController *)self _subtitleString];
  [(CarAutohidingLabel *)self->_subtitleLabel setAttributedText:v4];

  v5 = [(CarAutohidingLabel *)self->_subtitleLabel attributedText];
  -[CarAutohidingLabel setHidden:](self->_subtitleLabel, "setHidden:", [v5 length] == 0);

  if (!self->_openingHoursUpdateTimer)
  {
    v6 = [(CarPlaceCardCardViewController *)self mapItem];
    v7 = [v6 _hasBusinessHours];

    if (v7)
    {
      [(CarPlaceCardCardViewController *)self _scheduleOpeningHoursUpdate];
    }
  }

  ratingView = self->_ratingView;
  v9 = [(CarPlaceCardCardViewController *)self mapItem];
  [(CarStarRatingView *)ratingView setupWithMapItem:v9];

  v10 = [(CarPlaceCardCardViewController *)self mapItem];
  -[CarStarRatingView setHidden:](self->_ratingView, "setHidden:", [v10 _hasUserRatingScore] ^ 1);

  v11 = [(CarPlaceCardCardViewController *)self mapItem];
  v12 = [v11 _addressFormattedAsShortenedAddress];
  [(CarAutohidingLabel *)self->_addressLabel setText:v12];

  if (![(CarPlaceCardCardViewController *)self _shouldShowEVViewsInline])
  {
    v13 = [(CarPlaceCardCardViewController *)self evChargingViewModel];
    v14 = [v13 hasSummaryInfo];

    if (v14)
    {
      v15 = [(CarPlaceCardCardViewController *)self evChargingViewModel];
      v16 = [v15 summaryTitle];
      [(UILabel *)self->_evChargingTitleLabel setText:v16];

      v17 = [(CarPlaceCardCardViewController *)self evChargingViewModel];
      v18 = [v17 summaryDescription];
      [(UILabel *)self->_evChargingAvailabilityLabel setAttributedText:v18];

      v19 = [UIImageSymbolConfiguration configurationWithTextStyle:UIFontTextStyleFootnote];
      v20 = [MUEVChargingHelper evPlugIconWithConfiguration:v19];

      [(CarCardRoundedButton *)self->_evChargingMoreButton setImage:v20 forState:0];
    }

    [(UILabel *)self->_evChargingTitleLabel setHidden:v14 ^ 1];
    [(UILabel *)self->_evChargingAvailabilityLabel setHidden:v14 ^ 1];
    [(CarCardRoundedButton *)self->_evChargingMoreButton setHidden:v14 ^ 1];
    if ([(NSArray *)self->_evChargingSummaryViewConstraints count])
    {
      evChargingSummaryViewConstraints = self->_evChargingSummaryViewConstraints;
      if (v14)
      {
        [NSLayoutConstraint activateConstraints:evChargingSummaryViewConstraints];
      }

      else
      {
        [NSLayoutConstraint deactivateConstraints:evChargingSummaryViewConstraints];
      }
    }
  }

  v22 = [(CarPlaceCardCardViewController *)self _sharingETAString];
  [(CarAutohidingLabel *)self->_sharingETALabel setText:v22];

  v23 = [(CarAutohidingLabel *)self->_sharingETALabel attributedText];
  -[CarAutohidingLabel setHidden:](self->_sharingETALabel, "setHidden:", [v23 length] == 0);

  [(CarPlaceCardCardViewController *)self _updateETA];
  if (!self->_etaUpdateTimer && ![(CarPlaceCardCardViewController *)self style])
  {
    [(CarPlaceCardCardViewController *)self _scheduleETAUpdate];
  }

  [(CarPlaceCardCardViewController *)self _updateETARelatedContents];
  [(UILabel *)self->_etaLabel setHidden:v3];
  [(UILabel *)self->_mainDescriptionLabel setHidden:v3];
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
      v25 = [v24 mapsDisplayName];
      v26 = v25;
      if (v25)
      {
        v27 = v25;
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
      v28 = [(CarPlaceCardCardViewController *)self style];
      v29 = +[NSBundle mainBundle];
      v30 = v29;
      if (v28 == 1)
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

  v36 = [(CarPlaceCardCardViewController *)self _isGoButtonFocusable];
  if (v36)
  {
    LOBYTE(v36) = [(CarPlaceCardCardViewController *)self _canSafelyRequestFocusUpdate];
  }

  self->_goButtonIsFocusable = v36;
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

    v4 = [(CarPlaceCardCardViewController *)self _createEtaLabelTrailingConstraint];
    v5 = self->_etaLabelTrailingConstraint;
    self->_etaLabelTrailingConstraint = v4;

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

  v6 = [(SearchResult *)self->_searchResult mapItem];
  v7 = [v6 phoneNumber];

  if ((v5 & (v7 != 0)) != 0)
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
  v4 = UIFontTextStyleCaption1;
  v5 = [UIFont _mapsCar_fontForTextStyle:UIFontTextStyleCaption1 traits:0x8000];
  [(CarAutohidingLabel *)self->_addressLabel setFont:v5];
  v6 = +[UIColor _carSystemPrimaryColor];
  [(CarAutohidingLabel *)self->_addressLabel setTextColor:v6];

  [(CarAutohidingLabel *)self->_addressLabel setLineBreakMode:4];
  [(CarAutohidingLabel *)self->_addressLabel setNumberOfLines:3];
  v7 = [UIFont _mapsCar_fontForTextStyle:UIFontTextStyleFootnote weight:UIFontWeightMedium];
  [(UILabel *)self->_evChargingTitleLabel setFont:v7];
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

  v13 = [(UILabel *)self->_mainDescriptionLabel font];
  [v13 pointSize];
  mainDescriptionLabel = self->_mainDescriptionLabel;
  v46 = v5;
  v52 = v7;
  if (10.0 / v14 > 1.0)
  {
    [(UILabel *)mainDescriptionLabel setMinimumScaleFactor:1.0];
  }

  else
  {
    v16 = [(UILabel *)mainDescriptionLabel font];
    [v16 pointSize];
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
  v21 = [(CarLoadingButton *)self->_goButton titleLabel];
  [v21 setFont:v20];

  v22 = [(CarLoadingButton *)self->_goButton titleLabel];
  [v22 setAdjustsFontSizeToFitWidth:1];

  v23 = [(CarLoadingButton *)self->_goButton titleLabel];
  v24 = [v23 font];
  [v24 pointSize];
  v26 = 10.0 / v25;
  v27 = 1.0;
  if (10.0 / v25 <= 1.0)
  {
    v7 = [(CarLoadingButton *)self->_goButton titleLabel];
    v4 = [v7 font];
    [v4 pointSize];
    v27 = 10.0 / v28;
  }

  v29 = [(CarLoadingButton *)self->_goButton titleLabel];
  [v29 setMinimumScaleFactor:v27];

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
    v45 = [(CarLoadingButton *)self->_goButton titleLabel];
    [v45 setAdjustsFontForContentSizeCategory:1];
  }
}

- (void)_setupConstraints
{
  v164 = +[NSMutableArray array];
  v156 = [(UIStackView *)self->_textStackView firstBaselineAnchor];
  v160 = [(CarPlaceCardCardViewController *)self view];
  v150 = [v160 topAnchor];
  v144 = [v156 constraintEqualToAnchor:v150 constant:-1.0];
  v171[0] = v144;
  v133 = [(UIStackView *)self->_textStackView leadingAnchor];
  v138 = [(CarPlaceCardCardViewController *)self view];
  v128 = [v138 leadingAnchor];
  v124 = [v133 constraintEqualToAnchor:v128 constant:10.0];
  v171[1] = v124;
  v119 = [(UIStackView *)self->_textStackView trailingAnchor];
  v3 = [(CarPlaceCardCardViewController *)self view];
  v4 = [v3 trailingAnchor];
  v5 = [v119 constraintEqualToAnchor:v4 constant:-10.0];
  v171[2] = v5;
  v6 = [(UIStackView *)self->_textStackView bottomAnchor];
  v7 = [(CarPlaceCardCardViewController *)self view];
  v8 = [v7 bottomAnchor];
  v9 = [v6 constraintLessThanOrEqualToAnchor:v8];
  v171[3] = v9;
  v10 = [NSArray arrayWithObjects:v171 count:4];
  [v164 addObjectsFromArray:v10];

  addressLabel = self->_addressLabel;
  v12 = self->_textStackView;
  [(CarAutohidingLabel *)addressLabel firstBaselineAnchor];
  v161 = v157 = v12;
  v151 = [(UIStackView *)v12 lastBaselineAnchor];
  LODWORD(v13) = 1144602624;
  v145 = [v161 constraintEqualToAnchor:v151 constant:20.0 priority:v13];
  v170[0] = v145;
  v139 = [(CarAutohidingLabel *)self->_addressLabel firstBaselineAnchor];
  v134 = [(UIStackView *)v12 lastBaselineAnchor];
  v129 = [v139 constraintGreaterThanOrEqualToAnchor:v134 constant:14.0];
  v170[1] = v129;
  v125 = [(CarAutohidingLabel *)self->_addressLabel heightAnchor];
  v120 = [v125 constraintGreaterThanOrEqualToConstant:20.0];
  v170[2] = v120;
  v115 = [(CarAutohidingLabel *)self->_addressLabel leadingAnchor];
  v14 = [(CarPlaceCardCardViewController *)self view];
  v15 = [v14 leadingAnchor];
  v16 = [v115 constraintEqualToAnchor:v15 constant:10.0];
  v170[3] = v16;
  v17 = [(CarAutohidingLabel *)self->_addressLabel trailingAnchor];
  v18 = [(CarPlaceCardCardViewController *)self view];
  v19 = [v18 trailingAnchor];
  v20 = [v17 constraintEqualToAnchor:v19 constant:-10.0];
  v170[4] = v20;
  v21 = [NSArray arrayWithObjects:v170 count:5];
  [v164 addObjectsFromArray:v21];

  v22 = self->_addressLabel;
  v23 = [(CarPlaceCardCardViewController *)self evChargingViewModel];

  if (v23)
  {
    v162 = v22;
    if ([(CarPlaceCardCardViewController *)self _shouldShowEVViewsInline])
    {
      v24 = [(CarPlaceCardCardViewController *)self evChargingAvailabilityVC];
      v25 = [v24 view];

      v158 = [(UILabel *)v25 topAnchor];
      v152 = [(CarAutohidingLabel *)v22 lastBaselineAnchor];
      v146 = [v158 constraintEqualToAnchor:v152 constant:12.0];
      v169[0] = v146;
      v140 = [(UILabel *)v25 leadingAnchor];
      v26 = [(CarPlaceCardCardViewController *)self view];
      v27 = [v26 leadingAnchor];
      v28 = [v140 constraintEqualToAnchor:v27 constant:10.0];
      v169[1] = v28;
      v29 = [(UILabel *)v25 trailingAnchor];
      v30 = [(CarPlaceCardCardViewController *)self view];
      v31 = [v30 trailingAnchor];
      v32 = [v29 constraintEqualToAnchor:v31 constant:-10.0];
      v169[2] = v32;
      v33 = [NSArray arrayWithObjects:v169 count:3];
      [v164 addObjectsFromArray:v33];
    }

    else
    {
      v159 = [(CarCardRoundedButton *)self->_evChargingMoreButton topAnchor];
      v153 = [(CarAutohidingLabel *)v22 lastBaselineAnchor];
      v147 = [v159 constraintEqualToAnchor:v153 constant:6.0];
      v168[0] = v147;
      v141 = [(CarCardRoundedButton *)self->_evChargingMoreButton heightAnchor];
      v135 = [v141 constraintEqualToConstant:30.0];
      v168[1] = v135;
      v130 = [(CarCardRoundedButton *)self->_evChargingMoreButton widthAnchor];
      v126 = [v130 constraintEqualToConstant:30.0];
      v168[2] = v126;
      v116 = [(CarCardRoundedButton *)self->_evChargingMoreButton trailingAnchor];
      v121 = [(CarPlaceCardCardViewController *)self view];
      v112 = [v121 trailingAnchor];
      v109 = [v116 constraintEqualToAnchor:v112 constant:-10.0];
      v168[3] = v109;
      v106 = [(UILabel *)self->_evChargingTitleLabel bottomAnchor];
      v103 = [(UILabel *)self->_evChargingAvailabilityLabel topAnchor];
      v101 = [v106 constraintEqualToAnchor:v103 constant:2.0];
      v168[4] = v101;
      v97 = [(UILabel *)self->_evChargingTitleLabel leadingAnchor];
      v99 = [(CarPlaceCardCardViewController *)self view];
      v94 = [v99 leadingAnchor];
      v91 = [v97 constraintEqualToAnchor:v94 constant:10.0];
      v168[5] = v91;
      v89 = [(UILabel *)self->_evChargingTitleLabel trailingAnchor];
      v87 = [(CarCardRoundedButton *)self->_evChargingMoreButton leadingAnchor];
      v85 = [v89 constraintLessThanOrEqualToAnchor:v87 constant:-10.0];
      v168[6] = v85;
      v83 = [(UILabel *)self->_evChargingAvailabilityLabel bottomAnchor];
      v81 = [(CarCardRoundedButton *)self->_evChargingMoreButton bottomAnchor];
      v34 = [v83 constraintEqualToAnchor:v81];
      v168[7] = v34;
      v35 = [(UILabel *)self->_evChargingAvailabilityLabel leadingAnchor];
      v36 = [(CarPlaceCardCardViewController *)self view];
      v37 = [v36 leadingAnchor];
      v38 = [v35 constraintEqualToAnchor:v37 constant:10.0];
      v168[8] = v38;
      v39 = [(UILabel *)self->_evChargingAvailabilityLabel trailingAnchor];
      v40 = [(CarCardRoundedButton *)self->_evChargingMoreButton leadingAnchor];
      v41 = [v39 constraintLessThanOrEqualToAnchor:v40 constant:-10.0];
      v168[9] = v41;
      v42 = [NSArray arrayWithObjects:v168 count:10];
      evChargingSummaryViewConstraints = self->_evChargingSummaryViewConstraints;
      self->_evChargingSummaryViewConstraints = v42;

      [v164 addObjectsFromArray:self->_evChargingSummaryViewConstraints];
      [(CarCardRoundedButton *)self->_evChargingMoreButton _setCornerRadius:15.0];
      v25 = self->_evChargingAvailabilityLabel;
    }

    v22 = v25;
  }

  v154 = [(CarMoreButton *)self->_moreButton topAnchor];
  v163 = v22;
  v148 = [(CarAutohidingLabel *)v22 lastBaselineAnchor];
  v142 = [v154 constraintGreaterThanOrEqualToAnchor:v148 constant:6.0];
  v167[0] = v142;
  v136 = [(UILabel *)self->_etaLabel bottomAnchor];
  v131 = [(UILabel *)self->_mainDescriptionLabel topAnchor];
  v127 = [v136 constraintEqualToAnchor:v131 constant:2.0];
  v167[1] = v127;
  v117 = [(UILabel *)self->_etaLabel leadingAnchor];
  v122 = [(CarPlaceCardCardViewController *)self view];
  v113 = [v122 leadingAnchor];
  v110 = [v117 constraintEqualToAnchor:v113 constant:10.0];
  v167[2] = v110;
  v107 = [(UILabel *)self->_mainDescriptionLabel bottomAnchor];
  v104 = [(CarMoreButton *)self->_moreButton bottomAnchor];
  v44 = [v107 constraintEqualToAnchor:v104];
  v167[3] = v44;
  v45 = [(UILabel *)self->_mainDescriptionLabel leadingAnchor];
  v46 = [(CarPlaceCardCardViewController *)self view];
  v47 = [v46 leadingAnchor];
  v48 = [v45 constraintEqualToAnchor:v47 constant:10.0];
  v167[4] = v48;
  v49 = [(UILabel *)self->_mainDescriptionLabel trailingAnchor];
  v50 = [(UILabel *)self->_etaLabel trailingAnchor];
  v51 = [v49 constraintEqualToAnchor:v50];
  v167[5] = v51;
  v52 = [NSArray arrayWithObjects:v167 count:6];
  [v164 addObjectsFromArray:v52];

  v53 = [(CarPlaceCardCardViewController *)self _createEtaLabelTrailingConstraint];
  etaLabelTrailingConstraint = self->_etaLabelTrailingConstraint;
  self->_etaLabelTrailingConstraint = v53;

  [v164 addObject:self->_etaLabelTrailingConstraint];
  v155 = [(CarMoreButton *)self->_moreButton heightAnchor];
  v149 = [v155 constraintEqualToConstant:30.0];
  v166[0] = v149;
  v143 = [(CarMoreButton *)self->_moreButton widthAnchor];
  v137 = [v143 constraintEqualToConstant:30.0];
  v166[1] = v137;
  v55 = [(CarMoreButton *)self->_moreButton trailingAnchor];
  v123 = [(CarPlaceCardCardViewController *)self view];
  [v123 trailingAnchor];
  v118 = v132 = v55;
  v114 = [v55 constraintEqualToAnchor:-10.0 constant:?];
  v166[2] = v114;
  v56 = [(CarMoreButton *)self->_moreButton bottomAnchor];
  v108 = [(CarAdvisoriesView *)self->_routeAdvisoriesView topAnchor];
  v111 = v56;
  v105 = [v56 constraintLessThanOrEqualToAnchor:-6.0 constant:?];
  v166[3] = v105;
  v57 = [(CarAdvisoriesView *)self->_routeAdvisoriesView leadingAnchor];
  v100 = [(CarPlaceCardCardViewController *)self view];
  [v100 leadingAnchor];
  v98 = v102 = v57;
  v96 = [v57 constraintEqualToAnchor:10.0 constant:?];
  v166[4] = v96;
  v58 = [(CarAdvisoriesView *)self->_routeAdvisoriesView trailingAnchor];
  v93 = [(CarPlaceCardCardViewController *)self view];
  [v93 trailingAnchor];
  v92 = v95 = v58;
  v90 = [v58 constraintEqualToAnchor:-10.0 constant:?];
  v166[5] = v90;
  v59 = [(CarAdvisoriesView *)self->_routeAdvisoriesView bottomAnchor];
  v86 = [(CarLoadingButton *)self->_goButton topAnchor];
  v88 = v59;
  v84 = [v59 constraintLessThanOrEqualToAnchor:-6.0 constant:?];
  v166[6] = v84;
  v60 = [(CarLoadingButton *)self->_goButton leadingAnchor];
  v80 = [(CarPlaceCardCardViewController *)self view];
  [v80 leadingAnchor];
  v79 = v82 = v60;
  v78 = [v60 constraintEqualToAnchor:10.0 constant:?];
  v166[7] = v78;
  v61 = [(CarLoadingButton *)self->_goButton trailingAnchor];
  v76 = [(CarPlaceCardCardViewController *)self view];
  v62 = [v76 trailingAnchor];
  v77 = v61;
  v63 = [v61 constraintEqualToAnchor:v62 constant:-10.0];
  v166[8] = v63;
  v64 = [(CarLoadingButton *)self->_goButton heightAnchor];
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

  v67 = [v64 constraintEqualToConstant:v66];
  v166[9] = v67;
  v68 = [(CarLoadingButton *)self->_goButton bottomAnchor];
  v69 = [(CarPlaceCardCardViewController *)self view];
  v70 = [v69 bottomAnchor];
  v71 = [v68 constraintEqualToAnchor:v70 constant:-10.0];
  v166[10] = v71;
  v72 = [NSArray arrayWithObjects:v166 count:11];
  [v164 addObjectsFromArray:v72];

  [(CarMoreButton *)self->_moreButton _setCornerRadius:15.0];
  v73 = [(CarAdvisoriesView *)self->_routeAdvisoriesView heightAnchor];
  v74 = [v73 constraintEqualToConstant:0.0];
  routeAdvisoriesHeightConstraint = self->_routeAdvisoriesHeightConstraint;
  self->_routeAdvisoriesHeightConstraint = v74;

  [NSLayoutConstraint activateConstraints:v164];
}

- (void)viewDidDisappear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = CarPlaceCardCardViewController;
  [(CarPlaceCardCardViewController *)&v4 viewDidDisappear:a3];
  [(CarPlaceCardEVChargingViewModel *)self->_evChargingViewModel setIsActive:0];
}

- (void)viewDidAppear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = CarPlaceCardCardViewController;
  [(CarPlaceCardCardViewController *)&v4 viewDidAppear:a3];
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
  v3 = [(CarPlaceCardCardViewController *)self view];
  [v3 setAccessibilityIdentifier:@"CarPlaceCard"];

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
  v20 = [(CarPlaceCardCardViewController *)self view];
  [v20 addSubview:self->_textStackView];

  LODWORD(v21) = 1144619008;
  v22 = [(CarPlaceCardCardViewController *)self _createAutohidingTextlabelWithVerticalCompressionResistancePriority:v21];
  addressLabel = self->_addressLabel;
  self->_addressLabel = v22;

  [(CarAutohidingLabel *)self->_addressLabel setAccessibilityIdentifier:@"AddressLabel"];
  v24 = [(CarPlaceCardCardViewController *)self view];
  [v24 addSubview:self->_addressLabel];

  v25 = [(CarPlaceCardCardViewController *)self evChargingViewModel];

  if (v25)
  {
    if ([(CarPlaceCardCardViewController *)self _shouldShowEVViewsInline])
    {
      v26 = [_TtC4Maps39CarEVChargingAvailabilityViewController alloc];
      v27 = [(CarPlaceCardCardViewController *)self evChargingViewModel];
      v28 = [(CarEVChargingAvailabilityViewController *)v26 initWithViewModal:v27];
      [(CarPlaceCardCardViewController *)self setEvChargingAvailabilityVC:v28];

      v29 = [(CarPlaceCardCardViewController *)self evChargingAvailabilityVC];
      [(CarPlaceCardCardViewController *)self addChildViewController:v29];

      v30 = [(CarPlaceCardCardViewController *)self view];
      v31 = [(CarPlaceCardCardViewController *)self evChargingAvailabilityVC];
      v32 = [v31 view];
      [v30 addSubview:v32];

      v33 = [(CarPlaceCardCardViewController *)self evChargingAvailabilityVC];
      v34 = [v33 view];
      [v34 setTranslatesAutoresizingMaskIntoConstraints:0];

      v35 = [(CarPlaceCardCardViewController *)self evChargingAvailabilityVC];
      [v35 didMoveToParentViewController:self];
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
      v44 = [(CarPlaceCardCardViewController *)self view];
      [v44 addSubview:self->_evChargingTitleLabel];

      v45 = [[UILabel alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
      evChargingAvailabilityLabel = self->_evChargingAvailabilityLabel;
      self->_evChargingAvailabilityLabel = v45;

      [(UILabel *)self->_evChargingAvailabilityLabel setAccessibilityIdentifier:@"EVChargingAvailabilityLabel"];
      [(UILabel *)self->_evChargingAvailabilityLabel setTranslatesAutoresizingMaskIntoConstraints:0];
      LODWORD(v47) = 1148846080;
      [(UILabel *)self->_evChargingAvailabilityLabel setContentHuggingPriority:1 forAxis:v47];
      LODWORD(v48) = 1144700928;
      [(UILabel *)self->_evChargingAvailabilityLabel setContentCompressionResistancePriority:0 forAxis:v48];
      v49 = [(CarPlaceCardCardViewController *)self view];
      [v49 addSubview:self->_evChargingAvailabilityLabel];

      v50 = [[CarCardRoundedButton alloc] initWithFrame:CGRectZero.origin.x, y, width, height];
      evChargingMoreButton = self->_evChargingMoreButton;
      self->_evChargingMoreButton = v50;

      [(CarCardRoundedButton *)self->_evChargingMoreButton setAccessibilityIdentifier:@"EVChargingMoreButton"];
      [(CarCardRoundedButton *)self->_evChargingMoreButton setTranslatesAutoresizingMaskIntoConstraints:0];
      LODWORD(v52) = 1132068864;
      [(CarCardRoundedButton *)self->_evChargingMoreButton setContentHuggingPriority:1 forAxis:v52];
      LODWORD(v53) = 1148846080;
      [(CarCardRoundedButton *)self->_evChargingMoreButton setContentCompressionResistancePriority:0 forAxis:v53];
      LODWORD(v54) = 1148846080;
      [(CarCardRoundedButton *)self->_evChargingMoreButton setContentCompressionResistancePriority:1 forAxis:v54];
      [(CarCardRoundedButton *)self->_evChargingMoreButton addTarget:self action:"_evChargingMoreButtonPressed:" forControlEvents:64];
      v35 = [(CarPlaceCardCardViewController *)self view];
      [v35 addSubview:self->_evChargingMoreButton];
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
  v63 = [(CarPlaceCardCardViewController *)self view];
  [v63 addSubview:self->_etaLabel];

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
  v69 = [(CarPlaceCardCardViewController *)self view];
  [v69 addSubview:self->_mainDescriptionLabel];

  v70 = [[CarAdvisoriesView alloc] initWithFrame:CGRectZero.origin.x, v56, v57, v58];
  routeAdvisoriesView = self->_routeAdvisoriesView;
  self->_routeAdvisoriesView = v70;

  [(CarAdvisoriesView *)self->_routeAdvisoriesView setTranslatesAutoresizingMaskIntoConstraints:0];
  LODWORD(v72) = 1148846080;
  [(CarAdvisoriesView *)self->_routeAdvisoriesView setContentHuggingPriority:1 forAxis:v72];
  LODWORD(v73) = 1144651776;
  [(CarAdvisoriesView *)self->_routeAdvisoriesView setContentCompressionResistancePriority:1 forAxis:v73];
  v74 = [(CarPlaceCardCardViewController *)self view];
  [v74 addSubview:self->_routeAdvisoriesView];

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
  v80 = [(CarPlaceCardCardViewController *)self view];
  [v80 addSubview:self->_moreButton];

  v81 = [(CarCardRoundedButton *)[CarLoadingButton alloc] initWithFrame:CGRectZero.origin.x, v56, v57, v58];
  goButton = self->_goButton;
  self->_goButton = v81;

  [(CarLoadingButton *)self->_goButton setAccessibilityIdentifier:@"GoButton"];
  v83 = self->_goButton;
  v84 = [(CarLoadingButton *)v83 accessibilityTraits];
  [(CarLoadingButton *)v83 setAccessibilityTraits:UIAccessibilityTraitButton | v84];
  [(CarLoadingButton *)self->_goButton setTranslatesAutoresizingMaskIntoConstraints:0];
  LODWORD(v85) = 1148846080;
  [(CarLoadingButton *)self->_goButton setContentHuggingPriority:1 forAxis:v85];
  LODWORD(v86) = 1148846080;
  [(CarLoadingButton *)self->_goButton setContentCompressionResistancePriority:1 forAxis:v86];
  [(CarLoadingButton *)self->_goButton addTarget:self action:"_goButtonPressed:" forControlEvents:64];
  v87 = [(CarPlaceCardCardViewController *)self view];
  [v87 addSubview:self->_goButton];

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
    v5 = [(SearchResult *)self->_searchResult mapItem];
    v6 = [v5 _detourInfo];

    if (v6)
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
      v8 = [[MKETAProvider alloc] initWithMapItem:v5];
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

- (CarPlaceCardCardViewController)initWithSearchResult:(id)a3 style:(int64_t)a4 dataSource:(id)a5 delegate:(id)a6
{
  v11 = a3;
  v12 = a5;
  v13 = a6;
  v28.receiver = self;
  v28.super_class = CarPlaceCardCardViewController;
  v14 = [(CarPlaceCardCardViewController *)&v28 initWithNibName:0 bundle:0];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_searchResult, a3);
    objc_storeWeak(&v15->_dataSource, v12);
    objc_storeWeak(&v15->_delegate, v13);
    v15->_style = a4;
    v16 = sub_100006E1C();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      v17 = [(CarPlaceCardCardViewController *)v15 mapItem];
      v18 = [v17 name];
      v19 = [(CarPlaceCardCardViewController *)v15 mapItem];
      v20 = [v19 _muid];
      *buf = 138543875;
      v30 = v15;
      v31 = 2113;
      v32 = v18;
      v33 = 2049;
      v34 = v20;
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

  v24 = [(CarPlaceCardCardViewController *)v15 _createEVChargingViewModel];
  evChargingViewModel = v15->_evChargingViewModel;
  v15->_evChargingViewModel = v24;

  v26 = [(CarPlaceCardCardViewController *)v15 view];
  [v26 _maps_annotateViewWithCarPlaceCardCardViewController:v15];

  return v15;
}

@end