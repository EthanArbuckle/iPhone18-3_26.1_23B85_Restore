@interface ExtensionsViewComposer
+ (void)composeBannerAttributionView:(id)a3 forRideBookingRideStatus:(id)a4;
+ (void)composeBannerView:(id)a3 forRidesharingCurrentRideViewController:(id)a4 rideBookingRideStatus:(id)a5;
+ (void)composeBlankTemplatedBannerView:(id)a3 forRideBookingRideStatus:(id)a4;
+ (void)composeCustomFeedbackHeaderView:(id)a3 forRideBookingRideStatus:(id)a4;
+ (void)composeCustomHeaderView:(id)a3 forRideBookingRequestRideStatus:(id)a4;
+ (void)composeCustomHeaderView:(id)a3 forRideBookingRideStatus:(id)a4;
+ (void)composeFeedbackView:(id)a3 forRideBookingRideStatus:(id)a4 tippingViewDelegate:(id)a5;
+ (void)composeOpenAppView:(id)a3 forRideBookingRequestRideStatus:(id)a4;
+ (void)composeOpenAppView:(id)a3 forRideBookingRideStatus:(id)a4;
+ (void)composePayView:(id)a3 forRideBookingRequestRideStatus:(id)a4;
+ (void)composePrimaryDetailsView:(id)a3 forRideBookingRequestRideStatus:(id)a4;
+ (void)composePrimaryDetailsView:(id)a3 forRideBookingRideStatus:(id)a4 withActionButtons:(id)a5;
+ (void)composeSecondaryDetailsView:(id)a3 forRideBookingRequestRideStatus:(id)a4;
+ (void)composeSecondaryDetailsView:(id)a3 forRideBookingRideStatus:(id)a4;
+ (void)composeTemplatedBannerView:(id)a3 forRideBookingRideStatus:(id)a4;
@end

@implementation ExtensionsViewComposer

+ (void)composeCustomFeedbackHeaderView:(id)a3 forRideBookingRideStatus:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [v5 templatedViewTitle];
  [v6 setTitle:v7];

  v8 = [v5 templatedViewSubtitle];

  [v6 setSubtitle:v8];
}

+ (void)composeCustomHeaderView:(id)a3 forRideBookingRideStatus:(id)a4
{
  v5 = a4;
  v6 = a3;
  v14 = [[NSMutableArray alloc] initWithCapacity:2];
  v7 = [v5 pickupLocation];
  v8 = [v7 _geoMapItem];
  v9 = [SearchFieldItem searchFieldItemWithObject:v8];

  [v14 addObject:v9];
  v10 = [v5 dropoffLocation];

  v11 = [v10 _geoMapItem];
  v12 = [SearchFieldItem searchFieldItemWithObject:v11];

  [v14 addObject:v12];
  v13 = [v14 copy];
  [v6 setOverrideWaypoints:v13];

  [v6 updateWaypointsList];
}

+ (void)composeOpenAppView:(id)a3 forRideBookingRideStatus:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [v5 openInAppCommandTitle];
  [v6 setOpenAppButtonTitle:v7];

  v8 = [v5 cardActions];

  [v6 setActions:v8];
}

+ (void)composeSecondaryDetailsView:(id)a3 forRideBookingRideStatus:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [v6 informationLabel];
  v8 = [v5 cardDisclaimer];
  [v7 setText:v8];

  v9 = [v5 cardFareLineItems];

  [v6 setDetailEntries:v9];
}

+ (void)composePrimaryDetailsView:(id)a3 forRideBookingRideStatus:(id)a4 withActionButtons:(id)a5
{
  v7 = a5;
  v8 = a4;
  v17 = a3;
  v9 = [v17 appIconImageView];
  v10 = [v8 cardIcon];
  [v9 setImage:v10];

  v11 = [v17 titleLabel];
  v12 = [v8 cardTitle];
  [v11 setText:v12];

  v13 = [v17 subtitleLabel];
  v14 = [v8 cardSubtitle];
  [v13 setText:v14];

  v15 = [v8 cardTertiaryTitle];
  v16 = [v8 cardFormattedPriceRangeBadge];

  [v17 setTertiaryText:v15 badge:v16];
  [v17 configureWithActionButtons:v7];
}

+ (void)composeFeedbackView:(id)a3 forRideBookingRideStatus:(id)a4 tippingViewDelegate:(id)a5
{
  v19 = a3;
  v7 = a4;
  v8 = a5;
  v9 = [v7 tippingOptions];
  [v19 setTippingOptions:v9];

  v10 = [v7 driverImage];
  [v19 configureHeaderImage:v10];

  [v19 setShowRatingOptions:{objc_msgSend(v7, "shouldShowRatingOptions")}];
  [v19 configureTippingViewWithDelegate:v8];

  v11 = +[NSBundle mainBundle];
  v12 = [v11 localizedStringForKey:@"Ridesharing submit default" value:@"localized string not found" table:0];

  if ([v7 shouldShowRatingOptions])
  {
    v13 = +[NSBundle mainBundle];
    v14 = [v13 localizedStringForKey:@"Ridesharing submit rating" value:@"localized string not found" table:0];

    v12 = v14;
  }

  if ([v7 shouldShowTippingOptions])
  {
    v15 = +[NSBundle mainBundle];
    v16 = [v15 localizedStringForKey:@"Ridesharing submit tip" value:@"localized string not found" table:0];

    v12 = v16;
  }

  if ([v7 shouldShowRatingOptions] && objc_msgSend(v7, "shouldShowTippingOptions"))
  {
    v17 = +[NSBundle mainBundle];
    v18 = [v17 localizedStringForKey:@"Ridesharing submit rating and tip" value:@"localized string not found" table:0];

    v12 = v18;
  }

  [v19 configureSubmitButtonTitle:v12];
}

+ (void)composeBannerAttributionView:(id)a3 forRideBookingRideStatus:(id)a4
{
  v5 = a4;
  v7 = [a3 attributionLabel];
  v6 = [v5 bannerAttributionTitle];

  [v7 setText:v6];
}

+ (void)composeTemplatedBannerView:(id)a3 forRideBookingRideStatus:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [v5 templatedViewAppIcon];
  [v6 setAppIcon:v7];

  v8 = [v5 templatedViewTitle];
  v9 = [v6 primaryLabel];
  [v9 setText:v8];

  v11 = [v5 templatedViewSubtitle];

  v10 = [v6 secondaryLabel];

  [v10 setText:v11];
}

+ (void)composeBlankTemplatedBannerView:(id)a3 forRideBookingRideStatus:(id)a4
{
  v4 = a3;
  [v4 setAppIcon:0];
  v5 = [v4 primaryLabel];
  [v5 setText:&stru_1016631F0];

  v6 = [v4 secondaryLabel];

  [v6 setText:&stru_1016631F0];
}

+ (void)composeBannerView:(id)a3 forRidesharingCurrentRideViewController:(id)a4 rideBookingRideStatus:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [v8 _remoteViewController];
  v11 = [v9 getRideStatusIntentResponse];
  if (!v11)
  {
    v11 = [v9 requestRideIntentResponse];
  }

  v12 = [INInteraction alloc];
  v13 = objc_opt_new();
  v14 = [v12 initWithIntent:v13 response:v11];

  [v10 configureWithInteraction:v14 context:1 completion:&stru_10164D710];
  if (v10)
  {
    v15 = [v10 parentViewController];

    if (!v15)
    {
      [v10 beginAppearanceTransition:1 animated:0];
      [v8 addChildViewController:v10];
      v16 = [v10 view];
      [v7 setRemoteView:v16];

      [v10 didMoveToParentViewController:v8];
      [v10 endAppearanceTransition];
    }
  }

  else
  {
    v27 = v14;
    v28 = v11;
    v29 = v9;
    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    v17 = [v8 childViewControllers];
    v18 = [v17 countByEnumeratingWithState:&v30 objects:v34 count:16];
    if (v18)
    {
      v19 = v18;
      v20 = *v31;
      while (2)
      {
        for (i = 0; i != v19; i = i + 1)
        {
          if (*v31 != v20)
          {
            objc_enumerationMutation(v17);
          }

          v22 = *(*(&v30 + 1) + 8 * i);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v23 = v22;
          }

          else
          {
            v23 = 0;
          }

          v24 = v23;
          if ([v24 isViewLoaded])
          {
            v25 = [v24 view];
            v26 = [v7 remoteView];

            if (v25 == v26)
            {
              [v24 beginAppearanceTransition:0 animated:0];
              [v24 willMoveToParentViewController:0];
              [v7 setRemoteView:0];
              [v24 removeFromParentViewController];
              [v24 endAppearanceTransition];

              goto LABEL_20;
            }
          }
        }

        v19 = [v17 countByEnumeratingWithState:&v30 objects:v34 count:16];
        if (v19)
        {
          continue;
        }

        break;
      }
    }

LABEL_20:

    v9 = v29;
    v14 = v27;
    v11 = v28;
  }
}

+ (void)composeCustomHeaderView:(id)a3 forRideBookingRequestRideStatus:(id)a4
{
  v24 = a3;
  v5 = a4;
  v6 = [[NSMutableArray alloc] initWithCapacity:2];
  v7 = [PlaceholderWaypointRequest alloc];
  v8 = [v5 origin];
  v9 = [(PlaceholderWaypointRequest *)v7 initWithCLPlacemark:v8];
  v31[0] = v9;
  v10 = [PlaceholderWaypointRequest alloc];
  v11 = [v5 destination];
  v12 = [(PlaceholderWaypointRequest *)v10 initWithCLPlacemark:v11];
  v31[1] = v12;
  v13 = [NSArray arrayWithObjects:v31 count:2];

  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  obj = v13;
  v14 = [obj countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v27;
    do
    {
      for (i = 0; i != v15; i = i + 1)
      {
        if (*v27 != v16)
        {
          objc_enumerationMutation(obj);
        }

        v18 = *(*(&v26 + 1) + 8 * i);
        v19 = [WaypointPlaceholder alloc];
        v20 = [v18 waypointName];
        v21 = [(WaypointPlaceholder *)v19 initWithName:v20 displayableMarker:0];

        v22 = [[RoutePlanningWaypointRequest alloc] initWithWaypointPlaceholder:v21 request:v18 preferredNameSource:0];
        v23 = [SearchFieldItem searchFieldItemWithObject:v22];
        [v6 addObject:v23];
      }

      v15 = [obj countByEnumeratingWithState:&v26 objects:v30 count:16];
    }

    while (v15);
  }

  [v24 setOverrideWaypoints:v6];
  [v24 updateWaypointsList];
}

+ (void)composePayView:(id)a3 forRideBookingRequestRideStatus:(id)a4
{
  v5 = a3;
  v9 = [a4 paymentMethod];
  v6 = [v9 title];
  v7 = [v9 subtitle];
  v8 = [v9 icon];
  [v5 configureForTitle:v6 subtitle:v7 image:v8];
}

+ (void)composeOpenAppView:(id)a3 forRideBookingRequestRideStatus:(id)a4
{
  v6 = a3;
  v5 = [a4 openInAppCommandTitle];
  [v6 setOpenAppButtonTitle:v5];

  [v6 setActions:&__NSArray0__struct];
}

+ (void)composeSecondaryDetailsView:(id)a3 forRideBookingRequestRideStatus:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [v6 disclaimerLabel];
  v8 = [v5 disclaimerMessage];
  [v7 setText:v8];

  v9 = [v6 informationLabel];
  v10 = [v5 appleDisclaimer];
  [v9 setText:v10];

  v11 = [v5 cardFareLineItems];

  [v6 setDetailEntries:v11];
}

+ (void)composePrimaryDetailsView:(id)a3 forRideBookingRequestRideStatus:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [v6 appIconImageView];
  v8 = [v5 cardIcon];
  [v7 setImage:v8];

  v9 = [v6 titleLabel];
  v10 = [v5 cardTitle];
  [v9 setText:v10];

  v11 = [v6 subtitleLabel];
  v12 = [v5 cardSubtitle];
  [v11 setText:v12];

  v14 = [v5 cardFormattedPriceRange];
  v13 = [v5 cardFormattedPriceRangeBadge];

  [v6 setTertiaryText:v14 badge:v13];
}

@end