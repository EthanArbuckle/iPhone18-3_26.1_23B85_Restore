@interface MapsBannerViewController
- (BNBannerSource)target;
- (BOOL)_shouldExpandForGuidanceState:(id)a3;
- (BOOL)_useSignificantUpdateSPI;
- (MapsBannerViewController)initWithRequestId:(id)a3 target:(id)a4 bannerView:(id)a5 delegate:(id)a6 aperturePresentation:(BOOL)a7;
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
- (void)_dismissBannerWithReason:(id)a3;
- (void)_handleBackGesture:(id)a3;
- (void)_handleSwipeGesture:(id)a3;
- (void)_handleTapOnContent:(id)a3;
- (void)_openMaps;
- (void)_performViewWillAppear;
- (void)_requestAlertingAssertionIfNecessary;
- (void)_revertToPrimaryBannerView;
- (void)_revertToPrimaryBannerViewAfterDelay;
- (void)_sceneDidActivate:(id)a3;
- (void)_setApertureExpansionTimeout;
- (void)_setTimeout;
- (void)_updateShowsControls;
- (void)_wheelChangedWithEvent:(id)a3;
- (void)generateAttachmentsForRadarDraft:(id)a3 withCompletion:(id)a4;
- (void)loadView;
- (void)postTemporaryAlternateBannerView:(id)a3;
- (void)presentableDidAppearAsBanner:(id)a3;
- (void)presentableDidDisappearAsBanner:(id)a3 withReason:(id)a4;
- (void)presentableWillAppearAsBanner:(id)a3;
- (void)presentableWillDisappearAsBanner:(id)a3 withReason:(id)a4;
- (void)presentableWillNotAppearAsBanner:(id)a3 withReason:(id)a4;
- (void)setActiveLayoutMode:(int64_t)a3;
- (void)setPreferredContentSize:(CGSize)a3;
- (void)updateFromGuidanceState:(id)a3;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
- (void)viewWillLayoutSubviewsWithTransitionCoordinator:(id)a3;
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
  v4 = [(MapsBannerViewController *)self requestIdentifier];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, v4];

  return v5;
}

- (void)_updateShowsControls
{
  v3 = [(MapsBannerViewController *)self bannerView];
  v4 = [v3 item];
  v5 = [v4 guidanceState];

  v6 = [v5 isInArrivalState];
  v7 = [v5 isInParkingState];
  v33 = [v5 currentLegIndex];
  v34 = [v5 numberOfLegs];
  v36 = v7;
  v8 = (v6 | v7) & 1;
  if (self->_didShowControlsForArrival && ((v6 | v7) & 1) == 0)
  {
    v9 = [(MapsBannerViewController *)self systemApertureElementContext];
    [v9 requestTransitionToPreferredLayoutMode];
  }

  self->_didShowControlsForArrival = v8;
  v10 = [(MapsBannerViewController *)self activeLayoutMode];
  v11 = [(SBUISystemApertureAutomaticallyInvalidatable *)self->_alertingAssertion isValid];
  v12 = v11;
  v13 = (v10 > 3) & (v11 ^ 1);
  v14 = [(MapsBannerViewController *)self bannerView];
  v15 = [v14 showsControls];

  v16 = v8 | v13;
  if ((v8 | v13) != v15)
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
      if (v6)
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
      if (v33 + 1 >= v34)
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
      if (v10 <= 3)
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

  v28 = [(MapsBannerViewController *)self bannerView];
  [v28 setShowsControls:v16];
}

- (SBUISystemApertureAccessoryView)trailingView
{
  if (objc_opt_respondsToSelector())
  {
    v3 = [(BannerView *)self->_bannerView trailingView];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (SBUISystemApertureAccessoryView)minimalView
{
  if (objc_opt_respondsToSelector())
  {
    v3 = [(BannerView *)self->_bannerView minimalView];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (SBUISystemApertureAccessoryView)detachedMinimalView
{
  if (objc_opt_respondsToSelector())
  {
    v3 = [(BannerView *)self->_bannerView detachedMinimalView];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (SBUISystemApertureAccessoryView)leadingView
{
  if (objc_opt_respondsToSelector())
  {
    v3 = [(BannerView *)self->_bannerView leadingView];
  }

  else
  {
    v3 = 0;
  }

  return v3;
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

- (void)generateAttachmentsForRadarDraft:(id)a3 withCompletion:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (!v7)
  {
    v26 = sub_10006D178();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315906;
      v34 = "[MapsBannerViewController generateAttachmentsForRadarDraft:withCompletion:]";
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
        v34 = v28;
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
        v34 = "[MapsBannerViewController generateAttachmentsForRadarDraft:withCompletion:]";
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
          v34 = v25;
          _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
        }
      }
    }
  }

  v11 = [(MapsBannerViewController *)self viewIfLoaded];

  if (v11)
  {
    v12 = [(MapsBannerViewController *)self view];
    v13 = [v12 window];
    v14 = [v13 windowScene];

    if (v14)
    {
      v15 = [(MapsBannerViewController *)self view];
      v16 = [v15 window];
      v17 = [v16 windowScene];
      v18 = [v17 activationState];

      if (v18)
      {
        v19 = sub_100032C3C();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
        {
          *buf = 134349056;
          v34 = self;
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
          v30 = v6;
          v31 = v7;
          dispatch_async(&_dispatch_main_q, block);

          objc_destroyWeak(&v32);
          objc_destroyWeak(buf);
          goto LABEL_22;
        }

        v19 = sub_100032C3C();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
        {
          *buf = 134349056;
          v34 = self;
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
        v34 = self;
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
      v34 = self;
      v20 = "[%{public}p] View is not loaded yet; not generating radar attachments";
      goto LABEL_20;
    }
  }

  v7[2](v7);
LABEL_22:
}

- (void)_wheelChangedWithEvent:(id)a3
{
  v4 = a3;
  if ([v4 type] == 7 && objc_msgSend(v4, "subtype") - 200 <= 2)
  {
    [(MapsBannerViewController *)self _dismissBannerWithReason:@"DismissInteraction"];
  }

  else
  {
    v5.receiver = self;
    v5.super_class = MapsBannerViewController;
    [(MapsBannerViewController *)&v5 _wheelChangedWithEvent:v4];
  }
}

- (void)_handleBackGesture:(id)a3
{
  if ([a3 state] == 3)
  {

    [(MapsBannerViewController *)self _dismissBannerWithReason:@"DismissInteraction"];
  }
}

- (void)_handleSwipeGesture:(id)a3
{
  if ([a3 direction] == 4)
  {

    [(MapsBannerViewController *)self _dismissBannerWithReason:@"DismissInteraction"];
  }
}

- (void)_handleTapOnContent:(id)a3
{
  v4 = [(MapsBannerViewController *)self bannerView];
  v5 = [v4 bannerType];

  if (v5 == 2)
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
    v4 = [(MapsBannerViewController *)self requestIdentifier];
    *buf = 138412290;
    v18 = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "Pressed banner: %@", buf, 0xCu);
  }

  v5 = objc_opt_new();
  v6 = [(MapsBannerViewController *)self view];
  v7 = [v6 window];
  v8 = [v7 windowScene];
  v9 = [v8 _currentOpenApplicationEndpoint];
  [v5 setTargetConnectionEndpoint:v9];

  v10 = +[LSApplicationWorkspace defaultWorkspace];
  [v10 openApplicationWithBundleIdentifier:@"com.apple.Maps" configuration:v5 completionHandler:&stru_10163B0C0];

  v11 = [(MapsBannerViewController *)self target];
  v16 = 0;
  v12 = [v11 revokeAllPresentablesWithReason:@"Entering Maps" userInfo:&__NSDictionary0__struct error:&v16];
  v13 = v16;

  if (!v12)
  {
    v14 = sub_100032C3C();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = [(MapsBannerViewController *)self requestIdentifier];
      *buf = 138412546;
      v18 = v15;
      v19 = 2112;
      v20 = v13;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "Failed to revoke banner %@; error: %@", buf, 0x16u);
    }
  }
}

- (void)setActiveLayoutMode:(int64_t)a3
{
  v5 = sub_100032C3C();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v6 = sub_100B6A9BC(self->_activeLayoutMode);
    v7 = sub_100B6A9BC(a3);
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
  if (a3 > 3 || activeLayoutMode == a3)
  {
    if (a3 == 4 && activeLayoutMode != 4)
    {
      v11 = [(MapsBannerViewController *)self view];
      v12 = [v11 window];
      [v12 frame];
      [(NSLayoutConstraint *)self->_widthConstraint setConstant:CGRectGetWidth(v17)];

      [NSLayoutConstraint activateConstraints:v9];
    }
  }

  else
  {
    [NSLayoutConstraint deactivateConstraints:v9];
  }

  self->_activeLayoutMode = a3;
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
  v3 = [(MapsBannerViewController *)self activeLayoutMode];
  v4 = [(SBUISystemApertureAutomaticallyInvalidatable *)self->_alertingAssertion isValid];
  if (v3 < 4)
  {
LABEL_6:
    v9 = [(SBUISystemApertureAutomaticallyInvalidatable *)self->_alertingAssertion isValid];
    v10 = sub_100032C3C();
    v11 = os_log_type_enabled(v10, OS_LOG_TYPE_INFO);
    if (v9)
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

      v12 = [(MapsBannerViewController *)self systemApertureElementContext];
      v13 = [v12 requestAlertingAssertion];
      alertingAssertion = self->_alertingAssertion;
      self->_alertingAssertion = v13;

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

  v5 = v4;
  v6 = sub_100032C3C();
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_INFO);
  if (v5)
  {
    if (v7)
    {
      v8 = sub_100B6A9BC(v3);
      *buf = 138412290;
      v20 = v8;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "[Persistent Banners] Already expanded (%@); will use alerting assertion anyway.", buf, 0xCu);
    }

    goto LABEL_6;
  }

  if (v7)
  {
    v16 = sub_100B6A9BC(v3);
    *buf = 138412290;
    v20 = v16;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "[Persistent Banners] User expanded (%@); will not use alerting assertion.", buf, 0xCu);
  }
}

- (void)presentableWillNotAppearAsBanner:(id)a3 withReason:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = sub_100032C3C();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v12 = 136315650;
    v13 = "[MapsBannerViewController presentableWillNotAppearAsBanner:withReason:]";
    v14 = 2112;
    v15 = v6;
    v16 = 2112;
    v17 = v7;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "%s %@ %@", &v12, 0x20u);
  }

  v9 = [(MapsBannerViewController *)self delegate];
  v10 = objc_opt_respondsToSelector();

  if (v10)
  {
    v11 = [(MapsBannerViewController *)self delegate];
    [v11 presentableDidDisappearAsBanner:self withReason:v7];
  }
}

- (void)presentableDidDisappearAsBanner:(id)a3 withReason:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = sub_100032C3C();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v13 = 136315650;
    v14 = "[MapsBannerViewController presentableDidDisappearAsBanner:withReason:]";
    v15 = 2112;
    v16 = v6;
    v17 = 2112;
    v18 = v7;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "%s %@ %@", &v13, 0x20u);
  }

  v9 = [(MapsBannerViewController *)self bannerView];
  if ((objc_opt_respondsToSelector() & 1) != 0 && (([v7 isEqualToString:@"BNBannerRevocationReasonDragDismissal"] & 1) != 0 || objc_msgSend(v7, "isEqualToString:", @"DismissInteraction")))
  {
    [v9 wasDismissedByUser];
  }

  v10 = [(MapsBannerViewController *)self delegate];
  v11 = objc_opt_respondsToSelector();

  if (v11)
  {
    v12 = [(MapsBannerViewController *)self delegate];
    [v12 presentableDidDisappearAsBanner:self withReason:v7];
  }
}

- (void)presentableWillDisappearAsBanner:(id)a3 withReason:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = sub_100032C3C();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v12 = 136315650;
    v13 = "[MapsBannerViewController presentableWillDisappearAsBanner:withReason:]";
    v14 = 2112;
    v15 = v6;
    v16 = 2112;
    v17 = v7;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "%s %@ %@", &v12, 0x20u);
  }

  [(MapsBannerViewController *)self setTimeoutTimer:0];
  v9 = [(MapsBannerViewController *)self delegate];
  v10 = objc_opt_respondsToSelector();

  if (v10)
  {
    v11 = [(MapsBannerViewController *)self delegate];
    [v11 presentableWillDisappearAsBanner:self withReason:v7];
  }
}

- (void)presentableDidAppearAsBanner:(id)a3
{
  v4 = a3;
  v5 = sub_100032C3C();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v11 = 136315394;
    v12 = "[MapsBannerViewController presentableDidAppearAsBanner:]";
    v13 = 2112;
    v14 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%s %@", &v11, 0x16u);
  }

  v6 = [(MapsBannerViewController *)self bannerView];
  v7 = [v6 bannerType];

  if (v7 == 2)
  {
    [GEOAPPortal captureUserAction:9002 target:38 value:0];
  }

  [(MapsBannerViewController *)self _setTimeout];
  v8 = [(MapsBannerViewController *)self delegate];
  v9 = objc_opt_respondsToSelector();

  if (v9)
  {
    v10 = [(MapsBannerViewController *)self delegate];
    [v10 presentableDidAppearAsBanner:self];
  }
}

- (void)presentableWillAppearAsBanner:(id)a3
{
  v4 = a3;
  v5 = sub_100032C3C();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v11 = 136315394;
    v12 = "[MapsBannerViewController presentableWillAppearAsBanner:]";
    v13 = 2112;
    v14 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%s %@", &v11, 0x16u);
  }

  bannerView = self->_bannerView;
  v7 = [(MapsBannerViewController *)self view];
  [v7 frame];
  [(BannerView *)bannerView sizeThatFits:v8, 400.0];
  [(MapsBannerViewController *)self setPreferredContentSize:?];

  v9 = [(MapsBannerViewController *)self delegate];
  LOBYTE(v7) = objc_opt_respondsToSelector();

  if (v7)
  {
    v10 = [(MapsBannerViewController *)self delegate];
    [v10 presentableWillAppearAsBanner:self];
  }
}

- (void)_dismissBannerWithReason:(id)a3
{
  v4 = a3;
  v5 = sub_100032C3C();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = [(MapsBannerViewController *)self requestIdentifier];
    *buf = 138412546;
    v15 = v6;
    v16 = 2112;
    v17 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Revoking banner: %@ with reason: %@", buf, 0x16u);
  }

  v7 = [(MapsBannerViewController *)self target];
  v8 = [(MapsBannerViewController *)self requestIdentifier];
  v13 = 0;
  v9 = [v7 revokePresentableWithRequestIdentifier:v8 reason:v4 animated:1 userInfo:&__NSDictionary0__struct error:&v13];
  v10 = v13;

  if (!v9)
  {
    v11 = sub_100032C3C();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = [(MapsBannerViewController *)self requestIdentifier];
      *buf = 138412546;
      v15 = v12;
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
    v5 = [(MapsBannerViewController *)self systemApertureElementContext];
    [v5 setElementNeedsLayoutUpdateWithOptions:1 coordinatedAnimations:v4];
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
      v5 = [(MapsBannerViewController *)self bannerView];
      v6 = [v5 item];
      v7 = [v6 guidanceState];
      if ([v7 isSticky])
      {
        v8 = [(MapsBannerViewController *)self target];
        v9 = [v8 destination] == 1;

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
        v11 = [(MapsBannerViewController *)self requestIdentifier];
        *buf = 138412290;
        v21 = v11;
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

- (void)setPreferredContentSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  self->_deferredContentSize = a3;
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
      v15 = self;
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
      v15 = self;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "Setting banner size to %@ for %@", buf, 0x16u);
    }

    v11.receiver = self;
    v11.super_class = MapsBannerViewController;
    [(MapsBannerViewController *)&v11 setPreferredContentSize:width, height];
  }
}

- (void)postTemporaryAlternateBannerView:(id)a3
{
  v4 = a3;
  v5 = [(MapsBannerViewController *)self alternateBannerActiveTimer];

  if (!v5)
  {
    v6 = [v4 item];
    v7 = [v6 guidanceState];
    v8 = [(MapsBannerViewController *)self _shouldExpandForGuidanceState:v7];

    if (v8)
    {
      v13 = _NSConcreteStackBlock;
      v14 = 3221225472;
      v15 = sub_100B6C314;
      v16 = &unk_101661A90;
      v17 = self;
      v18 = v4;
      v9 = objc_retainBlock(&v13);
      if ([(MapsBannerViewController *)self _useSignificantUpdateSPI:v13]&& [(SBUISystemApertureAutomaticallyInvalidatable *)self->_alertingAssertion isValid])
      {
        v10 = [(MapsBannerViewController *)self systemApertureElementContext];
        [v10 setElementNeedsLayoutUpdateWithOptions:1 coordinatedAnimations:v9];
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

- (BOOL)_shouldExpandForGuidanceState:(id)a3
{
  v3 = a3;
  v4 = +[CarDisplayController sharedInstance];
  v5 = [v4 isCurrentlyConnectedToAnyCarScene];

  if (v5)
  {
    v6 = 0;
    goto LABEL_21;
  }

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v7 = +[UIApplication sharedApplication];
  v8 = [v7 connectedScenes];

  v9 = [v8 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (!v9)
  {
LABEL_14:

LABEL_17:
    v17 = [v3 lastSceneDeactivationTime];

    if (v17)
    {
      v18 = [v3 lastSceneDeactivationTime];
      [v18 timeIntervalSinceNow];
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
      objc_enumerationMutation(v8);
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
      v15 = [v14 delegate];
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
      v10 = [v8 countByEnumeratingWithState:&v23 objects:v27 count:16];
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

- (void)updateFromGuidanceState:(id)a3
{
  v4 = a3;
  v5 = [(MapsBannerViewController *)self alternateBannerView];
  v6 = [v5 item];
  [v6 updateFromGuidanceState:v4];

  v7 = [(MapsBannerViewController *)self alternateBannerView];
  [v7 updateFromBannerItem];

  v8 = [(MapsBannerViewController *)self activeLayoutMode];
  v9 = [(MapsBannerViewController *)self bannerView];
  v10 = [v9 item];
  v11 = [v10 guidanceState];
  v12 = [(MapsBannerViewController *)self bannerView];
  v13 = [v11 shouldExpandForSpokenEventFromGuidanceUpdate:v4 forType:{objc_msgSend(v12, "bannerType")}];

  v14 = [(MapsBannerViewController *)self bannerView];
  v15 = [v14 item];
  v16 = [v15 guidanceState];
  v17 = [(MapsBannerViewController *)self bannerView];
  v18 = [v17 bannerType];
  v19 = [(MapsBannerViewController *)self target];
  v20 = [v16 shouldPresentNextGuidanceUpdate:v4 forType:v18 target:v19];

  v21 = [(MapsBannerViewController *)self systemApertureElementContext];
  v22 = [v21 transitionContext];

  v23 = [(MapsBannerViewController *)self _useSignificantUpdateSPI]& v20;
  if (v8 == 4)
  {
    v24 = 0;
  }

  else
  {
    v24 = v23;
  }

  v25 = v13 | v20;
  v26 = [(MapsBannerViewController *)self target];
  v27 = [v26 destination] != 1;

  v28 = v25 & v27;
  if (!GEOConfigGetBOOL() || (v8 == 4 || !self->_aperturePresentation) | v28 & 1)
  {
    [(MapsBannerViewController *)self displayWidth];
    v30 = v29;
    v31 = [(MapsBannerViewController *)self bannerView];
    [v31 sizeThatFits:{v30, 400.0}];
    v33 = v32;

    [(MapsBannerViewController *)self setPreferredContentSize:v30, v33];
  }

  v34 = sub_100032C3C();
  if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
  {
    v35 = [v4 guidanceState];
    if (v35 >= 5)
    {
      v36 = [NSString stringWithFormat:@"?? - %lu", v35];
    }

    else
    {
      v36 = *(&off_10163B0E0 + v35);
    }

    v37 = v36;
    v38 = [v4 maneuver];
    v39 = @"NO_TURN";
    switch(v38)
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
        v39 = [NSString stringWithFormat:@"(unknown: %i)", v38];
        break;
    }

    *buf = 138413314;
    v47 = v37;
    v48 = 2112;
    v49 = v39;
    v50 = 1024;
    v51 = v8 == 4;
    v52 = 1024;
    v53 = v22 == 0;
    v54 = 1024;
    v55 = v23;
    _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_INFO, "[Persistent Banners] state:%@, maneuver:%@, isExpanded: %d, notAlreadyAnimating: %d, isSignificantUpdate: %d", buf, 0x28u);
  }

  v40 = [(MapsBannerViewController *)self bannerView];
  v41 = [v40 item];
  [v41 updateFromGuidanceState:v4];

  if (v8 != 4 || v22)
  {
    v42 = [(MapsBannerViewController *)self bannerView];
    [v42 updateFromBannerItem];
  }

  else
  {
    v42 = [(MapsBannerViewController *)self systemApertureElementContext];
    v45[0] = _NSConcreteStackBlock;
    v45[1] = 3221225472;
    v45[2] = sub_100B6D054;
    v45[3] = &unk_101661B18;
    v45[4] = self;
    [v42 setElementNeedsLayoutUpdateWithOptions:v24 coordinatedAnimations:v45];
  }

  if (v28)
  {
    if (self->_aperturePresentation && [(MapsBannerViewController *)self _shouldExpandForGuidanceState:v4])
    {
      v43 = sub_100032C3C();
      if (os_log_type_enabled(v43, OS_LOG_TYPE_INFO))
      {
        v44 = [(MapsBannerViewController *)self systemApertureElementContext];
        *buf = 138412290;
        v47 = v44;
        _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_INFO, "[Persistent Banners] Will expand on update %@", buf, 0xCu);
      }

      [(MapsBannerViewController *)self _requestAlertingAssertionIfNecessary];
    }

    [(MapsBannerViewController *)self _setTimeout];
  }
}

- (double)approximateWidth
{
  v2 = [(MapsBannerViewController *)self target];
  v3 = [v2 destination];

  if (v3 == 1)
  {
    v4 = +[CarDisplayController sharedInstance];
    v5 = [v4 screen];
    v6 = v5;
    if (v5)
    {
      v7 = v5;
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

- (void)viewWillDisappear:(BOOL)a3
{
  v7.receiver = self;
  v7.super_class = MapsBannerViewController;
  [(MapsBannerViewController *)&v7 viewWillDisappear:a3];
  v4 = [(MapsBannerViewController *)self knobSelectRecognizer];
  v5 = [v4 view];
  v6 = [(MapsBannerViewController *)self knobSelectRecognizer];
  [v5 removeGestureRecognizer:v6];
}

- (void)viewWillLayoutSubviewsWithTransitionCoordinator:(id)a3
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_100B6D28C;
  v3[3] = &unk_101661710;
  v3[4] = self;
  [a3 animateAlongsideTransition:v3 completion:0];
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
      v11 = self;
      v12 = 2114;
      v13 = v4;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "_performViewWillAppear %p, setting preferredContentSize %{public}@", &v10, 0x16u);
    }

    self->_didViewWillAppear = 1;
    self->_waitingForDisplay = 0;
    [(MapsBannerViewController *)self setPreferredContentSize:self->_deferredContentSize.width, self->_deferredContentSize.height];
    v5 = [(MapsBannerViewController *)self view];
    v6 = [v5 window];
    v7 = [(MapsBannerViewController *)self knobSelectRecognizer];
    [v6 addGestureRecognizer:v7];

    v8 = [(MapsBannerViewController *)self bannerView];
    v9 = [v8 bannerType];

    if (v9 == 2)
    {
      AudioServicesPlaySystemSoundWithCompletion(0x55Au, 0);
    }
  }
}

- (void)_sceneDidActivate:(id)a3
{
  v4 = [a3 object];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  v7 = [v6 _persistenceIdentifier];

  v8 = [(MapsBannerViewController *)self requestIdentifier];
  v9 = [v7 containsString:v8];

  if (v9)
  {
    v10 = +[NSNotificationCenter defaultCenter];
    [v10 removeObserver:self name:UISceneDidActivateNotification object:0];

    [(MapsBannerViewController *)self _performViewWillAppear];
  }
}

- (void)viewDidDisappear:(BOOL)a3
{
  v6.receiver = self;
  v6.super_class = MapsBannerViewController;
  [(MapsBannerViewController *)&v6 viewDidDisappear:a3];
  v4 = [(MapsBannerViewController *)self bannerView];
  [v4 setIsVisible:0];

  v5 = [(MapsBannerViewController *)self alternateBannerView];
  [v5 setIsVisible:0];
}

- (void)viewWillAppear:(BOOL)a3
{
  v6.receiver = self;
  v6.super_class = MapsBannerViewController;
  [(MapsBannerViewController *)&v6 viewWillAppear:a3];
  [(MapsBannerViewController *)self _performViewWillAppear];
  v4 = [(MapsBannerViewController *)self bannerView];
  [v4 setIsVisible:1];

  v5 = [(MapsBannerViewController *)self alternateBannerView];
  [v5 setIsVisible:1];
}

- (id)_contentView
{
  v3 = [(MapsBannerViewController *)self view];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  v5 = [(MapsBannerViewController *)self view];
  v6 = v5;
  if (isKindOfClass)
  {
    v7 = [v5 customContentView];
  }

  else
  {
    [v5 setAccessibilityIdentifier:@"MapsBannerView"];

    v7 = [(MapsBannerViewController *)self view];
  }

  return v7;
}

- (void)viewDidLoad
{
  v21.receiver = self;
  v21.super_class = MapsBannerViewController;
  [(MapsBannerViewController *)&v21 viewDidLoad];
  v3 = [(MapsBannerViewController *)self _contentView];
  [v3 setAccessibilityIdentifier:@"MapsBannerViewContent"];
  [(BannerView *)self->_bannerView setTranslatesAutoresizingMaskIntoConstraints:0];
  [v3 addSubview:self->_bannerView];
  v20 = [(BannerView *)self->_bannerView leadingAnchor];
  v19 = [v3 leadingAnchor];
  v18 = [v20 constraintEqualToAnchor:v19];
  v22[0] = v18;
  v17 = [(BannerView *)self->_bannerView trailingAnchor];
  v16 = [v3 trailingAnchor];
  v15 = [v17 constraintEqualToAnchor:v16];
  v22[1] = v15;
  v14 = [(BannerView *)self->_bannerView topAnchor];
  v13 = [v3 topAnchor];
  v4 = [v14 constraintEqualToAnchor:v13];
  v22[2] = v4;
  v5 = [(BannerView *)self->_bannerView bottomAnchor];
  v6 = [v3 bottomAnchor];
  v7 = [v5 constraintEqualToAnchor:v6];
  v22[3] = v7;
  v8 = [(BannerView *)self->_bannerView widthAnchor];
  v9 = [v3 widthAnchor];
  v10 = [v8 constraintEqualToAnchor:v9];
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
    v4 = [(MapsBannerViewController *)self target];
    v5 = [v4 destination];

    v6 = &PLPlatterViewStyleNavigationBanner;
    if (v5 == 1)
    {
      v6 = &PLPlatterViewStyleCarPlayBanner;
    }

    v3 = [PLPlatterView platterViewWithStyle:*v6];
  }

  v7 = v3;
  [(MapsBannerViewController *)self setView:v3];
}

- (MapsBannerViewController)initWithRequestId:(id)a3 target:(id)a4 bannerView:(id)a5 delegate:(id)a6 aperturePresentation:(BOOL)a7
{
  v7 = a7;
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v34.receiver = self;
  v34.super_class = MapsBannerViewController;
  v16 = [(MapsBannerViewController *)&v34 initWithNibName:0 bundle:0];
  if (v16)
  {
    if ([v13 destination] == 1)
    {
      v17 = @"CarPlay-%@";
    }

    else
    {
      v17 = @"iOS-%@";
    }

    v18 = [NSString stringWithFormat:v17, v12];
    requestIdentifier = v16->_requestIdentifier;
    v16->_requestIdentifier = v18;

    objc_storeWeak(&v16->_target, v13);
    objc_storeStrong(&v16->_bannerView, a5);
    objc_storeWeak(&v16->_delegate, v15);
    v16->_cachedDisplayWidth = -1.0;
    v16->_aperturePresentation = v7;
    v20 = [(MapsBannerViewController *)v16 view];
    v21 = [v20 widthAnchor];
    v22 = [v21 constraintEqualToConstant:0.0];
    widthConstraint = v16->_widthConstraint;
    v16->_widthConstraint = v22;

    [(MapsBannerViewController *)v16 approximateWidth];
    v25 = v24;
    [(BannerView *)v16->_bannerView sizeThatFits:?];
    [(MapsBannerViewController *)v16 setPreferredContentSize:v25];
    v16->_waitingForDisplay = 1;
    if (v7)
    {
      v16->_waitingForDisplay = 0;
      v26 = [(MapsBannerViewController *)v16 view];
      [v26 setTranslatesAutoresizingMaskIntoConstraints:0];
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
    if ([v13 destination] == 1)
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