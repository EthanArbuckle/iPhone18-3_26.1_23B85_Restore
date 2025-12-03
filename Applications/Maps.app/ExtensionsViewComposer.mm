@interface ExtensionsViewComposer
+ (void)composeBannerAttributionView:(id)view forRideBookingRideStatus:(id)status;
+ (void)composeBannerView:(id)view forRidesharingCurrentRideViewController:(id)controller rideBookingRideStatus:(id)status;
+ (void)composeBlankTemplatedBannerView:(id)view forRideBookingRideStatus:(id)status;
+ (void)composeCustomFeedbackHeaderView:(id)view forRideBookingRideStatus:(id)status;
+ (void)composeCustomHeaderView:(id)view forRideBookingRequestRideStatus:(id)status;
+ (void)composeCustomHeaderView:(id)view forRideBookingRideStatus:(id)status;
+ (void)composeFeedbackView:(id)view forRideBookingRideStatus:(id)status tippingViewDelegate:(id)delegate;
+ (void)composeOpenAppView:(id)view forRideBookingRequestRideStatus:(id)status;
+ (void)composeOpenAppView:(id)view forRideBookingRideStatus:(id)status;
+ (void)composePayView:(id)view forRideBookingRequestRideStatus:(id)status;
+ (void)composePrimaryDetailsView:(id)view forRideBookingRequestRideStatus:(id)status;
+ (void)composePrimaryDetailsView:(id)view forRideBookingRideStatus:(id)status withActionButtons:(id)buttons;
+ (void)composeSecondaryDetailsView:(id)view forRideBookingRequestRideStatus:(id)status;
+ (void)composeSecondaryDetailsView:(id)view forRideBookingRideStatus:(id)status;
+ (void)composeTemplatedBannerView:(id)view forRideBookingRideStatus:(id)status;
@end

@implementation ExtensionsViewComposer

+ (void)composeCustomFeedbackHeaderView:(id)view forRideBookingRideStatus:(id)status
{
  statusCopy = status;
  viewCopy = view;
  templatedViewTitle = [statusCopy templatedViewTitle];
  [viewCopy setTitle:templatedViewTitle];

  templatedViewSubtitle = [statusCopy templatedViewSubtitle];

  [viewCopy setSubtitle:templatedViewSubtitle];
}

+ (void)composeCustomHeaderView:(id)view forRideBookingRideStatus:(id)status
{
  statusCopy = status;
  viewCopy = view;
  v14 = [[NSMutableArray alloc] initWithCapacity:2];
  pickupLocation = [statusCopy pickupLocation];
  _geoMapItem = [pickupLocation _geoMapItem];
  v9 = [SearchFieldItem searchFieldItemWithObject:_geoMapItem];

  [v14 addObject:v9];
  dropoffLocation = [statusCopy dropoffLocation];

  _geoMapItem2 = [dropoffLocation _geoMapItem];
  v12 = [SearchFieldItem searchFieldItemWithObject:_geoMapItem2];

  [v14 addObject:v12];
  v13 = [v14 copy];
  [viewCopy setOverrideWaypoints:v13];

  [viewCopy updateWaypointsList];
}

+ (void)composeOpenAppView:(id)view forRideBookingRideStatus:(id)status
{
  statusCopy = status;
  viewCopy = view;
  openInAppCommandTitle = [statusCopy openInAppCommandTitle];
  [viewCopy setOpenAppButtonTitle:openInAppCommandTitle];

  cardActions = [statusCopy cardActions];

  [viewCopy setActions:cardActions];
}

+ (void)composeSecondaryDetailsView:(id)view forRideBookingRideStatus:(id)status
{
  statusCopy = status;
  viewCopy = view;
  informationLabel = [viewCopy informationLabel];
  cardDisclaimer = [statusCopy cardDisclaimer];
  [informationLabel setText:cardDisclaimer];

  cardFareLineItems = [statusCopy cardFareLineItems];

  [viewCopy setDetailEntries:cardFareLineItems];
}

+ (void)composePrimaryDetailsView:(id)view forRideBookingRideStatus:(id)status withActionButtons:(id)buttons
{
  buttonsCopy = buttons;
  statusCopy = status;
  viewCopy = view;
  appIconImageView = [viewCopy appIconImageView];
  cardIcon = [statusCopy cardIcon];
  [appIconImageView setImage:cardIcon];

  titleLabel = [viewCopy titleLabel];
  cardTitle = [statusCopy cardTitle];
  [titleLabel setText:cardTitle];

  subtitleLabel = [viewCopy subtitleLabel];
  cardSubtitle = [statusCopy cardSubtitle];
  [subtitleLabel setText:cardSubtitle];

  cardTertiaryTitle = [statusCopy cardTertiaryTitle];
  cardFormattedPriceRangeBadge = [statusCopy cardFormattedPriceRangeBadge];

  [viewCopy setTertiaryText:cardTertiaryTitle badge:cardFormattedPriceRangeBadge];
  [viewCopy configureWithActionButtons:buttonsCopy];
}

+ (void)composeFeedbackView:(id)view forRideBookingRideStatus:(id)status tippingViewDelegate:(id)delegate
{
  viewCopy = view;
  statusCopy = status;
  delegateCopy = delegate;
  tippingOptions = [statusCopy tippingOptions];
  [viewCopy setTippingOptions:tippingOptions];

  driverImage = [statusCopy driverImage];
  [viewCopy configureHeaderImage:driverImage];

  [viewCopy setShowRatingOptions:{objc_msgSend(statusCopy, "shouldShowRatingOptions")}];
  [viewCopy configureTippingViewWithDelegate:delegateCopy];

  v11 = +[NSBundle mainBundle];
  v12 = [v11 localizedStringForKey:@"Ridesharing submit default" value:@"localized string not found" table:0];

  if ([statusCopy shouldShowRatingOptions])
  {
    v13 = +[NSBundle mainBundle];
    v14 = [v13 localizedStringForKey:@"Ridesharing submit rating" value:@"localized string not found" table:0];

    v12 = v14;
  }

  if ([statusCopy shouldShowTippingOptions])
  {
    v15 = +[NSBundle mainBundle];
    v16 = [v15 localizedStringForKey:@"Ridesharing submit tip" value:@"localized string not found" table:0];

    v12 = v16;
  }

  if ([statusCopy shouldShowRatingOptions] && objc_msgSend(statusCopy, "shouldShowTippingOptions"))
  {
    v17 = +[NSBundle mainBundle];
    v18 = [v17 localizedStringForKey:@"Ridesharing submit rating and tip" value:@"localized string not found" table:0];

    v12 = v18;
  }

  [viewCopy configureSubmitButtonTitle:v12];
}

+ (void)composeBannerAttributionView:(id)view forRideBookingRideStatus:(id)status
{
  statusCopy = status;
  attributionLabel = [view attributionLabel];
  bannerAttributionTitle = [statusCopy bannerAttributionTitle];

  [attributionLabel setText:bannerAttributionTitle];
}

+ (void)composeTemplatedBannerView:(id)view forRideBookingRideStatus:(id)status
{
  statusCopy = status;
  viewCopy = view;
  templatedViewAppIcon = [statusCopy templatedViewAppIcon];
  [viewCopy setAppIcon:templatedViewAppIcon];

  templatedViewTitle = [statusCopy templatedViewTitle];
  primaryLabel = [viewCopy primaryLabel];
  [primaryLabel setText:templatedViewTitle];

  templatedViewSubtitle = [statusCopy templatedViewSubtitle];

  secondaryLabel = [viewCopy secondaryLabel];

  [secondaryLabel setText:templatedViewSubtitle];
}

+ (void)composeBlankTemplatedBannerView:(id)view forRideBookingRideStatus:(id)status
{
  viewCopy = view;
  [viewCopy setAppIcon:0];
  primaryLabel = [viewCopy primaryLabel];
  [primaryLabel setText:&stru_1016631F0];

  secondaryLabel = [viewCopy secondaryLabel];

  [secondaryLabel setText:&stru_1016631F0];
}

+ (void)composeBannerView:(id)view forRidesharingCurrentRideViewController:(id)controller rideBookingRideStatus:(id)status
{
  viewCopy = view;
  controllerCopy = controller;
  statusCopy = status;
  _remoteViewController = [controllerCopy _remoteViewController];
  getRideStatusIntentResponse = [statusCopy getRideStatusIntentResponse];
  if (!getRideStatusIntentResponse)
  {
    getRideStatusIntentResponse = [statusCopy requestRideIntentResponse];
  }

  v12 = [INInteraction alloc];
  v13 = objc_opt_new();
  v14 = [v12 initWithIntent:v13 response:getRideStatusIntentResponse];

  [_remoteViewController configureWithInteraction:v14 context:1 completion:&stru_10164D710];
  if (_remoteViewController)
  {
    parentViewController = [_remoteViewController parentViewController];

    if (!parentViewController)
    {
      [_remoteViewController beginAppearanceTransition:1 animated:0];
      [controllerCopy addChildViewController:_remoteViewController];
      view = [_remoteViewController view];
      [viewCopy setRemoteView:view];

      [_remoteViewController didMoveToParentViewController:controllerCopy];
      [_remoteViewController endAppearanceTransition];
    }
  }

  else
  {
    v27 = v14;
    v28 = getRideStatusIntentResponse;
    v29 = statusCopy;
    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    childViewControllers = [controllerCopy childViewControllers];
    v18 = [childViewControllers countByEnumeratingWithState:&v30 objects:v34 count:16];
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
            objc_enumerationMutation(childViewControllers);
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
            view2 = [v24 view];
            remoteView = [viewCopy remoteView];

            if (view2 == remoteView)
            {
              [v24 beginAppearanceTransition:0 animated:0];
              [v24 willMoveToParentViewController:0];
              [viewCopy setRemoteView:0];
              [v24 removeFromParentViewController];
              [v24 endAppearanceTransition];

              goto LABEL_20;
            }
          }
        }

        v19 = [childViewControllers countByEnumeratingWithState:&v30 objects:v34 count:16];
        if (v19)
        {
          continue;
        }

        break;
      }
    }

LABEL_20:

    statusCopy = v29;
    v14 = v27;
    getRideStatusIntentResponse = v28;
  }
}

+ (void)composeCustomHeaderView:(id)view forRideBookingRequestRideStatus:(id)status
{
  viewCopy = view;
  statusCopy = status;
  v6 = [[NSMutableArray alloc] initWithCapacity:2];
  v7 = [PlaceholderWaypointRequest alloc];
  origin = [statusCopy origin];
  v9 = [(PlaceholderWaypointRequest *)v7 initWithCLPlacemark:origin];
  v31[0] = v9;
  v10 = [PlaceholderWaypointRequest alloc];
  destination = [statusCopy destination];
  v12 = [(PlaceholderWaypointRequest *)v10 initWithCLPlacemark:destination];
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
        waypointName = [v18 waypointName];
        v21 = [(WaypointPlaceholder *)v19 initWithName:waypointName displayableMarker:0];

        v22 = [[RoutePlanningWaypointRequest alloc] initWithWaypointPlaceholder:v21 request:v18 preferredNameSource:0];
        v23 = [SearchFieldItem searchFieldItemWithObject:v22];
        [v6 addObject:v23];
      }

      v15 = [obj countByEnumeratingWithState:&v26 objects:v30 count:16];
    }

    while (v15);
  }

  [viewCopy setOverrideWaypoints:v6];
  [viewCopy updateWaypointsList];
}

+ (void)composePayView:(id)view forRideBookingRequestRideStatus:(id)status
{
  viewCopy = view;
  paymentMethod = [status paymentMethod];
  title = [paymentMethod title];
  subtitle = [paymentMethod subtitle];
  icon = [paymentMethod icon];
  [viewCopy configureForTitle:title subtitle:subtitle image:icon];
}

+ (void)composeOpenAppView:(id)view forRideBookingRequestRideStatus:(id)status
{
  viewCopy = view;
  openInAppCommandTitle = [status openInAppCommandTitle];
  [viewCopy setOpenAppButtonTitle:openInAppCommandTitle];

  [viewCopy setActions:&__NSArray0__struct];
}

+ (void)composeSecondaryDetailsView:(id)view forRideBookingRequestRideStatus:(id)status
{
  statusCopy = status;
  viewCopy = view;
  disclaimerLabel = [viewCopy disclaimerLabel];
  disclaimerMessage = [statusCopy disclaimerMessage];
  [disclaimerLabel setText:disclaimerMessage];

  informationLabel = [viewCopy informationLabel];
  appleDisclaimer = [statusCopy appleDisclaimer];
  [informationLabel setText:appleDisclaimer];

  cardFareLineItems = [statusCopy cardFareLineItems];

  [viewCopy setDetailEntries:cardFareLineItems];
}

+ (void)composePrimaryDetailsView:(id)view forRideBookingRequestRideStatus:(id)status
{
  statusCopy = status;
  viewCopy = view;
  appIconImageView = [viewCopy appIconImageView];
  cardIcon = [statusCopy cardIcon];
  [appIconImageView setImage:cardIcon];

  titleLabel = [viewCopy titleLabel];
  cardTitle = [statusCopy cardTitle];
  [titleLabel setText:cardTitle];

  subtitleLabel = [viewCopy subtitleLabel];
  cardSubtitle = [statusCopy cardSubtitle];
  [subtitleLabel setText:cardSubtitle];

  cardFormattedPriceRange = [statusCopy cardFormattedPriceRange];
  cardFormattedPriceRangeBadge = [statusCopy cardFormattedPriceRangeBadge];

  [viewCopy setTertiaryText:cardFormattedPriceRange badge:cardFormattedPriceRangeBadge];
}

@end