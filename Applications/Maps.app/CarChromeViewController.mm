@interface CarChromeViewController
+ (id)localizedLocationAuthorizationMessage;
+ (id)localizedLocationAuthorizationTitle;
+ (void)_updateAllowOneHandedZooming;
+ (void)initialize;
- (BOOL)_areAccessoriesHiddenForContext:(id)context;
- (BOOL)_areAccessoriesHiddenForCurrentContext;
- (BOOL)_autohidingContentIsHiddenForContext:(id)context;
- (BOOL)_canSelectAlternateRoutes;
- (BOOL)_hideStatusBanner;
- (BOOL)_isFocusMovementValidInContext:(id)context;
- (BOOL)_shouldAccessoriesModifyMapInsetsForContext:(id)context;
- (BOOL)_shouldAllowKnobFocusMovement;
- (BOOL)_shouldMapControlsModifyMapInsetsForContext:(id)context;
- (BOOL)dismissCurrentInterruptionOfKind:(int64_t)kind;
- (BOOL)gestureRecognizer:(id)recognizer shouldReceiveTouch:(id)touch;
- (BOOL)gestureRecognizer:(id)recognizer shouldRequireFailureOfGestureRecognizer:(id)gestureRecognizer;
- (BOOL)isAutohidingContentHiddenForContext:(id)context;
- (BOOL)isAutohidingContentHiddenForCurrentContext;
- (BOOL)isDisplayingNavigation;
- (BOOL)mapSettings:(id)settings shouldApplyAnimated:(BOOL *)animated;
- (BOOL)mapView:(id)view shouldSelectLabelMarker:(id)marker;
- (BOOL)shouldAnimateMapTransition:(BOOL)transition;
- (BOOL)shouldRecenterAndZoom;
- (BOOL)shouldUpdateFocusInContext:(id)context;
- (BOOL)suppressIdleFocus;
- (BOOL)wantsNavigationDisplayByDefault;
- (CarChromeContext)topContext;
- (CarChromeViewController)initWithCarSceneType:(int64_t)type;
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
- (id)_presentSearchRefinementWithUserInfo:(id)info completionHandler:(id)handler;
- (id)_previousContext;
- (id)acquireForcedAutohideBehaviourTokenWithBehaviour:(int64_t)behaviour;
- (id)acquireModernMapTokenForReason:(unint64_t)reason;
- (id)allComponents;
- (id)chromeViewItemForContext:(id)context createIfNeeded:(BOOL)needed;
- (id)createMapReplacementView;
- (id)createMapView;
- (id)currentTraits;
- (id)mapView:(id)view viewForAnnotation:(id)annotation;
- (id)presentInterruptionOfKind:(int64_t)kind userInfo:(id)info completionHandler:(id)handler;
- (id)visuallySelectedItem;
- (int)_currentUsageTarget;
- (int64_t)_autohidingBehaviorForContext:(id)context;
- (int64_t)forcedAutohideBehavior;
- (int64_t)modernMapProjectionType;
- (int64_t)modernMapTerrainMode;
- (unint64_t)desiredRadarScreenshotTypes;
- (void)_addAutohideGestureRecognizer;
- (void)_audioControlPressed;
- (void)_autohideBecameIdle;
- (void)_autohideGestureRecognizerDetectedTap:(id)tap;
- (void)_captureUserActionBackToContext:(id)context;
- (void)_carExternalDeviceStateUpdated:(id)updated;
- (void)_carOneHandedZoomSettingUpdated:(id)updated;
- (void)_carPlayWindowMapStyleDidChange:(id)change;
- (void)_dismissAlertViewController:(id)controller animated:(BOOL)animated;
- (void)_enableZoomGesture:(BOOL)gesture;
- (void)_handleBackButton;
- (void)_handleDoubleTap:(id)tap;
- (void)_humanPresenceDidChange;
- (void)_locationAuthorizationDidChange:(id)change;
- (void)_navRecenterButtonPressed;
- (void)_navigationObscuredTimeoutFired:(id)fired;
- (void)_performMapUpdateToUserInterfaceStyle:(int64_t)style animation:(id)animation;
- (void)_presentAlertViewController:(id)controller animated:(BOOL)animated;
- (void)_presentAnyPendingAlert:(BOOL)alert;
- (void)_preserveFocusedItemFromContext:(id)context toContext:(id)toContext;
- (void)_recordAutohidingContentIsHidden:(BOOL)hidden forContext:(id)context;
- (void)_reloadAccessoriesForContext:(id)context withAnimation:(id)animation;
- (void)_reloadAccessoriesInsetsForContext:(id)context;
- (void)_reloadCardOverlayConstraintsIfNeeded;
- (void)_reloadCardsAnimated:(BOOL)animated;
- (void)_reloadFocusContainerGuidesForContext:(id)context;
- (void)_reloadMapControlsForContext:(id)context withAnimation:(id)animation;
- (void)_reloadMapControlsInsetsForContext:(id)context;
- (void)_reloadStatusBannerWithAnimation:(id)animation;
- (void)_removeAutohideGestureRecognizer;
- (void)_reportIncidentPressed;
- (void)_requestAutohideBehaviorForContext:(id)context;
- (void)_resetMapViewDefaults:(id)defaults;
- (void)_restartAutohideIdleTimer;
- (void)_restartNavigationObscuredTimeout;
- (void)_setAutohideBehavior:(int64_t)behavior forContext:(id)context;
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
- (void)_updateCardsForContext:(id)context withAnimation:(id)animation completion:(id)completion;
- (void)_updateMapToCurrentUserInterfaceStyleAnimated:(BOOL)animated;
- (void)_updateMapUserInterfaceStyle:(int64_t)style animated:(BOOL)animated;
- (void)_updateModernMapCartographicConfiguration;
- (void)_updateNudgerizer;
- (void)_updateOfflineModernMapToken;
- (void)_updateRouteSelectionController;
- (void)captureUserAction:(int)action eventValue:(id)value;
- (void)captureUserAction:(int)action mapItem:(id)item atResultIndex:(int)index;
- (void)captureUserAction:(int)action onTarget:(int)target eventValue:(id)value;
- (void)captureUserAction:(int)action selectedRouteIndex:(int)index;
- (void)captureUserActionChangedTrackingMode:(int64_t)mode;
- (void)captureUserActionPannedInDirection:(int64_t)direction;
- (void)captureUserActionSelectedSearchCategory:(id)category categoriesDisplayed:(id)displayed;
- (void)carCardView:(id)view chevronButtonSelected:(id)selected;
- (void)carCardView:(id)view didChangeFocus:(BOOL)focus;
- (void)carCardViewCloseButtonTapped:(id)tapped;
- (void)carMapControls:(id)controls didTriggerAction:(unint64_t)action;
- (void)carStatusBannerDidTapBanner;
- (void)chromeNavigationDisplay:(id)display configurationDidChange:(id)change;
- (void)chromeNavigationDisplay:(id)display didChangePanning:(BOOL)panning animated:(BOOL)animated;
- (void)chromeNavigationDisplayDidRenderRoute:(id)route;
- (void)clearMapGesturesAndAnimations;
- (void)configureAccessoriesOverlay:(id)overlay forContext:(id)context;
- (void)contextStackDidUpdateFrom:(id)from to:(id)to withAnimation:(id)animation;
- (void)contextStackWillUpdateFrom:(id)from to:(id)to withAnimation:(id)animation;
- (void)deactivationReasonsDidChange;
- (void)dealloc;
- (void)decrementForToken:(id)token;
- (void)didBecomeInactive:(BOOL)inactive;
- (void)didSuppress;
- (void)didUnsuppress;
- (void)disableDoubleTapRecognizer;
- (void)enableDoubleTapRecognizerWithBlock:(id)block;
- (void)incrementForToken:(id)token;
- (void)interruptAutohideForIncidentalInteraction;
- (void)loadView;
- (void)mapView:(id)view canEnter3DModeDidChange:(BOOL)change;
- (void)mapView:(id)view canZoomInDidChange:(BOOL)change;
- (void)mapView:(id)view canZoomOutDidChange:(BOOL)change;
- (void)mapView:(id)view didBecomePitched:(BOOL)pitched;
- (void)mapView:(id)view didDeselectLabelMarker:(id)marker;
- (void)mapView:(id)view didFailToLocateUserWithError:(id)error;
- (void)mapView:(id)view didSelectLabelMarker:(id)marker;
- (void)mapView:(id)view didStopRespondingToGesture:(int64_t)gesture zoomDirection:(int64_t)direction zoomGestureType:(int64_t)type didDecelerate:(BOOL)decelerate tiltDirection:(int64_t)tiltDirection;
- (void)mapView:(id)view didUpdateUserLocation:(id)location;
- (void)mapView:(id)view regionDidChangeAnimated:(BOOL)animated;
- (void)mapViewDidFinishRenderingMap:(id)map fullyRendered:(BOOL)rendered;
- (void)mapViewNavigationCameraHasStoppedPanning:(id)panning;
- (void)offlineStateChanged:(id)changed;
- (void)panButtonPressed;
- (void)prepareMapViewForFirstUse;
- (void)pressesBegan:(id)began withEvent:(id)event;
- (void)pressesCancelled:(id)cancelled withEvent:(id)event;
- (void)pressesChanged:(id)changed withEvent:(id)event;
- (void)pressesEnded:(id)ended withEvent:(id)event;
- (void)reloadAccessoriesForContext:(id)context animated:(BOOL)animated;
- (void)reloadStatusBannerAnimated:(BOOL)animated;
- (void)restartAutohideIdleTimerIfStarted;
- (void)setAutohidingContentHiddenForCurrentContext:(BOOL)context;
- (void)setHardwareBackButtonBehavior:(int64_t)behavior forContext:(id)context;
- (void)setNeedsAutohideBehaviorUpdateForContext:(id)context;
- (void)setNeedsFocusUpdateIfUnfocused;
- (void)setNotificationLayoutGuide:(id)guide;
- (void)setOwnsFocus:(BOOL)focus;
- (void)traitCollectionDidChange:(id)change;
- (void)updateComponent:(id)component forTiming:(unint64_t)timing withAnimation:(id)animation;
- (void)updateHardwareBackButtonBehavior;
- (void)updateZoomControls;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewDidMoveToWindow:(id)window shouldAppearOrDisappear:(BOOL)disappear;
- (void)viewSafeAreaInsetsDidChange;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
- (void)willUpdateComponents:(id)components withAnimation:(id)animation;
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
  topContext = [(ChromeViewController *)&v4 topContext];

  return topContext;
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
    view = [(CarChromeViewController *)self view];
    [view bounds];
    v5 = [(CarMapReplacementView *)v6 initWithFrame:?];

    [(CarMapReplacementView *)v5 setUserInteractionEnabled:0];
    deactivationReasons = [(ChromeViewController *)self deactivationReasons];
    [(CarMapReplacementView *)v5 setReasonStrings:deactivationReasons];

    if (+[CarDisplayController debugLaunchPerformance])
    {
      v9 = +[UIColor systemDarkBlueColor];
      [(CarMapReplacementView *)v5 setBackgroundColor:v9];

      +[UIColor systemCyanColor];
    }

    else
    {
      mapReplacementColor = [(CarChromeViewController *)self mapReplacementColor];
      [(CarMapReplacementView *)v5 setBackgroundColor:mapReplacementColor];

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
    preferredFocusEnvironments = [(CarChromeViewController *)&v32 preferredFocusEnvironments];
    goto LABEL_24;
  }

  topContext = [(CarChromeViewController *)self topContext];
  WeakRetained = objc_loadWeakRetained(&self->_restoreFocusForContext);

  if (topContext == WeakRetained)
  {
    lastFocusedItemsByContext = [(CarChromeViewController *)self lastFocusedItemsByContext];
    topContext2 = [(CarChromeViewController *)self topContext];
    v7 = [lastFocusedItemsByContext objectForKey:topContext2];

    if ([v7 canBecomeFocused])
    {
      superview = [v7 superview];

      if (superview)
      {
        objc_storeWeak(&self->_restoreFocusForContext, 0);
        v37 = v7;
        preferredFocusEnvironments = [NSArray arrayWithObjects:&v37 count:1];
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

        preferredFocusEnvironments = &__NSArray0__struct;
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
  topContext3 = [(CarChromeViewController *)self topContext];
  v11 = objc_opt_respondsToSelector();

  if (v11)
  {
    topContext4 = [(CarChromeViewController *)self topContext];
    preferredCarFocusEnvironments = [topContext4 preferredCarFocusEnvironments];

    if ([preferredCarFocusEnvironments count])
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
      v16 = preferredCarFocusEnvironments;
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
    preferredFocusEnvironments2 = [*(*&buf[8] + 40) copy];
  }

  else
  {
    v25.receiver = self;
    v25.super_class = CarChromeViewController;
    preferredFocusEnvironments2 = [(CarChromeViewController *)&v25 preferredFocusEnvironments];
  }

  preferredFocusEnvironments = preferredFocusEnvironments2;
  _Block_object_dispose(buf, 8);

LABEL_24:

  return preferredFocusEnvironments;
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
  topContext = [(CarChromeViewController *)self topContext];
  if (objc_opt_respondsToSelector())
  {
    topContext2 = [(CarChromeViewController *)self topContext];
    supportsAlternateRouteSelection = [topContext2 supportsAlternateRouteSelection];
  }

  else
  {
    supportsAlternateRouteSelection = 0;
  }

  return supportsAlternateRouteSelection;
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
    topContext = [(CarChromeViewController *)self topContext];
    if (objc_opt_respondsToSelector())
    {
      topContext2 = [(CarChromeViewController *)self topContext];
      desiredCards = [topContext2 desiredCards];
    }

    else
    {
      desiredCards = &__NSArray0__struct;
    }
  }

  else
  {
    desiredCards = &__NSArray0__struct;
  }

  return desiredCards;
}

- (void)deactivationReasonsDidChange
{
  v6.receiver = self;
  v6.super_class = CarChromeViewController;
  [(ChromeViewController *)&v6 deactivationReasonsDidChange];
  currentMapReplacementView = [(ChromeViewController *)self currentMapReplacementView];
  if (currentMapReplacementView)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v4 = currentMapReplacementView;
      deactivationReasons = [(ChromeViewController *)self deactivationReasons];
      [v4 setReasonStrings:deactivationReasons];
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
  topContext = [(CarChromeViewController *)self topContext];
  v4 = objc_opt_respondsToSelector();

  if ((v4 & 1) == 0)
  {
    return 0;
  }

  topContext2 = [(CarChromeViewController *)self topContext];
  currentUsageTarget = [topContext2 currentUsageTarget];

  return currentUsageTarget;
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
  overlayController = [(ChromeViewController *)self overlayController];
  contentLayoutGuide = [overlayController contentLayoutGuide];
  if (contentLayoutGuide)
  {
    didSetupOverlayConstraints = self->_didSetupOverlayConstraints;

    if (!didSetupOverlayConstraints)
    {
      self->_didSetupOverlayConstraints = 1;
      overlayController2 = [(ChromeViewController *)self overlayController];
      contentLayoutGuide2 = [overlayController2 contentLayoutGuide];

      topAnchor = [(UILayoutGuide *)self->_statusBannerLayoutGuide topAnchor];
      topAnchor2 = [contentLayoutGuide2 topAnchor];
      v46 = [topAnchor constraintEqualToAnchor:topAnchor2];
      v50[0] = v46;
      leadingAnchor = [(UILayoutGuide *)self->_statusBannerLayoutGuide leadingAnchor];
      leadingAnchor2 = [contentLayoutGuide2 leadingAnchor];
      v43 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
      v50[1] = v43;
      trailingAnchor = [(UILayoutGuide *)self->_statusBannerLayoutGuide trailingAnchor];
      trailingAnchor2 = [contentLayoutGuide2 trailingAnchor];
      v40 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
      v50[2] = v40;
      leadingAnchor3 = [(UILayoutGuide *)self->_accessoriesCompactLayoutGuide leadingAnchor];
      leadingAnchor4 = [contentLayoutGuide2 leadingAnchor];
      v37 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4];
      v50[3] = v37;
      trailingAnchor3 = [(UILayoutGuide *)self->_accessoriesCompactLayoutGuide trailingAnchor];
      trailingAnchor4 = [contentLayoutGuide2 trailingAnchor];
      v34 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4];
      v50[4] = v34;
      topAnchor3 = [(UILayoutGuide *)self->_accessoriesCompactLayoutGuide topAnchor];
      topAnchor4 = [contentLayoutGuide2 topAnchor];
      LODWORD(v7) = 1148846080;
      v31 = [topAnchor3 constraintGreaterThanOrEqualToAnchor:topAnchor4 constant:0.0 priority:v7];
      v50[5] = v31;
      bottomAnchor = [(UILayoutGuide *)self->_accessoriesCompactLayoutGuide bottomAnchor];
      bottomAnchor2 = [contentLayoutGuide2 bottomAnchor];
      v28 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
      v50[6] = v28;
      bottomAnchor3 = [(UILayoutGuide *)self->_statusBannerLayoutGuide bottomAnchor];
      topAnchor5 = [(UILayoutGuide *)self->_accessoriesCompactLayoutGuide topAnchor];
      v25 = [bottomAnchor3 constraintEqualToAnchor:topAnchor5 constant:8.0];
      v50[7] = v25;
      leadingAnchor5 = [(UILayoutGuide *)self->_cardsLayoutGuide leadingAnchor];
      leadingAnchor6 = [contentLayoutGuide2 leadingAnchor];
      v22 = [leadingAnchor5 constraintEqualToAnchor:leadingAnchor6];
      v50[8] = v22;
      trailingAnchor5 = [(UILayoutGuide *)self->_cardsLayoutGuide trailingAnchor];
      trailingAnchor6 = [contentLayoutGuide2 trailingAnchor];
      v19 = [trailingAnchor5 constraintEqualToAnchor:trailingAnchor6];
      v50[9] = v19;
      topAnchor6 = [(UILayoutGuide *)self->_cardsLayoutGuide topAnchor];
      topAnchor7 = [contentLayoutGuide2 topAnchor];
      LODWORD(v9) = 1148846080;
      v10 = [topAnchor6 constraintGreaterThanOrEqualToAnchor:topAnchor7 constant:0.0 priority:v9];
      v50[10] = v10;
      bottomAnchor4 = [(UILayoutGuide *)self->_cardsLayoutGuide bottomAnchor];
      bottomAnchor5 = [contentLayoutGuide2 bottomAnchor];
      v13 = [bottomAnchor4 constraintEqualToAnchor:bottomAnchor5];
      v50[11] = v13;
      bottomAnchor6 = [(UILayoutGuide *)self->_statusBannerLayoutGuide bottomAnchor];
      topAnchor8 = [(UILayoutGuide *)self->_cardsLayoutGuide topAnchor];
      v16 = [bottomAnchor6 constraintEqualToAnchor:topAnchor8 constant:8.0];
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

  topContext = [(CarChromeViewController *)self topContext];
  LOBYTE(v7) = objc_opt_respondsToSelector();

  if (v7)
  {
    topContext2 = [(CarChromeViewController *)self topContext];
    [topContext2 autohideIdlenessInterval];
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
  allComponents = [(ChromeViewController *)&v6 allComponents];
  v3 = [allComponents mutableCopy];

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
  isDisplayingNavigation = [(CarChromeViewController *)self isDisplayingNavigation];
  if (sub_10008B2E8())
  {
    defaultMapSettings = [(CarChromeViewController *)self defaultMapSettings];
    pitched = [defaultMapSettings pitched];
  }

  else
  {
    pitched = 0;
  }

  return (isDisplayingNavigation | pitched) & 1;
}

- (BOOL)isDisplayingNavigation
{
  pendingContexts = [(ChromeViewController *)self pendingContexts];
  contexts = pendingContexts;
  if (!pendingContexts)
  {
    contexts = [(ChromeViewController *)self contexts];
  }

  v5 = [contexts _maps_firstContextOfClass:objc_opt_class()];

  if (!pendingContexts)
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

  topContext = [(CarChromeViewController *)self topContext];
  if (objc_opt_respondsToSelector())
  {
    topContext2 = [(CarChromeViewController *)self topContext];
    hidesStatusBanner = [topContext2 hidesStatusBanner];

    return (hidesStatusBanner & 1) != 0;
  }

  return 0;
}

- (id)currentTraits
{
  mapView = [(ChromeViewController *)self mapView];

  if (mapView)
  {
    v4 = +[MKMapService sharedService];
    mapView2 = [(ChromeViewController *)self mapView];
    mapViewEnteredForegroundDate = [(ChromeViewController *)self mapViewEnteredForegroundDate];
    lastMapViewportChangedDate = [(ChromeViewController *)self lastMapViewportChangedDate];
    v8 = [v4 mapsDefaultTraitsForMapView:mapView2 mapViewEnteredForegroundDate:mapViewEnteredForegroundDate mapViewportChangedDate:lastMapViewportChangedDate directionsType:1 includeCarPlayInfo:1];

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
  selfCopy = self;
  topContext = [(CarChromeViewController *)self topContext];
  LOBYTE(selfCopy) = [(CarChromeViewController *)selfCopy _autohidingContentIsHiddenForContext:topContext];

  return selfCopy;
}

- (void)_update3DButton
{
  if (sub_10008B2E8())
  {
    isRunningNavigationDisplay = [(ChromeViewController *)self isRunningNavigationDisplay];
    mapControlsOverlay = [(CarChromeViewController *)self mapControlsOverlay];
    v5 = mapControlsOverlay;
    if (isRunningNavigationDisplay)
    {
      v6 = 1;
    }

    else
    {
      v6 = 2;
    }

    [mapControlsOverlay setMode3DState:v6];

    mapControlsOverlay2 = [(CarChromeViewController *)self mapControlsOverlay];
    [mapControlsOverlay2 setMode3DEnabled:1];
  }

  else
  {
    mapView = [(ChromeViewController *)self mapView];
    _isPitched = [mapView _isPitched];

    mapControlsOverlay3 = [(CarChromeViewController *)self mapControlsOverlay];
    v10 = mapControlsOverlay3;
    if (_isPitched)
    {
      v11 = 1;
    }

    else
    {
      v11 = 2;
    }

    [mapControlsOverlay3 setMode3DState:v11];

    mapControlsOverlay2 = [(ChromeViewController *)self mapView];
    _canEnter3DMode = [mapControlsOverlay2 _canEnter3DMode];
    mapControlsOverlay4 = [(CarChromeViewController *)self mapControlsOverlay];
    [mapControlsOverlay4 setMode3DEnabled:_canEnter3DMode];
  }
}

- (void)_updateAudioControls
{
  if (![(ChromeViewController *)self isSuppressed])
  {
    topContext = [(CarChromeViewController *)self topContext];
    if (objc_opt_respondsToSelector())
    {
      mapControlsOverlay = [(CarChromeViewController *)self mapControlsOverlay];
      if (mapControlsOverlay)
      {
        v5 = mapControlsOverlay;
        [mapControlsOverlay configuration];
        if (*buf == 2 || *&buf[8] == 2)
        {

          goto LABEL_27;
        }

        if (*&buf[16] == 2)
        {
LABEL_27:
          audioSettingsCurrentState = [topContext audioSettingsCurrentState];
          v19 = sub_100006E1C();
          if (!os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
          {
LABEL_42:

            mapControlsOverlay2 = [(CarChromeViewController *)self mapControlsOverlay];
            [mapControlsOverlay2 setAudioSettings:audioSettingsCurrentState];
            goto LABEL_43;
          }

          v20 = topContext;
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
          *&buf[14] = audioSettingsCurrentState;
          *&buf[22] = 2114;
          v28 = v25;
          _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "[%{public}p] Updating mapControls.audioControls with audioSettings: %ld per request from context: %{public}@.", buf, 0x20u);

          goto LABEL_42;
        }
      }

      mapControlsOverlay2 = sub_100006E1C();
      if (os_log_type_enabled(mapControlsOverlay2, OS_LOG_TYPE_DEFAULT))
      {
        v13 = topContext;
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

    mapControlsOverlay2 = sub_100006E1C();
    if (!os_log_type_enabled(mapControlsOverlay2, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_43;
    }

    v7 = topContext;
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
    _os_log_impl(&_mh_execute_header, mapControlsOverlay2, OS_LOG_TYPE_DEFAULT, v26, buf, 0x16u);

    goto LABEL_43;
  }

  topContext = sub_100006E1C();
  if (os_log_type_enabled(topContext, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134349056;
    *&buf[4] = self;
    _os_log_impl(&_mh_execute_header, topContext, OS_LOG_TYPE_DEFAULT, "[%{public}p] Chrome is suppressed, ignoring call to update audio controls.", buf, 0xCu);
  }

LABEL_44:
}

- (void)_updateAudioControlButton
{
  if (![(ChromeViewController *)self isSuppressed])
  {
    topContext = [(CarChromeViewController *)self topContext];
    mapControlsOverlay = [(CarChromeViewController *)self mapControlsOverlay];
    if (!mapControlsOverlay)
    {
      goto LABEL_8;
    }

    v5 = mapControlsOverlay;
    [mapControlsOverlay configuration];
    if (*buf == 2 || *&buf[8] == 2)
    {
    }

    else
    {

      if (*&buf[16] != 2)
      {
LABEL_8:
        mapControlsOverlay2 = sub_100006E1C();
        if (os_log_type_enabled(mapControlsOverlay2, OS_LOG_TYPE_DEFAULT))
        {
          v7 = topContext;
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
          _os_log_impl(&_mh_execute_header, mapControlsOverlay2, OS_LOG_TYPE_DEFAULT, v26, buf, 0x16u);
        }

LABEL_42:

        goto LABEL_43;
      }
    }

    if (objc_opt_respondsToSelector())
    {
      audioSettingsCurrentState = [topContext audioSettingsCurrentState];
      v14 = sub_100006E1C();
      if (!os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
LABEL_38:

        mapControlsOverlay2 = [(CarChromeViewController *)self mapControlsOverlay];
        [mapControlsOverlay2 setAudioControlButtonType:audioSettingsCurrentState];
        goto LABEL_42;
      }

      v15 = topContext;
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
      *&buf[14] = audioSettingsCurrentState;
      *&buf[22] = 2114;
      v28 = v20;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "[%{public}p] Updating mapControls.audioControls with audioSettings: %ld per request from context: %{public}@.", buf, 0x20u);

      goto LABEL_38;
    }

    mapControlsOverlay2 = sub_100006E1C();
    if (!os_log_type_enabled(mapControlsOverlay2, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_42;
    }

    v21 = topContext;
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

  topContext = sub_100006E1C();
  if (os_log_type_enabled(topContext, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134349056;
    *&buf[4] = self;
    _os_log_impl(&_mh_execute_header, topContext, OS_LOG_TYPE_DEFAULT, "[%{public}p] Chrome is suppressed, ignoring call to update audio controls.", buf, 0xCu);
  }

LABEL_43:
}

- (BOOL)_areAccessoriesHiddenForCurrentContext
{
  selfCopy = self;
  topContext = [(CarChromeViewController *)self topContext];
  LOBYTE(selfCopy) = [(CarChromeViewController *)selfCopy _areAccessoriesHiddenForContext:topContext];

  return selfCopy;
}

- (void)_updateCameraToggleButton
{
  mapControlsOverlay = [(CarChromeViewController *)self mapControlsOverlay];
  if (!mapControlsOverlay)
  {
    v6 = 0;
LABEL_39:

    return;
  }

  v4 = mapControlsOverlay;
  [mapControlsOverlay configuration];
  if (*v24 == 2 || *&v24[8] == 2)
  {

    goto LABEL_10;
  }

  if (*&v24[16] == 2)
  {
LABEL_10:
    if ([(ChromeViewController *)self isRunningNavigationDisplay])
    {
      navigationDisplay = [(ChromeViewController *)self navigationDisplay];
      currentCameraMode = [navigationDisplay currentCameraMode];

      mapControlsOverlay2 = [(CarChromeViewController *)self mapControlsOverlay];
      cameraToggleButtonState = [mapControlsOverlay2 cameraToggleButtonState];

      if ((currentCameraMode - 2) < 2)
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
        if (currentCameraMode != 1)
        {
          v11 = 0;
        }

        if (currentCameraMode)
        {
          v12 = v11;
        }

        else
        {
          v12 = 1;
        }
      }

      mapControlsOverlay3 = [(CarChromeViewController *)self mapControlsOverlay];
      [mapControlsOverlay3 setCameraToggleButtonState:v12];

      v6 = sub_100006E1C();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
      {
        if (cameraToggleButtonState > 2)
        {
          v21 = @".Unknown";
        }

        else
        {
          v21 = *(&off_1016373E0 + cameraToggleButtonState);
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
  overlayController = [(ChromeViewController *)self overlayController];

  if (overlayController)
  {
    view = [(CarChromeViewController *)self view];
    overlayController2 = [(ChromeViewController *)self overlayController];
    overlayContentView = [overlayController2 overlayContentView];
    [view bringSubviewToFront:overlayContentView];
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
      selfCopy5 = self;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "[%{public}p] Will set autohide to never", &v15, 0xCu);
    }

    topContext = [(CarChromeViewController *)self topContext];
    v7 = [(CarChromeViewController *)self _autohidingContentIsHiddenForContext:topContext];

    if (!v7)
    {
      goto LABEL_9;
    }

    selfCopy6 = self;
    v9 = 0;
LABEL_8:
    [(CarChromeViewController *)selfCopy6 setAutohidingContentHiddenForCurrentContext:v9];
LABEL_9:
    [(CarChromeViewController *)self _stopAutohideIdleTimer];
    [(CarChromeViewController *)self _removeAutohideGestureRecognizer];
    return;
  }

  topContext2 = [(CarChromeViewController *)self topContext];
  v4 = [(CarChromeViewController *)self _autohidingBehaviorForContext:topContext2];

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
          selfCopy5 = self;
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
        selfCopy5 = self;
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
        selfCopy5 = self;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEBUG, "[%{public}p] Will set autohide to always", &v15, 0xCu);
      }

      topContext3 = [(CarChromeViewController *)self topContext];
      v13 = [(CarChromeViewController *)self _autohidingContentIsHiddenForContext:topContext3];

      if (v13)
      {
        goto LABEL_9;
      }

      selfCopy6 = self;
      v9 = 1;
      goto LABEL_8;
    }
  }
}

- (void)_updateNudgerizer
{
  topContext = [(CarChromeViewController *)self topContext];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    topContext2 = [(CarChromeViewController *)self topContext];
    allowKnobNudgeMapPanning = [topContext2 allowKnobNudgeMapPanning];
  }

  else
  {
    allowKnobNudgeMapPanning = 0;
  }

  nudgerizer = [(CarChromeViewController *)self nudgerizer];
  [nudgerizer setActive:allowKnobNudgeMapPanning];
}

- (CarMapNudgerizer)nudgerizer
{
  nudgerizer = self->_nudgerizer;
  if (!nudgerizer)
  {
    v4 = objc_alloc_init(CarMapNudgerizer);
    v5 = self->_nudgerizer;
    self->_nudgerizer = v4;

    mapView = [(ChromeViewController *)self mapView];
    [(CarMapNudgerizer *)self->_nudgerizer setMapView:mapView];

    nudgerizer = self->_nudgerizer;
  }

  return nudgerizer;
}

- (void)_updateRouteSelectionController
{
  _canSelectAlternateRoutes = [(CarChromeViewController *)self _canSelectAlternateRoutes];
  mapView = [(ChromeViewController *)self mapView];
  [mapView _setCanSelectPOIs:_canSelectAlternateRoutes];

  if (_canSelectAlternateRoutes)
  {
    routeSelectionController = [(CarChromeViewController *)self routeSelectionController];
  }

  else
  {
    routeSelectionController = 0;
  }

  mapViewResponder = [(CarChromeViewController *)self mapViewResponder];
  [mapViewResponder setTarget:routeSelectionController];

  if (_canSelectAlternateRoutes)
  {
  }

  routeSelectionController2 = [(CarChromeViewController *)self routeSelectionController];
  [routeSelectionController2 setActive:_canSelectAlternateRoutes];
}

- (void)_stopNavigationObscuredTimeout
{
  if (self->_navigationObscuredTimeout)
  {
    v3 = sub_100006E1C();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      v6 = 134349056;
      selfCopy = self;
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
    mapView = [(ChromeViewController *)self mapView];
    v6 = [(MapViewResponder *)v4 initWithMapView:mapView];
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
    platformController = [v4 platformController];

    v6 = [[CarRouteSelectionController alloc] initWithPlatformController:platformController chromeViewController:self];
    v7 = self->_routeSelectionController;
    self->_routeSelectionController = v6;

    mapView = [(ChromeViewController *)self mapView];
    [(CarRouteSelectionController *)self->_routeSelectionController setMapView:mapView];

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
  topContext = [(CarChromeViewController *)self topContext];
  v4 = [(CarChromeViewController *)self chromeViewItemForContext:topContext createIfNeeded:0];
  hardwareBackButtonBehavior = [v4 hardwareBackButtonBehavior];

  if (hardwareBackButtonBehavior > 1)
  {
    if (hardwareBackButtonBehavior == 2)
    {
      backButtonRecognizer = [(CarChromeViewController *)self backButtonRecognizer];
      contexts = backButtonRecognizer;
      v7 = 0;
      goto LABEL_10;
    }

    if (hardwareBackButtonBehavior != 3)
    {
      return;
    }

LABEL_7:
    backButtonRecognizer = [(CarChromeViewController *)self backButtonRecognizer];
    contexts = backButtonRecognizer;
    v7 = 1;
LABEL_10:
    [backButtonRecognizer setEnabled:v7];
    goto LABEL_11;
  }

  if (hardwareBackButtonBehavior)
  {
    if (hardwareBackButtonBehavior != 1)
    {
      return;
    }

    goto LABEL_7;
  }

  contexts = [(ChromeViewController *)self contexts];
  v8 = [contexts count] > 1;
  backButtonRecognizer2 = [(CarChromeViewController *)self backButtonRecognizer];
  [backButtonRecognizer2 setEnabled:v8];

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
        selfCopy = self;
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
    topContext = [(CarChromeViewController *)self topContext];
    v4 = [(CarChromeViewController *)self _autohidingBehaviorForContext:topContext];

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
      selfCopy = self;
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
  v4.receiver = self;
  v4.super_class = &OBJC_METACLASS___CarChromeViewController;
  objc_msgSendSuper2(&v4, "initialize");
  if (objc_opt_class() == self)
  {
    v3 = +[NSUserDefaults standardUserDefaults];
    [v3 registerDefaults:&off_1016EE268];
  }
}

- (void)_handleBackButton
{
  topContext = [(CarChromeViewController *)self topContext];
  v4 = [(CarChromeViewController *)self chromeViewItemForContext:topContext createIfNeeded:0];

  hardwareBackButtonBehavior = [v4 hardwareBackButtonBehavior];
  if (!hardwareBackButtonBehavior)
  {
    _previousContext = [(CarChromeViewController *)self _previousContext];
    [(CarChromeViewController *)self _captureUserActionBackToContext:_previousContext];

    v14 = +[CarChromeModeCoordinator sharedInstance];
    topContext2 = [(CarChromeViewController *)self topContext];
    [v14 popFromContext:topContext2];

    goto LABEL_16;
  }

  if (hardwareBackButtonBehavior == 1)
  {
    v6 = sub_100006E1C();
    if (!os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_14;
    }

    topContext3 = [(CarChromeViewController *)self topContext];
    if (!topContext3)
    {
      v12 = @"<nil>";
      goto LABEL_13;
    }

    v8 = objc_opt_class();
    v9 = NSStringFromClass(v8);
    if (objc_opt_respondsToSelector())
    {
      v10 = [topContext3 performSelector:"accessibilityIdentifier"];
      v11 = v10;
      if (v10 && ![v10 isEqualToString:v9])
      {
        v12 = [NSString stringWithFormat:@"%@<%p, %@>", v9, topContext3, v11];

        goto LABEL_10;
      }
    }

    v12 = [NSString stringWithFormat:@"%@<%p>", v9, topContext3];
LABEL_10:

LABEL_13:
    *buf = 134349314;
    selfCopy = self;
    v21 = 2112;
    v22 = v12;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEBUG, "[%{public}p] %@ will handle hardware back button", buf, 0x16u);

LABEL_14:
    topContext4 = [(CarChromeViewController *)self topContext];
    v17 = objc_opt_respondsToSelector();

    if (v17)
    {
      topContext5 = [(CarChromeViewController *)self topContext];
      [topContext5 handleHardwareBackButtonPressed];
    }
  }

LABEL_16:
}

- (id)_previousContext
{
  contexts = [(ChromeViewController *)self contexts];
  v4 = [contexts count];

  contexts2 = [(ChromeViewController *)self contexts];
  v6 = [contexts2 count];

  if (v6 >= 2)
  {
    contexts3 = [(ChromeViewController *)self contexts];
    v7 = [contexts3 objectAtIndexedSubscript:v4 - 2];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)setHardwareBackButtonBehavior:(int64_t)behavior forContext:(id)context
{
  contextCopy = context;
  v7 = [(CarChromeViewController *)self chromeViewItemForContext:contextCopy createIfNeeded:1];
  if (behavior != 1)
  {
    goto LABEL_19;
  }

  if (objc_opt_respondsToSelector())
  {
    behavior = 1;
    goto LABEL_19;
  }

  v8 = sub_10006D178();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    v9 = contextCopy;
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
    selfCopy = "[CarChromeViewController setHardwareBackButtonBehavior:forContext:]";
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
      selfCopy = v17;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
    }
  }

  behavior = 0;
LABEL_19:
  v18 = sub_100006E1C();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
  {
    hardwareBackButtonBehavior = [v7 hardwareBackButtonBehavior];
    if (hardwareBackButtonBehavior >= 4)
    {
      v21 = sub_10006D178();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315650;
        selfCopy = "NSString *NSStringFromCarChromeHardwareBackButtonBehavior(CarChromeHardwareBackButtonBehavior)";
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
          selfCopy = v23;
          _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
        }
      }

      v20 = 0;
    }

    else
    {
      v20 = off_1016227A8[hardwareBackButtonBehavior];
    }

    if (behavior >= 4)
    {
      v25 = sub_10006D178();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315650;
        selfCopy = "NSString *NSStringFromCarChromeHardwareBackButtonBehavior(CarChromeHardwareBackButtonBehavior)";
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
          selfCopy = v27;
          _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
        }
      }

      v24 = 0;
    }

    else
    {
      v24 = off_1016227A8[behavior];
    }

    v28 = objc_opt_class();
    v29 = NSStringFromClass(v28);
    *buf = 134349826;
    selfCopy = self;
    v32 = 2112;
    v33 = v20;
    v34 = 2112;
    *v35 = v24;
    *&v35[8] = 2112;
    *&v35[10] = v29;
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEBUG, "[%{public}p] Updating HW back button behavior from: %@ to : %@. For context: %@", buf, 0x2Au);
  }

  [v7 setHardwareBackButtonBehavior:behavior];
  [(CarChromeViewController *)self updateHardwareBackButtonBehavior];
}

- (void)decrementForToken:(id)token
{
  tokenCopy = token;
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
        selfCopy2 = "[CarChromeViewController decrementForToken:]";
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
          selfCopy2 = v24;
          _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
        }
      }
    }
  }

  tokenGroupName = [tokenCopy tokenGroupName];
  v9 = [tokenGroupName isEqualToString:@"CarForcedAutohideBehaviorTokenGroup"];

  if (v9)
  {
    v10 = sub_100006E1C();
    if (!os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
LABEL_24:

      [(CarChromeViewController *)self _updateAutohideBehavior];
      goto LABEL_25;
    }

    v11 = tokenCopy;
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
    selfCopy2 = self;
    v28 = 2112;
    v29 = v16;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "[%{public}p] _endForcingAutohideBehaviorWithToken (token: %@)", buf, 0x16u);

    goto LABEL_24;
  }

  tokenGroupName2 = [tokenCopy tokenGroupName];
  v18 = [tokenGroupName2 isEqualToString:@"CarChromeModernMap"];

  if (v18)
  {
    v19 = sub_10000B11C();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      *buf = 134349314;
      selfCopy2 = self;
      v28 = 2112;
      v29 = tokenCopy;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_INFO, "[%{public}p] Releasing modern map token: %@", buf, 0x16u);
    }

    v20 = +[NSNotificationCenter defaultCenter];
    [v20 postNotificationName:@"ChromeViewControllerDidUpdateShouldUseModernMap" object:self];

    mapView = [(ChromeViewController *)self mapView];

    if (mapView)
    {
      [(CarChromeViewController *)self _updateModernMapCartographicConfiguration];
    }
  }

  else
  {
    v25.receiver = self;
    v25.super_class = CarChromeViewController;
    [(ChromeViewController *)&v25 decrementForToken:tokenCopy];
  }

LABEL_25:
}

- (void)incrementForToken:(id)token
{
  tokenCopy = token;
  v27.receiver = self;
  v27.super_class = CarChromeViewController;
  [(ChromeViewController *)&v27 incrementForToken:tokenCopy];
  tokenGroupName = [tokenCopy tokenGroupName];
  v6 = [tokenGroupName isEqualToString:@"CarForcedAutohideBehaviorTokenGroup"];

  if (v6)
  {
    userInfo = [tokenCopy userInfo];
    v8 = [userInfo objectForKeyedSubscript:@"CarForcedAutohideBehaviorKey"];
    integerValue = [v8 integerValue];

    v10 = sub_100006E1C();
    if (!os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
LABEL_26:

      [(CarChromeViewController *)self _updateAutohideBehavior];
      goto LABEL_27;
    }

    v11 = tokenCopy;
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
    selfCopy2 = self;
    v30 = 2048;
    v31 = integerValue;
    v32 = 2112;
    v33 = v16;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "[%{public}p] _beginForcingAutohideBehavior (behavior: %ld, token: %@)", buf, 0x20u);

    goto LABEL_26;
  }

  tokenGroupName2 = [tokenCopy tokenGroupName];
  v18 = [tokenGroupName2 isEqualToString:@"CarChromeModernMap"];

  if (v18)
  {
    userInfo2 = [tokenCopy userInfo];
    v20 = [userInfo2 objectForKeyedSubscript:@"reason"];

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v21 = sub_10006D178();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315650;
        selfCopy2 = "[CarChromeViewController incrementForToken:]";
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
          selfCopy2 = v23;
          _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
        }
      }

      v24 = sub_10000B11C();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        *buf = 134349314;
        selfCopy2 = self;
        v30 = 2112;
        v31 = tokenCopy;
        _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, "[%{public}p] Invalid modern map token: %@", buf, 0x16u);
      }
    }

    v25 = +[NSNotificationCenter defaultCenter];
    [v25 postNotificationName:@"ChromeViewControllerDidUpdateShouldUseModernMap" object:self];

    mapView = [(ChromeViewController *)self mapView];

    if (mapView)
    {
      [(CarChromeViewController *)self _updateModernMapCartographicConfiguration];
    }
  }

LABEL_27:
}

- (id)acquireForcedAutohideBehaviourTokenWithBehaviour:(int64_t)behaviour
{
  forcedAutohideTokens = self->_forcedAutohideTokens;
  v8 = @"CarForcedAutohideBehaviorKey";
  v4 = [NSNumber numberWithInteger:behaviour];
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

  tokens = [(MapsTokenStorage *)self->_forcedAutohideTokens tokens];
  lastObject = [tokens lastObject];

  userInfo = [lastObject userInfo];
  v6 = [userInfo objectForKeyedSubscript:@"CarForcedAutohideBehaviorKey"];
  integerValue = [v6 integerValue];

  v8 = sub_100006E1C();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v10 = 134349312;
    selfCopy = self;
    v12 = 2048;
    v13 = integerValue;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "[%{public}p] forcedAutohideBehavior: %ld", &v10, 0x16u);
  }

  return integerValue;
}

- (BOOL)gestureRecognizer:(id)recognizer shouldRequireFailureOfGestureRecognizer:(id)gestureRecognizer
{
  if (self->_autohideTapRecognizer != recognizer)
  {
    return 0;
  }

  gestureRecognizerCopy = gestureRecognizer;
  mapView = [(ChromeViewController *)self mapView];
  _selectingTapGestureRecognizer = [mapView _selectingTapGestureRecognizer];

  if (_selectingTapGestureRecognizer != gestureRecognizerCopy)
  {
    return 0;
  }

  return [(CarChromeViewController *)self _canSelectAlternateRoutes];
}

- (BOOL)gestureRecognizer:(id)recognizer shouldReceiveTouch:(id)touch
{
  recognizerCopy = recognizer;
  touchCopy = touch;
  view = [touchCopy view];
  passThroughView = [(ChromeViewController *)self passThroughView];
  if (view != passThroughView && ([view isDescendantOfView:passThroughView] & 1) == 0)
  {
    viewIfLoaded = [(CarChromeViewController *)self viewIfLoaded];

    if (view != viewIfLoaded)
    {
      goto LABEL_7;
    }
  }

  if (self->_autohideTapRecognizer != recognizerCopy)
  {
    goto LABEL_9;
  }

  topContext = [(CarChromeViewController *)self topContext];
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {

    goto LABEL_9;
  }

  topContext2 = [(CarChromeViewController *)self topContext];
  v13 = [topContext2 shouldSuppressAutohideRecognizerForTouch:touchCopy];

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

    view = [(CarChromeViewController *)self view];
    [view addGestureRecognizer:self->_autohideTapRecognizer];

    autohideTapRecognizer = self->_autohideTapRecognizer;
  }

  [(UITapGestureRecognizer *)autohideTapRecognizer setEnabled:1];
  mapView = [(ChromeViewController *)self mapView];
  _doubleTapGestureRecognizer = [mapView _doubleTapGestureRecognizer];

  if (_doubleTapGestureRecognizer)
  {
    v9 = self->_autohideTapRecognizer;
    mapView2 = [(ChromeViewController *)self mapView];
    _doubleTapGestureRecognizer2 = [mapView2 _doubleTapGestureRecognizer];
    [(UITapGestureRecognizer *)v9 requireGestureRecognizerToFail:_doubleTapGestureRecognizer2];
  }

  mapView3 = [(ChromeViewController *)self mapView];
  _oneHandedZoomGestureRecognizer = [mapView3 _oneHandedZoomGestureRecognizer];

  if (_oneHandedZoomGestureRecognizer)
  {
    v14 = self->_autohideTapRecognizer;
    mapView4 = [(ChromeViewController *)self mapView];
    _oneHandedZoomGestureRecognizer2 = [mapView4 _oneHandedZoomGestureRecognizer];
    [(UITapGestureRecognizer *)v14 requireGestureRecognizerToFail:_oneHandedZoomGestureRecognizer2];
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

- (BOOL)_areAccessoriesHiddenForContext:(id)context
{
  contextCopy = context;
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    goto LABEL_16;
  }

  accessoriesHidingBehavior = [contextCopy accessoriesHidingBehavior];
  if (accessoriesHidingBehavior > 1)
  {
    if (accessoriesHidingBehavior == 2)
    {
      v7 = [(CarChromeViewController *)self isAutohidingContentHiddenForContext:contextCopy];
      goto LABEL_17;
    }

    if (accessoriesHidingBehavior == 3)
    {
      v6 = [(ChromeViewController *)self isCurrentContext:contextCopy];
      goto LABEL_9;
    }

    goto LABEL_10;
  }

  if (!accessoriesHidingBehavior)
  {
LABEL_16:
    v7 = 1;
    goto LABEL_17;
  }

  if (accessoriesHidingBehavior != 1)
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

  v6 = [(CarChromeViewController *)self isAutohidingContentHiddenForContext:contextCopy];
LABEL_9:
  v7 = v6 ^ 1;
LABEL_17:

  return v7;
}

- (BOOL)isAutohidingContentHiddenForContext:(id)context
{
  contextCopy = context;
  if ([(ChromeViewController *)self isCurrentContext:contextCopy])
  {
    v5 = [(CarChromeViewController *)self _autohidingContentIsHiddenForContext:contextCopy];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)setAutohidingContentHiddenForCurrentContext:(BOOL)context
{
  contextCopy = context;
  topContext = [(CarChromeViewController *)self topContext];
  v6 = [(CarChromeViewController *)self _autohidingBehaviorForContext:topContext];

  if (!contextCopy || (self->_isCurrentlyVisible ? (v7 = v6 == 0) : (v7 = 1), !v7))
  {
    topContext2 = [(CarChromeViewController *)self topContext];
    v9 = [(CarChromeViewController *)self _autohidingBehaviorForContext:topContext2];

    if (contextCopy || v9 != 1)
    {
      topContext3 = [(CarChromeViewController *)self topContext];
      v11 = [(CarChromeViewController *)self _autohidingContentIsHiddenForContext:topContext3];

      if (v11 != contextCopy)
      {
        topContext4 = [(CarChromeViewController *)self topContext];
        [(CarChromeViewController *)self _recordAutohidingContentIsHidden:contextCopy forContext:topContext4];

        v13 = +[CarDisplayController sharedInstance];
        window = [v13 window];
        windowScene = [window windowScene];
        focusSystem = [windowScene focusSystem];
        focusedItem = [focusSystem focusedItem];

        if (!self->_ownsFocus || contextCopy || focusedItem)
        {
          if (!self->_ownsFocus || !focusedItem || ([focusedItem canBecomeFocused] & 1) != 0)
          {
LABEL_14:
            v18 = +[GroupAnimation animation];
            topContext5 = [(CarChromeViewController *)self topContext];
            if (contextCopy)
            {
              v20 = objc_opt_respondsToSelector();

              if (v20)
              {
                topContext6 = [(CarChromeViewController *)self topContext];
                [topContext6 hideAutohidingContentWithAnimation:v18];
LABEL_24:
              }
            }

            else
            {
              v22 = objc_opt_respondsToSelector();

              if (v22)
              {
                topContext6 = [(CarChromeViewController *)self topContext];
                [topContext6 showAutohidingContentWithAnimation:v18];
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
          topContext7 = [(CarChromeViewController *)self topContext];
          objc_storeWeak(&self->_restoreFocusForContext, topContext7);
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
  screen = [v3 screen];

  if ([screen _isCarPlayHumanPresenceInRange])
  {
    [(CarChromeViewController *)self setAutohidingContentHiddenForCurrentContext:0];
    [(CarChromeViewController *)self _stopAutohideIdleTimer];
  }

  else
  {
    topContext = [(CarChromeViewController *)self topContext];
    if ([(CarChromeViewController *)self _autohidingBehaviorForContext:topContext]== 2)
    {
      topContext2 = [(CarChromeViewController *)self topContext];
      v6 = [(CarChromeViewController *)self _autohidingContentIsHiddenForContext:topContext2];

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

- (void)_autohideGestureRecognizerDetectedTap:(id)tap
{
  if ([(UITapGestureRecognizer *)self->_autohideTapRecognizer state]== 3)
  {
    v4 = sub_100006E1C();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      v16 = 134349056;
      selfCopy2 = self;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "[%{public}p] Autohide gesture recognizer fired", &v16, 0xCu);
    }

    topContext = [(CarChromeViewController *)self topContext];
    v6 = [(CarChromeViewController *)self _autohidingBehaviorForContext:topContext];

    if (v6 <= 1)
    {
      v12 = sub_10006D178();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        v16 = 136315906;
        selfCopy2 = "[CarChromeViewController _autohideGestureRecognizerDetectedTap:]";
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
          selfCopy2 = v14;
          _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "%@", &v16, 0xCu);
        }
      }

      v15 = sub_100006E1C();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        v16 = 134349056;
        selfCopy2 = self;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "[%{public}p] Autohide gesture recognizer tried to show/hide content, but it shouldn't be installed.", &v16, 0xCu);
      }
    }

    else
    {
      [(CarChromeViewController *)self _stopAutohideIdleTimer];
      topContext2 = [(CarChromeViewController *)self topContext];
      v8 = [(CarChromeViewController *)self _autohidingContentIsHiddenForContext:topContext2];

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
        topContext3 = [(CarChromeViewController *)self topContext];
        v11 = [(CarChromeViewController *)self _autohidingContentIsHiddenForContext:topContext3];

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
  screen = [v3 screen];
  _isCarPlayHumanPresenceInRange = [screen _isCarPlayHumanPresenceInRange];

  if ((_isCarPlayHumanPresenceInRange & 1) == 0)
  {
    topContext = [(CarChromeViewController *)self topContext];
    v7 = [(CarChromeViewController *)self _autohidingBehaviorForContext:topContext];

    if ((v7 & 0xFFFFFFFFFFFFFFFELL) == 2)
    {

      [(CarChromeViewController *)self setAutohidingContentHiddenForCurrentContext:1];
    }
  }
}

- (void)_setAutohideBehavior:(int64_t)behavior forContext:(id)context
{
  contextCopy = context;
  v7 = sub_100006E1C();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v8 = contextCopy;
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
    selfCopy = self;
    v17 = 2048;
    behaviorCopy = behavior;
    v19 = 2112;
    v20 = v13;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "[%{public}p] _setAutohideBehaviour (behavior:%ld, context:%@", buf, 0x20u);
  }

  v14 = [(CarChromeViewController *)self chromeViewItemForContext:contextCopy createIfNeeded:1];
  [v14 setAutohideBehavior:behavior];
}

- (int64_t)_autohidingBehaviorForContext:(id)context
{
  contextCopy = context;
  if ([(CarChromeViewController *)self isForcingAutohideBehavior])
  {
    forcedAutohideBehavior = [(CarChromeViewController *)self forcedAutohideBehavior];
  }

  else
  {
    v6 = [(CarChromeViewController *)self chromeViewItemForContext:contextCopy createIfNeeded:0];
    v7 = v6;
    if (v6)
    {
      forcedAutohideBehavior = [v6 autohideBehavior];
    }

    else
    {
      forcedAutohideBehavior = 0;
    }
  }

  return forcedAutohideBehavior;
}

- (void)_recordAutohidingContentIsHidden:(BOOL)hidden forContext:(id)context
{
  hiddenCopy = hidden;
  contextCopy = context;
  v7 = sub_100006E1C();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v8 = @"NO";
    if (hiddenCopy)
    {
      v8 = @"YES";
    }

    v9 = v8;
    v10 = contextCopy;
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
    selfCopy = self;
    v19 = 2112;
    v20 = v9;
    v21 = 2112;
    v22 = v15;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "[%{public}p] _setAutohidingContentIsHidden (hidden:%@, context:%@", buf, 0x20u);
  }

  v16 = [(CarChromeViewController *)self chromeViewItemForContext:contextCopy createIfNeeded:1];
  [v16 setAutohidingContentIsHidden:hiddenCopy];
}

- (BOOL)_autohidingContentIsHiddenForContext:(id)context
{
  v3 = [(CarChromeViewController *)self chromeViewItemForContext:context createIfNeeded:0];
  isAutohidingContentHidden = [v3 isAutohidingContentHidden];

  return isAutohidingContentHidden;
}

- (void)_requestAutohideBehaviorForContext:(id)context
{
  contextCopy = context;
  if (objc_opt_respondsToSelector())
  {
    autohideBehavior = [contextCopy autohideBehavior];
  }

  else
  {
    autohideBehavior = 0;
  }

  if (autohideBehavior != [(CarChromeViewController *)self _autohidingBehaviorForContext:contextCopy])
  {
    [(CarChromeViewController *)self _setAutohideBehavior:autohideBehavior forContext:contextCopy];
  }
}

- (void)setNeedsAutohideBehaviorUpdateForContext:(id)context
{
  contextCopy = context;
  [(CarChromeViewController *)self _requestAutohideBehaviorForContext:contextCopy];
  v5 = [(ChromeViewController *)self isTopContext:contextCopy];

  if (v5)
  {

    [(CarChromeViewController *)self _updateAutohideBehavior];
  }
}

- (void)carCardView:(id)view didChangeFocus:(BOOL)focus
{
  focusCopy = focus;
  viewCopy = view;
  topContext = [(CarChromeViewController *)self topContext];
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    v9 = sub_10006CF98();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v11 = 134349056;
      selfCopy = self;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "[%{public}p] CardView became focused, topContext will handle responding.", &v11, 0xCu);
    }

    topContext2 = [(CarChromeViewController *)self topContext];
    [topContext2 carCardView:viewCopy didChangeFocus:focusCopy];
  }
}

- (void)carCardView:(id)view chevronButtonSelected:(id)selected
{
  viewCopy = view;
  selectedCopy = selected;
  topContext = [(CarChromeViewController *)self topContext];
  v9 = objc_opt_respondsToSelector();

  if (v9)
  {
    v10 = sub_10006CF98();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v12 = 134349056;
      selfCopy = self;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "[%{public}p] CardView chevronButton accessory tapped, top context will handle responding.", &v12, 0xCu);
    }

    topContext2 = [(CarChromeViewController *)self topContext];
    [topContext2 carCardView:viewCopy chevronButtonSelected:selectedCopy];
  }
}

- (void)carCardViewCloseButtonTapped:(id)tapped
{
  tappedCopy = tapped;
  topContext = [(CarChromeViewController *)self topContext];
  v6 = objc_opt_respondsToSelector();

  v7 = sub_10006CF98();
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_INFO);
  if ((v6 & 1) == 0)
  {
    if (!v8)
    {
LABEL_15:

      _previousContext = [(CarChromeViewController *)self _previousContext];
      [(CarChromeViewController *)self _captureUserActionBackToContext:_previousContext];

      topContext5 = +[CarChromeModeCoordinator sharedInstance];
      topContext2 = [(CarChromeViewController *)self topContext];
      [topContext5 popFromContext:topContext2];

      goto LABEL_16;
    }

    selfCopy = self;
    if (!selfCopy)
    {
      selfCopy = @"<nil>";
      goto LABEL_14;
    }

    v13 = objc_opt_class();
    v14 = NSStringFromClass(v13);
    if (objc_opt_respondsToSelector())
    {
      v15 = [(CarChromeViewController *)selfCopy performSelector:"accessibilityIdentifier"];
      v16 = v15;
      if (v15 && ![v15 isEqualToString:v14])
      {
        selfCopy = [NSString stringWithFormat:@"%@<%p, %@>", v14, selfCopy, v16];

        goto LABEL_12;
      }
    }

    selfCopy = [NSString stringWithFormat:@"%@<%p>", v14, selfCopy];
LABEL_12:

LABEL_14:
    topContext3 = [(CarChromeViewController *)selfCopy topContext];
    contexts = [(ChromeViewController *)selfCopy contexts];
    *buf = 138543874;
    selfCopy2 = selfCopy;
    v24 = 2112;
    v25 = topContext3;
    v26 = 2112;
    v27 = contexts;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "[%{public}@] CardView closeButton accessory tapped, chrome will pop current context. Top Context: %@ All Contexts : %@", buf, 0x20u);

    goto LABEL_15;
  }

  if (v8)
  {
    topContext4 = [(CarChromeViewController *)self topContext];
    contexts2 = [(ChromeViewController *)self contexts];
    *buf = 134349570;
    selfCopy2 = self;
    v24 = 2112;
    v25 = topContext4;
    v26 = 2112;
    v27 = contexts2;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "[%{public}p] CardView closeButton accessory tapped, top context will handle responding. Top Context: %@ All Contexts : %@", buf, 0x20u);
  }

  topContext5 = [(CarChromeViewController *)self topContext];
  [topContext5 carCardViewCloseButtonTapped:tappedCopy];
LABEL_16:
}

- (void)_reloadCardsAnimated:(BOOL)animated
{
  [(CarChromeViewController *)self _reloadCardOverlayConstraintsIfNeeded];
  if ([(ChromeViewController *)self isSuppressed])
  {
    _desiredCards = sub_10006CF98();
    if (os_log_type_enabled(_desiredCards, OS_LOG_TYPE_INFO))
    {
      *buf = 134349056;
      selfCopy4 = self;
      v5 = "[%{public}p] Will not reload cards, suppressed.";
LABEL_19:
      v23 = _desiredCards;
      v24 = OS_LOG_TYPE_INFO;
LABEL_25:
      _os_log_impl(&_mh_execute_header, v23, v24, v5, buf, 0xCu);
    }
  }

  else
  {
    overlayController = [(ChromeViewController *)self overlayController];
    overlayContentView = [overlayController overlayContentView];

    if (overlayContentView)
    {
      cardsOverlay = [(CarChromeViewController *)self cardsOverlay];
      [cardsOverlay dismissAllCardsAnimated:0 completion:0];

      overlayController2 = [(ChromeViewController *)self overlayController];
      overlayContentView2 = [overlayController2 overlayContentView];
      [overlayContentView2 setAccessibilityViewIsModal:0];

      topContext = [(CarChromeViewController *)self topContext];
      LOBYTE(overlayContentView2) = objc_opt_respondsToSelector();

      if (overlayContentView2)
      {
        topContext2 = [(CarChromeViewController *)self topContext];
        v13 = objc_opt_respondsToSelector();

        if ((v13 & 1) == 0)
        {
          v25 = sub_10006D178();
          if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315906;
            selfCopy4 = "[CarChromeViewController _reloadCardsAnimated:]";
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
              selfCopy4 = v27;
              _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
            }
          }
        }

        topContext3 = [(CarChromeViewController *)self topContext];
        v15 = objc_opt_respondsToSelector();

        if (v15)
        {
          _desiredCards = [(CarChromeViewController *)self _desiredCards];
          if ([_desiredCards count])
          {
            v31 = 0u;
            v32 = 0u;
            v29 = 0u;
            v30 = 0u;
            _desiredCards = _desiredCards;
            v16 = [_desiredCards countByEnumeratingWithState:&v29 objects:v33 count:16];
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
                    objc_enumerationMutation(_desiredCards);
                  }

                  v20 = *(*(&v29 + 1) + 8 * i);
                  cardsOverlay2 = [(CarChromeViewController *)self cardsOverlay];
                  v28[0] = _NSConcreteStackBlock;
                  v28[1] = 3221225472;
                  v28[2] = sub_10058F708;
                  v28[3] = &unk_101622738;
                  v28[4] = self;
                  v28[5] = v20;
                  [cardsOverlay2 configureCard:v20 withBlock:v28];
                }

                v17 = [_desiredCards countByEnumeratingWithState:&v29 objects:v33 count:16];
              }

              while (v17);
            }

            cardsOverlay3 = [(CarChromeViewController *)self cardsOverlay];
            [cardsOverlay3 presentAllCardsAnimated:0 completion:0];
          }

          goto LABEL_26;
        }

        _desiredCards = sub_10006CF98();
        if (!os_log_type_enabled(_desiredCards, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_26;
        }

        *buf = 134349056;
        selfCopy4 = self;
      }

      else
      {
        _desiredCards = sub_10006CF98();
        if (!os_log_type_enabled(_desiredCards, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_26;
        }

        *buf = 134349056;
        selfCopy4 = self;
      }

      v23 = _desiredCards;
      v24 = OS_LOG_TYPE_ERROR;
      goto LABEL_25;
    }

    _desiredCards = sub_10006CF98();
    if (os_log_type_enabled(_desiredCards, OS_LOG_TYPE_INFO))
    {
      *buf = 134349056;
      selfCopy4 = self;
      v5 = "[%{public}p] Will not reload cards, no overlay content view available.";
      goto LABEL_19;
    }
  }

LABEL_26:
}

- (void)_updateCardsForContext:(id)context withAnimation:(id)animation completion:(id)completion
{
  contextCopy = context;
  animationCopy = animation;
  completionCopy = completion;
  if ([(ChromeViewController *)self isCurrentContext:contextCopy])
  {
    v11 = sub_10006CF98();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      *buf = 134349056;
      selfCopy2 = self;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "[%{public}p] Chrome started configuring cards.", buf, 0xCu);
    }

    topContext = [(CarChromeViewController *)self topContext];
    _desiredCards = [(CarChromeViewController *)self _desiredCards];
    if (objc_opt_respondsToSelector())
    {
      [topContext chromeDidStartConfiguringCards:_desiredCards];
    }

    objc_initWeak(buf, self);
    cardsOverlay = [(CarChromeViewController *)self cardsOverlay];
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
    v15 = topContext;
    v21 = v15;
    v16 = _desiredCards;
    v22 = v16;
    v23 = completionCopy;
    [cardsOverlay performBatchUpdates:v25 withAnimation:animationCopy completion:v20];

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
      selfCopy2 = self;
      v28 = 2112;
      v29 = v19;
      v30 = 2048;
      v31 = contextCopy;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "[%{public}p] %@ (%p) asked for card update, but it is not the current context. Ignoring the call.", buf, 0x20u);
    }

    if (completionCopy)
    {
      (*(completionCopy + 2))(completionCopy, 0);
    }
  }
}

- (void)captureUserActionSelectedSearchCategory:(id)category categoriesDisplayed:(id)displayed
{
  displayedCopy = displayed;
  categoryCopy = category;
  _currentUsageTarget = [(CarChromeViewController *)self _currentUsageTarget];
  v10 = +[MKMapService sharedService];
  displayString = [categoryCopy displayString];
  [v10 captureUserAction:2004 onTarget:_currentUsageTarget eventValue:displayString categoriesDisplayed:displayedCopy categorySelected:categoryCopy];
}

- (void)captureUserActionPannedInDirection:(int64_t)direction
{
  if ((direction - 1) >= 4)
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
    v3 = dword_101212BD0[direction - 1];

    [(CarChromeViewController *)self captureUserAction:v3];
  }
}

- (void)captureUserActionChangedTrackingMode:(int64_t)mode
{
  if (mode >= 3)
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
    v3 = dword_101212F38[mode];

    [(CarChromeViewController *)self captureUserAction:v3];
  }
}

- (void)captureUserAction:(int)action selectedRouteIndex:(int)index
{
  v4 = *&index;
  v5 = *&action;
  _currentUsageTarget = [(CarChromeViewController *)self _currentUsageTarget];
  v8 = [GEORouteDetails routeDetailsWithResultIndex:v4];
  v7 = +[MKMapService sharedService];
  [v7 captureUserAction:v5 onTarget:_currentUsageTarget eventValue:0 routeDetails:v8];
}

- (void)captureUserAction:(int)action mapItem:(id)item atResultIndex:(int)index
{
  v5 = *&index;
  v6 = *&action;
  itemCopy = item;
  _currentUsageTarget = [(CarChromeViewController *)self _currentUsageTarget];
  if (itemCopy || (v5 & 0x80000000) == 0)
  {
    v9 = [(CarChromeViewController *)self _userActionDetailsWithMapItem:itemCopy resultIndex:v5];
  }

  else
  {
    v9 = 0;
  }

  v10 = +[MKMapService sharedService];
  [v10 captureUserAction:v6 onTarget:_currentUsageTarget eventValue:0 placeActionDetails:v9];
}

- (void)captureUserAction:(int)action eventValue:(id)value
{
  v4 = *&action;
  valueCopy = value;
  [(CarChromeViewController *)self captureUserAction:v4 onTarget:[(CarChromeViewController *)self _currentUsageTarget] eventValue:valueCopy];
}

- (void)captureUserAction:(int)action onTarget:(int)target eventValue:(id)value
{
  v5 = *&target;
  v6 = *&action;
  valueCopy = value;
  v8 = +[MKMapService sharedService];
  [v8 captureUserAction:v6 onTarget:v5 eventValue:valueCopy];
}

- (void)_captureUserActionBackToContext:(id)context
{
  contextCopy = context;
  topContext = [(CarChromeViewController *)self topContext];
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    v6 = 25;
    goto LABEL_5;
  }

  topContext2 = [(CarChromeViewController *)self topContext];
  v6 = [topContext2 backButtonUsageActionToContext:contextCopy];

  if (v6)
  {
LABEL_5:
    if (objc_opt_respondsToSelector())
    {
      v7 = [topContext backButtonUsageEventValueToContext:contextCopy];
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
  desiredRadarScreenshotTypes = [(ChromeViewController *)&v6 desiredRadarScreenshotTypes];
  if ([(ChromeViewController *)self isInactive]|| ([(ChromeViewController *)self currentMapReplacementView], v4 = objc_claimAutoreleasedReturnValue(), v4, v4))
  {
    desiredRadarScreenshotTypes |= 8uLL;
  }

  return desiredRadarScreenshotTypes;
}

- (void)carStatusBannerDidTapBanner
{
  v2 = +[UIApplication sharedMapsDelegate];
  [v2 interruptApplicationWithKind:21 userInfo:0 completionHandler:&stru_1016226E8];
}

- (void)_enableZoomGesture:(BOOL)gesture
{
  gestureCopy = gesture;
  if (gesture)
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
    topContext = [(CarChromeViewController *)self topContext];
    gestureCopy = [topContext allowMapZoomAndRecentering];
  }

  mapView = [(ChromeViewController *)self mapView];
  [mapView setZoomEnabled:gestureCopy];

  mapView2 = [(ChromeViewController *)self mapView];
  _doubleTapGestureRecognizer = [mapView2 _doubleTapGestureRecognizer];
  [_doubleTapGestureRecognizer setEnabled:0];

  allowOneHandedZooming = 0;
  if (gestureCopy)
  {
    allowOneHandedZooming = [objc_opt_class() allowOneHandedZooming];
  }

  mapView3 = [(ChromeViewController *)self mapView];
  _oneHandedZoomGestureRecognizer = [mapView3 _oneHandedZoomGestureRecognizer];
  [_oneHandedZoomGestureRecognizer setEnabled:allowOneHandedZooming];
}

- (void)updateZoomControls
{
  mapView = [(ChromeViewController *)self mapView];
  _canZoomIn = [mapView _canZoomIn];
  mapControlsOverlay = [(CarChromeViewController *)self mapControlsOverlay];
  [mapControlsOverlay setZoomInEnabled:_canZoomIn];

  mapView2 = [(ChromeViewController *)self mapView];
  _canZoomOut = [mapView2 _canZoomOut];
  mapControlsOverlay2 = [(CarChromeViewController *)self mapControlsOverlay];
  [mapControlsOverlay2 setZoomOutEnabled:_canZoomOut];
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
  topContext = [(CarChromeViewController *)self topContext];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    topContext2 = [(CarChromeViewController *)self topContext];
    [topContext2 toggleCameraPressed];

    [(CarChromeViewController *)self _updateCameraToggleButton];
  }

  else
  {
    v6 = sub_10006D178();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v10 = 136315650;
      selfCopy = "[CarChromeViewController _toggleCameraPressed]";
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
        selfCopy = v8;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "%@", &v10, 0xCu);
      }
    }

    v9 = sub_100006E1C();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = 134349056;
      selfCopy = self;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "[%{public}p] _toggleCameraPressed called, because toggleCameraButton is present in map controls, but topContext doesn't respond to toggleCameraPressed", &v10, 0xCu);
    }
  }
}

- (void)_toggle3DButtonPressed
{
  if (sub_10008B2E8())
  {
    isRunningNavigationDisplay = [(ChromeViewController *)self isRunningNavigationDisplay];
    v4 = isRunningNavigationDisplay ^ 1;
    if (isRunningNavigationDisplay)
    {
      v5 = 5010;
    }

    else
    {
      v5 = 5009;
    }

    [(CarChromeViewController *)self captureUserAction:v5];
    defaultMapSettings = [(CarChromeViewController *)self defaultMapSettings];
    [defaultMapSettings setPitched:v4];

    [(ChromeViewController *)self setNeedsUpdateComponent:@"navigationDisplay" animated:1];
    [(ChromeViewController *)self updateComponentsIfNeeded];
    [(CarChromeViewController *)self _update3DButton];
    if ((v4 & 1) == 0)
    {
      defaultMapSettings2 = [(CarChromeViewController *)self defaultMapSettings];
      [defaultMapSettings2 applyToMapViewAnimated:1 duration:0 completion:-1.0];
    }
  }

  else
  {
    mapView = [(ChromeViewController *)self mapView];
    _isPitched = [mapView _isPitched];

    if (_isPitched)
    {
      v9 = 5010;
    }

    else
    {
      v9 = 5009;
    }

    [(CarChromeViewController *)self captureUserAction:v9];
    defaultMapSettings3 = [(CarChromeViewController *)self defaultMapSettings];
    [defaultMapSettings3 setPitched:_isPitched ^ 1];

    mapView2 = [(ChromeViewController *)self mapView];
    v12 = mapView2;
    if (_isPitched)
    {
      [mapView2 _exit3DMode];
    }

    else
    {
      [mapView2 _enter3DMode];
    }

    [(CarChromeViewController *)self _update3DButton];
  }
}

- (void)zoomOut
{
  [(CarChromeViewController *)self captureUserAction:1050];
  topContext = [(CarChromeViewController *)self topContext];
  if ((objc_opt_respondsToSelector() & 1) == 0 || ([topContext zoomOutButtonPressed] & 1) == 0)
  {
    navigationDisplay = [(ChromeViewController *)self navigationDisplay];
    if (navigationDisplay && (v5 = navigationDisplay, +[CarDisplayController sharedInstance](CarDisplayController, "sharedInstance"), v6 = objc_claimAutoreleasedReturnValue(), v7 = [v6 isCarAppSceneHostingNavigation], v6, v5, v7))
    {
      navigationDisplay2 = [(ChromeViewController *)self navigationDisplay];
      [navigationDisplay2 zoomOut];
    }

    else
    {
      navigationDisplay2 = [(ChromeViewController *)self mapView];
      v9[0] = _NSConcreteStackBlock;
      v9[1] = 3221225472;
      v9[2] = sub_100590C40;
      v9[3] = &unk_101661B18;
      v9[4] = self;
      [navigationDisplay2 _zoomOutWithCompletionHandler:v9];
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
    selfCopy = self;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "[%{public}p] zoomOut button pressed", &v4, 0xCu);
  }

  [(CarChromeViewController *)self zoomOut];
}

- (void)zoomIn
{
  [(CarChromeViewController *)self captureUserAction:1049];
  topContext = [(CarChromeViewController *)self topContext];
  if ((objc_opt_respondsToSelector() & 1) == 0 || ([topContext zoomInButtonPressed] & 1) == 0)
  {
    navigationDisplay = [(ChromeViewController *)self navigationDisplay];
    if (navigationDisplay && (v5 = navigationDisplay, +[CarDisplayController sharedInstance](CarDisplayController, "sharedInstance"), v6 = objc_claimAutoreleasedReturnValue(), v7 = [v6 isCarAppSceneHostingNavigation], v6, v5, v7))
    {
      navigationDisplay2 = [(ChromeViewController *)self navigationDisplay];
      [navigationDisplay2 zoomIn];
    }

    else
    {
      navigationDisplay2 = [(ChromeViewController *)self mapView];
      v9[0] = _NSConcreteStackBlock;
      v9[1] = 3221225472;
      v9[2] = sub_100590E94;
      v9[3] = &unk_101661B18;
      v9[4] = self;
      [navigationDisplay2 _zoomInWithCompletionHandler:v9];
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
    selfCopy = self;
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
  topContext = [(CarChromeViewController *)self topContext];
  if ((objc_opt_respondsToSelector() & 1) == 0 || ([topContext recenterButtonPressed] & 1) == 0)
  {
    navigationDisplay = [(ChromeViewController *)self navigationDisplay];
    [navigationDisplay recenterCameraAnimated:1];
  }
}

- (void)carMapControls:(id)controls didTriggerAction:(unint64_t)action
{
  controlsCopy = controls;
  if (action > 4)
  {
    if (action > 6)
    {
      if (action == 7)
      {
        v7 = controlsCopy;
        [(CarChromeViewController *)self _audioControlPressed];
      }

      else
      {
        if (action != 8)
        {
          goto LABEL_19;
        }

        v7 = controlsCopy;
        [(CarChromeViewController *)self _reportIncidentPressed];
      }
    }

    else
    {
      v7 = controlsCopy;
      if (action == 5)
      {
        [(CarChromeViewController *)self _toggle3DButtonPressed];
      }

      else
      {
        [(CarChromeViewController *)self _toggleCameraPressed];
      }
    }
  }

  else if (action > 2)
  {
    v7 = controlsCopy;
    if (action == 3)
    {
      [(CarChromeViewController *)self zoomInButtonPressed];
    }

    else
    {
      [(CarChromeViewController *)self zoomOutButtonPressed];
    }
  }

  else if (action == 1)
  {
    v7 = controlsCopy;
    [(CarChromeViewController *)self _navRecenterButtonPressed];
  }

  else
  {
    if (action != 2)
    {
      goto LABEL_19;
    }

    v7 = controlsCopy;
    [(CarChromeViewController *)self panButtonPressed];
  }

  controlsCopy = v7;
LABEL_19:
}

- (void)_reloadMapControlsInsetsForContext:(id)context
{
  contextCopy = context;
  mapControlsOverlay = [(CarChromeViewController *)self mapControlsOverlay];
  v6 = mapControlsOverlay;
  if (mapControlsOverlay)
  {
    [mapControlsOverlay configuration];
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

    v6 = [(CarChromeViewController *)self _shouldMapControlsModifyMapInsetsForContext:contextCopy];
  }

LABEL_8:
  overlayController = [(ChromeViewController *)self overlayController];
  mapControlsOverlay2 = [(CarChromeViewController *)self mapControlsOverlay];
  [overlayController setViewportConstraintsEnabled:v6 forOverlay:mapControlsOverlay2];

  overlayController2 = [(ChromeViewController *)self overlayController];
  mapControlsOverlay3 = [(CarChromeViewController *)self mapControlsOverlay];
  [overlayController2 setMapInsetsConstraintsEnabled:v6 forOverlay:mapControlsOverlay3];
}

- (void)_reloadMapControlsForContext:(id)context withAnimation:(id)animation
{
  contextCopy = context;
  animationCopy = animation;
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

  if (![(ChromeViewController *)self isCurrentContext:contextCopy])
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
      v18 = contextCopy;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "[%{public}p] %@ (%p) asked for mapControls update, but it is not the current context. Ignoring the call.", buf, 0x20u);
    }

    goto LABEL_4;
  }

  if (animationCopy)
  {
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x2020000000;
    LOBYTE(v18) = [animationCopy isAnimated];
    objc_initWeak(&location, animationCopy);
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_1005915A0;
    v12[3] = &unk_1016226C8;
    v12[4] = self;
    v13 = contextCopy;
    v14 = buf;
    objc_copyWeak(&v15, &location);
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_100591750;
    v11[3] = &unk_101661B18;
    v11[4] = self;
    [animationCopy addPreparation:v12 animations:v11 completion:0];
    objc_destroyWeak(&v15);

    objc_destroyWeak(&location);
    _Block_object_dispose(buf, 8);
  }

  else
  {
    animationCopy = [GroupAnimation animationForAnimatedFlag:0];
    [(CarChromeViewController *)self _reloadMapControlsForContext:contextCopy withAnimation:animationCopy];
    [animationCopy runWithCurrentOptions];
  }

LABEL_12:
}

- (void)_reloadStatusBannerWithAnimation:(id)animation
{
  animationCopy = animation;
  topContext = [(CarChromeViewController *)self topContext];
  v6 = [(ChromeViewController *)self isCurrentContext:topContext];

  if (v6)
  {
    topContext2 = [(CarChromeViewController *)self topContext];
    if (objc_opt_respondsToSelector())
    {
      topContext3 = [(CarChromeViewController *)self topContext];
      v9 = [topContext3 suppressesStatusBannerAnimation] ^ 1;
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
    v16 = [animationCopy isAnimated] & v9;
    [animationCopy addPreparation:v17 animations:v15 completion:0];
  }

  else
  {
    v10 = sub_100006E1C();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      topContext4 = [(CarChromeViewController *)self topContext];
      v12 = objc_opt_class();
      v13 = NSStringFromClass(v12);
      topContext5 = [(CarChromeViewController *)self topContext];
      *buf = 134349570;
      selfCopy = self;
      v20 = 2112;
      v21 = v13;
      v22 = 2048;
      v23 = topContext5;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "[%{public}p] %@ (%p) asked for status banner reload, but it is not the current context. Ignoring the call.", buf, 0x20u);
    }
  }
}

- (void)reloadStatusBannerAnimated:(BOOL)animated
{
  v4 = [GroupAnimation animationForAnimatedFlag:animated];
  [(CarChromeViewController *)self _reloadStatusBannerWithAnimation:v4];
  [v4 runWithCurrentOptions];
}

- (void)_reloadAccessoriesInsetsForContext:(id)context
{
  contextCopy = context;
  v4 = ![(CarChromeViewController *)self _areAccessoriesHiddenForCurrentContext]&& [(CarChromeViewController *)self _shouldAccessoriesModifyMapInsetsForContext:contextCopy];
  overlayController = [(ChromeViewController *)self overlayController];
  accessoriesOverlay = [(CarChromeViewController *)self accessoriesOverlay];
  [overlayController setViewportConstraintsEnabled:v4 forOverlay:accessoriesOverlay];

  overlayController2 = [(ChromeViewController *)self overlayController];
  accessoriesOverlay2 = [(CarChromeViewController *)self accessoriesOverlay];
  [overlayController2 setMapInsetsConstraintsEnabled:v4 forOverlay:accessoriesOverlay2];
}

- (void)_reloadAccessoriesForContext:(id)context withAnimation:(id)animation
{
  contextCopy = context;
  animationCopy = animation;
  if ([(ChromeViewController *)self isCurrentContext:contextCopy])
  {
    isAnimated = [animationCopy isAnimated];
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_100591DD0;
    v14[3] = &unk_101661A90;
    v14[4] = self;
    v15 = contextCopy;
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_100591E5C;
    v12[3] = &unk_101661AE0;
    v12[4] = self;
    v13 = isAnimated;
    [animationCopy addPreparation:v14 animations:v12 completion:0];
  }

  else
  {
    v9 = sub_100006E1C();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = objc_opt_class();
      v11 = NSStringFromClass(v10);
      *buf = 134349570;
      selfCopy = self;
      v18 = 2112;
      v19 = v11;
      v20 = 2048;
      v21 = contextCopy;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "[%{public}p] %@ (%p) asked for accessories reload, but it is not the current context. Ignoring the call.", buf, 0x20u);
    }
  }
}

- (void)reloadAccessoriesForContext:(id)context animated:(BOOL)animated
{
  animatedCopy = animated;
  contextCopy = context;
  v7 = [GroupAnimation animationForAnimatedFlag:animatedCopy];
  [(CarChromeViewController *)self _reloadAccessoriesForContext:contextCopy withAnimation:v7];

  [v7 runWithCurrentOptions];
}

- (void)configureAccessoriesOverlay:(id)overlay forContext:(id)context
{
  contextCopy = context;
  if (objc_opt_respondsToSelector())
  {
    showsSpeedLimit = [contextCopy showsSpeedLimit];
  }

  else
  {
    showsSpeedLimit = 0;
  }

  accessoriesOverlay = [(CarChromeViewController *)self accessoriesOverlay];
  [accessoriesOverlay setShowSpeedSign:showsSpeedLimit];

  if (objc_opt_respondsToSelector())
  {
    showsHeadingIndicator = [contextCopy showsHeadingIndicator];
  }

  else
  {
    showsHeadingIndicator = 0;
  }

  accessoriesOverlay2 = [(CarChromeViewController *)self accessoriesOverlay];
  [accessoriesOverlay2 setShowHeadingIndicator:showsHeadingIndicator];
}

- (void)_reloadFocusContainerGuidesForContext:(id)context
{
  topContext = [(CarChromeViewController *)self topContext];
  v5 = objc_opt_respondsToSelector();

  focusContainerGuideController = self->_focusContainerGuideController;
  if (v5)
  {
    activeEdges = [(CarFocusContainerGuideController *)focusContainerGuideController activeEdges];
    topContext2 = [(CarChromeViewController *)self topContext];
    [topContext2 configureFocusContainerGuideController:self->_focusContainerGuideController];

    activeEdges2 = [(CarFocusContainerGuideController *)self->_focusContainerGuideController activeEdges];
    v10 = sub_100006E1C();
    if (!os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
LABEL_15:

      return;
    }

    topContext3 = [(CarChromeViewController *)self topContext];
    if (!topContext3)
    {
      v16 = @"<nil>";
      goto LABEL_14;
    }

    v12 = objc_opt_class();
    v13 = NSStringFromClass(v12);
    if (objc_opt_respondsToSelector())
    {
      v14 = [topContext3 performSelector:"accessibilityIdentifier"];
      v15 = v14;
      if (v14 && ![v14 isEqualToString:v13])
      {
        v16 = [NSString stringWithFormat:@"%@<%p, %@>", v13, topContext3, v15];

        goto LABEL_9;
      }
    }

    v16 = [NSString stringWithFormat:@"%@<%p>", v13, topContext3];
LABEL_9:

LABEL_14:
    *buf = 134349826;
    selfCopy = self;
    v19 = 2112;
    v20 = v16;
    v21 = 2048;
    v22 = activeEdges;
    v23 = 2048;
    v24 = activeEdges2;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "[%{public}p] Top context: %@, configured focusContainer guides from: %lu, to %lu", buf, 0x2Au);

    goto LABEL_15;
  }

  [(CarFocusContainerGuideController *)focusContainerGuideController setActiveEdges:15];
}

- (NSArray)_linearFocusMovementSequences
{
  topContext = [(CarChromeViewController *)self topContext];
  carFocusOrderSequences = [topContext carFocusOrderSequences];

  if ([carFocusOrderSequences count])
  {
    if ([carFocusOrderSequences count] >= 2)
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

    v8 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [carFocusOrderSequences count]);
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
    [carFocusOrderSequences enumerateObjectsWithOptions:2 usingBlock:v16];
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

- (BOOL)shouldUpdateFocusInContext:(id)context
{
  contextCopy = context;
  if ([(CarChromeViewController *)self _isFocusMovementValidInContext:contextCopy])
  {
    topContext = [(CarChromeViewController *)self topContext];
    v6 = objc_opt_respondsToSelector();

    if (v6)
    {
      topContext2 = [(CarChromeViewController *)self topContext];
      v8 = [topContext2 shouldUpdateFocusInContext:contextCopy];
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

- (BOOL)_isFocusMovementValidInContext:(id)context
{
  contextCopy = context;
  if (([contextCopy focusHeading] & 0x20) != 0 || (objc_msgSend(contextCopy, "focusHeading") & 0x10) != 0 || (objc_msgSend(contextCopy, "focusHeading") & 0x100) != 0 || (objc_msgSend(contextCopy, "focusHeading") & 0x200) != 0)
  {
    _linearFocusMovementSequences = [(CarChromeViewController *)self _linearFocusMovementSequences];
    if ([_linearFocusMovementSequences count] >= 2)
    {
      v46 = sub_10006D178();
      if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315906;
        selfCopy7 = "[CarChromeViewController _isFocusMovementValidInContext:]";
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
          selfCopy7 = v48;
          _os_log_impl(&_mh_execute_header, v47, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
        }
      }
    }

    if ([_linearFocusMovementSequences count] >= 2)
    {
      v7 = sub_100006E1C();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
      {
        *buf = 134349314;
        selfCopy7 = self;
        v66 = 2112;
        v67 = _linearFocusMovementSequences;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_FAULT, "[%{public}p] We've produced more than 1 linearMovementSequence, this is not supported. sequences: %@", buf, 0x16u);
      }
    }

    firstObject = [_linearFocusMovementSequences firstObject];
    v9 = firstObject;
    if (!firstObject)
    {
      v31 = sub_100006E1C();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_FAULT))
      {
        *buf = 134349056;
        selfCopy7 = self;
        _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_FAULT, "[%{public}p] We've don't have a linearMovementSequence. This should never happen. If you see this, check the implementation of _linearFocusMovementSequences.", buf, 0xCu);
      }

      v5 = 1;
      goto LABEL_61;
    }

    items = [firstObject items];
    v58[0] = _NSConcreteStackBlock;
    v58[1] = 3221225472;
    v58[2] = sub_1005933C4;
    v58[3] = &unk_101622598;
    v11 = contextCopy;
    v59 = v11;
    v12 = [items indexOfObjectPassingTest:v58];

    if (v12 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v13 = sub_100006E1C();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
      {
        items2 = [v9 items];
        v15 = items2;
        if (items2)
        {
          if ([items2 count])
          {
            v50 = v11;
            v51 = v13;
            v52 = v9;
            selfCopy3 = self;
            v54 = _linearFocusMovementSequences;
            v55 = contextCopy;
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

                _linearFocusMovementSequences = v54;
                contextCopy = v55;
                v9 = v52;
                self = selfCopy3;
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

        nextFocusedItem = [v11 nextFocusedItem];
        *buf = 134349570;
        selfCopy7 = self;
        v66 = 2112;
        v67 = v30;
        v68 = 2112;
        *v69 = nextFocusedItem;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEBUG, "[%{public}p] Focus engine tried to focus something which was not in our provided sequence of items. sequence.items: %@, nextItem: %@", buf, 0x20u);
      }

      v5 = 0;
      goto LABEL_60;
    }

    items3 = [v9 items];
    v33 = v11;
    v34 = items3;
    v56[0] = _NSConcreteStackBlock;
    v56[1] = 3221225472;
    v56[2] = sub_100593418;
    v56[3] = &unk_101622598;
    v35 = v33;
    v57 = v35;
    v36 = [v34 indexOfObjectPassingTest:v56];

    focusHeading = [v35 focusHeading];
    if (v36 == 0x7FFFFFFFFFFFFFFFLL)
    {
      if ((focusHeading & 0x100) == 0)
      {
        v38 = sub_100006E1C();
        if (os_log_type_enabled(v38, OS_LOG_TYPE_DEBUG))
        {
          *buf = 134349056;
          selfCopy7 = self;
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
          selfCopy7 = self;
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

    else if (((focusHeading & 0x20) == 0 || v36 - 1 != v12) && (([v35 focusHeading]& 0x10) == 0 || v36 + 1 != v12))
    {
      v39 = sub_100006E1C();
      if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
      {
        previouslyFocusedItem = [v35 previouslyFocusedItem];
        nextFocusedItem2 = [v35 nextFocusedItem];
        focusHeading2 = [v35 focusHeading];
        *buf = 134349826;
        selfCopy7 = self;
        v66 = 2112;
        v67 = previouslyFocusedItem;
        v68 = 2112;
        *v69 = nextFocusedItem2;
        *&v69[8] = 2048;
        *&v69[10] = focusHeading2;
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

- (void)setOwnsFocus:(BOOL)focus
{
  if (self->_ownsFocus != focus)
  {
    block[5] = v3;
    block[6] = v4;
    self->_ownsFocus = focus;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1005934FC;
    block[3] = &unk_101661B18;
    block[4] = self;
    dispatch_async(&_dispatch_main_q, block);
  }
}

- (void)_preserveFocusedItemFromContext:(id)context toContext:(id)toContext
{
  toContextCopy = toContext;
  v6 = +[CarDisplayController sharedInstance];
  window = [v6 window];
  windowScene = [window windowScene];
  focusSystem = [windowScene focusSystem];
  focusedItem = [focusSystem focusedItem];

  if (focusedItem)
  {
    mapControlsOverlay = [(CarChromeViewController *)self mapControlsOverlay];
    focusOrderSubItems = [mapControlsOverlay focusOrderSubItems];

    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v13 = focusOrderSubItems;
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

          if (focusedItem == *(*(&v19 + 1) + 8 * i))
          {
            lastFocusedItemsByContext = [(CarChromeViewController *)self lastFocusedItemsByContext];
            [lastFocusedItemsByContext setObject:focusedItem forKey:toContextCopy];

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
  topContext = [(CarChromeViewController *)self topContext];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    topContext2 = [(CarChromeViewController *)self topContext];
    visuallySelectedItem = [topContext2 visuallySelectedItem];
  }

  else
  {
    visuallySelectedItem = 0;
  }

  return visuallySelectedItem;
}

- (BOOL)suppressIdleFocus
{
  selfCopy = self;
  topContext = [(CarChromeViewController *)self topContext];
  LOBYTE(selfCopy) = [(CarChromeViewController *)selfCopy isAutohidingContentHiddenForContext:topContext];

  return selfCopy;
}

- (void)pressesCancelled:(id)cancelled withEvent:(id)event
{
  cancelledCopy = cancelled;
  eventCopy = event;
  if ([(ChromeViewController *)self isSuppressed]|| ([(CarChromeViewController *)self topContext], v8 = objc_claimAutoreleasedReturnValue(), v8, !v8))
  {
LABEL_11:
    v12.receiver = self;
    v12.super_class = CarChromeViewController;
    [(CarChromeViewController *)&v12 pressesCancelled:cancelledCopy withEvent:eventCopy];
    goto LABEL_12;
  }

  topContext = [(CarChromeViewController *)self topContext];
  if ((objc_opt_respondsToSelector() & 1) == 0 || ![topContext handlePressesCancelled:cancelledCopy withEvent:eventCopy])
  {
    if (objc_opt_respondsToSelector() & 1) != 0 && ([topContext allowKnobNudgeMapPanning])
    {
      anyObject = [cancelledCopy anyObject];
      v11 = [(CarChromeViewController *)self _nudgeHandlesPress:anyObject];

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

- (void)pressesEnded:(id)ended withEvent:(id)event
{
  endedCopy = ended;
  eventCopy = event;
  if ([(ChromeViewController *)self isSuppressed]|| ([(CarChromeViewController *)self topContext], v8 = objc_claimAutoreleasedReturnValue(), v8, !v8))
  {
LABEL_15:
    v16.receiver = self;
    v16.super_class = CarChromeViewController;
    [(CarChromeViewController *)&v16 pressesEnded:endedCopy withEvent:eventCopy];
    goto LABEL_16;
  }

  topContext = [(CarChromeViewController *)self topContext];
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    if (![(CarChromeViewController *)self _canSelectAlternateRoutes])
    {
      goto LABEL_10;
    }

    goto LABEL_8;
  }

  v10 = [topContext handlePressesEnded:endedCopy withEvent:eventCopy];
  if ([(CarChromeViewController *)self _canSelectAlternateRoutes])
  {
LABEL_8:
    routeSelectionController = [(CarChromeViewController *)self routeSelectionController];
    anyObject = [endedCopy anyObject];
    v13 = [routeSelectionController handleKnobPress:anyObject];

    if (v13)
    {
      goto LABEL_9;
    }

LABEL_10:
    if (objc_opt_respondsToSelector() & 1) != 0 && ([topContext allowKnobNudgeMapPanning])
    {
      anyObject2 = [endedCopy anyObject];
      v15 = [(CarChromeViewController *)self _nudgeHandlesPress:anyObject2];

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

- (void)pressesChanged:(id)changed withEvent:(id)event
{
  changedCopy = changed;
  eventCopy = event;
  if ([(ChromeViewController *)self isSuppressed]|| ([(CarChromeViewController *)self topContext], v8 = objc_claimAutoreleasedReturnValue(), v8, !v8))
  {
LABEL_11:
    v12.receiver = self;
    v12.super_class = CarChromeViewController;
    [(CarChromeViewController *)&v12 pressesChanged:changedCopy withEvent:eventCopy];
    goto LABEL_12;
  }

  topContext = [(CarChromeViewController *)self topContext];
  if ((objc_opt_respondsToSelector() & 1) == 0 || ![topContext handlePressesChanged:changedCopy withEvent:eventCopy])
  {
    if (objc_opt_respondsToSelector() & 1) != 0 && ([topContext allowKnobNudgeMapPanning])
    {
      anyObject = [changedCopy anyObject];
      v11 = [(CarChromeViewController *)self _nudgeHandlesPress:anyObject];

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

- (void)pressesBegan:(id)began withEvent:(id)event
{
  beganCopy = began;
  eventCopy = event;
  if ([(ChromeViewController *)self isSuppressed]|| ([(CarChromeViewController *)self topContext], v8 = objc_claimAutoreleasedReturnValue(), v8, !v8))
  {
LABEL_11:
    v12.receiver = self;
    v12.super_class = CarChromeViewController;
    [(CarChromeViewController *)&v12 pressesBegan:beganCopy withEvent:eventCopy];
    goto LABEL_12;
  }

  topContext = [(CarChromeViewController *)self topContext];
  if ((objc_opt_respondsToSelector() & 1) == 0 || ![topContext handlePressesBegan:beganCopy withEvent:eventCopy])
  {
    if (objc_opt_respondsToSelector() & 1) != 0 && ([topContext allowKnobNudgeMapPanning])
    {
      anyObject = [beganCopy anyObject];
      v11 = [(CarChromeViewController *)self _nudgeHandlesPress:anyObject];

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
  window = [v3 window];
  windowScene = [window windowScene];
  focusSystem = [windowScene focusSystem];
  focusedItem = [focusSystem focusedItem];

  isAutohidingContentHiddenForCurrentContext = [(CarChromeViewController *)self isAutohidingContentHiddenForCurrentContext];
  topContext = [(CarChromeViewController *)self topContext];
  LOBYTE(windowScene) = objc_opt_respondsToSelector();

  if ((windowScene & 1) == 0)
  {
    shouldAllowKnobFocusMovement = 0;
    if (focusedItem)
    {
      goto LABEL_3;
    }

LABEL_5:
    v12 = isAutohidingContentHiddenForCurrentContext ^ 1 | shouldAllowKnobFocusMovement;
    return v12 & 1;
  }

  topContext2 = [(CarChromeViewController *)self topContext];
  shouldAllowKnobFocusMovement = [topContext2 shouldAllowKnobFocusMovement];

  if (!focusedItem)
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
  window = [v3 window];
  windowScene = [window windowScene];
  focusSystem = [windowScene focusSystem];
  focusedItem = [focusSystem focusedItem];

  if (!focusedItem)
  {

    [(CarChromeViewController *)self setNeedsFocusUpdate];
  }
}

- (void)enableDoubleTapRecognizerWithBlock:(id)block
{
  blockCopy = block;
  if (blockCopy)
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

      view = [(CarChromeViewController *)self view];
      [view addGestureRecognizer:self->_doubleTapRecognizer];

      doubleTapRecognizer = self->_doubleTapRecognizer;
    }

    if (([(UITapGestureRecognizer *)doubleTapRecognizer isEnabled]& 1) == 0)
    {
      v10 = sub_100006E1C();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        v11 = 134349056;
        selfCopy = self;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEBUG, "[%{public}p] Will enable double tap gesture", &v11, 0xCu);
      }
    }

    [(CarChromeViewController *)self setDoubleTapBlock:blockCopy];
    [(UITapGestureRecognizer *)self->_doubleTapRecognizer setEnabled:1];
  }

  else
  {
    [(CarChromeViewController *)self disableDoubleTapRecognizer];
  }
}

- (void)_handleDoubleTap:(id)tap
{
  doubleTapBlock = [(CarChromeViewController *)self doubleTapBlock];

  if (doubleTapBlock)
  {
    v5 = sub_100006E1C();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      v7 = 134349056;
      selfCopy = self;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "[%{public}p] Will fire doubleTapBlock", &v7, 0xCu);
    }

    doubleTapBlock2 = [(CarChromeViewController *)self doubleTapBlock];
    doubleTapBlock2[2]();
  }
}

- (void)_carOneHandedZoomSettingUpdated:(id)updated
{
  v3 = objc_opt_class();

  [v3 _updateAllowOneHandedZooming];
}

- (void)chromeNavigationDisplayDidRenderRoute:(id)route
{
  v4.receiver = self;
  v4.super_class = CarChromeViewController;
  [(ChromeViewController *)&v4 chromeNavigationDisplayDidRenderRoute:route];
  [(CarChromeViewController *)self captureUserAction:3072];
}

- (void)chromeNavigationDisplay:(id)display didChangePanning:(BOOL)panning animated:(BOOL)animated
{
  animatedCopy = animated;
  v7.receiver = self;
  v7.super_class = CarChromeViewController;
  [(ChromeViewController *)&v7 chromeNavigationDisplay:display didChangePanning:panning animated:?];
  [(ChromeViewController *)self setNeedsUpdateComponent:@"mapcontrols" animated:animatedCopy];
}

- (void)chromeNavigationDisplay:(id)display configurationDidChange:(id)change
{
  v5.receiver = self;
  v5.super_class = CarChromeViewController;
  [(ChromeViewController *)&v5 chromeNavigationDisplay:display configurationDidChange:change];
  [(CarChromeViewController *)self updateZoomControls];
}

- (void)_navigationObscuredTimeoutFired:(id)fired
{
  [(CarChromeViewController *)self _stopNavigationObscuredTimeout];
  if ([(CarChromeViewController *)self isDisplayingNavigation])
  {
    v4 = sub_100006E1C();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      v6 = 134349056;
      selfCopy = self;
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
  isUsingOffline = [v4 isUsingOffline];

  if ((((usingOfflineDataModernMapToken == 0) ^ isUsingOffline) & 1) == 0)
  {
    if (isUsingOffline)
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

- (void)offlineStateChanged:(id)changed
{
  v4 = sub_100006E1C();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 134349056;
    selfCopy = self;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "[%{public}p] UsingOfflineMapsStateChangedNotification fired, will _updateOfflineModernMapToken & reloadStatusBannerAnimated", &v5, 0xCu);
  }

  [(CarChromeViewController *)self _updateOfflineModernMapToken];
  [(CarChromeViewController *)self reloadStatusBannerAnimated:1];
}

- (id)acquireModernMapTokenForReason:(unint64_t)reason
{
  modernMapTokens = self->_modernMapTokens;
  v8 = @"reason";
  v4 = [NSNumber numberWithUnsignedInteger:reason];
  v9 = v4;
  v5 = [NSDictionary dictionaryWithObjects:&v9 forKeys:&v8 count:1];
  v6 = [(MapsTokenStorage *)modernMapTokens tokenWithUserInfo:v5];

  return v6;
}

- (void)_updateModernMapCartographicConfiguration
{
  if ([(CarChromeViewController *)self shouldUseModernMap])
  {
    modernMapTerrainMode = [(CarChromeViewController *)self modernMapTerrainMode];
    modernMapProjectionType = [(CarChromeViewController *)self modernMapProjectionType];
  }

  else
  {
    modernMapTerrainMode = 1;
    modernMapProjectionType = 1;
  }

  v5 = sub_10000B11C();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134349568;
    *&buf[4] = self;
    *&buf[12] = 2048;
    *&buf[14] = modernMapTerrainMode;
    *&buf[22] = 2048;
    *&buf[24] = modernMapProjectionType;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "[%{public}p] _updateModernMapCartographicConfiguration with terrainMode: %ld projectionType: %ld", buf, 0x20u);
  }

  v17 = 0;
  v16 = 0u;
  memset(buf, 0, sizeof(buf));
  mapView = [(ChromeViewController *)self mapView];
  v7 = mapView;
  if (mapView)
  {
    [mapView _cartographicConfiguration];
  }

  else
  {
    v17 = 0;
    v16 = 0u;
    memset(buf, 0, sizeof(buf));
  }

  *&buf[16] = modernMapProjectionType;
  *&buf[24] = modernMapTerrainMode;
  v12 = *&buf[16];
  v13 = v16;
  v14 = v17;
  v11 = *buf;
  mapView2 = [(ChromeViewController *)self mapView];
  v9[0] = v11;
  v9[1] = v12;
  v9[2] = v13;
  v10 = v14;
  [mapView2 _setCartographicConfiguration:v9];
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
  nudgerizer = [(CarChromeViewController *)self nudgerizer];
  [nudgerizer _clearGesturesAndAnimations];

  v4.receiver = self;
  v4.super_class = CarChromeViewController;
  [(ChromeViewController *)&v4 clearMapGesturesAndAnimations];
}

- (void)_locationAuthorizationDidChange:(id)change
{
  v4 = +[MKLocationManager sharedLocationManager];
  if ([v4 isLocationServicesAuthorizationNeeded])
  {
    v5 = sub_100006E1C();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      v12 = 134349056;
      selfCopy2 = self;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "[%{public}p] Location authorization changed, but it's not yet approved", &v12, 0xCu);
    }
  }

  else
  {
    isLocationServicesApproved = [v4 isLocationServicesApproved];
    mapView = [(ChromeViewController *)self mapView];
    [mapView setShowsUserLocation:isLocationServicesApproved];

    v8 = sub_100006E1C();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      isLocationServicesApproved2 = [v4 isLocationServicesApproved];
      v10 = @"NO";
      if (isLocationServicesApproved2)
      {
        v10 = @"YES";
      }

      v11 = v10;
      v12 = 134349314;
      selfCopy2 = self;
      v14 = 2112;
      v15 = v11;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "[%{public}p] mapView.showsUserLocation = %@", &v12, 0x16u);
    }

    v5 = +[NSNotificationCenter defaultCenter];
    [v5 removeObserver:self name:MKLocationManagerApprovalDidChangeNotification object:0];
  }
}

- (void)mapViewNavigationCameraHasStoppedPanning:(id)panning
{
  panningCopy = panning;
  _canZoomIn = [panningCopy _canZoomIn];
  mapControlsOverlay = [(CarChromeViewController *)self mapControlsOverlay];
  [mapControlsOverlay setZoomInEnabled:_canZoomIn];

  _canZoomOut = [panningCopy _canZoomOut];
  mapControlsOverlay2 = [(CarChromeViewController *)self mapControlsOverlay];
  [mapControlsOverlay2 setZoomOutEnabled:_canZoomOut];
}

- (void)mapViewDidFinishRenderingMap:(id)map fullyRendered:(BOOL)rendered
{
  renderedCopy = rendered;
  mapCopy = map;
  v7 = sub_100006E1C();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134349056;
    selfCopy = self;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "[%{public}p] Map view did finish rendering, informing Search pins manager so that it can drop pins.", buf, 0xCu);
  }

  searchPinsManager = [(ChromeViewController *)self searchPinsManager];
  [searchPinsManager mapViewDidBecomeFullyDrawn];

  v9.receiver = self;
  v9.super_class = CarChromeViewController;
  [(CarChromeViewController *)&v9 mapViewDidFinishRenderingMap:mapCopy fullyRendered:renderedCopy];
}

- (id)mapView:(id)view viewForAnnotation:(id)annotation
{
  viewCopy = view;
  annotationCopy = annotation;
  userLocation = [viewCopy userLocation];

  if (userLocation == annotationCopy && ([(ChromeViewController *)self userLocationView], (v15 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v11 = v15;
  }

  else
  {
    v10 = [(ChromeViewController *)self mapViewDelegateForSelector:a2];
    v11 = [v10 mapView:viewCopy viewForAnnotation:annotationCopy];

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

- (void)mapView:(id)view canEnter3DModeDidChange:(BOOL)change
{
  v5.receiver = self;
  v5.super_class = CarChromeViewController;
  [(CarChromeViewController *)&v5 mapView:view canEnter3DModeDidChange:change];
  [(CarChromeViewController *)self _update3DButton];
}

- (void)mapView:(id)view didBecomePitched:(BOOL)pitched
{
  pitchedCopy = pitched;
  v7.receiver = self;
  v7.super_class = CarChromeViewController;
  [(CarChromeViewController *)&v7 mapView:view didBecomePitched:?];
  defaultMapSettings = [(CarChromeViewController *)self defaultMapSettings];
  [defaultMapSettings setPitched:pitchedCopy];

  [(CarChromeViewController *)self _update3DButton];
  [(CarChromeViewController *)self _updateCameraToggleButton];
}

- (void)mapView:(id)view didStopRespondingToGesture:(int64_t)gesture zoomDirection:(int64_t)direction zoomGestureType:(int64_t)type didDecelerate:(BOOL)decelerate tiltDirection:(int64_t)tiltDirection
{
  decelerateCopy = decelerate;
  viewCopy = view;
  if (!gesture)
  {
    v15 = 1001;
LABEL_11:
    [(CarChromeViewController *)self captureUserAction:v15];
    goto LABEL_12;
  }

  if (gesture == 1)
  {
    if (direction == 1)
    {
      v15 = 1043;
    }

    else
    {
      v15 = 1044;
    }

    if (type <= 7)
    {
      v16 = &unk_101212F18;
      if (direction == 1)
      {
        v16 = &unk_101212EF8;
      }

      v15 = v16[type];
    }

    goto LABEL_11;
  }

LABEL_12:
  v17.receiver = self;
  v17.super_class = CarChromeViewController;
  [(CarChromeViewController *)&v17 mapView:viewCopy didStopRespondingToGesture:gesture zoomDirection:direction zoomGestureType:type didDecelerate:decelerateCopy tiltDirection:tiltDirection];
}

- (void)mapView:(id)view canZoomOutDidChange:(BOOL)change
{
  changeCopy = change;
  viewCopy = view;
  mapControlsOverlay = [(CarChromeViewController *)self mapControlsOverlay];
  [mapControlsOverlay setZoomOutEnabled:changeCopy];

  v8.receiver = self;
  v8.super_class = CarChromeViewController;
  [(CarChromeViewController *)&v8 mapView:viewCopy canZoomOutDidChange:changeCopy];
}

- (void)mapView:(id)view canZoomInDidChange:(BOOL)change
{
  changeCopy = change;
  viewCopy = view;
  mapControlsOverlay = [(CarChromeViewController *)self mapControlsOverlay];
  [mapControlsOverlay setZoomInEnabled:changeCopy];

  v8.receiver = self;
  v8.super_class = CarChromeViewController;
  [(CarChromeViewController *)&v8 mapView:viewCopy canZoomInDidChange:changeCopy];
}

- (void)mapView:(id)view regionDidChangeAnimated:(BOOL)animated
{
  animatedCopy = animated;
  viewCopy = view;
  _canZoomIn = [viewCopy _canZoomIn];
  mapControlsOverlay = [(CarChromeViewController *)self mapControlsOverlay];
  [mapControlsOverlay setZoomInEnabled:_canZoomIn];

  _canZoomOut = [viewCopy _canZoomOut];
  mapControlsOverlay2 = [(CarChromeViewController *)self mapControlsOverlay];
  [mapControlsOverlay2 setZoomOutEnabled:_canZoomOut];

  v11 = +[MapsOfflineUIHelper sharedHelper];
  LODWORD(mapControlsOverlay2) = [v11 isUsingOfflineMaps];

  if (mapControlsOverlay2)
  {
    v12 = [[CLLocation alloc] initWithLatitude:self->_mapViewRegion.center.latitude longitude:self->_mapViewRegion.center.longitude];
    v13 = [CLLocation alloc];
    [viewCopy region];
    v15 = v14;
    [viewCopy region];
    v16 = [v13 initWithLatitude:v15 longitude:?];
    [v12 distanceFromLocation:v16];
    v18 = v17;
    Integer = GEOConfigGetInteger();
    GEOConfigGetDouble();
    v21 = v20;
    if (v18 > Integer || ([viewCopy _zoomLevel], vabdd_f64(v22, self->_zoomLevel) > v21))
    {
      [viewCopy region];
      self->_mapViewRegion.center.latitude = v23;
      self->_mapViewRegion.center.longitude = v24;
      self->_mapViewRegion.span.latitudeDelta = v25;
      self->_mapViewRegion.span.longitudeDelta = v26;
      [viewCopy _zoomLevel];
      self->_zoomLevel = v27;
      topContext = [(CarChromeViewController *)self topContext];
      v29 = objc_opt_respondsToSelector();

      if (v29)
      {
        topContext2 = [(CarChromeViewController *)self topContext];
        [topContext2 checkFullTextSearchSupport];
      }
    }
  }

  v31.receiver = self;
  v31.super_class = CarChromeViewController;
  [(ChromeViewController *)&v31 mapView:viewCopy regionDidChangeAnimated:animatedCopy];
}

- (void)mapView:(id)view didDeselectLabelMarker:(id)marker
{
  viewCopy = view;
  markerCopy = marker;
  topContext = [(CarChromeViewController *)self topContext];
  v9 = objc_opt_respondsToSelector();

  if (v9)
  {
    topContext2 = [(CarChromeViewController *)self topContext];
    [topContext2 mapView:viewCopy didDeselectLabelMarker:markerCopy];
  }

  v11.receiver = self;
  v11.super_class = CarChromeViewController;
  [(ChromeViewController *)&v11 mapView:viewCopy didDeselectLabelMarker:markerCopy];
}

- (void)mapView:(id)view didSelectLabelMarker:(id)marker
{
  viewCopy = view;
  markerCopy = marker;
  v8 = sub_100006E1C();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    isRouteEta = [markerCopy isRouteEta];
    v10 = @"NO";
    if (isRouteEta)
    {
      v10 = @"YES";
    }

    v11 = v10;
    *buf = 134349570;
    selfCopy = self;
    v19 = 2112;
    v20 = markerCopy;
    v21 = 2112;
    v22 = v11;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "[%{public}p] User didSelectLabelMarker: %@, isRouteETA: %@", buf, 0x20u);
  }

  if ([markerCopy isRouteEta])
  {
    routeSelectionController = [(CarChromeViewController *)self routeSelectionController];
    [routeSelectionController mapView:viewCopy didSelectLabelMarker:markerCopy];
  }

  topContext = [(CarChromeViewController *)self topContext];
  v14 = objc_opt_respondsToSelector();

  if (v14)
  {
    topContext2 = [(CarChromeViewController *)self topContext];
    [topContext2 mapView:viewCopy didSelectLabelMarker:markerCopy];
  }

  v16.receiver = self;
  v16.super_class = CarChromeViewController;
  [(ChromeViewController *)&v16 mapView:viewCopy didSelectLabelMarker:markerCopy];
}

- (BOOL)mapView:(id)view shouldSelectLabelMarker:(id)marker
{
  markerCopy = marker;
  v14.receiver = self;
  v14.super_class = CarChromeViewController;
  [(ChromeViewController *)&v14 mapView:view shouldSelectLabelMarker:markerCopy];
  if ([(CarChromeViewController *)self _canSelectAlternateRoutes])
  {
    isRouteEta = [markerCopy isRouteEta];
  }

  else
  {
    isRouteEta = 0;
  }

  v8 = sub_100006E1C();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    if (isRouteEta)
    {
      v9 = @"YES";
    }

    else
    {
      v9 = @"NO";
    }

    v10 = v9;
    if ([markerCopy isRouteEta])
    {
      v11 = @"YES";
    }

    else
    {
      v11 = @"NO";
    }

    v12 = v11;
    *buf = 134349570;
    selfCopy = self;
    v17 = 2112;
    v18 = v10;
    v19 = 2112;
    v20 = v12;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "[%{public}p] shouldSelectLabelMarker: %@, isRouteETA: %@", buf, 0x20u);
  }

  return isRouteEta;
}

- (void)mapView:(id)view didFailToLocateUserWithError:(id)error
{
  viewCopy = view;
  errorCopy = error;
  v15.receiver = self;
  v15.super_class = CarChromeViewController;
  [(CarChromeViewController *)&v15 mapView:viewCopy didFailToLocateUserWithError:errorCopy];
  if (([viewCopy hasUserLocation] & 1) == 0)
  {
    v8 = +[CarDisplayController sharedInstance];
    isCurrentlyConnectedToCarAppScene = [v8 isCurrentlyConnectedToCarAppScene];

    if (isCurrentlyConnectedToCarAppScene)
    {
      domain = [errorCopy domain];
      v11 = [domain isEqualToString:MKLocationErrorDomain];

      if (v11)
      {
        v12 = sub_100006E1C();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
        {
          *buf = 134349056;
          selfCopy2 = self;
          _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEBUG, "[%{public}p] Notified did fail to locate user, will request location services error alert", buf, 0xCu);
        }

        v13 = +[UIApplication sharedMapsDelegate];
        [v13 showLocationServicesAlertWithError:errorCopy];

        v14 = sub_100006E1C();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
        {
          *buf = 134349056;
          selfCopy2 = self;
          _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEBUG, "[%{public}p] Will force user tracking to None and hide user location", buf, 0xCu);
        }

        [viewCopy setUserTrackingMode:0];
        [viewCopy setShowsUserLocation:0];
      }
    }
  }
}

- (void)mapView:(id)view didUpdateUserLocation:(id)location
{
  v14.receiver = self;
  v14.super_class = CarChromeViewController;
  [(CarChromeViewController *)&v14 mapView:view didUpdateUserLocation:location];
  v5 = +[MKLocationManager sharedLocationManager];
  [v5 vehicleHeadingOrCourse];
  v7 = v6;
  if (v6 > -1.0 != [(CarChromeViewController *)self haveVehicleDirection])
  {
    [(CarChromeViewController *)self setHaveVehicleDirection:v7 > -1.0];
    [(ChromeViewController *)self setNeedsUpdateMapInsets];
  }

  v8 = +[MNNavigationService sharedService];
  isInNavigatingState = [v8 isInNavigatingState];

  if (v7 == -1.0)
  {
    v10 = isInNavigatingState;
  }

  else
  {
    v10 = 1;
  }

  userLocationView = [(ChromeViewController *)self userLocationView];
  mode = [userLocationView mode];

  if (mode != v10)
  {
    userLocationView2 = [(ChromeViewController *)self userLocationView];
    [userLocationView2 setMode:v10];
  }
}

- (BOOL)shouldRecenterAndZoom
{
  configuringMapView = self->_configuringMapView;
  topContext = [(CarChromeViewController *)self topContext];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    topContext2 = [(CarChromeViewController *)self topContext];
    configuringMapView = [topContext2 allowMapZoomAndRecentering];
  }

  return configuringMapView;
}

- (BOOL)mapSettings:(id)settings shouldApplyAnimated:(BOOL *)animated
{
  settingsCopy = settings;
  if (sub_10008B2E8() && [(ChromeMapSettings *)settingsCopy type]== 1 && ([(ChromeViewController *)self setNeedsUpdateComponent:@"navigationDisplay" animated:*animated], [(ChromeMapSettings *)settingsCopy pitched]))
  {
    v7 = [(CarChromeViewController *)self shouldAnimateMapTransition:*animated];
    v8 = 0;
    *animated = v7;
  }

  else if (self->_defaultMapSettings == settingsCopy && ![(CarChromeViewController *)self shouldRecenterAndZoom])
  {
    v10 = sub_100006E1C();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      v11 = 134349056;
      selfCopy = self;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEBUG, "[%{public}p] Will not recenter and zoom, not allowed", &v11, 0xCu);
    }

    v8 = 0;
  }

  else
  {
    if (animated)
    {
      *animated = [(CarChromeViewController *)self shouldAnimateMapTransition:*animated];
    }

    v8 = 1;
  }

  return v8;
}

- (void)updateComponent:(id)component forTiming:(unint64_t)timing withAnimation:(id)animation
{
  componentCopy = component;
  animationCopy = animation;
  if (componentCopy == @"cards")
  {
    topContext = [(CarChromeViewController *)self topContext];
    [(CarChromeViewController *)self _updateCardsForContext:topContext withAnimation:animationCopy completion:0];
LABEL_14:

    goto LABEL_15;
  }

  if (componentCopy != @"statusBanner")
  {
    if (componentCopy == @"accessories")
    {
      topContext = [(CarChromeViewController *)self topContext];
      [(CarChromeViewController *)self _reloadAccessoriesForContext:topContext withAnimation:animationCopy];
    }

    else
    {
      if (componentCopy != @"mapcontrols")
      {
        if (componentCopy != @"mapInsets")
        {
LABEL_19:
          v19.receiver = self;
          v19.super_class = CarChromeViewController;
          [(ChromeViewController *)&v19 updateComponent:componentCopy forTiming:timing withAnimation:animationCopy];
          goto LABEL_15;
        }

        if (![(ChromeViewController *)self isRunningNavigationDisplay])
        {
          mapView = [(ChromeViewController *)self mapView];
          if ([mapView userTrackingMode] == 2)
          {
            v11 = +[MKLocationManager sharedLocationManager];
            [v11 vehicleHeadingOrCourse];
            v13 = v12;

            if (v13 > -1.0)
            {
              view = [(CarChromeViewController *)self view];
              [view bounds];
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

      topContext = [(CarChromeViewController *)self topContext];
      [(CarChromeViewController *)self _reloadMapControlsForContext:topContext withAnimation:animationCopy];
    }

    goto LABEL_14;
  }

  [(CarChromeViewController *)self _reloadStatusBannerWithAnimation:animationCopy];
LABEL_15:
}

- (void)willUpdateComponents:(id)components withAnimation:(id)animation
{
  componentsCopy = components;
  animationCopy = animation;
  v13.receiver = self;
  v13.super_class = CarChromeViewController;
  [(ChromeViewController *)&v13 willUpdateComponents:componentsCopy withAnimation:animationCopy];
  v8 = [NSSet setWithObjects:@"cards", @"statusBanner", 0];
  v9 = [componentsCopy intersectsSet:v8];

  v10 = 1.0;
  if (v9)
  {
    goto LABEL_4;
  }

  v11 = [NSSet setWithObjects:@"accessories", 1.0, @"mapcontrols", 0];
  v12 = [componentsCopy intersectsSet:v11];

  if (v12)
  {
    v10 = 0.1;
LABEL_4:
    [animationCopy setDuration:v10];
  }
}

- (BOOL)shouldAnimateMapTransition:(BOOL)transition
{
  if (!transition)
  {
    return 0;
  }

  if (![(ChromeViewController *)self isTransitioning])
  {
    return 1;
  }

  topContext = [(CarChromeViewController *)self topContext];
  previousTopContext = [(ChromeViewController *)self previousTopContext];
  if ([topContext showsMapView])
  {
    showsMapView = [previousTopContext showsMapView];
  }

  else
  {
    showsMapView = 0;
  }

  return showsMapView;
}

- (void)prepareMapViewForFirstUse
{
  v26.receiver = self;
  v26.super_class = CarChromeViewController;
  [(ChromeViewController *)&v26 prepareMapViewForFirstUse];
  mapView = [(ChromeViewController *)self mapView];
  v4 = [[MapViewResponder alloc] initWithMapView:mapView];
  mapViewResponder = self->_mapViewResponder;
  self->_mapViewResponder = v4;

  [(CarMapNudgerizer *)self->_nudgerizer setMapView:mapView];
  [(ChromeMapSettings *)self->_defaultMapSettings setMapView:mapView];
  [(CarRouteSelectionController *)self->_routeSelectionController setMapView:mapView];
  [(CarChromeViewController *)self _updateOfflineModernMapToken];
  self->_configuringMapView = 1;
  _mapLayer = [mapView _mapLayer];
  [_mapLayer setNavigationShieldSize:5];

  _mapLayer2 = [mapView _mapLayer];
  [_mapLayer2 setShieldSize:4];

  _mapLayer3 = [mapView _mapLayer];
  [_mapLayer3 setShieldIdiom:1];

  _mapLayer4 = [mapView _mapLayer];
  [_mapLayer4 setLabelScaleFactor:2];

  _mapLayer5 = [mapView _mapLayer];
  [_mapLayer5 setApplicationUILayout:1];

  [mapView setShowsTraffic:1];
  [mapView _setShowsTrafficIncidents:1];
  v25 = 0;
  v23 = 0u;
  v24 = 0u;
  v22 = 0u;
  if (mapView)
  {
    [mapView _cartographicConfiguration];
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
  [mapView _setCartographicConfiguration:v20];
  [mapView setCompassEnabled:0];
  [mapView setScaleEnabled:0];
  [mapView _setUseVehicleHeading:1];
  [mapView _setCanSelectPOIs:{-[CarChromeViewController _canSelectAlternateRoutes](self, "_canSelectAlternateRoutes")}];
  v11 = +[UIColor _maps_keyColor];
  [mapView setTintColor:v11];

  [mapView _setShouldLoadFallbackTiles:0];
  _panningGestureRecognizer = [mapView _panningGestureRecognizer];
  [_panningGestureRecognizer setAllowedTouchTypes:&off_1016EC740];

  _oneHandedZoomGestureRecognizer = [mapView _oneHandedZoomGestureRecognizer];
  [_oneHandedZoomGestureRecognizer setAllowedPressTypes:&off_1016EC758];
  v14 = [[CarOneHandedZoomConfiguration alloc] initWithGestureRecongizer:_oneHandedZoomGestureRecognizer];
  [_oneHandedZoomGestureRecognizer setConfiguration:v14];

  [mapView _setShowsVenues:0];
  [mapView _setLoadLookAroundAvailability:0];
  [(CarChromeViewController *)self _resetMapViewDefaults:mapView];
  _maps_mapsSceneDelegate = [(CarChromeViewController *)self _maps_mapsSceneDelegate];
  entryPointsCoordinator = [_maps_mapsSceneDelegate entryPointsCoordinator];
  didLaunchWithExplicitIntent = [entryPointsCoordinator didLaunchWithExplicitIntent];

  if ((didLaunchWithExplicitIntent & 1) == 0)
  {
    defaultMapSettings = [(CarChromeViewController *)self defaultMapSettings];
    [defaultMapSettings applyToMapViewAnimated:0 duration:0 completion:0.0];
  }

  traitCollection = [(CarChromeViewController *)self traitCollection];
  -[CarChromeViewController _updateMapUserInterfaceStyle:animated:](self, "_updateMapUserInterfaceStyle:animated:", [traitCollection _car_userInterfaceStyle], 1);
}

- (void)_resetMapViewDefaults:(id)defaults
{
  if (defaults)
  {
    defaultsCopy = defaults;
    v5 = sub_100006E1C();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      *v8 = 134349056;
      *&v8[4] = self;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "[%{public}p] Will reset mapView default settings", v8, 0xCu);
    }

    [defaultsCopy setZoomEnabled:0];
    allowOneHandedZooming = [objc_opt_class() allowOneHandedZooming];
    _oneHandedZoomGestureRecognizer = [defaultsCopy _oneHandedZoomGestureRecognizer];
    [_oneHandedZoomGestureRecognizer setEnabled:allowOneHandedZooming];

    [defaultsCopy setShowsUserLocation:1];
    *&v8[1] = *(VKAnnotationTrackingBehaviorDefault + 1);
    *&v8[16] = VKAnnotationTrackingBehaviorDefault[2];
    v8[0] = 0;
    [defaultsCopy _setUserTrackingBehavior:v8];
  }
}

- (void)_performMapUpdateToUserInterfaceStyle:(int64_t)style animation:(id)animation
{
  animationCopy = animation;
  v7 = sub_10004F508();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    if (style >= 3)
    {
      style = [NSString stringWithFormat:@"<Unknown %ld>", style];
    }

    else
    {
      style = off_101622790[style];
    }

    BOOL = GEOConfigGetBOOL();
    v10 = @"NO";
    if (BOOL)
    {
      v10 = @"YES";
    }

    v11 = v10;
    *buf = 134349570;
    selfCopy3 = self;
    v24 = 2112;
    v25 = style;
    v26 = 2112;
    v27 = v11;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "[%{public}p] In _performMapUpdateToUserInterfaceStyle: %@, CarPlayMapAppearanceShouldFollowUserInterfaceStyle: %@", buf, 0x20u);
  }

  v12 = sub_10004F508();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    mapView = [(ChromeViewController *)self mapView];
    traitCollection = [mapView traitCollection];
    _car_userInterfaceStyle = [traitCollection _car_userInterfaceStyle];
    if (_car_userInterfaceStyle >= 3)
    {
      v16 = [NSString stringWithFormat:@"<Unknown %ld>", _car_userInterfaceStyle];
    }

    else
    {
      v16 = off_101622790[_car_userInterfaceStyle];
    }

    *buf = 134349314;
    selfCopy3 = self;
    v24 = 2112;
    v25 = v16;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "[%{public}p] self.mapView.traitCollection._car_userInterfaceStyle: %@", buf, 0x16u);
  }

  v17 = sub_10004F508();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
  {
    mapView2 = [(ChromeViewController *)self mapView];
    overrideUserInterfaceStyle = [mapView2 overrideUserInterfaceStyle];
    if (overrideUserInterfaceStyle >= 3)
    {
      v20 = [NSString stringWithFormat:@"<Unknown %ld>", overrideUserInterfaceStyle];
    }

    else
    {
      v20 = off_101622790[overrideUserInterfaceStyle];
    }

    *buf = 134349314;
    selfCopy3 = self;
    v24 = 2112;
    v25 = v20;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, "[%{public}p] self.mapView.overrideUserInterfaceStyle: %@", buf, 0x16u);
  }

  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_100596A88;
  v21[3] = &unk_101661650;
  v21[4] = self;
  v21[5] = style;
  [animationCopy addAnimations:v21 completion:0];
}

- (void)_updateMapUserInterfaceStyle:(int64_t)style animated:(BOOL)animated
{
  animatedCopy = animated;
  v7 = sub_10004F508();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    if (style >= 3)
    {
      style = [NSString stringWithFormat:@"<Unknown %ld>", style];
    }

    else
    {
      style = off_101622790[style];
    }

    *buf = 134349314;
    selfCopy2 = self;
    v17 = 2112;
    v18 = style;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "[%{public}p] In _updateMapUserInterfaceStyle : %@", buf, 0x16u);
  }

  v9 = sub_10004F508();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    mapView = [(ChromeViewController *)self mapView];
    _showsNightMode = [mapView _showsNightMode];
    v12 = @"NO";
    if (_showsNightMode)
    {
      v12 = @"YES";
    }

    v13 = v12;
    *buf = 134349314;
    selfCopy2 = self;
    v17 = 2112;
    v18 = v13;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "[%{public}p] In _updateMapUserInterfaceStyle self.mapView.showsNightMode : %@", buf, 0x16u);
  }

  v14 = [GroupAnimation animationForAnimatedFlag:animatedCopy];
  [(CarChromeViewController *)self _performMapUpdateToUserInterfaceStyle:style animation:v14];
  [v14 runWithDuration:196608 delay:2.0 options:0.0];
}

- (void)_updateMapToCurrentUserInterfaceStyleAnimated:(BOOL)animated
{
  animatedCopy = animated;
  traitCollection = [(CarChromeViewController *)self traitCollection];
  -[CarChromeViewController _updateMapUserInterfaceStyle:animated:](self, "_updateMapUserInterfaceStyle:animated:", [traitCollection _car_userInterfaceStyle], animatedCopy);
}

- (void)_carPlayWindowMapStyleDidChange:(id)change
{
  changeCopy = change;
  object = [changeCopy object];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = object;
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
      selfCopy4 = "[CarChromeViewController _carPlayWindowMapStyleDidChange:]";
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
        selfCopy4 = v31;
        _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
      }
    }

    v11 = sub_10004F508();
    if (!os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_12;
    }

    *buf = 134349314;
    selfCopy4 = self;
    v34 = 2112;
    v35 = changeCopy;
    v14 = "[%{public}p] was notified from an unsupported window scene: %@";
    v15 = v11;
    v16 = OS_LOG_TYPE_FAULT;
    goto LABEL_11;
  }

  if (([(CarChromeViewController *)self isViewLoaded]& 1) != 0)
  {
    view = [(CarChromeViewController *)self view];
    window = [view window];

    v10 = sub_10004F508();
    v11 = v10;
    if (v7 != window)
    {
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        view2 = [(CarChromeViewController *)self view];
        window2 = [view2 window];
        *buf = 134349570;
        selfCopy4 = self;
        v34 = 2112;
        v35 = v7;
        v36 = 2112;
        *v37 = window2;
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

    selfCopy3 = self;
    if (!selfCopy3)
    {
      selfCopy3 = @"<nil>";
      goto LABEL_23;
    }

    v18 = objc_opt_class();
    v19 = NSStringFromClass(v18);
    if (objc_opt_respondsToSelector())
    {
      v20 = [(CarChromeViewController *)selfCopy3 performSelector:"accessibilityIdentifier"];
      v21 = v20;
      if (v20 && ![v20 isEqualToString:v19])
      {
        selfCopy3 = [NSString stringWithFormat:@"%@<%p, %@>", v19, selfCopy3, v21];

        goto LABEL_21;
      }
    }

    selfCopy3 = [NSString stringWithFormat:@"%@<%p>", v19, selfCopy3];
LABEL_21:

LABEL_23:
    v23 = selfCopy3;
    sceneType = [(CarChromeViewController *)selfCopy3 sceneType];
    if (sceneType > 6)
    {
      v25 = @".Unknown";
    }

    else
    {
      v25 = off_101622758[sceneType];
    }

    traitCollection = [(CarChromeViewController *)selfCopy3 traitCollection];
    _car_userInterfaceStyle = [traitCollection _car_userInterfaceStyle];
    if (_car_userInterfaceStyle >= 3)
    {
      v28 = [NSString stringWithFormat:@"<Unknown %ld>", _car_userInterfaceStyle];
    }

    else
    {
      v28 = off_101622790[_car_userInterfaceStyle];
    }

    *buf = 138544130;
    selfCopy4 = v23;
    v34 = 2112;
    v35 = selfCopy3;
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
    selfCopy4 = self;
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

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  v15.receiver = self;
  v15.super_class = CarChromeViewController;
  [(CarChromeViewController *)&v15 traitCollectionDidChange:changeCopy];
  _car_userInterfaceStyle = [changeCopy _car_userInterfaceStyle];
  traitCollection = [(CarChromeViewController *)self traitCollection];
  _car_userInterfaceStyle2 = [traitCollection _car_userInterfaceStyle];

  if (_car_userInterfaceStyle != _car_userInterfaceStyle2)
  {
    v8 = sub_10004F508();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      _car_userInterfaceStyle3 = [changeCopy _car_userInterfaceStyle];
      if (_car_userInterfaceStyle3 >= 3)
      {
        v10 = [NSString stringWithFormat:@"<Unknown %ld>", _car_userInterfaceStyle3];
      }

      else
      {
        v10 = off_101622790[_car_userInterfaceStyle3];
      }

      v11 = v10;
      traitCollection2 = [(CarChromeViewController *)self traitCollection];
      _car_userInterfaceStyle4 = [traitCollection2 _car_userInterfaceStyle];
      if (_car_userInterfaceStyle4 >= 3)
      {
        v14 = [NSString stringWithFormat:@"<Unknown %ld>", _car_userInterfaceStyle4];
      }

      else
      {
        v14 = off_101622790[_car_userInterfaceStyle4];
      }

      *buf = 134349570;
      selfCopy = self;
      v18 = 2112;
      v19 = v11;
      v20 = 2112;
      v21 = v14;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "[%{public}p] In traitCollectionDidChange : _car_userInterfaceStyle changed from : %@ to : %@", buf, 0x20u);
    }

    [(MapsLightLevelController *)self->_lightLevelController reloadForChangedLightLevelTrackers];
  }
}

- (void)_presentAnyPendingAlert:(BOOL)alert
{
  alertCopy = alert;
  currentAlertViewController = self->_currentAlertViewController;
  presentedViewController = [(CarChromeViewController *)self presentedViewController];

  if (currentAlertViewController != presentedViewController)
  {
    presentedViewController2 = [(CarChromeViewController *)self presentedViewController];

    if (presentedViewController2)
    {
      v15[0] = _NSConcreteStackBlock;
      v15[1] = 3221225472;
      v15[2] = sub_100597720;
      v15[3] = &unk_101661AE0;
      v15[4] = self;
      v16 = alertCopy;
      [(CarChromeViewController *)self dismissViewControllerAnimated:alertCopy completion:v15];
      return;
    }

    if (self->_currentAlertViewController)
    {
      v8 = sub_100006E1C();
      if (!os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
LABEL_15:

        [(CarChromeViewController *)self presentViewController:self->_currentAlertViewController animated:alertCopy completion:0];
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
      selfCopy = self;
      v19 = 2112;
      v20 = v14;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "[%{public}p] Ready for new alert, presenting %@", buf, 0x16u);

      goto LABEL_15;
    }
  }
}

- (void)_dismissAlertViewController:(id)controller animated:(BOOL)animated
{
  animatedCopy = animated;
  controllerCopy = controller;
  currentAlertViewController = self->_currentAlertViewController;
  if (currentAlertViewController != controllerCopy)
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
          v31 = controllerCopy;
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
          selfCopy3 = self;
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

    v22 = controllerCopy;
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
    selfCopy3 = self;
    v41 = 2112;
    v42 = v27;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "[%{public}p] Will not dismiss current alert, we do not have one presented (specified:%@)", buf, 0x16u);

    goto LABEL_39;
  }

  v17 = sub_100006E1C();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
  {
    alertTitle = [(CarAlertViewController *)self->_currentAlertViewController alertTitle];
    alertTitle2 = [(CarAlertViewController *)self->_currentAlertViewController alertTitle];
    v20 = [alertTitle2 length];
    if (v20 > 0x13)
    {
      v21 = 20;
    }

    else
    {
      alertTitle3 = [(CarAlertViewController *)self->_currentAlertViewController alertTitle];
      v21 = [alertTitle3 length];
    }

    v28 = [alertTitle substringToIndex:v21];
    *buf = 134349314;
    selfCopy3 = self;
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
  v38 = animatedCopy;
  [(CarChromeViewController *)self dismissViewControllerAnimated:animatedCopy completion:v37];
LABEL_40:
}

- (void)_presentAlertViewController:(id)controller animated:(BOOL)animated
{
  animatedCopy = animated;
  controllerCopy = controller;
  presentedViewController = [(CarChromeViewController *)self presentedViewController];
  v10 = sub_100006E1C();
  v11 = os_log_type_enabled(&v10->super.super.super, OS_LOG_TYPE_INFO);
  if (presentedViewController == controllerCopy)
  {
    if (v11)
    {
      alertTitle = [controllerCopy alertTitle];
      alertTitle2 = [controllerCopy alertTitle];
      v18 = [alertTitle2 length];
      if (v18 > 0x13)
      {
        v19 = 20;
      }

      else
      {
        alertTitle3 = [controllerCopy alertTitle];
        v19 = [alertTitle3 length];
      }

      v28 = v18 < 0x14;
      v29 = [alertTitle substringToIndex:v19];
      *buf = 134349314;
      selfCopy4 = self;
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
      alertTitle4 = [controllerCopy alertTitle];
      alertTitle5 = [controllerCopy alertTitle];
      v14 = [alertTitle5 length];
      if (v14 > 0x13)
      {
        v15 = 20;
      }

      else
      {
        alertTitle6 = [controllerCopy alertTitle];
        v15 = [alertTitle6 length];
      }

      v20 = v14 < 0x14;
      v21 = [alertTitle4 substringToIndex:v15];
      *buf = 134349314;
      selfCopy4 = self;
      v38 = 2112;
      v39 = v21;
      _os_log_impl(&_mh_execute_header, &v10->super.super.super, OS_LOG_TYPE_INFO, "[%{public}p] Asked to present alert: %@", buf, 0x16u);
      if (v20)
      {
      }
    }

    v10 = self->_currentAlertViewController;
    objc_storeStrong(&self->_currentAlertViewController, controller);
    [(CarAlertViewController *)self->_currentAlertViewController setModalPresentationStyle:5];
    if (v10)
    {
      v22 = sub_100006E1C();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
      {
        *buf = 134349056;
        selfCopy4 = self;
        _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_INFO, "[%{public}p] Already have an alert showing, transition to the new one", buf, 0xCu);
      }

      [(CarAlertViewController *)v10 supersede];
    }

    objc_initWeak(&location, self);
    if (presentedViewController)
    {
      objc_copyWeak(&v33, &location);
      v34 = animatedCopy;
      [CarChromeViewController dismissViewControllerAnimated:"dismissViewControllerAnimated:completion:" completion:?];
      objc_destroyWeak(&v33);
    }

    else
    {
      v23 = sub_100006E1C();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
      {
        alertTitle7 = [(CarAlertViewController *)self->_currentAlertViewController alertTitle];
        alertTitle8 = [(CarAlertViewController *)self->_currentAlertViewController alertTitle];
        v26 = [alertTitle8 length];
        if (v26 > 0x13)
        {
          v27 = 20;
        }

        else
        {
          alertTitle9 = [(CarAlertViewController *)self->_currentAlertViewController alertTitle];
          v27 = [alertTitle9 length];
        }

        v30 = [alertTitle7 substringToIndex:v27];
        *buf = 134349314;
        selfCopy4 = self;
        v38 = 2112;
        v39 = v30;
        _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_INFO, "[%{public}p] Will show a new alert %@", buf, 0x16u);
        if (v26 <= 0x13)
        {
        }
      }

      [(CarChromeViewController *)self presentViewController:self->_currentAlertViewController animated:animatedCopy completion:0];
    }

    objc_destroyWeak(&location);
  }
}

- (id)_presentSearchRefinementWithUserInfo:(id)info completionHandler:(id)handler
{
  infoCopy = info;
  handlerCopy = handler;
  objc_initWeak(&location, self);
  v8 = [infoCopy objectForKeyedSubscript:@"kMapsInterruptionSearchRefinementResults"];
  if (v8)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v16 = sub_10006D178();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315906;
        selfCopy2 = "[CarChromeViewController _presentSearchRefinementWithUserInfo:completionHandler:]";
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
          selfCopy2 = v18;
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
    v22 = handlerCopy;
    v10 = [(CarDisambiguationModeController *)v9 initWithSearchInfo:v8 completionBlock:v21];
    v11 = sub_100006E1C();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      *buf = 134349056;
      selfCopy2 = self;
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
      selfCopy2 = self;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEBUG, "[%{public}p] Will not present search refinement, no search info provided", buf, 0xCu);
    }

    v13 = 0;
  }

  objc_destroyWeak(&location);

  return v13;
}

- (id)presentInterruptionOfKind:(int64_t)kind userInfo:(id)info completionHandler:(id)handler
{
  infoCopy = info;
  handlerCopy = handler;
  topContext = [(CarChromeViewController *)self topContext];
  if ((objc_opt_respondsToSelector() & 1) != 0 && [topContext canPresentInterruptionOfKind:kind])
  {
    if ((objc_opt_respondsToSelector() & 1) == 0)
    {
      v91 = sub_10006D178();
      if (os_log_type_enabled(v91, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315906;
        selfCopy4 = "[CarChromeViewController presentInterruptionOfKind:userInfo:completionHandler:]";
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
          selfCopy4 = v93;
          _os_log_impl(&_mh_execute_header, v92, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
        }
      }
    }

    v10 = sub_100006E1C();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      v11 = objc_opt_class();
      *buf = 134349826;
      selfCopy4 = self;
      v124 = 2112;
      v125 = v11;
      v126 = 2048;
      *v127 = kind;
      *&v127[8] = 2112;
      *&v127[10] = infoCopy;
      v12 = v11;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEBUG, "[%{public}p] Will ask top context %@ to present interruption (kind:%ld, userInfo:%@)", buf, 0x2Au);
    }

    v13 = [topContext presentInterruptionOfKind:kind userInfo:infoCopy completionHandler:handlerCopy];
    goto LABEL_13;
  }

  if (kind == 4)
  {
    v13 = [(CarChromeViewController *)self _presentSearchRefinementWithUserInfo:infoCopy completionHandler:handlerCopy];
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
      selfCopy4 = self;
      v124 = 2112;
      v125 = v17;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "[%{public}p] Asking interruption manager %@ to present the interruption", buf, 0x16u);
    }

    v13 = [(InterruptionManager *)self->_interruptionManager presentUnhandledInterruptionOfKind:kind userInfo:infoCopy completionHandler:handlerCopy];
    goto LABEL_13;
  }

  if (v16)
  {
    *buf = 134349056;
    selfCopy4 = self;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "[%{public}p] Handing interruption with legacy alerts", buf, 0xCu);
  }

  v107 = [infoCopy objectForKeyedSubscript:@"kMapsInterruptionActions"];
  title3 = 680;
  val = self->_currentAlertViewController;
  if ([(CarAlertViewController *)val tag]== kind)
  {
    [(CarAlertViewController *)val supersede];
    [(CarAlertViewController *)val reset];
  }

  else
  {
    v20 = objc_alloc_init(CarAlertViewController);

    [(CarAlertViewController *)v20 setTag:kind];
    val = v20;
  }

  v18 = 0;
  switch(kind)
  {
    case 1:
      v50 = [infoCopy objectForKeyedSubscript:@"kMapsInterruptionTitle"];
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

      v22 = [infoCopy objectForKeyedSubscript:@"kMapsInterruptionMessage"];
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
      v21 = [infoCopy objectForKeyedSubscript:@"kMapsInterruptionTitle"];
      [(CarAlertViewController *)val setAlertTitle:v21];

      v22 = [infoCopy objectForKeyedSubscript:@"kMapsInterruptionMessage"];
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
      v22 = [infoCopy objectForKeyedSubscript:@"kMapsInterruptionSharedTripSenderName"];
      v102 = [infoCopy objectForKeyedSubscript:@"kMapsInterruptionSharedTripSenderHandle"];
      if (!v22 || !v102)
      {
        v94 = sub_10006D178();
        if (os_log_type_enabled(v94, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315906;
          selfCopy4 = "[CarChromeViewController presentInterruptionOfKind:userInfo:completionHandler:]";
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
            selfCopy4 = v96;
            _os_log_impl(&_mh_execute_header, v95, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
          }
        }
      }

      v58 = +[NSBundle mainBundle];
      v59 = [v58 localizedStringForKey:@"Maps always shares as [name] [email/phone] [CarPlay]" value:@"localized string not found" table:0];
      v102 = [NSString stringWithFormat:v59, v22, v102];

      v60 = [NSMutableAttributedString alloc];
      v61 = +[CarAlertViewController defaultMessageAttributes];
      v105 = [v60 initWithString:v102 attributes:v61];

      v62 = +[UIColor secondaryLabelColor];
      string = [v105 string];
      v64 = [string rangeOfString:v102];
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
        selfCopy4 = "[CarChromeViewController presentInterruptionOfKind:userInfo:completionHandler:]";
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
        selfCopy4 = v24;
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
      v114 = handlerCopy;
      kindCopy = kind;
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

        title = [(CarAlertViewController *)val title];
        title2 = [(CarAlertViewController *)val title];
        v86 = [title2 length];
        if (v86 > 0x13)
        {
          v87 = 20;
        }

        else
        {
          title3 = [(CarAlertViewController *)val title];
          v87 = [title3 length];
        }

        v88 = v86 < 0x14;
        v89 = [title substringToIndex:v87];
        *buf = 134349826;
        selfCopy4 = self;
        v124 = 2112;
        v125 = v83;
        v126 = 2048;
        *v127 = kind;
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

- (BOOL)dismissCurrentInterruptionOfKind:(int64_t)kind
{
  v5 = [(CarAlertViewController *)self->_currentAlertViewController tag];
  if (v5 == kind)
  {
    [(CarChromeViewController *)self dismissInterruption];
  }

  return v5 == kind;
}

- (void)_carExternalDeviceStateUpdated:(id)updated
{
  v4 = sub_100006E1C();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "Notified car external accessory updated", v8, 2u);
  }

  v5 = +[MapsExternalDevice sharedInstance];
  v6 = [v5 hasLimitedUI] ^ 1;

  mapView = [(ChromeViewController *)self mapView];
  [mapView setVehicleState:v6];
}

- (id)chromeViewItemForContext:(id)context createIfNeeded:(BOOL)needed
{
  neededCopy = needed;
  contextCopy = context;
  if (contextCopy)
  {
    chromeItemsByContext = [(CarChromeViewController *)self chromeItemsByContext];
    v8 = [chromeItemsByContext objectForKey:contextCopy];

    if (!v8 && neededCopy)
    {
      v8 = [CarChromeViewItem itemWithContext:contextCopy];
      chromeItemsByContext2 = [(CarChromeViewController *)self chromeItemsByContext];
      [chromeItemsByContext2 setObject:v8 forKey:contextCopy];
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)contextStackDidUpdateFrom:(id)from to:(id)to withAnimation:(id)animation
{
  fromCopy = from;
  toCopy = to;
  v27.receiver = self;
  v27.super_class = CarChromeViewController;
  animationCopy = animation;
  [(ChromeViewController *)&v27 contextStackDidUpdateFrom:fromCopy to:toCopy withAnimation:animationCopy];
  isAnimated = [animationCopy isAnimated];
  lastObject = [fromCopy lastObject];
  lastObject2 = [toCopy lastObject];
  [(CarChromeViewController *)self _reloadMapControlsForContext:lastObject2 withAnimation:animationCopy];
  [(CarChromeViewController *)self _reloadAccessoriesForContext:lastObject2 withAnimation:animationCopy];
  [(CarChromeViewController *)self _reloadStatusBannerWithAnimation:animationCopy];
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_10059A284;
  v20[3] = &unk_10163B9E0;
  v21 = fromCopy;
  v22 = toCopy;
  selfCopy = self;
  v24 = lastObject;
  v25 = lastObject2;
  v26 = isAnimated;
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_10059A874;
  v18[3] = &unk_101661570;
  v18[4] = self;
  v19 = v25;
  v14 = v25;
  v15 = lastObject;
  v16 = toCopy;
  v17 = fromCopy;
  [animationCopy addPreparation:v20 animations:&stru_101622548 completion:v18];
}

- (void)contextStackWillUpdateFrom:(id)from to:(id)to withAnimation:(id)animation
{
  fromCopy = from;
  toCopy = to;
  animationCopy = animation;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v11 = [toCopy countByEnumeratingWithState:&v18 objects:v22 count:16];
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
          objc_enumerationMutation(toCopy);
        }

        v15 = *(*(&v18 + 1) + 8 * i);
        if ([fromCopy containsObject:v15] & 1) == 0 && (objc_opt_respondsToSelector())
        {
          [v15 setChromeViewController:self];
        }
      }

      v12 = [toCopy countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v12);
  }

  v17.receiver = self;
  v17.super_class = CarChromeViewController;
  [(ChromeViewController *)&v17 contextStackWillUpdateFrom:fromCopy to:toCopy withAnimation:animationCopy];
  mapView = [(ChromeViewController *)self mapView];
  [(CarChromeViewController *)self _resetMapViewDefaults:mapView];
}

- (void)setNotificationLayoutGuide:(id)guide
{
  guideCopy = guide;
  if (!guideCopy)
  {
    goto LABEL_5;
  }

  mapInsetsLayoutGuide = [(ChromeViewController *)self mapInsetsLayoutGuide];
  if (!mapInsetsLayoutGuide || [(ChromeViewController *)self isSuppressed])
  {

LABEL_5:
    notificationLayoutGuide = self->_notificationLayoutGuide;
    self->_notificationLayoutGuide = 0;

    goto LABEL_6;
  }

  isViewLoaded = [(CarChromeViewController *)self isViewLoaded];

  if ((isViewLoaded & 1) == 0)
  {
    goto LABEL_5;
  }

  if (self->_notificationLayoutGuide != guideCopy)
  {
    objc_storeStrong(&self->_notificationLayoutGuide, guide);
    topAnchor = [(UILayoutGuide *)self->_notificationLayoutGuide topAnchor];
    mapInsetsLayoutGuide2 = [(ChromeViewController *)self mapInsetsLayoutGuide];
    bottomAnchor = [mapInsetsLayoutGuide2 bottomAnchor];
    v12 = [topAnchor constraintGreaterThanOrEqualToAnchor:bottomAnchor];
    v14 = v12;
    v13 = [NSArray arrayWithObjects:&v14 count:1];
    [NSLayoutConstraint activateConstraints:v13];
  }

  [(ChromeViewController *)self setNeedsUpdateMapInsets];
LABEL_6:
}

- (BOOL)_shouldMapControlsModifyMapInsetsForContext:(id)context
{
  contextCopy = context;
  if (objc_opt_respondsToSelector())
  {
    shouldMapControlsModifyMapInsets = [contextCopy shouldMapControlsModifyMapInsets];
  }

  else
  {
    shouldMapControlsModifyMapInsets = 0;
  }

  return shouldMapControlsModifyMapInsets;
}

- (BOOL)_shouldAccessoriesModifyMapInsetsForContext:(id)context
{
  contextCopy = context;
  if (GEOConfigGetBOOL() && (objc_opt_respondsToSelector() & 1) != 0)
  {
    shouldAccessoriesModifyMapInsets = [contextCopy shouldAccessoriesModifyMapInsets];
  }

  else
  {
    shouldAccessoriesModifyMapInsets = 0;
  }

  return shouldAccessoriesModifyMapInsets;
}

- (void)viewSafeAreaInsetsDidChange
{
  v3.receiver = self;
  v3.super_class = CarChromeViewController;
  [(CarChromeViewController *)&v3 viewSafeAreaInsetsDidChange];
  [(ChromeViewController *)self setNeedsUpdateMapInsets];
}

- (void)viewDidDisappear:(BOOL)disappear
{
  v6.receiver = self;
  v6.super_class = CarChromeViewController;
  [(CarChromeViewController *)&v6 viewDidDisappear:disappear];
  self->_isCurrentlyVisible = 0;
  v4 = [(ChromeViewController *)self acquireChromeDeactivationTokenForReason:@"view controller no longer in hierarchy"];
  visibilityDeactivationToken = self->_visibilityDeactivationToken;
  self->_visibilityDeactivationToken = v4;

  [(CarChromeViewController *)self _updateAutohideBehavior];
}

- (void)viewWillDisappear:(BOOL)disappear
{
  v4.receiver = self;
  v4.super_class = CarChromeViewController;
  [(CarChromeViewController *)&v4 viewWillDisappear:disappear];
  [(CarChromeViewController *)self _updateAutohideBehavior];
}

- (void)viewDidAppear:(BOOL)appear
{
  v6.receiver = self;
  v6.super_class = CarChromeViewController;
  [(CarChromeViewController *)&v6 viewDidAppear:appear];
  v4 = +[GEOOfflineService shared];
  mapView = [(ChromeViewController *)self mapView];
  [v4 registerMapView:mapView withPriority:{-[CarChromeViewController sceneType](self, "sceneType")}];

  [(CarChromeViewController *)self _updateAutohideBehavior];
  [(CarChromeViewController *)self interruptAutohideForIncidentalInteraction];
}

- (void)viewWillAppear:(BOOL)appear
{
  v5.receiver = self;
  v5.super_class = CarChromeViewController;
  [(CarChromeViewController *)&v5 viewWillAppear:appear];
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
  view = [(CarChromeViewController *)self view];
  [view setTintAdjustmentMode:1];

  backButtonRecognizer = [(CarChromeViewController *)self backButtonRecognizer];

  if (!backButtonRecognizer)
  {
    v5 = [[UITapGestureRecognizer alloc] initWithTarget:self action:"_handleBackButtonPressed:"];
    [(CarChromeViewController *)self setBackButtonRecognizer:v5];

    backButtonRecognizer2 = [(CarChromeViewController *)self backButtonRecognizer];
    [backButtonRecognizer2 setAllowedPressTypes:&off_1016EC728];

    backButtonRecognizer3 = [(CarChromeViewController *)self backButtonRecognizer];
    [backButtonRecognizer3 setDelegate:self];

    backButtonRecognizer4 = [(CarChromeViewController *)self backButtonRecognizer];
    [backButtonRecognizer4 setEnabled:0];
  }

  view2 = [(CarChromeViewController *)self view];
  backButtonRecognizer5 = [(CarChromeViewController *)self backButtonRecognizer];
  [view2 addGestureRecognizer:backButtonRecognizer5];

  v11 = objc_alloc_init(UILayoutGuide);
  cardsLayoutGuide = self->_cardsLayoutGuide;
  self->_cardsLayoutGuide = v11;

  v13 = objc_opt_class();
  v14 = NSStringFromClass(v13);
  v15 = [NSString stringWithFormat:@"%@.cardsLayoutGuide", v14];
  [(UILayoutGuide *)self->_cardsLayoutGuide setIdentifier:v15];

  view3 = [(CarChromeViewController *)self view];
  [view3 addLayoutGuide:self->_cardsLayoutGuide];

  v17 = objc_alloc_init(UILayoutGuide);
  statusBannerLayoutGuide = self->_statusBannerLayoutGuide;
  self->_statusBannerLayoutGuide = v17;

  v19 = objc_opt_class();
  v20 = NSStringFromClass(v19);
  v21 = [NSString stringWithFormat:@"%@.statusBannerLayoutGuide", v20];
  [(UILayoutGuide *)self->_statusBannerLayoutGuide setIdentifier:v21];

  view4 = [(CarChromeViewController *)self view];
  [view4 addLayoutGuide:self->_statusBannerLayoutGuide];

  v23 = objc_alloc_init(UILayoutGuide);
  accessoriesCompactLayoutGuide = self->_accessoriesCompactLayoutGuide;
  self->_accessoriesCompactLayoutGuide = v23;

  v25 = objc_opt_class();
  v26 = NSStringFromClass(v25);
  v27 = [NSString stringWithFormat:@"%@.accessoriesDashboardLayoutGuide", v26];
  [(UILayoutGuide *)self->_accessoriesCompactLayoutGuide setIdentifier:v27];

  view5 = [(CarChromeViewController *)self view];
  [view5 addLayoutGuide:self->_accessoriesCompactLayoutGuide];

  v29 = [[CarCardsOverlay alloc] initWithCarSceneType:[(CarChromeViewController *)self sceneType]];
  [(CarCardsOverlay *)v29 setCardDelegate:self];
  overlayController = [(ChromeViewController *)self overlayController];
  [overlayController addOverlay:v29 inLayoutGuide:self->_cardsLayoutGuide];

  [(CarChromeViewController *)self setCardsOverlay:v29];
  v31 = [[CarStatusBannerOverlay alloc] initWithChromeViewController:self];
  [(CarStatusBannerOverlay *)v31 setDelegate:self];
  overlayController2 = [(ChromeViewController *)self overlayController];
  [overlayController2 addOverlay:v31 inLayoutGuide:self->_statusBannerLayoutGuide];

  [(CarChromeViewController *)self setStatusBannerOverlay:v31];
  v33 = [[CarAccessoriesOverlay alloc] initWithCarSceneType:self->_sceneType];
  if ([(CarChromeViewController *)self sceneType]== 6 && GEOConfigGetBOOL())
  {
    [(CarAccessoriesOverlay *)v33 setIgnoresCollisionConstraints:1];
    overlayController3 = [(ChromeViewController *)self overlayController];
    viewportLayoutGuide = [(ChromeViewController *)self viewportLayoutGuide];
    [overlayController3 addOverlay:v33 inLayoutGuide:viewportLayoutGuide];
  }

  else
  {
    sceneType = [(CarChromeViewController *)self sceneType];
    if (sceneType <= 6 && ((1 << sceneType) & 0x72) != 0 && [(CarChromeViewController *)self sceneType]< 4)
    {
      overlayController3 = [(ChromeViewController *)self overlayController];
      [overlayController3 addOverlay:v33];
    }

    else
    {
      overlayController3 = [(ChromeViewController *)self overlayController];
      [overlayController3 addOverlay:v33 inLayoutGuide:self->_accessoriesCompactLayoutGuide];
    }
  }

  [(CarChromeViewController *)self setAccessoriesOverlay:v33];
  if ([(CarChromeViewController *)self sceneType]<= 3)
  {
    v37 = objc_alloc_init(CarMapControlsOverlay);
    [(CarMapControlsOverlay *)v37 setDelegate:self];
    overlayController4 = [(ChromeViewController *)self overlayController];
    [overlayController4 addOverlay:v37];

    [(CarChromeViewController *)self setMapControlsOverlay:v37];
  }

  mapInsetsLayoutGuide = [(ChromeViewController *)self mapInsetsLayoutGuide];
  topAnchor = [mapInsetsLayoutGuide topAnchor];
  view6 = [(CarChromeViewController *)self view];
  topAnchor2 = [view6 topAnchor];
  v43 = [topAnchor constraintGreaterThanOrEqualToAnchor:topAnchor2 constant:0.0];
  headingUpMapInsetAdjustmentConstraint = self->_headingUpMapInsetAdjustmentConstraint;
  self->_headingUpMapInsetAdjustmentConstraint = v43;

  v45 = [CarFocusContainerGuideController alloc];
  view7 = [(CarChromeViewController *)self view];
  v47 = [(CarFocusContainerGuideController *)v45 initWithHostView:view7];
  focusContainerGuideController = self->_focusContainerGuideController;
  self->_focusContainerGuideController = v47;
}

- (void)loadView
{
  v3 = [[CarChromeContainingView alloc] initWithFrame:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
  [(CarChromeViewController *)self setView:v3];

  v5 = +[UIColor systemBackgroundColor];
  view = [(CarChromeViewController *)self view];
  [view setBackgroundColor:v5];
}

- (ChromeMapSettings)transientMapSettings
{
  v3 = [[ChromeMapSettings alloc] initWithType:0 userInterfaceIdiom:3];
  [(ChromeMapSettings *)v3 setDelegate:self];
  mapView = [(ChromeViewController *)self mapView];
  [(ChromeMapSettings *)v3 setMapView:mapView];

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
    mapView = [(ChromeViewController *)self mapView];
    [(ChromeMapSettings *)self->_defaultMapSettings setMapView:mapView];

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
  sceneType = [(CarChromeViewController *)self sceneType];
  if ((sceneType - 1) > 5)
  {
    v4 = 0;
  }

  else
  {
    v4 = qword_101212EC8[sceneType - 1];
  }

  v5 = [MKMapView alloc];
  view = [(CarChromeViewController *)self view];
  [view bounds];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  BOOL = GEOConfigGetBOOL();
  v16 = [v5 _initWithFrame:0 gestureRecognizerHostView:BOOL showsAttribution:GEOConfigGetBOOL() showsAppleLogo:1 allowsAntialiasing:v4 carDisplayType:{v8, v10, v12, v14}];

  return v16;
}

- (void)didBecomeInactive:(BOOL)inactive
{
  v6.receiver = self;
  v6.super_class = CarChromeViewController;
  [(ChromeViewController *)&v6 didBecomeInactive:?];
  if (!inactive)
  {
    v5 = sub_10004F508();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *buf = 134349056;
      selfCopy = self;
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
  topContext = [(CarChromeViewController *)self topContext];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
  }

  else
  {
    topContext2 = [(CarChromeViewController *)self topContext];
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
    selfCopy = self;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "[%{public}p] is unsuppressing. Will try to activate RG for chrome.", buf, 0xCu);
  }

  v7 = +[CarDisplayController sharedInstance];
  routeGeniusManager = [v7 routeGeniusManager];
  [routeGeniusManager activateIfPossibleForChrome:self];

LABEL_7:
  [(ChromeViewController *)self setNeedsUpdateComponent:@"mapcontrols" animated:0];
  [(ChromeViewController *)self setNeedsUpdateComponent:@"accessories" animated:0];
  [(ChromeViewController *)self setNeedsUpdateComponent:@"statusBanner" animated:0];
  v9 = +[MKLocationManager sharedLocationManager];
  isLocationServicesAuthorizationNeeded = [v9 isLocationServicesAuthorizationNeeded];

  if (isLocationServicesAuthorizationNeeded)
  {
    v11 = +[NSNotificationCenter defaultCenter];
    [v11 addObserver:self selector:"_locationAuthorizationDidChange:" name:MKLocationManagerApprovalDidChangeNotification object:0];
  }

  topContext3 = [(CarChromeViewController *)self topContext];
  [(CarChromeViewController *)self updateCardsForContext:topContext3 animated:0 completion:0];

  [(ChromeViewController *)self setNeedsUpdateComponent:@"navigationDisplay" animated:0];
  currentAlertViewController = self->_currentAlertViewController;
  if (currentAlertViewController)
  {
    presentingViewController = [(CarAlertViewController *)currentAlertViewController presentingViewController];

    if (presentingViewController != self)
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
    selfCopy = self;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "[%{public}p] is suppressing. Will deactivate RG for chrome.", buf, 0xCu);
  }

  v5 = +[CarDisplayController sharedInstance];
  routeGeniusManager = [v5 routeGeniusManager];
  [routeGeniusManager deactivateForChrome:self];

  navigationDisplay = [(ChromeViewController *)self navigationDisplay];
  [navigationDisplay setSuppressed:1];

  [(CarChromeViewController *)self disableDoubleTapRecognizer];
  nudgerizer = [(CarChromeViewController *)self nudgerizer];
  [nudgerizer setActive:0];

  cardsOverlay = [(CarChromeViewController *)self cardsOverlay];
  [cardsOverlay reset];

  notificationLayoutGuide = self->_notificationLayoutGuide;
  self->_notificationLayoutGuide = 0;

  currentAlertViewController = self->_currentAlertViewController;
  if (currentAlertViewController)
  {
    presentingViewController = [(CarAlertViewController *)currentAlertViewController presentingViewController];

    if (presentingViewController == self)
    {
      [(CarChromeViewController *)self dismissViewControllerAnimated:0 completion:0];
    }
  }

  v13.receiver = self;
  v13.super_class = CarChromeViewController;
  [(ChromeViewController *)&v13 didSuppress];
}

- (void)viewDidMoveToWindow:(id)window shouldAppearOrDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  windowCopy = window;
  v11.receiver = self;
  v11.super_class = CarChromeViewController;
  [(CarChromeViewController *)&v11 viewDidMoveToWindow:windowCopy shouldAppearOrDisappear:disappearCopy];
  if (windowCopy)
  {
    v7 = [MapsLightLevelController alloc];
    windowScene = [windowCopy windowScene];
    v9 = [(MapsLightLevelController *)v7 initWithWindowScene:windowScene];
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

- (CarChromeViewController)initWithCarSceneType:(int64_t)type
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
      if (type > 6)
      {
        v10 = @".Unknown";
      }

      else
      {
        v10 = off_101622758[type];
      }

      *buf = 134349314;
      v25 = v8;
      v26 = 2114;
      v27 = v10;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "[%{public}p] initialising with sceneType: %{public}@", buf, 0x16u);
    }

    v8->_sceneType = type;
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
    selfCopy = self;
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
      selfCopy = "[CarChromeViewController dealloc]";
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
        selfCopy = v13;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
      }
    }
  }

  v6 = +[NSNotificationCenter defaultCenter];
  [v6 removeObserver:self];

  v7 = +[CarDisplayController sharedInstance];
  routeGeniusManager = [v7 routeGeniusManager];
  [routeGeniusManager deactivateForChrome:self];

  v14.receiver = self;
  v14.super_class = CarChromeViewController;
  [(ChromeViewController *)&v14 dealloc];
}

@end