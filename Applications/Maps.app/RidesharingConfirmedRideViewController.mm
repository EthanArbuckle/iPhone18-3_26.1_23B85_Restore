@interface RidesharingConfirmedRideViewController
- (CGSize)maximumSizeForRemoteViewController:(id)controller;
- (CGSize)minimumSizeForRemoteViewController:(id)controller;
- (ProminentActionButton)cancelButton;
- (ProminentActionButton)completedButton;
- (ProminentActionButton)contactButton;
- (RidesharingConfirmedRideViewController)init;
- (RidesharingConfirmedRideViewController)initWithApplicationIdentifier:(id)identifier;
- (RidesharingCoordinator)coordinator;
- (double)headerAndRouteFromToViewHeight;
- (double)heightForLayout:(unint64_t)layout;
- (id)_cancelConfirmationAlertControllerForApp:(id)app withFee:(id)fee threshold:(id)threshold continueBlock:(id)block;
- (id)stackedViews;
- (int)_currentAnalyticsTarget;
- (void)_bannerViewTapped:(id)tapped;
- (void)_cancelTapped:(id)tapped;
- (void)_cleanupWithRideStatus:(id)status;
- (void)_completedButtonTapped:(id)tapped;
- (void)_openAppTapped;
- (void)_setBannerViewContainerContentView:(id)view;
- (void)_updateFromRideStatus:(id)status;
- (void)contactTapped:(id)tapped;
- (void)dealloc;
- (void)didChangeLayout:(unint64_t)layout;
- (void)extensionManager:(id)manager didUpdateAvailableExtensions:(id)extensions;
- (void)getCanCallPhoneNumber:(id)number completion:(id)completion;
- (void)getRemoteViewControllerWithDelegate:(id)delegate completion:(id)completion;
- (void)headerViewButtonTapped:(id)tapped buttonType:(unint64_t)type;
- (void)remoteViewControllerServiceDidTerminate:(id)terminate;
- (void)rideStatusMapDidChange:(id)change;
- (void)viewDidLoad;
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
@end

@implementation RidesharingConfirmedRideViewController

- (RidesharingCoordinator)coordinator
{
  WeakRetained = objc_loadWeakRetained(&self->_coordinator);

  return WeakRetained;
}

- (void)getCanCallPhoneNumber:(id)number completion:(id)completion
{
  numberCopy = number;
  completionCopy = completion;
  if (completionCopy)
  {
    cachedContactUrl = self->_cachedContactUrl;
    self->_cachedContactUrl = 0;

    if (!numberCopy)
    {
      (*(completionCopy + 2))(completionCopy, 0, 0);
      goto LABEL_8;
    }

    v9 = +[UIApplication sharedApplication];
    stringValue = [numberCopy stringValue];
    [v9 getCanCallPhoneNumber:stringValue completion:completionCopy];
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
  disconnect = [(INUIRemoteViewController *)self->_remoteViewController disconnect];
  v4.receiver = self;
  v4.super_class = RidesharingConfirmedRideViewController;
  [(RidesharingConfirmedRideViewController *)&v4 dealloc];
}

- (void)remoteViewControllerServiceDidTerminate:(id)terminate
{
  remoteViewController = self->_remoteViewController;
  self->_remoteViewController = 0;

  self->_hasEverRequestedRemoteViewController = 0;
  rideStatus = [(RidesharingConfirmedRideViewController *)self rideStatus];
  [(RidesharingConfirmedRideViewController *)self _updateFromRideStatus:rideStatus];
}

- (CGSize)maximumSizeForRemoteViewController:(id)controller
{
  view = [(RidesharingConfirmedRideViewController *)self view];
  [view frame];
  v5 = v4 + -32.0;

  v6 = 145.0;
  v7 = v5;
  result.height = v6;
  result.width = v7;
  return result;
}

- (CGSize)minimumSizeForRemoteViewController:(id)controller
{
  view = [(RidesharingConfirmedRideViewController *)self view];
  [view frame];
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

- (double)heightForLayout:(unint64_t)layout
{
  remoteViewController = self->_remoteViewController;
  rideStatus = [(RidesharingConfirmedRideViewController *)self rideStatus];
  shouldShowFeedbackControls = [rideStatus shouldShowFeedbackControls];

  if (layout - 3 < 2)
  {
    cardPresentationController = [(ContaineeViewController *)self cardPresentationController];
    [cardPresentationController availableHeight];
    v8 = v14;
  }

  else if (layout == 2)
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
    if (shouldShowFeedbackControls)
    {
      [(ExtensionsFeedbackView *)self->_feedbackView systemLayoutSizeFittingSize:UILayoutFittingCompressedSize.width, height];
      v20 = v23;
    }

    return v22 + v20;
  }

  else
  {
    v8 = -1.0;
    if (layout == 1)
    {
      cardPresentationController2 = [(ContaineeViewController *)self cardPresentationController];
      [cardPresentationController2 bottomSafeOffset];
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

- (void)didChangeLayout:(unint64_t)layout
{
  v6.receiver = self;
  v6.super_class = RidesharingConfirmedRideViewController;
  [(ExtensionsStackViewController *)&v6 didChangeLayout:?];
  if (layout == 3)
  {
    analyticsBookedSession = [(RidesharingConfirmedRideViewController *)self analyticsBookedSession];
    [analyticsBookedSession setViewedDetails:1];
  }
}

- (void)_setBannerViewContainerContentView:(id)view
{
  viewCopy = view;
  superview = [viewCopy superview];
  roundedRectView = self->_roundedRectView;

  if (superview != roundedRectView)
  {
    v65 = 0u;
    v66 = 0u;
    v63 = 0u;
    v64 = 0u;
    subviews = [(UIView *)self->_roundedRectView subviews];
    v8 = [subviews copy];

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
    subviews2 = [(UIView *)self->_bannerViewContainerView subviews];
    v14 = [subviews2 copy];

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
    [viewCopy setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIView *)self->_roundedRectView addSubview:viewCopy];
    [(UIView *)self->_roundedRectView addSubview:self->_bannerAttributionView];
    LODWORD(v19) = 1148846080;
    [viewCopy setContentCompressionResistancePriority:1 forAxis:v19];
    LODWORD(v20) = 1148846080;
    [(ExtensionsBannerAttributionView *)self->_bannerAttributionView setContentCompressionResistancePriority:1 forAxis:v20];
    topAnchor = [viewCopy topAnchor];
    topAnchor2 = [(UIView *)self->_roundedRectView topAnchor];
    v55 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:1.0];
    v67[0] = v55;
    leadingAnchor = [viewCopy leadingAnchor];
    leadingAnchor2 = [(UIView *)self->_roundedRectView leadingAnchor];
    v52 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:1.0];
    v67[1] = v52;
    trailingAnchor = [viewCopy trailingAnchor];
    trailingAnchor2 = [(UIView *)self->_roundedRectView trailingAnchor];
    v49 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:-1.0];
    v67[2] = v49;
    heightAnchor = [viewCopy heightAnchor];
    v47 = [heightAnchor constraintEqualToConstant:145.0];
    v67[3] = v47;
    topAnchor3 = [(ExtensionsBannerAttributionView *)self->_bannerAttributionView topAnchor];
    bottomAnchor = [viewCopy bottomAnchor];
    v44 = [topAnchor3 constraintEqualToAnchor:bottomAnchor];
    v67[4] = v44;
    leadingAnchor3 = [(ExtensionsBannerAttributionView *)self->_bannerAttributionView leadingAnchor];
    leadingAnchor4 = [(UIView *)self->_roundedRectView leadingAnchor];
    v41 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4 constant:1.0];
    v67[5] = v41;
    trailingAnchor3 = [(ExtensionsBannerAttributionView *)self->_bannerAttributionView trailingAnchor];
    trailingAnchor4 = [(UIView *)self->_roundedRectView trailingAnchor];
    v38 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4 constant:-1.0];
    v67[6] = v38;
    bottomAnchor2 = [(ExtensionsBannerAttributionView *)self->_bannerAttributionView bottomAnchor];
    bottomAnchor3 = [(UIView *)self->_roundedRectView bottomAnchor];
    v35 = [bottomAnchor2 constraintEqualToAnchor:bottomAnchor3 constant:-1.0];
    v67[7] = v35;
    topAnchor4 = [(UIView *)self->_roundedRectView topAnchor];
    topAnchor5 = [(UIView *)self->_bannerViewContainerView topAnchor];
    v32 = [topAnchor4 constraintEqualToAnchor:topAnchor5];
    v67[8] = v32;
    bottomAnchor4 = [(UIView *)self->_roundedRectView bottomAnchor];
    bottomAnchor5 = [(UIView *)self->_bannerViewContainerView bottomAnchor];
    v22 = [bottomAnchor4 constraintEqualToAnchor:bottomAnchor5];
    v67[9] = v22;
    [(UIView *)self->_roundedRectView leadingAnchor];
    v23 = v58 = viewCopy;
    leadingAnchor5 = [(UIView *)self->_bannerViewContainerView leadingAnchor];
    v25 = [v23 constraintEqualToAnchor:leadingAnchor5 constant:16.0];
    v67[10] = v25;
    trailingAnchor5 = [(UIView *)self->_roundedRectView trailingAnchor];
    trailingAnchor6 = [(UIView *)self->_bannerViewContainerView trailingAnchor];
    v28 = [trailingAnchor5 constraintEqualToAnchor:trailingAnchor6 constant:-16.0];
    v67[11] = v28;
    v29 = [NSArray arrayWithObjects:v67 count:12];
    [NSLayoutConstraint activateConstraints:v29];

    viewCopy = v58;
    cardPresentationController = [(ContaineeViewController *)self cardPresentationController];
    [cardPresentationController updateHeightForCurrentLayout];
  }
}

- (void)_updateFromRideStatus:(id)status
{
  statusCopy = status;
  if (!statusCopy)
  {
    goto LABEL_36;
  }

  objc_storeStrong(&self->_rideStatus, status);
  application = [statusCopy application];
  identifier = [application identifier];
  identifier2 = [statusCopy identifier];
  v9 = [RideBookingAccessProxy rideBookingCurrentBookedSessionForAppIdentifier:identifier rideIdentifier:identifier2];
  [(RidesharingConfirmedRideViewController *)self setAnalyticsBookedSession:v9];

  if (([statusCopy isValidRide] & 1) == 0)
  {
    v12 = [RidesharingErrorAlertProvider alloc];
    application2 = [statusCopy application];
    userActivity = [statusCopy userActivity];
    v15 = [(RidesharingErrorAlertProvider *)v12 _initWithCause:1 application:application2 activity:userActivity];

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
    [ExtensionsViewComposer composeBlankTemplatedBannerView:self->_templatedBannerView forRideBookingRideStatus:statusCopy];
    [(ExtensionsBannerAttributionView *)self->_bannerAttributionView setHidden:0];
    extensionForUI = [(RidesharingConfirmedRideViewController *)self extensionForUI];

    if (extensionForUI)
    {
      v46[0] = _NSConcreteStackBlock;
      v46[1] = 3221225472;
      v46[2] = sub_10095A96C;
      v46[3] = &unk_10162F970;
      v46[4] = self;
      v47 = statusCopy;
      [(RidesharingConfirmedRideViewController *)self getRemoteViewControllerWithDelegate:self completion:v46];
    }

    else
    {
      [ExtensionsViewComposer composeTemplatedBannerView:*p_templatedBannerView forRideBookingRideStatus:statusCopy];
      if (self->_remoteViewController)
      {
        p_templatedBannerView = &self->_bannerView;
      }

      [(RidesharingConfirmedRideViewController *)self _setBannerViewContainerContentView:*p_templatedBannerView];
      cardPresentationController = [(ContaineeViewController *)self cardPresentationController];
      [cardPresentationController updateHeightForCurrentLayout];
    }
  }

  if (![statusCopy isValidRide] || (objc_msgSend(statusCopy, "isActiveRide") & 1) == 0)
  {
    coordinator = [(RidesharingConfirmedRideViewController *)self coordinator];
    containerViewController = [coordinator containerViewController];
    chromeViewController = [containerViewController chromeViewController];
    ridesharingAnnotationsManager = [chromeViewController ridesharingAnnotationsManager];
    [ridesharingAnnotationsManager removeCurrentRide];

    if ([statusCopy phase] == 4)
    {
      cardPresentationController2 = [(ContaineeViewController *)self cardPresentationController];
      if ([cardPresentationController2 containeeLayout] == 3)
      {
      }

      else
      {
        hasShownFullContaineeLayout = self->_hasShownFullContaineeLayout;

        if (!hasShownFullContaineeLayout)
        {
          cardPresentationController3 = [(ContaineeViewController *)self cardPresentationController];
          [cardPresentationController3 wantsLayout:3];

          self->_hasShownFullContaineeLayout = 1;
        }
      }
    }
  }

  driverPhoneNumber = self->_driverPhoneNumber;
  driverPhoneNumber = [statusCopy driverPhoneNumber];
  if (![(NSString *)driverPhoneNumber isEqualToString:driverPhoneNumber])
  {
    driverPhoneNumber2 = [statusCopy driverPhoneNumber];

    if (!driverPhoneNumber2)
    {
      goto LABEL_22;
    }

    driverPhoneNumber3 = [statusCopy driverPhoneNumber];
    v29 = self->_driverPhoneNumber;
    self->_driverPhoneNumber = driverPhoneNumber3;

    driverPhoneNumber = [[CNPhoneNumber alloc] initWithStringValue:self->_driverPhoneNumber];
    contactButton = [(RidesharingConfirmedRideViewController *)self contactButton];
    [contactButton setEnabled:0];

    v45[0] = _NSConcreteStackBlock;
    v45[1] = 3221225472;
    v45[2] = sub_10095AA78;
    v45[3] = &unk_10162F998;
    v45[4] = self;
    [(RidesharingConfirmedRideViewController *)self getCanCallPhoneNumber:driverPhoneNumber completion:v45];
  }

LABEL_22:
  [ExtensionsViewComposer composeCustomHeaderView:self->_routeFromToView forRideBookingRideStatus:statusCopy];
  [ExtensionsViewComposer composeBannerView:self->_bannerView forRidesharingCurrentRideViewController:self rideBookingRideStatus:statusCopy];
  [ExtensionsViewComposer composeTemplatedBannerView:self->_templatedBannerView forRideBookingRideStatus:statusCopy];
  [ExtensionsViewComposer composeBannerAttributionView:self->_bannerAttributionView forRideBookingRideStatus:statusCopy];
  [ExtensionsViewComposer composeSecondaryDetailsView:self->_secondaryDetailsView forRideBookingRideStatus:statusCopy];
  [ExtensionsViewComposer composeOpenAppView:self->_openAppView forRideBookingRideStatus:statusCopy];
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
  cancelButton = [(RidesharingConfirmedRideViewController *)self cancelButton];
  cancelCommandTitle = [statusCopy cancelCommandTitle];
  [cancelButton setTitle:cancelCommandTitle forState:0];

  completedButton = [(RidesharingConfirmedRideViewController *)self completedButton];
  cardRideCompletedActionButtonTitle = [statusCopy cardRideCompletedActionButtonTitle];
  [completedButton setTitle:cardRideCompletedActionButtonTitle forState:0];

  if (![statusCopy isValidRide] || (objc_msgSend(statusCopy, "isActiveRide") & 1) == 0)
  {
    completedButton2 = [(RidesharingConfirmedRideViewController *)self completedButton];
    goto LABEL_30;
  }

  cancelButton2 = [(RidesharingConfirmedRideViewController *)self cancelButton];
  [v32 addObject:cancelButton2];

  if ([(NSString *)self->_driverPhoneNumber length])
  {
    completedButton2 = [(RidesharingConfirmedRideViewController *)self contactButton];
LABEL_30:
    v39 = completedButton2;
    [v32 addObject:completedButton2];
  }

  if ([statusCopy shouldShowFeedbackControls])
  {
    [ExtensionsViewComposer composeFeedbackView:self->_feedbackView forRideBookingRideStatus:statusCopy tippingViewDelegate:self];
    [(ContainerHeaderView *)self->_containerHeaderView setTitleView:self->_feedbackHeaderView];
    [ExtensionsViewComposer composeCustomFeedbackHeaderView:self->_feedbackHeaderView forRideBookingRideStatus:statusCopy];
    [(ExtensionsFeedbackView *)self->_feedbackView setHidden:0];
    [(UIView *)self->_bannerViewContainerView setHidden:1];
    v40 = objc_alloc_init(NSMutableOrderedSet);

    v32 = v40;
  }

  primaryDetailsView = self->_primaryDetailsView;
  objectEnumerator = [v32 objectEnumerator];
  allObjects = [objectEnumerator allObjects];
  [ExtensionsViewComposer composePrimaryDetailsView:primaryDetailsView forRideBookingRideStatus:statusCopy withActionButtons:allObjects];

  phase = [statusCopy phase];
  if ((phase == 0) != [(ExtensionsPrimaryDetailsView *)self->_primaryDetailsView isHidden])
  {
    [(ExtensionsPrimaryDetailsView *)self->_primaryDetailsView setHidden:phase == 0];
  }

LABEL_36:
}

- (void)rideStatusMapDidChange:(id)change
{
  changeCopy = change;
  applicationIdentifier = [(RidesharingConfirmedRideViewController *)self applicationIdentifier];
  v6 = [changeCopy objectForKey:applicationIdentifier];

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

    titleLabel = [(ProminentActionButton *)self->_completedButton titleLabel];
    [DynamicTypeWizard autorefreshLabel:titleLabel withFontProvider:&stru_10165DB08];

    [(ProminentActionButton *)self->_completedButton addTarget:self action:"_completedButtonTapped:" forControlEvents:0x2000];
    theme = [(RidesharingConfirmedRideViewController *)self theme];
    controlTintColor = [theme controlTintColor];
    [(ProminentActionButton *)self->_completedButton setTintColor:controlTintColor];

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

    titleLabel = [(ProminentActionButton *)self->_contactButton titleLabel];
    [DynamicTypeWizard autorefreshLabel:titleLabel withFontProvider:&stru_10165DB08];

    [(ProminentActionButton *)self->_contactButton addTarget:self action:"contactTapped:" forControlEvents:0x2000];
    theme = [(RidesharingConfirmedRideViewController *)self theme];
    controlTintColor = [theme controlTintColor];
    [(ProminentActionButton *)self->_contactButton setTintColor:controlTintColor];

    [(ProminentActionButton *)self->_contactButton setEnabled:0];
    v9 = self->_contactButton;
    rideStatus = [(RidesharingConfirmedRideViewController *)self rideStatus];
    contactCommandTitle = [rideStatus contactCommandTitle];
    v12 = [contactCommandTitle copy];
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

    titleLabel = [(ProminentActionButton *)self->_cancelButton titleLabel];
    [DynamicTypeWizard autorefreshLabel:titleLabel withFontProvider:&stru_10165DB08];

    [(ProminentActionButton *)self->_cancelButton addTarget:self action:"_cancelTapped:" forControlEvents:0x2000];
    theme = [(RidesharingConfirmedRideViewController *)self theme];
    controlTintColor = [theme controlTintColor];
    [(ProminentActionButton *)self->_cancelButton setTintColor:controlTintColor];

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
  rideStatus = [(RidesharingConfirmedRideViewController *)self rideStatus];
  phase = [rideStatus phase];

  if (phase == 1)
  {
    return 1403;
  }

  else
  {
    return 1404;
  }
}

- (void)headerViewButtonTapped:(id)tapped buttonType:(unint64_t)type
{
  [(RidesharingConfirmedRideViewController *)self setRequestRideOptionProxy:0, type];
  [(RidesharingConfirmedRideViewController *)self setRideStatus:0];
  [(RidesharingConfirmedRideViewController *)self setExtensionManager:0];
  [(RidesharingConfirmedRideViewController *)self setExtensionForUI:0];
  coordinator = [(RidesharingConfirmedRideViewController *)self coordinator];
  [coordinator viewController:self minimizeConfirmation:0];
}

- (void)contactTapped:(id)tapped
{
  v4 = +[MKMapService sharedService];
  [v4 captureUserAction:14005 onTarget:-[RidesharingConfirmedRideViewController _currentAnalyticsTarget](self eventValue:{"_currentAnalyticsTarget"), 0}];

  analyticsBookedSession = [(RidesharingConfirmedRideViewController *)self analyticsBookedSession];
  [analyticsBookedSession setContactedDriver:1];

  if (self->_cachedContactUrl)
  {
    v6 = +[MKSystemController sharedInstance];
    [v6 openURL:self->_cachedContactUrl completionHandler:0];
  }
}

- (void)_completedButtonTapped:(id)tapped
{
  v4 = +[MKMapService sharedService];
  [v4 captureUserAction:6020 onTarget:-[RidesharingConfirmedRideViewController _currentAnalyticsTarget](self eventValue:{"_currentAnalyticsTarget"), 0}];

  coordinator = [(RidesharingConfirmedRideViewController *)self coordinator];
  [coordinator viewControllerRideCompletionAction:self];

  rideStatus = [(RidesharingConfirmedRideViewController *)self rideStatus];
  application = [rideStatus application];
  rideStatus2 = [(RidesharingConfirmedRideViewController *)self rideStatus];
  userActivityForCompletedRide = [rideStatus2 userActivityForCompletedRide];
  [application openWithActivity:userActivityForCompletedRide];
}

- (id)_cancelConfirmationAlertControllerForApp:(id)app withFee:(id)fee threshold:(id)threshold continueBlock:(id)block
{
  appCopy = app;
  feeCopy = fee;
  thresholdCopy = threshold;
  blockCopy = block;
  v13 = blockCopy;
  if (blockCopy)
  {
    v49 = blockCopy;
    v14 = +[NSBundle mainBundle];
    v15 = [v14 localizedStringForKey:@"ridesharing cancel ride confirmation default title" value:@"localized string not found" table:0];

    v16 = +[NSBundle mainBundle];
    v17 = [v16 localizedStringForKey:@"ridesharing cancel ride confirmation default message" value:@"localized string not found" table:0];

    +[NSBundle mainBundle];
    v18 = v52 = thresholdCopy;
    v45 = [v18 localizedStringForKey:@"ridesharing cancel ride confirmation continue cancel" value:@"localized string not found" table:0];

    v19 = +[NSBundle mainBundle];
    v48 = [v19 localizedStringForKey:@"ridesharing cancel ride confirmation dont cancel" value:@"localized string not found" table:0];

    v20 = +[NSBundle mainBundle];
    v21 = [v20 localizedStringForKey:@"ridesharing cancel ride confirmation fee only title" value:@"localized string not found" table:0];
    formattedString = [feeCopy formattedString];
    v51 = [NSString localizedStringWithFormat:v21, formattedString];

    v23 = +[NSBundle mainBundle];
    v50 = [v23 localizedStringForKey:@"ridesharing cancel ride confirmation fee message" value:@"localized string not found" table:0];

    v24 = +[NSBundle mainBundle];
    v25 = [v24 localizedStringForKey:@"ridesharing.cancelRide.confirmation.continue.fee" value:@"localized string not found" table:0];
    formattedString2 = [feeCopy formattedString];
    v27 = [NSString localizedStringWithFormat:v25, formattedString2];

    v46 = v27;
    v47 = feeCopy;
    if (feeCopy && v52)
    {
      v28 = +[NSDate date];
      [v52 timeIntervalSinceDate:v28];
      v30 = v29;

      if (v30 >= 30.0)
      {
        goto LABEL_14;
      }
    }

    else if (!feeCopy)
    {
      if (!v52)
      {
LABEL_14:
        appCopy = v17;
        v34 = v45;
        goto LABEL_15;
      }

      v36 = +[NSBundle mainBundle];
      v37 = [v36 localizedStringForKey:@"ridesharing cancel ride confirmation threshold only title" value:@"localized string not found" table:0];

      v38 = +[NSBundle mainBundle];
      v39 = [v38 localizedStringForKey:@"ridesharing cancel ride confirmation threshold only message" value:@"localized string not found" table:0];
      appCopy = [NSString localizedStringWithFormat:v39, appCopy];

      v40 = +[NSBundle mainBundle];
      v34 = [v40 localizedStringForKey:@"ridesharing.cancelRide.confirmation.continue.unknownFee" value:@"localized string not found" table:0];

      v35 = v40;
      v15 = v37;
LABEL_11:

LABEL_15:
      v31 = [UIAlertController alertControllerWithTitle:v15 message:appCopy preferredStyle:1];
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

      thresholdCopy = v52;
      feeCopy = v47;
      goto LABEL_16;
    }

    v32 = v51;

    appCopy = v50;
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

- (void)_cleanupWithRideStatus:(id)status
{
  statusCopy = status;
  cancelButton = [(RidesharingConfirmedRideViewController *)self cancelButton];
  [cancelButton setSpinnerHidden:1];

  analyticsBookedSession = [(RidesharingConfirmedRideViewController *)self analyticsBookedSession];
  [analyticsBookedSession setCancelled:1];

  analyticsBookedSession2 = [(RidesharingConfirmedRideViewController *)self analyticsBookedSession];
  [analyticsBookedSession2 endSession];

  application = [statusCopy application];
  userActivityForCanceling = [statusCopy userActivityForCanceling];

  [application openWithActivity:userActivityForCanceling];
  coordinator = [(RidesharingConfirmedRideViewController *)self coordinator];
  containerViewController = [coordinator containerViewController];
  chromeViewController = [containerViewController chromeViewController];
  [chromeViewController popToRootContextAnimated:1 completion:0];

  coordinator2 = [(RidesharingConfirmedRideViewController *)self coordinator];
  appCoordinator = [coordinator2 appCoordinator];
  platformController = [appCoordinator platformController];
  [platformController clearSessions];
}

- (void)_cancelTapped:(id)tapped
{
  tappedCopy = tapped;
  v5 = +[MKMapService sharedService];
  [v5 captureUserAction:18 onTarget:-[RidesharingConfirmedRideViewController _currentAnalyticsTarget](self eventValue:{"_currentAnalyticsTarget"), 0}];

  cancelButton = [(RidesharingConfirmedRideViewController *)self cancelButton];
  [cancelButton setSpinnerHidden:0];

  rideStatus = [(RidesharingConfirmedRideViewController *)self rideStatus];
  objc_initWeak(&location, self);
  rideStatusObserverProxy = [(RidesharingConfirmedRideViewController *)self rideStatusObserverProxy];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10095BAB0;
  v10[3] = &unk_10162F948;
  objc_copyWeak(&v12, &location);
  v9 = rideStatus;
  v11 = v9;
  [rideStatusObserverProxy checkIfCanCancelRideWithRideStatus:v9 completion:v10];

  objc_destroyWeak(&v12);
  objc_destroyWeak(&location);
}

- (void)_openAppTapped
{
  v3 = +[MKMapService sharedService];
  [v3 captureUserAction:6020 onTarget:-[RidesharingConfirmedRideViewController _currentAnalyticsTarget](self eventValue:{"_currentAnalyticsTarget"), 0}];

  rideStatus = [(RidesharingConfirmedRideViewController *)self rideStatus];
  application = [rideStatus application];
  rideStatus2 = [(RidesharingConfirmedRideViewController *)self rideStatus];
  userActivity = [rideStatus2 userActivity];
  [application openWithActivity:userActivity];
}

- (void)_bannerViewTapped:(id)tapped
{
  cardPresentationController = [(ContaineeViewController *)self cardPresentationController];
  containeeLayout = [cardPresentationController containeeLayout];

  if (containeeLayout != 3)
  {
    cardPresentationController2 = [(ContaineeViewController *)self cardPresentationController];
    [cardPresentationController2 wantsLayout:3];
  }
}

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  height = size.height;
  width = size.width;
  v9.receiver = self;
  v9.super_class = RidesharingConfirmedRideViewController;
  coordinatorCopy = coordinator;
  [(ContaineeViewController *)&v9 viewWillTransitionToSize:coordinatorCopy withTransitionCoordinator:width, height];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10095C278;
  v8[3] = &unk_101661710;
  v8[4] = self;
  [coordinatorCopy animateAlongsideTransition:v8 completion:&stru_10162F920];
}

- (void)getRemoteViewControllerWithDelegate:(id)delegate completion:(id)completion
{
  delegateCopy = delegate;
  completionCopy = completion;
  if (completionCopy)
  {
    extensionForUI = [(RidesharingConfirmedRideViewController *)self extensionForUI];
    extension = [extensionForUI extension];
    v10 = [NSMutableArray arrayWithObject:extension];

    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_10095C4B8;
    v11[3] = &unk_10162F900;
    v12 = completionCopy;
    [INUIRemoteViewController attemptToConnectToRemoteViewControllerForRemainingExtensions:v10 delegate:delegateCopy connectionHandler:v11];
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

- (void)extensionManager:(id)manager didUpdateAvailableExtensions:(id)extensions
{
  extensionsCopy = extensions;
  objc_initWeak(&location, self);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10095C678;
  v7[3] = &unk_101661480;
  objc_copyWeak(&v10, &location);
  v8 = extensionsCopy;
  selfCopy = self;
  v6 = extensionsCopy;
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
  headerView = [(ExtensionsStackViewController *)self headerView];
  [headerView addSubview:self->_containerHeaderView];

  v6 = self->_containerHeaderView;
  headerView2 = [(ExtensionsStackViewController *)self headerView];
  v8 = [(ContainerHeaderView *)v6 _maps_constraintsForCenteringInView:headerView2];
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

  layer = [(UIView *)self->_roundedRectView layer];
  [layer setCornerRadius:6.0];

  [(UIView *)self->_roundedRectView setClipsToBounds:1];
  layer2 = [(UIView *)self->_roundedRectView layer];
  v23 = +[UIColor blackColor];
  v24 = [v23 colorWithAlphaComponent:0.200000003];
  [layer2 setBorderColor:{objc_msgSend(v24, "CGColor")}];

  layer3 = [(UIView *)self->_roundedRectView layer];
  [layer3 setBorderWidth:1.0];

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
  stackView = [(ExtensionsStackViewController *)self stackView];
  stackedViews = [(RidesharingConfirmedRideViewController *)self stackedViews];
  [stackView _maps_setArrangedSubviews:stackedViews];

  stackView2 = [(ExtensionsStackViewController *)self stackView];
  [stackView2 setCustomSpacing:self->_routeFromToView afterView:16.0];

  rideStatus = [(RidesharingConfirmedRideViewController *)self rideStatus];
  [(RidesharingConfirmedRideViewController *)self _updateFromRideStatus:rideStatus];

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

- (RidesharingConfirmedRideViewController)initWithApplicationIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v16.receiver = self;
  v16.super_class = RidesharingConfirmedRideViewController;
  v5 = [(RidesharingConfirmedRideViewController *)&v16 initWithNibName:0 bundle:0];
  if (v5)
  {
    v6 = [identifierCopy copy];
    applicationIdentifier = v5->_applicationIdentifier;
    v5->_applicationIdentifier = v6;

    v8 = [[RideBookingRideStatusObserverProxy alloc] initWithDelegate:v5];
    rideStatusObserverProxy = v5->_rideStatusObserverProxy;
    v5->_rideStatusObserverProxy = v8;

    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_10095D4C8;
    v14[3] = &unk_10162F890;
    v15 = identifierCopy;
    v10 = [_MXExtensionManager _lookupPolicyWithBlock:v14];
    v11 = [_MXExtensionManager managerWithLookupPolicy:v10 delegate:v5];
    extensionManager = v5->_extensionManager;
    v5->_extensionManager = v11;
  }

  return v5;
}

@end