@interface RestaurantReservationTableViewController
- (BOOL)contactRequirementsSatisfiable;
- (BOOL)requirements:(id)a3 satisfiableWithDisplayPreferences:(id)a4 guest:(id)a5;
- (BOOL)shouldDisplayAdvisementSection;
- (BOOL)shouldDisplayContactCell;
- (BOOL)shouldDisplayContactCellForGuestDisplayPreferences:(id)a3 bookingsLoading:(BOOL)a4;
- (BOOL)shouldDisplayOffersSection;
- (BOOL)shouldDisplaySuffix;
- (BOOL)shouldDisplayTermsAndConditions;
- (BOOL)tableView:(id)a3 canEditRowAtIndexPath:(id)a4;
- (BOOL)tableView:(id)a3 shouldHighlightRowAtIndexPath:(id)a4;
- (ContactRequirements)inferredContactRequirements;
- (NSDateFormatter)timeSelectionDateFormatter;
- (NSDateFormatter)timeSuffixDateFormatter;
- (RestaurantReservationTableViewController)initWithAnalyticsCaptor:(id)a3 analyticsBookingSession:(id)a4;
- (RestaurantReservationTableViewControllerDelegate)delegate;
- (UIEdgeInsets)collectionView:(id)a3 layout:(id)a4 insetForSectionAtIndex:(int64_t)a5;
- (double)tableView:(id)a3 estimatedHeightForRowAtIndexPath:(id)a4;
- (double)tableView:(id)a3 heightForFooterInSection:(int64_t)a4;
- (double)tableView:(id)a3 heightForHeaderInSection:(int64_t)a4;
- (id)collectionView:(id)a3 cellForItemAtIndexPath:(id)a4;
- (id)collectionView:(id)a3 viewForSupplementaryElementOfKind:(id)a4 atIndexPath:(id)a5;
- (id)contactDisplayColorSatisfied:(BOOL)a3;
- (id)contactDisplayStringSatisfied:(BOOL *)a3;
- (id)descriptionTextForDate:(id)a3 partySize:(unint64_t)a4;
- (id)dimmableIndexPaths;
- (id)noOfferOffer;
- (id)noTablesAvailableTextForDate:(id)a3;
- (id)reservationDetailsIndexPath;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (id)timeSuffixForDate:(id)a3;
- (int64_t)collectionView:(id)a3 numberOfItemsInSection:(int64_t)a4;
- (int64_t)numberOfOptionalSections;
- (int64_t)numberOfRowsInDetailsSection;
- (int64_t)numberOfRowsInOffersSection;
- (int64_t)numberOfSectionsInCollectionView:(id)a3;
- (int64_t)offersSection;
- (int64_t)openAppRow;
- (int64_t)openAppSection;
- (int64_t)reservationDetailsSection;
- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4;
- (int64_t)transformedIndexForIndexPath:(id)a3 collectionView:(id)a4;
- (void)_configureReservationDetails;
- (void)_configureReservationDetailsDateAndPartySize;
- (void)_configureReservationDetailsError;
- (void)_configureReservationDetailsLoadingIndicator;
- (void)_configureReservationDetailsTimeSelction;
- (void)adjustCollectionViewHeightForOffers:(BOOL)a3 animated:(BOOL)a4;
- (void)changeDateButtonTapped:(id)a3;
- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4;
- (void)configureButton;
- (void)configureCell:(id)a3 withBooking:(id)a4 row:(int64_t)a5;
- (void)configureSpecialRequestTextCell:(id)a3;
- (void)deselectBooking;
- (void)didReceiveMemoryWarning;
- (void)footerButtonTapped:(id)a3;
- (void)handleCellAppearanceForIndexPath:(id)a3 willDisplay:(BOOL)a4 didDisplay:(BOOL)a5;
- (void)handleSectionAppearanceForSection:(int64_t)a3 willDisplay:(BOOL)a4 didDisplay:(BOOL)a5;
- (void)rebuildCollectionViewSections;
- (void)rebuildOffers;
- (void)rebuildOffersNewOffers:(id)a3 oldOffers:(id)a4;
- (void)registerCells;
- (void)reservationTableViewCellDidSelectPrimaryButton:(id)a3;
- (void)reservationTableViewCellDidSelectSecondaryButton:(id)a3;
- (void)resetForChangedTimeSelection;
- (void)ridesharingAppActionTableViewCellDidPerformAction:(id)a3;
- (void)scrollViewWillEndDragging:(id)a3 withVelocity:(CGPoint)a4 targetContentOffset:(CGPoint *)a5;
- (void)setAvailableBookings:(id)a3;
- (void)setBookingPending:(BOOL)a3;
- (void)setBookingsLoading:(BOOL)a3;
- (void)setDate:(id)a3;
- (void)setGuest:(id)a3;
- (void)setGuestDisplayPreferences:(id)a3;
- (void)setPartySize:(unint64_t)a3;
- (void)setRestaurantAdvisementText:(id)a3;
- (void)setRestaurantDescriptionText:(id)a3 keepExisting:(BOOL)a4;
- (void)setSpecialRequestText:(id)a3;
- (void)setTermsAndConditions:(id)a3;
- (void)setupConstraints;
- (void)setupFooterButtonView;
- (void)setupTableView;
- (void)tableView:(id)a3 didDeselectRowAtIndexPath:(id)a4;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)tableView:(id)a3 willDisplayCell:(id)a4 forRowAtIndexPath:(id)a5;
- (void)updateHeightCacheForOffersSectionDeletion;
- (void)updateHeightCacheForOffersSectionInsertion;
- (void)updateSelectedOffer;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation RestaurantReservationTableViewController

- (RestaurantReservationTableViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)scrollViewWillEndDragging:(id)a3 withVelocity:(CGPoint)a4 targetContentOffset:(CGPoint *)a5
{
  x = a4.x;
  v7 = a3;
  v8 = [(RestaurantReservationTableViewController *)self reservationDetailCell];
  v9 = [v8 timeSelectionCollectionView];

  if (v9 == v7)
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

- (id)contactDisplayColorSatisfied:(BOOL)a3
{
  if (a3)
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

- (id)contactDisplayStringSatisfied:(BOOL *)a3
{
  v4 = [(RestaurantReservationTableViewController *)self inferredContactRequirements];
  v5 = [(RestaurantReservationTableViewController *)self guest];
  v6 = [v5 nameComponents];
  if (v6)
  {
    v7 = [(RestaurantReservationTableViewController *)self guest];
    v8 = [v7 nameComponents];
    v9 = [NSPersonNameComponentsFormatter localizedStringFromPersonNameComponents:v8 style:0 options:0];
  }

  else
  {
    v9 = &stru_1016631F0;
  }

  v10 = [(RestaurantReservationTableViewController *)self guest];
  v11 = [v10 phoneNumber];

  v12 = [(RestaurantReservationTableViewController *)self guest];
  v50 = [v12 emailAddress];

  v13 = [(RestaurantReservationTableViewController *)self guestDisplayPreferences];
  v14 = [v13 nameFieldFirstNameOptional];

  v15 = [(RestaurantReservationTableViewController *)self guestDisplayPreferences];
  v16 = [v15 nameFieldLastNameOptional];

  if ([v4 nameRequired])
  {
    v17 = (v14 ^ 1) & v16;
  }

  else
  {
    v17 = v16;
  }

  v18 = [v4 nameRequired] ^ 1 | v14;
  if (v18)
  {
    if (v17 & 1 | (([v4 nameRequired] & 1) == 0))
    {
      v19 = 0;
      goto LABEL_17;
    }

LABEL_15:
    [(RestaurantReservationTableViewController *)self guest:v45];
    v22 = v4;
    v24 = v23 = v9;
    v25 = [v24 nameComponents];
    [v25 familyName];
    v27 = v26 = v11;
    v19 = [v27 length] == 0;

    v11 = v26;
    v9 = v23;
    v4 = v22;
    v21 = v46;
    v20 = v48;
    if (v18)
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

  v20 = [(RestaurantReservationTableViewController *)self guest];
  v21 = [v20 nameComponents];
  v16 = [v21 givenName];
  if ([v16 length])
  {
    if (!(v17 & 1 | (([v4 nameRequired] & 1) == 0)))
    {
      v45 = v21;
      v47 = v20;
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
  if ([v4 phoneNumberRequired])
  {
    v28 = [v11 length] == 0;
  }

  else
  {
    v28 = 0;
  }

  if ([v4 emailAddressRequired])
  {
    v29 = [v50 length] == 0;
    if (!v19)
    {
      goto LABEL_22;
    }

LABEL_28:
    *a3 = 0;
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
  *a3 = !v28 && !v29;
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

  if ([v4 nameRequired])
  {
    v30 = v9;
LABEL_41:
    v34 = v30;
    goto LABEL_34;
  }

  if ([v4 emailAddressRequired])
  {
    v30 = v50;
    goto LABEL_41;
  }

  if ([v4 phoneNumberRequired])
  {
LABEL_40:
    v30 = v11;
    goto LABEL_41;
  }

  v36 = v11;
  if (-[__CFString length](v9, "length") && (-[RestaurantReservationTableViewController guestDisplayPreferences](self, "guestDisplayPreferences"), v37 = objc_claimAutoreleasedReturnValue(), v38 = [v37 nameFieldShouldBeDisplayed], v37, v38))
  {
    v39 = v9;
  }

  else
  {
    if ([v36 length])
    {
      v40 = [(RestaurantReservationTableViewController *)self guestDisplayPreferences];
      v41 = [v40 phoneNumberFieldShouldBeDisplayed];

      if (v41)
      {
        v11 = v36;
        goto LABEL_40;
      }
    }

    if (![v50 length] || (-[RestaurantReservationTableViewController guestDisplayPreferences](self, "guestDisplayPreferences"), v42 = objc_claimAutoreleasedReturnValue(), v43 = objc_msgSend(v42, "emailAddressFieldShouldBeDisplayed"), v42, !v43))
    {
      v44 = +[NSBundle mainBundle];
      v34 = [v44 localizedStringForKey:@"reservation_none_key" value:@"localized string not found" table:0];

      goto LABEL_53;
    }

    v39 = v50;
  }

  v34 = v39;
LABEL_53:
  v11 = v36;
LABEL_34:

  return v34;
}

- (BOOL)contactRequirementsSatisfiable
{
  v2 = self;
  v3 = [(RestaurantReservationTableViewController *)self inferredContactRequirements];
  v4 = [(RestaurantReservationTableViewController *)v2 guestDisplayPreferences];
  v5 = [(RestaurantReservationTableViewController *)v2 guest];
  LOBYTE(v2) = [(RestaurantReservationTableViewController *)v2 requirements:v3 satisfiableWithDisplayPreferences:v4 guest:v5];

  return v2;
}

- (BOOL)requirements:(id)a3 satisfiableWithDisplayPreferences:(id)a4 guest:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  if ([v7 nameRequired] && !objc_msgSend(v8, "nameFieldShouldBeDisplayed"))
  {
    goto LABEL_23;
  }

  if ([v7 nameRequired])
  {
    v10 = [v9 nameComponents];
    if (v10 || ([v8 nameFieldShouldBeDisplayed] & 1) == 0)
    {
    }

    else if (![v8 nameEditable])
    {
LABEL_23:
      v13 = 0;
      goto LABEL_26;
    }
  }

  if ([v7 phoneNumberRequired] && !objc_msgSend(v8, "phoneNumberFieldShouldBeDisplayed"))
  {
    goto LABEL_23;
  }

  if ([v7 phoneNumberRequired])
  {
    v11 = [v9 phoneNumber];
    if (v11 || ([v8 phoneNumberFieldShouldBeDisplayed] & 1) == 0)
    {
    }

    else if (![v8 phoneNumberEditable])
    {
      goto LABEL_23;
    }
  }

  if ([v7 emailAddressRequired] && !objc_msgSend(v8, "emailAddressFieldShouldBeDisplayed"))
  {
    goto LABEL_23;
  }

  if (![v7 emailAddressRequired])
  {
LABEL_25:
    v13 = 1;
    goto LABEL_26;
  }

  v12 = [v9 emailAddress];
  if (v12 || ([v8 emailAddressFieldShouldBeDisplayed] & 1) == 0)
  {

    goto LABEL_25;
  }

  v13 = [v8 emailAddressEditable];
LABEL_26:

  return v13 & 1;
}

- (BOOL)shouldDisplayContactCellForGuestDisplayPreferences:(id)a3 bookingsLoading:(BOOL)a4
{
  v5 = a3;
  v6 = v5;
  if (a4)
  {
    v7 = 0;
  }

  else if (!v5 || ([v5 nameFieldShouldBeDisplayed] & 1) != 0 || (objc_msgSend(v6, "phoneNumberFieldShouldBeDisplayed") & 1) != 0)
  {
    v7 = 1;
  }

  else
  {
    v7 = [v6 emailAddressFieldShouldBeDisplayed];
  }

  return v7;
}

- (BOOL)shouldDisplayContactCell
{
  v2 = self;
  v3 = [(RestaurantReservationTableViewController *)self guestDisplayPreferences];
  LOBYTE(v2) = [(RestaurantReservationTableViewController *)v2 shouldDisplayContactCellForGuestDisplayPreferences:v3 bookingsLoading:[(RestaurantReservationTableViewController *)v2 bookingsLoading]];

  return v2;
}

- (BOOL)shouldDisplayTermsAndConditions
{
  v2 = [(RestaurantReservationTableViewController *)self termsAndConditions];
  v3 = [v2 localizedTermsAndConditionsText];
  v4 = [v3 length] != 0;

  return v4;
}

- (BOOL)shouldDisplayOffersSection
{
  v2 = [(RestaurantReservationTableViewController *)self offers];
  v3 = [v2 count] != 0;

  return v3;
}

- (BOOL)shouldDisplayAdvisementSection
{
  v2 = [(RestaurantReservationTableViewController *)self restaurantAdvisementText];
  v3 = [v2 length] != 0;

  return v3;
}

- (int64_t)numberOfOptionalSections
{
  LODWORD(v3) = [(RestaurantReservationTableViewController *)self shouldDisplayAdvisementSection];
  v4 = [(RestaurantReservationTableViewController *)self shouldDisplayOffersSection];
  v5 = 1;
  if (v3)
  {
    v5 = 2;
  }

  if (v4)
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

  v3 = [(RestaurantReservationTableViewController *)self offers];
  v4 = [v3 count] + 1;

  return v4;
}

- (int64_t)openAppSection
{
  if ([(RestaurantReservationTableViewController *)self shouldDisplayTermsAndConditions])
  {
    v3 = [(RestaurantReservationTableViewController *)self termsAndConditionsSection];
  }

  else
  {
    v3 = [(RestaurantReservationTableViewController *)self reservationDetailsSection];
  }

  return v3 + 1;
}

- (int64_t)reservationDetailsSection
{
  if ([(RestaurantReservationTableViewController *)self shouldDisplayOffersSection])
  {
    v3 = [(RestaurantReservationTableViewController *)self offersSection];
  }

  else if ([(RestaurantReservationTableViewController *)self shouldDisplayAdvisementSection])
  {
    v3 = [(RestaurantReservationTableViewController *)self advisementSection];
  }

  else
  {
    v3 = [(RestaurantReservationTableViewController *)self headerSection];
  }

  return v3 + 1;
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
  v6 = [(RestaurantReservationTableViewController *)self availableBookings];
  v20 = v5;
  v26 = v5;
  v7 = [NSArray arrayWithObjects:&v26 count:1];
  v8 = [v6 sortedArrayUsingDescriptors:v7];

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
        v15 = [v14 bookingDate];
        v16 = [(RestaurantReservationTableViewController *)self timeSuffixForDate:v15];

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

- (void)changeDateButtonTapped:(id)a3
{
  v4 = [(RestaurantReservationTableViewController *)self analyticsCaptor];
  [v4 captureSelectTimeEditBooking];

  v5 = [(RestaurantReservationTableViewController *)self delegate];
  [v5 bookingSelectionViewControllerDidSelectDateRefinement:0];
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
  v3 = [(RestaurantReservationTableViewController *)self heightCache];
  v4 = [v3 allKeys];

  v5 = [(RestaurantReservationTableViewController *)self heightCache];
  v6 = [v5 allKeys];
  v7 = +[NSMutableDictionary dictionaryWithCapacity:](NSMutableDictionary, "dictionaryWithCapacity:", [v6 count]);

  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v8 = v4;
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
        v14 = [v13 section];
        if (v14 == [(RestaurantReservationTableViewController *)self offersSection])
        {
          v15 = [(RestaurantReservationTableViewController *)self heightCache];
          [v15 removeObjectForKey:v13];
        }

        else
        {
          v16 = [v13 section];
          if (v16 != [(RestaurantReservationTableViewController *)self offersSection]+ 1)
          {
            continue;
          }

          v15 = +[NSIndexPath indexPathForRow:inSection:](NSIndexPath, "indexPathForRow:inSection:", [v13 row], objc_msgSend(v13, "row") - 1);
          v17 = [(RestaurantReservationTableViewController *)self heightCache];
          v18 = [v17 objectForKeyedSubscript:v13];
          [v7 setObject:v18 forKeyedSubscript:v15];

          v19 = [(RestaurantReservationTableViewController *)self heightCache];
          [v19 removeObjectForKey:v13];
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v33 objects:v38 count:16];
    }

    while (v10);
  }

  v20 = [v7 allKeys];

  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v21 = v20;
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
        v28 = [(RestaurantReservationTableViewController *)self heightCache];
        [v28 setObject:v27 forKeyedSubscript:v26];
      }

      v23 = [v21 countByEnumeratingWithState:&v29 objects:v37 count:16];
    }

    while (v23);
  }
}

- (void)updateHeightCacheForOffersSectionInsertion
{
  v3 = [(RestaurantReservationTableViewController *)self heightCache];
  v4 = [v3 allKeys];

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v5 = v4;
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
        v11 = [v10 section];
        if (v11 == [(RestaurantReservationTableViewController *)self offersSection])
        {
          v12 = +[NSIndexPath indexPathForRow:inSection:](NSIndexPath, "indexPathForRow:inSection:", [v10 row], objc_msgSend(v10, "section") + 1);
          v13 = [(RestaurantReservationTableViewController *)self heightCache];
          v14 = [v13 objectForKeyedSubscript:v10];
          v15 = [(RestaurantReservationTableViewController *)self heightCache];
          [v15 setObject:v14 forKeyedSubscript:v12];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v25 objects:v29 count:16];
    }

    while (v7);
  }

  v16 = [(RestaurantReservationTableViewController *)self offersRowHeight];

  if (v16)
  {
    v17 = [(RestaurantReservationTableViewController *)self offers];
    v18 = [v17 count];

    if (v18)
    {
      v19 = 0;
      do
      {
        v20 = [NSIndexPath indexPathForRow:v19 inSection:[(RestaurantReservationTableViewController *)self offersSection]];
        v21 = [(RestaurantReservationTableViewController *)self offersRowHeight];
        v22 = [(RestaurantReservationTableViewController *)self heightCache];
        [v22 setObject:v21 forKeyedSubscript:v20];

        ++v19;
        v23 = [(RestaurantReservationTableViewController *)self offers];
        v24 = [v23 count];
      }

      while (v19 < v24);
    }
  }
}

- (void)rebuildOffersNewOffers:(id)a3 oldOffers:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 mutableCopy];
  v52 = self;
  [(RestaurantReservationTableViewController *)self setOffers:v8];

  if ([v6 count])
  {
    v9 = 0;
  }

  else
  {
    v9 = [v7 count] != 0;
  }

  if ([v6 count] && !objc_msgSend(v7, "count"))
  {
    v10 = v52;
    [(RestaurantReservationTableViewController *)v52 updateHeightCacheForOffersSectionInsertion];
    v45 = [(RestaurantReservationTableViewController *)v52 tableView];
    [v45 beginUpdates];

    v12 = [(RestaurantReservationTableViewController *)v52 tableView];
    v13 = [NSIndexSet indexSetWithIndex:[(RestaurantReservationTableViewController *)v52 offersSection]];
    [v12 insertSections:v13 withRowAnimation:3];
    goto LABEL_33;
  }

  if (v9)
  {
    v10 = v52;
    [(RestaurantReservationTableViewController *)v52 updateHeightCacheForOffersSectionDeletion];
    v11 = [(RestaurantReservationTableViewController *)v52 tableView];
    [v11 beginUpdates];

    v12 = [(RestaurantReservationTableViewController *)v52 tableView];
    v13 = [NSIndexSet indexSetWithIndex:[(RestaurantReservationTableViewController *)v52 offersSection]];
    [v12 deleteSections:v13 withRowAnimation:0];
LABEL_33:

    v46 = [(RestaurantReservationTableViewController *)v10 tableView];
    [v46 endUpdates];

    goto LABEL_34;
  }

  v14 = objc_opt_new();
  v15 = objc_opt_new();
  v48 = objc_opt_new();
  v50 = v6;
  v51 = objc_opt_new();
  v65 = 0u;
  v66 = 0u;
  v67 = 0u;
  v68 = 0u;
  v16 = v6;
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

        v21 = [*(*(&v65 + 1) + 8 * v20) offerTitleText];
        [v14 addObject:v21];

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
  v22 = v7;
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

        v27 = [*(*(&v61 + 1) + 8 * v26) offerTitleText];
        [v15 addObject:v27];

        v26 = v26 + 1;
      }

      while (v24 != v26);
      v24 = [v22 countByEnumeratingWithState:&v61 objects:v70 count:16];
    }

    while (v24);
  }

  v47 = v16;
  v49 = v7;

  v28 = [v22 count];
  v57 = 0u;
  v58 = 0u;
  v59 = 0u;
  v60 = 0u;
  v29 = [v22 reverseObjectEnumerator];
  v30 = [v29 countByEnumeratingWithState:&v57 objects:v69 count:16];
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
          objc_enumerationMutation(v29);
        }

        v34 = [*(*(&v57 + 1) + 8 * v33) offerTitleText];
        v35 = [v14 containsObject:v34];

        if ((v35 & 1) == 0)
        {
          v36 = [NSIndexPath indexPathForRow:v28 inSection:[(RestaurantReservationTableViewController *)v52 offersSection]];
          v37 = [(RestaurantReservationTableViewController *)v52 heightCache];
          [v37 removeObjectForKey:v36];

          [v51 addObject:v36];
        }

        v33 = v33 + 1;
        --v28;
      }

      while (v31 != v33);
      v31 = [v29 countByEnumeratingWithState:&v57 objects:v69 count:16];
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
  v53[4] = v52;
  v54 = v48;
  v40 = v48;
  [v39 enumerateIndexesUsingBlock:v53];
  v41 = [(RestaurantReservationTableViewController *)v52 tableView];
  [v41 beginUpdates];

  v42 = [(RestaurantReservationTableViewController *)v52 tableView];
  [v42 insertRowsAtIndexPaths:v40 withRowAnimation:3];

  v43 = [(RestaurantReservationTableViewController *)v52 tableView];
  [v43 deleteRowsAtIndexPaths:v51 withRowAnimation:0];

  v44 = [(RestaurantReservationTableViewController *)v52 tableView];
  [v44 endUpdates];

  v7 = v49;
  v6 = v50;
LABEL_34:
}

- (void)rebuildOffers
{
  v2 = self;
  v27 = [(RestaurantReservationTableViewController *)self offers];
  v3 = +[NSMutableArray array];
  v4 = objc_opt_new();
  [(RestaurantReservationTableViewController *)v2 setSelectedOffer:0];
  v5 = [(RestaurantReservationTableViewController *)v2 selectedBooking];

  if (v5)
  {
    v6 = [(RestaurantReservationTableViewController *)v2 selectedBooking];
    v7 = [v6 offers];
    [v3 addObjectsFromArray:v7];

    v8 = [(RestaurantReservationTableViewController *)v2 selectedBooking];
    v9 = [v8 offers];
    v10 = [v9 count];

    if (v10)
    {
      v11 = [(RestaurantReservationTableViewController *)v2 noOfferOffer];
      [v3 addObject:v11];
    }
  }

  else
  {
    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    v26 = v2;
    obj = [(RestaurantReservationTableViewController *)v2 availableBookings];
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
            v17 = [v16 offers];
            v18 = [v17 countByEnumeratingWithState:&v31 objects:v39 count:16];
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
                    objc_enumerationMutation(v17);
                  }

                  v22 = *(*(&v31 + 1) + 8 * i);
                  v23 = [v22 offerTitleText];
                  v24 = [v4 containsObject:v23];

                  if ((v24 & 1) == 0)
                  {
                    [v3 addObject:v22];
                    v25 = [v22 offerTitleText];
                    [v4 addObject:v25];
                  }
                }

                v19 = [v17 countByEnumeratingWithState:&v31 objects:v39 count:16];
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

    v2 = v26;
  }

  [(RestaurantReservationTableViewController *)v2 rebuildOffersNewOffers:v3 oldOffers:v27];
}

- (void)handleSectionAppearanceForSection:(int64_t)a3 willDisplay:(BOOL)a4 didDisplay:(BOOL)a5
{
  v5 = a5;
  v6 = a4;
  if (a4 || a5)
  {
    v9 = [(RestaurantReservationTableViewController *)self tableView];
    [v9 beginUpdates];

    v16 = [NSIndexSet indexSetWithIndex:a3];
    v10 = !v6;
    v11 = !v5;
    if (v6 && (v11 & 1) == 0)
    {
      v12 = [(RestaurantReservationTableViewController *)self tableView];
      [v12 reloadSections:v16 withRowAnimation:5];
    }

    if (((v11 | v6) & 1) == 0)
    {
      v13 = [(RestaurantReservationTableViewController *)self tableView];
      [v13 deleteSections:v16 withRowAnimation:0];
    }

    if (((v10 | v5) & 1) == 0)
    {
      v14 = [(RestaurantReservationTableViewController *)self tableView];
      [v14 insertSections:v16 withRowAnimation:3];
    }

    v15 = [(RestaurantReservationTableViewController *)self tableView];
    [v15 endUpdates];
  }
}

- (void)handleCellAppearanceForIndexPath:(id)a3 willDisplay:(BOOL)a4 didDisplay:(BOOL)a5
{
  v5 = a5;
  v6 = a4;
  v8 = a3;
  if (v6 || v5)
  {
    v9 = [(RestaurantReservationTableViewController *)self tableView];
    [v9 beginUpdates];

    v10 = !v6;
    v11 = !v5;
    if (v6 && (v11 & 1) == 0)
    {
      v12 = [(RestaurantReservationTableViewController *)self tableView];
      v21 = v8;
      v13 = [NSArray arrayWithObjects:&v21 count:1];
      [v12 reloadRowsAtIndexPaths:v13 withRowAnimation:5];
    }

    if (((v11 | v6) & 1) == 0)
    {
      v14 = [(RestaurantReservationTableViewController *)self tableView];
      v20 = v8;
      v15 = [NSArray arrayWithObjects:&v20 count:1];
      [v14 deleteRowsAtIndexPaths:v15 withRowAnimation:0];
    }

    if (((v10 | v5) & 1) == 0)
    {
      v16 = [(RestaurantReservationTableViewController *)self tableView];
      v19 = v8;
      v17 = [NSArray arrayWithObjects:&v19 count:1];
      [v16 insertRowsAtIndexPaths:v17 withRowAnimation:3];
    }

    v18 = [(RestaurantReservationTableViewController *)self tableView];
    [v18 endUpdates];
  }
}

- (void)setRestaurantAdvisementText:(id)a3
{
  v7 = a3;
  if (([v7 isEqualToString:self->_restaurantAdvisementText] & 1) == 0)
  {
    v4 = [(RestaurantReservationTableViewController *)self shouldDisplayAdvisementSection];
    v5 = [v7 copy];
    restaurantAdvisementText = self->_restaurantAdvisementText;
    self->_restaurantAdvisementText = v5;

    [(RestaurantReservationTableViewController *)self handleSectionAppearanceForSection:[(RestaurantReservationTableViewController *)self advisementSection] willDisplay:[(RestaurantReservationTableViewController *)self shouldDisplayAdvisementSection] didDisplay:v4];
  }
}

- (void)setTermsAndConditions:(id)a3
{
  v7 = a3;
  if (([(INTermsAndConditions *)self->_termsAndConditions isEqual:?]& 1) == 0)
  {
    v4 = [(RestaurantReservationTableViewController *)self shouldDisplayTermsAndConditions];
    v5 = [v7 copy];
    termsAndConditions = self->_termsAndConditions;
    self->_termsAndConditions = v5;

    [(RestaurantReservationTableViewController *)self handleSectionAppearanceForSection:[(RestaurantReservationTableViewController *)self termsAndConditionsSection] willDisplay:[(RestaurantReservationTableViewController *)self shouldDisplayTermsAndConditions] didDisplay:v4];
  }
}

- (id)reservationDetailsIndexPath
{
  v2 = [(RestaurantReservationTableViewController *)self headerSection];

  return [NSIndexPath indexPathForRow:1 inSection:v2];
}

- (void)setPartySize:(unint64_t)a3
{
  if (self->_partySize != a3)
  {
    self->_partySize = a3;
    v4 = [(RestaurantReservationTableViewController *)self tableView];
    v5 = [(RestaurantReservationTableViewController *)self reservationDetailsIndexPath];
    v7 = v5;
    v6 = [NSArray arrayWithObjects:&v7 count:1];
    [v4 reloadRowsAtIndexPaths:v6 withRowAnimation:0];
  }
}

- (void)setDate:(id)a3
{
  v5 = a3;
  if (([v5 isEqualToDate:self->_date] & 1) == 0)
  {
    objc_storeStrong(&self->_date, a3);
    v6 = [(RestaurantReservationTableViewController *)self tableView];
    v7 = [(RestaurantReservationTableViewController *)self reservationDetailsIndexPath];
    v9 = v7;
    v8 = [NSArray arrayWithObjects:&v9 count:1];
    [v6 reloadRowsAtIndexPaths:v8 withRowAnimation:0];
  }
}

- (void)setRestaurantDescriptionText:(id)a3 keepExisting:(BOOL)a4
{
  v6 = a3;
  v7 = v6;
  if ((!a4 || [v6 length] || !-[NSString length](self->_restaurantDescriptionText, "length")) && (objc_msgSend(v7, "isEqual:", self->_restaurantDescriptionText) & 1) == 0)
  {
    v8 = [v7 copy];
    restaurantDescriptionText = self->_restaurantDescriptionText;
    self->_restaurantDescriptionText = v8;

    v10 = [(RestaurantReservationTableViewController *)self tableView];
    v11 = [NSIndexPath indexPathForRow:0 inSection:[(RestaurantReservationTableViewController *)self headerSection]];
    v13 = v11;
    v12 = [NSArray arrayWithObjects:&v13 count:1];
    [v10 reloadRowsAtIndexPaths:v12 withRowAnimation:0];
  }
}

- (void)setSpecialRequestText:(id)a3
{
  v9 = a3;
  if (([v9 isEqualToString:self->_specialRequestText] & 1) == 0)
  {
    v4 = [v9 copy];
    specialRequestText = self->_specialRequestText;
    self->_specialRequestText = v4;

    v6 = [NSIndexPath indexPathForRow:[(RestaurantReservationTableViewController *)self reservationSpecialRequestRow] inSection:[(RestaurantReservationTableViewController *)self reservationDetailsSection]];
    v7 = [(RestaurantReservationTableViewController *)self tableView];
    v8 = [v7 cellForRowAtIndexPath:v6];

    [(RestaurantReservationTableViewController *)self configureSpecialRequestTextCell:v8];
  }
}

- (void)setGuestDisplayPreferences:(id)a3
{
  v10 = a3;
  if (([v10 isEqual:self->_guestDisplayPreferences] & 1) == 0)
  {
    v4 = [(RestaurantReservationTableViewController *)self guestDisplayPreferences];
    v5 = [(RestaurantReservationTableViewController *)self shouldDisplayContactCellForGuestDisplayPreferences:v4 bookingsLoading:[(RestaurantReservationTableViewController *)self bookingsLoading]];

    v6 = [(RestaurantReservationTableViewController *)self shouldDisplayContactCellForGuestDisplayPreferences:v10 bookingsLoading:[(RestaurantReservationTableViewController *)self bookingsLoading]];
    v7 = [v10 copy];
    guestDisplayPreferences = self->_guestDisplayPreferences;
    self->_guestDisplayPreferences = v7;

    v9 = [NSIndexPath indexPathForRow:[(RestaurantReservationTableViewController *)self reservationContactInfoRow] inSection:[(RestaurantReservationTableViewController *)self reservationDetailsSection]];
    [(RestaurantReservationTableViewController *)self handleCellAppearanceForIndexPath:v9 willDisplay:v6 didDisplay:v5];
    [(RestaurantReservationTableViewController *)self configureButton];
  }
}

- (void)setGuest:(id)a3
{
  v5 = a3;
  if (([v5 isEqual:self->_guest] & 1) == 0)
  {
    objc_storeStrong(&self->_guest, a3);
    v6 = [NSIndexPath indexPathForRow:[(RestaurantReservationTableViewController *)self reservationContactInfoRow] inSection:[(RestaurantReservationTableViewController *)self reservationDetailsSection]];
    v7 = [(RestaurantReservationTableViewController *)self tableView];
    v9 = v6;
    v8 = [NSArray arrayWithObjects:&v9 count:1];
    [v7 reloadRowsAtIndexPaths:v8 withRowAnimation:5];

    [(RestaurantReservationTableViewController *)self configureButton];
  }
}

- (void)setBookingPending:(BOOL)a3
{
  if (self->_bookingPending == !a3)
  {
    self->_bookingPending = a3;
    [(RestaurantReservationTableViewController *)self configureButton];
  }
}

- (void)setBookingsLoading:(BOOL)a3
{
  v3 = !a3;
  if (self->_bookingsLoading == v3)
  {
    v4 = a3;
    if (a3)
    {
      [(RestaurantReservationTableViewController *)self setSelectedOffer:0];
      [(RestaurantReservationTableViewController *)self setSelectedBooking:0];
      v6 = [(RestaurantReservationTableViewController *)self tableView];
      [v6 setEditing:0 animated:1];

      [(RestaurantReservationTableViewController *)self rebuildOffers];
    }

    self->_bookingsLoading = v4;
    v7 = [(RestaurantReservationTableViewController *)self guestDisplayPreferences];
    [(RestaurantReservationTableViewController *)self shouldDisplayContactCellForGuestDisplayPreferences:v7 bookingsLoading:v3];

    v8 = [(RestaurantReservationTableViewController *)self guestDisplayPreferences];
    [(RestaurantReservationTableViewController *)self shouldDisplayContactCellForGuestDisplayPreferences:v8 bookingsLoading:v4];

    v12 = [NSIndexPath indexPathForRow:[(RestaurantReservationTableViewController *)self reservationContactInfoRow] inSection:[(RestaurantReservationTableViewController *)self reservationDetailsSection]];
    [RestaurantReservationTableViewController handleCellAppearanceForIndexPath:"handleCellAppearanceForIndexPath:willDisplay:didDisplay:" willDisplay:? didDisplay:?];
    [(RestaurantReservationTableViewController *)self _configureReservationDetails];
    if (!v4)
    {
      v9 = [(RestaurantReservationTableViewController *)self reservationDetailCell];
      [v9 layoutIfNeeded];

      v10 = [(RestaurantReservationTableViewController *)self reservationDetailCell];
      v11 = [v10 timeSelectionCollectionView];

      [v11 reloadData];
    }
  }
}

- (void)setAvailableBookings:(id)a3
{
  v12 = a3;
  if (([(NSArray *)self->_availableBookings isEqual:?]& 1) == 0)
  {
    v5 = [(RestaurantReservationTableViewController *)self sectionTitles];
    v6 = [v5 count];

    v7 = [NSIndexSet indexSetWithIndexesInRange:0, v6];
    objc_storeStrong(&self->_availableBookings, a3);
    [(RestaurantReservationTableViewController *)self rebuildCollectionViewSections];
    [(RestaurantReservationTableViewController *)self rebuildOffers];
    v8 = [(RestaurantReservationTableViewController *)self availableBookings];
    v9 = [v8 count];

    if (!v9)
    {
      v10 = [(RestaurantReservationTableViewController *)self reservationDetailCell];
      v11 = [v10 timeSelectionCollectionView];
      [v11 deleteSections:v7];
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
    v6 = [(RestaurantReservationTableViewController *)self restaurantTimeZone];
    [(NSDateFormatter *)self->_timeSuffixDateFormatter setTimeZone:v6];

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
    v6 = [(RestaurantReservationTableViewController *)self restaurantTimeZone];
    [(NSDateFormatter *)self->_timeSelectionDateFormatter setTimeZone:v6];

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

- (id)timeSuffixForDate:(id)a3
{
  v4 = a3;
  if ([(RestaurantReservationTableViewController *)self shouldDisplaySuffix])
  {
    v5 = [(RestaurantReservationTableViewController *)self timeSuffixDateFormatter];
    v6 = [v5 stringFromDate:v4];
  }

  else
  {
    v6 = &stru_1016631F0;
  }

  return v6;
}

- (ContactRequirements)inferredContactRequirements
{
  v2 = self;
  v3 = [(RestaurantReservationTableViewController *)self selectedBooking];

  if (v3)
  {
    v6 = [(RestaurantReservationTableViewController *)v2 selectedBooking];
    LOBYTE(v4) = [v6 requiresPhoneNumber];

    v5 = [(RestaurantReservationTableViewController *)v2 selectedBooking];
    LOBYTE(v6) = [v5 requiresName];

    v7 = [(RestaurantReservationTableViewController *)v2 selectedBooking];
    LOBYTE(v2) = [v7 requiresEmailAddress];
  }

  else
  {
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v7 = [(RestaurantReservationTableViewController *)v2 availableBookings];
    v8 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v8)
    {
      v9 = v8;
      LODWORD(v6) = 0;
      LODWORD(v2) = 0;
      v4 = 0;
      v10 = *v16;
      do
      {
        for (i = 0; i != v9; i = i + 1)
        {
          if (*v16 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v15 + 1) + 8 * i);
          v4 |= [v12 requiresPhoneNumber];
          LODWORD(v6) = v6 | [v12 requiresName];
          LODWORD(v2) = v2 | [v12 requiresEmailAddress];
        }

        v9 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v9);
    }

    else
    {
      LOBYTE(v6) = 0;
      LOBYTE(v2) = 0;
      LOBYTE(v4) = 0;
    }
  }

  v13 = [[ContactRequirements alloc] initWithNameRequired:v6 & 1 phoneNumberRequired:v4 & 1 emailAddressRequired:v2 & 1];

  return v13;
}

- (id)noTablesAvailableTextForDate:(id)a3
{
  v4 = a3;
  v5 = +[NSBundle mainBundle];
  v6 = [v5 localizedStringForKey:@"reservations_no_tables_key" value:@"localized string not found" table:0];

  v7 = [(RestaurantReservationTableViewController *)self restaurantTimeZone];
  v8 = [NSDate _maps_dayDescriptionStringShortDescription:1 timeZone:v7 bookingDate:v4];

  v9 = [NSString localizedStringWithFormat:v6, v8];

  return v9;
}

- (id)descriptionTextForDate:(id)a3 partySize:(unint64_t)a4
{
  v6 = a3;
  v7 = +[NSBundle mainBundle];
  v8 = [v7 localizedStringForKey:@"reservation_party_size_date_format_key" value:@"localized string not found" table:0];

  v9 = [(RestaurantReservationTableViewController *)self restaurantTimeZone];
  v10 = [NSDate _maps_dayDescriptionStringShortDescription:1 timeZone:v9 bookingDate:v6];

  v11 = [NSString localizedStringWithFormat:v8, v10, a4];

  return v11;
}

- (void)adjustCollectionViewHeightForOffers:(BOOL)a3 animated:(BOOL)a4
{
  v4 = a3;
  if (a4)
  {
    v6 = [(RestaurantReservationTableViewController *)self tableView];
    [v6 beginUpdates];

    v7 = [(RestaurantReservationTableViewController *)self reservationDetailCell];
    [v7 setDisplayOffers:v4];

    v8 = [(RestaurantReservationTableViewController *)self tableView];
    [v8 endUpdates];
  }

  else
  {
    v8 = [(RestaurantReservationTableViewController *)self reservationDetailCell];
    [v8 setDisplayOffers:v4];
  }
}

- (id)dimmableIndexPaths
{
  v3 = objc_opt_new();
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v19 = self;
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
        v7 = [(RestaurantReservationTableViewController *)v19 availableBookingsBySection];
        v8 = [v7 objectForKeyedSubscript:v6];

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
  v3 = [(RestaurantReservationTableViewController *)self reservationDetailCell];
  v9 = [v3 timeSelectionCollectionView];

  v4 = [(RestaurantReservationTableViewController *)self reservationDetailCell];
  v5 = [v4 timeSelectionCollectionViewLayout];

  [v9 setDataSource:self];
  [v9 setDelegate:self];
  [v9 setAllowsMultipleSelection:0];
  [v9 setAllowsSelection:1];
  [v9 setShowsHorizontalScrollIndicator:0];
  [v9 setLayoutMargins:{20.0, 0.0, 0.0, 0.0}];
  v6 = [(RestaurantReservationTableViewController *)self offers];
  v7 = [v6 count] != 0;

  [(RestaurantReservationTableViewController *)self adjustCollectionViewHeightForOffers:v7 animated:[(RestaurantReservationTableViewController *)self viewHasAppeared]];
  v8 = [(RestaurantReservationTableViewController *)self dimmableIndexPaths];
  [v5 setDimmableIndexPaths:v8];

  if ([(RestaurantReservationTableViewController *)self bookingsLoading])
  {
    [v5 setDimUnselected:0];
    [v5 invalidateLayout];
  }
}

- (void)_configureReservationDetailsError
{
  v3 = [(RestaurantReservationTableViewController *)self date];
  v4 = [(RestaurantReservationTableViewController *)self noTablesAvailableTextForDate:v3];
  v5 = [(RestaurantReservationTableViewController *)self reservationDetailCell];
  [v5 setErrorText:v4];

  v6 = +[NSBundle mainBundle];
  v7 = [v6 localizedStringForKey:@"reservations_no_tables_action_key" value:@"localized string not found" table:0];
  v8 = [(RestaurantReservationTableViewController *)self reservationDetailCell];
  [v8 setErrorButtonText:v7];

  v9 = [(RestaurantReservationTableViewController *)self reservationDetailCell];
  v10 = [(RestaurantReservationTableViewController *)self availableBookings];
  if ([v10 count])
  {
    v11 = 0;
  }

  else
  {
    v11 = [(RestaurantReservationTableViewController *)self bookingsLoading]^ 1;
  }

  [v9 setDisplayError:v11 animated:1];

  v12 = [(RestaurantReservationTableViewController *)self reservationDetailCell];
  [v12 addErrorButtonTouchUpInsideTarget:self action:"changeDateButtonTapped:"];
}

- (void)_configureReservationDetailsLoadingIndicator
{
  v3 = [(RestaurantReservationTableViewController *)self reservationDetailCell];
  [v3 setLoading:-[RestaurantReservationTableViewController bookingsLoading](self animated:{"bookingsLoading"), 1}];

  v4 = +[NSBundle mainBundle];
  v9 = [v4 localizedStringForKey:@"reservations_loading_format_key" value:@"localized string not found" table:0];

  v5 = [NSString alloc];
  v6 = [(RestaurantReservationTableViewController *)self restaurantName];
  v7 = [v5 initWithFormat:v9, v6];
  v8 = [(RestaurantReservationTableViewController *)self reservationDetailCell];
  [v8 setLoadingText:v7];
}

- (void)_configureReservationDetailsDateAndPartySize
{
  v3 = [(RestaurantReservationTableViewController *)self date];
  v4 = [(RestaurantReservationTableViewController *)self descriptionTextForDate:v3 partySize:[(RestaurantReservationTableViewController *)self partySize]];
  v5 = [(RestaurantReservationTableViewController *)self reservationDetailCell];
  [v5 setDateAndPartySizeText:v4];

  v6 = +[NSBundle mainBundle];
  v7 = [v6 localizedStringForKey:@"reservations_change_key" value:@"localized string not found" table:0];
  v8 = [(RestaurantReservationTableViewController *)self reservationDetailCell];
  [v8 setDateAndPartySizeButtonText:v7];

  v9 = [(RestaurantReservationTableViewController *)self reservationDetailCell];
  [v9 addDateAndPartySizeButtonTouchUpInsideTarget:self action:"changeDateButtonTapped:"];

  v12 = [(RestaurantReservationTableViewController *)self reservationDetailCell];
  v10 = [(RestaurantReservationTableViewController *)self availableBookings];
  if ([v10 count])
  {
    v11 = 0;
  }

  else
  {
    v11 = [(RestaurantReservationTableViewController *)self bookingsLoading]^ 1;
  }

  [v12 setHideDateAndPartySize:v11 animated:1];
}

- (void)_configureReservationDetails
{
  [(RestaurantReservationTableViewController *)self _configureReservationDetailsDateAndPartySize];
  [(RestaurantReservationTableViewController *)self _configureReservationDetailsLoadingIndicator];
  [(RestaurantReservationTableViewController *)self _configureReservationDetailsError];

  [(RestaurantReservationTableViewController *)self _configureReservationDetailsTimeSelction];
}

- (BOOL)tableView:(id)a3 shouldHighlightRowAtIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v7 section];
  if (v8 == -[RestaurantReservationTableViewController headerSection](self, "headerSection") && ![v7 row])
  {
    v13 = [v6 cellForRowAtIndexPath:v7];
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
    v9 = [v7 section];
    if (v9 == -[RestaurantReservationTableViewController reservationDetailsSection](self, "reservationDetailsSection") && ![v7 row])
    {
      LODWORD(self) = ![(RestaurantReservationTableViewController *)self guestLoading];
    }

    else
    {
      v10 = [v7 section];
      if (v10 == -[RestaurantReservationTableViewController headerSection](self, "headerSection") && ![v7 row] || (v11 = objc_msgSend(v7, "section"), v11 == -[RestaurantReservationTableViewController offersSection](self, "offersSection")) && -[RestaurantReservationTableViewController shouldDisplayOffersSection](self, "shouldDisplayOffersSection") && objc_msgSend(v7, "row"))
      {
        LOBYTE(self) = 1;
      }

      else
      {
        v12 = [v7 section];
        LOBYTE(self) = v12 == [(RestaurantReservationTableViewController *)self reservationDetailsSection];
      }
    }
  }

  return self;
}

- (void)configureCell:(id)a3 withBooking:(id)a4 row:(int64_t)a5
{
  v19 = a3;
  v7 = a4;
  v8 = [(RestaurantReservationTableViewController *)self timeSelectionDateFormatter];
  v9 = [v7 bookingDate];
  v10 = [v8 stringFromDate:v9];
  [v19 setTitleText:v10];

  v11 = [v7 offers];
  if ([v11 count])
  {
    v12 = [v7 isBookingAvailable];

    if (v12)
    {
      v13 = +[NSBundle mainBundle];
      v14 = [v13 localizedStringForKey:@"reservations_number_of_offers_key" value:@"localized string not found" table:0];

      v15 = [v7 offers];
      v16 = +[NSString localizedStringWithFormat:](NSString, "localizedStringWithFormat:", v14, [v15 count]);
      [v19 setSubText:v16];

      goto LABEL_6;
    }
  }

  else
  {
  }

  [v19 setSubText:0];
LABEL_6:
  v17 = [(RestaurantReservationTableViewController *)self theme];
  if ([v7 isBookingAvailable])
  {
    [v17 keyColor];
  }

  else
  {
    [v17 reservationsGrayColor];
  }
  v18 = ;
  [v19 setColor:v18];
}

- (id)collectionView:(id)a3 cellForItemAtIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (([v7 section] & 0x8000000000000000) != 0 || (v8 = objc_msgSend(v7, "section"), -[RestaurantReservationTableViewController sectionTitles](self, "sectionTitles"), v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(v9, "count"), v9, v8 >= v10))
  {
    v17 = objc_opt_new();
  }

  else
  {
    v11 = [(RestaurantReservationTableViewController *)self sectionTitles];
    v12 = [v11 objectAtIndexedSubscript:{objc_msgSend(v7, "section")}];

    v13 = [(RestaurantReservationTableViewController *)self availableBookingsBySection];
    v14 = [v13 objectForKeyedSubscript:v12];

    if (([v7 row] & 0x8000000000000000) != 0 || (v15 = objc_msgSend(v7, "row"), v15 >= objc_msgSend(v14, "count")))
    {
      v17 = objc_opt_new();
    }

    else
    {
      v16 = [RestaurantReservationTableViewCell reuseIdentifierForClass:objc_opt_class()];
      v17 = [v6 dequeueReusableCellWithReuseIdentifier:v16 forIndexPath:v7];

      v18 = [v14 objectAtIndexedSubscript:{objc_msgSend(v7, "row")}];
      -[RestaurantReservationTableViewController configureCell:withBooking:row:](self, "configureCell:withBooking:row:", v17, v18, [v7 row]);
    }
  }

  return v17;
}

- (id)collectionView:(id)a3 viewForSupplementaryElementOfKind:(id)a4 atIndexPath:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = v10;
  if (UICollectionElementKindSectionHeader != v9 || ([v10 section] & 0x8000000000000000) != 0 || (v14 = objc_msgSend(v11, "section"), -[RestaurantReservationTableViewController sectionTitles](self, "sectionTitles"), v15 = objc_claimAutoreleasedReturnValue(), v16 = objc_msgSend(v15, "count"), v15, v14 >= v16))
  {
    v12 = objc_opt_new();
  }

  else
  {
    v17 = [(RestaurantReservationTableViewController *)self sectionTitles];
    v18 = [v17 objectAtIndexedSubscript:{objc_msgSend(v11, "section")}];

    v19 = [RestaurantReservationTableViewCell reuseIdentifierForClass:objc_opt_class()];
    v12 = [v8 dequeueReusableSupplementaryViewOfKind:UICollectionElementKindSectionHeader withReuseIdentifier:v19 forIndexPath:v11];

    v20 = [v12 label];
    [v20 setText:v18];

    v21 = +[UIColor secondaryLabelColor];
    v22 = [v12 label];
    [v22 setTextColor:v21];

    v23 = [(RestaurantReservationTableViewController *)self tableView];
    [v23 layoutMargins];
    [v12 setLayoutMargins:?];

    [v12 setMarginsRequired:{objc_msgSend(v11, "section") > 0}];
  }

  return v12;
}

- (int64_t)numberOfSectionsInCollectionView:(id)a3
{
  v3 = [(RestaurantReservationTableViewController *)self sectionTitles];
  v4 = [v3 count];

  return v4;
}

- (int64_t)collectionView:(id)a3 numberOfItemsInSection:(int64_t)a4
{
  if (a4 < 0)
  {
    return 0;
  }

  v6 = [(RestaurantReservationTableViewController *)self sectionTitles];
  v7 = [v6 count];

  if (v7 <= a4)
  {
    return 0;
  }

  v8 = [(RestaurantReservationTableViewController *)self sectionTitles];
  v9 = [v8 objectAtIndexedSubscript:a4];

  v10 = [(RestaurantReservationTableViewController *)self availableBookingsBySection];
  v11 = [v10 objectForKeyedSubscript:v9];
  v12 = [v11 count];

  return v12;
}

- (UIEdgeInsets)collectionView:(id)a3 layout:(id)a4 insetForSectionAtIndex:(int64_t)a5
{
  v6 = a4;
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  [v6 headerReferenceSize];
  v11 = left - v10;
  if (a5 >= 1)
  {
    [v6 minimumInteritemSpacing];
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

- (void)footerButtonTapped:(id)a3
{
  v4 = [(RestaurantReservationTableViewController *)self analyticsCaptor];
  [v4 captureSelectTimeReserveTable];

  v9 = [(RestaurantReservationTableViewController *)self delegate];
  v5 = [(RestaurantReservationTableViewController *)self selectedBooking];
  v6 = [(RestaurantReservationTableViewController *)self selectedOffer];
  v7 = [(RestaurantReservationTableViewController *)self noOfferOffer];
  if ([v6 isEqual:v7])
  {
    [v9 bookingSelectionViewController:self didSelectBooking:v5 offer:0];
  }

  else
  {
    v8 = [(RestaurantReservationTableViewController *)self selectedOffer];
    [v9 bookingSelectionViewController:self didSelectBooking:v5 offer:v8];
  }
}

- (void)ridesharingAppActionTableViewCellDidPerformAction:(id)a3
{
  v4 = [(RestaurantReservationTableViewController *)self analyticsCaptor];
  [v4 captureSelectTimePunchOut];

  v5 = [(RestaurantReservationTableViewController *)self delegate];
  [v5 bookingSelectionViewControllerDidSelectOpenInApp:self];
}

- (void)reservationTableViewCellDidSelectSecondaryButton:(id)a3
{
  v4 = [(RestaurantReservationTableViewController *)self termsAndConditions];
  v5 = [v4 termsAndConditionsURL];

  if (v5)
  {
    v6 = [(RestaurantReservationTableViewController *)self analyticsCaptor];
    [v6 captureSelectTimeLearnMore];

    v9 = +[UIApplication sharedApplication];
    v7 = [(RestaurantReservationTableViewController *)self termsAndConditions];
    v8 = [v7 termsAndConditionsURL];
    [v9 openURL:v8 options:&__NSDictionary0__struct completionHandler:0];
  }
}

- (void)reservationTableViewCellDidSelectPrimaryButton:(id)a3
{
  v4 = [(RestaurantReservationTableViewController *)self termsAndConditions];
  v5 = [v4 privacyPolicyURL];

  v6 = [(RestaurantReservationTableViewController *)self termsAndConditions];
  v7 = v6;
  if (v5)
  {
    v8 = [v6 privacyPolicyURL];
  }

  else
  {
    v9 = [v6 termsAndConditionsURL];

    if (!v9)
    {
      return;
    }

    v7 = [(RestaurantReservationTableViewController *)self termsAndConditions];
    v8 = [v7 termsAndConditionsURL];
  }

  v12 = v8;

  if (v12)
  {
    v10 = [(RestaurantReservationTableViewController *)self analyticsCaptor];
    [v10 captureSelectTimeLearnMore];

    v11 = +[UIApplication sharedApplication];
    [v11 openURL:v12 options:&__NSDictionary0__struct completionHandler:0];
  }
}

- (int64_t)transformedIndexForIndexPath:(id)a3 collectionView:(id)a4
{
  v5 = a3;
  v6 = a4;
  if ([v5 section] < 1)
  {
    v8 = 0;
  }

  else
  {
    v7 = 0;
    v8 = 0;
    do
    {
      v8 += [v6 numberOfItemsInSection:v7++];
    }

    while (v7 < [v5 section]);
  }

  v9 = [v5 item];

  return v9 + v8;
}

- (void)updateSelectedOffer
{
  v3 = [(RestaurantReservationTableViewController *)self tableView];
  v4 = [v3 isEditing];

  if (v4)
  {
    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    v5 = [(RestaurantReservationTableViewController *)self tableView];
    v6 = [v5 indexPathsForVisibleRows];

    v7 = [v6 countByEnumeratingWithState:&v29 objects:v33 count:16];
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
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v29 + 1) + 8 * i);
        v12 = [v11 section];
        if (v12 == -[RestaurantReservationTableViewController offersSection](self, "offersSection") && [v11 row])
        {
          v13 = [(RestaurantReservationTableViewController *)self tableView];
          v14 = [v13 cellForRowAtIndexPath:v11];

          v15 = [(RestaurantReservationTableViewController *)self tableView];
          v16 = [v15 isEditing];

          if (v16)
          {
            v17 = [(RestaurantReservationTableViewController *)self formerSelection];
            v18 = [v17 length];

            if (v18 < 2)
            {
              v25 = [(RestaurantReservationTableViewController *)self offers];
              v26 = [v25 firstObject];
              [(RestaurantReservationTableViewController *)self setSelectedOffer:v26];

              v24 = [(RestaurantReservationTableViewController *)self tableView];
              v27 = [NSIndexPath indexPathForRow:1 inSection:[(RestaurantReservationTableViewController *)self offersSection]];
              [v24 selectRowAtIndexPath:v27 animated:1 scrollPosition:0];

LABEL_14:
            }

            else
            {
              v19 = [v14 mainLabel];
              v20 = [v19 text];
              [(RestaurantReservationTableViewController *)self formerSelection];
              v21 = v9;
              v23 = v22 = v6;
              v28 = [v20 isEqualToString:v23];

              v6 = v22;
              v9 = v21;

              if (v28)
              {
                v24 = [(RestaurantReservationTableViewController *)self tableView];
                [v24 selectRowAtIndexPath:v11 animated:1 scrollPosition:0];
                goto LABEL_14;
              }
            }
          }

          continue;
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v29 objects:v33 count:16];
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
  v3 = [(RestaurantReservationTableViewController *)self tableView];
  v4 = [(RestaurantReservationTableViewController *)self selectedBooking];
  if (v4)
  {
    v5 = [(RestaurantReservationTableViewController *)self shouldDisplayOffersSection];
  }

  else
  {
    v5 = 0;
  }

  [v3 setEditing:v5 animated:1];

  [(RestaurantReservationTableViewController *)self updateSelectedOffer];
}

- (void)deselectBooking
{
  [(RestaurantReservationTableViewController *)self setSelectedBooking:0];
  v3 = [(RestaurantReservationTableViewController *)self reservationDetailCell];
  v4 = [v3 timeSelectionCollectionViewLayout];
  [v4 setDimUnselected:0];

  [(RestaurantReservationTableViewController *)self resetForChangedTimeSelection];
}

- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4
{
  v5 = [(RestaurantReservationTableViewController *)self transformedIndexForIndexPath:a4 collectionView:a3];
  if ((v5 & 0x8000000000000000) == 0)
  {
    v6 = v5;
    v7 = [(RestaurantReservationTableViewController *)self availableBookings];
    v8 = [v7 count];

    if (v6 < v8)
    {
      v9 = [(RestaurantReservationTableViewController *)self availableBookings];
      v10 = [(RestaurantReservationTableViewController *)self selectedBooking];
      v11 = [v9 indexOfObject:v10];

      if (v6 == v11)
      {

        [(RestaurantReservationTableViewController *)self deselectBooking];
      }

      else
      {
        v12 = [(RestaurantReservationTableViewController *)self availableBookings];
        v17 = [v12 objectAtIndexedSubscript:v6];

        if ([v17 isBookingAvailable])
        {
          v13 = [(RestaurantReservationTableViewController *)self analyticsCaptor];
          [v13 captureSelectTimeSelected];

          v14 = [(RestaurantReservationTableViewController *)self analyticsBookingSession];
          [v14 setCurrentView:4];

          [(RestaurantReservationTableViewController *)self setSelectedBooking:v17];
          v15 = [(RestaurantReservationTableViewController *)self reservationDetailCell];
          v16 = [v15 timeSelectionCollectionViewLayout];
          [v16 setDimUnselected:1];

          [(RestaurantReservationTableViewController *)self resetForChangedTimeSelection];
        }
      }
    }
  }
}

- (double)tableView:(id)a3 heightForFooterInSection:(int64_t)a4
{
  v5 = [(RestaurantReservationTableViewController *)self openAppSection];
  result = 37.0;
  if (v5 != a4)
  {
    return 6.0;
  }

  return result;
}

- (double)tableView:(id)a3 heightForHeaderInSection:(int64_t)a4
{
  v5 = [(RestaurantReservationTableViewController *)self headerSection];
  result = 35.0;
  if (v5 != a4)
  {
    return 6.0;
  }

  return result;
}

- (BOOL)tableView:(id)a3 canEditRowAtIndexPath:(id)a4
{
  v5 = a4;
  v6 = [v5 section];
  if (v6 == -[RestaurantReservationTableViewController offersSection](self, "offersSection") && [v5 row])
  {
    v7 = [(RestaurantReservationTableViewController *)self shouldDisplayOffersSection];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)tableView:(id)a3 didDeselectRowAtIndexPath:(id)a4
{
  v5 = [(RestaurantReservationTableViewController *)self tableView:a3];
  v6 = [v5 isEditing];

  if (v6)
  {
    [(RestaurantReservationTableViewController *)self setFormerSelection:&stru_1016631F0];
  }

  v7 = [(RestaurantReservationTableViewController *)self offers];
  v8 = [v7 count];

  v10 = [(RestaurantReservationTableViewController *)self tableView];
  v9 = [NSIndexPath indexPathForRow:v8 inSection:[(RestaurantReservationTableViewController *)self offersSection]];
  [v10 selectRowAtIndexPath:v9 animated:1 scrollPosition:0];
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v7 section];
  if (v8 == [(RestaurantReservationTableViewController *)self offersSection])
  {
    v9 = [(RestaurantReservationTableViewController *)self tableView];
    v10 = [v9 isEditing];

    if (v10)
    {
      v11 = [(RestaurantReservationTableViewController *)self tableView];
      v12 = [v11 cellForRowAtIndexPath:v7];

      v13 = [v12 mainLabel];
      v14 = [v13 text];
      [(RestaurantReservationTableViewController *)self setFormerSelection:v14];

      v15 = [v6 indexPathsForSelectedRows];
      v41 = 0u;
      v42 = 0u;
      v43 = 0u;
      v44 = 0u;
      v16 = [v15 countByEnumeratingWithState:&v41 objects:v45 count:16];
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
              objc_enumerationMutation(v15);
            }

            v20 = *(*(&v41 + 1) + 8 * i);
            v21 = [v20 section];
            if (v21 == [(RestaurantReservationTableViewController *)self offersSection])
            {
              v22 = [v20 row];
              if (v22 != [v7 row])
              {
                v23 = [(RestaurantReservationTableViewController *)self tableView];
                [v23 deselectRowAtIndexPath:v20 animated:1];
              }
            }
          }

          v17 = [v15 countByEnumeratingWithState:&v41 objects:v45 count:16];
        }

        while (v17);
      }
    }

    v24 = [v7 row];
    if (v24 < 2 || (v25 = v24 - 1, -[RestaurantReservationTableViewController offers](self, "offers"), v26 = objc_claimAutoreleasedReturnValue(), v27 = [v26 count], v26, v25 >= v27))
    {
      [(RestaurantReservationTableViewController *)self setSelectedOffer:0];
    }

    else
    {
      v28 = [(RestaurantReservationTableViewController *)self offers];
      v29 = [v28 objectAtIndexedSubscript:v25];
      [(RestaurantReservationTableViewController *)self setSelectedOffer:v29];
    }
  }

  v30 = [v7 section];
  if (v30 == [(RestaurantReservationTableViewController *)self reservationDetailsSection])
  {
    [v6 deselectRowAtIndexPath:v7 animated:1];
  }

  v31 = [v7 section];
  if (v31 == [(RestaurantReservationTableViewController *)self reservationDetailsSection])
  {
    v32 = [v7 row];
    if (v32 == [(RestaurantReservationTableViewController *)self reservationContactInfoRow]&& [(RestaurantReservationTableViewController *)self shouldDisplayContactCell])
    {
      v33 = [(RestaurantReservationTableViewController *)self analyticsCaptor];
      [v33 captureSelectTimeEditUserInfo];

      v34 = [(RestaurantReservationTableViewController *)self delegate];
      [v34 userInfoCellSelected];
    }

    v35 = [v7 row];
    if (v35 == [(RestaurantReservationTableViewController *)self reservationSpecialRequestRow])
    {
      v36 = [(RestaurantReservationTableViewController *)self analyticsCaptor];
      [v36 captureSelectTimeAddSpecialRequest];

      v37 = [(RestaurantReservationTableViewController *)self delegate];
      [v37 specialRequestCellSelected];
    }
  }

  v38 = [v7 section];
  if (v38 == -[RestaurantReservationTableViewController headerSection](self, "headerSection") && ![v7 row])
  {
    v39 = [(RestaurantReservationTableViewController *)self tableView];
    [v39 deselectRowAtIndexPath:v7 animated:1];

    v40 = [(RestaurantReservationTableViewController *)self delegate];
    [v40 headerCellSelected];
  }
}

- (void)configureSpecialRequestTextCell:(id)a3
{
  v13 = a3;
  v4 = +[UIColor systemGrayColor];
  v5 = [v13 detailTextLabel];
  [v5 setTextColor:v4];

  v6 = +[NSBundle mainBundle];
  v7 = [v6 localizedStringForKey:@"reservation_special_request_key" value:@"localized string not found" table:0];
  v8 = [v13 textLabel];
  [v8 setText:v7];

  v9 = [(RestaurantReservationTableViewController *)self specialRequestText];
  v10 = [v9 length];
  if (v10)
  {
    [(RestaurantReservationTableViewController *)self specialRequestText];
  }

  else
  {
    self = +[NSBundle mainBundle];
    [(RestaurantReservationTableViewController *)self localizedStringForKey:@"reservation_special_request_none_key" value:@"localized string not found" table:0];
  }
  v11 = ;
  v12 = [v13 detailTextLabel];
  [v12 setText:v11];

  if (!v10)
  {

    v11 = self;
  }
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v7 section];
  if (v8 == [(RestaurantReservationTableViewController *)self headerSection])
  {
    if (![v7 row])
    {
      v64 = objc_opt_class();
      v65 = NSStringFromClass(v64);
      v17 = [v6 dequeueReusableCellWithIdentifier:v65];

      [v17 setAutomaticallyHidesChevron:1];
      [v17 setSubtitleType:0];
      v66 = [(RestaurantReservationTableViewController *)self restaurantName];
      v67 = [v17 mainLabel];
      [v67 setText:v66];

      v68 = [(RestaurantReservationTableViewController *)self restaurantDescriptionText];
      v69 = [v17 subLabel];
      [v69 setText:v68];

      v70 = [UIFont preferredFontForTextStyle:UIFontTextStyleSubheadline];
      v71 = [v17 subLabel];
      [v71 setFont:v70];

      v72 = +[UIColor secondaryLabelColor];
      v73 = [v17 subLabel];
      [v73 setTextColor:v72];

      if ([(RestaurantReservationTableViewController *)self useTruncatedAdvisement])
      {
        v74 = 2;
      }

      else
      {
        v74 = 0;
      }

      v75 = [v17 subLabel];
      [v75 setNumberOfLines:v74];

      v76 = [v17 contentView];
      [v76 layoutMargins];
      v78 = v77;
      v80 = v79;
      v82 = v81;

      v83 = [v17 contentView];
      [v83 setLayoutMargins:{v78, v80, 20.0, v82}];

LABEL_40:
      [v17 setAccessoryType:1];
      goto LABEL_52;
    }

    if ([v7 row] == 1)
    {
      v9 = [(RestaurantReservationTableViewController *)self reservationDetailCell];

      if (!v9)
      {
        v10 = objc_opt_class();
        v11 = NSStringFromClass(v10);
        v12 = [v6 dequeueReusableCellWithIdentifier:v11];

        [(RestaurantReservationTableViewController *)self setReservationDetailCell:v12];
        [(RestaurantReservationTableViewController *)self _configureReservationDetails];
      }

      v13 = [(RestaurantReservationTableViewController *)self reservationDetailCell];
      goto LABEL_42;
    }
  }

  v14 = [v7 section];
  if (v14 == [(RestaurantReservationTableViewController *)self advisementSection]&& [(RestaurantReservationTableViewController *)self shouldDisplayAdvisementSection])
  {
    if (![v7 row])
    {
      v84 = objc_opt_class();
      v85 = NSStringFromClass(v84);
      v17 = [v6 dequeueReusableCellWithIdentifier:v85];

      v86 = +[NSBundle mainBundle];
      v53 = [v86 localizedStringForKey:@"reservation_from_restaurant_format_key" value:@"localized string not found" table:0];

      v87 = [NSString alloc];
      v88 = [(RestaurantReservationTableViewController *)self restaurantName];
      goto LABEL_50;
    }

    if ([v7 row] == 1)
    {
      v15 = objc_opt_class();
      v16 = NSStringFromClass(v15);
      v17 = [v6 dequeueReusableCellWithIdentifier:v16];

      v18 = [(RestaurantReservationTableViewController *)self restaurantAdvisementText];
      [v17 setText:v18];

      [v17 setPrimaryButtonText:0];
      [v17 setSecondaryButtonText:0];
      goto LABEL_52;
    }
  }

  v19 = [v7 section];
  if (v19 != [(RestaurantReservationTableViewController *)self offersSection]|| ![(RestaurantReservationTableViewController *)self shouldDisplayOffersSection])
  {
    v32 = [v7 section];
    if (v32 == [(RestaurantReservationTableViewController *)self reservationDetailsSection])
    {
      v33 = objc_opt_class();
      v34 = NSStringFromClass(v33);
      v17 = [v6 dequeueReusableCellWithIdentifier:v34];

      if (!v17)
      {
        v35 = [UITableViewCell alloc];
        v36 = objc_opt_class();
        v37 = NSStringFromClass(v36);
        v17 = [v35 initWithStyle:1 reuseIdentifier:v37];
      }

      v38 = [v7 row];
      if (v38 == [(RestaurantReservationTableViewController *)self reservationContactInfoRow]&& [(RestaurantReservationTableViewController *)self shouldDisplayContactCell])
      {
        v111 = 0;
        v39 = +[NSBundle mainBundle];
        v40 = [v39 localizedStringForKey:@"reservation_your_details_key" value:@"localized string not found" table:0];
        v41 = [v17 textLabel];
        [v41 setText:v40];

        v42 = [(RestaurantReservationTableViewController *)self contactDisplayStringSatisfied:&v111];
        v43 = [v17 detailTextLabel];
        [v43 setText:v42];

        v44 = [(RestaurantReservationTableViewController *)self contactDisplayColorSatisfied:v111];
        v45 = [v17 detailTextLabel];
        [v45 setTextColor:v44];
      }

      v46 = [v7 row];
      if (v46 == [(RestaurantReservationTableViewController *)self reservationSpecialRequestRow])
      {
        [(RestaurantReservationTableViewController *)self configureSpecialRequestTextCell:v17];
      }

      goto LABEL_40;
    }

    v47 = [v7 section];
    if (v47 == -[RestaurantReservationTableViewController openAppSection](self, "openAppSection") && ![v7 row])
    {
      v100 = objc_opt_class();
      v101 = NSStringFromClass(v100);
      v17 = [v6 dequeueReusableCellWithIdentifier:v101];

      v102 = [(RestaurantReservationTableViewController *)self appName];
      [v17 setApplicationName:v102 titleType:1];

      [v17 setDelegate:self];
      goto LABEL_52;
    }

    v48 = [v7 section];
    if (v48 != [(RestaurantReservationTableViewController *)self termsAndConditionsSection]|| ![(RestaurantReservationTableViewController *)self shouldDisplayTermsAndConditions])
    {
      goto LABEL_41;
    }

    if ([v7 row])
    {
      if ([v7 row] == 1)
      {
        v49 = objc_opt_class();
        v50 = NSStringFromClass(v49);
        v17 = [v6 dequeueReusableCellWithIdentifier:v50];

        v51 = [(RestaurantReservationTableViewController *)self termsAndConditions];
        v52 = [v51 localizedTermsAndConditionsText];
        [v17 setText:v52];

        v53 = [NSMutableArray arrayWithCapacity:2];
        v54 = [(RestaurantReservationTableViewController *)self termsAndConditions];
        v55 = [v54 privacyPolicyURL];

        if (v55)
        {
          v56 = +[NSBundle mainBundle];
          v57 = [v56 localizedStringForKey:@"reservations_privacy_policy_title" value:@"localized string not found" table:0];
          [v53 addObject:v57];
        }

        v58 = [(RestaurantReservationTableViewController *)self termsAndConditions];
        v59 = [v58 termsAndConditionsURL];

        if (v59)
        {
          v60 = +[NSBundle mainBundle];
          v61 = [v60 localizedStringForKey:@"reservations_terms_of_use_title" value:@"localized string not found" table:0];
          [v53 addObject:v61];
        }

        v62 = [v53 firstObject];
        [v17 setPrimaryButtonText:v62];

        v63 = [v53 lastObject];
        [v17 setSecondaryButtonText:v63];

        [v17 setDelegate:self];
        goto LABEL_51;
      }

LABEL_41:
      v13 = objc_opt_new();
LABEL_42:
      v17 = v13;
      goto LABEL_52;
    }

    v103 = objc_opt_class();
    v104 = NSStringFromClass(v103);
    v17 = [v6 dequeueReusableCellWithIdentifier:v104];

    v105 = +[NSBundle mainBundle];
    v53 = [v105 localizedStringForKey:@"reservation_from_provider_format_key" value:@"localized string not found" table:0];

    v87 = [NSString alloc];
    v88 = [(RestaurantReservationTableViewController *)self appName];
LABEL_50:
    v106 = v88;
    v107 = [v87 initWithFormat:v53, v88];
    [v17 setText:v107];

    v108 = +[UIColor secondaryLabelColor];
    [v17 setTextColor:v108];

    [v17 setHidesHairline:1];
    v109 = [UIFont preferredFontForTextStyle:UIFontTextStyleCaption1];
    [v17 setFont:v109];

LABEL_51:
    goto LABEL_52;
  }

  if ([v7 row])
  {
    v20 = [v7 row] - 1;
    v21 = objc_opt_class();
    v22 = NSStringFromClass(v21);
    v17 = [v6 dequeueReusableCellWithIdentifier:v22];

    v23 = [(RestaurantReservationTableViewController *)self offers];
    v24 = [v23 count];

    if (v20 >= v24)
    {
      v95 = +[NSBundle mainBundle];
      v96 = [v95 localizedStringForKey:@"reservation_no_offer_key" value:@"localized string not found" table:0];
      v97 = [v17 mainLabel];
      [v97 setText:v96];

      v26 = +[NSBundle mainBundle];
      v29 = [v26 localizedStringForKey:@"reservation_no_offer_detail_key" value:@"localized string not found" table:0];
      v30 = [v17 subLabel];
      [v30 setText:v29];
    }

    else
    {
      v25 = [(RestaurantReservationTableViewController *)self offers];
      v26 = [v25 objectAtIndexedSubscript:v20];

      v27 = [v26 offerTitleText];
      v28 = [v17 mainLabel];
      [v28 setText:v27];

      v29 = [v26 offerDetailText];
      v30 = [v29 stringByReplacingOccurrencesOfString:@"\n" withString:@" "];
      v31 = [v17 subLabel];
      [v31 setText:v30];
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
    v17 = [v6 dequeueReusableCellWithIdentifier:v90];

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

- (void)tableView:(id)a3 willDisplayCell:(id)a4 forRowAtIndexPath:(id)a5
{
  v22 = a4;
  v7 = a5;
  v8 = [v7 section];
  if (v8 == -[RestaurantReservationTableViewController headerSection](self, "headerSection") && [v7 row] == 1)
  {
    [v22 bounds];
    [v22 setSeparatorInset:{0.0, v9, 0.0, 0.0}];
  }

  v10 = [(RestaurantReservationTableViewController *)self heightCache];

  if (!v10)
  {
    v11 = objc_opt_new();
    [(RestaurantReservationTableViewController *)self setHeightCache:v11];
  }

  v12 = [v7 section];
  if (v12 == [(RestaurantReservationTableViewController *)self offersSection]&& [(RestaurantReservationTableViewController *)self shouldDisplayOffersSection])
  {
    if (![v7 row])
    {
      [v22 bounds];
      [v22 setSeparatorInset:{0.0, v13, 0.0, 0.0}];
    }

    [v22 bounds];
    v14 = [NSNumber numberWithDouble:CGRectGetHeight(v24)];
    [(RestaurantReservationTableViewController *)self setOffersRowHeight:v14];
  }

  v15 = [v7 section];
  v16 = v15 == -[RestaurantReservationTableViewController termsAndConditionsSection](self, "termsAndConditionsSection") && -[RestaurantReservationTableViewController shouldDisplayTermsAndConditions](self, "shouldDisplayTermsAndConditions") && [v7 row] == 0;
  v17 = [v7 section];
  v18 = v17 == -[RestaurantReservationTableViewController advisementSection](self, "advisementSection") && -[RestaurantReservationTableViewController shouldDisplayAdvisementSection](self, "shouldDisplayAdvisementSection") && [v7 row] == 0;
  if (v16 || v18)
  {
    [v22 bounds];
    [v22 setSeparatorInset:{0.0, v19, 0.0, 0.0}];
  }

  [v22 bounds];
  v20 = [NSNumber numberWithDouble:CGRectGetHeight(v25)];
  v21 = [(RestaurantReservationTableViewController *)self heightCache];
  [v21 setObject:v20 forKeyedSubscript:v7];
}

- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4
{
  if ([(RestaurantReservationTableViewController *)self headerSection]== a4 || [(RestaurantReservationTableViewController *)self advisementSection]== a4 && [(RestaurantReservationTableViewController *)self shouldDisplayAdvisementSection])
  {
    return 2;
  }

  if ([(RestaurantReservationTableViewController *)self offersSection]== a4 && [(RestaurantReservationTableViewController *)self shouldDisplayOffersSection])
  {

    return [(RestaurantReservationTableViewController *)self numberOfRowsInOffersSection];
  }

  if ([(RestaurantReservationTableViewController *)self reservationDetailsSection]!= a4)
  {
    if ([(RestaurantReservationTableViewController *)self termsAndConditionsSection]!= a4 || ![(RestaurantReservationTableViewController *)self shouldDisplayTermsAndConditions])
    {
      return [(RestaurantReservationTableViewController *)self openAppSection]== a4;
    }

    return 2;
  }

  return [(RestaurantReservationTableViewController *)self numberOfRowsInDetailsSection];
}

- (double)tableView:(id)a3 estimatedHeightForRowAtIndexPath:(id)a4
{
  v5 = a4;
  v6 = [(RestaurantReservationTableViewController *)self heightCache];
  v7 = [v6 objectForKeyedSubscript:v5];

  if (v7)
  {
    [v7 floatValue];
    v9 = v8;
  }

  else
  {
    v10 = [(RestaurantReservationTableViewController *)self reservationDetailsIndexPath];
    v11 = [v5 isEqual:v10];

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
  v4 = [(RestaurantReservationTableViewController *)self inferredContactRequirements];
  v5 = [(RestaurantReservationTableViewController *)self guestDisplayPreferences];
  v6 = [(RestaurantReservationTableViewController *)self guest];
  v7 = [(RestaurantReservationTableViewController *)self requirements:v4 satisfiableWithDisplayPreferences:v5 guest:v6];

  v8 = [(RestaurantReservationTableViewController *)self selectedBooking];
  if (v8 && ![(RestaurantReservationTableViewController *)self bookingPending])
  {
    v9 = v35 & v7 | v7 ^ 1;
  }

  else
  {
    v9 = 0;
  }

  v10 = [(RestaurantReservationTableViewController *)self footerButtonView];
  v11 = [v10 button];
  [v11 setEnabled:v9 & 1];

  v12 = [(RestaurantReservationTableViewController *)self footerButtonView];
  v13 = [v12 button];
  if ([v13 isEnabled])
  {
    v14 = 1.0;
  }

  else
  {
    v14 = 0.200000003;
  }

  v15 = [(RestaurantReservationTableViewController *)self footerButtonView];
  v16 = [v15 button];
  [v16 setAlpha:v14];

  v17 = [(RestaurantReservationTableViewController *)self bookingPending];
  v18 = [(RestaurantReservationTableViewController *)self selectedBooking];
  v19 = v18;
  if (v17)
  {
    v20 = [v18 requiresManualRequest];

    v21 = +[NSBundle mainBundle];
    if (v20)
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
      v29 = [(RestaurantReservationTableViewController *)self appName];
      v26 = [v28 initWithFormat:v25, v29];

      goto LABEL_21;
    }

    v23 = [(RestaurantReservationTableViewController *)self selectedBooking];
    v24 = [v23 requiresManualRequest];

    v21 = +[NSBundle mainBundle];
    if (v24)
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

  v30 = [(RestaurantReservationTableViewController *)self footerButtonView];
  v31 = [v30 button];
  v32 = [v31 configuration];

  [v32 setTitle:v26];
  v33 = [(RestaurantReservationTableViewController *)self footerButtonView];
  v34 = [v33 button];
  [v34 setConfiguration:v32];
}

- (void)didReceiveMemoryWarning
{
  v2.receiver = self;
  v2.super_class = RestaurantReservationTableViewController;
  [(RestaurantReservationTableViewController *)&v2 didReceiveMemoryWarning];
}

- (void)setupConstraints
{
  v3 = [(RestaurantReservationTableViewController *)self tableView];
  [v3 setTranslatesAutoresizingMaskIntoConstraints:0];

  v4 = [(RestaurantReservationTableViewController *)self footerButtonView];
  [v4 setTranslatesAutoresizingMaskIntoConstraints:0];

  v40 = [(RestaurantReservationTableViewController *)self view];
  v38 = [v40 leadingAnchor];
  v39 = [(RestaurantReservationTableViewController *)self footerButtonView];
  v37 = [v39 leadingAnchor];
  v36 = [v38 constraintEqualToAnchor:v37];
  v41[0] = v36;
  v35 = [(RestaurantReservationTableViewController *)self view];
  v33 = [v35 trailingAnchor];
  v34 = [(RestaurantReservationTableViewController *)self footerButtonView];
  v32 = [v34 trailingAnchor];
  v31 = [v33 constraintEqualToAnchor:v32];
  v41[1] = v31;
  v30 = [(RestaurantReservationTableViewController *)self view];
  v28 = [v30 bottomAnchor];
  v29 = [(RestaurantReservationTableViewController *)self footerButtonView];
  v27 = [v29 bottomAnchor];
  v26 = [v28 constraintEqualToAnchor:v27];
  v41[2] = v26;
  v25 = [(RestaurantReservationTableViewController *)self view];
  v23 = [v25 leadingAnchor];
  v24 = [(RestaurantReservationTableViewController *)self tableView];
  v22 = [v24 leadingAnchor];
  v21 = [v23 constraintEqualToAnchor:v22];
  v41[3] = v21;
  v20 = [(RestaurantReservationTableViewController *)self view];
  v18 = [v20 trailingAnchor];
  v19 = [(RestaurantReservationTableViewController *)self tableView];
  v17 = [v19 trailingAnchor];
  v16 = [v18 constraintEqualToAnchor:v17];
  v41[4] = v16;
  v15 = [(RestaurantReservationTableViewController *)self view];
  v5 = [v15 topAnchor];
  v6 = [(RestaurantReservationTableViewController *)self tableView];
  v7 = [v6 topAnchor];
  v8 = [v5 constraintEqualToAnchor:v7];
  v41[5] = v8;
  v9 = [(RestaurantReservationTableViewController *)self tableView];
  v10 = [v9 bottomAnchor];
  v11 = [(RestaurantReservationTableViewController *)self footerButtonView];
  v12 = [v11 topAnchor];
  v13 = [v10 constraintEqualToAnchor:v12];
  v41[6] = v13;
  v14 = [NSArray arrayWithObjects:v41 count:7];
  [NSLayoutConstraint activateConstraints:v14];
}

- (void)setupFooterButtonView
{
  v3 = objc_opt_new();
  [(RestaurantReservationTableViewController *)self setFooterButtonView:v3];

  v4 = [(RestaurantReservationTableViewController *)self footerButtonView];
  [v4 setTopHairlineHidden:0];

  [(RestaurantReservationTableViewController *)self configureButton];
  v5 = [(RestaurantReservationTableViewController *)self view];
  v6 = [(RestaurantReservationTableViewController *)self footerButtonView];
  [v5 addSubview:v6];

  v8 = [(RestaurantReservationTableViewController *)self footerButtonView];
  v7 = [v8 button];
  [v7 addTarget:self action:"footerButtonTapped:" forControlEvents:64];
}

- (void)setupTableView
{
  v3 = [[UITableView alloc] initWithFrame:1 style:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
  [(RestaurantReservationTableViewController *)self setTableView:v3];

  v4 = [(RestaurantReservationTableViewController *)self tableView];
  [v4 setDelegate:self];

  v5 = [(RestaurantReservationTableViewController *)self tableView];
  [v5 setDataSource:self];

  v6 = [(RestaurantReservationTableViewController *)self tableView];
  [v6 setRowHeight:UITableViewAutomaticDimension];

  v7 = [(RestaurantReservationTableViewController *)self tableView];
  [v7 setAllowsMultipleSelectionDuringEditing:1];

  v8 = [(RestaurantReservationTableViewController *)self tableView];
  [v8 setContentInset:{-40.0, 0.0, -40.0, 0.0}];

  v10 = [(RestaurantReservationTableViewController *)self view];
  v9 = [(RestaurantReservationTableViewController *)self tableView];
  [v10 addSubview:v9];
}

- (void)registerCells
{
  v3 = [(RestaurantReservationTableViewController *)self tableView];
  v4 = objc_opt_class();
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  [v3 registerClass:v4 forCellReuseIdentifier:v6];

  v7 = [(RestaurantReservationTableViewController *)self tableView];
  v8 = objc_opt_class();
  v9 = objc_opt_class();
  v10 = NSStringFromClass(v9);
  [v7 registerClass:v8 forCellReuseIdentifier:v10];

  v11 = [(RestaurantReservationTableViewController *)self tableView];
  v12 = objc_opt_class();
  v13 = objc_opt_class();
  v14 = NSStringFromClass(v13);
  [v11 registerClass:v12 forCellReuseIdentifier:v14];

  v15 = [(RestaurantReservationTableViewController *)self tableView];
  v16 = objc_opt_class();
  v17 = objc_opt_class();
  v18 = NSStringFromClass(v17);
  [v15 registerClass:v16 forCellReuseIdentifier:v18];

  v19 = [(RestaurantReservationTableViewController *)self tableView];
  v20 = objc_opt_class();
  v21 = objc_opt_class();
  v22 = NSStringFromClass(v21);
  [v19 registerClass:v20 forCellReuseIdentifier:v22];

  v26 = [(RestaurantReservationTableViewController *)self tableView];
  v23 = objc_opt_class();
  v24 = objc_opt_class();
  v25 = NSStringFromClass(v24);
  [v26 registerClass:v23 forCellReuseIdentifier:v25];
}

- (void)viewDidAppear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = RestaurantReservationTableViewController;
  [(RestaurantReservationTableViewController *)&v4 viewDidAppear:a3];
  [(RestaurantReservationTableViewController *)self setViewHasAppeared:1];
}

- (void)viewWillAppear:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = RestaurantReservationTableViewController;
  [(RestaurantReservationTableViewController *)&v5 viewWillAppear:a3];
  v4 = [(RestaurantReservationTableViewController *)self analyticsBookingSession];
  [v4 beginSessionIfNeeded];
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

- (RestaurantReservationTableViewController)initWithAnalyticsCaptor:(id)a3 analyticsBookingSession:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = RestaurantReservationTableViewController;
  v9 = [(RestaurantReservationTableViewController *)&v12 initWithNibName:0 bundle:0];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_analyticsCaptor, a3);
    objc_storeStrong(&v10->_analyticsBookingSession, a4);
  }

  return v10;
}

@end