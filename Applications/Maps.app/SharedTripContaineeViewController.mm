@interface SharedTripContaineeViewController
- (BOOL)_senderIsContact;
- (BOOL)_shouldShowDirectionsButton;
- (BOOL)tableView:(id)view shouldHighlightRowAtIndexPath:(id)path;
- (SharedTripContaineeViewController)initWithSharedTrip:(id)trip;
- (SharedTripsActionCoordination)actionDelegate;
- (id)_refetchedContact:(id)contact;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (int64_t)numberOfSectionsInTableView:(id)view;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
- (void)_addContact;
- (void)_addToContact;
- (void)_loadActions;
- (void)_presentPlaceCardForMapItem:(id)item;
- (void)_refreshSubscriptionToken;
- (void)_reloadWithContact:(id)contact;
- (void)_updateButtons;
- (void)_updateButtonsForLocationUpdate;
- (void)_updateFonts;
- (void)_updateWithTrip:(id)trip;
- (void)applyAlphaToContent:(double)content;
- (void)blockSender;
- (void)blockSenderAction;
- (void)blockTrip;
- (void)contactButtonTapped;
- (void)contactPicker:(id)picker didSelectContact:(id)contact;
- (void)contactViewController:(id)controller didCompleteWithContact:(id)contact;
- (void)dealloc;
- (void)didMoveToParentViewController:(id)controller;
- (void)directionsButtonTapped;
- (void)headerViewButtonTapped:(id)tapped buttonType:(unint64_t)type;
- (void)locationManagerUpdatedLocation:(id)location;
- (void)registerActionsTableViewCellClasses;
- (void)setSharedTrip:(id)trip;
- (void)setupSubviews;
- (void)sharedTripService:(id)service didRemoveSharedTrip:(id)trip;
- (void)sharedTripServiceDidUpdateReceivingAvailability:(id)availability;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)tapToRadarButtonTapped;
- (void)updateContent;
- (void)updateTheme;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
@end

@implementation SharedTripContaineeViewController

- (SharedTripsActionCoordination)actionDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_actionDelegate);

  return WeakRetained;
}

- (void)sharedTripService:(id)service didRemoveSharedTrip:(id)trip
{
  tripCopy = trip;
  sharedTrip = [(SharedTripContaineeViewController *)self sharedTrip];
  groupIdentifier = [sharedTrip groupIdentifier];
  groupIdentifier2 = [tripCopy groupIdentifier];

  LODWORD(tripCopy) = [groupIdentifier isEqualToString:groupIdentifier2];
  if (tripCopy)
  {
    actionDelegate = [(SharedTripContaineeViewController *)self actionDelegate];
    [actionDelegate closeSharedTripDetail];
  }
}

- (void)sharedTripServiceDidUpdateReceivingAvailability:(id)availability
{
  [availability receivedTrips];
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
        groupIdentifier = [v9 groupIdentifier];
        sharedTrip = [(SharedTripContaineeViewController *)self sharedTrip];
        groupIdentifier2 = [sharedTrip groupIdentifier];
        v13 = [groupIdentifier isEqualToString:groupIdentifier2];

        if (v13)
        {
          [(SharedTripContaineeViewController *)self _updateWithTrip:v9];
          actionDelegate = v4;
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

  actionDelegate = [(SharedTripContaineeViewController *)self actionDelegate];
  [actionDelegate closeSharedTripDetail];
LABEL_11:
}

- (void)_updateWithTrip:(id)trip
{
  tripCopy = trip;
  sharedTrip = [(SharedTripContaineeViewController *)self sharedTrip];

  if (sharedTrip == tripCopy)
  {
    [(SharedTripContaineeViewController *)self updateContent];
  }

  else
  {
    sharedTrip2 = [(SharedTripContaineeViewController *)self sharedTrip];
    groupIdentifier = [sharedTrip2 groupIdentifier];
    groupIdentifier2 = [tripCopy groupIdentifier];
    v8 = [groupIdentifier isEqualToString:groupIdentifier2];

    if (v8)
    {
      [(SharedTripContaineeViewController *)self setSharedTrip:tripCopy];
    }
  }
}

- (void)applyAlphaToContent:(double)content
{
  v8.receiver = self;
  v8.super_class = SharedTripContaineeViewController;
  [(ContaineeViewController *)&v8 applyAlphaToContent:?];
  topActionsContainerView = [(SimpleContaineeViewController *)self topActionsContainerView];
  [topActionsContainerView setAlpha:content];

  metadataContainerView = [(SimpleContaineeViewController *)self metadataContainerView];
  [metadataContainerView setAlpha:content];

  actionsTableView = [(SimpleContaineeViewController *)self actionsTableView];
  [actionsTableView setAlpha:content];
}

- (void)tapToRadarButtonTapped
{
  v2 = +[MapsRadarController sharedInstance];
  [v2 launchTTR];
}

- (void)directionsButtonTapped
{
  actionDelegate = [(SharedTripContaineeViewController *)self actionDelegate];
  sharedTrip = [(SharedTripContaineeViewController *)self sharedTrip];
  [actionDelegate didRequestDirectionsForSharedTrip:sharedTrip];

  sharedTrip2 = [(SharedTripContaineeViewController *)self sharedTrip];
  _transportTypeStringForAnalytics = [sharedTrip2 _transportTypeStringForAnalytics];
  [GEOAPPortal captureUserAction:6003 target:650 value:_transportTypeStringForAnalytics];
}

- (void)contactButtonTapped
{
  actionDelegate = [(SharedTripContaineeViewController *)self actionDelegate];
  [actionDelegate didRequestContactsCard];

  sharedTrip = [(SharedTripContaineeViewController *)self sharedTrip];
  _transportTypeStringForAnalytics = [sharedTrip _transportTypeStringForAnalytics];
  [GEOAPPortal captureUserAction:6044 target:650 value:_transportTypeStringForAnalytics];
}

- (void)headerViewButtonTapped:(id)tapped buttonType:(unint64_t)type
{
  v5 = [(SharedTripContaineeViewController *)self actionDelegate:tapped];
  [v5 closeSharedTripDetail];

  sharedTrip = [(SharedTripContaineeViewController *)self sharedTrip];
  _transportTypeStringForAnalytics = [sharedTrip _transportTypeStringForAnalytics];
  [GEOAPPortal captureUserAction:4 target:650 value:_transportTypeStringForAnalytics];
}

- (void)blockTrip
{
  v3 = +[MSPSharedTripService sharedInstance];
  sharedTrip = [(SharedTripContaineeViewController *)self sharedTrip];
  groupIdentifier = [sharedTrip groupIdentifier];
  [v3 blockSharedTripWithIdentifier:groupIdentifier];

  sharedTrip2 = [(SharedTripContaineeViewController *)self sharedTrip];
  _transportTypeStringForAnalytics = [sharedTrip2 _transportTypeStringForAnalytics];
  [GEOAPPortal captureUserAction:9028 target:650 value:_transportTypeStringForAnalytics];
}

- (void)blockSenderAction
{
  sharedTrip = [(SharedTripContaineeViewController *)self sharedTrip];
  senderInfo = [sharedTrip senderInfo];
  fromIdentifier = [senderInfo fromIdentifier];

  if (fromIdentifier)
  {
    CMFItemFromString = CreateCMFItemFromString();
    v7 = sub_1000946AC();
    v8 = v7;
    if (CMFItemFromString)
    {
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v12 = 138477827;
        v13 = fromIdentifier;
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
  sharedTrip2 = [(SharedTripContaineeViewController *)self sharedTrip];
  groupIdentifier = [sharedTrip2 groupIdentifier];
  [v9 blockSharedTripWithIdentifier:groupIdentifier];
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
  actionsTableView = [(SimpleContaineeViewController *)self actionsTableView];
  popoverPresentationController = [v7 popoverPresentationController];
  [popoverPresentationController setSourceView:actionsTableView];

  actionsTableView2 = [(SimpleContaineeViewController *)self actionsTableView];
  [actionsTableView2 bounds];
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;
  popoverPresentationController2 = [v7 popoverPresentationController];
  [popoverPresentationController2 setSourceRect:{v12, v14, v16, v18}];

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

- (void)locationManagerUpdatedLocation:(id)location
{
  lastLocation = [location lastLocation];
  [(MapsThrottler *)self->_buttonUpdateThrottler setValue:lastLocation];
}

- (void)_reloadWithContact:(id)contact
{
  contactCopy = contact;
  sharedTrip = [(SharedTripContaineeViewController *)self sharedTrip];
  identifier = [contactCopy identifier];
  senderInfo = [sharedTrip senderInfo];
  [senderInfo setLocalContactIdentifier:identifier];

  v7 = [CNContactFormatter stringFromContact:contactCopy style:1000];

  senderInfo2 = [sharedTrip senderInfo];
  [senderInfo2 setLocalName:v7];

  [(SharedTripContaineeViewController *)self updateContent];
  [(SharedTripContaineeViewController *)self _loadActions];
}

- (void)contactPicker:(id)picker didSelectContact:(id)contact
{
  contactCopy = contact;
  sharedTrip = [(SharedTripContaineeViewController *)self sharedTrip];
  senderInfo = [sharedTrip senderInfo];
  fromIdentifier = [senderInfo fromIdentifier];

  v8 = [(SharedTripContaineeViewController *)self _refetchedContact:contactCopy];

  v9 = [v8 mutableCopy];
  v10 = [CNContact contactWithDisplayName:0 emailOrPhoneNumber:fromIdentifier];
  emailAddresses = [v10 emailAddresses];
  v12 = [emailAddresses count];

  if (v12)
  {
    emailAddresses2 = [v9 emailAddresses];
    if (emailAddresses2)
    {
      emailAddresses3 = [v9 emailAddresses];
      v15 = [emailAddresses3 mutableCopy];
    }

    else
    {
      v15 = [&__NSArray0__struct mutableCopy];
    }

    emailAddresses4 = [v10 emailAddresses];
    [v15 addObjectsFromArray:emailAddresses4];

    [v9 setEmailAddresses:v15];
  }

  phoneNumbers = [v10 phoneNumbers];
  v18 = [phoneNumbers count];

  if (v18)
  {
    phoneNumbers2 = [v9 phoneNumbers];
    if (phoneNumbers2)
    {
      phoneNumbers3 = [v9 phoneNumbers];
      v21 = [phoneNumbers3 mutableCopy];
    }

    else
    {
      v21 = [&__NSArray0__struct mutableCopy];
    }

    phoneNumbers4 = [v10 phoneNumbers];
    [v21 addObjectsFromArray:phoneNumbers4];

    [v9 setPhoneNumbers:v21];
  }

  v23 = objc_alloc_init(CNSaveRequest);
  v24 = +[AddressBookManager sharedManager];
  contactStore = [v24 contactStore];

  [v23 updateContact:v9];
  [contactStore executeSaveRequest:v23 error:0];
  [(SharedTripContaineeViewController *)self _reloadWithContact:v9];
}

- (void)contactViewController:(id)controller didCompleteWithContact:(id)contact
{
  contactCopy = contact;
  [controller dismissViewControllerAnimated:1 completion:0];
  v6 = contactCopy;
  if (contactCopy)
  {
    [(SharedTripContaineeViewController *)self _reloadWithContact:contactCopy];
    v6 = contactCopy;
  }
}

- (id)_refetchedContact:(id)contact
{
  contactCopy = contact;
  v4 = +[AddressBookManager sharedManager];
  properties = [v4 properties];

  if (([contactCopy areKeysAvailable:properties] & 1) == 0)
  {
    v6 = +[AddressBookManager sharedManager];
    contactStore = [v6 contactStore];

    identifier = [contactCopy identifier];
    v9 = [contactStore unifiedContactWithIdentifier:identifier keysToFetch:properties error:0];

    contactCopy = v9;
  }

  return contactCopy;
}

- (void)_addToContact
{
  v3 = objc_alloc_init(CNContactPickerViewController);
  [v3 setDelegate:self];
  [(SharedTripContaineeViewController *)self _maps_topMostPresentViewController:v3 animated:1 completion:0];
}

- (void)_addContact
{
  sharedTrip = [(SharedTripContaineeViewController *)self sharedTrip];
  senderName = [sharedTrip senderName];
  sharedTrip2 = [(SharedTripContaineeViewController *)self sharedTrip];
  senderInfo = [sharedTrip2 senderInfo];
  fromIdentifier = [senderInfo fromIdentifier];
  v10 = [CNContact contactWithDisplayName:senderName emailOrPhoneNumber:fromIdentifier];

  v8 = [CNContactViewController viewControllerForNewContact:v10];
  [v8 setDisplayMode:1];
  [v8 setDelegate:self];
  v9 = [[UINavigationController alloc] initWithRootViewController:v8];
  [v9 setModalPresentationStyle:-2];
  [(SharedTripContaineeViewController *)self _maps_topMostPresentViewController:v9 animated:1 completion:0];
}

- (BOOL)_senderIsContact
{
  sharedTrip = [(SharedTripContaineeViewController *)self sharedTrip];
  senderInfo = [sharedTrip senderInfo];
  localContactIdentifier = [senderInfo localContactIdentifier];
  v5 = localContactIdentifier != 0;

  return v5;
}

- (void)_presentPlaceCardForMapItem:(id)item
{
  itemCopy = item;
  if (itemCopy)
  {
    v4 = [[MKMapItem alloc] initWithGeoMapItem:itemCopy isPlaceHolderPlace:0];
    if (v4)
    {
      v5 = v4;
      actionDelegate = [(SharedTripContaineeViewController *)self actionDelegate];
      [actionDelegate didSelectStopWithMapItem:v5];
    }
  }
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  if ([pathCopy section])
  {
    v12.receiver = self;
    v12.super_class = SharedTripContaineeViewController;
    [(SimpleContaineeViewController *)&v12 tableView:viewCopy didSelectRowAtIndexPath:pathCopy];
  }

  else
  {
    v8 = [pathCopy row];
    sharedTrip = [(SharedTripContaineeViewController *)self sharedTrip];
    v10 = [sharedTrip waypointInfoAtIndex:v8];

    if ([v10 hasMapItemStorage])
    {
      mapItemStorage = [v10 mapItemStorage];
      [(SharedTripContaineeViewController *)self _presentPlaceCardForMapItem:mapItemStorage];

      [viewCopy deselectRowAtIndexPath:pathCopy animated:1];
    }
  }
}

- (BOOL)tableView:(id)view shouldHighlightRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  if ([pathCopy section])
  {
    v13.receiver = self;
    v13.super_class = SharedTripContaineeViewController;
    hasMapItemStorage = [(SimpleContaineeViewController *)&v13 tableView:viewCopy shouldHighlightRowAtIndexPath:pathCopy];
  }

  else
  {
    v9 = [pathCopy row];

    sharedTrip = [(SharedTripContaineeViewController *)self sharedTrip];
    v11 = [sharedTrip waypointInfoAtIndex:v9];

    hasMapItemStorage = [v11 hasMapItemStorage];
  }

  return hasMapItemStorage;
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  pathCopy = path;
  viewCopy = view;
  if ([pathCopy section])
  {
    v48.receiver = self;
    v48.super_class = SharedTripContaineeViewController;
    v8 = [(SimpleContaineeViewController *)&v48 tableView:viewCopy cellForRowAtIndexPath:pathCopy];
    goto LABEL_25;
  }

  v8 = [viewCopy dequeueReusableCellWithIdentifier:@"StopCell" forIndexPath:pathCopy];

  [v8 setAccessibilityIdentifier:@"SharedTripStopCell"];
  v9 = [pathCopy row];
  viewCopy = [(NSArray *)self->_remainingWaypoints objectAtIndexedSubscript:v9];
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
  name = [viewCopy name];
  [v10 setText:name];

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
    secondaryTextProperties = [NSDateFormatter _navigation_localizedTimestampStringForDepartureArrivalDate:v17 inTimeZone:v18 canIncludeDate:0];

    v20 = +[NSBundle mainBundle];
    v21 = [v20 localizedStringForKey:@"[Shared Trip value:Details] Waypoint ETA" table:{@"localized string not found", 0}];
    v22 = [NSString stringWithFormat:v21, secondaryTextProperties, v44];

    [v10 setSecondaryText:v22];
LABEL_14:

    goto LABEL_15;
  }

  if ([viewCopy hasMapItemStorage])
  {
    v23 = [MKMapItem alloc];
    mapItemStorage = [viewCopy mapItemStorage];
    v17 = [v23 initWithGeoMapItem:mapItemStorage isPlaceHolderPlace:0];

    _addressFormattedAsMultilineAddress = [v17 _addressFormattedAsMultilineAddress];
    [v10 setSecondaryText:_addressFormattedAsMultilineAddress];

    secondaryTextProperties = [v10 secondaryTextProperties];
    [secondaryTextProperties setNumberOfLines:0];
    goto LABEL_14;
  }

LABEL_15:
  v26 = [UIFontDescriptor preferredFontDescriptorWithTextStyle:UIFontTextStyleHeadline];
  v27 = [v26 fontDescriptorWithSymbolicTraits:2];
  v28 = [UIFont fontWithDescriptor:v27 size:0.0];
  textProperties = [v10 textProperties];
  [textProperties setFont:v28];

  textProperties2 = [v10 textProperties];
  [textProperties2 setNumberOfLines:0];

  v31 = [UIFont preferredFontForTextStyle:UIFontTextStyleSubheadline];
  secondaryTextProperties2 = [v10 secondaryTextProperties];
  [secondaryTextProperties2 setFont:v31];

  v33 = +[UIColor secondaryLabelColor];
  secondaryTextProperties3 = [v10 secondaryTextProperties];
  [secondaryTextProperties3 setColor:v33];

  [v8 setContentConfiguration:v10];
  if ([viewCopy hasMapItemStorage])
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
    mapItemStorage2 = [viewCopy mapItemStorage];
    _styleAttributes = [mapItemStorage2 _styleAttributes];
    [(MapsUIImageGEOFeatureSpec *)v35 setStyle:_styleAttributes];

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
    if ([viewCopy hasChargingStationInfo])
    {
      +[GEOFeatureStyleAttributes evChargerStyleAttributes];
    }

    else
    {
      +[GEOFeatureStyleAttributes addressMarkerStyleAttributes];
    }
    v40 = ;
    traitCollection = [(SharedTripContaineeViewController *)self traitCollection];
    [traitCollection displayScale];
    v42 = [MKIconManager imageForStyle:v40 size:2 forScale:0 format:?];
    [v10 setImage:v42];

    [v8 setContentConfiguration:v10];
  }

LABEL_25:

  return v8;
}

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
{
  if (section)
  {
    v7.receiver = self;
    v7.super_class = SharedTripContaineeViewController;
    return [(SimpleContaineeViewController *)&v7 tableView:view numberOfRowsInSection:?];
  }

  else
  {
    remainingWaypoints = self->_remainingWaypoints;

    return [(NSArray *)remainingWaypoints count];
  }
}

- (int64_t)numberOfSectionsInTableView:(id)view
{
  v4.receiver = self;
  v4.super_class = SharedTripContaineeViewController;
  return [(SimpleContaineeViewController *)&v4 numberOfSectionsInTableView:view]+ 1;
}

- (void)_refreshSubscriptionToken
{
  _maps_uiScene = [(SharedTripContaineeViewController *)self _maps_uiScene];
  sharedTrip = [(SharedTripContaineeViewController *)self sharedTrip];
  if (sharedTrip && self->_isVisible)
  {

    if (_maps_uiScene)
    {
      v4 = [SharedTripSceneAwareSubscription alloc];
      sharedTrip2 = [(SharedTripContaineeViewController *)self sharedTrip];
      groupIdentifier = [sharedTrip2 groupIdentifier];
      v7 = [(SharedTripSceneAwareSubscription *)v4 initWithTripIdentifier:groupIdentifier scene:_maps_uiScene];
      subscriptionToken = self->_subscriptionToken;
      self->_subscriptionToken = v7;

      goto LABEL_7;
    }
  }

  else
  {
  }

  sharedTrip2 = self->_subscriptionToken;
  self->_subscriptionToken = 0;
LABEL_7:
}

- (void)setSharedTrip:(id)trip
{
  tripCopy = trip;
  if (self->_sharedTrip != tripCopy)
  {
    v6 = tripCopy;
    objc_storeStrong(&self->_sharedTrip, trip);
    [(SharedTripContaineeViewController *)self updateContent];
    tripCopy = v6;
  }
}

- (void)didMoveToParentViewController:(id)controller
{
  v4.receiver = self;
  v4.super_class = SharedTripContaineeViewController;
  [(SharedTripContaineeViewController *)&v4 didMoveToParentViewController:controller];
  [(SharedTripContaineeViewController *)self _refreshSubscriptionToken];
}

- (void)_updateFonts
{
  v3 = [UIFont preferredFontForTextStyle:UIFontTextStyleTitle1];
  fontDescriptor = [v3 fontDescriptor];
  v5 = [fontDescriptor fontDescriptorWithSymbolicTraits:2];
  v6 = [UIFont fontWithDescriptor:v5 size:0.0];
  [(UILabel *)self->_headerTitleLabel setFont:v6];

  v17 = [UIFontDescriptor preferredFontDescriptorWithTextStyle:UIFontTextStyleTitle3];
  v7 = [v17 fontDescriptorWithSymbolicTraits:2];
  v8 = [UIFont fontWithDescriptor:v7 size:0.0];
  [(MapsThemeLabel *)self->_destinationHeaderLabel setFont:v8];

  v9 = [UIFontDescriptor preferredFontDescriptorWithTextStyle:UIFontTextStyleSubhead addingSymbolicTraits:2 options:0];
  v10 = [UIFont fontWithDescriptor:v9 size:0.0];
  titleLabel = [(UIButton *)self->_directionsButton titleLabel];
  [titleLabel setFont:v10];

  titleLabel2 = [(UIButton *)self->_directionsButton titleLabel];
  font = [titleLabel2 font];
  titleLabel3 = [(UIButton *)self->_contactButton titleLabel];
  [titleLabel3 setFont:font];

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

  font2 = [(UILabel *)self->_headerSubtitleLabel font];
  [(UILabel *)self->_handleLabel setFont:font2];
}

- (void)updateTheme
{
  v6.receiver = self;
  v6.super_class = SharedTripContaineeViewController;
  [(SimpleContaineeViewController *)&v6 updateTheme];
  if (sub_10000FA08(self) == 5)
  {
    directionsButton = self->_directionsButton;
    theme = [(SharedTripContaineeViewController *)self theme];
    keyColor = [theme keyColor];
    [(UIButton *)directionsButton setTitleColor:keyColor forState:0];
  }
}

- (void)_updateButtons
{
  v3 = +[NSBundle mainBundle];
  v4 = [v3 localizedStringForKey:@"To (destination)[SharedETA]" value:@"localized string not found" table:0];

  sharedTrip = [(SharedTripContaineeViewController *)self sharedTrip];
  destinationName = [sharedTrip destinationName];

  if (-[NSArray count](self->_remainingWaypoints, "count") >= 2 && [destinationName length])
  {
    v7 = [NSString stringWithFormat:v4, destinationName];
  }

  else
  {
    v7 = 0;
  }

  configuration = [(UIButton *)self->_directionsButton configuration];
  v37 = v7;
  [configuration setSubtitle:v7];
  [(UIButton *)self->_directionsButton setConfiguration:configuration];
  v9 = [[NSMutableArray alloc] initWithCapacity:2];
  sharedTrip2 = [(SharedTripContaineeViewController *)self sharedTrip];
  destinationWaypointMapItem = [sharedTrip2 destinationWaypointMapItem];

  v12 = [CLLocation alloc];
  [destinationWaypointMapItem coordinate];
  v14 = v13;
  [destinationWaypointMapItem coordinate];
  v15 = [v12 initWithLatitude:v14 longitude:?];
  v16 = +[MKLocationManager sharedLocationManager];
  lastLocation = [v16 lastLocation];
  v36 = v15;
  [lastLocation distanceFromLocation:v15];
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

  sharedTrip3 = [(SharedTripContaineeViewController *)self sharedTrip];
  senderInfo = [sharedTrip3 senderInfo];
  localContactIdentifier = [senderInfo localContactIdentifier];

  v25 = [localContactIdentifier length];
  v26 = +[AddressBookManager addressBookAllowed];
  v27 = sub_1000946AC();
  v28 = os_log_type_enabled(v27, OS_LOG_TYPE_INFO);
  if (v25 && v26)
  {
    if (v28)
    {
      *buf = 138477827;
      v39 = localContactIdentifier;
      _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_INFO, "Will display Contact button for sender:%{private}@", buf, 0xCu);
    }

    configuration2 = [(UIButton *)self->_contactButton configuration];

    sharedTrip4 = [(SharedTripContaineeViewController *)self sharedTrip];
    senderInfo2 = [sharedTrip4 senderInfo];
    localName = [senderInfo2 localName];
    [configuration2 setSubtitle:localName];

    [(UIButton *)self->_contactButton setConfiguration:configuration2];
    [v9 addObject:self->_contactButton];
    configuration = configuration2;
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
      v39 = localContactIdentifier;
      v40 = 2112;
      v41 = v34;
      _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_INFO, "Will NOT display Contact button for sender: %{private}@ (Contacts access authorized: %@)", buf, 0x16u);
    }
  }

  topActionsContainerView = [(SimpleContaineeViewController *)self topActionsContainerView];
  [topActionsContainerView _maps_setArrangedSubviews:v9];
}

- (void)_updateButtonsForLocationUpdate
{
  _shouldShowDirectionsButton = [(SharedTripContaineeViewController *)self _shouldShowDirectionsButton];
  superview = [(UIButton *)self->_directionsButton superview];
  if (_shouldShowDirectionsButton)
  {
    if (superview)
    {

      return;
    }
  }

  else
  {
    v5 = superview;

    if (!v5)
    {
      return;
    }
  }

  [(SharedTripContaineeViewController *)self _updateButtons];
}

- (BOOL)_shouldShowDirectionsButton
{
  sharedTrip = [(SharedTripContaineeViewController *)self sharedTrip];
  destinationWaypointMapItem = [sharedTrip destinationWaypointMapItem];

  v4 = [CLLocation alloc];
  [destinationWaypointMapItem coordinate];
  v6 = v5;
  [destinationWaypointMapItem coordinate];
  v7 = [v4 initWithLatitude:v6 longitude:?];
  v8 = +[MKLocationManager sharedLocationManager];
  lastLocation = [v8 lastLocation];

  [lastLocation distanceFromLocation:v7];
  LOBYTE(v8) = lastLocation == 0 || v10 >= 500.0;

  return v8 & 1;
}

- (void)updateContent
{
  if (![(SharedTripContaineeViewController *)self isViewLoaded])
  {
    return;
  }

  sharedTrip = [(SharedTripContaineeViewController *)self sharedTrip];
  destinationName = [sharedTrip destinationName];

  v4 = [destinationName length];
  v5 = +[NSBundle mainBundle];
  v6 = v5;
  if (v4)
  {
    v7 = [v5 localizedStringForKey:@"(person)'s route to (location) [shared eta]" value:@"localized string not found" table:0];
    sharedTrip2 = [(SharedTripContaineeViewController *)self sharedTrip];
    senderName = [sharedTrip2 senderName];
    sharedTrip3 = [(SharedTripContaineeViewController *)self sharedTrip];
    destinationName2 = [sharedTrip3 destinationName];
    v12 = [NSString stringWithFormat:v7, senderName, destinationName2];
    [(UILabel *)self->_headerTitleLabel setText:v12];
  }

  else
  {
    v7 = [v5 localizedStringForKey:@"(person)'s route [shared eta]" value:@"localized string not found" table:0];
    sharedTrip2 = [(SharedTripContaineeViewController *)self sharedTrip];
    senderName = [sharedTrip2 senderName];
    sharedTrip3 = [NSString stringWithFormat:v7, senderName];
    [(UILabel *)self->_headerTitleLabel setText:sharedTrip3];
  }

  sharedTrip4 = [(SharedTripContaineeViewController *)self sharedTrip];
  homeCellSubtitle = [sharedTrip4 homeCellSubtitle];
  [(UILabel *)self->_headerSubtitleLabel setText:homeCellSubtitle];

  sharedTrip5 = [(SharedTripContaineeViewController *)self sharedTrip];
  senderInfo = [sharedTrip5 senderInfo];
  hasLocalContactIdentifier = [senderInfo hasLocalContactIdentifier];

  if (hasLocalContactIdentifier)
  {
    p_handleLabel = &self->_handleLabel;
    [(UILabel *)self->_handleLabel setText:&stru_1016631F0];
  }

  else
  {
    sharedTrip6 = [(SharedTripContaineeViewController *)self sharedTrip];
    senderInfo2 = [sharedTrip6 senderInfo];
    fromIdentifier = [senderInfo2 fromIdentifier];
    p_handleLabel = &self->_handleLabel;
    [(UILabel *)self->_handleLabel setText:fromIdentifier];
  }

  [(UILabel *)*p_handleLabel setHidden:hasLocalContactIdentifier];
  sharedTrip7 = [(SharedTripContaineeViewController *)self sharedTrip];
  waypointInfos = [sharedTrip7 waypointInfos];
  remainingWaypoints = self->_remainingWaypoints;
  self->_remainingWaypoints = waypointInfos;

  sharedTrip8 = [(SharedTripContaineeViewController *)self sharedTrip];
  etaInfos = [sharedTrip8 etaInfos];
  remainingETAs = self->_remainingETAs;
  self->_remainingETAs = etaInfos;

  sharedTrip9 = [(SharedTripContaineeViewController *)self sharedTrip];
  if ([sharedTrip9 hasCurrentWaypointIndex])
  {
    sharedTrip10 = [(SharedTripContaineeViewController *)self sharedTrip];
    currentWaypointIndex = [sharedTrip10 currentWaypointIndex];
  }

  else
  {
    currentWaypointIndex = 0;
  }

  sharedTrip11 = [(SharedTripContaineeViewController *)self sharedTrip];
  if (![sharedTrip11 hasCurrentWaypointIndex] || -[NSArray count](self->_remainingWaypoints, "count") <= currentWaypointIndex)
  {
    goto LABEL_16;
  }

  v32 = [(NSArray *)self->_remainingETAs count];

  if (v32 > currentWaypointIndex)
  {
    v33 = [(NSArray *)self->_remainingWaypoints subarrayWithRange:currentWaypointIndex, [(NSArray *)self->_remainingWaypoints count]- currentWaypointIndex];
    v34 = self->_remainingWaypoints;
    self->_remainingWaypoints = v33;

    v35 = [(NSArray *)self->_remainingETAs subarrayWithRange:currentWaypointIndex, [(NSArray *)self->_remainingETAs count]- currentWaypointIndex];
    sharedTrip11 = self->_remainingETAs;
    self->_remainingETAs = v35;
LABEL_16:
  }

  sharedTrip12 = [(SharedTripContaineeViewController *)self sharedTrip];
  waypointInfosCount = [sharedTrip12 waypointInfosCount];

  if (waypointInfosCount >= 2)
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

  actionsTableView = [(SimpleContaineeViewController *)self actionsTableView];
  [actionsTableView reloadData];

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
  isInternalInstall = [v20 isInternalInstall];

  if (isInternalInstall)
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

- (void)viewDidDisappear:(BOOL)disappear
{
  v6.receiver = self;
  v6.super_class = SharedTripContaineeViewController;
  [(SharedTripContaineeViewController *)&v6 viewDidDisappear:disappear];
  self->_isVisible = 0;
  subscriptionToken = self->_subscriptionToken;
  self->_subscriptionToken = 0;

  [(NSTimer *)self->_refreshTimestampTimer invalidate];
  refreshTimestampTimer = self->_refreshTimestampTimer;
  self->_refreshTimestampTimer = 0;
}

- (void)viewWillDisappear:(BOOL)disappear
{
  v5.receiver = self;
  v5.super_class = SharedTripContaineeViewController;
  [(SimpleContaineeViewController *)&v5 viewWillDisappear:disappear];
  v4 = +[MKLocationManager sharedLocationManager];
  [v4 stopListeningForLocationUpdates:self];
}

- (void)viewDidAppear:(BOOL)appear
{
  v10.receiver = self;
  v10.super_class = SharedTripContaineeViewController;
  [(SharedTripContaineeViewController *)&v10 viewDidAppear:appear];
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

  sharedTrip = [(SharedTripContaineeViewController *)self sharedTrip];
  _transportTypeStringForAnalytics = [sharedTrip _transportTypeStringForAnalytics];
  [GEOAPPortal captureUserAction:21 target:650 value:_transportTypeStringForAnalytics];
}

- (void)viewWillAppear:(BOOL)appear
{
  v5.receiver = self;
  v5.super_class = SharedTripContaineeViewController;
  [(SimpleContaineeViewController *)&v5 viewWillAppear:appear];
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
  view = [(SharedTripContaineeViewController *)self view];
  [view setAccessibilityIdentifier:@"SharedTripView"];
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
  leadingAnchor = [v84 leadingAnchor];
  leadingAnchor2 = [v83 leadingAnchor];
  v76 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:16.0];
  v90[0] = v76;
  topAnchor = [v84 topAnchor];
  topAnchor2 = [v83 topAnchor];
  v25 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:16.0];
  v90[1] = v25;
  trailingAnchor = [v84 trailingAnchor];
  trailingAnchor2 = [v83 trailingAnchor];
  v28 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v90[2] = v28;
  bottomAnchor = [v84 bottomAnchor];
  bottomAnchor2 = [v83 bottomAnchor];
  v31 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  v90[3] = v31;
  v32 = [NSArray arrayWithObjects:v90 count:4];
  [NSLayoutConstraint activateConstraints:v32];

  titleHeaderView = [(SimpleContaineeViewController *)self titleHeaderView];
  [titleHeaderView setTitleView:v83];

  v34 = sub_10000FA08(self) == 5;
  titleHeaderView2 = [(SimpleContaineeViewController *)self titleHeaderView];
  [titleHeaderView2 setButtonHidden:v34];

  actionsTableView = [(SimpleContaineeViewController *)self actionsTableView];
  [actionsTableView _setTopPadding:12.0];

  actionsTableView2 = [(SimpleContaineeViewController *)self actionsTableView];
  [actionsTableView2 _setBottomPadding:10.0];

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
  subtitleLabel = [(UIButton *)self->_directionsButton subtitleLabel];
  [subtitleLabel setNumberOfLines:1];

  [(UIButton *)self->_directionsButton addTarget:self action:"directionsButtonTapped" forControlEvents:0x2000];
  topActionsContainerView = [(SimpleContaineeViewController *)self topActionsContainerView];
  [topActionsContainerView addArrangedSubview:self->_directionsButton];

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
  topActionsContainerView2 = [(SimpleContaineeViewController *)self topActionsContainerView];
  [topActionsContainerView2 addArrangedSubview:self->_contactButton];

  v52 = objc_alloc_init(MapsThemeLabel);
  destinationHeaderLabel = self->_destinationHeaderLabel;
  self->_destinationHeaderLabel = v52;

  [(MapsThemeLabel *)self->_destinationHeaderLabel setAccessibilityIdentifier:@"DestinationHeaderLabel"];
  [(MapsThemeLabel *)self->_destinationHeaderLabel setTranslatesAutoresizingMaskIntoConstraints:0];
  metadataContainerView = [(SimpleContaineeViewController *)self metadataContainerView];
  [metadataContainerView addSubview:self->_destinationHeaderLabel];

  topAnchor3 = [(MapsThemeLabel *)self->_destinationHeaderLabel topAnchor];
  metadataContainerView2 = [(SimpleContaineeViewController *)self metadataContainerView];
  topAnchor4 = [metadataContainerView2 topAnchor];
  v73 = [topAnchor3 constraintEqualToAnchor:topAnchor4 constant:20.0];
  v89[0] = v73;
  leadingAnchor3 = [(MapsThemeLabel *)self->_destinationHeaderLabel leadingAnchor];
  metadataContainerView3 = [(SimpleContaineeViewController *)self metadataContainerView];
  leadingAnchor4 = [metadataContainerView3 leadingAnchor];
  v69 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4 constant:16.0];
  v89[1] = v69;
  metadataContainerView4 = [(SimpleContaineeViewController *)self metadataContainerView];
  trailingAnchor3 = [metadataContainerView4 trailingAnchor];
  trailingAnchor4 = [(MapsThemeLabel *)self->_destinationHeaderLabel trailingAnchor];
  v58 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4 constant:16.0];
  v89[2] = v58;
  metadataContainerView5 = [(SimpleContaineeViewController *)self metadataContainerView];
  bottomAnchor3 = [metadataContainerView5 bottomAnchor];
  bottomAnchor4 = [(MapsThemeLabel *)self->_destinationHeaderLabel bottomAnchor];
  v62 = [bottomAnchor3 constraintEqualToAnchor:bottomAnchor4 constant:0.0];
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
  actionsTableView = [(SimpleContaineeViewController *)self actionsTableView];
  [actionsTableView registerClass:objc_opt_class() forCellReuseIdentifier:@"StopCell"];
}

- (void)dealloc
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = SharedTripContaineeViewController;
  [(SimpleContaineeViewController *)&v4 dealloc];
}

- (SharedTripContaineeViewController)initWithSharedTrip:(id)trip
{
  tripCopy = trip;
  v10.receiver = self;
  v10.super_class = SharedTripContaineeViewController;
  v6 = [(SharedTripContaineeViewController *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_sharedTrip, trip);
    v8 = +[MSPSharedTripService sharedInstance];
    [v8 addReceivingObserver:v7];
  }

  return v7;
}

@end