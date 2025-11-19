@interface SharedTripContaineeViewController
- (BOOL)_senderIsContact;
- (BOOL)_shouldShowDirectionsButton;
- (BOOL)tableView:(id)a3 shouldHighlightRowAtIndexPath:(id)a4;
- (SharedTripContaineeViewController)initWithSharedTrip:(id)a3;
- (SharedTripsActionCoordination)actionDelegate;
- (id)_refetchedContact:(id)a3;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (int64_t)numberOfSectionsInTableView:(id)a3;
- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4;
- (void)_addContact;
- (void)_addToContact;
- (void)_loadActions;
- (void)_presentPlaceCardForMapItem:(id)a3;
- (void)_refreshSubscriptionToken;
- (void)_reloadWithContact:(id)a3;
- (void)_updateButtons;
- (void)_updateButtonsForLocationUpdate;
- (void)_updateFonts;
- (void)_updateWithTrip:(id)a3;
- (void)applyAlphaToContent:(double)a3;
- (void)blockSender;
- (void)blockSenderAction;
- (void)blockTrip;
- (void)contactButtonTapped;
- (void)contactPicker:(id)a3 didSelectContact:(id)a4;
- (void)contactViewController:(id)a3 didCompleteWithContact:(id)a4;
- (void)dealloc;
- (void)didMoveToParentViewController:(id)a3;
- (void)directionsButtonTapped;
- (void)headerViewButtonTapped:(id)a3 buttonType:(unint64_t)a4;
- (void)locationManagerUpdatedLocation:(id)a3;
- (void)registerActionsTableViewCellClasses;
- (void)setSharedTrip:(id)a3;
- (void)setupSubviews;
- (void)sharedTripService:(id)a3 didRemoveSharedTrip:(id)a4;
- (void)sharedTripServiceDidUpdateReceivingAvailability:(id)a3;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)tapToRadarButtonTapped;
- (void)updateContent;
- (void)updateTheme;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
@end

@implementation SharedTripContaineeViewController

- (SharedTripsActionCoordination)actionDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_actionDelegate);

  return WeakRetained;
}

- (void)sharedTripService:(id)a3 didRemoveSharedTrip:(id)a4
{
  v5 = a4;
  v6 = [(SharedTripContaineeViewController *)self sharedTrip];
  v7 = [v6 groupIdentifier];
  v8 = [v5 groupIdentifier];

  LODWORD(v5) = [v7 isEqualToString:v8];
  if (v5)
  {
    v9 = [(SharedTripContaineeViewController *)self actionDelegate];
    [v9 closeSharedTripDetail];
  }
}

- (void)sharedTripServiceDidUpdateReceivingAvailability:(id)a3
{
  [a3 receivedTrips];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v4 = v18 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v16;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v16 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v15 + 1) + 8 * i);
        v10 = [v9 groupIdentifier];
        v11 = [(SharedTripContaineeViewController *)self sharedTrip];
        v12 = [v11 groupIdentifier];
        v13 = [v10 isEqualToString:v12];

        if (v13)
        {
          [(SharedTripContaineeViewController *)self _updateWithTrip:v9];
          v14 = v4;
          goto LABEL_11;
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v14 = [(SharedTripContaineeViewController *)self actionDelegate];
  [v14 closeSharedTripDetail];
LABEL_11:
}

- (void)_updateWithTrip:(id)a3
{
  v9 = a3;
  v4 = [(SharedTripContaineeViewController *)self sharedTrip];

  if (v4 == v9)
  {
    [(SharedTripContaineeViewController *)self updateContent];
  }

  else
  {
    v5 = [(SharedTripContaineeViewController *)self sharedTrip];
    v6 = [v5 groupIdentifier];
    v7 = [v9 groupIdentifier];
    v8 = [v6 isEqualToString:v7];

    if (v8)
    {
      [(SharedTripContaineeViewController *)self setSharedTrip:v9];
    }
  }
}

- (void)applyAlphaToContent:(double)a3
{
  v8.receiver = self;
  v8.super_class = SharedTripContaineeViewController;
  [(ContaineeViewController *)&v8 applyAlphaToContent:?];
  v5 = [(SimpleContaineeViewController *)self topActionsContainerView];
  [v5 setAlpha:a3];

  v6 = [(SimpleContaineeViewController *)self metadataContainerView];
  [v6 setAlpha:a3];

  v7 = [(SimpleContaineeViewController *)self actionsTableView];
  [v7 setAlpha:a3];
}

- (void)tapToRadarButtonTapped
{
  v2 = +[MapsRadarController sharedInstance];
  [v2 launchTTR];
}

- (void)directionsButtonTapped
{
  v3 = [(SharedTripContaineeViewController *)self actionDelegate];
  v4 = [(SharedTripContaineeViewController *)self sharedTrip];
  [v3 didRequestDirectionsForSharedTrip:v4];

  v6 = [(SharedTripContaineeViewController *)self sharedTrip];
  v5 = [v6 _transportTypeStringForAnalytics];
  [GEOAPPortal captureUserAction:6003 target:650 value:v5];
}

- (void)contactButtonTapped
{
  v3 = [(SharedTripContaineeViewController *)self actionDelegate];
  [v3 didRequestContactsCard];

  v5 = [(SharedTripContaineeViewController *)self sharedTrip];
  v4 = [v5 _transportTypeStringForAnalytics];
  [GEOAPPortal captureUserAction:6044 target:650 value:v4];
}

- (void)headerViewButtonTapped:(id)a3 buttonType:(unint64_t)a4
{
  v5 = [(SharedTripContaineeViewController *)self actionDelegate:a3];
  [v5 closeSharedTripDetail];

  v7 = [(SharedTripContaineeViewController *)self sharedTrip];
  v6 = [v7 _transportTypeStringForAnalytics];
  [GEOAPPortal captureUserAction:4 target:650 value:v6];
}

- (void)blockTrip
{
  v3 = +[MSPSharedTripService sharedInstance];
  v4 = [(SharedTripContaineeViewController *)self sharedTrip];
  v5 = [v4 groupIdentifier];
  [v3 blockSharedTripWithIdentifier:v5];

  v7 = [(SharedTripContaineeViewController *)self sharedTrip];
  v6 = [v7 _transportTypeStringForAnalytics];
  [GEOAPPortal captureUserAction:9028 target:650 value:v6];
}

- (void)blockSenderAction
{
  v3 = [(SharedTripContaineeViewController *)self sharedTrip];
  v4 = [v3 senderInfo];
  v5 = [v4 fromIdentifier];

  if (v5)
  {
    CMFItemFromString = CreateCMFItemFromString();
    v7 = sub_1000946AC();
    v8 = v7;
    if (CMFItemFromString)
    {
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v12 = 138477827;
        v13 = v5;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Blocking sender handle %{private}@", &v12, 0xCu);
      }

      CMFBlockListAddItemForAllServices();
      CFRelease(CMFItemFromString);
    }

    else
    {
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        LOWORD(v12) = 0;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "Unable to create filter item to block sender", &v12, 2u);
      }
    }
  }

  v9 = +[MSPSharedTripService sharedInstance];
  v10 = [(SharedTripContaineeViewController *)self sharedTrip];
  v11 = [v10 groupIdentifier];
  [v9 blockSharedTripWithIdentifier:v11];
}

- (void)blockSender
{
  objc_initWeak(&location, self);
  if ([(SharedTripContaineeViewController *)self _senderIsContact])
  {
    v3 = +[NSBundle mainBundle];
    [v3 localizedStringForKey:@"Block this Contact [Shared ETA]" value:@"localized string not found" table:0];
  }

  else
  {
    v3 = +[NSBundle mainBundle];
    [v3 localizedStringForKey:@"Block this Sender [Shared ETA]" value:@"localized string not found" table:0];
  }
  v4 = ;

  v5 = +[NSBundle mainBundle];
  v6 = [v5 localizedStringForKey:@"[SharedETA] Alert's text confirmation" value:@"localized string not found" table:0];
  v7 = [UIAlertController alertControllerWithTitle:0 message:v6 preferredStyle:0];

  [v7 setAccessibilityIdentifier:@"BlockContactAlert"];
  v8 = [(SimpleContaineeViewController *)self actionsTableView];
  v9 = [v7 popoverPresentationController];
  [v9 setSourceView:v8];

  v10 = [(SimpleContaineeViewController *)self actionsTableView];
  [v10 bounds];
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v19 = [v7 popoverPresentationController];
  [v19 setSourceRect:{v12, v14, v16, v18}];

  v24 = _NSConcreteStackBlock;
  v25 = 3221225472;
  v26 = sub_1008DB108;
  v27 = &unk_101658AF0;
  objc_copyWeak(&v28, &location);
  v20 = [UIAlertAction actionWithTitle:v4 style:2 handler:&v24];
  [v7 addAction:{v20, v24, v25, v26, v27}];

  v21 = +[NSBundle mainBundle];
  v22 = [v21 localizedStringForKey:@"[SharedETA] Alert's cancel button title" value:@"localized string not found" table:0];
  v23 = [UIAlertAction actionWithTitle:v22 style:1 handler:&stru_10162DC40];
  [v7 addAction:v23];

  [(SharedTripContaineeViewController *)self _maps_topMostPresentViewController:v7 animated:1 completion:0];
  objc_destroyWeak(&v28);

  objc_destroyWeak(&location);
}

- (void)locationManagerUpdatedLocation:(id)a3
{
  v4 = [a3 lastLocation];
  [(MapsThrottler *)self->_buttonUpdateThrottler setValue:v4];
}

- (void)_reloadWithContact:(id)a3
{
  v4 = a3;
  v9 = [(SharedTripContaineeViewController *)self sharedTrip];
  v5 = [v4 identifier];
  v6 = [v9 senderInfo];
  [v6 setLocalContactIdentifier:v5];

  v7 = [CNContactFormatter stringFromContact:v4 style:1000];

  v8 = [v9 senderInfo];
  [v8 setLocalName:v7];

  [(SharedTripContaineeViewController *)self updateContent];
  [(SharedTripContaineeViewController *)self _loadActions];
}

- (void)contactPicker:(id)a3 didSelectContact:(id)a4
{
  v5 = a4;
  v6 = [(SharedTripContaineeViewController *)self sharedTrip];
  v7 = [v6 senderInfo];
  v26 = [v7 fromIdentifier];

  v8 = [(SharedTripContaineeViewController *)self _refetchedContact:v5];

  v9 = [v8 mutableCopy];
  v10 = [CNContact contactWithDisplayName:0 emailOrPhoneNumber:v26];
  v11 = [v10 emailAddresses];
  v12 = [v11 count];

  if (v12)
  {
    v13 = [v9 emailAddresses];
    if (v13)
    {
      v14 = [v9 emailAddresses];
      v15 = [v14 mutableCopy];
    }

    else
    {
      v15 = [&__NSArray0__struct mutableCopy];
    }

    v16 = [v10 emailAddresses];
    [v15 addObjectsFromArray:v16];

    [v9 setEmailAddresses:v15];
  }

  v17 = [v10 phoneNumbers];
  v18 = [v17 count];

  if (v18)
  {
    v19 = [v9 phoneNumbers];
    if (v19)
    {
      v20 = [v9 phoneNumbers];
      v21 = [v20 mutableCopy];
    }

    else
    {
      v21 = [&__NSArray0__struct mutableCopy];
    }

    v22 = [v10 phoneNumbers];
    [v21 addObjectsFromArray:v22];

    [v9 setPhoneNumbers:v21];
  }

  v23 = objc_alloc_init(CNSaveRequest);
  v24 = +[AddressBookManager sharedManager];
  v25 = [v24 contactStore];

  [v23 updateContact:v9];
  [v25 executeSaveRequest:v23 error:0];
  [(SharedTripContaineeViewController *)self _reloadWithContact:v9];
}

- (void)contactViewController:(id)a3 didCompleteWithContact:(id)a4
{
  v7 = a4;
  [a3 dismissViewControllerAnimated:1 completion:0];
  v6 = v7;
  if (v7)
  {
    [(SharedTripContaineeViewController *)self _reloadWithContact:v7];
    v6 = v7;
  }
}

- (id)_refetchedContact:(id)a3
{
  v3 = a3;
  v4 = +[AddressBookManager sharedManager];
  v5 = [v4 properties];

  if (([v3 areKeysAvailable:v5] & 1) == 0)
  {
    v6 = +[AddressBookManager sharedManager];
    v7 = [v6 contactStore];

    v8 = [v3 identifier];
    v9 = [v7 unifiedContactWithIdentifier:v8 keysToFetch:v5 error:0];

    v3 = v9;
  }

  return v3;
}

- (void)_addToContact
{
  v3 = objc_alloc_init(CNContactPickerViewController);
  [v3 setDelegate:self];
  [(SharedTripContaineeViewController *)self _maps_topMostPresentViewController:v3 animated:1 completion:0];
}

- (void)_addContact
{
  v3 = [(SharedTripContaineeViewController *)self sharedTrip];
  v4 = [v3 senderName];
  v5 = [(SharedTripContaineeViewController *)self sharedTrip];
  v6 = [v5 senderInfo];
  v7 = [v6 fromIdentifier];
  v10 = [CNContact contactWithDisplayName:v4 emailOrPhoneNumber:v7];

  v8 = [CNContactViewController viewControllerForNewContact:v10];
  [v8 setDisplayMode:1];
  [v8 setDelegate:self];
  v9 = [[UINavigationController alloc] initWithRootViewController:v8];
  [v9 setModalPresentationStyle:-2];
  [(SharedTripContaineeViewController *)self _maps_topMostPresentViewController:v9 animated:1 completion:0];
}

- (BOOL)_senderIsContact
{
  v2 = [(SharedTripContaineeViewController *)self sharedTrip];
  v3 = [v2 senderInfo];
  v4 = [v3 localContactIdentifier];
  v5 = v4 != 0;

  return v5;
}

- (void)_presentPlaceCardForMapItem:(id)a3
{
  v7 = a3;
  if (v7)
  {
    v4 = [[MKMapItem alloc] initWithGeoMapItem:v7 isPlaceHolderPlace:0];
    if (v4)
    {
      v5 = v4;
      v6 = [(SharedTripContaineeViewController *)self actionDelegate];
      [v6 didSelectStopWithMapItem:v5];
    }
  }
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([v7 section])
  {
    v12.receiver = self;
    v12.super_class = SharedTripContaineeViewController;
    [(SimpleContaineeViewController *)&v12 tableView:v6 didSelectRowAtIndexPath:v7];
  }

  else
  {
    v8 = [v7 row];
    v9 = [(SharedTripContaineeViewController *)self sharedTrip];
    v10 = [v9 waypointInfoAtIndex:v8];

    if ([v10 hasMapItemStorage])
    {
      v11 = [v10 mapItemStorage];
      [(SharedTripContaineeViewController *)self _presentPlaceCardForMapItem:v11];

      [v6 deselectRowAtIndexPath:v7 animated:1];
    }
  }
}

- (BOOL)tableView:(id)a3 shouldHighlightRowAtIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([v7 section])
  {
    v13.receiver = self;
    v13.super_class = SharedTripContaineeViewController;
    v8 = [(SimpleContaineeViewController *)&v13 tableView:v6 shouldHighlightRowAtIndexPath:v7];
  }

  else
  {
    v9 = [v7 row];

    v10 = [(SharedTripContaineeViewController *)self sharedTrip];
    v11 = [v10 waypointInfoAtIndex:v9];

    v8 = [v11 hasMapItemStorage];
  }

  return v8;
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v6 = a4;
  v7 = a3;
  if ([v6 section])
  {
    v48.receiver = self;
    v48.super_class = SharedTripContaineeViewController;
    v8 = [(SimpleContaineeViewController *)&v48 tableView:v7 cellForRowAtIndexPath:v6];
    goto LABEL_25;
  }

  v8 = [v7 dequeueReusableCellWithIdentifier:@"StopCell" forIndexPath:v6];

  [v8 setAccessibilityIdentifier:@"SharedTripStopCell"];
  v9 = [v6 row];
  v7 = [(NSArray *)self->_remainingWaypoints objectAtIndexedSubscript:v9];
  v10 = +[UIListContentConfiguration subtitleCellConfiguration];
  v11 = 16.0;
  if (sub_10000FA08(self) == 5)
  {
    [v10 directionalLayoutMargins];
    v11 = v12;
  }

  v13 = sub_10000FA08(self);
  v14 = 4.0;
  if (v13 != 5)
  {
    v14 = 16.0;
  }

  [v10 setDirectionalLayoutMargins:{v14, v11, v14, v11}];
  v15 = [v7 name];
  [v10 setText:v15];

  if (v9 >= [(NSArray *)self->_remainingETAs count])
  {
    v16 = 0;
  }

  else
  {
    v16 = [(NSArray *)self->_remainingETAs objectAtIndexedSubscript:v9];
  }

  v44 = v16;
  if ([v16 hasEtaTimestamp])
  {
    [v16 etaTimestamp];
    v17 = [NSDate dateWithTimeIntervalSinceReferenceDate:?];
    v18 = +[NSTimeZone localTimeZone];
    v19 = [NSDateFormatter _navigation_localizedTimestampStringForDepartureArrivalDate:v17 inTimeZone:v18 canIncludeDate:0];

    v20 = +[NSBundle mainBundle];
    v21 = [v20 localizedStringForKey:@"[Shared Trip value:Details] Waypoint ETA" table:{@"localized string not found", 0}];
    v22 = [NSString stringWithFormat:v21, v19, v44];

    [v10 setSecondaryText:v22];
LABEL_14:

    goto LABEL_15;
  }

  if ([v7 hasMapItemStorage])
  {
    v23 = [MKMapItem alloc];
    v24 = [v7 mapItemStorage];
    v17 = [v23 initWithGeoMapItem:v24 isPlaceHolderPlace:0];

    v25 = [v17 _addressFormattedAsMultilineAddress];
    [v10 setSecondaryText:v25];

    v19 = [v10 secondaryTextProperties];
    [v19 setNumberOfLines:0];
    goto LABEL_14;
  }

LABEL_15:
  v26 = [UIFontDescriptor preferredFontDescriptorWithTextStyle:UIFontTextStyleHeadline];
  v27 = [v26 fontDescriptorWithSymbolicTraits:2];
  v28 = [UIFont fontWithDescriptor:v27 size:0.0];
  v29 = [v10 textProperties];
  [v29 setFont:v28];

  v30 = [v10 textProperties];
  [v30 setNumberOfLines:0];

  v31 = [UIFont preferredFontForTextStyle:UIFontTextStyleSubheadline];
  v32 = [v10 secondaryTextProperties];
  [v32 setFont:v31];

  v33 = +[UIColor secondaryLabelColor];
  v34 = [v10 secondaryTextProperties];
  [v34 setColor:v33];

  [v8 setContentConfiguration:v10];
  if ([v7 hasMapItemStorage])
  {
    v35 = objc_alloc_init(MapsUIImageGEOFeatureSpec);
    [(MapsUIImageGEOFeatureSpec *)v35 setTransparent:0];
    [(MapsUIImageGEOFeatureSpec *)v35 setInverted:0];
    if (sub_10000FA08(self) == 5)
    {
      v36 = 1;
    }

    else
    {
      v36 = 2;
    }

    [(MapsUIImageGEOFeatureSpec *)v35 setSize:v36];
    v37 = [v7 mapItemStorage];
    v38 = [v37 _styleAttributes];
    [(MapsUIImageGEOFeatureSpec *)v35 setStyle:v38];

    v39 = +[MapsUIImageCache sharedCache];
    v45[0] = _NSConcreteStackBlock;
    v45[1] = 3221225472;
    v45[2] = sub_1008DC07C;
    v45[3] = &unk_10165FED0;
    v46 = v10;
    v47 = v8;
    [v39 getImageForSpec:v35 loadImageOnBackgroundQueue:0 completion:v45];
  }

  else
  {
    if ([v7 hasChargingStationInfo])
    {
      +[GEOFeatureStyleAttributes evChargerStyleAttributes];
    }

    else
    {
      +[GEOFeatureStyleAttributes addressMarkerStyleAttributes];
    }
    v40 = ;
    v41 = [(SharedTripContaineeViewController *)self traitCollection];
    [v41 displayScale];
    v42 = [MKIconManager imageForStyle:v40 size:2 forScale:0 format:?];
    [v10 setImage:v42];

    [v8 setContentConfiguration:v10];
  }

LABEL_25:

  return v8;
}

- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4
{
  if (a4)
  {
    v7.receiver = self;
    v7.super_class = SharedTripContaineeViewController;
    return [(SimpleContaineeViewController *)&v7 tableView:a3 numberOfRowsInSection:?];
  }

  else
  {
    remainingWaypoints = self->_remainingWaypoints;

    return [(NSArray *)remainingWaypoints count];
  }
}

- (int64_t)numberOfSectionsInTableView:(id)a3
{
  v4.receiver = self;
  v4.super_class = SharedTripContaineeViewController;
  return [(SimpleContaineeViewController *)&v4 numberOfSectionsInTableView:a3]+ 1;
}

- (void)_refreshSubscriptionToken
{
  v9 = [(SharedTripContaineeViewController *)self _maps_uiScene];
  v3 = [(SharedTripContaineeViewController *)self sharedTrip];
  if (v3 && self->_isVisible)
  {

    if (v9)
    {
      v4 = [SharedTripSceneAwareSubscription alloc];
      v5 = [(SharedTripContaineeViewController *)self sharedTrip];
      v6 = [v5 groupIdentifier];
      v7 = [(SharedTripSceneAwareSubscription *)v4 initWithTripIdentifier:v6 scene:v9];
      subscriptionToken = self->_subscriptionToken;
      self->_subscriptionToken = v7;

      goto LABEL_7;
    }
  }

  else
  {
  }

  v5 = self->_subscriptionToken;
  self->_subscriptionToken = 0;
LABEL_7:
}

- (void)setSharedTrip:(id)a3
{
  v5 = a3;
  if (self->_sharedTrip != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_sharedTrip, a3);
    [(SharedTripContaineeViewController *)self updateContent];
    v5 = v6;
  }
}

- (void)didMoveToParentViewController:(id)a3
{
  v4.receiver = self;
  v4.super_class = SharedTripContaineeViewController;
  [(SharedTripContaineeViewController *)&v4 didMoveToParentViewController:a3];
  [(SharedTripContaineeViewController *)self _refreshSubscriptionToken];
}

- (void)_updateFonts
{
  v3 = [UIFont preferredFontForTextStyle:UIFontTextStyleTitle1];
  v4 = [v3 fontDescriptor];
  v5 = [v4 fontDescriptorWithSymbolicTraits:2];
  v6 = [UIFont fontWithDescriptor:v5 size:0.0];
  [(UILabel *)self->_headerTitleLabel setFont:v6];

  v17 = [UIFontDescriptor preferredFontDescriptorWithTextStyle:UIFontTextStyleTitle3];
  v7 = [v17 fontDescriptorWithSymbolicTraits:2];
  v8 = [UIFont fontWithDescriptor:v7 size:0.0];
  [(MapsThemeLabel *)self->_destinationHeaderLabel setFont:v8];

  v9 = [UIFontDescriptor preferredFontDescriptorWithTextStyle:UIFontTextStyleSubhead addingSymbolicTraits:2 options:0];
  v10 = [UIFont fontWithDescriptor:v9 size:0.0];
  v11 = [(UIButton *)self->_directionsButton titleLabel];
  [v11 setFont:v10];

  v12 = [(UIButton *)self->_directionsButton titleLabel];
  v13 = [v12 font];
  v14 = [(UIButton *)self->_contactButton titleLabel];
  [v14 setFont:v13];

  if (sub_10000FA08(self) == 5)
  {
    +[UIFont system17];
  }

  else
  {
    [UIFont preferredFontForTextStyle:UIFontTextStyleSubheadline];
  }
  v15 = ;
  [(UILabel *)self->_headerSubtitleLabel setFont:v15];

  v16 = [(UILabel *)self->_headerSubtitleLabel font];
  [(UILabel *)self->_handleLabel setFont:v16];
}

- (void)updateTheme
{
  v6.receiver = self;
  v6.super_class = SharedTripContaineeViewController;
  [(SimpleContaineeViewController *)&v6 updateTheme];
  if (sub_10000FA08(self) == 5)
  {
    directionsButton = self->_directionsButton;
    v4 = [(SharedTripContaineeViewController *)self theme];
    v5 = [v4 keyColor];
    [(UIButton *)directionsButton setTitleColor:v5 forState:0];
  }
}

- (void)_updateButtons
{
  v3 = +[NSBundle mainBundle];
  v4 = [v3 localizedStringForKey:@"To (destination)[SharedETA]" value:@"localized string not found" table:0];

  v5 = [(SharedTripContaineeViewController *)self sharedTrip];
  v6 = [v5 destinationName];

  if (-[NSArray count](self->_remainingWaypoints, "count") >= 2 && [v6 length])
  {
    v7 = [NSString stringWithFormat:v4, v6];
  }

  else
  {
    v7 = 0;
  }

  v8 = [(UIButton *)self->_directionsButton configuration];
  v37 = v7;
  [v8 setSubtitle:v7];
  [(UIButton *)self->_directionsButton setConfiguration:v8];
  v9 = [[NSMutableArray alloc] initWithCapacity:2];
  v10 = [(SharedTripContaineeViewController *)self sharedTrip];
  v11 = [v10 destinationWaypointMapItem];

  v12 = [CLLocation alloc];
  [v11 coordinate];
  v14 = v13;
  [v11 coordinate];
  v15 = [v12 initWithLatitude:v14 longitude:?];
  v16 = +[MKLocationManager sharedLocationManager];
  v17 = [v16 lastLocation];
  v36 = v15;
  [v17 distanceFromLocation:v15];
  v19 = v18;

  LODWORD(v16) = [(SharedTripContaineeViewController *)self _shouldShowDirectionsButton];
  v20 = sub_1000946AC();
  v21 = os_log_type_enabled(v20, OS_LOG_TYPE_INFO);
  if (v16)
  {
    if (v21)
    {
      *buf = 134283521;
      v39 = v19;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_INFO, "Will display Directions for button distance: %{private}lfm", buf, 0xCu);
    }

    [v9 addObject:self->_directionsButton];
  }

  else
  {
    if (v21)
    {
      *buf = 134283521;
      v39 = v19;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_INFO, "Will NOT display Directions button for distance: %{private}lfm", buf, 0xCu);
    }
  }

  v22 = [(SharedTripContaineeViewController *)self sharedTrip];
  v23 = [v22 senderInfo];
  v24 = [v23 localContactIdentifier];

  v25 = [v24 length];
  v26 = +[AddressBookManager addressBookAllowed];
  v27 = sub_1000946AC();
  v28 = os_log_type_enabled(v27, OS_LOG_TYPE_INFO);
  if (v25 && v26)
  {
    if (v28)
    {
      *buf = 138477827;
      v39 = v24;
      _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_INFO, "Will display Contact button for sender:%{private}@", buf, 0xCu);
    }

    v29 = [(UIButton *)self->_contactButton configuration];

    v30 = [(SharedTripContaineeViewController *)self sharedTrip];
    v31 = [v30 senderInfo];
    v32 = [v31 localName];
    [v29 setSubtitle:v32];

    [(UIButton *)self->_contactButton setConfiguration:v29];
    [v9 addObject:self->_contactButton];
    v8 = v29;
  }

  else
  {
    if (v28)
    {
      v33 = @"NO";
      if (v26)
      {
        v33 = @"YES";
      }

      v34 = v33;
      *buf = 138478083;
      v39 = v24;
      v40 = 2112;
      v41 = v34;
      _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_INFO, "Will NOT display Contact button for sender: %{private}@ (Contacts access authorized: %@)", buf, 0x16u);
    }
  }

  v35 = [(SimpleContaineeViewController *)self topActionsContainerView];
  [v35 _maps_setArrangedSubviews:v9];
}

- (void)_updateButtonsForLocationUpdate
{
  v3 = [(SharedTripContaineeViewController *)self _shouldShowDirectionsButton];
  v4 = [(UIButton *)self->_directionsButton superview];
  if (v3)
  {
    if (v4)
    {

      return;
    }
  }

  else
  {
    v5 = v4;

    if (!v5)
    {
      return;
    }
  }

  [(SharedTripContaineeViewController *)self _updateButtons];
}

- (BOOL)_shouldShowDirectionsButton
{
  v2 = [(SharedTripContaineeViewController *)self sharedTrip];
  v3 = [v2 destinationWaypointMapItem];

  v4 = [CLLocation alloc];
  [v3 coordinate];
  v6 = v5;
  [v3 coordinate];
  v7 = [v4 initWithLatitude:v6 longitude:?];
  v8 = +[MKLocationManager sharedLocationManager];
  v9 = [v8 lastLocation];

  [v9 distanceFromLocation:v7];
  LOBYTE(v8) = v9 == 0 || v10 >= 500.0;

  return v8 & 1;
}

- (void)updateContent
{
  if (![(SharedTripContaineeViewController *)self isViewLoaded])
  {
    return;
  }

  v3 = [(SharedTripContaineeViewController *)self sharedTrip];
  v42 = [v3 destinationName];

  v4 = [v42 length];
  v5 = +[NSBundle mainBundle];
  v6 = v5;
  if (v4)
  {
    v7 = [v5 localizedStringForKey:@"(person)'s route to (location) [shared eta]" value:@"localized string not found" table:0];
    v8 = [(SharedTripContaineeViewController *)self sharedTrip];
    v9 = [v8 senderName];
    v10 = [(SharedTripContaineeViewController *)self sharedTrip];
    v11 = [v10 destinationName];
    v12 = [NSString stringWithFormat:v7, v9, v11];
    [(UILabel *)self->_headerTitleLabel setText:v12];
  }

  else
  {
    v7 = [v5 localizedStringForKey:@"(person)'s route [shared eta]" value:@"localized string not found" table:0];
    v8 = [(SharedTripContaineeViewController *)self sharedTrip];
    v9 = [v8 senderName];
    v10 = [NSString stringWithFormat:v7, v9];
    [(UILabel *)self->_headerTitleLabel setText:v10];
  }

  v13 = [(SharedTripContaineeViewController *)self sharedTrip];
  v14 = [v13 homeCellSubtitle];
  [(UILabel *)self->_headerSubtitleLabel setText:v14];

  v15 = [(SharedTripContaineeViewController *)self sharedTrip];
  v16 = [v15 senderInfo];
  v17 = [v16 hasLocalContactIdentifier];

  if (v17)
  {
    p_handleLabel = &self->_handleLabel;
    [(UILabel *)self->_handleLabel setText:&stru_1016631F0];
  }

  else
  {
    v19 = [(SharedTripContaineeViewController *)self sharedTrip];
    v20 = [v19 senderInfo];
    v21 = [v20 fromIdentifier];
    p_handleLabel = &self->_handleLabel;
    [(UILabel *)self->_handleLabel setText:v21];
  }

  [(UILabel *)*p_handleLabel setHidden:v17];
  v22 = [(SharedTripContaineeViewController *)self sharedTrip];
  v23 = [v22 waypointInfos];
  remainingWaypoints = self->_remainingWaypoints;
  self->_remainingWaypoints = v23;

  v25 = [(SharedTripContaineeViewController *)self sharedTrip];
  v26 = [v25 etaInfos];
  remainingETAs = self->_remainingETAs;
  self->_remainingETAs = v26;

  v28 = [(SharedTripContaineeViewController *)self sharedTrip];
  if ([v28 hasCurrentWaypointIndex])
  {
    v29 = [(SharedTripContaineeViewController *)self sharedTrip];
    v30 = [v29 currentWaypointIndex];
  }

  else
  {
    v30 = 0;
  }

  v31 = [(SharedTripContaineeViewController *)self sharedTrip];
  if (![v31 hasCurrentWaypointIndex] || -[NSArray count](self->_remainingWaypoints, "count") <= v30)
  {
    goto LABEL_16;
  }

  v32 = [(NSArray *)self->_remainingETAs count];

  if (v32 > v30)
  {
    v33 = [(NSArray *)self->_remainingWaypoints subarrayWithRange:v30, [(NSArray *)self->_remainingWaypoints count]- v30];
    v34 = self->_remainingWaypoints;
    self->_remainingWaypoints = v33;

    v35 = [(NSArray *)self->_remainingETAs subarrayWithRange:v30, [(NSArray *)self->_remainingETAs count]- v30];
    v31 = self->_remainingETAs;
    self->_remainingETAs = v35;
LABEL_16:
  }

  v36 = [(SharedTripContaineeViewController *)self sharedTrip];
  v37 = [v36 waypointInfosCount];

  if (v37 >= 2)
  {
    v38 = @"Stops [Shared ETA]";
  }

  else
  {
    v38 = @"Destination [Shared ETA]";
  }

  v39 = +[NSBundle mainBundle];
  v40 = [v39 localizedStringForKey:v38 value:@"localized string not found" table:0];
  [(MapsThemeLabel *)self->_destinationHeaderLabel setText:v40];

  v41 = [(SimpleContaineeViewController *)self actionsTableView];
  [v41 reloadData];

  [(SharedTripContaineeViewController *)self _updateButtons];
  [(SharedTripContaineeViewController *)self updateTheme];
}

- (void)_loadActions
{
  objc_initWeak(&location, self);
  v3 = objc_alloc_init(SimpleContaineeAction);
  v4 = +[NSBundle mainBundle];
  v5 = [v4 localizedStringForKey:@"Stop Receiving Updates [Shared ETA]" value:@"localized string not found" table:0];
  [(SimpleContaineeAction *)v3 setTitle:v5];

  [(SimpleContaineeAction *)v3 setGlyph:@"trash.circle.fill"];
  [(SimpleContaineeAction *)v3 setGlyphStyle:3];
  [(SimpleContaineeAction *)v3 setAccessibilityIdentifier:@"StopReceivingUpdatesAction"];
  [(SimpleContaineeAction *)v3 setStyle:1];
  v38[0] = _NSConcreteStackBlock;
  v38[1] = 3221225472;
  v38[2] = sub_1008DD7F8;
  v38[3] = &unk_101661B98;
  objc_copyWeak(&v39, &location);
  [(SimpleContaineeAction *)v3 setAction:v38];
  if ([(SharedTripContaineeViewController *)self _senderIsContact])
  {
    v6 = +[NSBundle mainBundle];
    [v6 localizedStringForKey:@"Block this Contact [Shared ETA]" value:@"localized string not found" table:0];
  }

  else
  {
    v6 = +[NSBundle mainBundle];
    [v6 localizedStringForKey:@"Block this Sender [Shared ETA]" value:@"localized string not found" table:0];
  }
  v7 = ;

  v8 = objc_alloc_init(SimpleContaineeAction);
  [(SimpleContaineeAction *)v8 setTitle:v7];
  if (sub_10000FA08(self) == 5)
  {
    v9 = +[NSBundle mainBundle];
    v10 = [v9 localizedStringForKey:@"Share ETA Blocked Contacts explanation" value:@"localized string not found" table:0];

    [(SimpleContaineeAction *)v8 setFooter:v10];
  }

  [(SimpleContaineeAction *)v8 setGlyph:@"hand.raised.circle.fill"];
  [(SimpleContaineeAction *)v8 setGlyphStyle:2];
  [(SimpleContaineeAction *)v8 setAccessibilityIdentifier:@"BlockContactAction"];
  v36[0] = _NSConcreteStackBlock;
  v36[1] = 3221225472;
  v36[2] = sub_1008DD83C;
  v36[3] = &unk_101661B98;
  objc_copyWeak(&v37, &location);
  [(SimpleContaineeAction *)v8 setAction:v36];
  v41[0] = v3;
  v41[1] = v8;
  v11 = [NSArray arrayWithObjects:v41 count:2];
  if (sub_10000FA08(self) != 5 && ![(SharedTripContaineeViewController *)self _senderIsContact]&& +[AddressBookManager addressBookAllowed])
  {
    v12 = objc_alloc_init(SimpleContaineeAction);
    v13 = +[NSBundle mainBundle];
    v14 = [v13 localizedStringForKey:@"Create New Contact [Shared ETA]" value:@"localized string not found" table:0];
    [(SimpleContaineeAction *)v12 setTitle:v14];

    [(SimpleContaineeAction *)v12 setGlyph:@"person.crop.circle"];
    [(SimpleContaineeAction *)v12 setAccessibilityIdentifier:@"CreateNewContactAction"];
    v34[0] = _NSConcreteStackBlock;
    v34[1] = 3221225472;
    v34[2] = sub_1008DD880;
    v34[3] = &unk_101661B98;
    objc_copyWeak(&v35, &location);
    [(SimpleContaineeAction *)v12 setAction:v34];
    v15 = objc_alloc_init(SimpleContaineeAction);
    v16 = +[NSBundle mainBundle];
    v17 = [v16 localizedStringForKey:@"Add to Existing Contact [Shared ETA]" value:@"localized string not found" table:0];
    [(SimpleContaineeAction *)v15 setTitle:v17];

    [(SimpleContaineeAction *)v15 setGlyph:@"person.crop.circle.badge.plus"];
    [(SimpleContaineeAction *)v15 setAccessibilityIdentifier:@"AddToExistingContactAction"];
    v32[0] = _NSConcreteStackBlock;
    v32[1] = 3221225472;
    v32[2] = sub_1008DD8C4;
    v32[3] = &unk_101661B98;
    objc_copyWeak(&v33, &location);
    [(SimpleContaineeAction *)v15 setAction:v32];
    v18 = [v11 mutableCopy];
    [v18 insertObject:v12 atIndex:0];
    [v18 insertObject:v15 atIndex:1];
    v19 = [v18 copy];

    objc_destroyWeak(&v33);
    objc_destroyWeak(&v35);

    v11 = v19;
  }

  v20 = +[GEOPlatform sharedPlatform];
  v21 = [v20 isInternalInstall];

  if (v21)
  {
    v22 = objc_alloc_init(SimpleContaineeAction);
    v23 = +[NSBundle mainBundle];
    v24 = [v23 localizedStringForKey:@"File a Radar [Shared ETA]" value:@"localized string not found" table:0];
    [(SimpleContaineeAction *)v22 setTitle:v24];

    v25 = +[UIImage _maps_radar_symbolCircleFilled];
    [(SimpleContaineeAction *)v22 setSymbol:v25];

    [(SimpleContaineeAction *)v22 setGlyphStyle:2];
    [(SimpleContaineeAction *)v22 setAccessibilityIdentifier:@"TapToRadarAction"];
    v27 = _NSConcreteStackBlock;
    v28 = 3221225472;
    v29 = sub_1008DD908;
    v30 = &unk_101661B98;
    objc_copyWeak(&v31, &location);
    [(SimpleContaineeAction *)v22 setAction:&v27];
    v26 = [v11 arrayByAddingObject:{v22, v27, v28, v29, v30}];

    objc_destroyWeak(&v31);
    v11 = v26;
  }

  [(SimpleContaineeViewController *)self setActions:v11];

  objc_destroyWeak(&v37);
  objc_destroyWeak(&v39);

  objc_destroyWeak(&location);
}

- (void)viewDidDisappear:(BOOL)a3
{
  v6.receiver = self;
  v6.super_class = SharedTripContaineeViewController;
  [(SharedTripContaineeViewController *)&v6 viewDidDisappear:a3];
  self->_isVisible = 0;
  subscriptionToken = self->_subscriptionToken;
  self->_subscriptionToken = 0;

  [(NSTimer *)self->_refreshTimestampTimer invalidate];
  refreshTimestampTimer = self->_refreshTimestampTimer;
  self->_refreshTimestampTimer = 0;
}

- (void)viewWillDisappear:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = SharedTripContaineeViewController;
  [(SimpleContaineeViewController *)&v5 viewWillDisappear:a3];
  v4 = +[MKLocationManager sharedLocationManager];
  [v4 stopListeningForLocationUpdates:self];
}

- (void)viewDidAppear:(BOOL)a3
{
  v10.receiver = self;
  v10.super_class = SharedTripContaineeViewController;
  [(SharedTripContaineeViewController *)&v10 viewDidAppear:a3];
  refreshTimestampTimer = self->_refreshTimestampTimer;
  if (refreshTimestampTimer)
  {
    [(NSTimer *)refreshTimestampTimer invalidate];
    v5 = self->_refreshTimestampTimer;
    self->_refreshTimestampTimer = 0;
  }

  v6 = [NSTimer scheduledTimerWithTimeInterval:self target:"updateContent" selector:0 userInfo:1 repeats:60.0];
  v7 = self->_refreshTimestampTimer;
  self->_refreshTimestampTimer = v6;

  v8 = [(SharedTripContaineeViewController *)self sharedTrip];
  v9 = [v8 _transportTypeStringForAnalytics];
  [GEOAPPortal captureUserAction:21 target:650 value:v9];
}

- (void)viewWillAppear:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = SharedTripContaineeViewController;
  [(SimpleContaineeViewController *)&v5 viewWillAppear:a3];
  self->_isVisible = 1;
  v4 = +[MKLocationManager sharedLocationManager];
  [v4 listenForLocationUpdates:self];

  [(SharedTripContaineeViewController *)self _refreshSubscriptionToken];
}

- (void)viewDidLoad
{
  v4.receiver = self;
  v4.super_class = SharedTripContaineeViewController;
  [(SimpleContaineeViewController *)&v4 viewDidLoad];
  v3 = [(SharedTripContaineeViewController *)self view];
  [v3 setAccessibilityIdentifier:@"SharedTripView"];
}

- (void)setupSubviews
{
  v88.receiver = self;
  v88.super_class = SharedTripContaineeViewController;
  [(SimpleContaineeViewController *)&v88 setupSubviews];
  v80 = objc_alloc_init(NSMutableArray);
  v3 = objc_alloc_init(MapsThemeLabel);
  headerTitleLabel = self->_headerTitleLabel;
  self->_headerTitleLabel = &v3->super;

  [(UILabel *)self->_headerTitleLabel setAccessibilityIdentifier:@"HeaderTitleLabel"];
  LODWORD(v5) = 1132068864;
  [(UILabel *)self->_headerTitleLabel setContentCompressionResistancePriority:0 forAxis:v5];
  LODWORD(v6) = 1148846080;
  [(UILabel *)self->_headerTitleLabel setContentCompressionResistancePriority:1 forAxis:v6];
  [(UILabel *)self->_headerTitleLabel setTranslatesAutoresizingMaskIntoConstraints:0];
  v7 = +[UIColor clearColor];
  [(UILabel *)self->_headerTitleLabel setBackgroundColor:v7];

  v8 = +[UIColor labelColor];
  [(UILabel *)self->_headerTitleLabel setTextColor:v8];

  [(UILabel *)self->_headerTitleLabel setNumberOfLines:0];
  v9 = objc_alloc_init(MapsThemeLabel);
  headerSubtitleLabel = self->_headerSubtitleLabel;
  self->_headerSubtitleLabel = &v9->super;

  [(UILabel *)self->_headerSubtitleLabel setAccessibilityIdentifier:@"HeaderSubtitleLabel"];
  LODWORD(v11) = 1132068864;
  [(UILabel *)self->_headerSubtitleLabel setContentCompressionResistancePriority:0 forAxis:v11];
  LODWORD(v12) = 1148846080;
  [(UILabel *)self->_headerSubtitleLabel setContentCompressionResistancePriority:1 forAxis:v12];
  [(UILabel *)self->_headerSubtitleLabel setTranslatesAutoresizingMaskIntoConstraints:0];
  v13 = +[UIColor clearColor];
  [(UILabel *)self->_headerSubtitleLabel setBackgroundColor:v13];

  v14 = +[UIColor labelColor];
  [(UILabel *)self->_headerSubtitleLabel setTextColor:v14];

  [(UILabel *)self->_headerSubtitleLabel setNumberOfLines:0];
  v15 = objc_alloc_init(MapsThemeLabel);
  handleLabel = self->_handleLabel;
  self->_handleLabel = &v15->super;

  [(UILabel *)self->_handleLabel setAccessibilityIdentifier:@"HandleLabel"];
  LODWORD(v17) = 1132068864;
  [(UILabel *)self->_handleLabel setContentCompressionResistancePriority:0 forAxis:v17];
  LODWORD(v18) = 1148846080;
  [(UILabel *)self->_handleLabel setContentCompressionResistancePriority:1 forAxis:v18];
  [(UILabel *)self->_handleLabel setTranslatesAutoresizingMaskIntoConstraints:0];
  v19 = +[UIColor clearColor];
  [(UILabel *)self->_handleLabel setBackgroundColor:v19];

  v20 = +[UIColor secondaryLabelColor];
  [(UILabel *)self->_handleLabel setTextColor:v20];

  [(UILabel *)self->_handleLabel setNumberOfLines:0];
  v21 = [UIStackView alloc];
  v22 = self->_headerSubtitleLabel;
  v91[0] = self->_headerTitleLabel;
  v91[1] = v22;
  v91[2] = self->_handleLabel;
  v23 = [NSArray arrayWithObjects:v91 count:3];
  v84 = [v21 initWithArrangedSubviews:v23];

  [v84 setAccessibilityIdentifier:@"TitleStackView"];
  [v84 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v84 setAlignment:0];
  [v84 setDistribution:0];
  [v84 setAxis:1];
  [v84 setSpacing:0.0];
  v83 = [[UIView alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
  [v83 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v83 addSubview:v84];
  v81 = [v84 leadingAnchor];
  v78 = [v83 leadingAnchor];
  v76 = [v81 constraintEqualToAnchor:v78 constant:16.0];
  v90[0] = v76;
  v74 = [v84 topAnchor];
  v24 = [v83 topAnchor];
  v25 = [v74 constraintEqualToAnchor:v24 constant:16.0];
  v90[1] = v25;
  v26 = [v84 trailingAnchor];
  v27 = [v83 trailingAnchor];
  v28 = [v26 constraintEqualToAnchor:v27];
  v90[2] = v28;
  v29 = [v84 bottomAnchor];
  v30 = [v83 bottomAnchor];
  v31 = [v29 constraintEqualToAnchor:v30];
  v90[3] = v31;
  v32 = [NSArray arrayWithObjects:v90 count:4];
  [NSLayoutConstraint activateConstraints:v32];

  v33 = [(SimpleContaineeViewController *)self titleHeaderView];
  [v33 setTitleView:v83];

  v34 = sub_10000FA08(self) == 5;
  v35 = [(SimpleContaineeViewController *)self titleHeaderView];
  [v35 setButtonHidden:v34];

  v36 = [(SimpleContaineeViewController *)self actionsTableView];
  [v36 _setTopPadding:12.0];

  v37 = [(SimpleContaineeViewController *)self actionsTableView];
  [v37 _setBottomPadding:10.0];

  v38 = [UIButton buttonWithType:0];
  directionsButton = self->_directionsButton;
  self->_directionsButton = v38;

  v40 = +[UIButtonConfiguration _mapsui_primaryHeaderActionConfiguration];
  v41 = [UIImage systemImageNamed:@"arrow.triangle.turn.up.right.diamond.fill"];
  [v40 setImage:v41];

  v42 = +[NSBundle mainBundle];
  v43 = [v42 localizedStringForKey:@"Directions [SharedETA]" value:@"localized string not found" table:0];
  [v40 setTitle:v43];

  [v40 setContentInsets:{15.0, 10.0, 15.0, 10.0}];
  [v40 setTitleAlignment:2];
  [(UIButton *)self->_directionsButton setConfiguration:v40];
  [(UIButton *)self->_directionsButton setAccessibilityIdentifier:@"DirectionsButton"];
  [(UIButton *)self->_directionsButton setTranslatesAutoresizingMaskIntoConstraints:0];
  v44 = [(UIButton *)self->_directionsButton subtitleLabel];
  [v44 setNumberOfLines:1];

  [(UIButton *)self->_directionsButton addTarget:self action:"directionsButtonTapped" forControlEvents:0x2000];
  v45 = [(SimpleContaineeViewController *)self topActionsContainerView];
  [v45 addArrangedSubview:self->_directionsButton];

  v46 = [UIButton buttonWithType:0];
  contactButton = self->_contactButton;
  self->_contactButton = v46;

  [(UIButton *)self->_contactButton setAccessibilityIdentifier:@"ContactButton"];
  [(UIButton *)self->_contactButton setTranslatesAutoresizingMaskIntoConstraints:0];
  v82 = +[UIButtonConfiguration _mapsui_secondaryHeaderActionConfiguration];

  v48 = [UIImage systemImageNamed:@"phone.fill"];
  [v82 setImage:v48];

  v49 = +[NSBundle mainBundle];
  v50 = [v49 localizedStringForKey:@"Contact [SharedETA]" value:@"localized string not found" table:0];
  [v82 setTitle:v50];

  [v82 setContentInsets:{15.0, 10.0, 15.0, 10.0}];
  [v82 setTitleAlignment:2];
  [(UIButton *)self->_contactButton setConfiguration:v82];
  [(UIButton *)self->_contactButton addTarget:self action:"contactButtonTapped" forControlEvents:0x2000];
  v51 = [(SimpleContaineeViewController *)self topActionsContainerView];
  [v51 addArrangedSubview:self->_contactButton];

  v52 = objc_alloc_init(MapsThemeLabel);
  destinationHeaderLabel = self->_destinationHeaderLabel;
  self->_destinationHeaderLabel = v52;

  [(MapsThemeLabel *)self->_destinationHeaderLabel setAccessibilityIdentifier:@"DestinationHeaderLabel"];
  [(MapsThemeLabel *)self->_destinationHeaderLabel setTranslatesAutoresizingMaskIntoConstraints:0];
  v54 = [(SimpleContaineeViewController *)self metadataContainerView];
  [v54 addSubview:self->_destinationHeaderLabel];

  v77 = [(MapsThemeLabel *)self->_destinationHeaderLabel topAnchor];
  v79 = [(SimpleContaineeViewController *)self metadataContainerView];
  v75 = [v79 topAnchor];
  v73 = [v77 constraintEqualToAnchor:v75 constant:20.0];
  v89[0] = v73;
  v71 = [(MapsThemeLabel *)self->_destinationHeaderLabel leadingAnchor];
  v72 = [(SimpleContaineeViewController *)self metadataContainerView];
  v70 = [v72 leadingAnchor];
  v69 = [v71 constraintEqualToAnchor:v70 constant:16.0];
  v89[1] = v69;
  v55 = [(SimpleContaineeViewController *)self metadataContainerView];
  v56 = [v55 trailingAnchor];
  v57 = [(MapsThemeLabel *)self->_destinationHeaderLabel trailingAnchor];
  v58 = [v56 constraintEqualToAnchor:v57 constant:16.0];
  v89[2] = v58;
  v59 = [(SimpleContaineeViewController *)self metadataContainerView];
  v60 = [v59 bottomAnchor];
  v61 = [(MapsThemeLabel *)self->_destinationHeaderLabel bottomAnchor];
  v62 = [v60 constraintEqualToAnchor:v61 constant:0.0];
  v89[3] = v62;
  v63 = [NSArray arrayWithObjects:v89 count:4];
  [v80 addObjectsFromArray:v63];

  [NSLayoutConstraint activateConstraints:v80];
  v64 = +[NSNotificationCenter defaultCenter];
  [v64 addObserver:self selector:"_contentSizeCategoryDidChange:" name:UIContentSizeCategoryDidChangeNotification object:0];

  [(SharedTripContaineeViewController *)self updateContent];
  [(SharedTripContaineeViewController *)self _updateFonts];
  [(SharedTripContaineeViewController *)self _loadActions];
  objc_initWeak(&location, self);
  v65 = [MapsThrottler alloc];
  v66 = &_dispatch_main_q;
  v85[0] = _NSConcreteStackBlock;
  v85[1] = 3221225472;
  v85[2] = sub_1008DE770;
  v85[3] = &unk_101656988;
  objc_copyWeak(&v86, &location);
  v67 = [(MapsThrottler *)v65 initWithInitialValue:0 throttlingInterval:&_dispatch_main_q queue:v85 updateHandler:30.0];
  buttonUpdateThrottler = self->_buttonUpdateThrottler;
  self->_buttonUpdateThrottler = v67;

  objc_destroyWeak(&v86);
  objc_destroyWeak(&location);
}

- (void)registerActionsTableViewCellClasses
{
  v4.receiver = self;
  v4.super_class = SharedTripContaineeViewController;
  [(SimpleContaineeViewController *)&v4 registerActionsTableViewCellClasses];
  v3 = [(SimpleContaineeViewController *)self actionsTableView];
  [v3 registerClass:objc_opt_class() forCellReuseIdentifier:@"StopCell"];
}

- (void)dealloc
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = SharedTripContaineeViewController;
  [(SimpleContaineeViewController *)&v4 dealloc];
}

- (SharedTripContaineeViewController)initWithSharedTrip:(id)a3
{
  v5 = a3;
  v10.receiver = self;
  v10.super_class = SharedTripContaineeViewController;
  v6 = [(SharedTripContaineeViewController *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_sharedTrip, a3);
    v8 = +[MSPSharedTripService sharedInstance];
    [v8 addReceivingObserver:v7];
  }

  return v7;
}

@end