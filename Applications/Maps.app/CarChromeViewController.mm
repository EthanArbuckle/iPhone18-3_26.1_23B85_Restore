@interface CarChromeViewController
+ (id)localizedLocationAuthorizationMessage;
+ (id)localizedLocationAuthorizationTitle;
+ (void)_updateAllowOneHandedZooming;
+ (void)initialize;
- (BOOL)_areAccessoriesHiddenForContext:(id)a3;
- (BOOL)_areAccessoriesHiddenForCurrentContext;
- (BOOL)_autohidingContentIsHiddenForContext:(id)a3;
- (BOOL)_canSelectAlternateRoutes;
- (BOOL)_hideStatusBanner;
- (BOOL)_isFocusMovementValidInContext:(id)a3;
- (BOOL)_shouldAccessoriesModifyMapInsetsForContext:(id)a3;
- (BOOL)_shouldAllowKnobFocusMovement;
- (BOOL)_shouldMapControlsModifyMapInsetsForContext:(id)a3;
- (BOOL)dismissCurrentInterruptionOfKind:(int64_t)a3;
- (BOOL)gestureRecognizer:(id)a3 shouldReceiveTouch:(id)a4;
- (BOOL)gestureRecognizer:(id)a3 shouldRequireFailureOfGestureRecognizer:(id)a4;
- (BOOL)isAutohidingContentHiddenForContext:(id)a3;
- (BOOL)isAutohidingContentHiddenForCurrentContext;
- (BOOL)isDisplayingNavigation;
- (BOOL)mapSettings:(id)a3 shouldApplyAnimated:(BOOL *)a4;
- (BOOL)mapView:(id)a3 shouldSelectLabelMarker:(id)a4;
- (BOOL)shouldAnimateMapTransition:(BOOL)a3;
- (BOOL)shouldRecenterAndZoom;
- (BOOL)shouldUpdateFocusInContext:(id)a3;
- (BOOL)suppressIdleFocus;
- (BOOL)wantsNavigationDisplayByDefault;
- (CarChromeContext)topContext;
- (CarChromeViewController)initWithCarSceneType:(int64_t)a3;
- (CarMapNudgerizer)nudgerizer;
- (CarRouteGeniusAnnotationsManager)routeGeniusAnnotationsManager;
- (CarRouteSelectionController)routeSelectionController;
- (ChromeMapSettings)defaultMapSettings;
- (ChromeMapSettings)transientMapSettings;
- (MapViewResponder)mapViewResponder;
- (NSArray)_linearFocusMovementSequences;
- (NSArray)preferredFocusEnvironments;
- (NSMapTable)chromeItemsByContext;
- (NSMapTable)lastFocusedIdentifiersByContext;
- (NSMapTable)lastFocusedItemsByContext;
- (id)_desiredCards;
- (id)_presentSearchRefinementWithUserInfo:(id)a3 completionHandler:(id)a4;
- (id)_previousContext;
- (id)acquireForcedAutohideBehaviourTokenWithBehaviour:(int64_t)a3;
- (id)acquireModernMapTokenForReason:(unint64_t)a3;
- (id)allComponents;
- (id)chromeViewItemForContext:(id)a3 createIfNeeded:(BOOL)a4;
- (id)createMapReplacementView;
- (id)createMapView;
- (id)currentTraits;
- (id)mapView:(id)a3 viewForAnnotation:(id)a4;
- (id)presentInterruptionOfKind:(int64_t)a3 userInfo:(id)a4 completionHandler:(id)a5;
- (id)visuallySelectedItem;
- (int)_currentUsageTarget;
- (int64_t)_autohidingBehaviorForContext:(id)a3;
- (int64_t)forcedAutohideBehavior;
- (int64_t)modernMapProjectionType;
- (int64_t)modernMapTerrainMode;
- (unint64_t)desiredRadarScreenshotTypes;
- (void)_addAutohideGestureRecognizer;
- (void)_audioControlPressed;
- (void)_autohideBecameIdle;
- (void)_autohideGestureRecognizerDetectedTap:(id)a3;
- (void)_captureUserActionBackToContext:(id)a3;
- (void)_carExternalDeviceStateUpdated:(id)a3;
- (void)_carOneHandedZoomSettingUpdated:(id)a3;
- (void)_carPlayWindowMapStyleDidChange:(id)a3;
- (void)_dismissAlertViewController:(id)a3 animated:(BOOL)a4;
- (void)_enableZoomGesture:(BOOL)a3;
- (void)_handleBackButton;
- (void)_handleDoubleTap:(id)a3;
- (void)_humanPresenceDidChange;
- (void)_locationAuthorizationDidChange:(id)a3;
- (void)_navRecenterButtonPressed;
- (void)_navigationObscuredTimeoutFired:(id)a3;
- (void)_performMapUpdateToUserInterfaceStyle:(int64_t)a3 animation:(id)a4;
- (void)_presentAlertViewController:(id)a3 animated:(BOOL)a4;
- (void)_presentAnyPendingAlert:(BOOL)a3;
- (void)_preserveFocusedItemFromContext:(id)a3 toContext:(id)a4;
- (void)_recordAutohidingContentIsHidden:(BOOL)a3 forContext:(id)a4;
- (void)_reloadAccessoriesForContext:(id)a3 withAnimation:(id)a4;
- (void)_reloadAccessoriesInsetsForContext:(id)a3;
- (void)_reloadCardOverlayConstraintsIfNeeded;
- (void)_reloadCardsAnimated:(BOOL)a3;
- (void)_reloadFocusContainerGuidesForContext:(id)a3;
- (void)_reloadMapControlsForContext:(id)a3 withAnimation:(id)a4;
- (void)_reloadMapControlsInsetsForContext:(id)a3;
- (void)_reloadStatusBannerWithAnimation:(id)a3;
- (void)_removeAutohideGestureRecognizer;
- (void)_reportIncidentPressed;
- (void)_requestAutohideBehaviorForContext:(id)a3;
- (void)_resetMapViewDefaults:(id)a3;
- (void)_restartAutohideIdleTimer;
- (void)_restartNavigationObscuredTimeout;
- (void)_setAutohideBehavior:(int64_t)a3 forContext:(id)a4;
- (void)_startAutohideIdleTimerIfStopped;
- (void)_startNavigationObscuredTimeout;
- (void)_stopAutohideIdleTimer;
- (void)_stopNavigationObscuredTimeout;
- (void)_toggle3DButtonPressed;
- (void)_toggleCameraPressed;
- (void)_update3DButton;
- (void)_updateAudioControlButton;
- (void)_updateAudioControls;
- (void)_updateAutohideBehavior;
- (void)_updateCameraToggleButton;
- (void)_updateCardsForContext:(id)a3 withAnimation:(id)a4 completion:(id)a5;
- (void)_updateMapToCurrentUserInterfaceStyleAnimated:(BOOL)a3;
- (void)_updateMapUserInterfaceStyle:(int64_t)a3 animated:(BOOL)a4;
- (void)_updateModernMapCartographicConfiguration;
- (void)_updateNudgerizer;
- (void)_updateOfflineModernMapToken;
- (void)_updateRouteSelectionController;
- (void)captureUserAction:(int)a3 eventValue:(id)a4;
- (void)captureUserAction:(int)a3 mapItem:(id)a4 atResultIndex:(int)a5;
- (void)captureUserAction:(int)a3 onTarget:(int)a4 eventValue:(id)a5;
- (void)captureUserAction:(int)a3 selectedRouteIndex:(int)a4;
- (void)captureUserActionChangedTrackingMode:(int64_t)a3;
- (void)captureUserActionPannedInDirection:(int64_t)a3;
- (void)captureUserActionSelectedSearchCategory:(id)a3 categoriesDisplayed:(id)a4;
- (void)carCardView:(id)a3 chevronButtonSelected:(id)a4;
- (void)carCardView:(id)a3 didChangeFocus:(BOOL)a4;
- (void)carCardViewCloseButtonTapped:(id)a3;
- (void)carMapControls:(id)a3 didTriggerAction:(unint64_t)a4;
- (void)carStatusBannerDidTapBanner;
- (void)chromeNavigationDisplay:(id)a3 configurationDidChange:(id)a4;
- (void)chromeNavigationDisplay:(id)a3 didChangePanning:(BOOL)a4 animated:(BOOL)a5;
- (void)chromeNavigationDisplayDidRenderRoute:(id)a3;
- (void)clearMapGesturesAndAnimations;
- (void)configureAccessoriesOverlay:(id)a3 forContext:(id)a4;
- (void)contextStackDidUpdateFrom:(id)a3 to:(id)a4 withAnimation:(id)a5;
- (void)contextStackWillUpdateFrom:(id)a3 to:(id)a4 withAnimation:(id)a5;
- (void)deactivationReasonsDidChange;
- (void)dealloc;
- (void)decrementForToken:(id)a3;
- (void)didBecomeInactive:(BOOL)a3;
- (void)didSuppress;
- (void)didUnsuppress;
- (void)disableDoubleTapRecognizer;
- (void)enableDoubleTapRecognizerWithBlock:(id)a3;
- (void)incrementForToken:(id)a3;
- (void)interruptAutohideForIncidentalInteraction;
- (void)loadView;
- (void)mapView:(id)a3 canEnter3DModeDidChange:(BOOL)a4;
- (void)mapView:(id)a3 canZoomInDidChange:(BOOL)a4;
- (void)mapView:(id)a3 canZoomOutDidChange:(BOOL)a4;
- (void)mapView:(id)a3 didBecomePitched:(BOOL)a4;
- (void)mapView:(id)a3 didDeselectLabelMarker:(id)a4;
- (void)mapView:(id)a3 didFailToLocateUserWithError:(id)a4;
- (void)mapView:(id)a3 didSelectLabelMarker:(id)a4;
- (void)mapView:(id)a3 didStopRespondingToGesture:(int64_t)a4 zoomDirection:(int64_t)a5 zoomGestureType:(int64_t)a6 didDecelerate:(BOOL)a7 tiltDirection:(int64_t)a8;
- (void)mapView:(id)a3 didUpdateUserLocation:(id)a4;
- (void)mapView:(id)a3 regionDidChangeAnimated:(BOOL)a4;
- (void)mapViewDidFinishRenderingMap:(id)a3 fullyRendered:(BOOL)a4;
- (void)mapViewNavigationCameraHasStoppedPanning:(id)a3;
- (void)offlineStateChanged:(id)a3;
- (void)panButtonPressed;
- (void)prepareMapViewForFirstUse;
- (void)pressesBegan:(id)a3 withEvent:(id)a4;
- (void)pressesCancelled:(id)a3 withEvent:(id)a4;
- (void)pressesChanged:(id)a3 withEvent:(id)a4;
- (void)pressesEnded:(id)a3 withEvent:(id)a4;
- (void)reloadAccessoriesForContext:(id)a3 animated:(BOOL)a4;
- (void)reloadStatusBannerAnimated:(BOOL)a3;
- (void)restartAutohideIdleTimerIfStarted;
- (void)setAutohidingContentHiddenForCurrentContext:(BOOL)a3;
- (void)setHardwareBackButtonBehavior:(int64_t)a3 forContext:(id)a4;
- (void)setNeedsAutohideBehaviorUpdateForContext:(id)a3;
- (void)setNeedsFocusUpdateIfUnfocused;
- (void)setNotificationLayoutGuide:(id)a3;
- (void)setOwnsFocus:(BOOL)a3;
- (void)traitCollectionDidChange:(id)a3;
- (void)updateComponent:(id)a3 forTiming:(unint64_t)a4 withAnimation:(id)a5;
- (void)updateHardwareBackButtonBehavior;
- (void)updateZoomControls;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewDidMoveToWindow:(id)a3 shouldAppearOrDisappear:(BOOL)a4;
- (void)viewSafeAreaInsetsDidChange;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
- (void)willUpdateComponents:(id)a3 withAnimation:(id)a4;
- (void)zoomIn;
- (void)zoomInButtonPressed;
- (void)zoomOut;
- (void)zoomOutButtonPressed;
@end

@implementation CarChromeViewController

- (CarChromeContext)topContext
{
  v4.receiver = self;
  v4.super_class = CarChromeViewController;
  v2 = [(ChromeViewController *)&v4 topContext];

  return v2;
}

- (id)createMapReplacementView
{
  if ([(CarChromeViewController *)self sceneType]- 4 < 3)
  {
    goto LABEL_6;
  }

  v3 = +[MapsExternalDevice sharedInstance];
  if (([v3 ownsScreen] & 1) == 0)
  {

    goto LABEL_6;
  }

  BOOL = GEOConfigGetBOOL();

  if (BOOL)
  {
LABEL_6:
    v6 = [CarMapReplacementView alloc];
    v7 = [(CarChromeViewController *)self view];
    [v7 bounds];
    v5 = [(CarMapReplacementView *)v6 initWithFrame:?];

    [(CarMapReplacementView *)v5 setUserInteractionEnabled:0];
    v8 = [(ChromeViewController *)self deactivationReasons];
    [(CarMapReplacementView *)v5 setReasonStrings:v8];

    if (+[CarDisplayController debugLaunchPerformance])
    {
      v9 = +[UIColor systemDarkBlueColor];
      [(CarMapReplacementView *)v5 setBackgroundColor:v9];

      +[UIColor systemCyanColor];
    }

    else
    {
      v10 = [(CarChromeViewController *)self mapReplacementColor];
      [(CarMapReplacementView *)v5 setBackgroundColor:v10];

      [UIColor colorWithDynamicProvider:&stru_101622508];
    }
    v11 = ;
    [(CarMapReplacementView *)v5 setTextColor:v11];

    v12 = objc_opt_class();
    v13 = NSStringFromClass(v12);
    v14 = [NSString stringWithFormat:@"%@.mapReplacementView", v13];
    [(CarMapReplacementView *)v5 setAccessibilityIdentifier:v14];

    goto LABEL_10;
  }

  v5 = 0;
LABEL_10:

  return v5;
}

- (NSArray)preferredFocusEnvironments
{
  if (!self->_ownsFocus)
  {
    v32.receiver = self;
    v32.super_class = CarChromeViewController;
    v9 = [(CarChromeViewController *)&v32 preferredFocusEnvironments];
    goto LABEL_24;
  }

  v3 = [(CarChromeViewController *)self topContext];
  WeakRetained = objc_loadWeakRetained(&self->_restoreFocusForContext);

  if (v3 == WeakRetained)
  {
    v5 = [(CarChromeViewController *)self lastFocusedItemsByContext];
    v6 = [(CarChromeViewController *)self topContext];
    v7 = [v5 objectForKey:v6];

    if ([v7 canBecomeFocused])
    {
      v8 = [v7 superview];

      if (v8)
      {
        objc_storeWeak(&self->_restoreFocusForContext, 0);
        v37 = v7;
        v9 = [NSArray arrayWithObjects:&v37 count:1];
      }

      else
      {
        v22 = sub_10006D178();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315906;
          *&buf[4] = "[CarChromeViewController preferredFocusEnvironments]";
          *&buf[12] = 2080;
          *&buf[14] = "CarChromeViewController.m";
          *&buf[22] = 1024;
          LODWORD(v35) = 2167;
          WORD2(v35) = 2080;
          *(&v35 + 6) = "itemHasSuperview";
          _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion: (%s)", buf, 0x26u);
        }

        if (sub_100E03634())
        {
          v23 = sub_10006D178();
          if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
          {
            v24 = +[NSThread callStackSymbols];
            *buf = 138412290;
            *&buf[4] = v24;
            _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
          }
        }

        v9 = &__NSArray0__struct;
      }

      goto LABEL_24;
    }

    objc_storeWeak(&self->_restoreFocusForContext, 0);
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  *&v35 = sub_100592630;
  *(&v35 + 1) = sub_100592640;
  v36 = +[NSMutableArray array];
  v10 = [(CarChromeViewController *)self topContext];
  v11 = objc_opt_respondsToSelector();

  if (v11)
  {
    v12 = [(CarChromeViewController *)self topContext];
    v13 = [v12 preferredCarFocusEnvironments];

    if ([v13 count])
    {
      v31[0] = _NSConcreteStackBlock;
      v31[1] = 3221225472;
      v31[2] = sub_1000917E0;
      v31[3] = &unk_1016225C0;
      v31[4] = buf;
      v14 = objc_retainBlock(v31);
      v30[0] = _NSConcreteStackBlock;
      v30[1] = 3221225472;
      v30[2] = sub_100592A3C;
      v30[3] = &unk_1016225E8;
      v30[4] = self;
      v30[5] = buf;
      v15 = objc_retainBlock(v30);
      v28 = 0u;
      v29 = 0u;
      v26 = 0u;
      v27 = 0u;
      v16 = v13;
      v17 = [v16 countByEnumeratingWithState:&v26 objects:v33 count:16];
      if (v17)
      {
        v18 = *v27;
        do
        {
          for (i = 0; i != v17; i = i + 1)
          {
            if (*v27 != v18)
            {
              objc_enumerationMutation(v16);
            }

            [*(*(&v26 + 1) + 8 * i) ifFocusEnvironment:v14 ifRepresentativeItem:v15];
          }

          v17 = [v16 countByEnumeratingWithState:&v26 objects:v33 count:16];
        }

        while (v17);
      }
    }
  }

  if ([*(*&buf[8] + 40) count])
  {
    v20 = [*(*&buf[8] + 40) copy];
  }

  else
  {
    v25.receiver = self;
    v25.super_class = CarChromeViewController;
    v20 = [(CarChromeViewController *)&v25 preferredFocusEnvironments];
  }

  v9 = v20;
  _Block_object_dispose(buf, 8);

LABEL_24:

  return v9;
}

- (NSMapTable)lastFocusedItemsByContext
{
  lastFocusedItemsByContext = self->_lastFocusedItemsByContext;
  if (!lastFocusedItemsByContext)
  {
    v4 = +[NSMapTable weakToWeakObjectsMapTable];
    v5 = self->_lastFocusedItemsByContext;
    self->_lastFocusedItemsByContext = v4;

    lastFocusedItemsByContext = self->_lastFocusedItemsByContext;
  }

  return lastFocusedItemsByContext;
}

- (BOOL)_canSelectAlternateRoutes
{
  v3 = [(CarChromeViewController *)self topContext];
  if (objc_opt_respondsToSelector())
  {
    v4 = [(CarChromeViewController *)self topContext];
    v5 = [v4 supportsAlternateRouteSelection];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)restartAutohideIdleTimerIfStarted
{
  if (self->_autohideIdleTimer)
  {
    [(CarChromeViewController *)self _restartAutohideIdleTimer];
  }

  [(CarChromeViewController *)self _restartNavigationObscuredTimeout];
}

- (void)_restartNavigationObscuredTimeout
{
  if (self->_navigationObscuredTimeout)
  {
    [(CarChromeViewController *)self _startNavigationObscuredTimeout];
  }
}

- (id)_desiredCards
{
  if ([(CarChromeViewController *)self canShowCards])
  {
    v3 = [(CarChromeViewController *)self topContext];
    if (objc_opt_respondsToSelector())
    {
      v4 = [(CarChromeViewController *)self topContext];
      v5 = [v4 desiredCards];
    }

    else
    {
      v5 = &__NSArray0__struct;
    }
  }

  else
  {
    v5 = &__NSArray0__struct;
  }

  return v5;
}

- (void)deactivationReasonsDidChange
{
  v6.receiver = self;
  v6.super_class = CarChromeViewController;
  [(ChromeViewController *)&v6 deactivationReasonsDidChange];
  v3 = [(ChromeViewController *)self currentMapReplacementView];
  if (v3)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v4 = v3;
      v5 = [(ChromeViewController *)self deactivationReasons];
      [v4 setReasonStrings:v5];
    }
  }
}

- (void)_stopAutohideIdleTimer
{
  autohideIdleTimer = self->_autohideIdleTimer;
  if (autohideIdleTimer)
  {
    [(NSTimer *)autohideIdleTimer invalidate];
    v4 = self->_autohideIdleTimer;
    self->_autohideIdleTimer = 0;
  }
}

- (int)_currentUsageTarget
{
  v3 = [(CarChromeViewController *)self topContext];
  v4 = objc_opt_respondsToSelector();

  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = [(CarChromeViewController *)self topContext];
  v6 = [v5 currentUsageTarget];

  return v6;
}

- (NSMapTable)chromeItemsByContext
{
  chromeItemsByContext = self->_chromeItemsByContext;
  if (!chromeItemsByContext)
  {
    v4 = +[NSMapTable weakToStrongObjectsMapTable];
    v5 = self->_chromeItemsByContext;
    self->_chromeItemsByContext = v4;

    chromeItemsByContext = self->_chromeItemsByContext;
  }

  return chromeItemsByContext;
}

- (void)_reloadCardOverlayConstraintsIfNeeded
{
  v48 = [(ChromeViewController *)self overlayController];
  v3 = [v48 contentLayoutGuide];
  if (v3)
  {
    didSetupOverlayConstraints = self->_didSetupOverlayConstraints;

    if (!didSetupOverlayConstraints)
    {
      self->_didSetupOverlayConstraints = 1;
      v5 = [(ChromeViewController *)self overlayController];
      v6 = [v5 contentLayoutGuide];

      v49 = [(UILayoutGuide *)self->_statusBannerLayoutGuide topAnchor];
      v47 = [v6 topAnchor];
      v46 = [v49 constraintEqualToAnchor:v47];
      v50[0] = v46;
      v45 = [(UILayoutGuide *)self->_statusBannerLayoutGuide leadingAnchor];
      v44 = [v6 leadingAnchor];
      v43 = [v45 constraintEqualToAnchor:v44];
      v50[1] = v43;
      v42 = [(UILayoutGuide *)self->_statusBannerLayoutGuide trailingAnchor];
      v41 = [v6 trailingAnchor];
      v40 = [v42 constraintEqualToAnchor:v41];
      v50[2] = v40;
      v39 = [(UILayoutGuide *)self->_accessoriesCompactLayoutGuide leadingAnchor];
      v38 = [v6 leadingAnchor];
      v37 = [v39 constraintEqualToAnchor:v38];
      v50[3] = v37;
      v36 = [(UILayoutGuide *)self->_accessoriesCompactLayoutGuide trailingAnchor];
      v35 = [v6 trailingAnchor];
      v34 = [v36 constraintEqualToAnchor:v35];
      v50[4] = v34;
      v33 = [(UILayoutGuide *)self->_accessoriesCompactLayoutGuide topAnchor];
      v32 = [v6 topAnchor];
      LODWORD(v7) = 1148846080;
      v31 = [v33 constraintGreaterThanOrEqualToAnchor:v32 constant:0.0 priority:v7];
      v50[5] = v31;
      v30 = [(UILayoutGuide *)self->_accessoriesCompactLayoutGuide bottomAnchor];
      v29 = [v6 bottomAnchor];
      v28 = [v30 constraintEqualToAnchor:v29];
      v50[6] = v28;
      v27 = [(UILayoutGuide *)self->_statusBannerLayoutGuide bottomAnchor];
      v26 = [(UILayoutGuide *)self->_accessoriesCompactLayoutGuide topAnchor];
      v25 = [v27 constraintEqualToAnchor:v26 constant:8.0];
      v50[7] = v25;
      v24 = [(UILayoutGuide *)self->_cardsLayoutGuide leadingAnchor];
      v23 = [v6 leadingAnchor];
      v22 = [v24 constraintEqualToAnchor:v23];
      v50[8] = v22;
      v21 = [(UILayoutGuide *)self->_cardsLayoutGuide trailingAnchor];
      v20 = [v6 trailingAnchor];
      v19 = [v21 constraintEqualToAnchor:v20];
      v50[9] = v19;
      v18 = [(UILayoutGuide *)self->_cardsLayoutGuide topAnchor];
      v8 = [v6 topAnchor];
      LODWORD(v9) = 1148846080;
      v10 = [v18 constraintGreaterThanOrEqualToAnchor:v8 constant:0.0 priority:v9];
      v50[10] = v10;
      v11 = [(UILayoutGuide *)self->_cardsLayoutGuide bottomAnchor];
      v12 = [v6 bottomAnchor];
      v13 = [v11 constraintEqualToAnchor:v12];
      v50[11] = v13;
      v14 = [(UILayoutGuide *)self->_statusBannerLayoutGuide bottomAnchor];
      v15 = [(UILayoutGuide *)self->_cardsLayoutGuide topAnchor];
      v16 = [v14 constraintEqualToAnchor:v15 constant:8.0];
      v50[12] = v16;
      v17 = [NSArray arrayWithObjects:v50 count:13];
      [NSLayoutConstraint activateConstraints:v17];
    }
  }

  else
  {
  }
}

- (void)_restartAutohideIdleTimer
{
  [(CarChromeViewController *)self _stopAutohideIdleTimer];
  v3 = [NSNumber numberWithDouble:10.0];
  v4 = +[NSUserDefaults standardUserDefaults];
  v5 = [v4 objectForKey:@"CarAutoHideContentTimeInterval"];

  if (v5)
  {
    v6 = v5;
  }

  else
  {
    v6 = v3;
  }

  v7 = v6;

  [v7 doubleValue];
  v9 = v8;

  v10 = [(CarChromeViewController *)self topContext];
  LOBYTE(v7) = objc_opt_respondsToSelector();

  if (v7)
  {
    v11 = [(CarChromeViewController *)self topContext];
    [v11 autohideIdlenessInterval];
    v9 = v12;
  }

  v13 = [NSTimer scheduledTimerWithTimeInterval:self target:"_autohideBecameIdle" selector:0 userInfo:0 repeats:v9];
  autohideIdleTimer = self->_autohideIdleTimer;
  self->_autohideIdleTimer = v13;
}

- (id)allComponents
{
  v6.receiver = self;
  v6.super_class = CarChromeViewController;
  v2 = [(ChromeViewController *)&v6 allComponents];
  v3 = [v2 mutableCopy];

  v7[0] = @"cards";
  v7[1] = @"accessories";
  v7[2] = @"mapcontrols";
  v7[3] = @"statusBanner";
  v4 = [NSArray arrayWithObjects:v7 count:4];
  [v3 addObjectsFromArray:v4];

  return v3;
}

- (BOOL)wantsNavigationDisplayByDefault
{
  v3 = [(CarChromeViewController *)self isDisplayingNavigation];
  if (sub_10008B2E8())
  {
    v4 = [(CarChromeViewController *)self defaultMapSettings];
    v5 = [v4 pitched];
  }

  else
  {
    v5 = 0;
  }

  return (v3 | v5) & 1;
}

- (BOOL)isDisplayingNavigation
{
  v3 = [(ChromeViewController *)self pendingContexts];
  v4 = v3;
  if (!v3)
  {
    v4 = [(ChromeViewController *)self contexts];
  }

  v5 = [v4 _maps_firstContextOfClass:objc_opt_class()];

  if (!v3)
  {
  }

  return v5 != 0;
}

- (BOOL)_hideStatusBanner
{
  v3 = +[MapsOfflineUIHelper sharedHelper];
  if (([v3 isUsingOfflineMaps] & 1) == 0)
  {

    return 1;
  }

  v4 = [(CarChromeViewController *)self topContext];
  if (objc_opt_respondsToSelector())
  {
    v5 = [(CarChromeViewController *)self topContext];
    v6 = [v5 hidesStatusBanner];

    return (v6 & 1) != 0;
  }

  return 0;
}

- (id)currentTraits
{
  v3 = [(ChromeViewController *)self mapView];

  if (v3)
  {
    v4 = +[MKMapService sharedService];
    v5 = [(ChromeViewController *)self mapView];
    v6 = [(ChromeViewController *)self mapViewEnteredForegroundDate];
    v7 = [(ChromeViewController *)self lastMapViewportChangedDate];
    v8 = [v4 mapsDefaultTraitsForMapView:v5 mapViewEnteredForegroundDate:v6 mapViewportChangedDate:v7 directionsType:1 includeCarPlayInfo:1];

    v9 = [[ClientTypeResolver alloc] initWithCurrentLocation:1 parkedCar:0 personalizedItems:1];
    [GEOMapServiceTraits addCommonKnownClientResolvedTypesIfAvailableWithClientTypeResolver:v9 toTraits:v8];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (BOOL)isAutohidingContentHiddenForCurrentContext
{
  v2 = self;
  v3 = [(CarChromeViewController *)self topContext];
  LOBYTE(v2) = [(CarChromeViewController *)v2 _autohidingContentIsHiddenForContext:v3];

  return v2;
}

- (void)_update3DButton
{
  if (sub_10008B2E8())
  {
    v3 = [(ChromeViewController *)self isRunningNavigationDisplay];
    v4 = [(CarChromeViewController *)self mapControlsOverlay];
    v5 = v4;
    if (v3)
    {
      v6 = 1;
    }

    else
    {
      v6 = 2;
    }

    [v4 setMode3DState:v6];

    v14 = [(CarChromeViewController *)self mapControlsOverlay];
    [v14 setMode3DEnabled:1];
  }

  else
  {
    v7 = [(ChromeViewController *)self mapView];
    v8 = [v7 _isPitched];

    v9 = [(CarChromeViewController *)self mapControlsOverlay];
    v10 = v9;
    if (v8)
    {
      v11 = 1;
    }

    else
    {
      v11 = 2;
    }

    [v9 setMode3DState:v11];

    v14 = [(ChromeViewController *)self mapView];
    v12 = [v14 _canEnter3DMode];
    v13 = [(CarChromeViewController *)self mapControlsOverlay];
    [v13 setMode3DEnabled:v12];
  }
}

- (void)_updateAudioControls
{
  if (![(ChromeViewController *)self isSuppressed])
  {
    v3 = [(CarChromeViewController *)self topContext];
    if (objc_opt_respondsToSelector())
    {
      v4 = [(CarChromeViewController *)self mapControlsOverlay];
      if (v4)
      {
        v5 = v4;
        [v4 configuration];
        if (*buf == 2 || *&buf[8] == 2)
        {

          goto LABEL_27;
        }

        if (*&buf[16] == 2)
        {
LABEL_27:
          v18 = [v3 audioSettingsCurrentState];
          v19 = sub_100006E1C();
          if (!os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
          {
LABEL_42:

            v6 = [(CarChromeViewController *)self mapControlsOverlay];
            [v6 setAudioSettings:v18];
            goto LABEL_43;
          }

          v20 = v3;
          if (!v20)
          {
            v25 = @"<nil>";
            goto LABEL_41;
          }

          v21 = objc_opt_class();
          v22 = NSStringFromClass(v21);
          if (objc_opt_respondsToSelector())
          {
            v23 = [v20 performSelector:"accessibilityIdentifier"];
            v24 = v23;
            if (v23 && ![v23 isEqualToString:v22])
            {
              v25 = [NSString stringWithFormat:@"%@<%p, %@>", v22, v20, v24];

              goto LABEL_34;
            }
          }

          v25 = [NSString stringWithFormat:@"%@<%p>", v22, v20];
LABEL_34:

LABEL_41:
          *buf = 134349570;
          *&buf[4] = self;
          *&buf[12] = 2048;
          *&buf[14] = v18;
          *&buf[22] = 2114;
          v28 = v25;
          _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "[%{public}p] Updating mapControls.audioControls with audioSettings: %ld per request from context: %{public}@.", buf, 0x20u);

          goto LABEL_42;
        }
      }

      v6 = sub_100006E1C();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v13 = v3;
        if (!v13)
        {
          v12 = @"<nil>";
          goto LABEL_38;
        }

        v14 = objc_opt_class();
        v15 = NSStringFromClass(v14);
        if (objc_opt_respondsToSelector())
        {
          v16 = [v13 performSelector:"accessibilityIdentifier"];
          v17 = v16;
          if (v16 && ![v16 isEqualToString:v15])
          {
            v12 = [NSString stringWithFormat:@"%@<%p, %@>", v15, v13, v17];

            goto LABEL_25;
          }
        }

        v12 = [NSString stringWithFormat:@"%@<%p>", v15, v13];
LABEL_25:

LABEL_38:
        *buf = 134349314;
        *&buf[4] = self;
        *&buf[12] = 2114;
        *&buf[14] = v12;
        v26 = "[%{public}p] %{public}@'s mapControls configuration doesn't have audio controls. Ignoring the call.";
        goto LABEL_39;
      }

LABEL_43:

      goto LABEL_44;
    }

    v6 = sub_100006E1C();
    if (!os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_43;
    }

    v7 = v3;
    if (!v7)
    {
      v12 = @"<nil>";
      goto LABEL_36;
    }

    v8 = objc_opt_class();
    v9 = NSStringFromClass(v8);
    if (objc_opt_respondsToSelector())
    {
      v10 = [v7 performSelector:"accessibilityIdentifier"];
      v11 = v10;
      if (v10 && ![v10 isEqualToString:v9])
      {
        v12 = [NSString stringWithFormat:@"%@<%p, %@>", v9, v7, v11];

        goto LABEL_17;
      }
    }

    v12 = [NSString stringWithFormat:@"%@<%p>", v9, v7];
LABEL_17:

LABEL_36:
    *buf = 134349314;
    *&buf[4] = self;
    *&buf[12] = 2114;
    *&buf[14] = v12;
    v26 = "[%{public}p] %{public}@ does not respond to audioSettingsCurrentState. Ignoring the call";
LABEL_39:
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, v26, buf, 0x16u);

    goto LABEL_43;
  }

  v3 = sub_100006E1C();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134349056;
    *&buf[4] = self;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "[%{public}p] Chrome is suppressed, ignoring call to update audio controls.", buf, 0xCu);
  }

LABEL_44:
}

- (void)_updateAudioControlButton
{
  if (![(ChromeViewController *)self isSuppressed])
  {
    v3 = [(CarChromeViewController *)self topContext];
    v4 = [(CarChromeViewController *)self mapControlsOverlay];
    if (!v4)
    {
      goto LABEL_8;
    }

    v5 = v4;
    [v4 configuration];
    if (*buf == 2 || *&buf[8] == 2)
    {
    }

    else
    {

      if (*&buf[16] != 2)
      {
LABEL_8:
        v6 = sub_100006E1C();
        if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
        {
          v7 = v3;
          if (!v7)
          {
            v12 = @"<nil>";
            goto LABEL_35;
          }

          v8 = objc_opt_class();
          v9 = NSStringFromClass(v8);
          if (objc_opt_respondsToSelector())
          {
            v10 = [v7 performSelector:"accessibilityIdentifier"];
            v11 = v10;
            if (v10 && ![v10 isEqualToString:v9])
            {
              v12 = [NSString stringWithFormat:@"%@<%p, %@>", v9, v7, v11];

              goto LABEL_15;
            }
          }

          v12 = [NSString stringWithFormat:@"%@<%p>", v9, v7];
LABEL_15:

LABEL_35:
          *buf = 134349314;
          *&buf[4] = self;
          *&buf[12] = 2114;
          *&buf[14] = v12;
          v26 = "[%{public}p] %{public}@'s mapControls configuration doesn't have audio controls. Ignoring the call.";
LABEL_41:
          _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, v26, buf, 0x16u);
        }

LABEL_42:

        goto LABEL_43;
      }
    }

    if (objc_opt_respondsToSelector())
    {
      v13 = [v3 audioSettingsCurrentState];
      v14 = sub_100006E1C();
      if (!os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
LABEL_38:

        v6 = [(CarChromeViewController *)self mapControlsOverlay];
        [v6 setAudioControlButtonType:v13];
        goto LABEL_42;
      }

      v15 = v3;
      if (!v15)
      {
        v20 = @"<nil>";
        goto LABEL_37;
      }

      v16 = objc_opt_class();
      v17 = NSStringFromClass(v16);
      if (objc_opt_respondsToSelector())
      {
        v18 = [v15 performSelector:"accessibilityIdentifier"];
        v19 = v18;
        if (v18 && ![v18 isEqualToString:v17])
        {
          v20 = [NSString stringWithFormat:@"%@<%p, %@>", v17, v15, v19];

          goto LABEL_25;
        }
      }

      v20 = [NSString stringWithFormat:@"%@<%p>", v17, v15];
LABEL_25:

LABEL_37:
      *buf = 134349570;
      *&buf[4] = self;
      *&buf[12] = 2048;
      *&buf[14] = v13;
      *&buf[22] = 2114;
      v28 = v20;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "[%{public}p] Updating mapControls.audioControls with audioSettings: %ld per request from context: %{public}@.", buf, 0x20u);

      goto LABEL_38;
    }

    v6 = sub_100006E1C();
    if (!os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_42;
    }

    v21 = v3;
    if (!v21)
    {
      v12 = @"<nil>";
      goto LABEL_40;
    }

    v22 = objc_opt_class();
    v23 = NSStringFromClass(v22);
    if (objc_opt_respondsToSelector())
    {
      v24 = [v21 performSelector:"accessibilityIdentifier"];
      v25 = v24;
      if (v24 && ![v24 isEqualToString:v23])
      {
        v12 = [NSString stringWithFormat:@"%@<%p, %@>", v23, v21, v25];

        goto LABEL_33;
      }
    }

    v12 = [NSString stringWithFormat:@"%@<%p>", v23, v21];
LABEL_33:

LABEL_40:
    *buf = 134349314;
    *&buf[4] = self;
    *&buf[12] = 2114;
    *&buf[14] = v12;
    v26 = "[%{public}p] %{public}@ does not respond to audioSettingsCurrentState. Ignoring the call";
    goto LABEL_41;
  }

  v3 = sub_100006E1C();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134349056;
    *&buf[4] = self;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "[%{public}p] Chrome is suppressed, ignoring call to update audio controls.", buf, 0xCu);
  }

LABEL_43:
}

- (BOOL)_areAccessoriesHiddenForCurrentContext
{
  v2 = self;
  v3 = [(CarChromeViewController *)self topContext];
  LOBYTE(v2) = [(CarChromeViewController *)v2 _areAccessoriesHiddenForContext:v3];

  return v2;
}

- (void)_updateCameraToggleButton
{
  v3 = [(CarChromeViewController *)self mapControlsOverlay];
  if (!v3)
  {
    v6 = 0;
LABEL_39:

    return;
  }

  v4 = v3;
  [v3 configuration];
  if (*v24 == 2 || *&v24[8] == 2)
  {

    goto LABEL_10;
  }

  if (*&v24[16] == 2)
  {
LABEL_10:
    if ([(ChromeViewController *)self isRunningNavigationDisplay])
    {
      v7 = [(ChromeViewController *)self navigationDisplay];
      v8 = [v7 currentCameraMode];

      v9 = [(CarChromeViewController *)self mapControlsOverlay];
      v10 = [v9 cameraToggleButtonState];

      if ((v8 - 2) < 2)
      {
        v16 = sub_10006D178();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          *v24 = 136315650;
          *&v24[4] = "[CarChromeViewController _updateCameraToggleButton]";
          *&v24[12] = 2080;
          *&v24[14] = "CarChromeViewController.m";
          *&v24[22] = 1024;
          v25 = 2694;
          _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion reached unexpectedly!", v24, 0x1Cu);
        }

        if (sub_100E03634())
        {
          v17 = sub_10006D178();
          if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
          {
            v18 = +[NSThread callStackSymbols];
            *v24 = 138412290;
            *&v24[4] = v18;
            _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "%@", v24, 0xCu);
          }
        }

        v19 = sub_100006E1C();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
        {
          *v24 = 134349056;
          *&v24[4] = self;
          _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "[%{public}p] _updateCameraToggleButton with NavigationCameraModeLowGuidance, which shouldn't happen.", v24, 0xCu);
        }

        v12 = 0;
      }

      else
      {
        v11 = 2;
        if (v8 != 1)
        {
          v11 = 0;
        }

        if (v8)
        {
          v12 = v11;
        }

        else
        {
          v12 = 1;
        }
      }

      v20 = [(CarChromeViewController *)self mapControlsOverlay];
      [v20 setCameraToggleButtonState:v12];

      v6 = sub_100006E1C();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
      {
        if (v10 > 2)
        {
          v21 = @".Unknown";
        }

        else
        {
          v21 = *(&off_1016373E0 + v10);
        }

        v22 = v21;
        v23 = *(&off_1016373E0 + v12);
        *v24 = 138412546;
        *&v24[4] = v22;
        *&v24[12] = 2112;
        *&v24[14] = v23;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEBUG, "_updateCameraToggleButton: updating from buttonState: %@ to state: %@", v24, 0x16u);
      }
    }

    else
    {
      v13 = sub_10006D178();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        *v24 = 136315650;
        *&v24[4] = "[CarChromeViewController _updateCameraToggleButton]";
        *&v24[12] = 2080;
        *&v24[14] = "CarChromeViewController.m";
        *&v24[22] = 1024;
        v25 = 2676;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion reached unexpectedly!", v24, 0x1Cu);
      }

      if (sub_100E03634())
      {
        v14 = sub_10006D178();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
        {
          v15 = +[NSThread callStackSymbols];
          *v24 = 138412290;
          *&v24[4] = v15;
          _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "%@", v24, 0xCu);
        }
      }

      v6 = sub_100006E1C();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        *v24 = 134349056;
        *&v24[4] = self;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "[%{public}p] _updateCameraToggleButton called, but we are not running the navigation display.", v24, 0xCu);
      }
    }

    goto LABEL_39;
  }
}

- (void)viewDidLayoutSubviews
{
  v7.receiver = self;
  v7.super_class = CarChromeViewController;
  [(ChromeViewController *)&v7 viewDidLayoutSubviews];
  v3 = [(ChromeViewController *)self overlayController];

  if (v3)
  {
    v4 = [(CarChromeViewController *)self view];
    v5 = [(ChromeViewController *)self overlayController];
    v6 = [v5 overlayContentView];
    [v4 bringSubviewToFront:v6];
  }
}

- (void)_updateAutohideBehavior
{
  if (!self->_isCurrentlyVisible)
  {
LABEL_4:
    v5 = sub_100006E1C();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      v15 = 134349056;
      v16 = self;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "[%{public}p] Will set autohide to never", &v15, 0xCu);
    }

    v6 = [(CarChromeViewController *)self topContext];
    v7 = [(CarChromeViewController *)self _autohidingContentIsHiddenForContext:v6];

    if (!v7)
    {
      goto LABEL_9;
    }

    v8 = self;
    v9 = 0;
LABEL_8:
    [(CarChromeViewController *)v8 setAutohidingContentHiddenForCurrentContext:v9];
LABEL_9:
    [(CarChromeViewController *)self _stopAutohideIdleTimer];
    [(CarChromeViewController *)self _removeAutohideGestureRecognizer];
    return;
  }

  v3 = [(CarChromeViewController *)self topContext];
  v4 = [(CarChromeViewController *)self _autohidingBehaviorForContext:v3];

  if (v4 > 1)
  {
    if ((v4 - 2) >= 2)
    {
      if (v4 == 4)
      {
        v14 = sub_100006E1C();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
        {
          v15 = 134349056;
          v16 = self;
          _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEBUG, "[%{public}p] Will set autohide to toggle", &v15, 0xCu);
        }

        [(CarChromeViewController *)self _addAutohideGestureRecognizer];
      }
    }

    else
    {
      v10 = sub_100006E1C();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        v15 = 134349056;
        v16 = self;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEBUG, "[%{public}p] Will set autohide to when idle/toggle with initial idle hiding", &v15, 0xCu);
      }

      [(CarChromeViewController *)self _addAutohideGestureRecognizer];
      [(CarChromeViewController *)self _startAutohideIdleTimerIfStopped];
    }
  }

  else
  {
    if ((v4 + 1) < 2)
    {
      goto LABEL_4;
    }

    if (v4 == 1)
    {
      v11 = sub_100006E1C();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        v15 = 134349056;
        v16 = self;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEBUG, "[%{public}p] Will set autohide to always", &v15, 0xCu);
      }

      v12 = [(CarChromeViewController *)self topContext];
      v13 = [(CarChromeViewController *)self _autohidingContentIsHiddenForContext:v12];

      if (v13)
      {
        goto LABEL_9;
      }

      v8 = self;
      v9 = 1;
      goto LABEL_8;
    }
  }
}

- (void)_updateNudgerizer
{
  v3 = [(CarChromeViewController *)self topContext];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = [(CarChromeViewController *)self topContext];
    v6 = [v5 allowKnobNudgeMapPanning];
  }

  else
  {
    v6 = 0;
  }

  v7 = [(CarChromeViewController *)self nudgerizer];
  [v7 setActive:v6];
}

- (CarMapNudgerizer)nudgerizer
{
  nudgerizer = self->_nudgerizer;
  if (!nudgerizer)
  {
    v4 = objc_alloc_init(CarMapNudgerizer);
    v5 = self->_nudgerizer;
    self->_nudgerizer = v4;

    v6 = [(ChromeViewController *)self mapView];
    [(CarMapNudgerizer *)self->_nudgerizer setMapView:v6];

    nudgerizer = self->_nudgerizer;
  }

  return nudgerizer;
}

- (void)_updateRouteSelectionController
{
  v3 = [(CarChromeViewController *)self _canSelectAlternateRoutes];
  v4 = [(ChromeViewController *)self mapView];
  [v4 _setCanSelectPOIs:v3];

  if (v3)
  {
    v5 = [(CarChromeViewController *)self routeSelectionController];
  }

  else
  {
    v5 = 0;
  }

  v6 = [(CarChromeViewController *)self mapViewResponder];
  [v6 setTarget:v5];

  if (v3)
  {
  }

  v7 = [(CarChromeViewController *)self routeSelectionController];
  [v7 setActive:v3];
}

- (void)_stopNavigationObscuredTimeout
{
  if (self->_navigationObscuredTimeout)
  {
    v3 = sub_100006E1C();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      v6 = 134349056;
      v7 = self;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "[%{public}p] Cancelling navigation obscured timeout", &v6, 0xCu);
    }

    navigationObscuredTimeout = self->_navigationObscuredTimeout;
  }

  else
  {
    navigationObscuredTimeout = 0;
  }

  [(NSTimer *)navigationObscuredTimeout invalidate];
  v5 = self->_navigationObscuredTimeout;
  self->_navigationObscuredTimeout = 0;
}

- (MapViewResponder)mapViewResponder
{
  mapViewResponder = self->_mapViewResponder;
  if (!mapViewResponder)
  {
    v4 = [MapViewResponder alloc];
    v5 = [(ChromeViewController *)self mapView];
    v6 = [(MapViewResponder *)v4 initWithMapView:v5];
    v7 = self->_mapViewResponder;
    self->_mapViewResponder = v6;

    mapViewResponder = self->_mapViewResponder;
  }

  return mapViewResponder;
}

- (CarRouteSelectionController)routeSelectionController
{
  routeSelectionController = self->_routeSelectionController;
  if (!routeSelectionController)
  {
    v4 = +[CarDisplayController sharedInstance];
    v5 = [v4 platformController];

    v6 = [[CarRouteSelectionController alloc] initWithPlatformController:v5 chromeViewController:self];
    v7 = self->_routeSelectionController;
    self->_routeSelectionController = v6;

    v8 = [(ChromeViewController *)self mapView];
    [(CarRouteSelectionController *)self->_routeSelectionController setMapView:v8];

    routeSelectionController = self->_routeSelectionController;
  }

  return routeSelectionController;
}

- (void)_removeAutohideGestureRecognizer
{
  autohideTapRecognizer = self->_autohideTapRecognizer;
  if (autohideTapRecognizer)
  {
    [(UITapGestureRecognizer *)autohideTapRecognizer setEnabled:0];
  }

  if (self->_autohidePresenceObserverToken)
  {
    v4 = +[NSNotificationCenter defaultCenter];
    [v4 removeObserver:self->_autohidePresenceObserverToken];

    autohidePresenceObserverToken = self->_autohidePresenceObserverToken;
    self->_autohidePresenceObserverToken = 0;
  }
}

- (void)updateHardwareBackButtonBehavior
{
  v3 = [(CarChromeViewController *)self topContext];
  v4 = [(CarChromeViewController *)self chromeViewItemForContext:v3 createIfNeeded:0];
  v5 = [v4 hardwareBackButtonBehavior];

  if (v5 > 1)
  {
    if (v5 == 2)
    {
      v6 = [(CarChromeViewController *)self backButtonRecognizer];
      v10 = v6;
      v7 = 0;
      goto LABEL_10;
    }

    if (v5 != 3)
    {
      return;
    }

LABEL_7:
    v6 = [(CarChromeViewController *)self backButtonRecognizer];
    v10 = v6;
    v7 = 1;
LABEL_10:
    [v6 setEnabled:v7];
    goto LABEL_11;
  }

  if (v5)
  {
    if (v5 != 1)
    {
      return;
    }

    goto LABEL_7;
  }

  v10 = [(ChromeViewController *)self contexts];
  v8 = [v10 count] > 1;
  v9 = [(CarChromeViewController *)self backButtonRecognizer];
  [v9 setEnabled:v8];

LABEL_11:
}

- (void)disableDoubleTapRecognizer
{
  doubleTapRecognizer = self->_doubleTapRecognizer;
  if (doubleTapRecognizer)
  {
    if ([(UITapGestureRecognizer *)doubleTapRecognizer isEnabled])
    {
      v4 = sub_100006E1C();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
      {
        v5 = 134349056;
        v6 = self;
        _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "[%{public}p] Will disable double tap gesture", &v5, 0xCu);
      }
    }

    [(UITapGestureRecognizer *)self->_doubleTapRecognizer setEnabled:0];
    [(CarChromeViewController *)self setDoubleTapBlock:0];
  }
}

- (void)interruptAutohideForIncidentalInteraction
{
  if (self->_isCurrentlyVisible)
  {
    v3 = [(CarChromeViewController *)self topContext];
    v4 = [(CarChromeViewController *)self _autohidingBehaviorForContext:v3];

    if (v4 == 4)
    {

      [(CarChromeViewController *)self setAutohidingContentHiddenForCurrentContext:0];
    }

    else
    {
      if (v4 == 3)
      {
        if (!self->_autohideIdleTimer)
        {
          return;
        }
      }

      else
      {
        if (v4 != 2)
        {
          return;
        }

        [(CarChromeViewController *)self setAutohidingContentHiddenForCurrentContext:0];
      }

      [(CarChromeViewController *)self _restartAutohideIdleTimer];
    }
  }
}

- (void)_startNavigationObscuredTimeout
{
  [(CarChromeViewController *)self _stopNavigationObscuredTimeout];
  if ([(CarChromeViewController *)self isDisplayingNavigation])
  {
    v3 = +[NSUserDefaults standardUserDefaults];
    [v3 doubleForKey:@"CarNavigationObscuredTimeoutInterval"];
    v5 = v4;

    v6 = sub_100006E1C();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      v9 = 134349312;
      v10 = self;
      v11 = 2048;
      v12 = v5;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEBUG, "[%{public}p] Scheduling navigation obscured timeout (%.1f)", &v9, 0x16u);
    }

    v7 = [NSTimer scheduledTimerWithTimeInterval:self target:"_navigationObscuredTimeoutFired:" selector:0 userInfo:0 repeats:v5];
    navigationObscuredTimeout = self->_navigationObscuredTimeout;
    self->_navigationObscuredTimeout = v7;
  }
}

+ (void)_updateAllowOneHandedZooming
{
  v2 = +[NSUserDefaults standardUserDefaults];
  v3 = [v2 objectForKey:@"__internal__CarPlayOneHandedZoomEnabled"];

  if (v3)
  {
    v4 = +[NSUserDefaults standardUserDefaults];
    byte_1019280A8 = [v4 BOOLForKey:@"__internal__CarPlayOneHandedZoomEnabled"];
  }
}

+ (id)localizedLocationAuthorizationMessage
{
  v2 = +[NSBundle mainBundle];
  v3 = [v2 objectForInfoDictionaryKey:@"CFBundleDisplayName"];

  v4 = +[NSBundle mainBundle];
  v5 = [v4 localizedStringForKey:@"To use %@ in CarPlay value:allow %@ to use your location on your iPhone. [CarPlay]" table:{@"localized string not found", 0}];

  v6 = [NSString stringWithFormat:v5, v3, v3];

  return v6;
}

+ (id)localizedLocationAuthorizationTitle
{
  v2 = +[NSBundle mainBundle];
  v3 = [v2 localizedStringForKey:@"%@ not available [CarPlay]" value:@"localized string not found" table:0];

  v4 = +[NSBundle mainBundle];
  v5 = [v4 objectForInfoDictionaryKey:@"CFBundleDisplayName"];
  v6 = [NSString stringWithFormat:v3, v5];

  return v6;
}

+ (void)initialize
{
  v4.receiver = a1;
  v4.super_class = &OBJC_METACLASS___CarChromeViewController;
  objc_msgSendSuper2(&v4, "initialize");
  if (objc_opt_class() == a1)
  {
    v3 = +[NSUserDefaults standardUserDefaults];
    [v3 registerDefaults:&off_1016EE268];
  }
}

- (void)_handleBackButton
{
  v3 = [(CarChromeViewController *)self topContext];
  v4 = [(CarChromeViewController *)self chromeViewItemForContext:v3 createIfNeeded:0];

  v5 = [v4 hardwareBackButtonBehavior];
  if (!v5)
  {
    v13 = [(CarChromeViewController *)self _previousContext];
    [(CarChromeViewController *)self _captureUserActionBackToContext:v13];

    v14 = +[CarChromeModeCoordinator sharedInstance];
    v15 = [(CarChromeViewController *)self topContext];
    [v14 popFromContext:v15];

    goto LABEL_16;
  }

  if (v5 == 1)
  {
    v6 = sub_100006E1C();
    if (!os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_14;
    }

    v7 = [(CarChromeViewController *)self topContext];
    if (!v7)
    {
      v12 = @"<nil>";
      goto LABEL_13;
    }

    v8 = objc_opt_class();
    v9 = NSStringFromClass(v8);
    if (objc_opt_respondsToSelector())
    {
      v10 = [v7 performSelector:"accessibilityIdentifier"];
      v11 = v10;
      if (v10 && ![v10 isEqualToString:v9])
      {
        v12 = [NSString stringWithFormat:@"%@<%p, %@>", v9, v7, v11];

        goto LABEL_10;
      }
    }

    v12 = [NSString stringWithFormat:@"%@<%p>", v9, v7];
LABEL_10:

LABEL_13:
    *buf = 134349314;
    v20 = self;
    v21 = 2112;
    v22 = v12;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEBUG, "[%{public}p] %@ will handle hardware back button", buf, 0x16u);

LABEL_14:
    v16 = [(CarChromeViewController *)self topContext];
    v17 = objc_opt_respondsToSelector();

    if (v17)
    {
      v18 = [(CarChromeViewController *)self topContext];
      [v18 handleHardwareBackButtonPressed];
    }
  }

LABEL_16:
}

- (id)_previousContext
{
  v3 = [(ChromeViewController *)self contexts];
  v4 = [v3 count];

  v5 = [(ChromeViewController *)self contexts];
  v6 = [v5 count];

  if (v6 >= 2)
  {
    v8 = [(ChromeViewController *)self contexts];
    v7 = [v8 objectAtIndexedSubscript:v4 - 2];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)setHardwareBackButtonBehavior:(int64_t)a3 forContext:(id)a4
{
  v6 = a4;
  v7 = [(CarChromeViewController *)self chromeViewItemForContext:v6 createIfNeeded:1];
  if (a3 != 1)
  {
    goto LABEL_19;
  }

  if (objc_opt_respondsToSelector())
  {
    a3 = 1;
    goto LABEL_19;
  }

  v8 = sub_10006D178();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    v9 = v6;
    if (!v9)
    {
      v14 = @"<nil>";
      goto LABEL_13;
    }

    v10 = objc_opt_class();
    v11 = NSStringFromClass(v10);
    if (objc_opt_respondsToSelector())
    {
      v12 = [v9 performSelector:"accessibilityIdentifier"];
      v13 = v12;
      if (v12 && ![v12 isEqualToString:v11])
      {
        v14 = [NSString stringWithFormat:@"%@<%p, %@>", v11, v9, v13];

        goto LABEL_11;
      }
    }

    v14 = [NSString stringWithFormat:@"%@<%p>", v11, v9];
LABEL_11:

LABEL_13:
    v15 = [NSString stringWithFormat:@"Context %@ wants Custom back button behavior, but does not implement -handleHardwareBackButtonPressed", v14];
    *buf = 136316162;
    v31 = "[CarChromeViewController setHardwareBackButtonBehavior:forContext:]";
    v32 = 2080;
    v33 = "CarChromeViewController.m";
    v34 = 1024;
    *v35 = 3540;
    *&v35[4] = 2080;
    *&v35[6] = "NO";
    *&v35[14] = 2112;
    *&v35[16] = v15;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion: (%s) '%@'", buf, 0x30u);
  }

  if (sub_100E03634())
  {
    v16 = sub_10006D178();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v17 = +[NSThread callStackSymbols];
      *buf = 138412290;
      v31 = v17;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
    }
  }

  a3 = 0;
LABEL_19:
  v18 = sub_100006E1C();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
  {
    v19 = [v7 hardwareBackButtonBehavior];
    if (v19 >= 4)
    {
      v21 = sub_10006D178();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315650;
        v31 = "NSString *NSStringFromCarChromeHardwareBackButtonBehavior(CarChromeHardwareBackButtonBehavior)";
        v32 = 2080;
        v33 = "CarChromeViewController.m";
        v34 = 1024;
        *v35 = 112;
        _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion reached unexpectedly!", buf, 0x1Cu);
      }

      if (sub_100E03634())
      {
        v22 = sub_10006D178();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
        {
          v23 = +[NSThread callStackSymbols];
          *buf = 138412290;
          v31 = v23;
          _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
        }
      }

      v20 = 0;
    }

    else
    {
      v20 = off_1016227A8[v19];
    }

    if (a3 >= 4)
    {
      v25 = sub_10006D178();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315650;
        v31 = "NSString *NSStringFromCarChromeHardwareBackButtonBehavior(CarChromeHardwareBackButtonBehavior)";
        v32 = 2080;
        v33 = "CarChromeViewController.m";
        v34 = 1024;
        *v35 = 112;
        _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion reached unexpectedly!", buf, 0x1Cu);
      }

      if (sub_100E03634())
      {
        v26 = sub_10006D178();
        if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
        {
          v27 = +[NSThread callStackSymbols];
          *buf = 138412290;
          v31 = v27;
          _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
        }
      }

      v24 = 0;
    }

    else
    {
      v24 = off_1016227A8[a3];
    }

    v28 = objc_opt_class();
    v29 = NSStringFromClass(v28);
    *buf = 134349826;
    v31 = self;
    v32 = 2112;
    v33 = v20;
    v34 = 2112;
    *v35 = v24;
    *&v35[8] = 2112;
    *&v35[10] = v29;
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEBUG, "[%{public}p] Updating HW back button behavior from: %@ to : %@. For context: %@", buf, 0x2Au);
  }

  [v7 setHardwareBackButtonBehavior:a3];
  [(CarChromeViewController *)self updateHardwareBackButtonBehavior];
}

- (void)decrementForToken:(id)a3
{
  v4 = a3;
  label = dispatch_queue_get_label(&_dispatch_main_q);
  v6 = dispatch_queue_get_label(0);
  if (label != v6)
  {
    v7 = !label || v6 == 0;
    if (v7 || strcmp(label, v6))
    {
      v22 = sub_10006D178();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        *buf = 136316418;
        v27 = "[CarChromeViewController decrementForToken:]";
        v28 = 2080;
        v29 = "CarChromeViewController.m";
        v30 = 1024;
        v31 = 3515;
        v32 = 2080;
        v33 = "dispatch_get_main_queue()";
        v34 = 2080;
        v35 = dispatch_queue_get_label(&_dispatch_main_q);
        v36 = 2080;
        v37 = dispatch_queue_get_label(0);
        _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion on queue failed: %s/%s; actual queue: %s", buf, 0x3Au);
      }

      if (sub_100E03634())
      {
        v23 = sub_10006D178();
        if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
        {
          v24 = +[NSThread callStackSymbols];
          *buf = 138412290;
          v27 = v24;
          _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
        }
      }
    }
  }

  v8 = [v4 tokenGroupName];
  v9 = [v8 isEqualToString:@"CarForcedAutohideBehaviorTokenGroup"];

  if (v9)
  {
    v10 = sub_100006E1C();
    if (!os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
LABEL_24:

      [(CarChromeViewController *)self _updateAutohideBehavior];
      goto LABEL_25;
    }

    v11 = v4;
    if (!v11)
    {
      v16 = @"<nil>";
      goto LABEL_23;
    }

    v12 = objc_opt_class();
    v13 = NSStringFromClass(v12);
    if (objc_opt_respondsToSelector())
    {
      v14 = [v11 performSelector:"accessibilityIdentifier"];
      v15 = v14;
      if (v14 && ![v14 isEqualToString:v13])
      {
        v16 = [NSString stringWithFormat:@"%@<%p, %@>", v13, v11, v15];

        goto LABEL_15;
      }
    }

    v16 = [NSString stringWithFormat:@"%@<%p>", v13, v11];
LABEL_15:

LABEL_23:
    *buf = 134349314;
    v27 = self;
    v28 = 2112;
    v29 = v16;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "[%{public}p] _endForcingAutohideBehaviorWithToken (token: %@)", buf, 0x16u);

    goto LABEL_24;
  }

  v17 = [v4 tokenGroupName];
  v18 = [v17 isEqualToString:@"CarChromeModernMap"];

  if (v18)
  {
    v19 = sub_10000B11C();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      *buf = 134349314;
      v27 = self;
      v28 = 2112;
      v29 = v4;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_INFO, "[%{public}p] Releasing modern map token: %@", buf, 0x16u);
    }

    v20 = +[NSNotificationCenter defaultCenter];
    [v20 postNotificationName:@"ChromeViewControllerDidUpdateShouldUseModernMap" object:self];

    v21 = [(ChromeViewController *)self mapView];

    if (v21)
    {
      [(CarChromeViewController *)self _updateModernMapCartographicConfiguration];
    }
  }

  else
  {
    v25.receiver = self;
    v25.super_class = CarChromeViewController;
    [(ChromeViewController *)&v25 decrementForToken:v4];
  }

LABEL_25:
}

- (void)incrementForToken:(id)a3
{
  v4 = a3;
  v27.receiver = self;
  v27.super_class = CarChromeViewController;
  [(ChromeViewController *)&v27 incrementForToken:v4];
  v5 = [v4 tokenGroupName];
  v6 = [v5 isEqualToString:@"CarForcedAutohideBehaviorTokenGroup"];

  if (v6)
  {
    v7 = [v4 userInfo];
    v8 = [v7 objectForKeyedSubscript:@"CarForcedAutohideBehaviorKey"];
    v9 = [v8 integerValue];

    v10 = sub_100006E1C();
    if (!os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
LABEL_26:

      [(CarChromeViewController *)self _updateAutohideBehavior];
      goto LABEL_27;
    }

    v11 = v4;
    if (!v11)
    {
      v16 = @"<nil>";
      goto LABEL_25;
    }

    v12 = objc_opt_class();
    v13 = NSStringFromClass(v12);
    if (objc_opt_respondsToSelector())
    {
      v14 = [v11 performSelector:"accessibilityIdentifier"];
      v15 = v14;
      if (v14 && ![v14 isEqualToString:v13])
      {
        v16 = [NSString stringWithFormat:@"%@<%p, %@>", v13, v11, v15];

        goto LABEL_9;
      }
    }

    v16 = [NSString stringWithFormat:@"%@<%p>", v13, v11];
LABEL_9:

LABEL_25:
    *buf = 134349570;
    v29 = self;
    v30 = 2048;
    v31 = v9;
    v32 = 2112;
    v33 = v16;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "[%{public}p] _beginForcingAutohideBehavior (behavior: %ld, token: %@)", buf, 0x20u);

    goto LABEL_26;
  }

  v17 = [v4 tokenGroupName];
  v18 = [v17 isEqualToString:@"CarChromeModernMap"];

  if (v18)
  {
    v19 = [v4 userInfo];
    v20 = [v19 objectForKeyedSubscript:@"reason"];

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v21 = sub_10006D178();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315650;
        v29 = "[CarChromeViewController incrementForToken:]";
        v30 = 2080;
        v31 = "CarChromeViewController.m";
        v32 = 1024;
        LODWORD(v33) = 3502;
        _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion reached unexpectedly!", buf, 0x1Cu);
      }

      if (sub_100E03634())
      {
        v22 = sub_10006D178();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
        {
          v23 = +[NSThread callStackSymbols];
          *buf = 138412290;
          v29 = v23;
          _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
        }
      }

      v24 = sub_10000B11C();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        *buf = 134349314;
        v29 = self;
        v30 = 2112;
        v31 = v4;
        _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, "[%{public}p] Invalid modern map token: %@", buf, 0x16u);
      }
    }

    v25 = +[NSNotificationCenter defaultCenter];
    [v25 postNotificationName:@"ChromeViewControllerDidUpdateShouldUseModernMap" object:self];

    v26 = [(ChromeViewController *)self mapView];

    if (v26)
    {
      [(CarChromeViewController *)self _updateModernMapCartographicConfiguration];
    }
  }

LABEL_27:
}

- (id)acquireForcedAutohideBehaviourTokenWithBehaviour:(int64_t)a3
{
  forcedAutohideTokens = self->_forcedAutohideTokens;
  v8 = @"CarForcedAutohideBehaviorKey";
  v4 = [NSNumber numberWithInteger:a3];
  v9 = v4;
  v5 = [NSDictionary dictionaryWithObjects:&v9 forKeys:&v8 count:1];
  v6 = [(MapsTokenStorage *)forcedAutohideTokens tokenWithUserInfo:v5];

  return v6;
}

- (int64_t)forcedAutohideBehavior
{
  if (![(CarChromeViewController *)self isForcingAutohideBehavior])
  {
    return -1;
  }

  v3 = [(MapsTokenStorage *)self->_forcedAutohideTokens tokens];
  v4 = [v3 lastObject];

  v5 = [v4 userInfo];
  v6 = [v5 objectForKeyedSubscript:@"CarForcedAutohideBehaviorKey"];
  v7 = [v6 integerValue];

  v8 = sub_100006E1C();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v10 = 134349312;
    v11 = self;
    v12 = 2048;
    v13 = v7;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "[%{public}p] forcedAutohideBehavior: %ld", &v10, 0x16u);
  }

  return v7;
}

- (BOOL)gestureRecognizer:(id)a3 shouldRequireFailureOfGestureRecognizer:(id)a4
{
  if (self->_autohideTapRecognizer != a3)
  {
    return 0;
  }

  v5 = a4;
  v6 = [(ChromeViewController *)self mapView];
  v7 = [v6 _selectingTapGestureRecognizer];

  if (v7 != v5)
  {
    return 0;
  }

  return [(CarChromeViewController *)self _canSelectAlternateRoutes];
}

- (BOOL)gestureRecognizer:(id)a3 shouldReceiveTouch:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v7 view];
  v9 = [(ChromeViewController *)self passThroughView];
  if (v8 != v9 && ([v8 isDescendantOfView:v9] & 1) == 0)
  {
    v10 = [(CarChromeViewController *)self viewIfLoaded];

    if (v8 != v10)
    {
      goto LABEL_7;
    }
  }

  if (self->_autohideTapRecognizer != v6)
  {
    goto LABEL_9;
  }

  v11 = [(CarChromeViewController *)self topContext];
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {

    goto LABEL_9;
  }

  v12 = [(CarChromeViewController *)self topContext];
  v13 = [v12 shouldSuppressAutohideRecognizerForTouch:v7];

  if ((v13 & 1) == 0)
  {
LABEL_9:
    v14 = 1;
    goto LABEL_10;
  }

LABEL_7:
  v14 = 0;
LABEL_10:

  return v14;
}

- (void)_addAutohideGestureRecognizer
{
  autohideTapRecognizer = self->_autohideTapRecognizer;
  if (!autohideTapRecognizer)
  {
    v4 = [[UITapGestureRecognizer alloc] initWithTarget:self action:"_autohideGestureRecognizerDetectedTap:"];
    v5 = self->_autohideTapRecognizer;
    self->_autohideTapRecognizer = v4;

    [(UITapGestureRecognizer *)self->_autohideTapRecognizer setAllowedTouchTypes:&off_1016EC770];
    [(UITapGestureRecognizer *)self->_autohideTapRecognizer setDelegate:self];
    if (self->_doubleTapRecognizer)
    {
      [(UITapGestureRecognizer *)self->_autohideTapRecognizer requireGestureRecognizerToFail:?];
    }

    v6 = [(CarChromeViewController *)self view];
    [v6 addGestureRecognizer:self->_autohideTapRecognizer];

    autohideTapRecognizer = self->_autohideTapRecognizer;
  }

  [(UITapGestureRecognizer *)autohideTapRecognizer setEnabled:1];
  v7 = [(ChromeViewController *)self mapView];
  v8 = [v7 _doubleTapGestureRecognizer];

  if (v8)
  {
    v9 = self->_autohideTapRecognizer;
    v10 = [(ChromeViewController *)self mapView];
    v11 = [v10 _doubleTapGestureRecognizer];
    [(UITapGestureRecognizer *)v9 requireGestureRecognizerToFail:v11];
  }

  v12 = [(ChromeViewController *)self mapView];
  v13 = [v12 _oneHandedZoomGestureRecognizer];

  if (v13)
  {
    v14 = self->_autohideTapRecognizer;
    v15 = [(ChromeViewController *)self mapView];
    v16 = [v15 _oneHandedZoomGestureRecognizer];
    [(UITapGestureRecognizer *)v14 requireGestureRecognizerToFail:v16];
  }

  if (!self->_autohidePresenceObserverToken)
  {
    objc_initWeak(&location, self);
    v17 = +[NSNotificationCenter defaultCenter];
    v18 = +[NSOperationQueue mainQueue];
    v19 = _UIScreenCarPlayHumanPresenceDidChangeNotification;
    v22[0] = _NSConcreteStackBlock;
    v22[1] = 3221225472;
    v22[2] = sub_10058DE08;
    v22[3] = &unk_10165FBE8;
    objc_copyWeak(&v23, &location);
    v20 = [v17 addObserverForName:v19 object:0 queue:v18 usingBlock:v22];
    autohidePresenceObserverToken = self->_autohidePresenceObserverToken;
    self->_autohidePresenceObserverToken = v20;

    objc_destroyWeak(&v23);
    objc_destroyWeak(&location);
  }
}

- (void)_startAutohideIdleTimerIfStopped
{
  if (!self->_autohideIdleTimer)
  {
    [(CarChromeViewController *)self _restartAutohideIdleTimer];
  }
}

- (BOOL)_areAccessoriesHiddenForContext:(id)a3
{
  v4 = a3;
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    goto LABEL_16;
  }

  v5 = [v4 accessoriesHidingBehavior];
  if (v5 > 1)
  {
    if (v5 == 2)
    {
      v7 = [(CarChromeViewController *)self isAutohidingContentHiddenForContext:v4];
      goto LABEL_17;
    }

    if (v5 == 3)
    {
      v6 = [(ChromeViewController *)self isCurrentContext:v4];
      goto LABEL_9;
    }

    goto LABEL_10;
  }

  if (!v5)
  {
LABEL_16:
    v7 = 1;
    goto LABEL_17;
  }

  if (v5 != 1)
  {
LABEL_10:
    v8 = sub_10006D178();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v12 = 136315650;
      v13 = "[CarChromeViewController _areAccessoriesHiddenForContext:]";
      v14 = 2080;
      v15 = "CarChromeViewController.m";
      v16 = 1024;
      v17 = 3346;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion reached unexpectedly!", &v12, 0x1Cu);
    }

    if (sub_100E03634())
    {
      v9 = sub_10006D178();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        v10 = +[NSThread callStackSymbols];
        v12 = 138412290;
        v13 = v10;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "%@", &v12, 0xCu);
      }
    }

    goto LABEL_16;
  }

  v6 = [(CarChromeViewController *)self isAutohidingContentHiddenForContext:v4];
LABEL_9:
  v7 = v6 ^ 1;
LABEL_17:

  return v7;
}

- (BOOL)isAutohidingContentHiddenForContext:(id)a3
{
  v4 = a3;
  if ([(ChromeViewController *)self isCurrentContext:v4])
  {
    v5 = [(CarChromeViewController *)self _autohidingContentIsHiddenForContext:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)setAutohidingContentHiddenForCurrentContext:(BOOL)a3
{
  v3 = a3;
  v5 = [(CarChromeViewController *)self topContext];
  v6 = [(CarChromeViewController *)self _autohidingBehaviorForContext:v5];

  if (!v3 || (self->_isCurrentlyVisible ? (v7 = v6 == 0) : (v7 = 1), !v7))
  {
    v8 = [(CarChromeViewController *)self topContext];
    v9 = [(CarChromeViewController *)self _autohidingBehaviorForContext:v8];

    if (v3 || v9 != 1)
    {
      v10 = [(CarChromeViewController *)self topContext];
      v11 = [(CarChromeViewController *)self _autohidingContentIsHiddenForContext:v10];

      if (v11 != v3)
      {
        v12 = [(CarChromeViewController *)self topContext];
        [(CarChromeViewController *)self _recordAutohidingContentIsHidden:v3 forContext:v12];

        v13 = +[CarDisplayController sharedInstance];
        v14 = [v13 window];
        v15 = [v14 windowScene];
        v16 = [v15 focusSystem];
        v23 = [v16 focusedItem];

        if (!self->_ownsFocus || v3 || v23)
        {
          if (!self->_ownsFocus || !v23 || ([v23 canBecomeFocused] & 1) != 0)
          {
LABEL_14:
            v18 = +[GroupAnimation animation];
            v19 = [(CarChromeViewController *)self topContext];
            if (v3)
            {
              v20 = objc_opt_respondsToSelector();

              if (v20)
              {
                v21 = [(CarChromeViewController *)self topContext];
                [v21 hideAutohidingContentWithAnimation:v18];
LABEL_24:
              }
            }

            else
            {
              v22 = objc_opt_respondsToSelector();

              if (v22)
              {
                v21 = [(CarChromeViewController *)self topContext];
                [v21 showAutohidingContentWithAnimation:v18];
                goto LABEL_24;
              }
            }

            [(ChromeViewController *)self setNeedsUpdateComponent:@"mapcontrols" animated:1];
            [(ChromeViewController *)self setNeedsUpdateComponent:@"accessories" animated:1];
            [(ChromeViewController *)self updateComponentsIfNeeded:1 withAnimation:v18];
            [v18 runWithCurrentOptions];

            return;
          }
        }

        else
        {
          v17 = [(CarChromeViewController *)self topContext];
          objc_storeWeak(&self->_restoreFocusForContext, v17);
        }

        [(CarChromeViewController *)self setNeedsFocusUpdate];
        [(CarChromeViewController *)self updateFocusIfNeeded];
        goto LABEL_14;
      }
    }
  }
}

- (void)_humanPresenceDidChange
{
  v3 = +[CarDisplayController sharedInstance];
  v7 = [v3 screen];

  if ([v7 _isCarPlayHumanPresenceInRange])
  {
    [(CarChromeViewController *)self setAutohidingContentHiddenForCurrentContext:0];
    [(CarChromeViewController *)self _stopAutohideIdleTimer];
  }

  else
  {
    v4 = [(CarChromeViewController *)self topContext];
    if ([(CarChromeViewController *)self _autohidingBehaviorForContext:v4]== 2)
    {
      v5 = [(CarChromeViewController *)self topContext];
      v6 = [(CarChromeViewController *)self _autohidingContentIsHiddenForContext:v5];

      if ((v6 & 1) == 0)
      {
        [(CarChromeViewController *)self _restartAutohideIdleTimer];
      }
    }

    else
    {
    }
  }
}

- (void)_autohideGestureRecognizerDetectedTap:(id)a3
{
  if ([(UITapGestureRecognizer *)self->_autohideTapRecognizer state]== 3)
  {
    v4 = sub_100006E1C();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      v16 = 134349056;
      v17 = self;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "[%{public}p] Autohide gesture recognizer fired", &v16, 0xCu);
    }

    v5 = [(CarChromeViewController *)self topContext];
    v6 = [(CarChromeViewController *)self _autohidingBehaviorForContext:v5];

    if (v6 <= 1)
    {
      v12 = sub_10006D178();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        v16 = 136315906;
        v17 = "[CarChromeViewController _autohideGestureRecognizerDetectedTap:]";
        v18 = 2080;
        v19 = "CarChromeViewController.m";
        v20 = 1024;
        v21 = 3200;
        v22 = 2080;
        v23 = "autohideBehavior != CarChromeAutohideNever && autohideBehavior != CarChromeAutohideAlways";
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion: (%s)", &v16, 0x26u);
      }

      if (sub_100E03634())
      {
        v13 = sub_10006D178();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
        {
          v14 = +[NSThread callStackSymbols];
          v16 = 138412290;
          v17 = v14;
          _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "%@", &v16, 0xCu);
        }
      }

      v15 = sub_100006E1C();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        v16 = 134349056;
        v17 = self;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "[%{public}p] Autohide gesture recognizer tried to show/hide content, but it shouldn't be installed.", &v16, 0xCu);
      }
    }

    else
    {
      [(CarChromeViewController *)self _stopAutohideIdleTimer];
      v7 = [(CarChromeViewController *)self topContext];
      v8 = [(CarChromeViewController *)self _autohidingContentIsHiddenForContext:v7];

      if (v8)
      {
        v9 = 1039;
      }

      else
      {
        v9 = 1038;
      }

      [(CarChromeViewController *)self captureUserAction:v9];
      [(CarChromeViewController *)self setAutohidingContentHiddenForCurrentContext:v8 ^ 1];
      if (v6 == 2)
      {
        v10 = [(CarChromeViewController *)self topContext];
        v11 = [(CarChromeViewController *)self _autohidingContentIsHiddenForContext:v10];

        if ((v11 & 1) == 0)
        {
          [(CarChromeViewController *)self _restartAutohideIdleTimer];
        }
      }
    }
  }
}

- (void)_autohideBecameIdle
{
  [(CarChromeViewController *)self _stopAutohideIdleTimer];
  v3 = +[CarDisplayController sharedInstance];
  v4 = [v3 screen];
  v5 = [v4 _isCarPlayHumanPresenceInRange];

  if ((v5 & 1) == 0)
  {
    v6 = [(CarChromeViewController *)self topContext];
    v7 = [(CarChromeViewController *)self _autohidingBehaviorForContext:v6];

    if ((v7 & 0xFFFFFFFFFFFFFFFELL) == 2)
    {

      [(CarChromeViewController *)self setAutohidingContentHiddenForCurrentContext:1];
    }
  }
}

- (void)_setAutohideBehavior:(int64_t)a3 forContext:(id)a4
{
  v6 = a4;
  v7 = sub_100006E1C();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v8 = v6;
    if (!v8)
    {
      v13 = @"<nil>";
      goto LABEL_10;
    }

    v9 = objc_opt_class();
    v10 = NSStringFromClass(v9);
    if (objc_opt_respondsToSelector())
    {
      v11 = [v8 performSelector:"accessibilityIdentifier"];
      v12 = v11;
      if (v11 && ![v11 isEqualToString:v10])
      {
        v13 = [NSString stringWithFormat:@"%@<%p, %@>", v10, v8, v12];

        goto LABEL_8;
      }
    }

    v13 = [NSString stringWithFormat:@"%@<%p>", v10, v8];
LABEL_8:

LABEL_10:
    *buf = 134349570;
    v16 = self;
    v17 = 2048;
    v18 = a3;
    v19 = 2112;
    v20 = v13;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "[%{public}p] _setAutohideBehaviour (behavior:%ld, context:%@", buf, 0x20u);
  }

  v14 = [(CarChromeViewController *)self chromeViewItemForContext:v6 createIfNeeded:1];
  [v14 setAutohideBehavior:a3];
}

- (int64_t)_autohidingBehaviorForContext:(id)a3
{
  v4 = a3;
  if ([(CarChromeViewController *)self isForcingAutohideBehavior])
  {
    v5 = [(CarChromeViewController *)self forcedAutohideBehavior];
  }

  else
  {
    v6 = [(CarChromeViewController *)self chromeViewItemForContext:v4 createIfNeeded:0];
    v7 = v6;
    if (v6)
    {
      v5 = [v6 autohideBehavior];
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

- (void)_recordAutohidingContentIsHidden:(BOOL)a3 forContext:(id)a4
{
  v4 = a3;
  v6 = a4;
  v7 = sub_100006E1C();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v8 = @"NO";
    if (v4)
    {
      v8 = @"YES";
    }

    v9 = v8;
    v10 = v6;
    if (!v10)
    {
      v15 = @"<nil>";
      goto LABEL_12;
    }

    v11 = objc_opt_class();
    v12 = NSStringFromClass(v11);
    if (objc_opt_respondsToSelector())
    {
      v13 = [v10 performSelector:"accessibilityIdentifier"];
      v14 = v13;
      if (v13 && ![v13 isEqualToString:v12])
      {
        v15 = [NSString stringWithFormat:@"%@<%p, %@>", v12, v10, v14];

        goto LABEL_10;
      }
    }

    v15 = [NSString stringWithFormat:@"%@<%p>", v12, v10];
LABEL_10:

LABEL_12:
    *buf = 134349570;
    v18 = self;
    v19 = 2112;
    v20 = v9;
    v21 = 2112;
    v22 = v15;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "[%{public}p] _setAutohidingContentIsHidden (hidden:%@, context:%@", buf, 0x20u);
  }

  v16 = [(CarChromeViewController *)self chromeViewItemForContext:v6 createIfNeeded:1];
  [v16 setAutohidingContentIsHidden:v4];
}

- (BOOL)_autohidingContentIsHiddenForContext:(id)a3
{
  v3 = [(CarChromeViewController *)self chromeViewItemForContext:a3 createIfNeeded:0];
  v4 = [v3 isAutohidingContentHidden];

  return v4;
}

- (void)_requestAutohideBehaviorForContext:(id)a3
{
  v5 = a3;
  if (objc_opt_respondsToSelector())
  {
    v4 = [v5 autohideBehavior];
  }

  else
  {
    v4 = 0;
  }

  if (v4 != [(CarChromeViewController *)self _autohidingBehaviorForContext:v5])
  {
    [(CarChromeViewController *)self _setAutohideBehavior:v4 forContext:v5];
  }
}

- (void)setNeedsAutohideBehaviorUpdateForContext:(id)a3
{
  v4 = a3;
  [(CarChromeViewController *)self _requestAutohideBehaviorForContext:v4];
  v5 = [(ChromeViewController *)self isTopContext:v4];

  if (v5)
  {

    [(CarChromeViewController *)self _updateAutohideBehavior];
  }
}

- (void)carCardView:(id)a3 didChangeFocus:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [(CarChromeViewController *)self topContext];
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    v9 = sub_10006CF98();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v11 = 134349056;
      v12 = self;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "[%{public}p] CardView became focused, topContext will handle responding.", &v11, 0xCu);
    }

    v10 = [(CarChromeViewController *)self topContext];
    [v10 carCardView:v6 didChangeFocus:v4];
  }
}

- (void)carCardView:(id)a3 chevronButtonSelected:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(CarChromeViewController *)self topContext];
  v9 = objc_opt_respondsToSelector();

  if (v9)
  {
    v10 = sub_10006CF98();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v12 = 134349056;
      v13 = self;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "[%{public}p] CardView chevronButton accessory tapped, top context will handle responding.", &v12, 0xCu);
    }

    v11 = [(CarChromeViewController *)self topContext];
    [v11 carCardView:v6 chevronButtonSelected:v7];
  }
}

- (void)carCardViewCloseButtonTapped:(id)a3
{
  v4 = a3;
  v5 = [(CarChromeViewController *)self topContext];
  v6 = objc_opt_respondsToSelector();

  v7 = sub_10006CF98();
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_INFO);
  if ((v6 & 1) == 0)
  {
    if (!v8)
    {
LABEL_15:

      v20 = [(CarChromeViewController *)self _previousContext];
      [(CarChromeViewController *)self _captureUserActionBackToContext:v20];

      v11 = +[CarChromeModeCoordinator sharedInstance];
      v21 = [(CarChromeViewController *)self topContext];
      [v11 popFromContext:v21];

      goto LABEL_16;
    }

    v12 = self;
    if (!v12)
    {
      v17 = @"<nil>";
      goto LABEL_14;
    }

    v13 = objc_opt_class();
    v14 = NSStringFromClass(v13);
    if (objc_opt_respondsToSelector())
    {
      v15 = [(CarChromeViewController *)v12 performSelector:"accessibilityIdentifier"];
      v16 = v15;
      if (v15 && ![v15 isEqualToString:v14])
      {
        v17 = [NSString stringWithFormat:@"%@<%p, %@>", v14, v12, v16];

        goto LABEL_12;
      }
    }

    v17 = [NSString stringWithFormat:@"%@<%p>", v14, v12];
LABEL_12:

LABEL_14:
    v18 = [(CarChromeViewController *)v12 topContext];
    v19 = [(ChromeViewController *)v12 contexts];
    *buf = 138543874;
    v23 = v17;
    v24 = 2112;
    v25 = v18;
    v26 = 2112;
    v27 = v19;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "[%{public}@] CardView closeButton accessory tapped, chrome will pop current context. Top Context: %@ All Contexts : %@", buf, 0x20u);

    goto LABEL_15;
  }

  if (v8)
  {
    v9 = [(CarChromeViewController *)self topContext];
    v10 = [(ChromeViewController *)self contexts];
    *buf = 134349570;
    v23 = self;
    v24 = 2112;
    v25 = v9;
    v26 = 2112;
    v27 = v10;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "[%{public}p] CardView closeButton accessory tapped, top context will handle responding. Top Context: %@ All Contexts : %@", buf, 0x20u);
  }

  v11 = [(CarChromeViewController *)self topContext];
  [v11 carCardViewCloseButtonTapped:v4];
LABEL_16:
}

- (void)_reloadCardsAnimated:(BOOL)a3
{
  [(CarChromeViewController *)self _reloadCardOverlayConstraintsIfNeeded];
  if ([(ChromeViewController *)self isSuppressed])
  {
    v4 = sub_10006CF98();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      *buf = 134349056;
      v35 = self;
      v5 = "[%{public}p] Will not reload cards, suppressed.";
LABEL_19:
      v23 = v4;
      v24 = OS_LOG_TYPE_INFO;
LABEL_25:
      _os_log_impl(&_mh_execute_header, v23, v24, v5, buf, 0xCu);
    }
  }

  else
  {
    v6 = [(ChromeViewController *)self overlayController];
    v7 = [v6 overlayContentView];

    if (v7)
    {
      v8 = [(CarChromeViewController *)self cardsOverlay];
      [v8 dismissAllCardsAnimated:0 completion:0];

      v9 = [(ChromeViewController *)self overlayController];
      v10 = [v9 overlayContentView];
      [v10 setAccessibilityViewIsModal:0];

      v11 = [(CarChromeViewController *)self topContext];
      LOBYTE(v10) = objc_opt_respondsToSelector();

      if (v10)
      {
        v12 = [(CarChromeViewController *)self topContext];
        v13 = objc_opt_respondsToSelector();

        if ((v13 & 1) == 0)
        {
          v25 = sub_10006D178();
          if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315906;
            v35 = "[CarChromeViewController _reloadCardsAnimated:]";
            v36 = 2080;
            v37 = "CarChromeViewController.m";
            v38 = 1024;
            v39 = 3038;
            v40 = 2080;
            v41 = "[self.topContext respondsToSelector:@selector(configureCard:forKey:)]";
            _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion: (%s)", buf, 0x26u);
          }

          if (sub_100E03634())
          {
            v26 = sub_10006D178();
            if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
            {
              v27 = +[NSThread callStackSymbols];
              *buf = 138412290;
              v35 = v27;
              _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
            }
          }
        }

        v14 = [(CarChromeViewController *)self topContext];
        v15 = objc_opt_respondsToSelector();

        if (v15)
        {
          v4 = [(CarChromeViewController *)self _desiredCards];
          if ([v4 count])
          {
            v31 = 0u;
            v32 = 0u;
            v29 = 0u;
            v30 = 0u;
            v4 = v4;
            v16 = [v4 countByEnumeratingWithState:&v29 objects:v33 count:16];
            if (v16)
            {
              v17 = v16;
              v18 = *v30;
              do
              {
                for (i = 0; i != v17; i = i + 1)
                {
                  if (*v30 != v18)
                  {
                    objc_enumerationMutation(v4);
                  }

                  v20 = *(*(&v29 + 1) + 8 * i);
                  v21 = [(CarChromeViewController *)self cardsOverlay];
                  v28[0] = _NSConcreteStackBlock;
                  v28[1] = 3221225472;
                  v28[2] = sub_10058F708;
                  v28[3] = &unk_101622738;
                  v28[4] = self;
                  v28[5] = v20;
                  [v21 configureCard:v20 withBlock:v28];
                }

                v17 = [v4 countByEnumeratingWithState:&v29 objects:v33 count:16];
              }

              while (v17);
            }

            v22 = [(CarChromeViewController *)self cardsOverlay];
            [v22 presentAllCardsAnimated:0 completion:0];
          }

          goto LABEL_26;
        }

        v4 = sub_10006CF98();
        if (!os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_26;
        }

        *buf = 134349056;
        v35 = self;
      }

      else
      {
        v4 = sub_10006CF98();
        if (!os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_26;
        }

        *buf = 134349056;
        v35 = self;
      }

      v23 = v4;
      v24 = OS_LOG_TYPE_ERROR;
      goto LABEL_25;
    }

    v4 = sub_10006CF98();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      *buf = 134349056;
      v35 = self;
      v5 = "[%{public}p] Will not reload cards, no overlay content view available.";
      goto LABEL_19;
    }
  }

LABEL_26:
}

- (void)_updateCardsForContext:(id)a3 withAnimation:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if ([(ChromeViewController *)self isCurrentContext:v8])
  {
    v11 = sub_10006CF98();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      *buf = 134349056;
      v27 = self;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "[%{public}p] Chrome started configuring cards.", buf, 0xCu);
    }

    v12 = [(CarChromeViewController *)self topContext];
    v13 = [(CarChromeViewController *)self _desiredCards];
    if (objc_opt_respondsToSelector())
    {
      [v12 chromeDidStartConfiguringCards:v13];
    }

    objc_initWeak(buf, self);
    v14 = [(CarChromeViewController *)self cardsOverlay];
    v25[0] = _NSConcreteStackBlock;
    v25[1] = 3221225472;
    v25[2] = sub_10058FA90;
    v25[3] = &unk_101661B18;
    v25[4] = self;
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_10058FA9C;
    v20[3] = &unk_101622710;
    v20[4] = self;
    objc_copyWeak(&v24, buf);
    v15 = v12;
    v21 = v15;
    v16 = v13;
    v22 = v16;
    v23 = v10;
    [v14 performBatchUpdates:v25 withAnimation:v9 completion:v20];

    objc_destroyWeak(&v24);
    objc_destroyWeak(buf);
  }

  else
  {
    v17 = sub_100006E1C();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v18 = objc_opt_class();
      v19 = NSStringFromClass(v18);
      *buf = 134349570;
      v27 = self;
      v28 = 2112;
      v29 = v19;
      v30 = 2048;
      v31 = v8;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "[%{public}p] %@ (%p) asked for card update, but it is not the current context. Ignoring the call.", buf, 0x20u);
    }

    if (v10)
    {
      (*(v10 + 2))(v10, 0);
    }
  }
}

- (void)captureUserActionSelectedSearchCategory:(id)a3 categoriesDisplayed:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(CarChromeViewController *)self _currentUsageTarget];
  v10 = +[MKMapService sharedService];
  v9 = [v7 displayString];
  [v10 captureUserAction:2004 onTarget:v8 eventValue:v9 categoriesDisplayed:v6 categorySelected:v7];
}

- (void)captureUserActionPannedInDirection:(int64_t)a3
{
  if ((a3 - 1) >= 4)
  {
    v4 = sub_10006D178();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v7 = 136315650;
      v8 = "[CarChromeViewController captureUserActionPannedInDirection:]";
      v9 = 2080;
      v10 = "CarChromeViewController.m";
      v11 = 1024;
      v12 = 2915;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion reached unexpectedly!", &v7, 0x1Cu);
    }

    if (sub_100E03634())
    {
      v5 = sub_10006D178();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        v6 = +[NSThread callStackSymbols];
        v7 = 138412290;
        v8 = v6;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "%@", &v7, 0xCu);
      }
    }
  }

  else
  {
    v3 = dword_101212BD0[a3 - 1];

    [(CarChromeViewController *)self captureUserAction:v3];
  }
}

- (void)captureUserActionChangedTrackingMode:(int64_t)a3
{
  if (a3 >= 3)
  {
    v4 = sub_10006D178();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v7 = 136315650;
      v8 = "[CarChromeViewController captureUserActionChangedTrackingMode:]";
      v9 = 2080;
      v10 = "CarChromeViewController.m";
      v11 = 1024;
      v12 = 2887;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion reached unexpectedly!", &v7, 0x1Cu);
    }

    if (sub_100E03634())
    {
      v5 = sub_10006D178();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        v6 = +[NSThread callStackSymbols];
        v7 = 138412290;
        v8 = v6;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "%@", &v7, 0xCu);
      }
    }
  }

  else
  {
    v3 = dword_101212F38[a3];

    [(CarChromeViewController *)self captureUserAction:v3];
  }
}

- (void)captureUserAction:(int)a3 selectedRouteIndex:(int)a4
{
  v4 = *&a4;
  v5 = *&a3;
  v6 = [(CarChromeViewController *)self _currentUsageTarget];
  v8 = [GEORouteDetails routeDetailsWithResultIndex:v4];
  v7 = +[MKMapService sharedService];
  [v7 captureUserAction:v5 onTarget:v6 eventValue:0 routeDetails:v8];
}

- (void)captureUserAction:(int)a3 mapItem:(id)a4 atResultIndex:(int)a5
{
  v5 = *&a5;
  v6 = *&a3;
  v11 = a4;
  v8 = [(CarChromeViewController *)self _currentUsageTarget];
  if (v11 || (v5 & 0x80000000) == 0)
  {
    v9 = [(CarChromeViewController *)self _userActionDetailsWithMapItem:v11 resultIndex:v5];
  }

  else
  {
    v9 = 0;
  }

  v10 = +[MKMapService sharedService];
  [v10 captureUserAction:v6 onTarget:v8 eventValue:0 placeActionDetails:v9];
}

- (void)captureUserAction:(int)a3 eventValue:(id)a4
{
  v4 = *&a3;
  v6 = a4;
  [(CarChromeViewController *)self captureUserAction:v4 onTarget:[(CarChromeViewController *)self _currentUsageTarget] eventValue:v6];
}

- (void)captureUserAction:(int)a3 onTarget:(int)a4 eventValue:(id)a5
{
  v5 = *&a4;
  v6 = *&a3;
  v7 = a5;
  v8 = +[MKMapService sharedService];
  [v8 captureUserAction:v6 onTarget:v5 eventValue:v7];
}

- (void)_captureUserActionBackToContext:(id)a3
{
  v8 = a3;
  v4 = [(CarChromeViewController *)self topContext];
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    v6 = 25;
    goto LABEL_5;
  }

  v5 = [(CarChromeViewController *)self topContext];
  v6 = [v5 backButtonUsageActionToContext:v8];

  if (v6)
  {
LABEL_5:
    if (objc_opt_respondsToSelector())
    {
      v7 = [v4 backButtonUsageEventValueToContext:v8];
    }

    else
    {
      v7 = 0;
    }

    [(CarChromeViewController *)self captureUserAction:v6 eventValue:v7];
  }
}

- (unint64_t)desiredRadarScreenshotTypes
{
  v6.receiver = self;
  v6.super_class = CarChromeViewController;
  v3 = [(ChromeViewController *)&v6 desiredRadarScreenshotTypes];
  if ([(ChromeViewController *)self isInactive]|| ([(ChromeViewController *)self currentMapReplacementView], v4 = objc_claimAutoreleasedReturnValue(), v4, v4))
  {
    v3 |= 8uLL;
  }

  return v3;
}

- (void)carStatusBannerDidTapBanner
{
  v2 = +[UIApplication sharedMapsDelegate];
  [v2 interruptApplicationWithKind:21 userInfo:0 completionHandler:&stru_1016226E8];
}

- (void)_enableZoomGesture:(BOOL)a3
{
  v3 = a3;
  if (a3)
  {
    objc_initWeak(&location, self);
    v14 = _NSConcreteStackBlock;
    v15 = 3221225472;
    v16 = sub_1005905EC;
    v17 = &unk_101661B98;
    objc_copyWeak(&v18, &location);
    [(CarChromeViewController *)self enableDoubleTapRecognizerWithBlock:&v14];
    objc_destroyWeak(&v18);
    objc_destroyWeak(&location);
  }

  else
  {
    [(CarChromeViewController *)self disableDoubleTapRecognizer];
  }

  v5 = [(CarChromeViewController *)self topContext:v14];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = [(CarChromeViewController *)self topContext];
    v3 = [v7 allowMapZoomAndRecentering];
  }

  v8 = [(ChromeViewController *)self mapView];
  [v8 setZoomEnabled:v3];

  v9 = [(ChromeViewController *)self mapView];
  v10 = [v9 _doubleTapGestureRecognizer];
  [v10 setEnabled:0];

  v11 = 0;
  if (v3)
  {
    v11 = [objc_opt_class() allowOneHandedZooming];
  }

  v12 = [(ChromeViewController *)self mapView];
  v13 = [v12 _oneHandedZoomGestureRecognizer];
  [v13 setEnabled:v11];
}

- (void)updateZoomControls
{
  v3 = [(ChromeViewController *)self mapView];
  v4 = [v3 _canZoomIn];
  v5 = [(CarChromeViewController *)self mapControlsOverlay];
  [v5 setZoomInEnabled:v4];

  v8 = [(ChromeViewController *)self mapView];
  v6 = [v8 _canZoomOut];
  v7 = [(CarChromeViewController *)self mapControlsOverlay];
  [v7 setZoomOutEnabled:v6];
}

- (void)_reportIncidentPressed
{
  [(CarChromeViewController *)self captureUserAction:115 onTarget:1004];
  v2 = +[CarChromeModeCoordinator sharedInstance];
  [v2 displayIncidentReportingFromMapControl];
}

- (void)_audioControlPressed
{
  [(CarChromeViewController *)self captureUserAction:139 onTarget:1001];
  v2 = +[CarChromeModeCoordinator sharedInstance];
  [v2 displayAudioControlView];
}

- (void)_toggleCameraPressed
{
  v3 = [(CarChromeViewController *)self topContext];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = [(CarChromeViewController *)self topContext];
    [v5 toggleCameraPressed];

    [(CarChromeViewController *)self _updateCameraToggleButton];
  }

  else
  {
    v6 = sub_10006D178();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v10 = 136315650;
      v11 = "[CarChromeViewController _toggleCameraPressed]";
      v12 = 2080;
      v13 = "CarChromeViewController.m";
      v14 = 1024;
      v15 = 2628;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion reached unexpectedly!", &v10, 0x1Cu);
    }

    if (sub_100E03634())
    {
      v7 = sub_10006D178();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        v8 = +[NSThread callStackSymbols];
        v10 = 138412290;
        v11 = v8;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "%@", &v10, 0xCu);
      }
    }

    v9 = sub_100006E1C();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = 134349056;
      v11 = self;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "[%{public}p] _toggleCameraPressed called, because toggleCameraButton is present in map controls, but topContext doesn't respond to toggleCameraPressed", &v10, 0xCu);
    }
  }
}

- (void)_toggle3DButtonPressed
{
  if (sub_10008B2E8())
  {
    v3 = [(ChromeViewController *)self isRunningNavigationDisplay];
    v4 = v3 ^ 1;
    if (v3)
    {
      v5 = 5010;
    }

    else
    {
      v5 = 5009;
    }

    [(CarChromeViewController *)self captureUserAction:v5];
    v6 = [(CarChromeViewController *)self defaultMapSettings];
    [v6 setPitched:v4];

    [(ChromeViewController *)self setNeedsUpdateComponent:@"navigationDisplay" animated:1];
    [(ChromeViewController *)self updateComponentsIfNeeded];
    [(CarChromeViewController *)self _update3DButton];
    if ((v4 & 1) == 0)
    {
      v13 = [(CarChromeViewController *)self defaultMapSettings];
      [v13 applyToMapViewAnimated:1 duration:0 completion:-1.0];
    }
  }

  else
  {
    v7 = [(ChromeViewController *)self mapView];
    v8 = [v7 _isPitched];

    if (v8)
    {
      v9 = 5010;
    }

    else
    {
      v9 = 5009;
    }

    [(CarChromeViewController *)self captureUserAction:v9];
    v10 = [(CarChromeViewController *)self defaultMapSettings];
    [v10 setPitched:v8 ^ 1];

    v11 = [(ChromeViewController *)self mapView];
    v12 = v11;
    if (v8)
    {
      [v11 _exit3DMode];
    }

    else
    {
      [v11 _enter3DMode];
    }

    [(CarChromeViewController *)self _update3DButton];
  }
}

- (void)zoomOut
{
  [(CarChromeViewController *)self captureUserAction:1050];
  v3 = [(CarChromeViewController *)self topContext];
  if ((objc_opt_respondsToSelector() & 1) == 0 || ([v3 zoomOutButtonPressed] & 1) == 0)
  {
    v4 = [(ChromeViewController *)self navigationDisplay];
    if (v4 && (v5 = v4, +[CarDisplayController sharedInstance](CarDisplayController, "sharedInstance"), v6 = objc_claimAutoreleasedReturnValue(), v7 = [v6 isCarAppSceneHostingNavigation], v6, v5, v7))
    {
      v8 = [(ChromeViewController *)self navigationDisplay];
      [v8 zoomOut];
    }

    else
    {
      v8 = [(ChromeViewController *)self mapView];
      v9[0] = _NSConcreteStackBlock;
      v9[1] = 3221225472;
      v9[2] = sub_100590C40;
      v9[3] = &unk_101661B18;
      v9[4] = self;
      [v8 _zoomOutWithCompletionHandler:v9];
    }
  }

  [(CarChromeViewController *)self updateZoomControls];
}

- (void)zoomOutButtonPressed
{
  v3 = sub_100006E1C();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4 = 134349056;
    v5 = self;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "[%{public}p] zoomOut button pressed", &v4, 0xCu);
  }

  [(CarChromeViewController *)self zoomOut];
}

- (void)zoomIn
{
  [(CarChromeViewController *)self captureUserAction:1049];
  v3 = [(CarChromeViewController *)self topContext];
  if ((objc_opt_respondsToSelector() & 1) == 0 || ([v3 zoomInButtonPressed] & 1) == 0)
  {
    v4 = [(ChromeViewController *)self navigationDisplay];
    if (v4 && (v5 = v4, +[CarDisplayController sharedInstance](CarDisplayController, "sharedInstance"), v6 = objc_claimAutoreleasedReturnValue(), v7 = [v6 isCarAppSceneHostingNavigation], v6, v5, v7))
    {
      v8 = [(ChromeViewController *)self navigationDisplay];
      [v8 zoomIn];
    }

    else
    {
      v8 = [(ChromeViewController *)self mapView];
      v9[0] = _NSConcreteStackBlock;
      v9[1] = 3221225472;
      v9[2] = sub_100590E94;
      v9[3] = &unk_101661B18;
      v9[4] = self;
      [v8 _zoomInWithCompletionHandler:v9];
    }
  }

  [(CarChromeViewController *)self updateZoomControls];
}

- (void)zoomInButtonPressed
{
  v3 = sub_100006E1C();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4 = 134349056;
    v5 = self;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "[%{public}p] zoomIn button pressed", &v4, 0xCu);
  }

  [(CarChromeViewController *)self zoomIn];
}

- (void)panButtonPressed
{
  [(CarChromeViewController *)self captureUserAction:9007];
  v2 = +[CarChromeModeCoordinator sharedInstance];
  [v2 displayMapPanning];
}

- (void)_navRecenterButtonPressed
{
  [(CarChromeViewController *)self captureUserAction:4001];
  v4 = [(CarChromeViewController *)self topContext];
  if ((objc_opt_respondsToSelector() & 1) == 0 || ([v4 recenterButtonPressed] & 1) == 0)
  {
    v3 = [(ChromeViewController *)self navigationDisplay];
    [v3 recenterCameraAnimated:1];
  }
}

- (void)carMapControls:(id)a3 didTriggerAction:(unint64_t)a4
{
  v6 = a3;
  if (a4 > 4)
  {
    if (a4 > 6)
    {
      if (a4 == 7)
      {
        v7 = v6;
        [(CarChromeViewController *)self _audioControlPressed];
      }

      else
      {
        if (a4 != 8)
        {
          goto LABEL_19;
        }

        v7 = v6;
        [(CarChromeViewController *)self _reportIncidentPressed];
      }
    }

    else
    {
      v7 = v6;
      if (a4 == 5)
      {
        [(CarChromeViewController *)self _toggle3DButtonPressed];
      }

      else
      {
        [(CarChromeViewController *)self _toggleCameraPressed];
      }
    }
  }

  else if (a4 > 2)
  {
    v7 = v6;
    if (a4 == 3)
    {
      [(CarChromeViewController *)self zoomInButtonPressed];
    }

    else
    {
      [(CarChromeViewController *)self zoomOutButtonPressed];
    }
  }

  else if (a4 == 1)
  {
    v7 = v6;
    [(CarChromeViewController *)self _navRecenterButtonPressed];
  }

  else
  {
    if (a4 != 2)
    {
      goto LABEL_19;
    }

    v7 = v6;
    [(CarChromeViewController *)self panButtonPressed];
  }

  v6 = v7;
LABEL_19:
}

- (void)_reloadMapControlsInsetsForContext:(id)a3
{
  v4 = a3;
  v5 = [(CarChromeViewController *)self mapControlsOverlay];
  v6 = v5;
  if (v5)
  {
    [v5 configuration];
    if (v11 == 0)
    {

      if (!v12)
      {
        v6 = 0;
        goto LABEL_8;
      }
    }

    else
    {
    }

    v6 = [(CarChromeViewController *)self _shouldMapControlsModifyMapInsetsForContext:v4];
  }

LABEL_8:
  v7 = [(ChromeViewController *)self overlayController];
  v8 = [(CarChromeViewController *)self mapControlsOverlay];
  [v7 setViewportConstraintsEnabled:v6 forOverlay:v8];

  v9 = [(ChromeViewController *)self overlayController];
  v10 = [(CarChromeViewController *)self mapControlsOverlay];
  [v9 setMapInsetsConstraintsEnabled:v6 forOverlay:v10];
}

- (void)_reloadMapControlsForContext:(id)a3 withAnimation:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([(ChromeViewController *)self isSuppressed])
  {
    v8 = sub_100006E1C();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 134349056;
      *&buf[4] = self;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "[%{public}p] Will not reload map controls, chrome is suppressed", buf, 0xCu);
    }

LABEL_4:

    goto LABEL_12;
  }

  if (![(ChromeViewController *)self isCurrentContext:v6])
  {
    v8 = sub_100006E1C();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = objc_opt_class();
      v10 = NSStringFromClass(v9);
      *buf = 134349570;
      *&buf[4] = self;
      *&buf[12] = 2112;
      *&buf[14] = v10;
      *&buf[22] = 2048;
      v18 = v6;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "[%{public}p] %@ (%p) asked for mapControls update, but it is not the current context. Ignoring the call.", buf, 0x20u);
    }

    goto LABEL_4;
  }

  if (v7)
  {
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x2020000000;
    LOBYTE(v18) = [v7 isAnimated];
    objc_initWeak(&location, v7);
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_1005915A0;
    v12[3] = &unk_1016226C8;
    v12[4] = self;
    v13 = v6;
    v14 = buf;
    objc_copyWeak(&v15, &location);
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_100591750;
    v11[3] = &unk_101661B18;
    v11[4] = self;
    [v7 addPreparation:v12 animations:v11 completion:0];
    objc_destroyWeak(&v15);

    objc_destroyWeak(&location);
    _Block_object_dispose(buf, 8);
  }

  else
  {
    v7 = [GroupAnimation animationForAnimatedFlag:0];
    [(CarChromeViewController *)self _reloadMapControlsForContext:v6 withAnimation:v7];
    [v7 runWithCurrentOptions];
  }

LABEL_12:
}

- (void)_reloadStatusBannerWithAnimation:(id)a3
{
  v4 = a3;
  v5 = [(CarChromeViewController *)self topContext];
  v6 = [(ChromeViewController *)self isCurrentContext:v5];

  if (v6)
  {
    v7 = [(CarChromeViewController *)self topContext];
    if (objc_opt_respondsToSelector())
    {
      v8 = [(CarChromeViewController *)self topContext];
      v9 = [v8 suppressesStatusBannerAnimation] ^ 1;
    }

    else
    {
      LOBYTE(v9) = 1;
    }

    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_100591A08;
    v17[3] = &unk_101661B18;
    v17[4] = self;
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_100591A50;
    v15[3] = &unk_101661AE0;
    v15[4] = self;
    v16 = [v4 isAnimated] & v9;
    [v4 addPreparation:v17 animations:v15 completion:0];
  }

  else
  {
    v10 = sub_100006E1C();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = [(CarChromeViewController *)self topContext];
      v12 = objc_opt_class();
      v13 = NSStringFromClass(v12);
      v14 = [(CarChromeViewController *)self topContext];
      *buf = 134349570;
      v19 = self;
      v20 = 2112;
      v21 = v13;
      v22 = 2048;
      v23 = v14;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "[%{public}p] %@ (%p) asked for status banner reload, but it is not the current context. Ignoring the call.", buf, 0x20u);
    }
  }
}

- (void)reloadStatusBannerAnimated:(BOOL)a3
{
  v4 = [GroupAnimation animationForAnimatedFlag:a3];
  [(CarChromeViewController *)self _reloadStatusBannerWithAnimation:v4];
  [v4 runWithCurrentOptions];
}

- (void)_reloadAccessoriesInsetsForContext:(id)a3
{
  v9 = a3;
  v4 = ![(CarChromeViewController *)self _areAccessoriesHiddenForCurrentContext]&& [(CarChromeViewController *)self _shouldAccessoriesModifyMapInsetsForContext:v9];
  v5 = [(ChromeViewController *)self overlayController];
  v6 = [(CarChromeViewController *)self accessoriesOverlay];
  [v5 setViewportConstraintsEnabled:v4 forOverlay:v6];

  v7 = [(ChromeViewController *)self overlayController];
  v8 = [(CarChromeViewController *)self accessoriesOverlay];
  [v7 setMapInsetsConstraintsEnabled:v4 forOverlay:v8];
}

- (void)_reloadAccessoriesForContext:(id)a3 withAnimation:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([(ChromeViewController *)self isCurrentContext:v6])
  {
    v8 = [v7 isAnimated];
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_100591DD0;
    v14[3] = &unk_101661A90;
    v14[4] = self;
    v15 = v6;
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_100591E5C;
    v12[3] = &unk_101661AE0;
    v12[4] = self;
    v13 = v8;
    [v7 addPreparation:v14 animations:v12 completion:0];
  }

  else
  {
    v9 = sub_100006E1C();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = objc_opt_class();
      v11 = NSStringFromClass(v10);
      *buf = 134349570;
      v17 = self;
      v18 = 2112;
      v19 = v11;
      v20 = 2048;
      v21 = v6;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "[%{public}p] %@ (%p) asked for accessories reload, but it is not the current context. Ignoring the call.", buf, 0x20u);
    }
  }
}

- (void)reloadAccessoriesForContext:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [GroupAnimation animationForAnimatedFlag:v4];
  [(CarChromeViewController *)self _reloadAccessoriesForContext:v6 withAnimation:v7];

  [v7 runWithCurrentOptions];
}

- (void)configureAccessoriesOverlay:(id)a3 forContext:(id)a4
{
  v9 = a4;
  if (objc_opt_respondsToSelector())
  {
    v5 = [v9 showsSpeedLimit];
  }

  else
  {
    v5 = 0;
  }

  v6 = [(CarChromeViewController *)self accessoriesOverlay];
  [v6 setShowSpeedSign:v5];

  if (objc_opt_respondsToSelector())
  {
    v7 = [v9 showsHeadingIndicator];
  }

  else
  {
    v7 = 0;
  }

  v8 = [(CarChromeViewController *)self accessoriesOverlay];
  [v8 setShowHeadingIndicator:v7];
}

- (void)_reloadFocusContainerGuidesForContext:(id)a3
{
  v4 = [(CarChromeViewController *)self topContext];
  v5 = objc_opt_respondsToSelector();

  focusContainerGuideController = self->_focusContainerGuideController;
  if (v5)
  {
    v7 = [(CarFocusContainerGuideController *)focusContainerGuideController activeEdges];
    v8 = [(CarChromeViewController *)self topContext];
    [v8 configureFocusContainerGuideController:self->_focusContainerGuideController];

    v9 = [(CarFocusContainerGuideController *)self->_focusContainerGuideController activeEdges];
    v10 = sub_100006E1C();
    if (!os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
LABEL_15:

      return;
    }

    v11 = [(CarChromeViewController *)self topContext];
    if (!v11)
    {
      v16 = @"<nil>";
      goto LABEL_14;
    }

    v12 = objc_opt_class();
    v13 = NSStringFromClass(v12);
    if (objc_opt_respondsToSelector())
    {
      v14 = [v11 performSelector:"accessibilityIdentifier"];
      v15 = v14;
      if (v14 && ![v14 isEqualToString:v13])
      {
        v16 = [NSString stringWithFormat:@"%@<%p, %@>", v13, v11, v15];

        goto LABEL_9;
      }
    }

    v16 = [NSString stringWithFormat:@"%@<%p>", v13, v11];
LABEL_9:

LABEL_14:
    *buf = 134349826;
    v18 = self;
    v19 = 2112;
    v20 = v16;
    v21 = 2048;
    v22 = v7;
    v23 = 2048;
    v24 = v9;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "[%{public}p] Top context: %@, configured focusContainer guides from: %lu, to %lu", buf, 0x2Au);

    goto LABEL_15;
  }

  [(CarFocusContainerGuideController *)focusContainerGuideController setActiveEdges:15];
}

- (NSArray)_linearFocusMovementSequences
{
  v3 = [(CarChromeViewController *)self topContext];
  v4 = [v3 carFocusOrderSequences];

  if ([v4 count])
  {
    if ([v4 count] >= 2)
    {
      v5 = sub_10006D178();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315650;
        *&buf[4] = "[CarChromeViewController _linearFocusMovementSequences]";
        *&buf[12] = 2080;
        *&buf[14] = "CarChromeViewController.m";
        *&buf[22] = 1024;
        LODWORD(v24) = 2230;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion reached unexpectedly!", buf, 0x1Cu);
      }

      if (sub_100E03634())
      {
        v6 = sub_10006D178();
        if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
        {
          v7 = +[NSThread callStackSymbols];
          *buf = 138412290;
          *&buf[4] = v7;
          _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
        }
      }
    }

    v8 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v4 count]);
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v24 = sub_100592630;
    v25 = sub_100592640;
    v26 = +[NSMutableArray array];
    v22[0] = _NSConcreteStackBlock;
    v22[1] = 3221225472;
    v22[2] = sub_100592648;
    v22[3] = &unk_101622610;
    v22[4] = buf;
    v9 = objc_retainBlock(v22);
    v21[0] = _NSConcreteStackBlock;
    v21[1] = 3221225472;
    v21[2] = sub_100592658;
    v21[3] = &unk_101622638;
    v21[4] = self;
    v21[5] = buf;
    v10 = objc_retainBlock(v21);
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_1005927B8;
    v16[3] = &unk_1016226A0;
    v20 = buf;
    v11 = v9;
    v18 = v11;
    v12 = v10;
    v19 = v12;
    v13 = v8;
    v17 = v13;
    [v4 enumerateObjectsWithOptions:2 usingBlock:v16];
    if ([v13 count])
    {
      v14 = [v13 copy];
    }

    else
    {
      v14 = &__NSArray0__struct;
    }

    _Block_object_dispose(buf, 8);
  }

  else
  {
    v14 = &__NSArray0__struct;
  }

  return v14;
}

- (BOOL)shouldUpdateFocusInContext:(id)a3
{
  v4 = a3;
  if ([(CarChromeViewController *)self _isFocusMovementValidInContext:v4])
  {
    v5 = [(CarChromeViewController *)self topContext];
    v6 = objc_opt_respondsToSelector();

    if (v6)
    {
      v7 = [(CarChromeViewController *)self topContext];
      v8 = [v7 shouldUpdateFocusInContext:v4];
    }

    else
    {
      v8 = 1;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (BOOL)_isFocusMovementValidInContext:(id)a3
{
  v4 = a3;
  if (([v4 focusHeading] & 0x20) != 0 || (objc_msgSend(v4, "focusHeading") & 0x10) != 0 || (objc_msgSend(v4, "focusHeading") & 0x100) != 0 || (objc_msgSend(v4, "focusHeading") & 0x200) != 0)
  {
    v6 = [(CarChromeViewController *)self _linearFocusMovementSequences];
    if ([v6 count] >= 2)
    {
      v46 = sub_10006D178();
      if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315906;
        v65 = "[CarChromeViewController _isFocusMovementValidInContext:]";
        v66 = 2080;
        v67 = "CarChromeViewController.m";
        v68 = 1024;
        *v69 = 2080;
        *&v69[4] = 2080;
        *&v69[6] = "linearSequences.count < 2";
        _os_log_impl(&_mh_execute_header, v46, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion: (%s)", buf, 0x26u);
      }

      if (sub_100E03634())
      {
        v47 = sub_10006D178();
        if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
        {
          v48 = +[NSThread callStackSymbols];
          *buf = 138412290;
          v65 = v48;
          _os_log_impl(&_mh_execute_header, v47, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
        }
      }
    }

    if ([v6 count] >= 2)
    {
      v7 = sub_100006E1C();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
      {
        *buf = 134349314;
        v65 = self;
        v66 = 2112;
        v67 = v6;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_FAULT, "[%{public}p] We've produced more than 1 linearMovementSequence, this is not supported. sequences: %@", buf, 0x16u);
      }
    }

    v8 = [v6 firstObject];
    v9 = v8;
    if (!v8)
    {
      v31 = sub_100006E1C();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_FAULT))
      {
        *buf = 134349056;
        v65 = self;
        _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_FAULT, "[%{public}p] We've don't have a linearMovementSequence. This should never happen. If you see this, check the implementation of _linearFocusMovementSequences.", buf, 0xCu);
      }

      v5 = 1;
      goto LABEL_61;
    }

    v10 = [v8 items];
    v58[0] = _NSConcreteStackBlock;
    v58[1] = 3221225472;
    v58[2] = sub_1005933C4;
    v58[3] = &unk_101622598;
    v11 = v4;
    v59 = v11;
    v12 = [v10 indexOfObjectPassingTest:v58];

    if (v12 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v13 = sub_100006E1C();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
      {
        v14 = [v9 items];
        v15 = v14;
        if (v14)
        {
          if ([v14 count])
          {
            v50 = v11;
            v51 = v13;
            v52 = v9;
            v53 = self;
            v54 = v6;
            v55 = v4;
            v16 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v15 count]);
            v60 = 0u;
            v61 = 0u;
            v62 = 0u;
            v63 = 0u;
            v49 = v15;
            v17 = v15;
            v18 = [v17 countByEnumeratingWithState:&v60 objects:buf count:16];
            if (!v18)
            {
              goto LABEL_33;
            }

            v19 = v18;
            v20 = *v61;
            while (1)
            {
              v21 = 0;
              do
              {
                if (*v61 != v20)
                {
                  objc_enumerationMutation(v17);
                }

                v22 = *(*(&v60 + 1) + 8 * v21);
                if (v22)
                {
                  v23 = objc_opt_class();
                  v24 = NSStringFromClass(v23);
                  if ((objc_opt_respondsToSelector() & 1) == 0)
                  {
                    goto LABEL_26;
                  }

                  v25 = [v22 performSelector:"accessibilityIdentifier"];
                  v26 = v25;
                  if (v25 && ![v25 isEqualToString:v24])
                  {
                    v27 = [NSString stringWithFormat:@"%@<%p, %@>", v24, v22, v26];
                  }

                  else
                  {

LABEL_26:
                    v27 = [NSString stringWithFormat:@"%@<%p>", v24, v22];
                  }

                  goto LABEL_29;
                }

                v27 = @"<nil>";
LABEL_29:

                [v16 addObject:v27];
                v21 = v21 + 1;
              }

              while (v19 != v21);
              v28 = [v17 countByEnumeratingWithState:&v60 objects:buf count:16];
              v19 = v28;
              if (!v28)
              {
LABEL_33:

                v29 = [v17 componentsJoinedByString:{@", "}];
                v30 = [NSString stringWithFormat:@"<%p> [%@]", v17, v29];

                v6 = v54;
                v4 = v55;
                v9 = v52;
                self = v53;
                v11 = v50;
                v13 = v51;
                v15 = v49;
                goto LABEL_58;
              }
            }
          }

          v30 = [NSString stringWithFormat:@"<%p> (empty)", v15];
        }

        else
        {
          v30 = @"<nil>";
        }

LABEL_58:

        v44 = [v11 nextFocusedItem];
        *buf = 134349570;
        v65 = self;
        v66 = 2112;
        v67 = v30;
        v68 = 2112;
        *v69 = v44;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEBUG, "[%{public}p] Focus engine tried to focus something which was not in our provided sequence of items. sequence.items: %@, nextItem: %@", buf, 0x20u);
      }

      v5 = 0;
      goto LABEL_60;
    }

    v32 = [v9 items];
    v33 = v11;
    v34 = v32;
    v56[0] = _NSConcreteStackBlock;
    v56[1] = 3221225472;
    v56[2] = sub_100593418;
    v56[3] = &unk_101622598;
    v35 = v33;
    v57 = v35;
    v36 = [v34 indexOfObjectPassingTest:v56];

    v37 = [v35 focusHeading];
    if (v36 == 0x7FFFFFFFFFFFFFFFLL)
    {
      if ((v37 & 0x100) == 0)
      {
        v38 = sub_100006E1C();
        if (os_log_type_enabled(v38, OS_LOG_TYPE_DEBUG))
        {
          *buf = 134349056;
          v65 = self;
          _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_DEBUG, "[%{public}p] The currently focused item is no longer present in the linear sequence, knob can focus anything.", buf, 0xCu);
        }

        goto LABEL_54;
      }

      if (v12)
      {
        v43 = sub_100006E1C();
        if (os_log_type_enabled(v43, OS_LOG_TYPE_INFO))
        {
          *buf = 134349056;
          v65 = self;
          _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_INFO, "[%{public}p] We are coming to the app from the status bar, but focus engine is trying to focus an item that is not first in the provided linearMovementSequence. Denying this attempt and forcing a new pass.", buf, 0xCu);
        }

        [(CarChromeViewController *)self setNeedsFocusUpdate];
LABEL_53:
        v5 = 0;
LABEL_55:
        v13 = v57;
LABEL_60:

        v31 = v59;
LABEL_61:

        goto LABEL_62;
      }
    }

    else if (((v37 & 0x20) == 0 || v36 - 1 != v12) && (([v35 focusHeading]& 0x10) == 0 || v36 + 1 != v12))
    {
      v39 = sub_100006E1C();
      if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
      {
        v40 = [v35 previouslyFocusedItem];
        v41 = [v35 nextFocusedItem];
        v42 = [v35 focusHeading];
        *buf = 134349826;
        v65 = self;
        v66 = 2112;
        v67 = v40;
        v68 = 2112;
        *v69 = v41;
        *&v69[8] = 2048;
        *&v69[10] = v42;
        _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_ERROR, "[%{public}p] Focus engine tried to focus: %@ from current item: %@ with heading: %ld. This is not supported", buf, 0x2Au);
      }

      goto LABEL_53;
    }

LABEL_54:
    v5 = 1;
    goto LABEL_55;
  }

  v5 = 1;
LABEL_62:

  return v5;
}

- (void)setOwnsFocus:(BOOL)a3
{
  if (self->_ownsFocus != a3)
  {
    block[5] = v3;
    block[6] = v4;
    self->_ownsFocus = a3;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1005934FC;
    block[3] = &unk_101661B18;
    block[4] = self;
    dispatch_async(&_dispatch_main_q, block);
  }
}

- (void)_preserveFocusedItemFromContext:(id)a3 toContext:(id)a4
{
  v5 = a4;
  v6 = +[CarDisplayController sharedInstance];
  v7 = [v6 window];
  v8 = [v7 windowScene];
  v9 = [v8 focusSystem];
  v10 = [v9 focusedItem];

  if (v10)
  {
    v11 = [(CarChromeViewController *)self mapControlsOverlay];
    v12 = [v11 focusOrderSubItems];

    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v13 = v12;
    v14 = [v13 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v20;
      while (2)
      {
        for (i = 0; i != v15; i = i + 1)
        {
          if (*v20 != v16)
          {
            objc_enumerationMutation(v13);
          }

          if (v10 == *(*(&v19 + 1) + 8 * i))
          {
            v18 = [(CarChromeViewController *)self lastFocusedItemsByContext];
            [v18 setObject:v10 forKey:v5];

            goto LABEL_12;
          }
        }

        v15 = [v13 countByEnumeratingWithState:&v19 objects:v23 count:16];
        if (v15)
        {
          continue;
        }

        break;
      }
    }

LABEL_12:
  }
}

- (NSMapTable)lastFocusedIdentifiersByContext
{
  lastFocusedIdentifiersByContext = self->_lastFocusedIdentifiersByContext;
  if (!lastFocusedIdentifiersByContext)
  {
    v4 = +[NSMapTable weakToStrongObjectsMapTable];
    v5 = self->_lastFocusedIdentifiersByContext;
    self->_lastFocusedIdentifiersByContext = v4;

    lastFocusedIdentifiersByContext = self->_lastFocusedIdentifiersByContext;
  }

  return lastFocusedIdentifiersByContext;
}

- (id)visuallySelectedItem
{
  v3 = [(CarChromeViewController *)self topContext];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = [(CarChromeViewController *)self topContext];
    v6 = [v5 visuallySelectedItem];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)suppressIdleFocus
{
  v2 = self;
  v3 = [(CarChromeViewController *)self topContext];
  LOBYTE(v2) = [(CarChromeViewController *)v2 isAutohidingContentHiddenForContext:v3];

  return v2;
}

- (void)pressesCancelled:(id)a3 withEvent:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([(ChromeViewController *)self isSuppressed]|| ([(CarChromeViewController *)self topContext], v8 = objc_claimAutoreleasedReturnValue(), v8, !v8))
  {
LABEL_11:
    v12.receiver = self;
    v12.super_class = CarChromeViewController;
    [(CarChromeViewController *)&v12 pressesCancelled:v6 withEvent:v7];
    goto LABEL_12;
  }

  v9 = [(CarChromeViewController *)self topContext];
  if ((objc_opt_respondsToSelector() & 1) == 0 || ![v9 handlePressesCancelled:v6 withEvent:v7])
  {
    if (objc_opt_respondsToSelector() & 1) != 0 && ([v9 allowKnobNudgeMapPanning])
    {
      v10 = [v6 anyObject];
      v11 = [(CarChromeViewController *)self _nudgeHandlesPress:v10];

      if (v11)
      {
        goto LABEL_12;
      }
    }

    else
    {
    }

    goto LABEL_11;
  }

LABEL_12:
}

- (void)pressesEnded:(id)a3 withEvent:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([(ChromeViewController *)self isSuppressed]|| ([(CarChromeViewController *)self topContext], v8 = objc_claimAutoreleasedReturnValue(), v8, !v8))
  {
LABEL_15:
    v16.receiver = self;
    v16.super_class = CarChromeViewController;
    [(CarChromeViewController *)&v16 pressesEnded:v6 withEvent:v7];
    goto LABEL_16;
  }

  v9 = [(CarChromeViewController *)self topContext];
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    if (![(CarChromeViewController *)self _canSelectAlternateRoutes])
    {
      goto LABEL_10;
    }

    goto LABEL_8;
  }

  v10 = [v9 handlePressesEnded:v6 withEvent:v7];
  if ([(CarChromeViewController *)self _canSelectAlternateRoutes])
  {
LABEL_8:
    v11 = [(CarChromeViewController *)self routeSelectionController];
    v12 = [v6 anyObject];
    v13 = [v11 handleKnobPress:v12];

    if (v13)
    {
      goto LABEL_9;
    }

LABEL_10:
    if (objc_opt_respondsToSelector() & 1) != 0 && ([v9 allowKnobNudgeMapPanning])
    {
      v14 = [v6 anyObject];
      v15 = [(CarChromeViewController *)self _nudgeHandlesPress:v14];

      if (v15)
      {
        goto LABEL_16;
      }
    }

    else
    {
    }

    goto LABEL_15;
  }

  if ((v10 & 1) == 0)
  {
    goto LABEL_10;
  }

LABEL_9:

LABEL_16:
}

- (void)pressesChanged:(id)a3 withEvent:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([(ChromeViewController *)self isSuppressed]|| ([(CarChromeViewController *)self topContext], v8 = objc_claimAutoreleasedReturnValue(), v8, !v8))
  {
LABEL_11:
    v12.receiver = self;
    v12.super_class = CarChromeViewController;
    [(CarChromeViewController *)&v12 pressesChanged:v6 withEvent:v7];
    goto LABEL_12;
  }

  v9 = [(CarChromeViewController *)self topContext];
  if ((objc_opt_respondsToSelector() & 1) == 0 || ![v9 handlePressesChanged:v6 withEvent:v7])
  {
    if (objc_opt_respondsToSelector() & 1) != 0 && ([v9 allowKnobNudgeMapPanning])
    {
      v10 = [v6 anyObject];
      v11 = [(CarChromeViewController *)self _nudgeHandlesPress:v10];

      if (v11)
      {
        goto LABEL_12;
      }
    }

    else
    {
    }

    goto LABEL_11;
  }

LABEL_12:
}

- (void)pressesBegan:(id)a3 withEvent:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([(ChromeViewController *)self isSuppressed]|| ([(CarChromeViewController *)self topContext], v8 = objc_claimAutoreleasedReturnValue(), v8, !v8))
  {
LABEL_11:
    v12.receiver = self;
    v12.super_class = CarChromeViewController;
    [(CarChromeViewController *)&v12 pressesBegan:v6 withEvent:v7];
    goto LABEL_12;
  }

  v9 = [(CarChromeViewController *)self topContext];
  if ((objc_opt_respondsToSelector() & 1) == 0 || ![v9 handlePressesBegan:v6 withEvent:v7])
  {
    if (objc_opt_respondsToSelector() & 1) != 0 && ([v9 allowKnobNudgeMapPanning])
    {
      v10 = [v6 anyObject];
      v11 = [(CarChromeViewController *)self _nudgeHandlesPress:v10];

      if (v11)
      {
        goto LABEL_12;
      }
    }

    else
    {
    }

    goto LABEL_11;
  }

LABEL_12:
}

- (BOOL)_shouldAllowKnobFocusMovement
{
  v3 = +[CarDisplayController sharedInstance];
  v4 = [v3 window];
  v5 = [v4 windowScene];
  v6 = [v5 focusSystem];
  v7 = [v6 focusedItem];

  v8 = [(CarChromeViewController *)self isAutohidingContentHiddenForCurrentContext];
  v9 = [(CarChromeViewController *)self topContext];
  LOBYTE(v5) = objc_opt_respondsToSelector();

  if ((v5 & 1) == 0)
  {
    v11 = 0;
    if (v7)
    {
      goto LABEL_3;
    }

LABEL_5:
    v12 = v8 ^ 1 | v11;
    return v12 & 1;
  }

  v10 = [(CarChromeViewController *)self topContext];
  v11 = [v10 shouldAllowKnobFocusMovement];

  if (!v7)
  {
    goto LABEL_5;
  }

LABEL_3:
  v12 = 1;
  return v12 & 1;
}

- (void)setNeedsFocusUpdateIfUnfocused
{
  v3 = +[CarDisplayController sharedInstance];
  v4 = [v3 window];
  v5 = [v4 windowScene];
  v6 = [v5 focusSystem];
  v7 = [v6 focusedItem];

  if (!v7)
  {

    [(CarChromeViewController *)self setNeedsFocusUpdate];
  }
}

- (void)enableDoubleTapRecognizerWithBlock:(id)a3
{
  v4 = a3;
  if (v4)
  {
    doubleTapRecognizer = self->_doubleTapRecognizer;
    if (!doubleTapRecognizer)
    {
      v6 = [[UITapGestureRecognizer alloc] initWithTarget:self action:"_handleDoubleTap:"];
      v7 = self->_doubleTapRecognizer;
      self->_doubleTapRecognizer = v6;

      [(UITapGestureRecognizer *)self->_doubleTapRecognizer setNumberOfTapsRequired:2];
      [(UITapGestureRecognizer *)self->_doubleTapRecognizer setNumberOfTouchesRequired:1];
      [(UITapGestureRecognizer *)self->_doubleTapRecognizer setDelegate:self];
      autohideTapRecognizer = self->_autohideTapRecognizer;
      if (autohideTapRecognizer)
      {
        [(UITapGestureRecognizer *)autohideTapRecognizer requireGestureRecognizerToFail:self->_doubleTapRecognizer];
      }

      v9 = [(CarChromeViewController *)self view];
      [v9 addGestureRecognizer:self->_doubleTapRecognizer];

      doubleTapRecognizer = self->_doubleTapRecognizer;
    }

    if (([(UITapGestureRecognizer *)doubleTapRecognizer isEnabled]& 1) == 0)
    {
      v10 = sub_100006E1C();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        v11 = 134349056;
        v12 = self;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEBUG, "[%{public}p] Will enable double tap gesture", &v11, 0xCu);
      }
    }

    [(CarChromeViewController *)self setDoubleTapBlock:v4];
    [(UITapGestureRecognizer *)self->_doubleTapRecognizer setEnabled:1];
  }

  else
  {
    [(CarChromeViewController *)self disableDoubleTapRecognizer];
  }
}

- (void)_handleDoubleTap:(id)a3
{
  v4 = [(CarChromeViewController *)self doubleTapBlock];

  if (v4)
  {
    v5 = sub_100006E1C();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      v7 = 134349056;
      v8 = self;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "[%{public}p] Will fire doubleTapBlock", &v7, 0xCu);
    }

    v6 = [(CarChromeViewController *)self doubleTapBlock];
    v6[2]();
  }
}

- (void)_carOneHandedZoomSettingUpdated:(id)a3
{
  v3 = objc_opt_class();

  [v3 _updateAllowOneHandedZooming];
}

- (void)chromeNavigationDisplayDidRenderRoute:(id)a3
{
  v4.receiver = self;
  v4.super_class = CarChromeViewController;
  [(ChromeViewController *)&v4 chromeNavigationDisplayDidRenderRoute:a3];
  [(CarChromeViewController *)self captureUserAction:3072];
}

- (void)chromeNavigationDisplay:(id)a3 didChangePanning:(BOOL)a4 animated:(BOOL)a5
{
  v5 = a5;
  v7.receiver = self;
  v7.super_class = CarChromeViewController;
  [(ChromeViewController *)&v7 chromeNavigationDisplay:a3 didChangePanning:a4 animated:?];
  [(ChromeViewController *)self setNeedsUpdateComponent:@"mapcontrols" animated:v5];
}

- (void)chromeNavigationDisplay:(id)a3 configurationDidChange:(id)a4
{
  v5.receiver = self;
  v5.super_class = CarChromeViewController;
  [(ChromeViewController *)&v5 chromeNavigationDisplay:a3 configurationDidChange:a4];
  [(CarChromeViewController *)self updateZoomControls];
}

- (void)_navigationObscuredTimeoutFired:(id)a3
{
  [(CarChromeViewController *)self _stopNavigationObscuredTimeout];
  if ([(CarChromeViewController *)self isDisplayingNavigation])
  {
    v4 = sub_100006E1C();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      v6 = 134349056;
      v7 = self;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "[%{public}p] Navigation obscured timeout fired", &v6, 0xCu);
    }

    v5 = +[CarChromeModeCoordinator sharedInstance];
    [v5 displayNavigation];
  }
}

- (void)_updateOfflineModernMapToken
{
  usingOfflineDataModernMapToken = self->_usingOfflineDataModernMapToken;
  v4 = +[GEOOfflineService shared];
  v5 = [v4 isUsingOffline];

  if ((((usingOfflineDataModernMapToken == 0) ^ v5) & 1) == 0)
  {
    if (v5)
    {
      v6 = [(CarChromeViewController *)self acquireModernMapTokenForReason:0];
    }

    else
    {
      v6 = 0;
    }

    v7 = self->_usingOfflineDataModernMapToken;
    self->_usingOfflineDataModernMapToken = v6;
  }
}

- (void)offlineStateChanged:(id)a3
{
  v4 = sub_100006E1C();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 134349056;
    v6 = self;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "[%{public}p] UsingOfflineMapsStateChangedNotification fired, will _updateOfflineModernMapToken & reloadStatusBannerAnimated", &v5, 0xCu);
  }

  [(CarChromeViewController *)self _updateOfflineModernMapToken];
  [(CarChromeViewController *)self reloadStatusBannerAnimated:1];
}

- (id)acquireModernMapTokenForReason:(unint64_t)a3
{
  modernMapTokens = self->_modernMapTokens;
  v8 = @"reason";
  v4 = [NSNumber numberWithUnsignedInteger:a3];
  v9 = v4;
  v5 = [NSDictionary dictionaryWithObjects:&v9 forKeys:&v8 count:1];
  v6 = [(MapsTokenStorage *)modernMapTokens tokenWithUserInfo:v5];

  return v6;
}

- (void)_updateModernMapCartographicConfiguration
{
  if ([(CarChromeViewController *)self shouldUseModernMap])
  {
    v3 = [(CarChromeViewController *)self modernMapTerrainMode];
    v4 = [(CarChromeViewController *)self modernMapProjectionType];
  }

  else
  {
    v3 = 1;
    v4 = 1;
  }

  v5 = sub_10000B11C();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134349568;
    *&buf[4] = self;
    *&buf[12] = 2048;
    *&buf[14] = v3;
    *&buf[22] = 2048;
    *&buf[24] = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "[%{public}p] _updateModernMapCartographicConfiguration with terrainMode: %ld projectionType: %ld", buf, 0x20u);
  }

  v17 = 0;
  v16 = 0u;
  memset(buf, 0, sizeof(buf));
  v6 = [(ChromeViewController *)self mapView];
  v7 = v6;
  if (v6)
  {
    [v6 _cartographicConfiguration];
  }

  else
  {
    v17 = 0;
    v16 = 0u;
    memset(buf, 0, sizeof(buf));
  }

  *&buf[16] = v4;
  *&buf[24] = v3;
  v12 = *&buf[16];
  v13 = v16;
  v14 = v17;
  v11 = *buf;
  v8 = [(ChromeViewController *)self mapView];
  v9[0] = v11;
  v9[1] = v12;
  v9[2] = v13;
  v10 = v14;
  [v8 _setCartographicConfiguration:v9];
}

- (int64_t)modernMapProjectionType
{
  if (![(CarChromeViewController *)self shouldUseModernMap])
  {
    v3 = sub_10006D178();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v4 = [NSString stringWithFormat:@"The return value of this method is only defined for modern map"];
      v7 = 136316162;
      v8 = "[CarChromeViewController modernMapProjectionType]";
      v9 = 2080;
      v10 = "CarChromeViewController.m";
      v11 = 1024;
      v12 = 1661;
      v13 = 2080;
      v14 = "self.shouldUseModernMap";
      v15 = 2112;
      v16 = v4;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion: (%s) '%@'", &v7, 0x30u);
    }

    if (sub_100E03634())
    {
      v5 = sub_10006D178();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        v6 = +[NSThread callStackSymbols];
        v7 = 138412290;
        v8 = v6;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "%@", &v7, 0xCu);
      }
    }
  }

  return 0;
}

- (int64_t)modernMapTerrainMode
{
  if (![(CarChromeViewController *)self shouldUseModernMap])
  {
    v3 = sub_10006D178();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v4 = [NSString stringWithFormat:@"The return value of this method is only defined for modern map"];
      v7 = 136316162;
      v8 = "[CarChromeViewController modernMapTerrainMode]";
      v9 = 2080;
      v10 = "CarChromeViewController.m";
      v11 = 1024;
      v12 = 1655;
      v13 = 2080;
      v14 = "self.shouldUseModernMap";
      v15 = 2112;
      v16 = v4;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion: (%s) '%@'", &v7, 0x30u);
    }

    if (sub_100E03634())
    {
      v5 = sub_10006D178();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        v6 = +[NSThread callStackSymbols];
        v7 = 138412290;
        v8 = v6;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "%@", &v7, 0xCu);
      }
    }
  }

  return 0;
}

- (void)clearMapGesturesAndAnimations
{
  v3 = [(CarChromeViewController *)self nudgerizer];
  [v3 _clearGesturesAndAnimations];

  v4.receiver = self;
  v4.super_class = CarChromeViewController;
  [(ChromeViewController *)&v4 clearMapGesturesAndAnimations];
}

- (void)_locationAuthorizationDidChange:(id)a3
{
  v4 = +[MKLocationManager sharedLocationManager];
  if ([v4 isLocationServicesAuthorizationNeeded])
  {
    v5 = sub_100006E1C();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      v12 = 134349056;
      v13 = self;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "[%{public}p] Location authorization changed, but it's not yet approved", &v12, 0xCu);
    }
  }

  else
  {
    v6 = [v4 isLocationServicesApproved];
    v7 = [(ChromeViewController *)self mapView];
    [v7 setShowsUserLocation:v6];

    v8 = sub_100006E1C();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      v9 = [v4 isLocationServicesApproved];
      v10 = @"NO";
      if (v9)
      {
        v10 = @"YES";
      }

      v11 = v10;
      v12 = 134349314;
      v13 = self;
      v14 = 2112;
      v15 = v11;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "[%{public}p] mapView.showsUserLocation = %@", &v12, 0x16u);
    }

    v5 = +[NSNotificationCenter defaultCenter];
    [v5 removeObserver:self name:MKLocationManagerApprovalDidChangeNotification object:0];
  }
}

- (void)mapViewNavigationCameraHasStoppedPanning:(id)a3
{
  v4 = a3;
  v5 = [v4 _canZoomIn];
  v6 = [(CarChromeViewController *)self mapControlsOverlay];
  [v6 setZoomInEnabled:v5];

  v7 = [v4 _canZoomOut];
  v8 = [(CarChromeViewController *)self mapControlsOverlay];
  [v8 setZoomOutEnabled:v7];
}

- (void)mapViewDidFinishRenderingMap:(id)a3 fullyRendered:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = sub_100006E1C();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134349056;
    v11 = self;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "[%{public}p] Map view did finish rendering, informing Search pins manager so that it can drop pins.", buf, 0xCu);
  }

  v8 = [(ChromeViewController *)self searchPinsManager];
  [v8 mapViewDidBecomeFullyDrawn];

  v9.receiver = self;
  v9.super_class = CarChromeViewController;
  [(CarChromeViewController *)&v9 mapViewDidFinishRenderingMap:v6 fullyRendered:v4];
}

- (id)mapView:(id)a3 viewForAnnotation:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = [v7 userLocation];

  if (v9 == v8 && ([(ChromeViewController *)self userLocationView], (v15 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v11 = v15;
  }

  else
  {
    v10 = [(ChromeViewController *)self mapViewDelegateForSelector:a2];
    v11 = [v10 mapView:v7 viewForAnnotation:v8];

    if (!v11)
    {
      v12 = sub_10006D178();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        v17 = 136315906;
        v18 = "[CarChromeViewController mapView:viewForAnnotation:]";
        v19 = 2080;
        v20 = "CarChromeViewController.m";
        v21 = 1024;
        v22 = 1603;
        v23 = 2080;
        v24 = "view";
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion: (%s)", &v17, 0x26u);
      }

      if (sub_100E03634())
      {
        v13 = sub_10006D178();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
        {
          v14 = +[NSThread callStackSymbols];
          v17 = 138412290;
          v18 = v14;
          _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "%@", &v17, 0xCu);
        }
      }

      v11 = 0;
    }
  }

  return v11;
}

- (void)mapView:(id)a3 canEnter3DModeDidChange:(BOOL)a4
{
  v5.receiver = self;
  v5.super_class = CarChromeViewController;
  [(CarChromeViewController *)&v5 mapView:a3 canEnter3DModeDidChange:a4];
  [(CarChromeViewController *)self _update3DButton];
}

- (void)mapView:(id)a3 didBecomePitched:(BOOL)a4
{
  v4 = a4;
  v7.receiver = self;
  v7.super_class = CarChromeViewController;
  [(CarChromeViewController *)&v7 mapView:a3 didBecomePitched:?];
  v6 = [(CarChromeViewController *)self defaultMapSettings];
  [v6 setPitched:v4];

  [(CarChromeViewController *)self _update3DButton];
  [(CarChromeViewController *)self _updateCameraToggleButton];
}

- (void)mapView:(id)a3 didStopRespondingToGesture:(int64_t)a4 zoomDirection:(int64_t)a5 zoomGestureType:(int64_t)a6 didDecelerate:(BOOL)a7 tiltDirection:(int64_t)a8
{
  v9 = a7;
  v14 = a3;
  if (!a4)
  {
    v15 = 1001;
LABEL_11:
    [(CarChromeViewController *)self captureUserAction:v15];
    goto LABEL_12;
  }

  if (a4 == 1)
  {
    if (a5 == 1)
    {
      v15 = 1043;
    }

    else
    {
      v15 = 1044;
    }

    if (a6 <= 7)
    {
      v16 = &unk_101212F18;
      if (a5 == 1)
      {
        v16 = &unk_101212EF8;
      }

      v15 = v16[a6];
    }

    goto LABEL_11;
  }

LABEL_12:
  v17.receiver = self;
  v17.super_class = CarChromeViewController;
  [(CarChromeViewController *)&v17 mapView:v14 didStopRespondingToGesture:a4 zoomDirection:a5 zoomGestureType:a6 didDecelerate:v9 tiltDirection:a8];
}

- (void)mapView:(id)a3 canZoomOutDidChange:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [(CarChromeViewController *)self mapControlsOverlay];
  [v7 setZoomOutEnabled:v4];

  v8.receiver = self;
  v8.super_class = CarChromeViewController;
  [(CarChromeViewController *)&v8 mapView:v6 canZoomOutDidChange:v4];
}

- (void)mapView:(id)a3 canZoomInDidChange:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [(CarChromeViewController *)self mapControlsOverlay];
  [v7 setZoomInEnabled:v4];

  v8.receiver = self;
  v8.super_class = CarChromeViewController;
  [(CarChromeViewController *)&v8 mapView:v6 canZoomInDidChange:v4];
}

- (void)mapView:(id)a3 regionDidChangeAnimated:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [v6 _canZoomIn];
  v8 = [(CarChromeViewController *)self mapControlsOverlay];
  [v8 setZoomInEnabled:v7];

  v9 = [v6 _canZoomOut];
  v10 = [(CarChromeViewController *)self mapControlsOverlay];
  [v10 setZoomOutEnabled:v9];

  v11 = +[MapsOfflineUIHelper sharedHelper];
  LODWORD(v10) = [v11 isUsingOfflineMaps];

  if (v10)
  {
    v12 = [[CLLocation alloc] initWithLatitude:self->_mapViewRegion.center.latitude longitude:self->_mapViewRegion.center.longitude];
    v13 = [CLLocation alloc];
    [v6 region];
    v15 = v14;
    [v6 region];
    v16 = [v13 initWithLatitude:v15 longitude:?];
    [v12 distanceFromLocation:v16];
    v18 = v17;
    Integer = GEOConfigGetInteger();
    GEOConfigGetDouble();
    v21 = v20;
    if (v18 > Integer || ([v6 _zoomLevel], vabdd_f64(v22, self->_zoomLevel) > v21))
    {
      [v6 region];
      self->_mapViewRegion.center.latitude = v23;
      self->_mapViewRegion.center.longitude = v24;
      self->_mapViewRegion.span.latitudeDelta = v25;
      self->_mapViewRegion.span.longitudeDelta = v26;
      [v6 _zoomLevel];
      self->_zoomLevel = v27;
      v28 = [(CarChromeViewController *)self topContext];
      v29 = objc_opt_respondsToSelector();

      if (v29)
      {
        v30 = [(CarChromeViewController *)self topContext];
        [v30 checkFullTextSearchSupport];
      }
    }
  }

  v31.receiver = self;
  v31.super_class = CarChromeViewController;
  [(ChromeViewController *)&v31 mapView:v6 regionDidChangeAnimated:v4];
}

- (void)mapView:(id)a3 didDeselectLabelMarker:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(CarChromeViewController *)self topContext];
  v9 = objc_opt_respondsToSelector();

  if (v9)
  {
    v10 = [(CarChromeViewController *)self topContext];
    [v10 mapView:v6 didDeselectLabelMarker:v7];
  }

  v11.receiver = self;
  v11.super_class = CarChromeViewController;
  [(ChromeViewController *)&v11 mapView:v6 didDeselectLabelMarker:v7];
}

- (void)mapView:(id)a3 didSelectLabelMarker:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = sub_100006E1C();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = [v7 isRouteEta];
    v10 = @"NO";
    if (v9)
    {
      v10 = @"YES";
    }

    v11 = v10;
    *buf = 134349570;
    v18 = self;
    v19 = 2112;
    v20 = v7;
    v21 = 2112;
    v22 = v11;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "[%{public}p] User didSelectLabelMarker: %@, isRouteETA: %@", buf, 0x20u);
  }

  if ([v7 isRouteEta])
  {
    v12 = [(CarChromeViewController *)self routeSelectionController];
    [v12 mapView:v6 didSelectLabelMarker:v7];
  }

  v13 = [(CarChromeViewController *)self topContext];
  v14 = objc_opt_respondsToSelector();

  if (v14)
  {
    v15 = [(CarChromeViewController *)self topContext];
    [v15 mapView:v6 didSelectLabelMarker:v7];
  }

  v16.receiver = self;
  v16.super_class = CarChromeViewController;
  [(ChromeViewController *)&v16 mapView:v6 didSelectLabelMarker:v7];
}

- (BOOL)mapView:(id)a3 shouldSelectLabelMarker:(id)a4
{
  v6 = a4;
  v14.receiver = self;
  v14.super_class = CarChromeViewController;
  [(ChromeViewController *)&v14 mapView:a3 shouldSelectLabelMarker:v6];
  if ([(CarChromeViewController *)self _canSelectAlternateRoutes])
  {
    v7 = [v6 isRouteEta];
  }

  else
  {
    v7 = 0;
  }

  v8 = sub_100006E1C();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    if (v7)
    {
      v9 = @"YES";
    }

    else
    {
      v9 = @"NO";
    }

    v10 = v9;
    if ([v6 isRouteEta])
    {
      v11 = @"YES";
    }

    else
    {
      v11 = @"NO";
    }

    v12 = v11;
    *buf = 134349570;
    v16 = self;
    v17 = 2112;
    v18 = v10;
    v19 = 2112;
    v20 = v12;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "[%{public}p] shouldSelectLabelMarker: %@, isRouteETA: %@", buf, 0x20u);
  }

  return v7;
}

- (void)mapView:(id)a3 didFailToLocateUserWithError:(id)a4
{
  v6 = a3;
  v7 = a4;
  v15.receiver = self;
  v15.super_class = CarChromeViewController;
  [(CarChromeViewController *)&v15 mapView:v6 didFailToLocateUserWithError:v7];
  if (([v6 hasUserLocation] & 1) == 0)
  {
    v8 = +[CarDisplayController sharedInstance];
    v9 = [v8 isCurrentlyConnectedToCarAppScene];

    if (v9)
    {
      v10 = [v7 domain];
      v11 = [v10 isEqualToString:MKLocationErrorDomain];

      if (v11)
      {
        v12 = sub_100006E1C();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
        {
          *buf = 134349056;
          v17 = self;
          _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEBUG, "[%{public}p] Notified did fail to locate user, will request location services error alert", buf, 0xCu);
        }

        v13 = +[UIApplication sharedMapsDelegate];
        [v13 showLocationServicesAlertWithError:v7];

        v14 = sub_100006E1C();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
        {
          *buf = 134349056;
          v17 = self;
          _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEBUG, "[%{public}p] Will force user tracking to None and hide user location", buf, 0xCu);
        }

        [v6 setUserTrackingMode:0];
        [v6 setShowsUserLocation:0];
      }
    }
  }
}

- (void)mapView:(id)a3 didUpdateUserLocation:(id)a4
{
  v14.receiver = self;
  v14.super_class = CarChromeViewController;
  [(CarChromeViewController *)&v14 mapView:a3 didUpdateUserLocation:a4];
  v5 = +[MKLocationManager sharedLocationManager];
  [v5 vehicleHeadingOrCourse];
  v7 = v6;
  if (v6 > -1.0 != [(CarChromeViewController *)self haveVehicleDirection])
  {
    [(CarChromeViewController *)self setHaveVehicleDirection:v7 > -1.0];
    [(ChromeViewController *)self setNeedsUpdateMapInsets];
  }

  v8 = +[MNNavigationService sharedService];
  v9 = [v8 isInNavigatingState];

  if (v7 == -1.0)
  {
    v10 = v9;
  }

  else
  {
    v10 = 1;
  }

  v11 = [(ChromeViewController *)self userLocationView];
  v12 = [v11 mode];

  if (v12 != v10)
  {
    v13 = [(ChromeViewController *)self userLocationView];
    [v13 setMode:v10];
  }
}

- (BOOL)shouldRecenterAndZoom
{
  configuringMapView = self->_configuringMapView;
  v4 = [(CarChromeViewController *)self topContext];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [(CarChromeViewController *)self topContext];
    configuringMapView = [v6 allowMapZoomAndRecentering];
  }

  return configuringMapView;
}

- (BOOL)mapSettings:(id)a3 shouldApplyAnimated:(BOOL *)a4
{
  v6 = a3;
  if (sub_10008B2E8() && [(ChromeMapSettings *)v6 type]== 1 && ([(ChromeViewController *)self setNeedsUpdateComponent:@"navigationDisplay" animated:*a4], [(ChromeMapSettings *)v6 pitched]))
  {
    v7 = [(CarChromeViewController *)self shouldAnimateMapTransition:*a4];
    v8 = 0;
    *a4 = v7;
  }

  else if (self->_defaultMapSettings == v6 && ![(CarChromeViewController *)self shouldRecenterAndZoom])
  {
    v10 = sub_100006E1C();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      v11 = 134349056;
      v12 = self;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEBUG, "[%{public}p] Will not recenter and zoom, not allowed", &v11, 0xCu);
    }

    v8 = 0;
  }

  else
  {
    if (a4)
    {
      *a4 = [(CarChromeViewController *)self shouldAnimateMapTransition:*a4];
    }

    v8 = 1;
  }

  return v8;
}

- (void)updateComponent:(id)a3 forTiming:(unint64_t)a4 withAnimation:(id)a5
{
  v8 = a3;
  v9 = a5;
  if (v8 == @"cards")
  {
    v18 = [(CarChromeViewController *)self topContext];
    [(CarChromeViewController *)self _updateCardsForContext:v18 withAnimation:v9 completion:0];
LABEL_14:

    goto LABEL_15;
  }

  if (v8 != @"statusBanner")
  {
    if (v8 == @"accessories")
    {
      v18 = [(CarChromeViewController *)self topContext];
      [(CarChromeViewController *)self _reloadAccessoriesForContext:v18 withAnimation:v9];
    }

    else
    {
      if (v8 != @"mapcontrols")
      {
        if (v8 != @"mapInsets")
        {
LABEL_19:
          v19.receiver = self;
          v19.super_class = CarChromeViewController;
          [(ChromeViewController *)&v19 updateComponent:v8 forTiming:a4 withAnimation:v9];
          goto LABEL_15;
        }

        if (![(ChromeViewController *)self isRunningNavigationDisplay])
        {
          v10 = [(ChromeViewController *)self mapView];
          if ([v10 userTrackingMode] == 2)
          {
            v11 = +[MKLocationManager sharedLocationManager];
            [v11 vehicleHeadingOrCourse];
            v13 = v12;

            if (v13 > -1.0)
            {
              v14 = [(CarChromeViewController *)self view];
              [v14 bounds];
              p_headingUpMapInsetAdjustmentConstraint = &self->_headingUpMapInsetAdjustmentConstraint;
              [(NSLayoutConstraint *)self->_headingUpMapInsetAdjustmentConstraint setConstant:round(v15 * 0.4)];

              v17 = 1;
LABEL_18:
              [(NSLayoutConstraint *)*p_headingUpMapInsetAdjustmentConstraint setActive:v17];
              goto LABEL_19;
            }
          }

          else
          {
          }
        }

        v17 = 0;
        p_headingUpMapInsetAdjustmentConstraint = &self->_headingUpMapInsetAdjustmentConstraint;
        goto LABEL_18;
      }

      v18 = [(CarChromeViewController *)self topContext];
      [(CarChromeViewController *)self _reloadMapControlsForContext:v18 withAnimation:v9];
    }

    goto LABEL_14;
  }

  [(CarChromeViewController *)self _reloadStatusBannerWithAnimation:v9];
LABEL_15:
}

- (void)willUpdateComponents:(id)a3 withAnimation:(id)a4
{
  v6 = a3;
  v7 = a4;
  v13.receiver = self;
  v13.super_class = CarChromeViewController;
  [(ChromeViewController *)&v13 willUpdateComponents:v6 withAnimation:v7];
  v8 = [NSSet setWithObjects:@"cards", @"statusBanner", 0];
  v9 = [v6 intersectsSet:v8];

  v10 = 1.0;
  if (v9)
  {
    goto LABEL_4;
  }

  v11 = [NSSet setWithObjects:@"accessories", 1.0, @"mapcontrols", 0];
  v12 = [v6 intersectsSet:v11];

  if (v12)
  {
    v10 = 0.1;
LABEL_4:
    [v7 setDuration:v10];
  }
}

- (BOOL)shouldAnimateMapTransition:(BOOL)a3
{
  if (!a3)
  {
    return 0;
  }

  if (![(ChromeViewController *)self isTransitioning])
  {
    return 1;
  }

  v4 = [(CarChromeViewController *)self topContext];
  v5 = [(ChromeViewController *)self previousTopContext];
  if ([v4 showsMapView])
  {
    v6 = [v5 showsMapView];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)prepareMapViewForFirstUse
{
  v26.receiver = self;
  v26.super_class = CarChromeViewController;
  [(ChromeViewController *)&v26 prepareMapViewForFirstUse];
  v3 = [(ChromeViewController *)self mapView];
  v4 = [[MapViewResponder alloc] initWithMapView:v3];
  mapViewResponder = self->_mapViewResponder;
  self->_mapViewResponder = v4;

  [(CarMapNudgerizer *)self->_nudgerizer setMapView:v3];
  [(ChromeMapSettings *)self->_defaultMapSettings setMapView:v3];
  [(CarRouteSelectionController *)self->_routeSelectionController setMapView:v3];
  [(CarChromeViewController *)self _updateOfflineModernMapToken];
  self->_configuringMapView = 1;
  v6 = [v3 _mapLayer];
  [v6 setNavigationShieldSize:5];

  v7 = [v3 _mapLayer];
  [v7 setShieldSize:4];

  v8 = [v3 _mapLayer];
  [v8 setShieldIdiom:1];

  v9 = [v3 _mapLayer];
  [v9 setLabelScaleFactor:2];

  v10 = [v3 _mapLayer];
  [v10 setApplicationUILayout:1];

  [v3 setShowsTraffic:1];
  [v3 _setShowsTrafficIncidents:1];
  v25 = 0;
  v23 = 0u;
  v24 = 0u;
  v22 = 0u;
  if (v3)
  {
    [v3 _cartographicConfiguration];
  }

  *(&v22 + 1) = 2;
  *&v24 = 0;
  if (![(CarChromeViewController *)self shouldUseModernMap])
  {
    v23 = vdupq_n_s64(1uLL);
  }

  v20[0] = v22;
  v20[1] = v23;
  v20[2] = v24;
  v21 = v25;
  [v3 _setCartographicConfiguration:v20];
  [v3 setCompassEnabled:0];
  [v3 setScaleEnabled:0];
  [v3 _setUseVehicleHeading:1];
  [v3 _setCanSelectPOIs:{-[CarChromeViewController _canSelectAlternateRoutes](self, "_canSelectAlternateRoutes")}];
  v11 = +[UIColor _maps_keyColor];
  [v3 setTintColor:v11];

  [v3 _setShouldLoadFallbackTiles:0];
  v12 = [v3 _panningGestureRecognizer];
  [v12 setAllowedTouchTypes:&off_1016EC740];

  v13 = [v3 _oneHandedZoomGestureRecognizer];
  [v13 setAllowedPressTypes:&off_1016EC758];
  v14 = [[CarOneHandedZoomConfiguration alloc] initWithGestureRecongizer:v13];
  [v13 setConfiguration:v14];

  [v3 _setShowsVenues:0];
  [v3 _setLoadLookAroundAvailability:0];
  [(CarChromeViewController *)self _resetMapViewDefaults:v3];
  v15 = [(CarChromeViewController *)self _maps_mapsSceneDelegate];
  v16 = [v15 entryPointsCoordinator];
  v17 = [v16 didLaunchWithExplicitIntent];

  if ((v17 & 1) == 0)
  {
    v18 = [(CarChromeViewController *)self defaultMapSettings];
    [v18 applyToMapViewAnimated:0 duration:0 completion:0.0];
  }

  v19 = [(CarChromeViewController *)self traitCollection];
  -[CarChromeViewController _updateMapUserInterfaceStyle:animated:](self, "_updateMapUserInterfaceStyle:animated:", [v19 _car_userInterfaceStyle], 1);
}

- (void)_resetMapViewDefaults:(id)a3
{
  if (a3)
  {
    v4 = a3;
    v5 = sub_100006E1C();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      *v8 = 134349056;
      *&v8[4] = self;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "[%{public}p] Will reset mapView default settings", v8, 0xCu);
    }

    [v4 setZoomEnabled:0];
    v6 = [objc_opt_class() allowOneHandedZooming];
    v7 = [v4 _oneHandedZoomGestureRecognizer];
    [v7 setEnabled:v6];

    [v4 setShowsUserLocation:1];
    *&v8[1] = *(VKAnnotationTrackingBehaviorDefault + 1);
    *&v8[16] = VKAnnotationTrackingBehaviorDefault[2];
    v8[0] = 0;
    [v4 _setUserTrackingBehavior:v8];
  }
}

- (void)_performMapUpdateToUserInterfaceStyle:(int64_t)a3 animation:(id)a4
{
  v6 = a4;
  v7 = sub_10004F508();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    if (a3 >= 3)
    {
      v8 = [NSString stringWithFormat:@"<Unknown %ld>", a3];
    }

    else
    {
      v8 = off_101622790[a3];
    }

    BOOL = GEOConfigGetBOOL();
    v10 = @"NO";
    if (BOOL)
    {
      v10 = @"YES";
    }

    v11 = v10;
    *buf = 134349570;
    v23 = self;
    v24 = 2112;
    v25 = v8;
    v26 = 2112;
    v27 = v11;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "[%{public}p] In _performMapUpdateToUserInterfaceStyle: %@, CarPlayMapAppearanceShouldFollowUserInterfaceStyle: %@", buf, 0x20u);
  }

  v12 = sub_10004F508();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    v13 = [(ChromeViewController *)self mapView];
    v14 = [v13 traitCollection];
    v15 = [v14 _car_userInterfaceStyle];
    if (v15 >= 3)
    {
      v16 = [NSString stringWithFormat:@"<Unknown %ld>", v15];
    }

    else
    {
      v16 = off_101622790[v15];
    }

    *buf = 134349314;
    v23 = self;
    v24 = 2112;
    v25 = v16;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "[%{public}p] self.mapView.traitCollection._car_userInterfaceStyle: %@", buf, 0x16u);
  }

  v17 = sub_10004F508();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
  {
    v18 = [(ChromeViewController *)self mapView];
    v19 = [v18 overrideUserInterfaceStyle];
    if (v19 >= 3)
    {
      v20 = [NSString stringWithFormat:@"<Unknown %ld>", v19];
    }

    else
    {
      v20 = off_101622790[v19];
    }

    *buf = 134349314;
    v23 = self;
    v24 = 2112;
    v25 = v20;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, "[%{public}p] self.mapView.overrideUserInterfaceStyle: %@", buf, 0x16u);
  }

  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_100596A88;
  v21[3] = &unk_101661650;
  v21[4] = self;
  v21[5] = a3;
  [v6 addAnimations:v21 completion:0];
}

- (void)_updateMapUserInterfaceStyle:(int64_t)a3 animated:(BOOL)a4
{
  v4 = a4;
  v7 = sub_10004F508();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    if (a3 >= 3)
    {
      v8 = [NSString stringWithFormat:@"<Unknown %ld>", a3];
    }

    else
    {
      v8 = off_101622790[a3];
    }

    *buf = 134349314;
    v16 = self;
    v17 = 2112;
    v18 = v8;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "[%{public}p] In _updateMapUserInterfaceStyle : %@", buf, 0x16u);
  }

  v9 = sub_10004F508();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = [(ChromeViewController *)self mapView];
    v11 = [v10 _showsNightMode];
    v12 = @"NO";
    if (v11)
    {
      v12 = @"YES";
    }

    v13 = v12;
    *buf = 134349314;
    v16 = self;
    v17 = 2112;
    v18 = v13;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "[%{public}p] In _updateMapUserInterfaceStyle self.mapView.showsNightMode : %@", buf, 0x16u);
  }

  v14 = [GroupAnimation animationForAnimatedFlag:v4];
  [(CarChromeViewController *)self _performMapUpdateToUserInterfaceStyle:a3 animation:v14];
  [v14 runWithDuration:196608 delay:2.0 options:0.0];
}

- (void)_updateMapToCurrentUserInterfaceStyleAnimated:(BOOL)a3
{
  v3 = a3;
  v5 = [(CarChromeViewController *)self traitCollection];
  -[CarChromeViewController _updateMapUserInterfaceStyle:animated:](self, "_updateMapUserInterfaceStyle:animated:", [v5 _car_userInterfaceStyle], v3);
}

- (void)_carPlayWindowMapStyleDidChange:(id)a3
{
  v4 = a3;
  v5 = [v4 object];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  if (!v7)
  {
    v29 = sub_10006D178();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315906;
      v33 = "[CarChromeViewController _carPlayWindowMapStyleDidChange:]";
      v34 = 2080;
      v35 = "CarChromeViewController.m";
      v36 = 1024;
      *v37 = 1189;
      *&v37[4] = 2080;
      *&v37[6] = "window";
      _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion: (%s)", buf, 0x26u);
    }

    if (sub_100E03634())
    {
      v30 = sub_10006D178();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
      {
        v31 = +[NSThread callStackSymbols];
        *buf = 138412290;
        v33 = v31;
        _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
      }
    }

    v11 = sub_10004F508();
    if (!os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_12;
    }

    *buf = 134349314;
    v33 = self;
    v34 = 2112;
    v35 = v4;
    v14 = "[%{public}p] was notified from an unsupported window scene: %@";
    v15 = v11;
    v16 = OS_LOG_TYPE_FAULT;
    goto LABEL_11;
  }

  if (([(CarChromeViewController *)self isViewLoaded]& 1) != 0)
  {
    v8 = [(CarChromeViewController *)self view];
    v9 = [v8 window];

    v10 = sub_10004F508();
    v11 = v10;
    if (v7 != v9)
    {
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        v12 = [(CarChromeViewController *)self view];
        v13 = [v12 window];
        *buf = 134349570;
        v33 = self;
        v34 = 2112;
        v35 = v7;
        v36 = 2112;
        *v37 = v13;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEBUG, "[%{public}p] Ignoring update from a window: %@ that does not belong to this VC (%@)", buf, 0x20u);
      }

      goto LABEL_12;
    }

    if (!os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
LABEL_30:

      [(CarChromeViewController *)self _updateMapToCurrentUserInterfaceStyleAnimated:[(ChromeViewController *)self isSuppressed]^ 1];
      goto LABEL_13;
    }

    v17 = self;
    if (!v17)
    {
      v22 = @"<nil>";
      goto LABEL_23;
    }

    v18 = objc_opt_class();
    v19 = NSStringFromClass(v18);
    if (objc_opt_respondsToSelector())
    {
      v20 = [(CarChromeViewController *)v17 performSelector:"accessibilityIdentifier"];
      v21 = v20;
      if (v20 && ![v20 isEqualToString:v19])
      {
        v22 = [NSString stringWithFormat:@"%@<%p, %@>", v19, v17, v21];

        goto LABEL_21;
      }
    }

    v22 = [NSString stringWithFormat:@"%@<%p>", v19, v17];
LABEL_21:

LABEL_23:
    v23 = v22;
    v24 = [(CarChromeViewController *)v17 sceneType];
    if (v24 > 6)
    {
      v25 = @".Unknown";
    }

    else
    {
      v25 = off_101622758[v24];
    }

    v26 = [(CarChromeViewController *)v17 traitCollection];
    v27 = [v26 _car_userInterfaceStyle];
    if (v27 >= 3)
    {
      v28 = [NSString stringWithFormat:@"<Unknown %ld>", v27];
    }

    else
    {
      v28 = off_101622790[v27];
    }

    *buf = 138544130;
    v33 = v23;
    v34 = 2112;
    v35 = v17;
    v36 = 2112;
    *v37 = v25;
    *&v37[8] = 2112;
    *&v37[10] = v28;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "[%{public}@] In %@: _carPlayWindowMapStyleDidChange: carSceneType: %@, interfaceStyle: %@", buf, 0x2Au);

    goto LABEL_30;
  }

  v11 = sub_10004F508();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134349314;
    v33 = self;
    v34 = 2112;
    v35 = v7;
    v14 = "[%{public}p] Ignoring update from window %@, our view is not loaded";
    v15 = v11;
    v16 = OS_LOG_TYPE_DEBUG;
LABEL_11:
    _os_log_impl(&_mh_execute_header, v15, v16, v14, buf, 0x16u);
  }

LABEL_12:

LABEL_13:
}

- (void)traitCollectionDidChange:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = CarChromeViewController;
  [(CarChromeViewController *)&v15 traitCollectionDidChange:v4];
  v5 = [v4 _car_userInterfaceStyle];
  v6 = [(CarChromeViewController *)self traitCollection];
  v7 = [v6 _car_userInterfaceStyle];

  if (v5 != v7)
  {
    v8 = sub_10004F508();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = [v4 _car_userInterfaceStyle];
      if (v9 >= 3)
      {
        v10 = [NSString stringWithFormat:@"<Unknown %ld>", v9];
      }

      else
      {
        v10 = off_101622790[v9];
      }

      v11 = v10;
      v12 = [(CarChromeViewController *)self traitCollection];
      v13 = [v12 _car_userInterfaceStyle];
      if (v13 >= 3)
      {
        v14 = [NSString stringWithFormat:@"<Unknown %ld>", v13];
      }

      else
      {
        v14 = off_101622790[v13];
      }

      *buf = 134349570;
      v17 = self;
      v18 = 2112;
      v19 = v11;
      v20 = 2112;
      v21 = v14;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "[%{public}p] In traitCollectionDidChange : _car_userInterfaceStyle changed from : %@ to : %@", buf, 0x20u);
    }

    [(MapsLightLevelController *)self->_lightLevelController reloadForChangedLightLevelTrackers];
  }
}

- (void)_presentAnyPendingAlert:(BOOL)a3
{
  v3 = a3;
  currentAlertViewController = self->_currentAlertViewController;
  v6 = [(CarChromeViewController *)self presentedViewController];

  if (currentAlertViewController != v6)
  {
    v7 = [(CarChromeViewController *)self presentedViewController];

    if (v7)
    {
      v15[0] = _NSConcreteStackBlock;
      v15[1] = 3221225472;
      v15[2] = sub_100597720;
      v15[3] = &unk_101661AE0;
      v15[4] = self;
      v16 = v3;
      [(CarChromeViewController *)self dismissViewControllerAnimated:v3 completion:v15];
      return;
    }

    if (self->_currentAlertViewController)
    {
      v8 = sub_100006E1C();
      if (!os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
LABEL_15:

        [(CarChromeViewController *)self presentViewController:self->_currentAlertViewController animated:v3 completion:0];
        return;
      }

      v9 = self->_currentAlertViewController;
      if (!v9)
      {
        v14 = @"<nil>";
        goto LABEL_14;
      }

      v10 = objc_opt_class();
      v11 = NSStringFromClass(v10);
      if (objc_opt_respondsToSelector())
      {
        v12 = [(CarAlertViewController *)v9 performSelector:"accessibilityIdentifier"];
        v13 = v12;
        if (v12 && ![v12 isEqualToString:v11])
        {
          v14 = [NSString stringWithFormat:@"%@<%p, %@>", v11, v9, v13];

          goto LABEL_12;
        }
      }

      v14 = [NSString stringWithFormat:@"%@<%p>", v11, v9];
LABEL_12:

LABEL_14:
      *buf = 134349314;
      v18 = self;
      v19 = 2112;
      v20 = v14;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "[%{public}p] Ready for new alert, presenting %@", buf, 0x16u);

      goto LABEL_15;
    }
  }
}

- (void)_dismissAlertViewController:(id)a3 animated:(BOOL)a4
{
  v5 = a4;
  v7 = a3;
  currentAlertViewController = self->_currentAlertViewController;
  if (currentAlertViewController != v7)
  {
    v9 = sub_100006E1C();
    v10 = os_log_type_enabled(v9, OS_LOG_TYPE_INFO);
    if (currentAlertViewController)
    {
      if (v10)
      {
        v11 = self->_currentAlertViewController;
        if (!v11)
        {
          v16 = @"<nil>";
LABEL_28:

          v30 = v16;
          v31 = v7;
          if (!v31)
          {
            v36 = @"<nil>";
            goto LABEL_36;
          }

          v32 = objc_opt_class();
          v33 = NSStringFromClass(v32);
          if (objc_opt_respondsToSelector())
          {
            v34 = [(CarAlertViewController *)v31 performSelector:"accessibilityIdentifier"];
            v35 = v34;
            if (v34 && ![v34 isEqualToString:v33])
            {
              v36 = [NSString stringWithFormat:@"%@<%p, %@>", v33, v31, v35];

              goto LABEL_34;
            }
          }

          v36 = [NSString stringWithFormat:@"%@<%p>", v33, v31];
LABEL_34:

LABEL_36:
          *buf = 134349570;
          v40 = self;
          v41 = 2112;
          v42 = v30;
          v43 = 2112;
          v44 = v36;
          _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "[%{public}p] Will not dismiss current alert, does match instance passed in (current:%@, specified:%@)", buf, 0x20u);

          goto LABEL_39;
        }

        v12 = objc_opt_class();
        v13 = NSStringFromClass(v12);
        if (objc_opt_respondsToSelector())
        {
          v14 = [(CarAlertViewController *)v11 performSelector:"accessibilityIdentifier"];
          v15 = v14;
          if (v14 && ![v14 isEqualToString:v13])
          {
            v16 = [NSString stringWithFormat:@"%@<%p, %@>", v13, v11, v15];

            goto LABEL_10;
          }
        }

        v16 = [NSString stringWithFormat:@"%@<%p>", v13, v11];
LABEL_10:

        goto LABEL_28;
      }

LABEL_39:

      goto LABEL_40;
    }

    if (!v10)
    {
      goto LABEL_39;
    }

    v22 = v7;
    if (!v22)
    {
      v27 = @"<nil>";
      goto LABEL_38;
    }

    v23 = objc_opt_class();
    v24 = NSStringFromClass(v23);
    if (objc_opt_respondsToSelector())
    {
      v25 = [(CarAlertViewController *)v22 performSelector:"accessibilityIdentifier"];
      v26 = v25;
      if (v25 && ![v25 isEqualToString:v24])
      {
        v27 = [NSString stringWithFormat:@"%@<%p, %@>", v24, v22, v26];

        goto LABEL_21;
      }
    }

    v27 = [NSString stringWithFormat:@"%@<%p>", v24, v22];
LABEL_21:

LABEL_38:
    *buf = 134349314;
    v40 = self;
    v41 = 2112;
    v42 = v27;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "[%{public}p] Will not dismiss current alert, we do not have one presented (specified:%@)", buf, 0x16u);

    goto LABEL_39;
  }

  v17 = sub_100006E1C();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
  {
    v18 = [(CarAlertViewController *)self->_currentAlertViewController alertTitle];
    v19 = [(CarAlertViewController *)self->_currentAlertViewController alertTitle];
    v20 = [v19 length];
    if (v20 > 0x13)
    {
      v21 = 20;
    }

    else
    {
      v4 = [(CarAlertViewController *)self->_currentAlertViewController alertTitle];
      v21 = [v4 length];
    }

    v28 = [v18 substringToIndex:v21];
    *buf = 134349314;
    v40 = self;
    v41 = 2112;
    v42 = v28;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, "[%{public}p] Will dismiss current alert %@", buf, 0x16u);
    if (v20 <= 0x13)
    {
    }
  }

  v29 = self->_currentAlertViewController;
  self->_currentAlertViewController = 0;

  v37[0] = _NSConcreteStackBlock;
  v37[1] = 3221225472;
  v37[2] = sub_100597C10;
  v37[3] = &unk_101661AE0;
  v37[4] = self;
  v38 = v5;
  [(CarChromeViewController *)self dismissViewControllerAnimated:v5 completion:v37];
LABEL_40:
}

- (void)_presentAlertViewController:(id)a3 animated:(BOOL)a4
{
  v32 = a4;
  v8 = a3;
  v9 = [(CarChromeViewController *)self presentedViewController];
  v10 = sub_100006E1C();
  v11 = os_log_type_enabled(&v10->super.super.super, OS_LOG_TYPE_INFO);
  if (v9 == v8)
  {
    if (v11)
    {
      v16 = [v8 alertTitle];
      v17 = [v8 alertTitle];
      v18 = [v17 length];
      if (v18 > 0x13)
      {
        v19 = 20;
      }

      else
      {
        v4 = [v8 alertTitle];
        v19 = [v4 length];
      }

      v28 = v18 < 0x14;
      v29 = [v16 substringToIndex:v19];
      *buf = 134349314;
      v37 = self;
      v38 = 2112;
      v39 = v29;
      _os_log_impl(&_mh_execute_header, &v10->super.super.super, OS_LOG_TYPE_INFO, "[%{public}p] Asked to present alert, but it's already visible: %@", buf, 0x16u);
      if (v28)
      {
      }
    }
  }

  else
  {
    if (v11)
    {
      v12 = [v8 alertTitle];
      v13 = [v8 alertTitle];
      v14 = [v13 length];
      if (v14 > 0x13)
      {
        v15 = 20;
      }

      else
      {
        v5 = [v8 alertTitle];
        v15 = [v5 length];
      }

      v20 = v14 < 0x14;
      v21 = [v12 substringToIndex:v15];
      *buf = 134349314;
      v37 = self;
      v38 = 2112;
      v39 = v21;
      _os_log_impl(&_mh_execute_header, &v10->super.super.super, OS_LOG_TYPE_INFO, "[%{public}p] Asked to present alert: %@", buf, 0x16u);
      if (v20)
      {
      }
    }

    v10 = self->_currentAlertViewController;
    objc_storeStrong(&self->_currentAlertViewController, a3);
    [(CarAlertViewController *)self->_currentAlertViewController setModalPresentationStyle:5];
    if (v10)
    {
      v22 = sub_100006E1C();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
      {
        *buf = 134349056;
        v37 = self;
        _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_INFO, "[%{public}p] Already have an alert showing, transition to the new one", buf, 0xCu);
      }

      [(CarAlertViewController *)v10 supersede];
    }

    objc_initWeak(&location, self);
    if (v9)
    {
      objc_copyWeak(&v33, &location);
      v34 = v32;
      [CarChromeViewController dismissViewControllerAnimated:"dismissViewControllerAnimated:completion:" completion:?];
      objc_destroyWeak(&v33);
    }

    else
    {
      v23 = sub_100006E1C();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
      {
        v24 = [(CarAlertViewController *)self->_currentAlertViewController alertTitle];
        v25 = [(CarAlertViewController *)self->_currentAlertViewController alertTitle];
        v26 = [v25 length];
        if (v26 > 0x13)
        {
          v27 = 20;
        }

        else
        {
          v31 = [(CarAlertViewController *)self->_currentAlertViewController alertTitle];
          v27 = [v31 length];
        }

        v30 = [v24 substringToIndex:v27];
        *buf = 134349314;
        v37 = self;
        v38 = 2112;
        v39 = v30;
        _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_INFO, "[%{public}p] Will show a new alert %@", buf, 0x16u);
        if (v26 <= 0x13)
        {
        }
      }

      [(CarChromeViewController *)self presentViewController:self->_currentAlertViewController animated:v32 completion:0];
    }

    objc_destroyWeak(&location);
  }
}

- (id)_presentSearchRefinementWithUserInfo:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  objc_initWeak(&location, self);
  v8 = [v6 objectForKeyedSubscript:@"kMapsInterruptionSearchRefinementResults"];
  if (v8)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v16 = sub_10006D178();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315906;
        v26 = "[CarChromeViewController _presentSearchRefinementWithUserInfo:completionHandler:]";
        v27 = 2080;
        v28 = "CarChromeViewController.m";
        v29 = 1024;
        v30 = 1086;
        v31 = 2080;
        v32 = "[searchInfo isKindOfClass:[SearchInfo class]]";
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion: (%s)", buf, 0x26u);
      }

      if (sub_100E03634())
      {
        v17 = sub_10006D178();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          v18 = +[NSThread callStackSymbols];
          *buf = 138412290;
          v26 = v18;
          _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
        }
      }
    }

    v9 = [CarDisambiguationModeController alloc];
    v21[0] = _NSConcreteStackBlock;
    v21[1] = 3221225472;
    v21[2] = sub_1005984E8;
    v21[3] = &unk_10165E7A0;
    objc_copyWeak(&v23, &location);
    v22 = v7;
    v10 = [(CarDisambiguationModeController *)v9 initWithSearchInfo:v8 completionBlock:v21];
    v11 = sub_100006E1C();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      *buf = 134349056;
      v26 = self;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEBUG, "[%{public}p] Will present search refinement controller", buf, 0xCu);
    }

    v12 = [[UINavigationController alloc] initWithRootViewController:v10];
    [(CarChromeViewController *)self presentViewController:v12 animated:1 completion:0];
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_10059866C;
    v19[3] = &unk_1016619A8;
    objc_copyWeak(&v20, &location);
    v13 = objc_retainBlock(v19);
    objc_destroyWeak(&v20);

    objc_destroyWeak(&v23);
  }

  else
  {
    v14 = sub_100006E1C();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      *buf = 134349056;
      v26 = self;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEBUG, "[%{public}p] Will not present search refinement, no search info provided", buf, 0xCu);
    }

    v13 = 0;
  }

  objc_destroyWeak(&location);

  return v13;
}

- (id)presentInterruptionOfKind:(int64_t)a3 userInfo:(id)a4 completionHandler:(id)a5
{
  v8 = a4;
  v109 = a5;
  v9 = [(CarChromeViewController *)self topContext];
  if ((objc_opt_respondsToSelector() & 1) != 0 && [v9 canPresentInterruptionOfKind:a3])
  {
    if ((objc_opt_respondsToSelector() & 1) == 0)
    {
      v91 = sub_10006D178();
      if (os_log_type_enabled(v91, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315906;
        v123 = "[CarChromeViewController presentInterruptionOfKind:userInfo:completionHandler:]";
        v124 = 2080;
        v125 = "CarChromeViewController.m";
        v126 = 1024;
        *v127 = 876;
        *&v127[4] = 2080;
        *&v127[6] = "[topContext respondsToSelector:@selector(presentInterruptionOfKind:userInfo:completionHandler:)]";
        _os_log_impl(&_mh_execute_header, v91, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion: (%s)", buf, 0x26u);
      }

      if (sub_100E03634())
      {
        v92 = sub_10006D178();
        if (os_log_type_enabled(v92, OS_LOG_TYPE_ERROR))
        {
          v93 = +[NSThread callStackSymbols];
          *buf = 138412290;
          v123 = v93;
          _os_log_impl(&_mh_execute_header, v92, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
        }
      }
    }

    v10 = sub_100006E1C();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      v11 = objc_opt_class();
      *buf = 134349826;
      v123 = self;
      v124 = 2112;
      v125 = v11;
      v126 = 2048;
      *v127 = a3;
      *&v127[8] = 2112;
      *&v127[10] = v8;
      v12 = v11;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEBUG, "[%{public}p] Will ask top context %@ to present interruption (kind:%ld, userInfo:%@)", buf, 0x2Au);
    }

    v13 = [v9 presentInterruptionOfKind:a3 userInfo:v8 completionHandler:v109];
    goto LABEL_13;
  }

  if (a3 == 4)
  {
    v13 = [(CarChromeViewController *)self _presentSearchRefinementWithUserInfo:v8 completionHandler:v109];
LABEL_13:
    v18 = v13;
    goto LABEL_14;
  }

  interruptionManager = self->_interruptionManager;
  v15 = sub_100006E1C();
  v16 = os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT);
  if (interruptionManager)
  {
    if (v16)
    {
      v17 = self->_interruptionManager;
      *buf = 134349314;
      v123 = self;
      v124 = 2112;
      v125 = v17;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "[%{public}p] Asking interruption manager %@ to present the interruption", buf, 0x16u);
    }

    v13 = [(InterruptionManager *)self->_interruptionManager presentUnhandledInterruptionOfKind:a3 userInfo:v8 completionHandler:v109];
    goto LABEL_13;
  }

  if (v16)
  {
    *buf = 134349056;
    v123 = self;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "[%{public}p] Handing interruption with legacy alerts", buf, 0xCu);
  }

  v107 = [v8 objectForKeyedSubscript:@"kMapsInterruptionActions"];
  v106 = 680;
  val = self->_currentAlertViewController;
  if ([(CarAlertViewController *)val tag]== a3)
  {
    [(CarAlertViewController *)val supersede];
    [(CarAlertViewController *)val reset];
  }

  else
  {
    v20 = objc_alloc_init(CarAlertViewController);

    [(CarAlertViewController *)v20 setTag:a3];
    val = v20;
  }

  v18 = 0;
  switch(a3)
  {
    case 1:
      v50 = [v8 objectForKeyedSubscript:@"kMapsInterruptionTitle"];
      if (v50)
      {
        [(CarAlertViewController *)val setAlertTitle:v50];
      }

      else
      {
        v73 = +[NSBundle mainBundle];
        v74 = [v73 localizedStringForKey:@"Maps Safety Warning Title" value:@"localized string not found" table:0];
        [(CarAlertViewController *)val setAlertTitle:v74];
      }

      v22 = [v8 objectForKeyedSubscript:@"kMapsInterruptionMessage"];
      if (v22)
      {
        [(CarAlertViewController *)val setAlertMessage:v22];
      }

      else
      {
        v75 = +[NSBundle mainBundle];
        v76 = [v75 localizedStringForKey:@"Maps Safety Warning Message" value:@"localized string not found" table:0];
        [(CarAlertViewController *)val setAlertMessage:v76];

        v22 = 0;
      }

      goto LABEL_48;
    case 2:
    case 3:
    case 6:
    case 8:
    case 12:
    case 13:
    case 16:
    case 17:
    case 18:
    case 19:
    case 20:
    case 23:
      v21 = [v8 objectForKeyedSubscript:@"kMapsInterruptionTitle"];
      [(CarAlertViewController *)val setAlertTitle:v21];

      v22 = [v8 objectForKeyedSubscript:@"kMapsInterruptionMessage"];
      [(CarAlertViewController *)val setAlertMessage:v22];
      goto LABEL_48;
    case 5:
      v32 = +[CarChromeViewController localizedLocationAuthorizationTitle];
      [(CarAlertViewController *)val setAlertTitle:v32];

      v33 = +[CarChromeViewController localizedLocationAuthorizationMessage];
      [(CarAlertViewController *)val setAlertMessage:v33];

      goto LABEL_53;
    case 7:
      v41 = sub_100006E1C();
      if (os_log_type_enabled(v41, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_INFO, "CarChromeViewController: ask for kMapsInterruptionMaybeEndNavigation", buf, 2u);
      }

      v42 = +[NSBundle mainBundle];
      v43 = [v42 localizedStringForKey:@"Route in Progress [CarPlay]" value:@"localized string not found" table:0];
      [(CarAlertViewController *)val setAlertTitle:v43];

      v44 = +[NSBundle mainBundle];
      v45 = [v44 localizedStringForKey:@"Are you sure you want to end navigation? [CarPlay]" value:@"localized string not found" table:0];
      [(CarAlertViewController *)val setAlertMessage:v45];

      v22 = +[NSBundle mainBundle];
      v103 = [v22 localizedStringForKey:@"Resume Navigation Cancel [CarPlay]" value:@"localized string not found" table:0];
      v100 = [MapsInterruptionAction actionWithTitle:v103 cancels:1 handler:0];
      v121[0] = v100;
      v46 = +[NSBundle mainBundle];
      v47 = [v46 localizedStringForKey:@"End Navigation [CarPlay]" value:@"localized string not found" table:0];
      v48 = [MapsInterruptionAction actionWithTitle:v47 cancels:0 handler:0];
      v121[1] = v48;
      v49 = [NSArray arrayWithObjects:v121 count:2];

      goto LABEL_40;
    case 9:
      v34 = +[NSBundle mainBundle];
      v35 = [v34 localizedStringForKey:@"Show navigable driving directions title [CarPlay]" value:@"localized string not found" table:0];
      [(CarAlertViewController *)val setAlertTitle:v35];

      v36 = +[NSBundle mainBundle];
      v37 = [v36 localizedStringForKey:@"Show navigable driving directions message [CarPlay]" value:@"localized string not found" table:0];
      [(CarAlertViewController *)val setAlertMessage:v37];

      v22 = +[NSBundle mainBundle];
      v38 = [v22 localizedStringForKey:@"Show navigable driving directions button [CarPlay]" value:@"localized string not found" table:0];
      v39 = [MapsInterruptionAction actionWithTitle:v38 cancels:0 handler:0];
      v120 = v39;
      v31 = [NSArray arrayWithObjects:&v120 count:1];

      goto LABEL_32;
    case 10:
      goto LABEL_64;
    case 11:
      v40 = sub_100FA8E84();
      [(CarAlertViewController *)val setAlertTitle:v40];

      v22 = sub_100FB2098();
      [(CarAlertViewController *)val setAlertMessage:v22];
      goto LABEL_48;
    case 14:
      v22 = [v8 objectForKeyedSubscript:@"kMapsInterruptionSharedTripSenderName"];
      v102 = [v8 objectForKeyedSubscript:@"kMapsInterruptionSharedTripSenderHandle"];
      if (!v22 || !v102)
      {
        v94 = sub_10006D178();
        if (os_log_type_enabled(v94, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315906;
          v123 = "[CarChromeViewController presentInterruptionOfKind:userInfo:completionHandler:]";
          v124 = 2080;
          v125 = "CarChromeViewController.m";
          v126 = 1024;
          *v127 = 992;
          *&v127[4] = 2080;
          *&v127[6] = "name && handle";
          _os_log_impl(&_mh_execute_header, v94, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion: (%s)", buf, 0x26u);
        }

        if (sub_100E03634())
        {
          v95 = sub_10006D178();
          if (os_log_type_enabled(v95, OS_LOG_TYPE_ERROR))
          {
            v96 = +[NSThread callStackSymbols];
            *buf = 138412290;
            v123 = v96;
            _os_log_impl(&_mh_execute_header, v95, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
          }
        }
      }

      v58 = +[NSBundle mainBundle];
      v59 = [v58 localizedStringForKey:@"Maps always shares as [name] [email/phone] [CarPlay]" value:@"localized string not found" table:0];
      v99 = [NSString stringWithFormat:v59, v22, v102];

      v60 = [NSMutableAttributedString alloc];
      v61 = +[CarAlertViewController defaultMessageAttributes];
      v105 = [v60 initWithString:v99 attributes:v61];

      v62 = +[UIColor secondaryLabelColor];
      v63 = [v105 string];
      v64 = [v63 rangeOfString:v102];
      [v105 addAttribute:NSForegroundColorAttributeName value:v62 range:{v64, v65}];

      v66 = +[NSBundle mainBundle];
      v67 = [v66 localizedStringForKey:@"Share ETA [CarPlay value:Sender Info Title]" table:{@"localized string not found", 0}];
      [(CarAlertViewController *)val setAlertTitle:v67];

      [(CarAlertViewController *)val setAlertAttributedMessage:v105];
      v98 = +[NSBundle mainBundle];
      v97 = [v98 localizedStringForKey:@"Cancel [CarPlay value:Share ETA Alert]" table:{@"localized string not found", 0}];
      v68 = [MapsInterruptionAction actionWithTitle:v97 cancels:1 handler:0];
      v119[0] = v68;
      v69 = +[NSBundle mainBundle];
      v70 = [v69 localizedStringForKey:@"Share [CarPlay value:Share ETA Alert]" table:{@"localized string not found", 0}];
      v71 = [MapsInterruptionAction actionWithTitle:v70 cancels:0 handler:0];
      v119[1] = v71;
      v72 = [NSArray arrayWithObjects:v119 count:2];

      v107 = v72;
      goto LABEL_48;
    case 15:
      v25 = +[NSBundle mainBundle];
      v26 = [v25 localizedStringForKey:@"Precise_Location_Off_Title [CarPlay]" value:@"localized string not found" table:0];
      [(CarAlertViewController *)val setAlertTitle:v26];

      v27 = +[NSBundle mainBundle];
      v28 = [v27 localizedStringForKey:@"Precise_Location_Off_Message [CarPlay]" value:@"localized string not found" table:0];
      [(CarAlertViewController *)val setAlertMessage:v28];

      v22 = +[NSBundle mainBundle];
      v29 = [v22 localizedStringForKey:@"Continue [CarPlay]" value:@"localized string not found" table:0];
      v30 = [MapsInterruptionAction actionWithTitle:v29 cancels:0 handler:0];
      v118 = v30;
      v31 = [NSArray arrayWithObjects:&v118 count:1];

LABEL_32:
      v107 = v31;
      goto LABEL_48;
    case 21:
      v51 = +[NSBundle mainBundle];
      v52 = [v51 localizedStringForKey:@"Using Offline Maps" value:@"localized string not found" table:@"Offline"];
      [(CarAlertViewController *)val setAlertTitle:v52];

      v53 = +[NSBundle mainBundle];
      v54 = [v53 localizedStringForKey:@"You're using the offline maps you downloaded even when you have an internet connection." value:@"localized string not found" table:@"Offline"];
      [(CarAlertViewController *)val setAlertMessage:v54];

      v22 = +[NSBundle mainBundle];
      v104 = [v22 localizedStringForKey:@"Continue [CarPlay value:Offline Alert]" table:@"localized string not found", 0];
      v101 = [MapsInterruptionAction actionWithTitle:v104 cancels:1 handler:0];
      v117[0] = v101;
      v55 = +[NSBundle mainBundle];
      v56 = [v55 localizedStringForKey:@"Turn Off [CarPlay value:Offline Alert]" table:{@"localized string not found", 0}];
      v57 = [MapsInterruptionAction actionWithTitle:v56 cancels:0 handler:0];
      v117[1] = v57;
      v49 = [NSArray arrayWithObjects:v117 count:2];

LABEL_40:
      v107 = v49;
      goto LABEL_48;
    default:
      v23 = sub_10006D178();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315650;
        v123 = "[CarChromeViewController presentInterruptionOfKind:userInfo:completionHandler:]";
        v124 = 2080;
        v125 = "CarChromeViewController.m";
        v126 = 1024;
        *v127 = 1020;
        _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion reached unexpectedly!", buf, 0x1Cu);
      }

      if (!sub_100E03634())
      {
        goto LABEL_49;
      }

      v22 = sub_10006D178();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        v24 = +[NSThread callStackSymbols];
        *buf = 138412290;
        v123 = v24;
        _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
      }

LABEL_48:

LABEL_49:
      if ([v107 count])
      {
        v77 = v107;
      }

      else
      {
        v78 = +[NSBundle mainBundle];
        v79 = [v78 localizedStringForKey:@"OK [CarPlay error alert]" value:@"localized string not found" table:0];

        v80 = [MapsInterruptionAction actionWithTitle:v79 cancels:0 handler:0];
        v116 = v80;
        v81 = [NSArray arrayWithObjects:&v116 count:1];

        v77 = v81;
      }

      v107 = v77;
      [(CarAlertViewController *)val setActions:?];
LABEL_53:
      v112[0] = _NSConcreteStackBlock;
      v112[1] = 3221225472;
      v112[2] = sub_100599B0C;
      v112[3] = &unk_101622570;
      v114 = v109;
      v115 = a3;
      v112[4] = self;
      v107 = v107;
      v113 = v107;
      [(CarAlertViewController *)val setResultBlock:v112];
      v82 = sub_100006E1C();
      if (os_log_type_enabled(v82, OS_LOG_TYPE_INFO))
      {
        if (val == self->_currentAlertViewController)
        {
          v83 = @"reuse";
        }

        else
        {
          v83 = @"create";
        }

        v84 = [(CarAlertViewController *)val title];
        v85 = [(CarAlertViewController *)val title];
        v86 = [v85 length];
        if (v86 > 0x13)
        {
          v87 = 20;
        }

        else
        {
          v106 = [(CarAlertViewController *)val title];
          v87 = [v106 length];
        }

        v88 = v86 < 0x14;
        v89 = [v84 substringToIndex:v87];
        *buf = 134349826;
        v123 = self;
        v124 = 2112;
        v125 = v83;
        v126 = 2048;
        *v127 = a3;
        *&v127[8] = 2112;
        *&v127[10] = v89;
        _os_log_impl(&_mh_execute_header, v82, OS_LOG_TYPE_INFO, "[%{public}p] Did %@ alert controller (kind:%ld, title:%@)", buf, 0x2Au);
        if (v88)
        {
        }
      }

      [(CarChromeViewController *)self _presentAlertViewController:val animated:1];
      objc_initWeak(buf, val);
      v110[0] = _NSConcreteStackBlock;
      v110[1] = 3221225472;
      v110[2] = sub_100599D14;
      v110[3] = &unk_101661340;
      v110[4] = self;
      objc_copyWeak(&v111, buf);
      v90 = [v110 copy];
      v18 = objc_retainBlock(v90);

      objc_destroyWeak(&v111);
      objc_destroyWeak(buf);

LABEL_64:
      break;
  }

LABEL_14:

  return v18;
}

- (BOOL)dismissCurrentInterruptionOfKind:(int64_t)a3
{
  v5 = [(CarAlertViewController *)self->_currentAlertViewController tag];
  if (v5 == a3)
  {
    [(CarChromeViewController *)self dismissInterruption];
  }

  return v5 == a3;
}

- (void)_carExternalDeviceStateUpdated:(id)a3
{
  v4 = sub_100006E1C();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "Notified car external accessory updated", v8, 2u);
  }

  v5 = +[MapsExternalDevice sharedInstance];
  v6 = [v5 hasLimitedUI] ^ 1;

  v7 = [(ChromeViewController *)self mapView];
  [v7 setVehicleState:v6];
}

- (id)chromeViewItemForContext:(id)a3 createIfNeeded:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  if (v6)
  {
    v7 = [(CarChromeViewController *)self chromeItemsByContext];
    v8 = [v7 objectForKey:v6];

    if (!v8 && v4)
    {
      v8 = [CarChromeViewItem itemWithContext:v6];
      v9 = [(CarChromeViewController *)self chromeItemsByContext];
      [v9 setObject:v8 forKey:v6];
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)contextStackDidUpdateFrom:(id)a3 to:(id)a4 withAnimation:(id)a5
{
  v8 = a3;
  v9 = a4;
  v27.receiver = self;
  v27.super_class = CarChromeViewController;
  v10 = a5;
  [(ChromeViewController *)&v27 contextStackDidUpdateFrom:v8 to:v9 withAnimation:v10];
  v11 = [v10 isAnimated];
  v12 = [v8 lastObject];
  v13 = [v9 lastObject];
  [(CarChromeViewController *)self _reloadMapControlsForContext:v13 withAnimation:v10];
  [(CarChromeViewController *)self _reloadAccessoriesForContext:v13 withAnimation:v10];
  [(CarChromeViewController *)self _reloadStatusBannerWithAnimation:v10];
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_10059A284;
  v20[3] = &unk_10163B9E0;
  v21 = v8;
  v22 = v9;
  v23 = self;
  v24 = v12;
  v25 = v13;
  v26 = v11;
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_10059A874;
  v18[3] = &unk_101661570;
  v18[4] = self;
  v19 = v25;
  v14 = v25;
  v15 = v12;
  v16 = v9;
  v17 = v8;
  [v10 addPreparation:v20 animations:&stru_101622548 completion:v18];
}

- (void)contextStackWillUpdateFrom:(id)a3 to:(id)a4 withAnimation:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v11 = [v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v19;
    do
    {
      for (i = 0; i != v12; i = i + 1)
      {
        if (*v19 != v13)
        {
          objc_enumerationMutation(v9);
        }

        v15 = *(*(&v18 + 1) + 8 * i);
        if ([v8 containsObject:v15] & 1) == 0 && (objc_opt_respondsToSelector())
        {
          [v15 setChromeViewController:self];
        }
      }

      v12 = [v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v12);
  }

  v17.receiver = self;
  v17.super_class = CarChromeViewController;
  [(ChromeViewController *)&v17 contextStackWillUpdateFrom:v8 to:v9 withAnimation:v10];
  v16 = [(ChromeViewController *)self mapView];
  [(CarChromeViewController *)self _resetMapViewDefaults:v16];
}

- (void)setNotificationLayoutGuide:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    goto LABEL_5;
  }

  v6 = [(ChromeViewController *)self mapInsetsLayoutGuide];
  if (!v6 || [(ChromeViewController *)self isSuppressed])
  {

LABEL_5:
    notificationLayoutGuide = self->_notificationLayoutGuide;
    self->_notificationLayoutGuide = 0;

    goto LABEL_6;
  }

  v8 = [(CarChromeViewController *)self isViewLoaded];

  if ((v8 & 1) == 0)
  {
    goto LABEL_5;
  }

  if (self->_notificationLayoutGuide != v5)
  {
    objc_storeStrong(&self->_notificationLayoutGuide, a3);
    v9 = [(UILayoutGuide *)self->_notificationLayoutGuide topAnchor];
    v10 = [(ChromeViewController *)self mapInsetsLayoutGuide];
    v11 = [v10 bottomAnchor];
    v12 = [v9 constraintGreaterThanOrEqualToAnchor:v11];
    v14 = v12;
    v13 = [NSArray arrayWithObjects:&v14 count:1];
    [NSLayoutConstraint activateConstraints:v13];
  }

  [(ChromeViewController *)self setNeedsUpdateMapInsets];
LABEL_6:
}

- (BOOL)_shouldMapControlsModifyMapInsetsForContext:(id)a3
{
  v3 = a3;
  if (objc_opt_respondsToSelector())
  {
    v4 = [v3 shouldMapControlsModifyMapInsets];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (BOOL)_shouldAccessoriesModifyMapInsetsForContext:(id)a3
{
  v3 = a3;
  if (GEOConfigGetBOOL() && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v4 = [v3 shouldAccessoriesModifyMapInsets];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)viewSafeAreaInsetsDidChange
{
  v3.receiver = self;
  v3.super_class = CarChromeViewController;
  [(CarChromeViewController *)&v3 viewSafeAreaInsetsDidChange];
  [(ChromeViewController *)self setNeedsUpdateMapInsets];
}

- (void)viewDidDisappear:(BOOL)a3
{
  v6.receiver = self;
  v6.super_class = CarChromeViewController;
  [(CarChromeViewController *)&v6 viewDidDisappear:a3];
  self->_isCurrentlyVisible = 0;
  v4 = [(ChromeViewController *)self acquireChromeDeactivationTokenForReason:@"view controller no longer in hierarchy"];
  visibilityDeactivationToken = self->_visibilityDeactivationToken;
  self->_visibilityDeactivationToken = v4;

  [(CarChromeViewController *)self _updateAutohideBehavior];
}

- (void)viewWillDisappear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = CarChromeViewController;
  [(CarChromeViewController *)&v4 viewWillDisappear:a3];
  [(CarChromeViewController *)self _updateAutohideBehavior];
}

- (void)viewDidAppear:(BOOL)a3
{
  v6.receiver = self;
  v6.super_class = CarChromeViewController;
  [(CarChromeViewController *)&v6 viewDidAppear:a3];
  v4 = +[GEOOfflineService shared];
  v5 = [(ChromeViewController *)self mapView];
  [v4 registerMapView:v5 withPriority:{-[CarChromeViewController sceneType](self, "sceneType")}];

  [(CarChromeViewController *)self _updateAutohideBehavior];
  [(CarChromeViewController *)self interruptAutohideForIncidentalInteraction];
}

- (void)viewWillAppear:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = CarChromeViewController;
  [(CarChromeViewController *)&v5 viewWillAppear:a3];
  self->_isCurrentlyVisible = 1;
  [(CarChromeViewController *)self _updateMapToCurrentUserInterfaceStyleAnimated:0];
  [(CarChromeViewController *)self _updateAutohideBehavior];
  visibilityDeactivationToken = self->_visibilityDeactivationToken;
  self->_visibilityDeactivationToken = 0;

  [(CarChromeViewController *)self interruptAutohideForIncidentalInteraction];
  [(CarChromeViewController *)self setNeedsFocusUpdate];
}

- (void)viewDidLoad
{
  v49.receiver = self;
  v49.super_class = CarChromeViewController;
  [(ChromeViewController *)&v49 viewDidLoad];
  v3 = [(CarChromeViewController *)self view];
  [v3 setTintAdjustmentMode:1];

  v4 = [(CarChromeViewController *)self backButtonRecognizer];

  if (!v4)
  {
    v5 = [[UITapGestureRecognizer alloc] initWithTarget:self action:"_handleBackButtonPressed:"];
    [(CarChromeViewController *)self setBackButtonRecognizer:v5];

    v6 = [(CarChromeViewController *)self backButtonRecognizer];
    [v6 setAllowedPressTypes:&off_1016EC728];

    v7 = [(CarChromeViewController *)self backButtonRecognizer];
    [v7 setDelegate:self];

    v8 = [(CarChromeViewController *)self backButtonRecognizer];
    [v8 setEnabled:0];
  }

  v9 = [(CarChromeViewController *)self view];
  v10 = [(CarChromeViewController *)self backButtonRecognizer];
  [v9 addGestureRecognizer:v10];

  v11 = objc_alloc_init(UILayoutGuide);
  cardsLayoutGuide = self->_cardsLayoutGuide;
  self->_cardsLayoutGuide = v11;

  v13 = objc_opt_class();
  v14 = NSStringFromClass(v13);
  v15 = [NSString stringWithFormat:@"%@.cardsLayoutGuide", v14];
  [(UILayoutGuide *)self->_cardsLayoutGuide setIdentifier:v15];

  v16 = [(CarChromeViewController *)self view];
  [v16 addLayoutGuide:self->_cardsLayoutGuide];

  v17 = objc_alloc_init(UILayoutGuide);
  statusBannerLayoutGuide = self->_statusBannerLayoutGuide;
  self->_statusBannerLayoutGuide = v17;

  v19 = objc_opt_class();
  v20 = NSStringFromClass(v19);
  v21 = [NSString stringWithFormat:@"%@.statusBannerLayoutGuide", v20];
  [(UILayoutGuide *)self->_statusBannerLayoutGuide setIdentifier:v21];

  v22 = [(CarChromeViewController *)self view];
  [v22 addLayoutGuide:self->_statusBannerLayoutGuide];

  v23 = objc_alloc_init(UILayoutGuide);
  accessoriesCompactLayoutGuide = self->_accessoriesCompactLayoutGuide;
  self->_accessoriesCompactLayoutGuide = v23;

  v25 = objc_opt_class();
  v26 = NSStringFromClass(v25);
  v27 = [NSString stringWithFormat:@"%@.accessoriesDashboardLayoutGuide", v26];
  [(UILayoutGuide *)self->_accessoriesCompactLayoutGuide setIdentifier:v27];

  v28 = [(CarChromeViewController *)self view];
  [v28 addLayoutGuide:self->_accessoriesCompactLayoutGuide];

  v29 = [[CarCardsOverlay alloc] initWithCarSceneType:[(CarChromeViewController *)self sceneType]];
  [(CarCardsOverlay *)v29 setCardDelegate:self];
  v30 = [(ChromeViewController *)self overlayController];
  [v30 addOverlay:v29 inLayoutGuide:self->_cardsLayoutGuide];

  [(CarChromeViewController *)self setCardsOverlay:v29];
  v31 = [[CarStatusBannerOverlay alloc] initWithChromeViewController:self];
  [(CarStatusBannerOverlay *)v31 setDelegate:self];
  v32 = [(ChromeViewController *)self overlayController];
  [v32 addOverlay:v31 inLayoutGuide:self->_statusBannerLayoutGuide];

  [(CarChromeViewController *)self setStatusBannerOverlay:v31];
  v33 = [[CarAccessoriesOverlay alloc] initWithCarSceneType:self->_sceneType];
  if ([(CarChromeViewController *)self sceneType]== 6 && GEOConfigGetBOOL())
  {
    [(CarAccessoriesOverlay *)v33 setIgnoresCollisionConstraints:1];
    v34 = [(ChromeViewController *)self overlayController];
    v35 = [(ChromeViewController *)self viewportLayoutGuide];
    [v34 addOverlay:v33 inLayoutGuide:v35];
  }

  else
  {
    v36 = [(CarChromeViewController *)self sceneType];
    if (v36 <= 6 && ((1 << v36) & 0x72) != 0 && [(CarChromeViewController *)self sceneType]< 4)
    {
      v34 = [(ChromeViewController *)self overlayController];
      [v34 addOverlay:v33];
    }

    else
    {
      v34 = [(ChromeViewController *)self overlayController];
      [v34 addOverlay:v33 inLayoutGuide:self->_accessoriesCompactLayoutGuide];
    }
  }

  [(CarChromeViewController *)self setAccessoriesOverlay:v33];
  if ([(CarChromeViewController *)self sceneType]<= 3)
  {
    v37 = objc_alloc_init(CarMapControlsOverlay);
    [(CarMapControlsOverlay *)v37 setDelegate:self];
    v38 = [(ChromeViewController *)self overlayController];
    [v38 addOverlay:v37];

    [(CarChromeViewController *)self setMapControlsOverlay:v37];
  }

  v39 = [(ChromeViewController *)self mapInsetsLayoutGuide];
  v40 = [v39 topAnchor];
  v41 = [(CarChromeViewController *)self view];
  v42 = [v41 topAnchor];
  v43 = [v40 constraintGreaterThanOrEqualToAnchor:v42 constant:0.0];
  headingUpMapInsetAdjustmentConstraint = self->_headingUpMapInsetAdjustmentConstraint;
  self->_headingUpMapInsetAdjustmentConstraint = v43;

  v45 = [CarFocusContainerGuideController alloc];
  v46 = [(CarChromeViewController *)self view];
  v47 = [(CarFocusContainerGuideController *)v45 initWithHostView:v46];
  focusContainerGuideController = self->_focusContainerGuideController;
  self->_focusContainerGuideController = v47;
}

- (void)loadView
{
  v3 = [[CarChromeContainingView alloc] initWithFrame:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
  [(CarChromeViewController *)self setView:v3];

  v5 = +[UIColor systemBackgroundColor];
  v4 = [(CarChromeViewController *)self view];
  [v4 setBackgroundColor:v5];
}

- (ChromeMapSettings)transientMapSettings
{
  v3 = [[ChromeMapSettings alloc] initWithType:0 userInterfaceIdiom:3];
  [(ChromeMapSettings *)v3 setDelegate:self];
  v4 = [(ChromeViewController *)self mapView];
  [(ChromeMapSettings *)v3 setMapView:v4];

  return v3;
}

- (ChromeMapSettings)defaultMapSettings
{
  defaultMapSettings = self->_defaultMapSettings;
  if (!defaultMapSettings)
  {
    v4 = [[ChromeMapSettings alloc] initWithType:1 userInterfaceIdiom:3];
    v5 = self->_defaultMapSettings;
    self->_defaultMapSettings = v4;

    [(ChromeMapSettings *)self->_defaultMapSettings setDelegate:self];
    v6 = [(ChromeViewController *)self mapView];
    [(ChromeMapSettings *)self->_defaultMapSettings setMapView:v6];

    defaultMapSettings = self->_defaultMapSettings;
  }

  return defaultMapSettings;
}

- (CarRouteGeniusAnnotationsManager)routeGeniusAnnotationsManager
{
  routeGeniusAnnotationsManager = self->_routeGeniusAnnotationsManager;
  if (!routeGeniusAnnotationsManager)
  {
    v4 = [[CarRouteGeniusAnnotationsManager alloc] initWithChromeViewController:self];
    v5 = self->_routeGeniusAnnotationsManager;
    self->_routeGeniusAnnotationsManager = v4;

    routeGeniusAnnotationsManager = self->_routeGeniusAnnotationsManager;
  }

  return routeGeniusAnnotationsManager;
}

- (id)createMapView
{
  v3 = [(CarChromeViewController *)self sceneType];
  if ((v3 - 1) > 5)
  {
    v4 = 0;
  }

  else
  {
    v4 = qword_101212EC8[v3 - 1];
  }

  v5 = [MKMapView alloc];
  v6 = [(CarChromeViewController *)self view];
  [v6 bounds];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  BOOL = GEOConfigGetBOOL();
  v16 = [v5 _initWithFrame:0 gestureRecognizerHostView:BOOL showsAttribution:GEOConfigGetBOOL() showsAppleLogo:1 allowsAntialiasing:v4 carDisplayType:{v8, v10, v12, v14}];

  return v16;
}

- (void)didBecomeInactive:(BOOL)a3
{
  v6.receiver = self;
  v6.super_class = CarChromeViewController;
  [(ChromeViewController *)&v6 didBecomeInactive:?];
  if (!a3)
  {
    v5 = sub_10004F508();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *buf = 134349056;
      v8 = self;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "[%{public}p] Force updating light level as the map view is no longer inactive", buf, 0xCu);
    }

    [(MapsLightLevelController *)self->_lightLevelController reloadForChangedLightLevelTrackers];
  }
}

- (void)didUnsuppress
{
  v15.receiver = self;
  v15.super_class = CarChromeViewController;
  [(ChromeViewController *)&v15 didUnsuppress];
  v3 = [(CarChromeViewController *)self topContext];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
  }

  else
  {
    v4 = [(CarChromeViewController *)self topContext];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if ((isKindOfClass & 1) == 0)
    {
      goto LABEL_7;
    }
  }

  v6 = sub_10008B0B8();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    *buf = 134349056;
    v17 = self;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "[%{public}p] is unsuppressing. Will try to activate RG for chrome.", buf, 0xCu);
  }

  v7 = +[CarDisplayController sharedInstance];
  v8 = [v7 routeGeniusManager];
  [v8 activateIfPossibleForChrome:self];

LABEL_7:
  [(ChromeViewController *)self setNeedsUpdateComponent:@"mapcontrols" animated:0];
  [(ChromeViewController *)self setNeedsUpdateComponent:@"accessories" animated:0];
  [(ChromeViewController *)self setNeedsUpdateComponent:@"statusBanner" animated:0];
  v9 = +[MKLocationManager sharedLocationManager];
  v10 = [v9 isLocationServicesAuthorizationNeeded];

  if (v10)
  {
    v11 = +[NSNotificationCenter defaultCenter];
    [v11 addObserver:self selector:"_locationAuthorizationDidChange:" name:MKLocationManagerApprovalDidChangeNotification object:0];
  }

  v12 = [(CarChromeViewController *)self topContext];
  [(CarChromeViewController *)self updateCardsForContext:v12 animated:0 completion:0];

  [(ChromeViewController *)self setNeedsUpdateComponent:@"navigationDisplay" animated:0];
  currentAlertViewController = self->_currentAlertViewController;
  if (currentAlertViewController)
  {
    v14 = [(CarAlertViewController *)currentAlertViewController presentingViewController];

    if (v14 != self)
    {
      [(CarChromeViewController *)self presentViewController:self->_currentAlertViewController animated:0 completion:0];
    }
  }

  [(CarChromeViewController *)self _updateNudgerizer];
  [(CarChromeViewController *)self _updateRouteSelectionController];
}

- (void)didSuppress
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self name:MKLocationManagerApprovalDidChangeNotification object:0];
  v4 = sub_10008B0B8();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *buf = 134349056;
    v15 = self;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "[%{public}p] is suppressing. Will deactivate RG for chrome.", buf, 0xCu);
  }

  v5 = +[CarDisplayController sharedInstance];
  v6 = [v5 routeGeniusManager];
  [v6 deactivateForChrome:self];

  v7 = [(ChromeViewController *)self navigationDisplay];
  [v7 setSuppressed:1];

  [(CarChromeViewController *)self disableDoubleTapRecognizer];
  v8 = [(CarChromeViewController *)self nudgerizer];
  [v8 setActive:0];

  v9 = [(CarChromeViewController *)self cardsOverlay];
  [v9 reset];

  notificationLayoutGuide = self->_notificationLayoutGuide;
  self->_notificationLayoutGuide = 0;

  currentAlertViewController = self->_currentAlertViewController;
  if (currentAlertViewController)
  {
    v12 = [(CarAlertViewController *)currentAlertViewController presentingViewController];

    if (v12 == self)
    {
      [(CarChromeViewController *)self dismissViewControllerAnimated:0 completion:0];
    }
  }

  v13.receiver = self;
  v13.super_class = CarChromeViewController;
  [(ChromeViewController *)&v13 didSuppress];
}

- (void)viewDidMoveToWindow:(id)a3 shouldAppearOrDisappear:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v11.receiver = self;
  v11.super_class = CarChromeViewController;
  [(CarChromeViewController *)&v11 viewDidMoveToWindow:v6 shouldAppearOrDisappear:v4];
  if (v6)
  {
    v7 = [MapsLightLevelController alloc];
    v8 = [v6 windowScene];
    v9 = [(MapsLightLevelController *)v7 initWithWindowScene:v8];
    lightLevelController = self->_lightLevelController;
    self->_lightLevelController = v9;

    [(MapsLightLevelController *)self->_lightLevelController addObserver:self];
    if ([(CarChromeViewController *)self sceneType]== 6)
    {
      [(ChromeViewController *)self setNeedsUpdateComponent:@"cards" animated:0];
      [(ChromeViewController *)self setNeedsUpdateComponent:@"accessories" animated:0];
      [(ChromeViewController *)self updateComponentsIfNeeded];
    }
  }
}

- (CarChromeViewController)initWithCarSceneType:(int64_t)a3
{
  label = dispatch_queue_get_label(&_dispatch_main_q);
  v6 = dispatch_queue_get_label(0);
  if (label != v6)
  {
    v7 = !label || v6 == 0;
    if (v7 || strcmp(label, v6))
    {
      v20 = sub_10006D178();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        *buf = 136316418;
        v25 = "[CarChromeViewController initWithCarSceneType:]";
        v26 = 2080;
        v27 = "CarChromeViewController.m";
        v28 = 1024;
        v29 = 301;
        v30 = 2080;
        v31 = "dispatch_get_main_queue()";
        v32 = 2080;
        v33 = dispatch_queue_get_label(&_dispatch_main_q);
        v34 = 2080;
        v35 = dispatch_queue_get_label(0);
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion on queue failed: %s/%s; actual queue: %s", buf, 0x3Au);
      }

      if (sub_100E03634())
      {
        v21 = sub_10006D178();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
        {
          v22 = +[NSThread callStackSymbols];
          *buf = 138412290;
          v25 = v22;
          _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
        }
      }
    }
  }

  v23.receiver = self;
  v23.super_class = CarChromeViewController;
  v8 = [(ChromeViewController *)&v23 init];
  if (v8)
  {
    v9 = sub_100006E1C();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      if (a3 > 6)
      {
        v10 = @".Unknown";
      }

      else
      {
        v10 = off_101622758[a3];
      }

      *buf = 134349314;
      v25 = v8;
      v26 = 2114;
      v27 = v10;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "[%{public}p] initialising with sceneType: %{public}@", buf, 0x16u);
    }

    v8->_sceneType = a3;
    v11 = [[MapsTokenStorage alloc] initWithDelegate:v8 tokenGroupName:@"CarForcedAutohideBehaviorTokenGroup" callbackQueue:&_dispatch_main_q];
    forcedAutohideTokens = v8->_forcedAutohideTokens;
    v8->_forcedAutohideTokens = v11;

    v13 = [[MapsTokenStorage alloc] initWithDelegate:v8 tokenGroupName:@"CarChromeModernMap" callbackQueue:&_dispatch_main_q];
    modernMapTokens = v8->_modernMapTokens;
    v8->_modernMapTokens = v13;

    v8->_mapViewRegionIsChanging = 0;
    v8->_ownsFocus = 1;
    v15 = +[NSNotificationCenter defaultCenter];
    [v15 addObserver:v8 selector:"_carExternalDeviceStateUpdated:" name:@"MapsExternalDeviceUpdated" object:0];

    v16 = +[NSNotificationCenter defaultCenter];
    [v16 addObserver:v8 selector:"_carOneHandedZoomSettingUpdated:" name:@"CarPlayOneHandedZoomingSettingDidChangeNotification" object:0];

    v17 = +[NSNotificationCenter defaultCenter];
    [v17 addObserver:v8 selector:"_carPlayWindowMapStyleDidChange:" name:CRSUIWindowMapStyleChangedNotification object:0];

    v18 = +[NSNotificationCenter defaultCenter];
    [v18 addObserver:v8 selector:"offlineStateChanged:" name:@"UsingOfflineMapsStateChangedNotification" object:0];
  }

  return v8;
}

- (void)dealloc
{
  v3 = sub_100006E1C();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *buf = 134349056;
    v16 = self;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "[%{public}p] Deallocating", buf, 0xCu);
  }

  label = dispatch_queue_get_label(&_dispatch_main_q);
  v5 = dispatch_queue_get_label(0);
  if (label != v5 && (!label || !v5 || strcmp(label, v5)))
  {
    v9 = sub_10006D178();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = dispatch_queue_get_label(&_dispatch_main_q);
      v11 = dispatch_queue_get_label(0);
      *buf = 136316418;
      v16 = "[CarChromeViewController dealloc]";
      v17 = 2080;
      v18 = "CarChromeViewController.m";
      v19 = 1024;
      v20 = 293;
      v21 = 2080;
      v22 = "dispatch_get_main_queue()";
      v23 = 2080;
      v24 = v10;
      v25 = 2080;
      v26 = v11;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion on queue failed: %s/%s; actual queue: %s", buf, 0x3Au);
    }

    if (sub_100E03634())
    {
      v12 = sub_10006D178();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        v13 = +[NSThread callStackSymbols];
        *buf = 138412290;
        v16 = v13;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
      }
    }
  }

  v6 = +[NSNotificationCenter defaultCenter];
  [v6 removeObserver:self];

  v7 = +[CarDisplayController sharedInstance];
  v8 = [v7 routeGeniusManager];
  [v8 deactivateForChrome:self];

  v14.receiver = self;
  v14.super_class = CarChromeViewController;
  [(ChromeViewController *)&v14 dealloc];
}

@end