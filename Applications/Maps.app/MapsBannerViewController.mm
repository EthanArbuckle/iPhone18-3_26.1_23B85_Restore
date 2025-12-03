@interface MapsBannerViewController
- (BNBannerSource)target;
- (BOOL)_shouldExpandForGuidanceState:(id)state;
- (BOOL)_useSignificantUpdateSPI;
- (MapsBannerViewController)initWithRequestId:(id)id target:(id)target bannerView:(id)view delegate:(id)delegate aperturePresentation:(BOOL)presentation;
- (MapsBannerViewControllerDelegate)delegate;
- (NSString)description;
- (SBUISystemApertureAccessoryView)detachedMinimalView;
- (SBUISystemApertureAccessoryView)leadingView;
- (SBUISystemApertureAccessoryView)minimalView;
- (SBUISystemApertureAccessoryView)trailingView;
- (UITapGestureRecognizer)knobSelectRecognizer;
- (double)approximateWidth;
- (double)displayWidth;
- (id)_contentView;
- (id)accessibilityIdentifier;
- (id)systemApertureElementViewController;
- (void)_dismissBannerWithReason:(id)reason;
- (void)_handleBackGesture:(id)gesture;
- (void)_handleSwipeGesture:(id)gesture;
- (void)_handleTapOnContent:(id)content;
- (void)_openMaps;
- (void)_performViewWillAppear;
- (void)_requestAlertingAssertionIfNecessary;
- (void)_revertToPrimaryBannerView;
- (void)_revertToPrimaryBannerViewAfterDelay;
- (void)_sceneDidActivate:(id)activate;
- (void)_setApertureExpansionTimeout;
- (void)_setTimeout;
- (void)_updateShowsControls;
- (void)_wheelChangedWithEvent:(id)event;
- (void)generateAttachmentsForRadarDraft:(id)draft withCompletion:(id)completion;
- (void)loadView;
- (void)postTemporaryAlternateBannerView:(id)view;
- (void)presentableDidAppearAsBanner:(id)banner;
- (void)presentableDidDisappearAsBanner:(id)banner withReason:(id)reason;
- (void)presentableWillAppearAsBanner:(id)banner;
- (void)presentableWillDisappearAsBanner:(id)banner withReason:(id)reason;
- (void)presentableWillNotAppearAsBanner:(id)banner withReason:(id)reason;
- (void)setActiveLayoutMode:(int64_t)mode;
- (void)setPreferredContentSize:(CGSize)size;
- (void)updateFromGuidanceState:(id)state;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
- (void)viewWillLayoutSubviewsWithTransitionCoordinator:(id)coordinator;
@end

@implementation MapsBannerViewController

- (double)displayWidth
{
  cachedDisplayWidth = self->_cachedDisplayWidth;
  if (cachedDisplayWidth == -1.0)
  {
    WeakRetained = objc_loadWeakRetained(&self->_target);
    v12 = 0;
    v5 = [WeakRetained layoutDescriptionWithError:&v12];
    v6 = v12;

    if (v5)
    {
      [v5 presentationSize];
      cachedDisplayWidth = v7;
      self->_cachedDisplayWidth = v7;
    }

    else
    {
      v8 = sub_100032C3C();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        v9 = objc_loadWeakRetained(&self->_target);
        *buf = 138412546;
        v14 = v9;
        v15 = 2112;
        v16 = v6;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "Unable to determine layout for target: %@ error: %@", buf, 0x16u);
      }

      [(MapsBannerViewController *)self approximateWidth];
      cachedDisplayWidth = v10;
    }
  }

  return cachedDisplayWidth;
}

- (NSString)description
{
  v7.receiver = self;
  v7.super_class = MapsBannerViewController;
  v3 = [(MapsBannerViewController *)&v7 description];
  requestIdentifier = [(MapsBannerViewController *)self requestIdentifier];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, requestIdentifier];

  return v5;
}

- (void)_updateShowsControls
{
  bannerView = [(MapsBannerViewController *)self bannerView];
  item = [bannerView item];
  guidanceState = [item guidanceState];

  isInArrivalState = [guidanceState isInArrivalState];
  isInParkingState = [guidanceState isInParkingState];
  currentLegIndex = [guidanceState currentLegIndex];
  numberOfLegs = [guidanceState numberOfLegs];
  v36 = isInParkingState;
  v8 = (isInArrivalState | isInParkingState) & 1;
  if (self->_didShowControlsForArrival && ((isInArrivalState | isInParkingState) & 1) == 0)
  {
    systemApertureElementContext = [(MapsBannerViewController *)self systemApertureElementContext];
    [systemApertureElementContext requestTransitionToPreferredLayoutMode];
  }

  self->_didShowControlsForArrival = v8;
  activeLayoutMode = [(MapsBannerViewController *)self activeLayoutMode];
  isValid = [(SBUISystemApertureAutomaticallyInvalidatable *)self->_alertingAssertion isValid];
  v12 = isValid;
  v13 = (activeLayoutMode > 3) & (isValid ^ 1);
  bannerView2 = [(MapsBannerViewController *)self bannerView];
  showsControls = [bannerView2 showsControls];

  v16 = v8 | v13;
  if ((v8 | v13) != showsControls)
  {
    v17 = sub_100032C3C();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      if (v16)
      {
        v18 = @"YES";
      }

      else
      {
        v18 = @"NO";
      }

      v32 = v18;
      if (isInArrivalState)
      {
        v19 = @"YES";
      }

      else
      {
        v19 = @"NO";
      }

      v31 = v19;
      if (v36)
      {
        v20 = @"YES";
      }

      else
      {
        v20 = @"NO";
      }

      v37 = v20;
      if (currentLegIndex + 1 >= numberOfLegs)
      {
        v21 = @"YES";
      }

      else
      {
        v21 = @"NO";
      }

      v35 = v21;
      if (v8)
      {
        v22 = @"YES";
      }

      else
      {
        v22 = @"NO";
      }

      v30 = v22;
      if (activeLayoutMode <= 3)
      {
        v23 = @"NO";
      }

      else
      {
        v23 = @"YES";
      }

      v29 = v23;
      if (v12)
      {
        v24 = @"NO";
      }

      else
      {
        v24 = @"YES";
      }

      v25 = v24;
      if (v13)
      {
        v26 = @"YES";
      }

      else
      {
        v26 = @"NO";
      }

      v16 = v16;
      v27 = v26;
      *buf = 138545154;
      v39 = v32;
      v40 = 2114;
      v41 = v31;
      v42 = 2114;
      v43 = v37;
      v44 = 2114;
      v45 = v35;
      v46 = 2114;
      v47 = v30;
      v48 = 2114;
      v49 = v29;
      v50 = 2114;
      v51 = v25;
      v52 = 2114;
      v53 = v27;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, "[Persistent Banners] Setting showsControls = %{public}@ (isArrived:%{public}@, isParked: %{public}@, currentLegIsLast:%{public}@, shouldShowControlsForArrival:%{public}@, isExpanded:%{public}@, userExpanded:%{public}@, shouldShowControlsForUserExpansion:%{public}@)", buf, 0x52u);
    }
  }

  bannerView3 = [(MapsBannerViewController *)self bannerView];
  [bannerView3 setShowsControls:v16];
}

- (SBUISystemApertureAccessoryView)trailingView
{
  if (objc_opt_respondsToSelector())
  {
    trailingView = [(BannerView *)self->_bannerView trailingView];
  }

  else
  {
    trailingView = 0;
  }

  return trailingView;
}

- (SBUISystemApertureAccessoryView)minimalView
{
  if (objc_opt_respondsToSelector())
  {
    minimalView = [(BannerView *)self->_bannerView minimalView];
  }

  else
  {
    minimalView = 0;
  }

  return minimalView;
}

- (SBUISystemApertureAccessoryView)detachedMinimalView
{
  if (objc_opt_respondsToSelector())
  {
    detachedMinimalView = [(BannerView *)self->_bannerView detachedMinimalView];
  }

  else
  {
    detachedMinimalView = 0;
  }

  return detachedMinimalView;
}

- (SBUISystemApertureAccessoryView)leadingView
{
  if (objc_opt_respondsToSelector())
  {
    leadingView = [(BannerView *)self->_bannerView leadingView];
  }

  else
  {
    leadingView = 0;
  }

  return leadingView;
}

- (BNBannerSource)target
{
  WeakRetained = objc_loadWeakRetained(&self->_target);

  return WeakRetained;
}

- (BOOL)_useSignificantUpdateSPI
{
  if (qword_10195E810 != -1)
  {
    dispatch_once(&qword_10195E810, &stru_10163B078);
  }

  return byte_101931348;
}

- (MapsBannerViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)generateAttachmentsForRadarDraft:(id)draft withCompletion:(id)completion
{
  draftCopy = draft;
  completionCopy = completion;
  if (!completionCopy)
  {
    v26 = sub_10006D178();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315906;
      selfCopy4 = "[MapsBannerViewController generateAttachmentsForRadarDraft:withCompletion:]";
      v35 = 2080;
      v36 = "MapsBannerViewController.m";
      v37 = 1024;
      v38 = 831;
      v39 = 2080;
      v40 = "completion != nil";
      _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_ERROR, "%s [%s:%d] Invalid parameter not satisfying: %s", buf, 0x26u);
    }

    if (sub_100E03634())
    {
      v27 = sub_10006D178();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        v28 = +[NSThread callStackSymbols];
        *buf = 138412290;
        selfCopy4 = v28;
        _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
      }
    }
  }

  label = dispatch_queue_get_label(&_dispatch_main_q);
  v9 = dispatch_queue_get_label(0);
  if (label != v9)
  {
    v10 = !label || v9 == 0;
    if (v10 || strcmp(label, v9))
    {
      v21 = sub_10006D178();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        v22 = dispatch_queue_get_label(&_dispatch_main_q);
        v23 = dispatch_queue_get_label(0);
        *buf = 136316418;
        selfCopy4 = "[MapsBannerViewController generateAttachmentsForRadarDraft:withCompletion:]";
        v35 = 2080;
        v36 = "MapsBannerViewController.m";
        v37 = 1024;
        v38 = 832;
        v39 = 2080;
        v40 = "dispatch_get_main_queue()";
        v41 = 2080;
        v42 = v22;
        v43 = 2080;
        v44 = v23;
        _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion on queue failed: %s/%s; actual queue: %s", buf, 0x3Au);
      }

      if (sub_100E03634())
      {
        v24 = sub_10006D178();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
        {
          v25 = +[NSThread callStackSymbols];
          *buf = 138412290;
          selfCopy4 = v25;
          _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
        }
      }
    }
  }

  viewIfLoaded = [(MapsBannerViewController *)self viewIfLoaded];

  if (viewIfLoaded)
  {
    view = [(MapsBannerViewController *)self view];
    window = [view window];
    windowScene = [window windowScene];

    if (windowScene)
    {
      view2 = [(MapsBannerViewController *)self view];
      window2 = [view2 window];
      windowScene2 = [window2 windowScene];
      activationState = [windowScene2 activationState];

      if (activationState)
      {
        v19 = sub_100032C3C();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
        {
          *buf = 134349056;
          selfCopy4 = self;
          v20 = "[%{public}p] Activation state is not foreground active; not generating radar attachments";
LABEL_20:
          _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEBUG, v20, buf, 0xCu);
        }
      }

      else
      {
        if (!_UISolariumEnabled())
        {
          objc_initWeak(buf, self);
          block[0] = _NSConcreteStackBlock;
          block[1] = 3221225472;
          block[2] = sub_100B6A24C;
          block[3] = &unk_10165DEA0;
          objc_copyWeak(&v32, buf);
          v30 = draftCopy;
          v31 = completionCopy;
          dispatch_async(&_dispatch_main_q, block);

          objc_destroyWeak(&v32);
          objc_destroyWeak(buf);
          goto LABEL_22;
        }

        v19 = sub_100032C3C();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
        {
          *buf = 134349056;
          selfCopy4 = self;
          v20 = "[%{public}p] Solarium is enabled; not generating radar attachments";
          goto LABEL_20;
        }
      }
    }

    else
    {
      v19 = sub_100032C3C();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
      {
        *buf = 134349056;
        selfCopy4 = self;
        v20 = "[%{public}p] No window scene; not generating radar attachments";
        goto LABEL_20;
      }
    }
  }

  else
  {
    v19 = sub_100032C3C();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
    {
      *buf = 134349056;
      selfCopy4 = self;
      v20 = "[%{public}p] View is not loaded yet; not generating radar attachments";
      goto LABEL_20;
    }
  }

  completionCopy[2](completionCopy);
LABEL_22:
}

- (void)_wheelChangedWithEvent:(id)event
{
  eventCopy = event;
  if ([eventCopy type] == 7 && objc_msgSend(eventCopy, "subtype") - 200 <= 2)
  {
    [(MapsBannerViewController *)self _dismissBannerWithReason:@"DismissInteraction"];
  }

  else
  {
    v5.receiver = self;
    v5.super_class = MapsBannerViewController;
    [(MapsBannerViewController *)&v5 _wheelChangedWithEvent:eventCopy];
  }
}

- (void)_handleBackGesture:(id)gesture
{
  if ([gesture state] == 3)
  {

    [(MapsBannerViewController *)self _dismissBannerWithReason:@"DismissInteraction"];
  }
}

- (void)_handleSwipeGesture:(id)gesture
{
  if ([gesture direction] == 4)
  {

    [(MapsBannerViewController *)self _dismissBannerWithReason:@"DismissInteraction"];
  }
}

- (void)_handleTapOnContent:(id)content
{
  bannerView = [(MapsBannerViewController *)self bannerView];
  bannerType = [bannerView bannerType];

  if (bannerType == 2)
  {
    [GEOAPPortal captureUserAction:9003 target:38 value:0];
  }

  [(MapsBannerViewController *)self _openMaps];
}

- (void)_openMaps
{
  v3 = sub_100032C3C();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    requestIdentifier = [(MapsBannerViewController *)self requestIdentifier];
    *buf = 138412290;
    v18 = requestIdentifier;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "Pressed banner: %@", buf, 0xCu);
  }

  v5 = objc_opt_new();
  view = [(MapsBannerViewController *)self view];
  window = [view window];
  windowScene = [window windowScene];
  _currentOpenApplicationEndpoint = [windowScene _currentOpenApplicationEndpoint];
  [v5 setTargetConnectionEndpoint:_currentOpenApplicationEndpoint];

  v10 = +[LSApplicationWorkspace defaultWorkspace];
  [v10 openApplicationWithBundleIdentifier:@"com.apple.Maps" configuration:v5 completionHandler:&stru_10163B0C0];

  target = [(MapsBannerViewController *)self target];
  v16 = 0;
  v12 = [target revokeAllPresentablesWithReason:@"Entering Maps" userInfo:&__NSDictionary0__struct error:&v16];
  v13 = v16;

  if (!v12)
  {
    v14 = sub_100032C3C();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      requestIdentifier2 = [(MapsBannerViewController *)self requestIdentifier];
      *buf = 138412546;
      v18 = requestIdentifier2;
      v19 = 2112;
      v20 = v13;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "Failed to revoke banner %@; error: %@", buf, 0x16u);
    }
  }
}

- (void)setActiveLayoutMode:(int64_t)mode
{
  v5 = sub_100032C3C();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v6 = sub_100B6A9BC(self->_activeLayoutMode);
    v7 = sub_100B6A9BC(mode);
    v13 = 138412546;
    v14 = v6;
    v15 = 2112;
    v16 = v7;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "[Persistent Banners] Active Layout Mode %@ -> %@", &v13, 0x16u);
  }

  if (self->_alternateBannerView)
  {
    v8 = &OBJC_IVAR___MapsBannerViewController__alternateBannerConstraints;
  }

  else
  {
    v8 = &OBJC_IVAR___MapsBannerViewController__bannerConstraints;
  }

  v9 = [*(&self->super.super.super.isa + *v8) arrayByAddingObject:self->_widthConstraint];
  activeLayoutMode = self->_activeLayoutMode;
  if (mode > 3 || activeLayoutMode == mode)
  {
    if (mode == 4 && activeLayoutMode != 4)
    {
      view = [(MapsBannerViewController *)self view];
      window = [view window];
      [window frame];
      [(NSLayoutConstraint *)self->_widthConstraint setConstant:CGRectGetWidth(v17)];

      [NSLayoutConstraint activateConstraints:v9];
    }
  }

  else
  {
    [NSLayoutConstraint deactivateConstraints:v9];
  }

  self->_activeLayoutMode = mode;
}

- (id)systemApertureElementViewController
{
  v3 = sub_100032C3C();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "[Persistent Banners] Returning self from systemApertureElementViewController", v5, 2u);
  }

  return self;
}

- (void)_requestAlertingAssertionIfNecessary
{
  activeLayoutMode = [(MapsBannerViewController *)self activeLayoutMode];
  isValid = [(SBUISystemApertureAutomaticallyInvalidatable *)self->_alertingAssertion isValid];
  if (activeLayoutMode < 4)
  {
LABEL_6:
    isValid2 = [(SBUISystemApertureAutomaticallyInvalidatable *)self->_alertingAssertion isValid];
    v10 = sub_100032C3C();
    v11 = os_log_type_enabled(v10, OS_LOG_TYPE_INFO);
    if (isValid2)
    {
      if (v11)
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "[Persistent Banners] Resetting alerting assertion invalidation timer", buf, 2u);
      }

      [(MapsBannerViewController *)self _setApertureExpansionTimeout];
    }

    else
    {
      if (v11)
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "[Persistent Banners] Taking alerting assertion", buf, 2u);
      }

      systemApertureElementContext = [(MapsBannerViewController *)self systemApertureElementContext];
      requestAlertingAssertion = [systemApertureElementContext requestAlertingAssertion];
      alertingAssertion = self->_alertingAssertion;
      self->_alertingAssertion = requestAlertingAssertion;

      [(SBUISystemApertureAutomaticallyInvalidatable *)self->_alertingAssertion setAutomaticallyInvalidatable:0];
      [(MapsBannerViewController *)self _setApertureExpansionTimeout];
      objc_initWeak(buf, self);
      v15 = self->_alertingAssertion;
      v17[0] = _NSConcreteStackBlock;
      v17[1] = 3221225472;
      v17[2] = sub_100B6AD50;
      v17[3] = &unk_10163B0A0;
      objc_copyWeak(&v18, buf);
      [(SBUISystemApertureAutomaticallyInvalidatable *)v15 addInvalidationBlock:v17];
      objc_destroyWeak(&v18);
      objc_destroyWeak(buf);
    }

    return;
  }

  v5 = isValid;
  v6 = sub_100032C3C();
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_INFO);
  if (v5)
  {
    if (v7)
    {
      v8 = sub_100B6A9BC(activeLayoutMode);
      *buf = 138412290;
      v20 = v8;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "[Persistent Banners] Already expanded (%@); will use alerting assertion anyway.", buf, 0xCu);
    }

    goto LABEL_6;
  }

  if (v7)
  {
    v16 = sub_100B6A9BC(activeLayoutMode);
    *buf = 138412290;
    v20 = v16;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "[Persistent Banners] User expanded (%@); will not use alerting assertion.", buf, 0xCu);
  }
}

- (void)presentableWillNotAppearAsBanner:(id)banner withReason:(id)reason
{
  bannerCopy = banner;
  reasonCopy = reason;
  v8 = sub_100032C3C();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v12 = 136315650;
    v13 = "[MapsBannerViewController presentableWillNotAppearAsBanner:withReason:]";
    v14 = 2112;
    v15 = bannerCopy;
    v16 = 2112;
    v17 = reasonCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "%s %@ %@", &v12, 0x20u);
  }

  delegate = [(MapsBannerViewController *)self delegate];
  v10 = objc_opt_respondsToSelector();

  if (v10)
  {
    delegate2 = [(MapsBannerViewController *)self delegate];
    [delegate2 presentableDidDisappearAsBanner:self withReason:reasonCopy];
  }
}

- (void)presentableDidDisappearAsBanner:(id)banner withReason:(id)reason
{
  bannerCopy = banner;
  reasonCopy = reason;
  v8 = sub_100032C3C();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v13 = 136315650;
    v14 = "[MapsBannerViewController presentableDidDisappearAsBanner:withReason:]";
    v15 = 2112;
    v16 = bannerCopy;
    v17 = 2112;
    v18 = reasonCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "%s %@ %@", &v13, 0x20u);
  }

  bannerView = [(MapsBannerViewController *)self bannerView];
  if ((objc_opt_respondsToSelector() & 1) != 0 && (([reasonCopy isEqualToString:@"BNBannerRevocationReasonDragDismissal"] & 1) != 0 || objc_msgSend(reasonCopy, "isEqualToString:", @"DismissInteraction")))
  {
    [bannerView wasDismissedByUser];
  }

  delegate = [(MapsBannerViewController *)self delegate];
  v11 = objc_opt_respondsToSelector();

  if (v11)
  {
    delegate2 = [(MapsBannerViewController *)self delegate];
    [delegate2 presentableDidDisappearAsBanner:self withReason:reasonCopy];
  }
}

- (void)presentableWillDisappearAsBanner:(id)banner withReason:(id)reason
{
  bannerCopy = banner;
  reasonCopy = reason;
  v8 = sub_100032C3C();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v12 = 136315650;
    v13 = "[MapsBannerViewController presentableWillDisappearAsBanner:withReason:]";
    v14 = 2112;
    v15 = bannerCopy;
    v16 = 2112;
    v17 = reasonCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "%s %@ %@", &v12, 0x20u);
  }

  [(MapsBannerViewController *)self setTimeoutTimer:0];
  delegate = [(MapsBannerViewController *)self delegate];
  v10 = objc_opt_respondsToSelector();

  if (v10)
  {
    delegate2 = [(MapsBannerViewController *)self delegate];
    [delegate2 presentableWillDisappearAsBanner:self withReason:reasonCopy];
  }
}

- (void)presentableDidAppearAsBanner:(id)banner
{
  bannerCopy = banner;
  v5 = sub_100032C3C();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v11 = 136315394;
    v12 = "[MapsBannerViewController presentableDidAppearAsBanner:]";
    v13 = 2112;
    v14 = bannerCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%s %@", &v11, 0x16u);
  }

  bannerView = [(MapsBannerViewController *)self bannerView];
  bannerType = [bannerView bannerType];

  if (bannerType == 2)
  {
    [GEOAPPortal captureUserAction:9002 target:38 value:0];
  }

  [(MapsBannerViewController *)self _setTimeout];
  delegate = [(MapsBannerViewController *)self delegate];
  v9 = objc_opt_respondsToSelector();

  if (v9)
  {
    delegate2 = [(MapsBannerViewController *)self delegate];
    [delegate2 presentableDidAppearAsBanner:self];
  }
}

- (void)presentableWillAppearAsBanner:(id)banner
{
  bannerCopy = banner;
  v5 = sub_100032C3C();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v11 = 136315394;
    v12 = "[MapsBannerViewController presentableWillAppearAsBanner:]";
    v13 = 2112;
    v14 = bannerCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%s %@", &v11, 0x16u);
  }

  bannerView = self->_bannerView;
  view = [(MapsBannerViewController *)self view];
  [view frame];
  [(BannerView *)bannerView sizeThatFits:v8, 400.0];
  [(MapsBannerViewController *)self setPreferredContentSize:?];

  delegate = [(MapsBannerViewController *)self delegate];
  LOBYTE(view) = objc_opt_respondsToSelector();

  if (view)
  {
    delegate2 = [(MapsBannerViewController *)self delegate];
    [delegate2 presentableWillAppearAsBanner:self];
  }
}

- (void)_dismissBannerWithReason:(id)reason
{
  reasonCopy = reason;
  v5 = sub_100032C3C();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    requestIdentifier = [(MapsBannerViewController *)self requestIdentifier];
    *buf = 138412546;
    v15 = requestIdentifier;
    v16 = 2112;
    v17 = reasonCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Revoking banner: %@ with reason: %@", buf, 0x16u);
  }

  target = [(MapsBannerViewController *)self target];
  requestIdentifier2 = [(MapsBannerViewController *)self requestIdentifier];
  v13 = 0;
  v9 = [target revokePresentableWithRequestIdentifier:requestIdentifier2 reason:reasonCopy animated:1 userInfo:&__NSDictionary0__struct error:&v13];
  v10 = v13;

  if (!v9)
  {
    v11 = sub_100032C3C();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      requestIdentifier3 = [(MapsBannerViewController *)self requestIdentifier];
      *buf = 138412546;
      v15 = requestIdentifier3;
      v16 = 2112;
      v17 = v10;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "Failed to revoke banner %@; error: %@", buf, 0x16u);
    }
  }

  [(MapsBannerViewController *)self setTimeoutTimer:0];
}

- (void)_revertToPrimaryBannerView
{
  v3 = sub_100032C3C();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "[Persistent Banners] removing alerting expansion reason", buf, 2u);
  }

  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100B6B7E8;
  v6[3] = &unk_101661B18;
  v6[4] = self;
  v4 = objc_retainBlock(v6);
  if ([(MapsBannerViewController *)self _useSignificantUpdateSPI]&& [(SBUISystemApertureAutomaticallyInvalidatable *)self->_alertingAssertion isValid])
  {
    systemApertureElementContext = [(MapsBannerViewController *)self systemApertureElementContext];
    [systemApertureElementContext setElementNeedsLayoutUpdateWithOptions:1 coordinatedAnimations:v4];
  }

  else
  {
    (v4[2])(v4);
  }
}

- (void)_revertToPrimaryBannerViewAfterDelay
{
  objc_initWeak(&location, self);
  if (self->_aperturePresentation)
  {
    v3 = &_dispatch_main_q;
    v5 = _NSConcreteStackBlock;
    v6 = 3221225472;
    v7 = sub_100B6B9B8;
    v8 = &unk_1016616E8;
    objc_copyWeak(&v9, &location);
    v4 = [GCDTimer scheduledTimerWithTimeInterval:&_dispatch_main_q queue:&v5 block:10.0];
    [(MapsBannerViewController *)self setAlternateBannerActiveTimer:v4, v5, v6, v7, v8];

    objc_destroyWeak(&v9);
  }

  objc_destroyWeak(&location);
}

- (void)_setApertureExpansionTimeout
{
  objc_initWeak(&location, self);
  v3 = &_dispatch_main_q;
  v5 = _NSConcreteStackBlock;
  v6 = 3221225472;
  v7 = sub_100B6BB74;
  v8 = &unk_1016616E8;
  objc_copyWeak(&v9, &location);
  v4 = [GCDTimer scheduledTimerWithTimeInterval:&_dispatch_main_q queue:&v5 block:7.0];
  [(MapsBannerViewController *)self setApertureExpansionTimer:v4, v5, v6, v7, v8];

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

- (void)_setTimeout
{
  objc_initWeak(&location, self);
  if (!self->_aperturePresentation)
  {
    v3 = +[NSUserDefaults standardUserDefaults];
    v4 = [v3 BOOLForKey:@"__internal_MapsDebugForceStickyBanners"];

    if ((v4 & 1) == 0)
    {
      bannerView = [(MapsBannerViewController *)self bannerView];
      item = [bannerView item];
      guidanceState = [item guidanceState];
      if ([guidanceState isSticky])
      {
        target = [(MapsBannerViewController *)self target];
        v9 = [target destination] == 1;

        if (!v9)
        {
          goto LABEL_10;
        }
      }

      else
      {
      }

      v10 = sub_100032C3C();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        requestIdentifier = [(MapsBannerViewController *)self requestIdentifier];
        *buf = 138412290;
        v21 = requestIdentifier;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "Setting timer to dismiss banner: %@", buf, 0xCu);
      }

      v12 = &_dispatch_main_q;
      v14 = _NSConcreteStackBlock;
      v15 = 3221225472;
      v16 = sub_100B6BEBC;
      v17 = &unk_1016616E8;
      objc_copyWeak(&v18, &location);
      v13 = [GCDTimer scheduledTimerWithTimeInterval:&_dispatch_main_q queue:&v14 block:10.0];
      [(MapsBannerViewController *)self setTimeoutTimer:v13, v14, v15, v16, v17];

      objc_destroyWeak(&v18);
    }
  }

LABEL_10:
  objc_destroyWeak(&location);
}

- (UITapGestureRecognizer)knobSelectRecognizer
{
  knobSelectRecognizer = self->_knobSelectRecognizer;
  if (!knobSelectRecognizer)
  {
    v4 = [[UITapGestureRecognizer alloc] initWithTarget:self action:"_handleTapOnContent:"];
    v5 = self->_knobSelectRecognizer;
    self->_knobSelectRecognizer = v4;

    [(UITapGestureRecognizer *)self->_knobSelectRecognizer setAllowedPressTypes:&off_1016ED5E0];
    knobSelectRecognizer = self->_knobSelectRecognizer;
  }

  return knobSelectRecognizer;
}

- (void)setPreferredContentSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  self->_deferredContentSize = size;
  waitingForDisplay = self->_waitingForDisplay;
  v7 = sub_100032C3C();
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_INFO);
  if (waitingForDisplay)
  {
    if (v8)
    {
      v16.width = width;
      v16.height = height;
      v9 = NSStringFromCGSize(v16);
      *buf = 138412546;
      v13 = v9;
      v14 = 2112;
      selfCopy2 = self;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "Deferring update to size %@ for %@", buf, 0x16u);
    }
  }

  else
  {
    if (v8)
    {
      v17.width = width;
      v17.height = height;
      v10 = NSStringFromCGSize(v17);
      *buf = 138412546;
      v13 = v10;
      v14 = 2112;
      selfCopy2 = self;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "Setting banner size to %@ for %@", buf, 0x16u);
    }

    v11.receiver = self;
    v11.super_class = MapsBannerViewController;
    [(MapsBannerViewController *)&v11 setPreferredContentSize:width, height];
  }
}

- (void)postTemporaryAlternateBannerView:(id)view
{
  viewCopy = view;
  alternateBannerActiveTimer = [(MapsBannerViewController *)self alternateBannerActiveTimer];

  if (!alternateBannerActiveTimer)
  {
    item = [viewCopy item];
    guidanceState = [item guidanceState];
    v8 = [(MapsBannerViewController *)self _shouldExpandForGuidanceState:guidanceState];

    if (v8)
    {
      v13 = _NSConcreteStackBlock;
      v14 = 3221225472;
      v15 = sub_100B6C314;
      v16 = &unk_101661A90;
      selfCopy = self;
      v18 = viewCopy;
      v9 = objc_retainBlock(&v13);
      if ([(MapsBannerViewController *)self _useSignificantUpdateSPI:v13]&& [(SBUISystemApertureAutomaticallyInvalidatable *)self->_alertingAssertion isValid])
      {
        systemApertureElementContext = [(MapsBannerViewController *)self systemApertureElementContext];
        [systemApertureElementContext setElementNeedsLayoutUpdateWithOptions:1 coordinatedAnimations:v9];
      }

      else
      {
        (v9[2])(v9);
      }

      v11 = sub_100032C3C();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        alternateBannerView = self->_alternateBannerView;
        *buf = 138412290;
        v20 = alternateBannerView;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "[Persistent Banners] Will expand for alerting view %@", buf, 0xCu);
      }

      [(MapsBannerViewController *)self _requestAlertingAssertionIfNecessary];
      [(MapsBannerViewController *)self _revertToPrimaryBannerViewAfterDelay];
      if ([self->_alternateBannerView bannerType]== 2)
      {
        AudioServicesPlaySystemSoundWithCompletion(0x55Au, 0);
      }
    }
  }
}

- (BOOL)_shouldExpandForGuidanceState:(id)state
{
  stateCopy = state;
  v4 = +[CarDisplayController sharedInstance];
  isCurrentlyConnectedToAnyCarScene = [v4 isCurrentlyConnectedToAnyCarScene];

  if (isCurrentlyConnectedToAnyCarScene)
  {
    v6 = 0;
    goto LABEL_21;
  }

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v7 = +[UIApplication sharedApplication];
  connectedScenes = [v7 connectedScenes];

  v9 = [connectedScenes countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (!v9)
  {
LABEL_14:

LABEL_17:
    lastSceneDeactivationTime = [stateCopy lastSceneDeactivationTime];

    if (lastSceneDeactivationTime)
    {
      lastSceneDeactivationTime2 = [stateCopy lastSceneDeactivationTime];
      [lastSceneDeactivationTime2 timeIntervalSinceNow];
      v20 = v19;
      GEOConfigGetDouble();
      v6 = v20 < -v21;

      v14 = 0;
    }

    else
    {
      v14 = 0;
      v6 = 1;
    }

    goto LABEL_20;
  }

  v10 = v9;
  v11 = *v24;
LABEL_5:
  v12 = 0;
  while (1)
  {
    if (*v24 != v11)
    {
      objc_enumerationMutation(connectedScenes);
    }

    v13 = *(*(&v23 + 1) + 8 * v12);
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_12;
    }

    v14 = v13;
    if (![v14 activationState])
    {
      delegate = [v14 delegate];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if (isKindOfClass)
      {
        break;
      }
    }

LABEL_12:
    if (v10 == ++v12)
    {
      v10 = [connectedScenes countByEnumeratingWithState:&v23 objects:v27 count:16];
      if (v10)
      {
        goto LABEL_5;
      }

      goto LABEL_14;
    }
  }

  if (!v14)
  {
    goto LABEL_17;
  }

  v6 = 0;
LABEL_20:

LABEL_21:
  return v6;
}

- (void)updateFromGuidanceState:(id)state
{
  stateCopy = state;
  alternateBannerView = [(MapsBannerViewController *)self alternateBannerView];
  item = [alternateBannerView item];
  [item updateFromGuidanceState:stateCopy];

  alternateBannerView2 = [(MapsBannerViewController *)self alternateBannerView];
  [alternateBannerView2 updateFromBannerItem];

  activeLayoutMode = [(MapsBannerViewController *)self activeLayoutMode];
  bannerView = [(MapsBannerViewController *)self bannerView];
  item2 = [bannerView item];
  guidanceState = [item2 guidanceState];
  bannerView2 = [(MapsBannerViewController *)self bannerView];
  v13 = [guidanceState shouldExpandForSpokenEventFromGuidanceUpdate:stateCopy forType:{objc_msgSend(bannerView2, "bannerType")}];

  bannerView3 = [(MapsBannerViewController *)self bannerView];
  item3 = [bannerView3 item];
  guidanceState2 = [item3 guidanceState];
  bannerView4 = [(MapsBannerViewController *)self bannerView];
  bannerType = [bannerView4 bannerType];
  target = [(MapsBannerViewController *)self target];
  v20 = [guidanceState2 shouldPresentNextGuidanceUpdate:stateCopy forType:bannerType target:target];

  systemApertureElementContext = [(MapsBannerViewController *)self systemApertureElementContext];
  transitionContext = [systemApertureElementContext transitionContext];

  v23 = [(MapsBannerViewController *)self _useSignificantUpdateSPI]& v20;
  if (activeLayoutMode == 4)
  {
    v24 = 0;
  }

  else
  {
    v24 = v23;
  }

  v25 = v13 | v20;
  target2 = [(MapsBannerViewController *)self target];
  v27 = [target2 destination] != 1;

  v28 = v25 & v27;
  if (!GEOConfigGetBOOL() || (activeLayoutMode == 4 || !self->_aperturePresentation) | v28 & 1)
  {
    [(MapsBannerViewController *)self displayWidth];
    v30 = v29;
    bannerView5 = [(MapsBannerViewController *)self bannerView];
    [bannerView5 sizeThatFits:{v30, 400.0}];
    v33 = v32;

    [(MapsBannerViewController *)self setPreferredContentSize:v30, v33];
  }

  v34 = sub_100032C3C();
  if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
  {
    guidanceState3 = [stateCopy guidanceState];
    if (guidanceState3 >= 5)
    {
      v36 = [NSString stringWithFormat:@"?? - %lu", guidanceState3];
    }

    else
    {
      v36 = *(&off_10163B0E0 + guidanceState3);
    }

    v37 = v36;
    maneuver = [stateCopy maneuver];
    v39 = @"NO_TURN";
    switch(maneuver)
    {
      case 0:
        break;
      case 1:
        v39 = @"LEFT_TURN";
        break;
      case 2:
        v39 = @"RIGHT_TURN";
        break;
      case 3:
        v39 = @"STRAIGHT_AHEAD";
        break;
      case 4:
        v39 = @"U_TURN";
        break;
      case 5:
        v39 = @"FOLLOW_ROAD";
        break;
      case 6:
        v39 = @"ENTER_ROUNDABOUT";
        break;
      case 7:
        v39 = @"EXIT_ROUNDABOUT";
        break;
      case 11:
        v39 = @"OFF_RAMP";
        break;
      case 12:
        v39 = @"ON_RAMP";
        break;
      case 16:
        v39 = @"ARRIVE_END_OF_NAVIGATION";
        break;
      case 17:
        v39 = @"START_ROUTE";
        break;
      case 18:
        v39 = @"ARRIVE_AT_DESTINATION";
        break;
      case 20:
        v39 = @"KEEP_LEFT";
        break;
      case 21:
        v39 = @"KEEP_RIGHT";
        break;
      case 22:
        v39 = @"ENTER_FERRY";
        break;
      case 23:
        v39 = @"EXIT_FERRY";
        break;
      case 24:
        v39 = @"CHANGE_FERRY";
        break;
      case 25:
        v39 = @"START_ROUTE_WITH_U_TURN";
        break;
      case 26:
        v39 = @"U_TURN_AT_ROUNDABOUT";
        break;
      case 27:
        v39 = @"LEFT_TURN_AT_END";
        break;
      case 28:
        v39 = @"RIGHT_TURN_AT_END";
        break;
      case 29:
        v39 = @"HIGHWAY_OFF_RAMP_LEFT";
        break;
      case 30:
        v39 = @"HIGHWAY_OFF_RAMP_RIGHT";
        break;
      case 33:
        v39 = @"ARRIVE_AT_DESTINATION_LEFT";
        break;
      case 34:
        v39 = @"ARRIVE_AT_DESTINATION_RIGHT";
        break;
      case 35:
        v39 = @"U_TURN_WHEN_POSSIBLE";
        break;
      case 39:
        v39 = @"ARRIVE_END_OF_DIRECTIONS";
        break;
      case 41:
        v39 = @"ROUNDABOUT_EXIT_1";
        break;
      case 42:
        v39 = @"ROUNDABOUT_EXIT_2";
        break;
      case 43:
        v39 = @"ROUNDABOUT_EXIT_3";
        break;
      case 44:
        v39 = @"ROUNDABOUT_EXIT_4";
        break;
      case 45:
        v39 = @"ROUNDABOUT_EXIT_5";
        break;
      case 46:
        v39 = @"ROUNDABOUT_EXIT_6";
        break;
      case 47:
        v39 = @"ROUNDABOUT_EXIT_7";
        break;
      case 48:
        v39 = @"ROUNDABOUT_EXIT_8";
        break;
      case 49:
        v39 = @"ROUNDABOUT_EXIT_9";
        break;
      case 50:
        v39 = @"ROUNDABOUT_EXIT_10";
        break;
      case 51:
        v39 = @"ROUNDABOUT_EXIT_11";
        break;
      case 52:
        v39 = @"ROUNDABOUT_EXIT_12";
        break;
      case 53:
        v39 = @"ROUNDABOUT_EXIT_13";
        break;
      case 54:
        v39 = @"ROUNDABOUT_EXIT_14";
        break;
      case 55:
        v39 = @"ROUNDABOUT_EXIT_15";
        break;
      case 56:
        v39 = @"ROUNDABOUT_EXIT_16";
        break;
      case 57:
        v39 = @"ROUNDABOUT_EXIT_17";
        break;
      case 58:
        v39 = @"ROUNDABOUT_EXIT_18";
        break;
      case 59:
        v39 = @"ROUNDABOUT_EXIT_19";
        break;
      case 60:
        v39 = @"SHARP_LEFT_TURN";
        break;
      case 61:
        v39 = @"SHARP_RIGHT_TURN";
        break;
      case 62:
        v39 = @"SLIGHT_LEFT_TURN";
        break;
      case 63:
        v39 = @"SLIGHT_RIGHT_TURN";
        break;
      case 64:
        v39 = @"CHANGE_HIGHWAY";
        break;
      case 65:
        v39 = @"CHANGE_HIGHWAY_LEFT";
        break;
      case 66:
        v39 = @"CHANGE_HIGHWAY_RIGHT";
        break;
      case 80:
        v39 = @"TOLL_STATION";
        break;
      case 81:
        v39 = @"ENTER_TUNNEL";
        break;
      case 82:
        v39 = @"WAYPOINT_STOP";
        break;
      case 83:
        v39 = @"WAYPOINT_STOP_LEFT";
        break;
      case 84:
        v39 = @"WAYPOINT_STOP_RIGHT";
        break;
      case 85:
        v39 = @"RESUME_ROUTE";
        break;
      case 86:
        v39 = @"RESUME_ROUTE_WITH_U_TURN";
        break;
      case 87:
        v39 = @"CUSTOM";
        break;
      case 88:
        v39 = @"TURN_AROUND";
        break;
      default:
        v39 = [NSString stringWithFormat:@"(unknown: %i)", maneuver];
        break;
    }

    *buf = 138413314;
    v47 = v37;
    v48 = 2112;
    v49 = v39;
    v50 = 1024;
    v51 = activeLayoutMode == 4;
    v52 = 1024;
    v53 = transitionContext == 0;
    v54 = 1024;
    v55 = v23;
    _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_INFO, "[Persistent Banners] state:%@, maneuver:%@, isExpanded: %d, notAlreadyAnimating: %d, isSignificantUpdate: %d", buf, 0x28u);
  }

  bannerView6 = [(MapsBannerViewController *)self bannerView];
  item4 = [bannerView6 item];
  [item4 updateFromGuidanceState:stateCopy];

  if (activeLayoutMode != 4 || transitionContext)
  {
    bannerView7 = [(MapsBannerViewController *)self bannerView];
    [bannerView7 updateFromBannerItem];
  }

  else
  {
    bannerView7 = [(MapsBannerViewController *)self systemApertureElementContext];
    v45[0] = _NSConcreteStackBlock;
    v45[1] = 3221225472;
    v45[2] = sub_100B6D054;
    v45[3] = &unk_101661B18;
    v45[4] = self;
    [bannerView7 setElementNeedsLayoutUpdateWithOptions:v24 coordinatedAnimations:v45];
  }

  if (v28)
  {
    if (self->_aperturePresentation && [(MapsBannerViewController *)self _shouldExpandForGuidanceState:stateCopy])
    {
      v43 = sub_100032C3C();
      if (os_log_type_enabled(v43, OS_LOG_TYPE_INFO))
      {
        systemApertureElementContext2 = [(MapsBannerViewController *)self systemApertureElementContext];
        *buf = 138412290;
        v47 = systemApertureElementContext2;
        _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_INFO, "[Persistent Banners] Will expand on update %@", buf, 0xCu);
      }

      [(MapsBannerViewController *)self _requestAlertingAssertionIfNecessary];
    }

    [(MapsBannerViewController *)self _setTimeout];
  }
}

- (double)approximateWidth
{
  target = [(MapsBannerViewController *)self target];
  destination = [target destination];

  if (destination == 1)
  {
    v4 = +[CarDisplayController sharedInstance];
    screen = [v4 screen];
    v6 = screen;
    if (screen)
    {
      v7 = screen;
    }

    else
    {
      v7 = +[UIScreen mainScreen];
    }

    v8 = v7;
  }

  else
  {
    v8 = +[UIScreen mainScreen];
  }

  [v8 bounds];
  Width = CGRectGetWidth(v11);

  return Width;
}

- (id)accessibilityIdentifier
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

- (void)viewWillDisappear:(BOOL)disappear
{
  v7.receiver = self;
  v7.super_class = MapsBannerViewController;
  [(MapsBannerViewController *)&v7 viewWillDisappear:disappear];
  knobSelectRecognizer = [(MapsBannerViewController *)self knobSelectRecognizer];
  view = [knobSelectRecognizer view];
  knobSelectRecognizer2 = [(MapsBannerViewController *)self knobSelectRecognizer];
  [view removeGestureRecognizer:knobSelectRecognizer2];
}

- (void)viewWillLayoutSubviewsWithTransitionCoordinator:(id)coordinator
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_100B6D28C;
  v3[3] = &unk_101661710;
  v3[4] = self;
  [coordinator animateAlongsideTransition:v3 completion:0];
}

- (void)_performViewWillAppear
{
  if (!self->_didViewWillAppear)
  {
    v3 = sub_100032C3C();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      v4 = NSStringFromCGSize(self->_deferredContentSize);
      v10 = 134218242;
      selfCopy = self;
      v12 = 2114;
      v13 = v4;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "_performViewWillAppear %p, setting preferredContentSize %{public}@", &v10, 0x16u);
    }

    self->_didViewWillAppear = 1;
    self->_waitingForDisplay = 0;
    [(MapsBannerViewController *)self setPreferredContentSize:self->_deferredContentSize.width, self->_deferredContentSize.height];
    view = [(MapsBannerViewController *)self view];
    window = [view window];
    knobSelectRecognizer = [(MapsBannerViewController *)self knobSelectRecognizer];
    [window addGestureRecognizer:knobSelectRecognizer];

    bannerView = [(MapsBannerViewController *)self bannerView];
    bannerType = [bannerView bannerType];

    if (bannerType == 2)
    {
      AudioServicesPlaySystemSoundWithCompletion(0x55Au, 0);
    }
  }
}

- (void)_sceneDidActivate:(id)activate
{
  object = [activate object];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = object;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  _persistenceIdentifier = [v6 _persistenceIdentifier];

  requestIdentifier = [(MapsBannerViewController *)self requestIdentifier];
  v9 = [_persistenceIdentifier containsString:requestIdentifier];

  if (v9)
  {
    v10 = +[NSNotificationCenter defaultCenter];
    [v10 removeObserver:self name:UISceneDidActivateNotification object:0];

    [(MapsBannerViewController *)self _performViewWillAppear];
  }
}

- (void)viewDidDisappear:(BOOL)disappear
{
  v6.receiver = self;
  v6.super_class = MapsBannerViewController;
  [(MapsBannerViewController *)&v6 viewDidDisappear:disappear];
  bannerView = [(MapsBannerViewController *)self bannerView];
  [bannerView setIsVisible:0];

  alternateBannerView = [(MapsBannerViewController *)self alternateBannerView];
  [alternateBannerView setIsVisible:0];
}

- (void)viewWillAppear:(BOOL)appear
{
  v6.receiver = self;
  v6.super_class = MapsBannerViewController;
  [(MapsBannerViewController *)&v6 viewWillAppear:appear];
  [(MapsBannerViewController *)self _performViewWillAppear];
  bannerView = [(MapsBannerViewController *)self bannerView];
  [bannerView setIsVisible:1];

  alternateBannerView = [(MapsBannerViewController *)self alternateBannerView];
  [alternateBannerView setIsVisible:1];
}

- (id)_contentView
{
  view = [(MapsBannerViewController *)self view];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  view2 = [(MapsBannerViewController *)self view];
  v6 = view2;
  if (isKindOfClass)
  {
    customContentView = [view2 customContentView];
  }

  else
  {
    [view2 setAccessibilityIdentifier:@"MapsBannerView"];

    customContentView = [(MapsBannerViewController *)self view];
  }

  return customContentView;
}

- (void)viewDidLoad
{
  v21.receiver = self;
  v21.super_class = MapsBannerViewController;
  [(MapsBannerViewController *)&v21 viewDidLoad];
  _contentView = [(MapsBannerViewController *)self _contentView];
  [_contentView setAccessibilityIdentifier:@"MapsBannerViewContent"];
  [(BannerView *)self->_bannerView setTranslatesAutoresizingMaskIntoConstraints:0];
  [_contentView addSubview:self->_bannerView];
  leadingAnchor = [(BannerView *)self->_bannerView leadingAnchor];
  leadingAnchor2 = [_contentView leadingAnchor];
  v18 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v22[0] = v18;
  trailingAnchor = [(BannerView *)self->_bannerView trailingAnchor];
  trailingAnchor2 = [_contentView trailingAnchor];
  v15 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v22[1] = v15;
  topAnchor = [(BannerView *)self->_bannerView topAnchor];
  topAnchor2 = [_contentView topAnchor];
  v4 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v22[2] = v4;
  bottomAnchor = [(BannerView *)self->_bannerView bottomAnchor];
  bottomAnchor2 = [_contentView bottomAnchor];
  v7 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  v22[3] = v7;
  widthAnchor = [(BannerView *)self->_bannerView widthAnchor];
  widthAnchor2 = [_contentView widthAnchor];
  v10 = [widthAnchor constraintEqualToAnchor:widthAnchor2];
  v22[4] = v10;
  v11 = [NSArray arrayWithObjects:v22 count:5];
  bannerConstraints = self->_bannerConstraints;
  self->_bannerConstraints = v11;

  if (!self->_aperturePresentation)
  {
    [NSLayoutConstraint activateConstraints:self->_bannerConstraints];
  }
}

- (void)loadView
{
  if (self->_aperturePresentation)
  {
    v3 = [[UIView alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
  }

  else
  {
    target = [(MapsBannerViewController *)self target];
    destination = [target destination];

    v6 = &PLPlatterViewStyleNavigationBanner;
    if (destination == 1)
    {
      v6 = &PLPlatterViewStyleCarPlayBanner;
    }

    v3 = [PLPlatterView platterViewWithStyle:*v6];
  }

  v7 = v3;
  [(MapsBannerViewController *)self setView:v3];
}

- (MapsBannerViewController)initWithRequestId:(id)id target:(id)target bannerView:(id)view delegate:(id)delegate aperturePresentation:(BOOL)presentation
{
  presentationCopy = presentation;
  idCopy = id;
  targetCopy = target;
  viewCopy = view;
  delegateCopy = delegate;
  v34.receiver = self;
  v34.super_class = MapsBannerViewController;
  v16 = [(MapsBannerViewController *)&v34 initWithNibName:0 bundle:0];
  if (v16)
  {
    if ([targetCopy destination] == 1)
    {
      v17 = @"CarPlay-%@";
    }

    else
    {
      v17 = @"iOS-%@";
    }

    idCopy = [NSString stringWithFormat:v17, idCopy];
    requestIdentifier = v16->_requestIdentifier;
    v16->_requestIdentifier = idCopy;

    objc_storeWeak(&v16->_target, targetCopy);
    objc_storeStrong(&v16->_bannerView, view);
    objc_storeWeak(&v16->_delegate, delegateCopy);
    v16->_cachedDisplayWidth = -1.0;
    v16->_aperturePresentation = presentationCopy;
    view = [(MapsBannerViewController *)v16 view];
    widthAnchor = [view widthAnchor];
    v22 = [widthAnchor constraintEqualToConstant:0.0];
    widthConstraint = v16->_widthConstraint;
    v16->_widthConstraint = v22;

    [(MapsBannerViewController *)v16 approximateWidth];
    v25 = v24;
    [(BannerView *)v16->_bannerView sizeThatFits:?];
    [(MapsBannerViewController *)v16 setPreferredContentSize:v25];
    v16->_waitingForDisplay = 1;
    if (presentationCopy)
    {
      v16->_waitingForDisplay = 0;
      view2 = [(MapsBannerViewController *)v16 view];
      [view2 setTranslatesAutoresizingMaskIntoConstraints:0];
    }

    bannerView = v16->_bannerView;
    v28 = [[UITapGestureRecognizer alloc] initWithTarget:v16 action:"_handleTapOnContent:"];
    [(BannerView *)bannerView addGestureRecognizer:v28];

    v29 = [[UISwipeGestureRecognizer alloc] initWithTarget:v16 action:"_handleSwipeGesture:"];
    [v29 setAllowedTouchTypes:&off_1016ED5B0];
    [v29 setDirection:4];
    [(BannerView *)v16->_bannerView addGestureRecognizer:v29];
    v30 = [[UITapGestureRecognizer alloc] initWithTarget:v16 action:"_handleBackGesture:"];
    [v30 setAllowedPressTypes:&off_1016ED5C8];
    [(BannerView *)v16->_bannerView addGestureRecognizer:v30];
    if ([targetCopy destination] == 1)
    {
      v31 = +[NSNotificationCenter defaultCenter];
      [v31 addObserver:v16 selector:"_sceneDidActivate:" name:UISceneDidActivateNotification object:0];
    }

    v32 = +[MapsRadarController sharedInstance];
    [v32 addAttachmentProvider:v16];
  }

  return v16;
}

@end