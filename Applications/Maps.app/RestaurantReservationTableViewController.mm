@interface RestaurantReservationTableViewController
- (BOOL)contactRequirementsSatisfiable;
- (BOOL)requirements:(id)requirements satisfiableWithDisplayPreferences:(id)preferences guest:(id)guest;
- (BOOL)shouldDisplayAdvisementSection;
- (BOOL)shouldDisplayContactCell;
- (BOOL)shouldDisplayContactCellForGuestDisplayPreferences:(id)preferences bookingsLoading:(BOOL)loading;
- (BOOL)shouldDisplayOffersSection;
- (BOOL)shouldDisplaySuffix;
- (BOOL)shouldDisplayTermsAndConditions;
- (BOOL)tableView:(id)view canEditRowAtIndexPath:(id)path;
- (BOOL)tableView:(id)view shouldHighlightRowAtIndexPath:(id)path;
- (ContactRequirements)inferredContactRequirements;
- (NSDateFormatter)timeSelectionDateFormatter;
- (NSDateFormatter)timeSuffixDateFormatter;
- (RestaurantReservationTableViewController)initWithAnalyticsCaptor:(id)captor analyticsBookingSession:(id)session;
- (RestaurantReservationTableViewControllerDelegate)delegate;
- (UIEdgeInsets)collectionView:(id)view layout:(id)layout insetForSectionAtIndex:(int64_t)index;
- (double)tableView:(id)view estimatedHeightForRowAtIndexPath:(id)path;
- (double)tableView:(id)view heightForFooterInSection:(int64_t)section;
- (double)tableView:(id)view heightForHeaderInSection:(int64_t)section;
- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path;
- (id)collectionView:(id)view viewForSupplementaryElementOfKind:(id)kind atIndexPath:(id)path;
- (id)contactDisplayColorSatisfied:(BOOL)satisfied;
- (id)contactDisplayStringSatisfied:(BOOL *)satisfied;
- (id)descriptionTextForDate:(id)date partySize:(unint64_t)size;
- (id)dimmableIndexPaths;
- (id)noOfferOffer;
- (id)noTablesAvailableTextForDate:(id)date;
- (id)reservationDetailsIndexPath;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (id)timeSuffixForDate:(id)date;
- (int64_t)collectionView:(id)view numberOfItemsInSection:(int64_t)section;
- (int64_t)numberOfOptionalSections;
- (int64_t)numberOfRowsInDetailsSection;
- (int64_t)numberOfRowsInOffersSection;
- (int64_t)numberOfSectionsInCollectionView:(id)view;
- (int64_t)offersSection;
- (int64_t)openAppRow;
- (int64_t)openAppSection;
- (int64_t)reservationDetailsSection;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
- (int64_t)transformedIndexForIndexPath:(id)path collectionView:(id)view;
- (void)_configureReservationDetails;
- (void)_configureReservationDetailsDateAndPartySize;
- (void)_configureReservationDetailsError;
- (void)_configureReservationDetailsLoadingIndicator;
- (void)_configureReservationDetailsTimeSelction;
- (void)adjustCollectionViewHeightForOffers:(BOOL)offers animated:(BOOL)animated;
- (void)changeDateButtonTapped:(id)tapped;
- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path;
- (void)configureButton;
- (void)configureCell:(id)cell withBooking:(id)booking row:(int64_t)row;
- (void)configureSpecialRequestTextCell:(id)cell;
- (void)deselectBooking;
- (void)didReceiveMemoryWarning;
- (void)footerButtonTapped:(id)tapped;
- (void)handleCellAppearanceForIndexPath:(id)path willDisplay:(BOOL)display didDisplay:(BOOL)didDisplay;
- (void)handleSectionAppearanceForSection:(int64_t)section willDisplay:(BOOL)display didDisplay:(BOOL)didDisplay;
- (void)rebuildCollectionViewSections;
- (void)rebuildOffers;
- (void)rebuildOffersNewOffers:(id)offers oldOffers:(id)oldOffers;
- (void)registerCells;
- (void)reservationTableViewCellDidSelectPrimaryButton:(id)button;
- (void)reservationTableViewCellDidSelectSecondaryButton:(id)button;
- (void)resetForChangedTimeSelection;
- (void)ridesharingAppActionTableViewCellDidPerformAction:(id)action;
- (void)scrollViewWillEndDragging:(id)dragging withVelocity:(CGPoint)velocity targetContentOffset:(CGPoint *)offset;
- (void)setAvailableBookings:(id)bookings;
- (void)setBookingPending:(BOOL)pending;
- (void)setBookingsLoading:(BOOL)loading;
- (void)setDate:(id)date;
- (void)setGuest:(id)guest;
- (void)setGuestDisplayPreferences:(id)preferences;
- (void)setPartySize:(unint64_t)size;
- (void)setRestaurantAdvisementText:(id)text;
- (void)setRestaurantDescriptionText:(id)text keepExisting:(BOOL)existing;
- (void)setSpecialRequestText:(id)text;
- (void)setTermsAndConditions:(id)conditions;
- (void)setupConstraints;
- (void)setupFooterButtonView;
- (void)setupTableView;
- (void)tableView:(id)view didDeselectRowAtIndexPath:(id)path;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)tableView:(id)view willDisplayCell:(id)cell forRowAtIndexPath:(id)path;
- (void)updateHeightCacheForOffersSectionDeletion;
- (void)updateHeightCacheForOffersSectionInsertion;
- (void)updateSelectedOffer;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation RestaurantReservationTableViewController

- (RestaurantReservationTableViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)scrollViewWillEndDragging:(id)dragging withVelocity:(CGPoint)velocity targetContentOffset:(CGPoint *)offset
{
  x = velocity.x;
  draggingCopy = dragging;
  reservationDetailCell = [(RestaurantReservationTableViewController *)self reservationDetailCell];
  timeSelectionCollectionView = [reservationDetailCell timeSelectionCollectionView];

  if (timeSelectionCollectionView == draggingCopy)
  {
    [(RestaurantReservationAnalyticsBookingSession *)self->_analyticsBookingSession setSwipedAvailableTimes:1];
    if (x <= 0.0)
    {
      v10 = 12;
    }

    else
    {
      v10 = 13;
    }

    v11 = +[MKMapService sharedService];
    [v11 captureUserAction:v10 onTarget:633 eventValue:0];
  }
}

- (id)contactDisplayColorSatisfied:(BOOL)satisfied
{
  if (satisfied)
  {
    +[UIColor systemGrayColor];
  }

  else
  {
    +[UIColor redColor];
  }
  v3 = ;

  return v3;
}

- (id)contactDisplayStringSatisfied:(BOOL *)satisfied
{
  inferredContactRequirements = [(RestaurantReservationTableViewController *)self inferredContactRequirements];
  guest = [(RestaurantReservationTableViewController *)self guest];
  nameComponents = [guest nameComponents];
  if (nameComponents)
  {
    guest2 = [(RestaurantReservationTableViewController *)self guest];
    nameComponents2 = [guest2 nameComponents];
    v9 = [NSPersonNameComponentsFormatter localizedStringFromPersonNameComponents:nameComponents2 style:0 options:0];
  }

  else
  {
    v9 = &stru_1016631F0;
  }

  guest3 = [(RestaurantReservationTableViewController *)self guest];
  phoneNumber = [guest3 phoneNumber];

  guest4 = [(RestaurantReservationTableViewController *)self guest];
  emailAddress = [guest4 emailAddress];

  guestDisplayPreferences = [(RestaurantReservationTableViewController *)self guestDisplayPreferences];
  nameFieldFirstNameOptional = [guestDisplayPreferences nameFieldFirstNameOptional];

  guestDisplayPreferences2 = [(RestaurantReservationTableViewController *)self guestDisplayPreferences];
  nameFieldLastNameOptional = [guestDisplayPreferences2 nameFieldLastNameOptional];

  if ([inferredContactRequirements nameRequired])
  {
    v17 = (nameFieldFirstNameOptional ^ 1) & nameFieldLastNameOptional;
  }

  else
  {
    v17 = nameFieldLastNameOptional;
  }

  v18 = [inferredContactRequirements nameRequired] ^ 1 | nameFieldFirstNameOptional;
  if (v18)
  {
    if (v17 & 1 | (([inferredContactRequirements nameRequired] & 1) == 0))
    {
      v19 = 0;
      goto LABEL_17;
    }

LABEL_15:
    [(RestaurantReservationTableViewController *)self guest:v45];
    v22 = inferredContactRequirements;
    v24 = v23 = v9;
    nameComponents3 = [v24 nameComponents];
    [nameComponents3 familyName];
    v27 = v26 = phoneNumber;
    v19 = [v27 length] == 0;

    phoneNumber = v26;
    v9 = v23;
    inferredContactRequirements = v22;
    nameComponents4 = v46;
    guest5 = v48;
    if (v18)
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

  guest5 = [(RestaurantReservationTableViewController *)self guest];
  nameComponents4 = [guest5 nameComponents];
  nameFieldLastNameOptional = [nameComponents4 givenName];
  if ([nameFieldLastNameOptional length])
  {
    if (!(v17 & 1 | (([inferredContactRequirements nameRequired] & 1) == 0)))
    {
      v45 = nameComponents4;
      v47 = guest5;
      goto LABEL_15;
    }

    v19 = 0;
  }

  else
  {
    v19 = 1;
  }

LABEL_16:

LABEL_17:
  if ([inferredContactRequirements phoneNumberRequired])
  {
    v28 = [phoneNumber length] == 0;
  }

  else
  {
    v28 = 0;
  }

  if ([inferredContactRequirements emailAddressRequired])
  {
    v29 = [emailAddress length] == 0;
    if (!v19)
    {
      goto LABEL_22;
    }

LABEL_28:
    *satisfied = 0;
    if (!v28 && !v29)
    {
      v31 = +[NSBundle mainBundle];
      v32 = v31;
      v33 = @"reservation_name_required_key";
      goto LABEL_33;
    }

    goto LABEL_29;
  }

  v29 = 0;
  if (v19)
  {
    goto LABEL_28;
  }

LABEL_22:
  *satisfied = !v28 && !v29;
  if (!v29 && v28)
  {
    v31 = +[NSBundle mainBundle];
    v32 = v31;
    v33 = @"reservation_phone_required_key";
    goto LABEL_33;
  }

  if (!v28 && v29)
  {
    v31 = +[NSBundle mainBundle];
    v32 = v31;
    v33 = @"reservation_email_required_key";
    goto LABEL_33;
  }

  if (v28 || v29)
  {
LABEL_29:
    v31 = +[NSBundle mainBundle];
    v32 = v31;
    v33 = @"reservation_multiple_required_key";
LABEL_33:
    v34 = [v31 localizedStringForKey:v33 value:@"localized string not found" table:0];

    goto LABEL_34;
  }

  if ([inferredContactRequirements nameRequired])
  {
    v30 = v9;
LABEL_41:
    v34 = v30;
    goto LABEL_34;
  }

  if ([inferredContactRequirements emailAddressRequired])
  {
    v30 = emailAddress;
    goto LABEL_41;
  }

  if ([inferredContactRequirements phoneNumberRequired])
  {
LABEL_40:
    v30 = phoneNumber;
    goto LABEL_41;
  }

  v36 = phoneNumber;
  if (-[__CFString length](v9, "length") && (-[RestaurantReservationTableViewController guestDisplayPreferences](self, "guestDisplayPreferences"), v37 = objc_claimAutoreleasedReturnValue(), v38 = [v37 nameFieldShouldBeDisplayed], v37, v38))
  {
    v39 = v9;
  }

  else
  {
    if ([v36 length])
    {
      guestDisplayPreferences3 = [(RestaurantReservationTableViewController *)self guestDisplayPreferences];
      phoneNumberFieldShouldBeDisplayed = [guestDisplayPreferences3 phoneNumberFieldShouldBeDisplayed];

      if (phoneNumberFieldShouldBeDisplayed)
      {
        phoneNumber = v36;
        goto LABEL_40;
      }
    }

    if (![emailAddress length] || (-[RestaurantReservationTableViewController guestDisplayPreferences](self, "guestDisplayPreferences"), v42 = objc_claimAutoreleasedReturnValue(), v43 = objc_msgSend(v42, "emailAddressFieldShouldBeDisplayed"), v42, !v43))
    {
      v44 = +[NSBundle mainBundle];
      v34 = [v44 localizedStringForKey:@"reservation_none_key" value:@"localized string not found" table:0];

      goto LABEL_53;
    }

    v39 = emailAddress;
  }

  v34 = v39;
LABEL_53:
  phoneNumber = v36;
LABEL_34:

  return v34;
}

- (BOOL)contactRequirementsSatisfiable
{
  selfCopy = self;
  inferredContactRequirements = [(RestaurantReservationTableViewController *)self inferredContactRequirements];
  guestDisplayPreferences = [(RestaurantReservationTableViewController *)selfCopy guestDisplayPreferences];
  guest = [(RestaurantReservationTableViewController *)selfCopy guest];
  LOBYTE(selfCopy) = [(RestaurantReservationTableViewController *)selfCopy requirements:inferredContactRequirements satisfiableWithDisplayPreferences:guestDisplayPreferences guest:guest];

  return selfCopy;
}

- (BOOL)requirements:(id)requirements satisfiableWithDisplayPreferences:(id)preferences guest:(id)guest
{
  requirementsCopy = requirements;
  preferencesCopy = preferences;
  guestCopy = guest;
  if ([requirementsCopy nameRequired] && !objc_msgSend(preferencesCopy, "nameFieldShouldBeDisplayed"))
  {
    goto LABEL_23;
  }

  if ([requirementsCopy nameRequired])
  {
    nameComponents = [guestCopy nameComponents];
    if (nameComponents || ([preferencesCopy nameFieldShouldBeDisplayed] & 1) == 0)
    {
    }

    else if (![preferencesCopy nameEditable])
    {
LABEL_23:
      emailAddressEditable = 0;
      goto LABEL_26;
    }
  }

  if ([requirementsCopy phoneNumberRequired] && !objc_msgSend(preferencesCopy, "phoneNumberFieldShouldBeDisplayed"))
  {
    goto LABEL_23;
  }

  if ([requirementsCopy phoneNumberRequired])
  {
    phoneNumber = [guestCopy phoneNumber];
    if (phoneNumber || ([preferencesCopy phoneNumberFieldShouldBeDisplayed] & 1) == 0)
    {
    }

    else if (![preferencesCopy phoneNumberEditable])
    {
      goto LABEL_23;
    }
  }

  if ([requirementsCopy emailAddressRequired] && !objc_msgSend(preferencesCopy, "emailAddressFieldShouldBeDisplayed"))
  {
    goto LABEL_23;
  }

  if (![requirementsCopy emailAddressRequired])
  {
LABEL_25:
    emailAddressEditable = 1;
    goto LABEL_26;
  }

  emailAddress = [guestCopy emailAddress];
  if (emailAddress || ([preferencesCopy emailAddressFieldShouldBeDisplayed] & 1) == 0)
  {

    goto LABEL_25;
  }

  emailAddressEditable = [preferencesCopy emailAddressEditable];
LABEL_26:

  return emailAddressEditable & 1;
}

- (BOOL)shouldDisplayContactCellForGuestDisplayPreferences:(id)preferences bookingsLoading:(BOOL)loading
{
  preferencesCopy = preferences;
  v6 = preferencesCopy;
  if (loading)
  {
    emailAddressFieldShouldBeDisplayed = 0;
  }

  else if (!preferencesCopy || ([preferencesCopy nameFieldShouldBeDisplayed] & 1) != 0 || (objc_msgSend(v6, "phoneNumberFieldShouldBeDisplayed") & 1) != 0)
  {
    emailAddressFieldShouldBeDisplayed = 1;
  }

  else
  {
    emailAddressFieldShouldBeDisplayed = [v6 emailAddressFieldShouldBeDisplayed];
  }

  return emailAddressFieldShouldBeDisplayed;
}

- (BOOL)shouldDisplayContactCell
{
  selfCopy = self;
  guestDisplayPreferences = [(RestaurantReservationTableViewController *)self guestDisplayPreferences];
  LOBYTE(selfCopy) = [(RestaurantReservationTableViewController *)selfCopy shouldDisplayContactCellForGuestDisplayPreferences:guestDisplayPreferences bookingsLoading:[(RestaurantReservationTableViewController *)selfCopy bookingsLoading]];

  return selfCopy;
}

- (BOOL)shouldDisplayTermsAndConditions
{
  termsAndConditions = [(RestaurantReservationTableViewController *)self termsAndConditions];
  localizedTermsAndConditionsText = [termsAndConditions localizedTermsAndConditionsText];
  v4 = [localizedTermsAndConditionsText length] != 0;

  return v4;
}

- (BOOL)shouldDisplayOffersSection
{
  offers = [(RestaurantReservationTableViewController *)self offers];
  v3 = [offers count] != 0;

  return v3;
}

- (BOOL)shouldDisplayAdvisementSection
{
  restaurantAdvisementText = [(RestaurantReservationTableViewController *)self restaurantAdvisementText];
  v3 = [restaurantAdvisementText length] != 0;

  return v3;
}

- (int64_t)numberOfOptionalSections
{
  LODWORD(v3) = [(RestaurantReservationTableViewController *)self shouldDisplayAdvisementSection];
  shouldDisplayOffersSection = [(RestaurantReservationTableViewController *)self shouldDisplayOffersSection];
  v5 = 1;
  if (v3)
  {
    v5 = 2;
  }

  if (shouldDisplayOffersSection)
  {
    v3 = v5;
  }

  else
  {
    v3 = v3;
  }

  return v3 + [(RestaurantReservationTableViewController *)self shouldDisplayTermsAndConditions];
}

- (int64_t)openAppRow
{
  if ([(RestaurantReservationTableViewController *)self shouldDisplayContactCell])
  {
    return 2;
  }

  else
  {
    return 1;
  }
}

- (int64_t)numberOfRowsInDetailsSection
{
  if ([(RestaurantReservationTableViewController *)self shouldDisplayContactCell])
  {
    return 2;
  }

  else
  {
    return 1;
  }
}

- (int64_t)numberOfRowsInOffersSection
{
  if (![(RestaurantReservationTableViewController *)self shouldDisplayOffersSection])
  {
    return 0;
  }

  offers = [(RestaurantReservationTableViewController *)self offers];
  v4 = [offers count] + 1;

  return v4;
}

- (int64_t)openAppSection
{
  if ([(RestaurantReservationTableViewController *)self shouldDisplayTermsAndConditions])
  {
    termsAndConditionsSection = [(RestaurantReservationTableViewController *)self termsAndConditionsSection];
  }

  else
  {
    termsAndConditionsSection = [(RestaurantReservationTableViewController *)self reservationDetailsSection];
  }

  return termsAndConditionsSection + 1;
}

- (int64_t)reservationDetailsSection
{
  if ([(RestaurantReservationTableViewController *)self shouldDisplayOffersSection])
  {
    offersSection = [(RestaurantReservationTableViewController *)self offersSection];
  }

  else if ([(RestaurantReservationTableViewController *)self shouldDisplayAdvisementSection])
  {
    offersSection = [(RestaurantReservationTableViewController *)self advisementSection];
  }

  else
  {
    offersSection = [(RestaurantReservationTableViewController *)self headerSection];
  }

  return offersSection + 1;
}

- (int64_t)offersSection
{
  if ([(RestaurantReservationTableViewController *)self shouldDisplayAdvisementSection])
  {
    return [(RestaurantReservationTableViewController *)self advisementSection]+ 1;
  }

  else
  {
    return 1;
  }
}

- (void)rebuildCollectionViewSections
{
  v3 = objc_opt_new();
  v4 = objc_opt_new();
  v5 = [[NSSortDescriptor alloc] initWithKey:@"bookingDate" ascending:1];
  availableBookings = [(RestaurantReservationTableViewController *)self availableBookings];
  v20 = v5;
  v26 = v5;
  v7 = [NSArray arrayWithObjects:&v26 count:1];
  v8 = [availableBookings sortedArrayUsingDescriptors:v7];

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v9 = v8;
  v10 = [v9 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v22;
    do
    {
      for (i = 0; i != v11; i = i + 1)
      {
        if (*v22 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v21 + 1) + 8 * i);
        bookingDate = [v14 bookingDate];
        v16 = [(RestaurantReservationTableViewController *)self timeSuffixForDate:bookingDate];

        v17 = [v3 objectForKeyedSubscript:v16];
        if (!v17)
        {
          v17 = objc_opt_new();
          [v3 setObject:v17 forKeyedSubscript:v16];
          [v4 addObject:v16];
        }

        [v17 addObject:v14];
      }

      v11 = [v9 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v11);
  }

  v18 = [NSDictionary dictionaryWithDictionary:v3];
  [(RestaurantReservationTableViewController *)self setAvailableBookingsBySection:v18];

  v19 = [NSArray arrayWithArray:v4];
  [(RestaurantReservationTableViewController *)self setSectionTitles:v19];
}

- (void)changeDateButtonTapped:(id)tapped
{
  analyticsCaptor = [(RestaurantReservationTableViewController *)self analyticsCaptor];
  [analyticsCaptor captureSelectTimeEditBooking];

  delegate = [(RestaurantReservationTableViewController *)self delegate];
  [delegate bookingSelectionViewControllerDidSelectDateRefinement:0];
}

- (id)noOfferOffer
{
  v2 = objc_alloc_init(INRestaurantOffer);
  v3 = +[NSBundle mainBundle];
  v4 = [v3 localizedStringForKey:@"reservation_no_offer_key" value:@"localized string not found" table:0];
  [v2 setOfferTitleText:v4];

  v5 = +[NSBundle mainBundle];
  v6 = [v5 localizedStringForKey:@"reservation_no_offer_detail_key" value:@"localized string not found" table:0];
  [v2 setOfferDetailText:v6];

  [v2 setOfferIdentifier:&stru_1016631F0];

  return v2;
}

- (void)updateHeightCacheForOffersSectionDeletion
{
  heightCache = [(RestaurantReservationTableViewController *)self heightCache];
  allKeys = [heightCache allKeys];

  heightCache2 = [(RestaurantReservationTableViewController *)self heightCache];
  allKeys2 = [heightCache2 allKeys];
  v7 = +[NSMutableDictionary dictionaryWithCapacity:](NSMutableDictionary, "dictionaryWithCapacity:", [allKeys2 count]);

  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v8 = allKeys;
  v9 = [v8 countByEnumeratingWithState:&v33 objects:v38 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v34;
    do
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v34 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v33 + 1) + 8 * i);
        section = [v13 section];
        if (section == [(RestaurantReservationTableViewController *)self offersSection])
        {
          heightCache3 = [(RestaurantReservationTableViewController *)self heightCache];
          [heightCache3 removeObjectForKey:v13];
        }

        else
        {
          section2 = [v13 section];
          if (section2 != [(RestaurantReservationTableViewController *)self offersSection]+ 1)
          {
            continue;
          }

          heightCache3 = +[NSIndexPath indexPathForRow:inSection:](NSIndexPath, "indexPathForRow:inSection:", [v13 row], objc_msgSend(v13, "row") - 1);
          heightCache4 = [(RestaurantReservationTableViewController *)self heightCache];
          v18 = [heightCache4 objectForKeyedSubscript:v13];
          [v7 setObject:v18 forKeyedSubscript:heightCache3];

          heightCache5 = [(RestaurantReservationTableViewController *)self heightCache];
          [heightCache5 removeObjectForKey:v13];
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v33 objects:v38 count:16];
    }

    while (v10);
  }

  allKeys3 = [v7 allKeys];

  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v21 = allKeys3;
  v22 = [v21 countByEnumeratingWithState:&v29 objects:v37 count:16];
  if (v22)
  {
    v23 = v22;
    v24 = *v30;
    do
    {
      for (j = 0; j != v23; j = j + 1)
      {
        if (*v30 != v24)
        {
          objc_enumerationMutation(v21);
        }

        v26 = *(*(&v29 + 1) + 8 * j);
        v27 = [v7 objectForKeyedSubscript:{v26, v29}];
        heightCache6 = [(RestaurantReservationTableViewController *)self heightCache];
        [heightCache6 setObject:v27 forKeyedSubscript:v26];
      }

      v23 = [v21 countByEnumeratingWithState:&v29 objects:v37 count:16];
    }

    while (v23);
  }
}

- (void)updateHeightCacheForOffersSectionInsertion
{
  heightCache = [(RestaurantReservationTableViewController *)self heightCache];
  allKeys = [heightCache allKeys];

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v5 = allKeys;
  v6 = [v5 countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v26;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v26 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v25 + 1) + 8 * i);
        section = [v10 section];
        if (section == [(RestaurantReservationTableViewController *)self offersSection])
        {
          v12 = +[NSIndexPath indexPathForRow:inSection:](NSIndexPath, "indexPathForRow:inSection:", [v10 row], objc_msgSend(v10, "section") + 1);
          heightCache2 = [(RestaurantReservationTableViewController *)self heightCache];
          v14 = [heightCache2 objectForKeyedSubscript:v10];
          heightCache3 = [(RestaurantReservationTableViewController *)self heightCache];
          [heightCache3 setObject:v14 forKeyedSubscript:v12];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v25 objects:v29 count:16];
    }

    while (v7);
  }

  offersRowHeight = [(RestaurantReservationTableViewController *)self offersRowHeight];

  if (offersRowHeight)
  {
    offers = [(RestaurantReservationTableViewController *)self offers];
    v18 = [offers count];

    if (v18)
    {
      v19 = 0;
      do
      {
        v20 = [NSIndexPath indexPathForRow:v19 inSection:[(RestaurantReservationTableViewController *)self offersSection]];
        offersRowHeight2 = [(RestaurantReservationTableViewController *)self offersRowHeight];
        heightCache4 = [(RestaurantReservationTableViewController *)self heightCache];
        [heightCache4 setObject:offersRowHeight2 forKeyedSubscript:v20];

        ++v19;
        offers2 = [(RestaurantReservationTableViewController *)self offers];
        v24 = [offers2 count];
      }

      while (v19 < v24);
    }
  }
}

- (void)rebuildOffersNewOffers:(id)offers oldOffers:(id)oldOffers
{
  offersCopy = offers;
  oldOffersCopy = oldOffers;
  v8 = [offersCopy mutableCopy];
  selfCopy = self;
  [(RestaurantReservationTableViewController *)self setOffers:v8];

  if ([offersCopy count])
  {
    v9 = 0;
  }

  else
  {
    v9 = [oldOffersCopy count] != 0;
  }

  if ([offersCopy count] && !objc_msgSend(oldOffersCopy, "count"))
  {
    v10 = selfCopy;
    [(RestaurantReservationTableViewController *)selfCopy updateHeightCacheForOffersSectionInsertion];
    tableView = [(RestaurantReservationTableViewController *)selfCopy tableView];
    [tableView beginUpdates];

    tableView2 = [(RestaurantReservationTableViewController *)selfCopy tableView];
    v13 = [NSIndexSet indexSetWithIndex:[(RestaurantReservationTableViewController *)selfCopy offersSection]];
    [tableView2 insertSections:v13 withRowAnimation:3];
    goto LABEL_33;
  }

  if (v9)
  {
    v10 = selfCopy;
    [(RestaurantReservationTableViewController *)selfCopy updateHeightCacheForOffersSectionDeletion];
    tableView3 = [(RestaurantReservationTableViewController *)selfCopy tableView];
    [tableView3 beginUpdates];

    tableView2 = [(RestaurantReservationTableViewController *)selfCopy tableView];
    v13 = [NSIndexSet indexSetWithIndex:[(RestaurantReservationTableViewController *)selfCopy offersSection]];
    [tableView2 deleteSections:v13 withRowAnimation:0];
LABEL_33:

    tableView4 = [(RestaurantReservationTableViewController *)v10 tableView];
    [tableView4 endUpdates];

    goto LABEL_34;
  }

  v14 = objc_opt_new();
  v15 = objc_opt_new();
  v48 = objc_opt_new();
  v50 = offersCopy;
  v51 = objc_opt_new();
  v65 = 0u;
  v66 = 0u;
  v67 = 0u;
  v68 = 0u;
  v16 = offersCopy;
  v17 = [v16 countByEnumeratingWithState:&v65 objects:v71 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v66;
    do
    {
      v20 = 0;
      do
      {
        if (*v66 != v19)
        {
          objc_enumerationMutation(v16);
        }

        offerTitleText = [*(*(&v65 + 1) + 8 * v20) offerTitleText];
        [v14 addObject:offerTitleText];

        v20 = v20 + 1;
      }

      while (v18 != v20);
      v18 = [v16 countByEnumeratingWithState:&v65 objects:v71 count:16];
    }

    while (v18);
  }

  v63 = 0u;
  v64 = 0u;
  v61 = 0u;
  v62 = 0u;
  v22 = oldOffersCopy;
  v23 = [v22 countByEnumeratingWithState:&v61 objects:v70 count:16];
  if (v23)
  {
    v24 = v23;
    v25 = *v62;
    do
    {
      v26 = 0;
      do
      {
        if (*v62 != v25)
        {
          objc_enumerationMutation(v22);
        }

        offerTitleText2 = [*(*(&v61 + 1) + 8 * v26) offerTitleText];
        [v15 addObject:offerTitleText2];

        v26 = v26 + 1;
      }

      while (v24 != v26);
      v24 = [v22 countByEnumeratingWithState:&v61 objects:v70 count:16];
    }

    while (v24);
  }

  v47 = v16;
  v49 = oldOffersCopy;

  v28 = [v22 count];
  v57 = 0u;
  v58 = 0u;
  v59 = 0u;
  v60 = 0u;
  reverseObjectEnumerator = [v22 reverseObjectEnumerator];
  v30 = [reverseObjectEnumerator countByEnumeratingWithState:&v57 objects:v69 count:16];
  if (v30)
  {
    v31 = v30;
    v32 = *v58;
    do
    {
      v33 = 0;
      do
      {
        if (*v58 != v32)
        {
          objc_enumerationMutation(reverseObjectEnumerator);
        }

        offerTitleText3 = [*(*(&v57 + 1) + 8 * v33) offerTitleText];
        v35 = [v14 containsObject:offerTitleText3];

        if ((v35 & 1) == 0)
        {
          v36 = [NSIndexPath indexPathForRow:v28 inSection:[(RestaurantReservationTableViewController *)selfCopy offersSection]];
          heightCache = [(RestaurantReservationTableViewController *)selfCopy heightCache];
          [heightCache removeObjectForKey:v36];

          [v51 addObject:v36];
        }

        v33 = v33 + 1;
        --v28;
      }

      while (v31 != v33);
      v31 = [reverseObjectEnumerator countByEnumeratingWithState:&v57 objects:v69 count:16];
    }

    while (v31);
  }

  v55[0] = _NSConcreteStackBlock;
  v55[1] = 3221225472;
  v55[2] = sub_100ED3F2C;
  v55[3] = &unk_101658988;
  v56 = v15;
  v38 = v15;
  v39 = [v47 indexesOfObjectsPassingTest:v55];
  v53[0] = _NSConcreteStackBlock;
  v53[1] = 3221225472;
  v53[2] = sub_100ED3F74;
  v53[3] = &unk_1016589B0;
  v53[4] = selfCopy;
  v54 = v48;
  v40 = v48;
  [v39 enumerateIndexesUsingBlock:v53];
  tableView5 = [(RestaurantReservationTableViewController *)selfCopy tableView];
  [tableView5 beginUpdates];

  tableView6 = [(RestaurantReservationTableViewController *)selfCopy tableView];
  [tableView6 insertRowsAtIndexPaths:v40 withRowAnimation:3];

  tableView7 = [(RestaurantReservationTableViewController *)selfCopy tableView];
  [tableView7 deleteRowsAtIndexPaths:v51 withRowAnimation:0];

  tableView8 = [(RestaurantReservationTableViewController *)selfCopy tableView];
  [tableView8 endUpdates];

  oldOffersCopy = v49;
  offersCopy = v50;
LABEL_34:
}

- (void)rebuildOffers
{
  selfCopy = self;
  offers = [(RestaurantReservationTableViewController *)self offers];
  v3 = +[NSMutableArray array];
  v4 = objc_opt_new();
  [(RestaurantReservationTableViewController *)selfCopy setSelectedOffer:0];
  selectedBooking = [(RestaurantReservationTableViewController *)selfCopy selectedBooking];

  if (selectedBooking)
  {
    selectedBooking2 = [(RestaurantReservationTableViewController *)selfCopy selectedBooking];
    offers2 = [selectedBooking2 offers];
    [v3 addObjectsFromArray:offers2];

    selectedBooking3 = [(RestaurantReservationTableViewController *)selfCopy selectedBooking];
    offers3 = [selectedBooking3 offers];
    v10 = [offers3 count];

    if (v10)
    {
      noOfferOffer = [(RestaurantReservationTableViewController *)selfCopy noOfferOffer];
      [v3 addObject:noOfferOffer];
    }
  }

  else
  {
    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    v26 = selfCopy;
    obj = [(RestaurantReservationTableViewController *)selfCopy availableBookings];
    v12 = [obj countByEnumeratingWithState:&v35 objects:v40 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v36;
      v28 = *v36;
      do
      {
        v15 = 0;
        v29 = v13;
        do
        {
          if (*v36 != v14)
          {
            objc_enumerationMutation(obj);
          }

          v16 = *(*(&v35 + 1) + 8 * v15);
          if ([v16 isBookingAvailable])
          {
            v33 = 0u;
            v34 = 0u;
            v31 = 0u;
            v32 = 0u;
            offers4 = [v16 offers];
            v18 = [offers4 countByEnumeratingWithState:&v31 objects:v39 count:16];
            if (v18)
            {
              v19 = v18;
              v20 = *v32;
              do
              {
                for (i = 0; i != v19; i = i + 1)
                {
                  if (*v32 != v20)
                  {
                    objc_enumerationMutation(offers4);
                  }

                  v22 = *(*(&v31 + 1) + 8 * i);
                  offerTitleText = [v22 offerTitleText];
                  v24 = [v4 containsObject:offerTitleText];

                  if ((v24 & 1) == 0)
                  {
                    [v3 addObject:v22];
                    offerTitleText2 = [v22 offerTitleText];
                    [v4 addObject:offerTitleText2];
                  }
                }

                v19 = [offers4 countByEnumeratingWithState:&v31 objects:v39 count:16];
              }

              while (v19);
            }

            v14 = v28;
            v13 = v29;
          }

          v15 = v15 + 1;
        }

        while (v15 != v13);
        v13 = [obj countByEnumeratingWithState:&v35 objects:v40 count:16];
      }

      while (v13);
    }

    selfCopy = v26;
  }

  [(RestaurantReservationTableViewController *)selfCopy rebuildOffersNewOffers:v3 oldOffers:offers];
}

- (void)handleSectionAppearanceForSection:(int64_t)section willDisplay:(BOOL)display didDisplay:(BOOL)didDisplay
{
  didDisplayCopy = didDisplay;
  displayCopy = display;
  if (display || didDisplay)
  {
    tableView = [(RestaurantReservationTableViewController *)self tableView];
    [tableView beginUpdates];

    v16 = [NSIndexSet indexSetWithIndex:section];
    v10 = !displayCopy;
    v11 = !didDisplayCopy;
    if (displayCopy && (v11 & 1) == 0)
    {
      tableView2 = [(RestaurantReservationTableViewController *)self tableView];
      [tableView2 reloadSections:v16 withRowAnimation:5];
    }

    if (((v11 | displayCopy) & 1) == 0)
    {
      tableView3 = [(RestaurantReservationTableViewController *)self tableView];
      [tableView3 deleteSections:v16 withRowAnimation:0];
    }

    if (((v10 | didDisplayCopy) & 1) == 0)
    {
      tableView4 = [(RestaurantReservationTableViewController *)self tableView];
      [tableView4 insertSections:v16 withRowAnimation:3];
    }

    tableView5 = [(RestaurantReservationTableViewController *)self tableView];
    [tableView5 endUpdates];
  }
}

- (void)handleCellAppearanceForIndexPath:(id)path willDisplay:(BOOL)display didDisplay:(BOOL)didDisplay
{
  didDisplayCopy = didDisplay;
  displayCopy = display;
  pathCopy = path;
  if (displayCopy || didDisplayCopy)
  {
    tableView = [(RestaurantReservationTableViewController *)self tableView];
    [tableView beginUpdates];

    v10 = !displayCopy;
    v11 = !didDisplayCopy;
    if (displayCopy && (v11 & 1) == 0)
    {
      tableView2 = [(RestaurantReservationTableViewController *)self tableView];
      v21 = pathCopy;
      v13 = [NSArray arrayWithObjects:&v21 count:1];
      [tableView2 reloadRowsAtIndexPaths:v13 withRowAnimation:5];
    }

    if (((v11 | displayCopy) & 1) == 0)
    {
      tableView3 = [(RestaurantReservationTableViewController *)self tableView];
      v20 = pathCopy;
      v15 = [NSArray arrayWithObjects:&v20 count:1];
      [tableView3 deleteRowsAtIndexPaths:v15 withRowAnimation:0];
    }

    if (((v10 | didDisplayCopy) & 1) == 0)
    {
      tableView4 = [(RestaurantReservationTableViewController *)self tableView];
      v19 = pathCopy;
      v17 = [NSArray arrayWithObjects:&v19 count:1];
      [tableView4 insertRowsAtIndexPaths:v17 withRowAnimation:3];
    }

    tableView5 = [(RestaurantReservationTableViewController *)self tableView];
    [tableView5 endUpdates];
  }
}

- (void)setRestaurantAdvisementText:(id)text
{
  textCopy = text;
  if (([textCopy isEqualToString:self->_restaurantAdvisementText] & 1) == 0)
  {
    shouldDisplayAdvisementSection = [(RestaurantReservationTableViewController *)self shouldDisplayAdvisementSection];
    v5 = [textCopy copy];
    restaurantAdvisementText = self->_restaurantAdvisementText;
    self->_restaurantAdvisementText = v5;

    [(RestaurantReservationTableViewController *)self handleSectionAppearanceForSection:[(RestaurantReservationTableViewController *)self advisementSection] willDisplay:[(RestaurantReservationTableViewController *)self shouldDisplayAdvisementSection] didDisplay:shouldDisplayAdvisementSection];
  }
}

- (void)setTermsAndConditions:(id)conditions
{
  conditionsCopy = conditions;
  if (([(INTermsAndConditions *)self->_termsAndConditions isEqual:?]& 1) == 0)
  {
    shouldDisplayTermsAndConditions = [(RestaurantReservationTableViewController *)self shouldDisplayTermsAndConditions];
    v5 = [conditionsCopy copy];
    termsAndConditions = self->_termsAndConditions;
    self->_termsAndConditions = v5;

    [(RestaurantReservationTableViewController *)self handleSectionAppearanceForSection:[(RestaurantReservationTableViewController *)self termsAndConditionsSection] willDisplay:[(RestaurantReservationTableViewController *)self shouldDisplayTermsAndConditions] didDisplay:shouldDisplayTermsAndConditions];
  }
}

- (id)reservationDetailsIndexPath
{
  headerSection = [(RestaurantReservationTableViewController *)self headerSection];

  return [NSIndexPath indexPathForRow:1 inSection:headerSection];
}

- (void)setPartySize:(unint64_t)size
{
  if (self->_partySize != size)
  {
    self->_partySize = size;
    tableView = [(RestaurantReservationTableViewController *)self tableView];
    reservationDetailsIndexPath = [(RestaurantReservationTableViewController *)self reservationDetailsIndexPath];
    v7 = reservationDetailsIndexPath;
    v6 = [NSArray arrayWithObjects:&v7 count:1];
    [tableView reloadRowsAtIndexPaths:v6 withRowAnimation:0];
  }
}

- (void)setDate:(id)date
{
  dateCopy = date;
  if (([dateCopy isEqualToDate:self->_date] & 1) == 0)
  {
    objc_storeStrong(&self->_date, date);
    tableView = [(RestaurantReservationTableViewController *)self tableView];
    reservationDetailsIndexPath = [(RestaurantReservationTableViewController *)self reservationDetailsIndexPath];
    v9 = reservationDetailsIndexPath;
    v8 = [NSArray arrayWithObjects:&v9 count:1];
    [tableView reloadRowsAtIndexPaths:v8 withRowAnimation:0];
  }
}

- (void)setRestaurantDescriptionText:(id)text keepExisting:(BOOL)existing
{
  textCopy = text;
  v7 = textCopy;
  if ((!existing || [textCopy length] || !-[NSString length](self->_restaurantDescriptionText, "length")) && (objc_msgSend(v7, "isEqual:", self->_restaurantDescriptionText) & 1) == 0)
  {
    v8 = [v7 copy];
    restaurantDescriptionText = self->_restaurantDescriptionText;
    self->_restaurantDescriptionText = v8;

    tableView = [(RestaurantReservationTableViewController *)self tableView];
    v11 = [NSIndexPath indexPathForRow:0 inSection:[(RestaurantReservationTableViewController *)self headerSection]];
    v13 = v11;
    v12 = [NSArray arrayWithObjects:&v13 count:1];
    [tableView reloadRowsAtIndexPaths:v12 withRowAnimation:0];
  }
}

- (void)setSpecialRequestText:(id)text
{
  textCopy = text;
  if (([textCopy isEqualToString:self->_specialRequestText] & 1) == 0)
  {
    v4 = [textCopy copy];
    specialRequestText = self->_specialRequestText;
    self->_specialRequestText = v4;

    v6 = [NSIndexPath indexPathForRow:[(RestaurantReservationTableViewController *)self reservationSpecialRequestRow] inSection:[(RestaurantReservationTableViewController *)self reservationDetailsSection]];
    tableView = [(RestaurantReservationTableViewController *)self tableView];
    v8 = [tableView cellForRowAtIndexPath:v6];

    [(RestaurantReservationTableViewController *)self configureSpecialRequestTextCell:v8];
  }
}

- (void)setGuestDisplayPreferences:(id)preferences
{
  preferencesCopy = preferences;
  if (([preferencesCopy isEqual:self->_guestDisplayPreferences] & 1) == 0)
  {
    guestDisplayPreferences = [(RestaurantReservationTableViewController *)self guestDisplayPreferences];
    v5 = [(RestaurantReservationTableViewController *)self shouldDisplayContactCellForGuestDisplayPreferences:guestDisplayPreferences bookingsLoading:[(RestaurantReservationTableViewController *)self bookingsLoading]];

    v6 = [(RestaurantReservationTableViewController *)self shouldDisplayContactCellForGuestDisplayPreferences:preferencesCopy bookingsLoading:[(RestaurantReservationTableViewController *)self bookingsLoading]];
    v7 = [preferencesCopy copy];
    guestDisplayPreferences = self->_guestDisplayPreferences;
    self->_guestDisplayPreferences = v7;

    v9 = [NSIndexPath indexPathForRow:[(RestaurantReservationTableViewController *)self reservationContactInfoRow] inSection:[(RestaurantReservationTableViewController *)self reservationDetailsSection]];
    [(RestaurantReservationTableViewController *)self handleCellAppearanceForIndexPath:v9 willDisplay:v6 didDisplay:v5];
    [(RestaurantReservationTableViewController *)self configureButton];
  }
}

- (void)setGuest:(id)guest
{
  guestCopy = guest;
  if (([guestCopy isEqual:self->_guest] & 1) == 0)
  {
    objc_storeStrong(&self->_guest, guest);
    v6 = [NSIndexPath indexPathForRow:[(RestaurantReservationTableViewController *)self reservationContactInfoRow] inSection:[(RestaurantReservationTableViewController *)self reservationDetailsSection]];
    tableView = [(RestaurantReservationTableViewController *)self tableView];
    v9 = v6;
    v8 = [NSArray arrayWithObjects:&v9 count:1];
    [tableView reloadRowsAtIndexPaths:v8 withRowAnimation:5];

    [(RestaurantReservationTableViewController *)self configureButton];
  }
}

- (void)setBookingPending:(BOOL)pending
{
  if (self->_bookingPending == !pending)
  {
    self->_bookingPending = pending;
    [(RestaurantReservationTableViewController *)self configureButton];
  }
}

- (void)setBookingsLoading:(BOOL)loading
{
  v3 = !loading;
  if (self->_bookingsLoading == v3)
  {
    loadingCopy = loading;
    if (loading)
    {
      [(RestaurantReservationTableViewController *)self setSelectedOffer:0];
      [(RestaurantReservationTableViewController *)self setSelectedBooking:0];
      tableView = [(RestaurantReservationTableViewController *)self tableView];
      [tableView setEditing:0 animated:1];

      [(RestaurantReservationTableViewController *)self rebuildOffers];
    }

    self->_bookingsLoading = loadingCopy;
    guestDisplayPreferences = [(RestaurantReservationTableViewController *)self guestDisplayPreferences];
    [(RestaurantReservationTableViewController *)self shouldDisplayContactCellForGuestDisplayPreferences:guestDisplayPreferences bookingsLoading:v3];

    guestDisplayPreferences2 = [(RestaurantReservationTableViewController *)self guestDisplayPreferences];
    [(RestaurantReservationTableViewController *)self shouldDisplayContactCellForGuestDisplayPreferences:guestDisplayPreferences2 bookingsLoading:loadingCopy];

    v12 = [NSIndexPath indexPathForRow:[(RestaurantReservationTableViewController *)self reservationContactInfoRow] inSection:[(RestaurantReservationTableViewController *)self reservationDetailsSection]];
    [RestaurantReservationTableViewController handleCellAppearanceForIndexPath:"handleCellAppearanceForIndexPath:willDisplay:didDisplay:" willDisplay:? didDisplay:?];
    [(RestaurantReservationTableViewController *)self _configureReservationDetails];
    if (!loadingCopy)
    {
      reservationDetailCell = [(RestaurantReservationTableViewController *)self reservationDetailCell];
      [reservationDetailCell layoutIfNeeded];

      reservationDetailCell2 = [(RestaurantReservationTableViewController *)self reservationDetailCell];
      timeSelectionCollectionView = [reservationDetailCell2 timeSelectionCollectionView];

      [timeSelectionCollectionView reloadData];
    }
  }
}

- (void)setAvailableBookings:(id)bookings
{
  bookingsCopy = bookings;
  if (([(NSArray *)self->_availableBookings isEqual:?]& 1) == 0)
  {
    sectionTitles = [(RestaurantReservationTableViewController *)self sectionTitles];
    v6 = [sectionTitles count];

    v7 = [NSIndexSet indexSetWithIndexesInRange:0, v6];
    objc_storeStrong(&self->_availableBookings, bookings);
    [(RestaurantReservationTableViewController *)self rebuildCollectionViewSections];
    [(RestaurantReservationTableViewController *)self rebuildOffers];
    availableBookings = [(RestaurantReservationTableViewController *)self availableBookings];
    v9 = [availableBookings count];

    if (!v9)
    {
      reservationDetailCell = [(RestaurantReservationTableViewController *)self reservationDetailCell];
      timeSelectionCollectionView = [reservationDetailCell timeSelectionCollectionView];
      [timeSelectionCollectionView deleteSections:v7];
    }
  }
}

- (NSDateFormatter)timeSuffixDateFormatter
{
  timeSuffixDateFormatter = self->_timeSuffixDateFormatter;
  if (!timeSuffixDateFormatter)
  {
    v4 = objc_opt_new();
    v5 = self->_timeSuffixDateFormatter;
    self->_timeSuffixDateFormatter = v4;

    [(NSDateFormatter *)self->_timeSuffixDateFormatter setDateFormat:@"a"];
    restaurantTimeZone = [(RestaurantReservationTableViewController *)self restaurantTimeZone];
    [(NSDateFormatter *)self->_timeSuffixDateFormatter setTimeZone:restaurantTimeZone];

    timeSuffixDateFormatter = self->_timeSuffixDateFormatter;
  }

  return timeSuffixDateFormatter;
}

- (NSDateFormatter)timeSelectionDateFormatter
{
  timeSelectionDateFormatter = self->_timeSelectionDateFormatter;
  if (!timeSelectionDateFormatter)
  {
    v4 = objc_opt_new();
    v5 = self->_timeSelectionDateFormatter;
    self->_timeSelectionDateFormatter = v4;

    [(NSDateFormatter *)self->_timeSelectionDateFormatter setDateFormat:0];
    [(NSDateFormatter *)self->_timeSelectionDateFormatter setDateStyle:0];
    [(NSDateFormatter *)self->_timeSelectionDateFormatter setTimeStyle:1];
    [(NSDateFormatter *)self->_timeSelectionDateFormatter setAMSymbol:&stru_1016631F0];
    [(NSDateFormatter *)self->_timeSelectionDateFormatter setPMSymbol:&stru_1016631F0];
    restaurantTimeZone = [(RestaurantReservationTableViewController *)self restaurantTimeZone];
    [(NSDateFormatter *)self->_timeSelectionDateFormatter setTimeZone:restaurantTimeZone];

    timeSelectionDateFormatter = self->_timeSelectionDateFormatter;
  }

  return timeSelectionDateFormatter;
}

- (BOOL)shouldDisplaySuffix
{
  v2 = +[NSLocale currentLocale];
  v3 = [NSDateFormatter dateFormatFromTemplate:@"j" options:0 locale:v2];

  LOBYTE(v2) = [v3 rangeOfString:@"a"] != 0x7FFFFFFFFFFFFFFFLL;
  return v2;
}

- (id)timeSuffixForDate:(id)date
{
  dateCopy = date;
  if ([(RestaurantReservationTableViewController *)self shouldDisplaySuffix])
  {
    timeSuffixDateFormatter = [(RestaurantReservationTableViewController *)self timeSuffixDateFormatter];
    v6 = [timeSuffixDateFormatter stringFromDate:dateCopy];
  }

  else
  {
    v6 = &stru_1016631F0;
  }

  return v6;
}

- (ContactRequirements)inferredContactRequirements
{
  selfCopy = self;
  selectedBooking = [(RestaurantReservationTableViewController *)self selectedBooking];

  if (selectedBooking)
  {
    selectedBooking2 = [(RestaurantReservationTableViewController *)selfCopy selectedBooking];
    LOBYTE(v4) = [selectedBooking2 requiresPhoneNumber];

    selectedBooking3 = [(RestaurantReservationTableViewController *)selfCopy selectedBooking];
    LOBYTE(selectedBooking2) = [selectedBooking3 requiresName];

    selectedBooking4 = [(RestaurantReservationTableViewController *)selfCopy selectedBooking];
    LOBYTE(selfCopy) = [selectedBooking4 requiresEmailAddress];
  }

  else
  {
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    selectedBooking4 = [(RestaurantReservationTableViewController *)selfCopy availableBookings];
    v8 = [selectedBooking4 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v8)
    {
      v9 = v8;
      LODWORD(selectedBooking2) = 0;
      LODWORD(selfCopy) = 0;
      v4 = 0;
      v10 = *v16;
      do
      {
        for (i = 0; i != v9; i = i + 1)
        {
          if (*v16 != v10)
          {
            objc_enumerationMutation(selectedBooking4);
          }

          v12 = *(*(&v15 + 1) + 8 * i);
          v4 |= [v12 requiresPhoneNumber];
          LODWORD(selectedBooking2) = selectedBooking2 | [v12 requiresName];
          LODWORD(selfCopy) = selfCopy | [v12 requiresEmailAddress];
        }

        v9 = [selectedBooking4 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v9);
    }

    else
    {
      LOBYTE(selectedBooking2) = 0;
      LOBYTE(selfCopy) = 0;
      LOBYTE(v4) = 0;
    }
  }

  v13 = [[ContactRequirements alloc] initWithNameRequired:selectedBooking2 & 1 phoneNumberRequired:v4 & 1 emailAddressRequired:selfCopy & 1];

  return v13;
}

- (id)noTablesAvailableTextForDate:(id)date
{
  dateCopy = date;
  v5 = +[NSBundle mainBundle];
  v6 = [v5 localizedStringForKey:@"reservations_no_tables_key" value:@"localized string not found" table:0];

  restaurantTimeZone = [(RestaurantReservationTableViewController *)self restaurantTimeZone];
  v8 = [NSDate _maps_dayDescriptionStringShortDescription:1 timeZone:restaurantTimeZone bookingDate:dateCopy];

  v9 = [NSString localizedStringWithFormat:v6, v8];

  return v9;
}

- (id)descriptionTextForDate:(id)date partySize:(unint64_t)size
{
  dateCopy = date;
  v7 = +[NSBundle mainBundle];
  v8 = [v7 localizedStringForKey:@"reservation_party_size_date_format_key" value:@"localized string not found" table:0];

  restaurantTimeZone = [(RestaurantReservationTableViewController *)self restaurantTimeZone];
  v10 = [NSDate _maps_dayDescriptionStringShortDescription:1 timeZone:restaurantTimeZone bookingDate:dateCopy];

  v11 = [NSString localizedStringWithFormat:v8, v10, size];

  return v11;
}

- (void)adjustCollectionViewHeightForOffers:(BOOL)offers animated:(BOOL)animated
{
  offersCopy = offers;
  if (animated)
  {
    tableView = [(RestaurantReservationTableViewController *)self tableView];
    [tableView beginUpdates];

    reservationDetailCell = [(RestaurantReservationTableViewController *)self reservationDetailCell];
    [reservationDetailCell setDisplayOffers:offersCopy];

    tableView2 = [(RestaurantReservationTableViewController *)self tableView];
    [tableView2 endUpdates];
  }

  else
  {
    tableView2 = [(RestaurantReservationTableViewController *)self reservationDetailCell];
    [tableView2 setDisplayOffers:offersCopy];
  }
}

- (id)dimmableIndexPaths
{
  v3 = objc_opt_new();
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  selfCopy = self;
  obj = [(RestaurantReservationTableViewController *)self sectionTitles];
  v20 = [obj countByEnumeratingWithState:&v25 objects:v30 count:16];
  if (v20)
  {
    v4 = 0;
    v18 = *v26;
    do
    {
      for (i = 0; i != v20; i = i + 1)
      {
        if (*v26 != v18)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v25 + 1) + 8 * i);
        v21 = 0u;
        v22 = 0u;
        v23 = 0u;
        v24 = 0u;
        availableBookingsBySection = [(RestaurantReservationTableViewController *)selfCopy availableBookingsBySection];
        v8 = [availableBookingsBySection objectForKeyedSubscript:v6];

        v9 = [v8 countByEnumeratingWithState:&v21 objects:v29 count:16];
        if (v9)
        {
          v10 = v9;
          v11 = 0;
          v12 = *v22;
          do
          {
            for (j = 0; j != v10; j = j + 1)
            {
              if (*v22 != v12)
              {
                objc_enumerationMutation(v8);
              }

              if ([*(*(&v21 + 1) + 8 * j) isBookingAvailable])
              {
                v14 = [NSIndexPath indexPathForItem:v11 inSection:v4];
                [v3 addObject:v14];
              }

              ++v11;
            }

            v10 = [v8 countByEnumeratingWithState:&v21 objects:v29 count:16];
          }

          while (v10);
        }

        ++v4;
      }

      v20 = [obj countByEnumeratingWithState:&v25 objects:v30 count:16];
    }

    while (v20);
  }

  v15 = [NSSet setWithSet:v3];

  return v15;
}

- (void)_configureReservationDetailsTimeSelction
{
  reservationDetailCell = [(RestaurantReservationTableViewController *)self reservationDetailCell];
  timeSelectionCollectionView = [reservationDetailCell timeSelectionCollectionView];

  reservationDetailCell2 = [(RestaurantReservationTableViewController *)self reservationDetailCell];
  timeSelectionCollectionViewLayout = [reservationDetailCell2 timeSelectionCollectionViewLayout];

  [timeSelectionCollectionView setDataSource:self];
  [timeSelectionCollectionView setDelegate:self];
  [timeSelectionCollectionView setAllowsMultipleSelection:0];
  [timeSelectionCollectionView setAllowsSelection:1];
  [timeSelectionCollectionView setShowsHorizontalScrollIndicator:0];
  [timeSelectionCollectionView setLayoutMargins:{20.0, 0.0, 0.0, 0.0}];
  offers = [(RestaurantReservationTableViewController *)self offers];
  v7 = [offers count] != 0;

  [(RestaurantReservationTableViewController *)self adjustCollectionViewHeightForOffers:v7 animated:[(RestaurantReservationTableViewController *)self viewHasAppeared]];
  dimmableIndexPaths = [(RestaurantReservationTableViewController *)self dimmableIndexPaths];
  [timeSelectionCollectionViewLayout setDimmableIndexPaths:dimmableIndexPaths];

  if ([(RestaurantReservationTableViewController *)self bookingsLoading])
  {
    [timeSelectionCollectionViewLayout setDimUnselected:0];
    [timeSelectionCollectionViewLayout invalidateLayout];
  }
}

- (void)_configureReservationDetailsError
{
  date = [(RestaurantReservationTableViewController *)self date];
  v4 = [(RestaurantReservationTableViewController *)self noTablesAvailableTextForDate:date];
  reservationDetailCell = [(RestaurantReservationTableViewController *)self reservationDetailCell];
  [reservationDetailCell setErrorText:v4];

  v6 = +[NSBundle mainBundle];
  v7 = [v6 localizedStringForKey:@"reservations_no_tables_action_key" value:@"localized string not found" table:0];
  reservationDetailCell2 = [(RestaurantReservationTableViewController *)self reservationDetailCell];
  [reservationDetailCell2 setErrorButtonText:v7];

  reservationDetailCell3 = [(RestaurantReservationTableViewController *)self reservationDetailCell];
  availableBookings = [(RestaurantReservationTableViewController *)self availableBookings];
  if ([availableBookings count])
  {
    v11 = 0;
  }

  else
  {
    v11 = [(RestaurantReservationTableViewController *)self bookingsLoading]^ 1;
  }

  [reservationDetailCell3 setDisplayError:v11 animated:1];

  reservationDetailCell4 = [(RestaurantReservationTableViewController *)self reservationDetailCell];
  [reservationDetailCell4 addErrorButtonTouchUpInsideTarget:self action:"changeDateButtonTapped:"];
}

- (void)_configureReservationDetailsLoadingIndicator
{
  reservationDetailCell = [(RestaurantReservationTableViewController *)self reservationDetailCell];
  [reservationDetailCell setLoading:-[RestaurantReservationTableViewController bookingsLoading](self animated:{"bookingsLoading"), 1}];

  v4 = +[NSBundle mainBundle];
  v9 = [v4 localizedStringForKey:@"reservations_loading_format_key" value:@"localized string not found" table:0];

  v5 = [NSString alloc];
  restaurantName = [(RestaurantReservationTableViewController *)self restaurantName];
  v7 = [v5 initWithFormat:v9, restaurantName];
  reservationDetailCell2 = [(RestaurantReservationTableViewController *)self reservationDetailCell];
  [reservationDetailCell2 setLoadingText:v7];
}

- (void)_configureReservationDetailsDateAndPartySize
{
  date = [(RestaurantReservationTableViewController *)self date];
  v4 = [(RestaurantReservationTableViewController *)self descriptionTextForDate:date partySize:[(RestaurantReservationTableViewController *)self partySize]];
  reservationDetailCell = [(RestaurantReservationTableViewController *)self reservationDetailCell];
  [reservationDetailCell setDateAndPartySizeText:v4];

  v6 = +[NSBundle mainBundle];
  v7 = [v6 localizedStringForKey:@"reservations_change_key" value:@"localized string not found" table:0];
  reservationDetailCell2 = [(RestaurantReservationTableViewController *)self reservationDetailCell];
  [reservationDetailCell2 setDateAndPartySizeButtonText:v7];

  reservationDetailCell3 = [(RestaurantReservationTableViewController *)self reservationDetailCell];
  [reservationDetailCell3 addDateAndPartySizeButtonTouchUpInsideTarget:self action:"changeDateButtonTapped:"];

  reservationDetailCell4 = [(RestaurantReservationTableViewController *)self reservationDetailCell];
  availableBookings = [(RestaurantReservationTableViewController *)self availableBookings];
  if ([availableBookings count])
  {
    v11 = 0;
  }

  else
  {
    v11 = [(RestaurantReservationTableViewController *)self bookingsLoading]^ 1;
  }

  [reservationDetailCell4 setHideDateAndPartySize:v11 animated:1];
}

- (void)_configureReservationDetails
{
  [(RestaurantReservationTableViewController *)self _configureReservationDetailsDateAndPartySize];
  [(RestaurantReservationTableViewController *)self _configureReservationDetailsLoadingIndicator];
  [(RestaurantReservationTableViewController *)self _configureReservationDetailsError];

  [(RestaurantReservationTableViewController *)self _configureReservationDetailsTimeSelction];
}

- (BOOL)tableView:(id)view shouldHighlightRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  section = [pathCopy section];
  if (section == -[RestaurantReservationTableViewController headerSection](self, "headerSection") && ![pathCopy row])
  {
    v13 = [viewCopy cellForRowAtIndexPath:pathCopy];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      LOBYTE(self) = [v13 shouldBeSelectable];
    }

    else
    {
      LOBYTE(self) = 1;
    }
  }

  else
  {
    section2 = [pathCopy section];
    if (section2 == -[RestaurantReservationTableViewController reservationDetailsSection](self, "reservationDetailsSection") && ![pathCopy row])
    {
      LODWORD(self) = ![(RestaurantReservationTableViewController *)self guestLoading];
    }

    else
    {
      section3 = [pathCopy section];
      if (section3 == -[RestaurantReservationTableViewController headerSection](self, "headerSection") && ![pathCopy row] || (v11 = objc_msgSend(pathCopy, "section"), v11 == -[RestaurantReservationTableViewController offersSection](self, "offersSection")) && -[RestaurantReservationTableViewController shouldDisplayOffersSection](self, "shouldDisplayOffersSection") && objc_msgSend(pathCopy, "row"))
      {
        LOBYTE(self) = 1;
      }

      else
      {
        section4 = [pathCopy section];
        LOBYTE(self) = section4 == [(RestaurantReservationTableViewController *)self reservationDetailsSection];
      }
    }
  }

  return self;
}

- (void)configureCell:(id)cell withBooking:(id)booking row:(int64_t)row
{
  cellCopy = cell;
  bookingCopy = booking;
  timeSelectionDateFormatter = [(RestaurantReservationTableViewController *)self timeSelectionDateFormatter];
  bookingDate = [bookingCopy bookingDate];
  v10 = [timeSelectionDateFormatter stringFromDate:bookingDate];
  [cellCopy setTitleText:v10];

  offers = [bookingCopy offers];
  if ([offers count])
  {
    isBookingAvailable = [bookingCopy isBookingAvailable];

    if (isBookingAvailable)
    {
      v13 = +[NSBundle mainBundle];
      v14 = [v13 localizedStringForKey:@"reservations_number_of_offers_key" value:@"localized string not found" table:0];

      offers2 = [bookingCopy offers];
      v16 = +[NSString localizedStringWithFormat:](NSString, "localizedStringWithFormat:", v14, [offers2 count]);
      [cellCopy setSubText:v16];

      goto LABEL_6;
    }
  }

  else
  {
  }

  [cellCopy setSubText:0];
LABEL_6:
  theme = [(RestaurantReservationTableViewController *)self theme];
  if ([bookingCopy isBookingAvailable])
  {
    [theme keyColor];
  }

  else
  {
    [theme reservationsGrayColor];
  }
  v18 = ;
  [cellCopy setColor:v18];
}

- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  if (([pathCopy section] & 0x8000000000000000) != 0 || (v8 = objc_msgSend(pathCopy, "section"), -[RestaurantReservationTableViewController sectionTitles](self, "sectionTitles"), v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(v9, "count"), v9, v8 >= v10))
  {
    v17 = objc_opt_new();
  }

  else
  {
    sectionTitles = [(RestaurantReservationTableViewController *)self sectionTitles];
    v12 = [sectionTitles objectAtIndexedSubscript:{objc_msgSend(pathCopy, "section")}];

    availableBookingsBySection = [(RestaurantReservationTableViewController *)self availableBookingsBySection];
    v14 = [availableBookingsBySection objectForKeyedSubscript:v12];

    if (([pathCopy row] & 0x8000000000000000) != 0 || (v15 = objc_msgSend(pathCopy, "row"), v15 >= objc_msgSend(v14, "count")))
    {
      v17 = objc_opt_new();
    }

    else
    {
      v16 = [RestaurantReservationTableViewCell reuseIdentifierForClass:objc_opt_class()];
      v17 = [viewCopy dequeueReusableCellWithReuseIdentifier:v16 forIndexPath:pathCopy];

      v18 = [v14 objectAtIndexedSubscript:{objc_msgSend(pathCopy, "row")}];
      -[RestaurantReservationTableViewController configureCell:withBooking:row:](self, "configureCell:withBooking:row:", v17, v18, [pathCopy row]);
    }
  }

  return v17;
}

- (id)collectionView:(id)view viewForSupplementaryElementOfKind:(id)kind atIndexPath:(id)path
{
  viewCopy = view;
  kindCopy = kind;
  pathCopy = path;
  v11 = pathCopy;
  if (UICollectionElementKindSectionHeader != kindCopy || ([pathCopy section] & 0x8000000000000000) != 0 || (v14 = objc_msgSend(v11, "section"), -[RestaurantReservationTableViewController sectionTitles](self, "sectionTitles"), v15 = objc_claimAutoreleasedReturnValue(), v16 = objc_msgSend(v15, "count"), v15, v14 >= v16))
  {
    v12 = objc_opt_new();
  }

  else
  {
    sectionTitles = [(RestaurantReservationTableViewController *)self sectionTitles];
    v18 = [sectionTitles objectAtIndexedSubscript:{objc_msgSend(v11, "section")}];

    v19 = [RestaurantReservationTableViewCell reuseIdentifierForClass:objc_opt_class()];
    v12 = [viewCopy dequeueReusableSupplementaryViewOfKind:UICollectionElementKindSectionHeader withReuseIdentifier:v19 forIndexPath:v11];

    label = [v12 label];
    [label setText:v18];

    v21 = +[UIColor secondaryLabelColor];
    label2 = [v12 label];
    [label2 setTextColor:v21];

    tableView = [(RestaurantReservationTableViewController *)self tableView];
    [tableView layoutMargins];
    [v12 setLayoutMargins:?];

    [v12 setMarginsRequired:{objc_msgSend(v11, "section") > 0}];
  }

  return v12;
}

- (int64_t)numberOfSectionsInCollectionView:(id)view
{
  sectionTitles = [(RestaurantReservationTableViewController *)self sectionTitles];
  v4 = [sectionTitles count];

  return v4;
}

- (int64_t)collectionView:(id)view numberOfItemsInSection:(int64_t)section
{
  if (section < 0)
  {
    return 0;
  }

  sectionTitles = [(RestaurantReservationTableViewController *)self sectionTitles];
  v7 = [sectionTitles count];

  if (v7 <= section)
  {
    return 0;
  }

  sectionTitles2 = [(RestaurantReservationTableViewController *)self sectionTitles];
  v9 = [sectionTitles2 objectAtIndexedSubscript:section];

  availableBookingsBySection = [(RestaurantReservationTableViewController *)self availableBookingsBySection];
  v11 = [availableBookingsBySection objectForKeyedSubscript:v9];
  v12 = [v11 count];

  return v12;
}

- (UIEdgeInsets)collectionView:(id)view layout:(id)layout insetForSectionAtIndex:(int64_t)index
{
  layoutCopy = layout;
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  [layoutCopy headerReferenceSize];
  v11 = left - v10;
  if (index >= 1)
  {
    [layoutCopy minimumInteritemSpacing];
    v11 = v12 + v11;
  }

  v13 = 20.0;
  v14 = v11;
  v15 = bottom;
  v16 = right;
  result.right = v16;
  result.bottom = v15;
  result.left = v14;
  result.top = v13;
  return result;
}

- (void)footerButtonTapped:(id)tapped
{
  analyticsCaptor = [(RestaurantReservationTableViewController *)self analyticsCaptor];
  [analyticsCaptor captureSelectTimeReserveTable];

  delegate = [(RestaurantReservationTableViewController *)self delegate];
  selectedBooking = [(RestaurantReservationTableViewController *)self selectedBooking];
  selectedOffer = [(RestaurantReservationTableViewController *)self selectedOffer];
  noOfferOffer = [(RestaurantReservationTableViewController *)self noOfferOffer];
  if ([selectedOffer isEqual:noOfferOffer])
  {
    [delegate bookingSelectionViewController:self didSelectBooking:selectedBooking offer:0];
  }

  else
  {
    selectedOffer2 = [(RestaurantReservationTableViewController *)self selectedOffer];
    [delegate bookingSelectionViewController:self didSelectBooking:selectedBooking offer:selectedOffer2];
  }
}

- (void)ridesharingAppActionTableViewCellDidPerformAction:(id)action
{
  analyticsCaptor = [(RestaurantReservationTableViewController *)self analyticsCaptor];
  [analyticsCaptor captureSelectTimePunchOut];

  delegate = [(RestaurantReservationTableViewController *)self delegate];
  [delegate bookingSelectionViewControllerDidSelectOpenInApp:self];
}

- (void)reservationTableViewCellDidSelectSecondaryButton:(id)button
{
  termsAndConditions = [(RestaurantReservationTableViewController *)self termsAndConditions];
  termsAndConditionsURL = [termsAndConditions termsAndConditionsURL];

  if (termsAndConditionsURL)
  {
    analyticsCaptor = [(RestaurantReservationTableViewController *)self analyticsCaptor];
    [analyticsCaptor captureSelectTimeLearnMore];

    v9 = +[UIApplication sharedApplication];
    termsAndConditions2 = [(RestaurantReservationTableViewController *)self termsAndConditions];
    termsAndConditionsURL2 = [termsAndConditions2 termsAndConditionsURL];
    [v9 openURL:termsAndConditionsURL2 options:&__NSDictionary0__struct completionHandler:0];
  }
}

- (void)reservationTableViewCellDidSelectPrimaryButton:(id)button
{
  termsAndConditions = [(RestaurantReservationTableViewController *)self termsAndConditions];
  privacyPolicyURL = [termsAndConditions privacyPolicyURL];

  termsAndConditions2 = [(RestaurantReservationTableViewController *)self termsAndConditions];
  termsAndConditions3 = termsAndConditions2;
  if (privacyPolicyURL)
  {
    privacyPolicyURL2 = [termsAndConditions2 privacyPolicyURL];
  }

  else
  {
    termsAndConditionsURL = [termsAndConditions2 termsAndConditionsURL];

    if (!termsAndConditionsURL)
    {
      return;
    }

    termsAndConditions3 = [(RestaurantReservationTableViewController *)self termsAndConditions];
    privacyPolicyURL2 = [termsAndConditions3 termsAndConditionsURL];
  }

  v12 = privacyPolicyURL2;

  if (v12)
  {
    analyticsCaptor = [(RestaurantReservationTableViewController *)self analyticsCaptor];
    [analyticsCaptor captureSelectTimeLearnMore];

    v11 = +[UIApplication sharedApplication];
    [v11 openURL:v12 options:&__NSDictionary0__struct completionHandler:0];
  }
}

- (int64_t)transformedIndexForIndexPath:(id)path collectionView:(id)view
{
  pathCopy = path;
  viewCopy = view;
  if ([pathCopy section] < 1)
  {
    v8 = 0;
  }

  else
  {
    v7 = 0;
    v8 = 0;
    do
    {
      v8 += [viewCopy numberOfItemsInSection:v7++];
    }

    while (v7 < [pathCopy section]);
  }

  item = [pathCopy item];

  return item + v8;
}

- (void)updateSelectedOffer
{
  tableView = [(RestaurantReservationTableViewController *)self tableView];
  isEditing = [tableView isEditing];

  if (isEditing)
  {
    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    tableView2 = [(RestaurantReservationTableViewController *)self tableView];
    indexPathsForVisibleRows = [tableView2 indexPathsForVisibleRows];

    v7 = [indexPathsForVisibleRows countByEnumeratingWithState:&v29 objects:v33 count:16];
    if (!v7)
    {
      goto LABEL_18;
    }

    v8 = v7;
    v9 = *v30;
    while (1)
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v30 != v9)
        {
          objc_enumerationMutation(indexPathsForVisibleRows);
        }

        v11 = *(*(&v29 + 1) + 8 * i);
        section = [v11 section];
        if (section == -[RestaurantReservationTableViewController offersSection](self, "offersSection") && [v11 row])
        {
          tableView3 = [(RestaurantReservationTableViewController *)self tableView];
          v14 = [tableView3 cellForRowAtIndexPath:v11];

          tableView4 = [(RestaurantReservationTableViewController *)self tableView];
          isEditing2 = [tableView4 isEditing];

          if (isEditing2)
          {
            formerSelection = [(RestaurantReservationTableViewController *)self formerSelection];
            v18 = [formerSelection length];

            if (v18 < 2)
            {
              offers = [(RestaurantReservationTableViewController *)self offers];
              firstObject = [offers firstObject];
              [(RestaurantReservationTableViewController *)self setSelectedOffer:firstObject];

              tableView5 = [(RestaurantReservationTableViewController *)self tableView];
              v27 = [NSIndexPath indexPathForRow:1 inSection:[(RestaurantReservationTableViewController *)self offersSection]];
              [tableView5 selectRowAtIndexPath:v27 animated:1 scrollPosition:0];

LABEL_14:
            }

            else
            {
              mainLabel = [v14 mainLabel];
              text = [mainLabel text];
              [(RestaurantReservationTableViewController *)self formerSelection];
              v21 = v9;
              v23 = v22 = indexPathsForVisibleRows;
              v28 = [text isEqualToString:v23];

              indexPathsForVisibleRows = v22;
              v9 = v21;

              if (v28)
              {
                tableView5 = [(RestaurantReservationTableViewController *)self tableView];
                [tableView5 selectRowAtIndexPath:v11 animated:1 scrollPosition:0];
                goto LABEL_14;
              }
            }
          }

          continue;
        }
      }

      v8 = [indexPathsForVisibleRows countByEnumeratingWithState:&v29 objects:v33 count:16];
      if (!v8)
      {
LABEL_18:

        return;
      }
    }
  }
}

- (void)resetForChangedTimeSelection
{
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100ED6EF0;
  v6[3] = &unk_101661B18;
  v6[4] = self;
  [UIView _animateUsingDefaultTimingWithOptions:0 animations:v6 completion:0];
  [(RestaurantReservationTableViewController *)self configureButton];
  [(RestaurantReservationTableViewController *)self rebuildOffers];
  tableView = [(RestaurantReservationTableViewController *)self tableView];
  selectedBooking = [(RestaurantReservationTableViewController *)self selectedBooking];
  if (selectedBooking)
  {
    shouldDisplayOffersSection = [(RestaurantReservationTableViewController *)self shouldDisplayOffersSection];
  }

  else
  {
    shouldDisplayOffersSection = 0;
  }

  [tableView setEditing:shouldDisplayOffersSection animated:1];

  [(RestaurantReservationTableViewController *)self updateSelectedOffer];
}

- (void)deselectBooking
{
  [(RestaurantReservationTableViewController *)self setSelectedBooking:0];
  reservationDetailCell = [(RestaurantReservationTableViewController *)self reservationDetailCell];
  timeSelectionCollectionViewLayout = [reservationDetailCell timeSelectionCollectionViewLayout];
  [timeSelectionCollectionViewLayout setDimUnselected:0];

  [(RestaurantReservationTableViewController *)self resetForChangedTimeSelection];
}

- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path
{
  v5 = [(RestaurantReservationTableViewController *)self transformedIndexForIndexPath:path collectionView:view];
  if ((v5 & 0x8000000000000000) == 0)
  {
    v6 = v5;
    availableBookings = [(RestaurantReservationTableViewController *)self availableBookings];
    v8 = [availableBookings count];

    if (v6 < v8)
    {
      availableBookings2 = [(RestaurantReservationTableViewController *)self availableBookings];
      selectedBooking = [(RestaurantReservationTableViewController *)self selectedBooking];
      v11 = [availableBookings2 indexOfObject:selectedBooking];

      if (v6 == v11)
      {

        [(RestaurantReservationTableViewController *)self deselectBooking];
      }

      else
      {
        availableBookings3 = [(RestaurantReservationTableViewController *)self availableBookings];
        v17 = [availableBookings3 objectAtIndexedSubscript:v6];

        if ([v17 isBookingAvailable])
        {
          analyticsCaptor = [(RestaurantReservationTableViewController *)self analyticsCaptor];
          [analyticsCaptor captureSelectTimeSelected];

          analyticsBookingSession = [(RestaurantReservationTableViewController *)self analyticsBookingSession];
          [analyticsBookingSession setCurrentView:4];

          [(RestaurantReservationTableViewController *)self setSelectedBooking:v17];
          reservationDetailCell = [(RestaurantReservationTableViewController *)self reservationDetailCell];
          timeSelectionCollectionViewLayout = [reservationDetailCell timeSelectionCollectionViewLayout];
          [timeSelectionCollectionViewLayout setDimUnselected:1];

          [(RestaurantReservationTableViewController *)self resetForChangedTimeSelection];
        }
      }
    }
  }
}

- (double)tableView:(id)view heightForFooterInSection:(int64_t)section
{
  openAppSection = [(RestaurantReservationTableViewController *)self openAppSection];
  result = 37.0;
  if (openAppSection != section)
  {
    return 6.0;
  }

  return result;
}

- (double)tableView:(id)view heightForHeaderInSection:(int64_t)section
{
  headerSection = [(RestaurantReservationTableViewController *)self headerSection];
  result = 35.0;
  if (headerSection != section)
  {
    return 6.0;
  }

  return result;
}

- (BOOL)tableView:(id)view canEditRowAtIndexPath:(id)path
{
  pathCopy = path;
  section = [pathCopy section];
  if (section == -[RestaurantReservationTableViewController offersSection](self, "offersSection") && [pathCopy row])
  {
    shouldDisplayOffersSection = [(RestaurantReservationTableViewController *)self shouldDisplayOffersSection];
  }

  else
  {
    shouldDisplayOffersSection = 0;
  }

  return shouldDisplayOffersSection;
}

- (void)tableView:(id)view didDeselectRowAtIndexPath:(id)path
{
  v5 = [(RestaurantReservationTableViewController *)self tableView:view];
  isEditing = [v5 isEditing];

  if (isEditing)
  {
    [(RestaurantReservationTableViewController *)self setFormerSelection:&stru_1016631F0];
  }

  offers = [(RestaurantReservationTableViewController *)self offers];
  v8 = [offers count];

  tableView = [(RestaurantReservationTableViewController *)self tableView];
  v9 = [NSIndexPath indexPathForRow:v8 inSection:[(RestaurantReservationTableViewController *)self offersSection]];
  [tableView selectRowAtIndexPath:v9 animated:1 scrollPosition:0];
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  section = [pathCopy section];
  if (section == [(RestaurantReservationTableViewController *)self offersSection])
  {
    tableView = [(RestaurantReservationTableViewController *)self tableView];
    isEditing = [tableView isEditing];

    if (isEditing)
    {
      tableView2 = [(RestaurantReservationTableViewController *)self tableView];
      v12 = [tableView2 cellForRowAtIndexPath:pathCopy];

      mainLabel = [v12 mainLabel];
      text = [mainLabel text];
      [(RestaurantReservationTableViewController *)self setFormerSelection:text];

      indexPathsForSelectedRows = [viewCopy indexPathsForSelectedRows];
      v41 = 0u;
      v42 = 0u;
      v43 = 0u;
      v44 = 0u;
      v16 = [indexPathsForSelectedRows countByEnumeratingWithState:&v41 objects:v45 count:16];
      if (v16)
      {
        v17 = v16;
        v18 = *v42;
        do
        {
          for (i = 0; i != v17; i = i + 1)
          {
            if (*v42 != v18)
            {
              objc_enumerationMutation(indexPathsForSelectedRows);
            }

            v20 = *(*(&v41 + 1) + 8 * i);
            section2 = [v20 section];
            if (section2 == [(RestaurantReservationTableViewController *)self offersSection])
            {
              v22 = [v20 row];
              if (v22 != [pathCopy row])
              {
                tableView3 = [(RestaurantReservationTableViewController *)self tableView];
                [tableView3 deselectRowAtIndexPath:v20 animated:1];
              }
            }
          }

          v17 = [indexPathsForSelectedRows countByEnumeratingWithState:&v41 objects:v45 count:16];
        }

        while (v17);
      }
    }

    v24 = [pathCopy row];
    if (v24 < 2 || (v25 = v24 - 1, -[RestaurantReservationTableViewController offers](self, "offers"), v26 = objc_claimAutoreleasedReturnValue(), v27 = [v26 count], v26, v25 >= v27))
    {
      [(RestaurantReservationTableViewController *)self setSelectedOffer:0];
    }

    else
    {
      offers = [(RestaurantReservationTableViewController *)self offers];
      v29 = [offers objectAtIndexedSubscript:v25];
      [(RestaurantReservationTableViewController *)self setSelectedOffer:v29];
    }
  }

  section3 = [pathCopy section];
  if (section3 == [(RestaurantReservationTableViewController *)self reservationDetailsSection])
  {
    [viewCopy deselectRowAtIndexPath:pathCopy animated:1];
  }

  section4 = [pathCopy section];
  if (section4 == [(RestaurantReservationTableViewController *)self reservationDetailsSection])
  {
    v32 = [pathCopy row];
    if (v32 == [(RestaurantReservationTableViewController *)self reservationContactInfoRow]&& [(RestaurantReservationTableViewController *)self shouldDisplayContactCell])
    {
      analyticsCaptor = [(RestaurantReservationTableViewController *)self analyticsCaptor];
      [analyticsCaptor captureSelectTimeEditUserInfo];

      delegate = [(RestaurantReservationTableViewController *)self delegate];
      [delegate userInfoCellSelected];
    }

    v35 = [pathCopy row];
    if (v35 == [(RestaurantReservationTableViewController *)self reservationSpecialRequestRow])
    {
      analyticsCaptor2 = [(RestaurantReservationTableViewController *)self analyticsCaptor];
      [analyticsCaptor2 captureSelectTimeAddSpecialRequest];

      delegate2 = [(RestaurantReservationTableViewController *)self delegate];
      [delegate2 specialRequestCellSelected];
    }
  }

  section5 = [pathCopy section];
  if (section5 == -[RestaurantReservationTableViewController headerSection](self, "headerSection") && ![pathCopy row])
  {
    tableView4 = [(RestaurantReservationTableViewController *)self tableView];
    [tableView4 deselectRowAtIndexPath:pathCopy animated:1];

    delegate3 = [(RestaurantReservationTableViewController *)self delegate];
    [delegate3 headerCellSelected];
  }
}

- (void)configureSpecialRequestTextCell:(id)cell
{
  cellCopy = cell;
  v4 = +[UIColor systemGrayColor];
  detailTextLabel = [cellCopy detailTextLabel];
  [detailTextLabel setTextColor:v4];

  v6 = +[NSBundle mainBundle];
  v7 = [v6 localizedStringForKey:@"reservation_special_request_key" value:@"localized string not found" table:0];
  textLabel = [cellCopy textLabel];
  [textLabel setText:v7];

  specialRequestText = [(RestaurantReservationTableViewController *)self specialRequestText];
  v10 = [specialRequestText length];
  if (v10)
  {
    [(RestaurantReservationTableViewController *)self specialRequestText];
  }

  else
  {
    self = +[NSBundle mainBundle];
    [(RestaurantReservationTableViewController *)self localizedStringForKey:@"reservation_special_request_none_key" value:@"localized string not found" table:0];
  }
  selfCopy = ;
  detailTextLabel2 = [cellCopy detailTextLabel];
  [detailTextLabel2 setText:selfCopy];

  if (!v10)
  {

    selfCopy = self;
  }
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  section = [pathCopy section];
  if (section == [(RestaurantReservationTableViewController *)self headerSection])
  {
    if (![pathCopy row])
    {
      v64 = objc_opt_class();
      v65 = NSStringFromClass(v64);
      v17 = [viewCopy dequeueReusableCellWithIdentifier:v65];

      [v17 setAutomaticallyHidesChevron:1];
      [v17 setSubtitleType:0];
      restaurantName = [(RestaurantReservationTableViewController *)self restaurantName];
      mainLabel = [v17 mainLabel];
      [mainLabel setText:restaurantName];

      restaurantDescriptionText = [(RestaurantReservationTableViewController *)self restaurantDescriptionText];
      subLabel = [v17 subLabel];
      [subLabel setText:restaurantDescriptionText];

      v70 = [UIFont preferredFontForTextStyle:UIFontTextStyleSubheadline];
      subLabel2 = [v17 subLabel];
      [subLabel2 setFont:v70];

      v72 = +[UIColor secondaryLabelColor];
      subLabel3 = [v17 subLabel];
      [subLabel3 setTextColor:v72];

      if ([(RestaurantReservationTableViewController *)self useTruncatedAdvisement])
      {
        v74 = 2;
      }

      else
      {
        v74 = 0;
      }

      subLabel4 = [v17 subLabel];
      [subLabel4 setNumberOfLines:v74];

      contentView = [v17 contentView];
      [contentView layoutMargins];
      v78 = v77;
      v80 = v79;
      v82 = v81;

      contentView2 = [v17 contentView];
      [contentView2 setLayoutMargins:{v78, v80, 20.0, v82}];

LABEL_40:
      [v17 setAccessoryType:1];
      goto LABEL_52;
    }

    if ([pathCopy row] == 1)
    {
      reservationDetailCell = [(RestaurantReservationTableViewController *)self reservationDetailCell];

      if (!reservationDetailCell)
      {
        v10 = objc_opt_class();
        v11 = NSStringFromClass(v10);
        v12 = [viewCopy dequeueReusableCellWithIdentifier:v11];

        [(RestaurantReservationTableViewController *)self setReservationDetailCell:v12];
        [(RestaurantReservationTableViewController *)self _configureReservationDetails];
      }

      reservationDetailCell2 = [(RestaurantReservationTableViewController *)self reservationDetailCell];
      goto LABEL_42;
    }
  }

  section2 = [pathCopy section];
  if (section2 == [(RestaurantReservationTableViewController *)self advisementSection]&& [(RestaurantReservationTableViewController *)self shouldDisplayAdvisementSection])
  {
    if (![pathCopy row])
    {
      v84 = objc_opt_class();
      v85 = NSStringFromClass(v84);
      v17 = [viewCopy dequeueReusableCellWithIdentifier:v85];

      v86 = +[NSBundle mainBundle];
      v53 = [v86 localizedStringForKey:@"reservation_from_restaurant_format_key" value:@"localized string not found" table:0];

      v87 = [NSString alloc];
      restaurantName2 = [(RestaurantReservationTableViewController *)self restaurantName];
      goto LABEL_50;
    }

    if ([pathCopy row] == 1)
    {
      v15 = objc_opt_class();
      v16 = NSStringFromClass(v15);
      v17 = [viewCopy dequeueReusableCellWithIdentifier:v16];

      restaurantAdvisementText = [(RestaurantReservationTableViewController *)self restaurantAdvisementText];
      [v17 setText:restaurantAdvisementText];

      [v17 setPrimaryButtonText:0];
      [v17 setSecondaryButtonText:0];
      goto LABEL_52;
    }
  }

  section3 = [pathCopy section];
  if (section3 != [(RestaurantReservationTableViewController *)self offersSection]|| ![(RestaurantReservationTableViewController *)self shouldDisplayOffersSection])
  {
    section4 = [pathCopy section];
    if (section4 == [(RestaurantReservationTableViewController *)self reservationDetailsSection])
    {
      v33 = objc_opt_class();
      v34 = NSStringFromClass(v33);
      v17 = [viewCopy dequeueReusableCellWithIdentifier:v34];

      if (!v17)
      {
        v35 = [UITableViewCell alloc];
        v36 = objc_opt_class();
        v37 = NSStringFromClass(v36);
        v17 = [v35 initWithStyle:1 reuseIdentifier:v37];
      }

      v38 = [pathCopy row];
      if (v38 == [(RestaurantReservationTableViewController *)self reservationContactInfoRow]&& [(RestaurantReservationTableViewController *)self shouldDisplayContactCell])
      {
        v111 = 0;
        v39 = +[NSBundle mainBundle];
        v40 = [v39 localizedStringForKey:@"reservation_your_details_key" value:@"localized string not found" table:0];
        textLabel = [v17 textLabel];
        [textLabel setText:v40];

        v42 = [(RestaurantReservationTableViewController *)self contactDisplayStringSatisfied:&v111];
        detailTextLabel = [v17 detailTextLabel];
        [detailTextLabel setText:v42];

        v44 = [(RestaurantReservationTableViewController *)self contactDisplayColorSatisfied:v111];
        detailTextLabel2 = [v17 detailTextLabel];
        [detailTextLabel2 setTextColor:v44];
      }

      v46 = [pathCopy row];
      if (v46 == [(RestaurantReservationTableViewController *)self reservationSpecialRequestRow])
      {
        [(RestaurantReservationTableViewController *)self configureSpecialRequestTextCell:v17];
      }

      goto LABEL_40;
    }

    section5 = [pathCopy section];
    if (section5 == -[RestaurantReservationTableViewController openAppSection](self, "openAppSection") && ![pathCopy row])
    {
      v100 = objc_opt_class();
      v101 = NSStringFromClass(v100);
      v17 = [viewCopy dequeueReusableCellWithIdentifier:v101];

      appName = [(RestaurantReservationTableViewController *)self appName];
      [v17 setApplicationName:appName titleType:1];

      [v17 setDelegate:self];
      goto LABEL_52;
    }

    section6 = [pathCopy section];
    if (section6 != [(RestaurantReservationTableViewController *)self termsAndConditionsSection]|| ![(RestaurantReservationTableViewController *)self shouldDisplayTermsAndConditions])
    {
      goto LABEL_41;
    }

    if ([pathCopy row])
    {
      if ([pathCopy row] == 1)
      {
        v49 = objc_opt_class();
        v50 = NSStringFromClass(v49);
        v17 = [viewCopy dequeueReusableCellWithIdentifier:v50];

        termsAndConditions = [(RestaurantReservationTableViewController *)self termsAndConditions];
        localizedTermsAndConditionsText = [termsAndConditions localizedTermsAndConditionsText];
        [v17 setText:localizedTermsAndConditionsText];

        v53 = [NSMutableArray arrayWithCapacity:2];
        termsAndConditions2 = [(RestaurantReservationTableViewController *)self termsAndConditions];
        privacyPolicyURL = [termsAndConditions2 privacyPolicyURL];

        if (privacyPolicyURL)
        {
          v56 = +[NSBundle mainBundle];
          v57 = [v56 localizedStringForKey:@"reservations_privacy_policy_title" value:@"localized string not found" table:0];
          [v53 addObject:v57];
        }

        termsAndConditions3 = [(RestaurantReservationTableViewController *)self termsAndConditions];
        termsAndConditionsURL = [termsAndConditions3 termsAndConditionsURL];

        if (termsAndConditionsURL)
        {
          v60 = +[NSBundle mainBundle];
          v61 = [v60 localizedStringForKey:@"reservations_terms_of_use_title" value:@"localized string not found" table:0];
          [v53 addObject:v61];
        }

        firstObject = [v53 firstObject];
        [v17 setPrimaryButtonText:firstObject];

        lastObject = [v53 lastObject];
        [v17 setSecondaryButtonText:lastObject];

        [v17 setDelegate:self];
        goto LABEL_51;
      }

LABEL_41:
      reservationDetailCell2 = objc_opt_new();
LABEL_42:
      v17 = reservationDetailCell2;
      goto LABEL_52;
    }

    v103 = objc_opt_class();
    v104 = NSStringFromClass(v103);
    v17 = [viewCopy dequeueReusableCellWithIdentifier:v104];

    v105 = +[NSBundle mainBundle];
    v53 = [v105 localizedStringForKey:@"reservation_from_provider_format_key" value:@"localized string not found" table:0];

    v87 = [NSString alloc];
    restaurantName2 = [(RestaurantReservationTableViewController *)self appName];
LABEL_50:
    v106 = restaurantName2;
    v107 = [v87 initWithFormat:v53, restaurantName2];
    [v17 setText:v107];

    v108 = +[UIColor secondaryLabelColor];
    [v17 setTextColor:v108];

    [v17 setHidesHairline:1];
    v109 = [UIFont preferredFontForTextStyle:UIFontTextStyleCaption1];
    [v17 setFont:v109];

LABEL_51:
    goto LABEL_52;
  }

  if ([pathCopy row])
  {
    v20 = [pathCopy row] - 1;
    v21 = objc_opt_class();
    v22 = NSStringFromClass(v21);
    v17 = [viewCopy dequeueReusableCellWithIdentifier:v22];

    offers = [(RestaurantReservationTableViewController *)self offers];
    v24 = [offers count];

    if (v20 >= v24)
    {
      v95 = +[NSBundle mainBundle];
      v96 = [v95 localizedStringForKey:@"reservation_no_offer_key" value:@"localized string not found" table:0];
      mainLabel2 = [v17 mainLabel];
      [mainLabel2 setText:v96];

      v26 = +[NSBundle mainBundle];
      offerDetailText = [v26 localizedStringForKey:@"reservation_no_offer_detail_key" value:@"localized string not found" table:0];
      subLabel5 = [v17 subLabel];
      [subLabel5 setText:offerDetailText];
    }

    else
    {
      offers2 = [(RestaurantReservationTableViewController *)self offers];
      v26 = [offers2 objectAtIndexedSubscript:v20];

      offerTitleText = [v26 offerTitleText];
      mainLabel3 = [v17 mainLabel];
      [mainLabel3 setText:offerTitleText];

      offerDetailText = [v26 offerDetailText];
      subLabel5 = [offerDetailText stringByReplacingOccurrencesOfString:@"\n" withString:@" "];
      subLabel6 = [v17 subLabel];
      [subLabel6 setText:subLabel5];
    }

    v94 = objc_opt_new();
    v98 = +[UIColor clearColor];
    [v94 setBackgroundColor:v98];

    v99 = +[RestaurantReservationsChooseOfferCell appearance];
    [v99 setSelectedBackgroundView:v94];
  }

  else
  {
    v89 = objc_opt_class();
    v90 = NSStringFromClass(v89);
    v17 = [viewCopy dequeueReusableCellWithIdentifier:v90];

    v91 = +[NSBundle mainBundle];
    v92 = [v91 localizedStringForKey:@"reservation_offers_key" value:@"localized string not found" table:0];
    [v17 setText:v92];

    v93 = +[UIColor secondaryLabelColor];
    [v17 setTextColor:v93];

    [v17 setHidesHairline:1];
    v94 = [UIFont preferredFontForTextStyle:UIFontTextStyleCaption1];
    [v17 setFont:v94];
  }

LABEL_52:

  return v17;
}

- (void)tableView:(id)view willDisplayCell:(id)cell forRowAtIndexPath:(id)path
{
  cellCopy = cell;
  pathCopy = path;
  section = [pathCopy section];
  if (section == -[RestaurantReservationTableViewController headerSection](self, "headerSection") && [pathCopy row] == 1)
  {
    [cellCopy bounds];
    [cellCopy setSeparatorInset:{0.0, v9, 0.0, 0.0}];
  }

  heightCache = [(RestaurantReservationTableViewController *)self heightCache];

  if (!heightCache)
  {
    v11 = objc_opt_new();
    [(RestaurantReservationTableViewController *)self setHeightCache:v11];
  }

  section2 = [pathCopy section];
  if (section2 == [(RestaurantReservationTableViewController *)self offersSection]&& [(RestaurantReservationTableViewController *)self shouldDisplayOffersSection])
  {
    if (![pathCopy row])
    {
      [cellCopy bounds];
      [cellCopy setSeparatorInset:{0.0, v13, 0.0, 0.0}];
    }

    [cellCopy bounds];
    v14 = [NSNumber numberWithDouble:CGRectGetHeight(v24)];
    [(RestaurantReservationTableViewController *)self setOffersRowHeight:v14];
  }

  section3 = [pathCopy section];
  v16 = section3 == -[RestaurantReservationTableViewController termsAndConditionsSection](self, "termsAndConditionsSection") && -[RestaurantReservationTableViewController shouldDisplayTermsAndConditions](self, "shouldDisplayTermsAndConditions") && [pathCopy row] == 0;
  section4 = [pathCopy section];
  v18 = section4 == -[RestaurantReservationTableViewController advisementSection](self, "advisementSection") && -[RestaurantReservationTableViewController shouldDisplayAdvisementSection](self, "shouldDisplayAdvisementSection") && [pathCopy row] == 0;
  if (v16 || v18)
  {
    [cellCopy bounds];
    [cellCopy setSeparatorInset:{0.0, v19, 0.0, 0.0}];
  }

  [cellCopy bounds];
  v20 = [NSNumber numberWithDouble:CGRectGetHeight(v25)];
  heightCache2 = [(RestaurantReservationTableViewController *)self heightCache];
  [heightCache2 setObject:v20 forKeyedSubscript:pathCopy];
}

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
{
  if ([(RestaurantReservationTableViewController *)self headerSection]== section || [(RestaurantReservationTableViewController *)self advisementSection]== section && [(RestaurantReservationTableViewController *)self shouldDisplayAdvisementSection])
  {
    return 2;
  }

  if ([(RestaurantReservationTableViewController *)self offersSection]== section && [(RestaurantReservationTableViewController *)self shouldDisplayOffersSection])
  {

    return [(RestaurantReservationTableViewController *)self numberOfRowsInOffersSection];
  }

  if ([(RestaurantReservationTableViewController *)self reservationDetailsSection]!= section)
  {
    if ([(RestaurantReservationTableViewController *)self termsAndConditionsSection]!= section || ![(RestaurantReservationTableViewController *)self shouldDisplayTermsAndConditions])
    {
      return [(RestaurantReservationTableViewController *)self openAppSection]== section;
    }

    return 2;
  }

  return [(RestaurantReservationTableViewController *)self numberOfRowsInDetailsSection];
}

- (double)tableView:(id)view estimatedHeightForRowAtIndexPath:(id)path
{
  pathCopy = path;
  heightCache = [(RestaurantReservationTableViewController *)self heightCache];
  v7 = [heightCache objectForKeyedSubscript:pathCopy];

  if (v7)
  {
    [v7 floatValue];
    v9 = v8;
  }

  else
  {
    reservationDetailsIndexPath = [(RestaurantReservationTableViewController *)self reservationDetailsIndexPath];
    v11 = [pathCopy isEqual:reservationDetailsIndexPath];

    if (v11)
    {
      v9 = 149.0;
    }

    else
    {
      v9 = 40.0;
    }
  }

  return v9;
}

- (void)configureButton
{
  v35 = 0;
  v3 = [(RestaurantReservationTableViewController *)self contactDisplayStringSatisfied:&v35];
  inferredContactRequirements = [(RestaurantReservationTableViewController *)self inferredContactRequirements];
  guestDisplayPreferences = [(RestaurantReservationTableViewController *)self guestDisplayPreferences];
  guest = [(RestaurantReservationTableViewController *)self guest];
  v7 = [(RestaurantReservationTableViewController *)self requirements:inferredContactRequirements satisfiableWithDisplayPreferences:guestDisplayPreferences guest:guest];

  selectedBooking = [(RestaurantReservationTableViewController *)self selectedBooking];
  if (selectedBooking && ![(RestaurantReservationTableViewController *)self bookingPending])
  {
    v9 = v35 & v7 | v7 ^ 1;
  }

  else
  {
    v9 = 0;
  }

  footerButtonView = [(RestaurantReservationTableViewController *)self footerButtonView];
  button = [footerButtonView button];
  [button setEnabled:v9 & 1];

  footerButtonView2 = [(RestaurantReservationTableViewController *)self footerButtonView];
  button2 = [footerButtonView2 button];
  if ([button2 isEnabled])
  {
    v14 = 1.0;
  }

  else
  {
    v14 = 0.200000003;
  }

  footerButtonView3 = [(RestaurantReservationTableViewController *)self footerButtonView];
  button3 = [footerButtonView3 button];
  [button3 setAlpha:v14];

  bookingPending = [(RestaurantReservationTableViewController *)self bookingPending];
  selectedBooking2 = [(RestaurantReservationTableViewController *)self selectedBooking];
  v19 = selectedBooking2;
  if (bookingPending)
  {
    requiresManualRequest = [selectedBooking2 requiresManualRequest];

    v21 = +[NSBundle mainBundle];
    if (requiresManualRequest)
    {
      v22 = @"reservation_booking_request_pending_title";
    }

    else
    {
      v22 = @"reservation_booking_pending_title";
    }

    goto LABEL_19;
  }

  if (v19)
  {
    if ((v7 & 1) == 0)
    {
      v27 = +[NSBundle mainBundle];
      v21 = v27;
      v22 = @"reservation_continue_in_app_title_key";
LABEL_20:
      v25 = [v27 localizedStringForKey:v22 value:@"localized string not found" table:0];

      v28 = [NSString alloc];
      appName = [(RestaurantReservationTableViewController *)self appName];
      v26 = [v28 initWithFormat:v25, appName];

      goto LABEL_21;
    }

    selectedBooking3 = [(RestaurantReservationTableViewController *)self selectedBooking];
    requiresManualRequest2 = [selectedBooking3 requiresManualRequest];

    v21 = +[NSBundle mainBundle];
    if (requiresManualRequest2)
    {
      v22 = @"reservation_request_with_app_title";
    }

    else
    {
      v22 = @"reservation_book_with_app_title";
    }

LABEL_19:
    v27 = v21;
    goto LABEL_20;
  }

  v25 = +[NSBundle mainBundle];
  v26 = [v25 localizedStringForKey:@"reservation_choose_time_button_title" value:@"localized string not found" table:0];
LABEL_21:

  footerButtonView4 = [(RestaurantReservationTableViewController *)self footerButtonView];
  button4 = [footerButtonView4 button];
  configuration = [button4 configuration];

  [configuration setTitle:v26];
  footerButtonView5 = [(RestaurantReservationTableViewController *)self footerButtonView];
  button5 = [footerButtonView5 button];
  [button5 setConfiguration:configuration];
}

- (void)didReceiveMemoryWarning
{
  v2.receiver = self;
  v2.super_class = RestaurantReservationTableViewController;
  [(RestaurantReservationTableViewController *)&v2 didReceiveMemoryWarning];
}

- (void)setupConstraints
{
  tableView = [(RestaurantReservationTableViewController *)self tableView];
  [tableView setTranslatesAutoresizingMaskIntoConstraints:0];

  footerButtonView = [(RestaurantReservationTableViewController *)self footerButtonView];
  [footerButtonView setTranslatesAutoresizingMaskIntoConstraints:0];

  view = [(RestaurantReservationTableViewController *)self view];
  leadingAnchor = [view leadingAnchor];
  footerButtonView2 = [(RestaurantReservationTableViewController *)self footerButtonView];
  leadingAnchor2 = [footerButtonView2 leadingAnchor];
  v36 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v41[0] = v36;
  view2 = [(RestaurantReservationTableViewController *)self view];
  trailingAnchor = [view2 trailingAnchor];
  footerButtonView3 = [(RestaurantReservationTableViewController *)self footerButtonView];
  trailingAnchor2 = [footerButtonView3 trailingAnchor];
  v31 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v41[1] = v31;
  view3 = [(RestaurantReservationTableViewController *)self view];
  bottomAnchor = [view3 bottomAnchor];
  footerButtonView4 = [(RestaurantReservationTableViewController *)self footerButtonView];
  bottomAnchor2 = [footerButtonView4 bottomAnchor];
  v26 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  v41[2] = v26;
  view4 = [(RestaurantReservationTableViewController *)self view];
  leadingAnchor3 = [view4 leadingAnchor];
  tableView2 = [(RestaurantReservationTableViewController *)self tableView];
  leadingAnchor4 = [tableView2 leadingAnchor];
  v21 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4];
  v41[3] = v21;
  view5 = [(RestaurantReservationTableViewController *)self view];
  trailingAnchor3 = [view5 trailingAnchor];
  tableView3 = [(RestaurantReservationTableViewController *)self tableView];
  trailingAnchor4 = [tableView3 trailingAnchor];
  v16 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4];
  v41[4] = v16;
  view6 = [(RestaurantReservationTableViewController *)self view];
  topAnchor = [view6 topAnchor];
  tableView4 = [(RestaurantReservationTableViewController *)self tableView];
  topAnchor2 = [tableView4 topAnchor];
  v8 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v41[5] = v8;
  tableView5 = [(RestaurantReservationTableViewController *)self tableView];
  bottomAnchor3 = [tableView5 bottomAnchor];
  footerButtonView5 = [(RestaurantReservationTableViewController *)self footerButtonView];
  topAnchor3 = [footerButtonView5 topAnchor];
  v13 = [bottomAnchor3 constraintEqualToAnchor:topAnchor3];
  v41[6] = v13;
  v14 = [NSArray arrayWithObjects:v41 count:7];
  [NSLayoutConstraint activateConstraints:v14];
}

- (void)setupFooterButtonView
{
  v3 = objc_opt_new();
  [(RestaurantReservationTableViewController *)self setFooterButtonView:v3];

  footerButtonView = [(RestaurantReservationTableViewController *)self footerButtonView];
  [footerButtonView setTopHairlineHidden:0];

  [(RestaurantReservationTableViewController *)self configureButton];
  view = [(RestaurantReservationTableViewController *)self view];
  footerButtonView2 = [(RestaurantReservationTableViewController *)self footerButtonView];
  [view addSubview:footerButtonView2];

  footerButtonView3 = [(RestaurantReservationTableViewController *)self footerButtonView];
  button = [footerButtonView3 button];
  [button addTarget:self action:"footerButtonTapped:" forControlEvents:64];
}

- (void)setupTableView
{
  v3 = [[UITableView alloc] initWithFrame:1 style:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
  [(RestaurantReservationTableViewController *)self setTableView:v3];

  tableView = [(RestaurantReservationTableViewController *)self tableView];
  [tableView setDelegate:self];

  tableView2 = [(RestaurantReservationTableViewController *)self tableView];
  [tableView2 setDataSource:self];

  tableView3 = [(RestaurantReservationTableViewController *)self tableView];
  [tableView3 setRowHeight:UITableViewAutomaticDimension];

  tableView4 = [(RestaurantReservationTableViewController *)self tableView];
  [tableView4 setAllowsMultipleSelectionDuringEditing:1];

  tableView5 = [(RestaurantReservationTableViewController *)self tableView];
  [tableView5 setContentInset:{-40.0, 0.0, -40.0, 0.0}];

  view = [(RestaurantReservationTableViewController *)self view];
  tableView6 = [(RestaurantReservationTableViewController *)self tableView];
  [view addSubview:tableView6];
}

- (void)registerCells
{
  tableView = [(RestaurantReservationTableViewController *)self tableView];
  v4 = objc_opt_class();
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  [tableView registerClass:v4 forCellReuseIdentifier:v6];

  tableView2 = [(RestaurantReservationTableViewController *)self tableView];
  v8 = objc_opt_class();
  v9 = objc_opt_class();
  v10 = NSStringFromClass(v9);
  [tableView2 registerClass:v8 forCellReuseIdentifier:v10];

  tableView3 = [(RestaurantReservationTableViewController *)self tableView];
  v12 = objc_opt_class();
  v13 = objc_opt_class();
  v14 = NSStringFromClass(v13);
  [tableView3 registerClass:v12 forCellReuseIdentifier:v14];

  tableView4 = [(RestaurantReservationTableViewController *)self tableView];
  v16 = objc_opt_class();
  v17 = objc_opt_class();
  v18 = NSStringFromClass(v17);
  [tableView4 registerClass:v16 forCellReuseIdentifier:v18];

  tableView5 = [(RestaurantReservationTableViewController *)self tableView];
  v20 = objc_opt_class();
  v21 = objc_opt_class();
  v22 = NSStringFromClass(v21);
  [tableView5 registerClass:v20 forCellReuseIdentifier:v22];

  tableView6 = [(RestaurantReservationTableViewController *)self tableView];
  v23 = objc_opt_class();
  v24 = objc_opt_class();
  v25 = NSStringFromClass(v24);
  [tableView6 registerClass:v23 forCellReuseIdentifier:v25];
}

- (void)viewDidAppear:(BOOL)appear
{
  v4.receiver = self;
  v4.super_class = RestaurantReservationTableViewController;
  [(RestaurantReservationTableViewController *)&v4 viewDidAppear:appear];
  [(RestaurantReservationTableViewController *)self setViewHasAppeared:1];
}

- (void)viewWillAppear:(BOOL)appear
{
  v5.receiver = self;
  v5.super_class = RestaurantReservationTableViewController;
  [(RestaurantReservationTableViewController *)&v5 viewWillAppear:appear];
  analyticsBookingSession = [(RestaurantReservationTableViewController *)self analyticsBookingSession];
  [analyticsBookingSession beginSessionIfNeeded];
}

- (void)viewDidLoad
{
  v3.receiver = self;
  v3.super_class = RestaurantReservationTableViewController;
  [(RestaurantReservationTableViewController *)&v3 viewDidLoad];
  [(RestaurantReservationTableViewController *)self setEdgesForExtendedLayout:0];
  [(RestaurantReservationTableViewController *)self setupTableView];
  [(RestaurantReservationTableViewController *)self setupFooterButtonView];
  [(RestaurantReservationTableViewController *)self setupConstraints];
  [(RestaurantReservationTableViewController *)self registerCells];
}

- (RestaurantReservationTableViewController)initWithAnalyticsCaptor:(id)captor analyticsBookingSession:(id)session
{
  captorCopy = captor;
  sessionCopy = session;
  v12.receiver = self;
  v12.super_class = RestaurantReservationTableViewController;
  v9 = [(RestaurantReservationTableViewController *)&v12 initWithNibName:0 bundle:0];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_analyticsCaptor, captor);
    objc_storeStrong(&v10->_analyticsBookingSession, session);
  }

  return v10;
}

@end