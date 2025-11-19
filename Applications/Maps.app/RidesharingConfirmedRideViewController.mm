@interface RidesharingConfirmedRideViewController
- (CGSize)maximumSizeForRemoteViewController:(id)a3;
- (CGSize)minimumSizeForRemoteViewController:(id)a3;
- (ProminentActionButton)cancelButton;
- (ProminentActionButton)completedButton;
- (ProminentActionButton)contactButton;
- (RidesharingConfirmedRideViewController)init;
- (RidesharingConfirmedRideViewController)initWithApplicationIdentifier:(id)a3;
- (RidesharingCoordinator)coordinator;
- (double)headerAndRouteFromToViewHeight;
- (double)heightForLayout:(unint64_t)a3;
- (id)_cancelConfirmationAlertControllerForApp:(id)a3 withFee:(id)a4 threshold:(id)a5 continueBlock:(id)a6;
- (id)stackedViews;
- (int)_currentAnalyticsTarget;
- (void)_bannerViewTapped:(id)a3;
- (void)_cancelTapped:(id)a3;
- (void)_cleanupWithRideStatus:(id)a3;
- (void)_completedButtonTapped:(id)a3;
- (void)_openAppTapped;
- (void)_setBannerViewContainerContentView:(id)a3;
- (void)_updateFromRideStatus:(id)a3;
- (void)contactTapped:(id)a3;
- (void)dealloc;
- (void)didChangeLayout:(unint64_t)a3;
- (void)extensionManager:(id)a3 didUpdateAvailableExtensions:(id)a4;
- (void)getCanCallPhoneNumber:(id)a3 completion:(id)a4;
- (void)getRemoteViewControllerWithDelegate:(id)a3 completion:(id)a4;
- (void)headerViewButtonTapped:(id)a3 buttonType:(unint64_t)a4;
- (void)remoteViewControllerServiceDidTerminate:(id)a3;
- (void)rideStatusMapDidChange:(id)a3;
- (void)viewDidLoad;
- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4;
@end

@implementation RidesharingConfirmedRideViewController

- (RidesharingCoordinator)coordinator
{
  WeakRetained = objc_loadWeakRetained(&self->_coordinator);

  return WeakRetained;
}

- (void)getCanCallPhoneNumber:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v7)
  {
    cachedContactUrl = self->_cachedContactUrl;
    self->_cachedContactUrl = 0;

    if (!v6)
    {
      (*(v7 + 2))(v7, 0, 0);
      goto LABEL_8;
    }

    v9 = +[UIApplication sharedApplication];
    v10 = [v6 stringValue];
    [v9 getCanCallPhoneNumber:v10 completion:v7];
  }

  else
  {
    v9 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
      v11 = 136446978;
      v12 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Shared/RidesharingConfirmedRideViewController.m";
      v13 = 1024;
      v14 = 757;
      v15 = 2082;
      v16 = "[RidesharingConfirmedRideViewController getCanCallPhoneNumber:completion:]";
      v17 = 2082;
      v18 = "nil == (completion)";
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_FAULT, "At %{public}s:%d, %{public}s forbids: %{public}s. Requires completion block", &v11, 0x26u);
    }
  }

LABEL_8:
}

- (void)dealloc
{
  v3 = [(INUIRemoteViewController *)self->_remoteViewController disconnect];
  v4.receiver = self;
  v4.super_class = RidesharingConfirmedRideViewController;
  [(RidesharingConfirmedRideViewController *)&v4 dealloc];
}

- (void)remoteViewControllerServiceDidTerminate:(id)a3
{
  remoteViewController = self->_remoteViewController;
  self->_remoteViewController = 0;

  self->_hasEverRequestedRemoteViewController = 0;
  v5 = [(RidesharingConfirmedRideViewController *)self rideStatus];
  [(RidesharingConfirmedRideViewController *)self _updateFromRideStatus:v5];
}

- (CGSize)maximumSizeForRemoteViewController:(id)a3
{
  v3 = [(RidesharingConfirmedRideViewController *)self view];
  [v3 frame];
  v5 = v4 + -32.0;

  v6 = 145.0;
  v7 = v5;
  result.height = v6;
  result.width = v7;
  return result;
}

- (CGSize)minimumSizeForRemoteViewController:(id)a3
{
  v3 = [(RidesharingConfirmedRideViewController *)self view];
  [v3 frame];
  v5 = v4 + -32.0;

  v6 = 145.0;
  v7 = v5;
  result.height = v6;
  result.width = v7;
  return result;
}

- (double)headerAndRouteFromToViewHeight
{
  [(ContaineeViewController *)self headerHeight];
  v4 = v3;
  [(RouteOverviewFieldsView *)self->_routeFromToView systemLayoutSizeFittingSize:UILayoutFittingCompressedSize.width, UILayoutFittingCompressedSize.height];
  if (v5 == 0.0)
  {
    [(RouteOverviewFieldsView *)self->_routeFromToView intrinsicContentSize];
  }

  return v5 + v4;
}

- (double)heightForLayout:(unint64_t)a3
{
  remoteViewController = self->_remoteViewController;
  v6 = [(RidesharingConfirmedRideViewController *)self rideStatus];
  v7 = [v6 shouldShowFeedbackControls];

  if (a3 - 3 < 2)
  {
    v13 = [(ContaineeViewController *)self cardPresentationController];
    [v13 availableHeight];
    v8 = v14;
  }

  else if (a3 == 2)
  {
    [(RidesharingConfirmedRideViewController *)self headerAndRouteFromToViewHeight];
    v16 = v15;
    height = UILayoutFittingCompressedSize.height;
    [(UIView *)self->_bannerViewContainerView systemLayoutSizeFittingSize:UILayoutFittingCompressedSize.width, height];
    v19 = v18 + v16;
    v20 = 0.0;
    v21 = 0.0;
    if (remoteViewController)
    {
      [(ExtensionsBannerAttributionView *)self->_bannerAttributionView systemLayoutSizeFittingSize:UILayoutFittingCompressedSize.width, height];
    }

    v22 = v19 + v21;
    if (v7)
    {
      [(ExtensionsFeedbackView *)self->_feedbackView systemLayoutSizeFittingSize:UILayoutFittingCompressedSize.width, height];
      v20 = v23;
    }

    return v22 + v20;
  }

  else
  {
    v8 = -1.0;
    if (a3 == 1)
    {
      v9 = [(ContaineeViewController *)self cardPresentationController];
      [v9 bottomSafeOffset];
      v11 = v10;
      [(RidesharingConfirmedRideViewController *)self headerAndRouteFromToViewHeight];
      v8 = v12 + v11;
    }
  }

  return v8;
}

- (id)stackedViews
{
  bannerViewContainerView = self->_bannerViewContainerView;
  v7[0] = self->_routeFromToView;
  v7[1] = bannerViewContainerView;
  primaryDetailsView = self->_primaryDetailsView;
  v7[2] = self->_feedbackView;
  v7[3] = primaryDetailsView;
  openAppView = self->_openAppView;
  v7[4] = self->_secondaryDetailsView;
  v7[5] = openAppView;
  v5 = [NSArray arrayWithObjects:v7 count:6];

  return v5;
}

- (void)didChangeLayout:(unint64_t)a3
{
  v6.receiver = self;
  v6.super_class = RidesharingConfirmedRideViewController;
  [(ExtensionsStackViewController *)&v6 didChangeLayout:?];
  if (a3 == 3)
  {
    v5 = [(RidesharingConfirmedRideViewController *)self analyticsBookedSession];
    [v5 setViewedDetails:1];
  }
}

- (void)_setBannerViewContainerContentView:(id)a3
{
  v4 = a3;
  v5 = [v4 superview];
  roundedRectView = self->_roundedRectView;

  if (v5 != roundedRectView)
  {
    v65 = 0u;
    v66 = 0u;
    v63 = 0u;
    v64 = 0u;
    v7 = [(UIView *)self->_roundedRectView subviews];
    v8 = [v7 copy];

    v9 = [v8 countByEnumeratingWithState:&v63 objects:v69 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v64;
      do
      {
        v12 = 0;
        do
        {
          if (*v64 != v11)
          {
            objc_enumerationMutation(v8);
          }

          [*(*(&v63 + 1) + 8 * v12) removeFromSuperview];
          v12 = v12 + 1;
        }

        while (v10 != v12);
        v10 = [v8 countByEnumeratingWithState:&v63 objects:v69 count:16];
      }

      while (v10);
    }

    v61 = 0u;
    v62 = 0u;
    v59 = 0u;
    v60 = 0u;
    v13 = [(UIView *)self->_bannerViewContainerView subviews];
    v14 = [v13 copy];

    v15 = [v14 countByEnumeratingWithState:&v59 objects:v68 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v60;
      do
      {
        v18 = 0;
        do
        {
          if (*v60 != v17)
          {
            objc_enumerationMutation(v14);
          }

          [*(*(&v59 + 1) + 8 * v18) removeFromSuperview];
          v18 = v18 + 1;
        }

        while (v16 != v18);
        v16 = [v14 countByEnumeratingWithState:&v59 objects:v68 count:16];
      }

      while (v16);
    }

    [(UIView *)self->_bannerViewContainerView addSubview:self->_roundedRectView];
    [v4 setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIView *)self->_roundedRectView addSubview:v4];
    [(UIView *)self->_roundedRectView addSubview:self->_bannerAttributionView];
    LODWORD(v19) = 1148846080;
    [v4 setContentCompressionResistancePriority:1 forAxis:v19];
    LODWORD(v20) = 1148846080;
    [(ExtensionsBannerAttributionView *)self->_bannerAttributionView setContentCompressionResistancePriority:1 forAxis:v20];
    v57 = [v4 topAnchor];
    v56 = [(UIView *)self->_roundedRectView topAnchor];
    v55 = [v57 constraintEqualToAnchor:v56 constant:1.0];
    v67[0] = v55;
    v54 = [v4 leadingAnchor];
    v53 = [(UIView *)self->_roundedRectView leadingAnchor];
    v52 = [v54 constraintEqualToAnchor:v53 constant:1.0];
    v67[1] = v52;
    v51 = [v4 trailingAnchor];
    v50 = [(UIView *)self->_roundedRectView trailingAnchor];
    v49 = [v51 constraintEqualToAnchor:v50 constant:-1.0];
    v67[2] = v49;
    v48 = [v4 heightAnchor];
    v47 = [v48 constraintEqualToConstant:145.0];
    v67[3] = v47;
    v46 = [(ExtensionsBannerAttributionView *)self->_bannerAttributionView topAnchor];
    v45 = [v4 bottomAnchor];
    v44 = [v46 constraintEqualToAnchor:v45];
    v67[4] = v44;
    v43 = [(ExtensionsBannerAttributionView *)self->_bannerAttributionView leadingAnchor];
    v42 = [(UIView *)self->_roundedRectView leadingAnchor];
    v41 = [v43 constraintEqualToAnchor:v42 constant:1.0];
    v67[5] = v41;
    v40 = [(ExtensionsBannerAttributionView *)self->_bannerAttributionView trailingAnchor];
    v39 = [(UIView *)self->_roundedRectView trailingAnchor];
    v38 = [v40 constraintEqualToAnchor:v39 constant:-1.0];
    v67[6] = v38;
    v37 = [(ExtensionsBannerAttributionView *)self->_bannerAttributionView bottomAnchor];
    v36 = [(UIView *)self->_roundedRectView bottomAnchor];
    v35 = [v37 constraintEqualToAnchor:v36 constant:-1.0];
    v67[7] = v35;
    v34 = [(UIView *)self->_roundedRectView topAnchor];
    v33 = [(UIView *)self->_bannerViewContainerView topAnchor];
    v32 = [v34 constraintEqualToAnchor:v33];
    v67[8] = v32;
    v31 = [(UIView *)self->_roundedRectView bottomAnchor];
    v21 = [(UIView *)self->_bannerViewContainerView bottomAnchor];
    v22 = [v31 constraintEqualToAnchor:v21];
    v67[9] = v22;
    [(UIView *)self->_roundedRectView leadingAnchor];
    v23 = v58 = v4;
    v24 = [(UIView *)self->_bannerViewContainerView leadingAnchor];
    v25 = [v23 constraintEqualToAnchor:v24 constant:16.0];
    v67[10] = v25;
    v26 = [(UIView *)self->_roundedRectView trailingAnchor];
    v27 = [(UIView *)self->_bannerViewContainerView trailingAnchor];
    v28 = [v26 constraintEqualToAnchor:v27 constant:-16.0];
    v67[11] = v28;
    v29 = [NSArray arrayWithObjects:v67 count:12];
    [NSLayoutConstraint activateConstraints:v29];

    v4 = v58;
    v30 = [(ContaineeViewController *)self cardPresentationController];
    [v30 updateHeightForCurrentLayout];
  }
}

- (void)_updateFromRideStatus:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    goto LABEL_36;
  }

  objc_storeStrong(&self->_rideStatus, a3);
  v6 = [v5 application];
  v7 = [v6 identifier];
  v8 = [v5 identifier];
  v9 = [RideBookingAccessProxy rideBookingCurrentBookedSessionForAppIdentifier:v7 rideIdentifier:v8];
  [(RidesharingConfirmedRideViewController *)self setAnalyticsBookedSession:v9];

  if (([v5 isValidRide] & 1) == 0)
  {
    v12 = [RidesharingErrorAlertProvider alloc];
    v13 = [v5 application];
    v14 = [v5 userActivity];
    v15 = [(RidesharingErrorAlertProvider *)v12 _initWithCause:1 application:v13 activity:v14];

    objc_initWeak(&location, self);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10095A8A0;
    block[3] = &unk_101661340;
    objc_copyWeak(&v50, &location);
    v49 = v15;
    v16 = v15;
    dispatch_async(&_dispatch_main_q, block);

    objc_destroyWeak(&v50);
    objc_destroyWeak(&location);
    goto LABEL_36;
  }

  if (!self->_hasEverRequestedRemoteViewController && !self->_remoteViewController)
  {
    self->_hasEverRequestedRemoteViewController = 1;
    p_templatedBannerView = &self->_templatedBannerView;
    [ExtensionsViewComposer composeBlankTemplatedBannerView:self->_templatedBannerView forRideBookingRideStatus:v5];
    [(ExtensionsBannerAttributionView *)self->_bannerAttributionView setHidden:0];
    v11 = [(RidesharingConfirmedRideViewController *)self extensionForUI];

    if (v11)
    {
      v46[0] = _NSConcreteStackBlock;
      v46[1] = 3221225472;
      v46[2] = sub_10095A96C;
      v46[3] = &unk_10162F970;
      v46[4] = self;
      v47 = v5;
      [(RidesharingConfirmedRideViewController *)self getRemoteViewControllerWithDelegate:self completion:v46];
    }

    else
    {
      [ExtensionsViewComposer composeTemplatedBannerView:*p_templatedBannerView forRideBookingRideStatus:v5];
      if (self->_remoteViewController)
      {
        p_templatedBannerView = &self->_bannerView;
      }

      [(RidesharingConfirmedRideViewController *)self _setBannerViewContainerContentView:*p_templatedBannerView];
      v17 = [(ContaineeViewController *)self cardPresentationController];
      [v17 updateHeightForCurrentLayout];
    }
  }

  if (![v5 isValidRide] || (objc_msgSend(v5, "isActiveRide") & 1) == 0)
  {
    v18 = [(RidesharingConfirmedRideViewController *)self coordinator];
    v19 = [v18 containerViewController];
    v20 = [v19 chromeViewController];
    v21 = [v20 ridesharingAnnotationsManager];
    [v21 removeCurrentRide];

    if ([v5 phase] == 4)
    {
      v22 = [(ContaineeViewController *)self cardPresentationController];
      if ([v22 containeeLayout] == 3)
      {
      }

      else
      {
        hasShownFullContaineeLayout = self->_hasShownFullContaineeLayout;

        if (!hasShownFullContaineeLayout)
        {
          v24 = [(ContaineeViewController *)self cardPresentationController];
          [v24 wantsLayout:3];

          self->_hasShownFullContaineeLayout = 1;
        }
      }
    }
  }

  driverPhoneNumber = self->_driverPhoneNumber;
  v26 = [v5 driverPhoneNumber];
  if (![(NSString *)driverPhoneNumber isEqualToString:v26])
  {
    v27 = [v5 driverPhoneNumber];

    if (!v27)
    {
      goto LABEL_22;
    }

    v28 = [v5 driverPhoneNumber];
    v29 = self->_driverPhoneNumber;
    self->_driverPhoneNumber = v28;

    v26 = [[CNPhoneNumber alloc] initWithStringValue:self->_driverPhoneNumber];
    v30 = [(RidesharingConfirmedRideViewController *)self contactButton];
    [v30 setEnabled:0];

    v45[0] = _NSConcreteStackBlock;
    v45[1] = 3221225472;
    v45[2] = sub_10095AA78;
    v45[3] = &unk_10162F998;
    v45[4] = self;
    [(RidesharingConfirmedRideViewController *)self getCanCallPhoneNumber:v26 completion:v45];
  }

LABEL_22:
  [ExtensionsViewComposer composeCustomHeaderView:self->_routeFromToView forRideBookingRideStatus:v5];
  [ExtensionsViewComposer composeBannerView:self->_bannerView forRidesharingCurrentRideViewController:self rideBookingRideStatus:v5];
  [ExtensionsViewComposer composeTemplatedBannerView:self->_templatedBannerView forRideBookingRideStatus:v5];
  [ExtensionsViewComposer composeBannerAttributionView:self->_bannerAttributionView forRideBookingRideStatus:v5];
  [ExtensionsViewComposer composeSecondaryDetailsView:self->_secondaryDetailsView forRideBookingRideStatus:v5];
  [ExtensionsViewComposer composeOpenAppView:self->_openAppView forRideBookingRideStatus:v5];
  if (self->_remoteViewController)
  {
    v31 = 192;
  }

  else
  {
    v31 = 200;
  }

  [(RidesharingConfirmedRideViewController *)self _setBannerViewContainerContentView:*(&self->super.super.super.super.super.super.isa + v31)];
  [(ExtensionsFeedbackView *)self->_feedbackView setHidden:1];
  [(UIView *)self->_bannerViewContainerView setHidden:0];
  [(ExtensionsSecondaryDetailsView *)self->_secondaryDetailsView setHidden:0];
  v32 = objc_alloc_init(NSMutableOrderedSet);
  v33 = [(RidesharingConfirmedRideViewController *)self cancelButton];
  v34 = [v5 cancelCommandTitle];
  [v33 setTitle:v34 forState:0];

  v35 = [(RidesharingConfirmedRideViewController *)self completedButton];
  v36 = [v5 cardRideCompletedActionButtonTitle];
  [v35 setTitle:v36 forState:0];

  if (![v5 isValidRide] || (objc_msgSend(v5, "isActiveRide") & 1) == 0)
  {
    v38 = [(RidesharingConfirmedRideViewController *)self completedButton];
    goto LABEL_30;
  }

  v37 = [(RidesharingConfirmedRideViewController *)self cancelButton];
  [v32 addObject:v37];

  if ([(NSString *)self->_driverPhoneNumber length])
  {
    v38 = [(RidesharingConfirmedRideViewController *)self contactButton];
LABEL_30:
    v39 = v38;
    [v32 addObject:v38];
  }

  if ([v5 shouldShowFeedbackControls])
  {
    [ExtensionsViewComposer composeFeedbackView:self->_feedbackView forRideBookingRideStatus:v5 tippingViewDelegate:self];
    [(ContainerHeaderView *)self->_containerHeaderView setTitleView:self->_feedbackHeaderView];
    [ExtensionsViewComposer composeCustomFeedbackHeaderView:self->_feedbackHeaderView forRideBookingRideStatus:v5];
    [(ExtensionsFeedbackView *)self->_feedbackView setHidden:0];
    [(UIView *)self->_bannerViewContainerView setHidden:1];
    v40 = objc_alloc_init(NSMutableOrderedSet);

    v32 = v40;
  }

  primaryDetailsView = self->_primaryDetailsView;
  v42 = [v32 objectEnumerator];
  v43 = [v42 allObjects];
  [ExtensionsViewComposer composePrimaryDetailsView:primaryDetailsView forRideBookingRideStatus:v5 withActionButtons:v43];

  v44 = [v5 phase];
  if ((v44 == 0) != [(ExtensionsPrimaryDetailsView *)self->_primaryDetailsView isHidden])
  {
    [(ExtensionsPrimaryDetailsView *)self->_primaryDetailsView setHidden:v44 == 0];
  }

LABEL_36:
}

- (void)rideStatusMapDidChange:(id)a3
{
  v4 = a3;
  v5 = [(RidesharingConfirmedRideViewController *)self applicationIdentifier];
  v6 = [v4 objectForKey:v5];

  [(RidesharingConfirmedRideViewController *)self _updateFromRideStatus:v6];
}

- (ProminentActionButton)completedButton
{
  completedButton = self->_completedButton;
  if (!completedButton)
  {
    v4 = +[ProminentActionButton button];
    v5 = self->_completedButton;
    self->_completedButton = v4;

    v6 = [(ProminentActionButton *)self->_completedButton titleLabel];
    [DynamicTypeWizard autorefreshLabel:v6 withFontProvider:&stru_10165DB08];

    [(ProminentActionButton *)self->_completedButton addTarget:self action:"_completedButtonTapped:" forControlEvents:0x2000];
    v7 = [(RidesharingConfirmedRideViewController *)self theme];
    v8 = [v7 controlTintColor];
    [(ProminentActionButton *)self->_completedButton setTintColor:v8];

    completedButton = self->_completedButton;
  }

  return completedButton;
}

- (ProminentActionButton)contactButton
{
  contactButton = self->_contactButton;
  if (!contactButton)
  {
    v4 = +[ProminentActionButton button];
    v5 = self->_contactButton;
    self->_contactButton = v4;

    v6 = [(ProminentActionButton *)self->_contactButton titleLabel];
    [DynamicTypeWizard autorefreshLabel:v6 withFontProvider:&stru_10165DB08];

    [(ProminentActionButton *)self->_contactButton addTarget:self action:"contactTapped:" forControlEvents:0x2000];
    v7 = [(RidesharingConfirmedRideViewController *)self theme];
    v8 = [v7 controlTintColor];
    [(ProminentActionButton *)self->_contactButton setTintColor:v8];

    [(ProminentActionButton *)self->_contactButton setEnabled:0];
    v9 = self->_contactButton;
    v10 = [(RidesharingConfirmedRideViewController *)self rideStatus];
    v11 = [v10 contactCommandTitle];
    v12 = [v11 copy];
    if (v12)
    {
      [(ProminentActionButton *)v9 setTitle:v12 forState:0];
    }

    else
    {
      v13 = +[NSBundle mainBundle];
      v14 = [v13 localizedStringForKey:@"Contact [Ridesharing booked ride]" value:@"localized string not found" table:0];
      [(ProminentActionButton *)v9 setTitle:v14 forState:0];
    }

    contactButton = self->_contactButton;
  }

  return contactButton;
}

- (ProminentActionButton)cancelButton
{
  cancelButton = self->_cancelButton;
  if (!cancelButton)
  {
    v4 = +[ProminentActionButton invertedButton];
    v5 = self->_cancelButton;
    self->_cancelButton = v4;

    v6 = [(ProminentActionButton *)self->_cancelButton titleLabel];
    [DynamicTypeWizard autorefreshLabel:v6 withFontProvider:&stru_10165DB08];

    [(ProminentActionButton *)self->_cancelButton addTarget:self action:"_cancelTapped:" forControlEvents:0x2000];
    v7 = [(RidesharingConfirmedRideViewController *)self theme];
    v8 = [v7 controlTintColor];
    [(ProminentActionButton *)self->_cancelButton setTintColor:v8];

    v9 = self->_cancelButton;
    v10 = +[NSBundle mainBundle];
    v11 = [v10 localizedStringForKey:@"Cancel [Ridesharing booked ride cancel button]" value:@"localized string not found" table:0];
    [(ProminentActionButton *)v9 setTitle:v11 forState:0];

    cancelButton = self->_cancelButton;
  }

  return cancelButton;
}

- (int)_currentAnalyticsTarget
{
  v2 = [(RidesharingConfirmedRideViewController *)self rideStatus];
  v3 = [v2 phase];

  if (v3 == 1)
  {
    return 1403;
  }

  else
  {
    return 1404;
  }
}

- (void)headerViewButtonTapped:(id)a3 buttonType:(unint64_t)a4
{
  [(RidesharingConfirmedRideViewController *)self setRequestRideOptionProxy:0, a4];
  [(RidesharingConfirmedRideViewController *)self setRideStatus:0];
  [(RidesharingConfirmedRideViewController *)self setExtensionManager:0];
  [(RidesharingConfirmedRideViewController *)self setExtensionForUI:0];
  v5 = [(RidesharingConfirmedRideViewController *)self coordinator];
  [v5 viewController:self minimizeConfirmation:0];
}

- (void)contactTapped:(id)a3
{
  v4 = +[MKMapService sharedService];
  [v4 captureUserAction:14005 onTarget:-[RidesharingConfirmedRideViewController _currentAnalyticsTarget](self eventValue:{"_currentAnalyticsTarget"), 0}];

  v5 = [(RidesharingConfirmedRideViewController *)self analyticsBookedSession];
  [v5 setContactedDriver:1];

  if (self->_cachedContactUrl)
  {
    v6 = +[MKSystemController sharedInstance];
    [v6 openURL:self->_cachedContactUrl completionHandler:0];
  }
}

- (void)_completedButtonTapped:(id)a3
{
  v4 = +[MKMapService sharedService];
  [v4 captureUserAction:6020 onTarget:-[RidesharingConfirmedRideViewController _currentAnalyticsTarget](self eventValue:{"_currentAnalyticsTarget"), 0}];

  v5 = [(RidesharingConfirmedRideViewController *)self coordinator];
  [v5 viewControllerRideCompletionAction:self];

  v9 = [(RidesharingConfirmedRideViewController *)self rideStatus];
  v6 = [v9 application];
  v7 = [(RidesharingConfirmedRideViewController *)self rideStatus];
  v8 = [v7 userActivityForCompletedRide];
  [v6 openWithActivity:v8];
}

- (id)_cancelConfirmationAlertControllerForApp:(id)a3 withFee:(id)a4 threshold:(id)a5 continueBlock:(id)a6
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v13 = v12;
  if (v12)
  {
    v49 = v12;
    v14 = +[NSBundle mainBundle];
    v15 = [v14 localizedStringForKey:@"ridesharing cancel ride confirmation default title" value:@"localized string not found" table:0];

    v16 = +[NSBundle mainBundle];
    v17 = [v16 localizedStringForKey:@"ridesharing cancel ride confirmation default message" value:@"localized string not found" table:0];

    +[NSBundle mainBundle];
    v18 = v52 = v11;
    v45 = [v18 localizedStringForKey:@"ridesharing cancel ride confirmation continue cancel" value:@"localized string not found" table:0];

    v19 = +[NSBundle mainBundle];
    v48 = [v19 localizedStringForKey:@"ridesharing cancel ride confirmation dont cancel" value:@"localized string not found" table:0];

    v20 = +[NSBundle mainBundle];
    v21 = [v20 localizedStringForKey:@"ridesharing cancel ride confirmation fee only title" value:@"localized string not found" table:0];
    v22 = [v10 formattedString];
    v51 = [NSString localizedStringWithFormat:v21, v22];

    v23 = +[NSBundle mainBundle];
    v50 = [v23 localizedStringForKey:@"ridesharing cancel ride confirmation fee message" value:@"localized string not found" table:0];

    v24 = +[NSBundle mainBundle];
    v25 = [v24 localizedStringForKey:@"ridesharing.cancelRide.confirmation.continue.fee" value:@"localized string not found" table:0];
    v26 = [v10 formattedString];
    v27 = [NSString localizedStringWithFormat:v25, v26];

    v46 = v27;
    v47 = v10;
    if (v10 && v52)
    {
      v28 = +[NSDate date];
      [v52 timeIntervalSinceDate:v28];
      v30 = v29;

      if (v30 >= 30.0)
      {
        goto LABEL_14;
      }
    }

    else if (!v10)
    {
      if (!v52)
      {
LABEL_14:
        v33 = v17;
        v34 = v45;
        goto LABEL_15;
      }

      v36 = +[NSBundle mainBundle];
      v37 = [v36 localizedStringForKey:@"ridesharing cancel ride confirmation threshold only title" value:@"localized string not found" table:0];

      v38 = +[NSBundle mainBundle];
      v39 = [v38 localizedStringForKey:@"ridesharing cancel ride confirmation threshold only message" value:@"localized string not found" table:0];
      v33 = [NSString localizedStringWithFormat:v39, v9];

      v40 = +[NSBundle mainBundle];
      v34 = [v40 localizedStringForKey:@"ridesharing.cancelRide.confirmation.continue.unknownFee" value:@"localized string not found" table:0];

      v35 = v40;
      v15 = v37;
LABEL_11:

LABEL_15:
      v31 = [UIAlertController alertControllerWithTitle:v15 message:v33 preferredStyle:1];
      v55[0] = _NSConcreteStackBlock;
      v55[1] = 3221225472;
      v55[2] = sub_10095B7D8;
      v55[3] = &unk_101660728;
      v13 = v49;
      v41 = v49;
      v56 = v41;
      v42 = [UIAlertAction actionWithTitle:v48 style:1 handler:v55];
      [v31 addAction:v42];

      v53[0] = _NSConcreteStackBlock;
      v53[1] = 3221225472;
      v53[2] = sub_10095B7EC;
      v53[3] = &unk_101660728;
      v54 = v41;
      v43 = [UIAlertAction actionWithTitle:v34 style:2 handler:v53];
      [v31 addAction:v43];

      v11 = v52;
      v10 = v47;
      goto LABEL_16;
    }

    v32 = v51;

    v33 = v50;
    v34 = v27;
    v15 = v32;
    v35 = v45;
    goto LABEL_11;
  }

  v15 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
  {
    *buf = 136446978;
    v58 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Shared/RidesharingConfirmedRideViewController.m";
    v59 = 1024;
    v60 = 342;
    v61 = 2082;
    v62 = "[RidesharingConfirmedRideViewController _cancelConfirmationAlertControllerForApp:withFee:threshold:continueBlock:]";
    v63 = 2082;
    v64 = "nil == (continueBlock)";
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_FAULT, "At %{public}s:%d, %{public}s forbids: %{public}s. Requires completion block", buf, 0x26u);
  }

  v31 = 0;
LABEL_16:

  return v31;
}

- (void)_cleanupWithRideStatus:(id)a3
{
  v4 = a3;
  v5 = [(RidesharingConfirmedRideViewController *)self cancelButton];
  [v5 setSpinnerHidden:1];

  v6 = [(RidesharingConfirmedRideViewController *)self analyticsBookedSession];
  [v6 setCancelled:1];

  v7 = [(RidesharingConfirmedRideViewController *)self analyticsBookedSession];
  [v7 endSession];

  v8 = [v4 application];
  v9 = [v4 userActivityForCanceling];

  [v8 openWithActivity:v9];
  v10 = [(RidesharingConfirmedRideViewController *)self coordinator];
  v11 = [v10 containerViewController];
  v12 = [v11 chromeViewController];
  [v12 popToRootContextAnimated:1 completion:0];

  v15 = [(RidesharingConfirmedRideViewController *)self coordinator];
  v13 = [v15 appCoordinator];
  v14 = [v13 platformController];
  [v14 clearSessions];
}

- (void)_cancelTapped:(id)a3
{
  v4 = a3;
  v5 = +[MKMapService sharedService];
  [v5 captureUserAction:18 onTarget:-[RidesharingConfirmedRideViewController _currentAnalyticsTarget](self eventValue:{"_currentAnalyticsTarget"), 0}];

  v6 = [(RidesharingConfirmedRideViewController *)self cancelButton];
  [v6 setSpinnerHidden:0];

  v7 = [(RidesharingConfirmedRideViewController *)self rideStatus];
  objc_initWeak(&location, self);
  v8 = [(RidesharingConfirmedRideViewController *)self rideStatusObserverProxy];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10095BAB0;
  v10[3] = &unk_10162F948;
  objc_copyWeak(&v12, &location);
  v9 = v7;
  v11 = v9;
  [v8 checkIfCanCancelRideWithRideStatus:v9 completion:v10];

  objc_destroyWeak(&v12);
  objc_destroyWeak(&location);
}

- (void)_openAppTapped
{
  v3 = +[MKMapService sharedService];
  [v3 captureUserAction:6020 onTarget:-[RidesharingConfirmedRideViewController _currentAnalyticsTarget](self eventValue:{"_currentAnalyticsTarget"), 0}];

  v7 = [(RidesharingConfirmedRideViewController *)self rideStatus];
  v4 = [v7 application];
  v5 = [(RidesharingConfirmedRideViewController *)self rideStatus];
  v6 = [v5 userActivity];
  [v4 openWithActivity:v6];
}

- (void)_bannerViewTapped:(id)a3
{
  v4 = [(ContaineeViewController *)self cardPresentationController];
  v5 = [v4 containeeLayout];

  if (v5 != 3)
  {
    v6 = [(ContaineeViewController *)self cardPresentationController];
    [v6 wantsLayout:3];
  }
}

- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4
{
  height = a3.height;
  width = a3.width;
  v9.receiver = self;
  v9.super_class = RidesharingConfirmedRideViewController;
  v7 = a4;
  [(ContaineeViewController *)&v9 viewWillTransitionToSize:v7 withTransitionCoordinator:width, height];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10095C278;
  v8[3] = &unk_101661710;
  v8[4] = self;
  [v7 animateAlongsideTransition:v8 completion:&stru_10162F920];
}

- (void)getRemoteViewControllerWithDelegate:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v7)
  {
    v8 = [(RidesharingConfirmedRideViewController *)self extensionForUI];
    v9 = [v8 extension];
    v10 = [NSMutableArray arrayWithObject:v9];

    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_10095C4B8;
    v11[3] = &unk_10162F900;
    v12 = v7;
    [INUIRemoteViewController attemptToConnectToRemoteViewControllerForRemainingExtensions:v10 delegate:v6 connectionHandler:v11];
  }

  else
  {
    v10 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
    {
      *buf = 136446978;
      v14 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Shared/RidesharingConfirmedRideViewController.m";
      v15 = 1024;
      v16 = 250;
      v17 = 2082;
      v18 = "[RidesharingConfirmedRideViewController getRemoteViewControllerWithDelegate:completion:]";
      v19 = 2082;
      v20 = "nil == (completion)";
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_FAULT, "At %{public}s:%d, %{public}s forbids: %{public}s. Requires completion block", buf, 0x26u);
    }
  }
}

- (void)extensionManager:(id)a3 didUpdateAvailableExtensions:(id)a4
{
  v5 = a4;
  objc_initWeak(&location, self);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10095C678;
  v7[3] = &unk_101661480;
  objc_copyWeak(&v10, &location);
  v8 = v5;
  v9 = self;
  v6 = v5;
  dispatch_async(&_dispatch_main_q, v7);

  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);
}

- (void)viewDidLoad
{
  v51.receiver = self;
  v51.super_class = RidesharingConfirmedRideViewController;
  [(ExtensionsStackViewController *)&v51 viewDidLoad];
  v3 = objc_alloc_init(ContainerHeaderView);
  containerHeaderView = self->_containerHeaderView;
  self->_containerHeaderView = v3;

  [(ContainerHeaderView *)self->_containerHeaderView setHairLineAlpha:0.0];
  [(ContainerHeaderView *)self->_containerHeaderView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(ContainerHeaderView *)self->_containerHeaderView setDelegate:self];
  v5 = [(ExtensionsStackViewController *)self headerView];
  [v5 addSubview:self->_containerHeaderView];

  v6 = self->_containerHeaderView;
  v7 = [(ExtensionsStackViewController *)self headerView];
  v8 = [(ContainerHeaderView *)v6 _maps_constraintsForCenteringInView:v7];
  [NSLayoutConstraint activateConstraints:v8];

  v9 = [[RouteOverviewFieldsView alloc] initWithDelegate:self waypointInfoProvider:0 editingMode:0];
  routeFromToView = self->_routeFromToView;
  self->_routeFromToView = v9;

  [(RouteOverviewFieldsView *)self->_routeFromToView setHasRefinementsBar:0];
  [(RouteOverviewFieldsView *)self->_routeFromToView setTranslatesAutoresizingMaskIntoConstraints:0];
  v11 = [[UILabel alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
  v12 = +[NSBundle mainBundle];
  v13 = [v12 localizedStringForKey:@"[Route Planning] Ride Share Title" value:@"localized string not found" table:0];
  [v11 setText:v13];

  [DynamicTypeWizard autorefreshLabel:v11 withFontProvider:&stru_10165D868];
  [(ContainerHeaderView *)self->_containerHeaderView setTitleView:v11];
  [(ContainerHeaderView *)self->_containerHeaderView setAccessoryView:0];
  v14 = objc_alloc_init(FeedbackHeaderView);
  feedbackHeaderView = self->_feedbackHeaderView;
  self->_feedbackHeaderView = v14;

  [(FeedbackHeaderView *)self->_feedbackHeaderView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(FeedbackHeaderView *)self->_feedbackHeaderView setTitle:&stru_1016631F0];
  [(FeedbackHeaderView *)self->_feedbackHeaderView setSubtitle:&stru_1016631F0];
  v16 = objc_alloc_init(UIView);
  bannerViewContainerView = self->_bannerViewContainerView;
  self->_bannerViewContainerView = v16;

  [(UIView *)self->_bannerViewContainerView setTranslatesAutoresizingMaskIntoConstraints:0];
  v18 = [[UITapGestureRecognizer alloc] initWithTarget:self action:"_bannerViewTapped:"];
  [(UIView *)self->_bannerViewContainerView addGestureRecognizer:v18];
  v19 = objc_opt_new();
  roundedRectView = self->_roundedRectView;
  self->_roundedRectView = v19;

  v21 = [(UIView *)self->_roundedRectView layer];
  [v21 setCornerRadius:6.0];

  [(UIView *)self->_roundedRectView setClipsToBounds:1];
  v22 = [(UIView *)self->_roundedRectView layer];
  v23 = +[UIColor blackColor];
  v24 = [v23 colorWithAlphaComponent:0.200000003];
  [v22 setBorderColor:{objc_msgSend(v24, "CGColor")}];

  v25 = [(UIView *)self->_roundedRectView layer];
  [v25 setBorderWidth:1.0];

  [(UIView *)self->_roundedRectView setTranslatesAutoresizingMaskIntoConstraints:0];
  LODWORD(v26) = 1148846080;
  [(UIView *)self->_roundedRectView setContentCompressionResistancePriority:1 forAxis:v26];
  v27 = objc_alloc_init(ExtensionsBannerView);
  bannerView = self->_bannerView;
  self->_bannerView = v27;

  [(ExtensionsBannerView *)self->_bannerView setTranslatesAutoresizingMaskIntoConstraints:0];
  v29 = objc_alloc_init(ExtensionsRidesharingTemplatedBannerView);
  templatedBannerView = self->_templatedBannerView;
  self->_templatedBannerView = v29;

  [(ExtensionsRidesharingTemplatedBannerView *)self->_templatedBannerView setTranslatesAutoresizingMaskIntoConstraints:0];
  v31 = objc_alloc_init(ExtensionsBannerAttributionView);
  bannerAttributionView = self->_bannerAttributionView;
  self->_bannerAttributionView = v31;

  [(ExtensionsBannerAttributionView *)self->_bannerAttributionView setTranslatesAutoresizingMaskIntoConstraints:0];
  objc_initWeak(&location, self);
  v33 = [ExtensionsFeedbackView alloc];
  v48[0] = _NSConcreteStackBlock;
  v48[1] = 3221225472;
  v48[2] = sub_10095CDEC;
  v48[3] = &unk_10162F8D8;
  objc_copyWeak(&v49, &location);
  v34 = [(ExtensionsFeedbackView *)v33 initWithSubmitHandler:v48];
  feedbackView = self->_feedbackView;
  self->_feedbackView = v34;

  [(ExtensionsFeedbackView *)self->_feedbackView setTranslatesAutoresizingMaskIntoConstraints:0];
  v36 = objc_alloc_init(ExtensionsPrimaryDetailsView);
  primaryDetailsView = self->_primaryDetailsView;
  self->_primaryDetailsView = v36;

  [(ExtensionsPrimaryDetailsView *)self->_primaryDetailsView setTranslatesAutoresizingMaskIntoConstraints:0];
  v38 = objc_alloc_init(ExtensionsSecondaryDetailsView);
  secondaryDetailsView = self->_secondaryDetailsView;
  self->_secondaryDetailsView = v38;

  [(ExtensionsSecondaryDetailsView *)self->_secondaryDetailsView setTranslatesAutoresizingMaskIntoConstraints:0];
  v40 = objc_alloc_init(ExtensionsActionsFooterView);
  openAppView = self->_openAppView;
  self->_openAppView = v40;

  [(ExtensionsActionsFooterView *)self->_openAppView setTranslatesAutoresizingMaskIntoConstraints:0];
  v46[0] = _NSConcreteStackBlock;
  v46[1] = 3221225472;
  v46[2] = sub_10095D230;
  v46[3] = &unk_101661B98;
  objc_copyWeak(&v47, &location);
  [(ExtensionsActionsFooterView *)self->_openAppView setDidTapOpenAppButton:v46];
  v42 = [(ExtensionsStackViewController *)self stackView];
  v43 = [(RidesharingConfirmedRideViewController *)self stackedViews];
  [v42 _maps_setArrangedSubviews:v43];

  v44 = [(ExtensionsStackViewController *)self stackView];
  [v44 setCustomSpacing:self->_routeFromToView afterView:16.0];

  v45 = [(RidesharingConfirmedRideViewController *)self rideStatus];
  [(RidesharingConfirmedRideViewController *)self _updateFromRideStatus:v45];

  objc_destroyWeak(&v47);
  objc_destroyWeak(&v49);
  objc_destroyWeak(&location);
}

- (RidesharingConfirmedRideViewController)init
{
  v3.receiver = self;
  v3.super_class = RidesharingConfirmedRideViewController;
  return [(RidesharingConfirmedRideViewController *)&v3 initWithNibName:0 bundle:0];
}

- (RidesharingConfirmedRideViewController)initWithApplicationIdentifier:(id)a3
{
  v4 = a3;
  v16.receiver = self;
  v16.super_class = RidesharingConfirmedRideViewController;
  v5 = [(RidesharingConfirmedRideViewController *)&v16 initWithNibName:0 bundle:0];
  if (v5)
  {
    v6 = [v4 copy];
    applicationIdentifier = v5->_applicationIdentifier;
    v5->_applicationIdentifier = v6;

    v8 = [[RideBookingRideStatusObserverProxy alloc] initWithDelegate:v5];
    rideStatusObserverProxy = v5->_rideStatusObserverProxy;
    v5->_rideStatusObserverProxy = v8;

    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_10095D4C8;
    v14[3] = &unk_10162F890;
    v15 = v4;
    v10 = [_MXExtensionManager _lookupPolicyWithBlock:v14];
    v11 = [_MXExtensionManager managerWithLookupPolicy:v10 delegate:v5];
    extensionManager = v5->_extensionManager;
    v5->_extensionManager = v11;
  }

  return v5;
}

@end