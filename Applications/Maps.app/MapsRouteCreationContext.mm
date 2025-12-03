@interface MapsRouteCreationContext
- (BOOL)_wouldDuplicateTrailingAnchorWithCoordinate:(CLLocationCoordinate2D)coordinate;
- (BOOL)chromeDidSelectAnnotationView:(id)view;
- (BOOL)chromeDidSelectClusteredFeatureAnnotationsMarker:(id)marker;
- (BOOL)chromeDidSelectClusteredWaypointMarker:(id)marker;
- (BOOL)chromeDidSelectCustomPOIAnnotation:(id)annotation;
- (BOOL)chromeDidSelectFlyoverTourLabelMarker:(id)marker;
- (BOOL)chromeDidSelectMarkerForMapItem:(id)item;
- (BOOL)chromeDidSelectTrafficIncident:(id)incident latitude:(id)latitude longitude:(id)longitude;
- (BOOL)chromeDidSelectUserLocationAnnotation:(id)annotation;
- (BOOL)chromeShouldAllowSelectingLabelMarker:(id)marker;
- (BOOL)closeLoopEnabled;
- (BOOL)outAndBackEnabled;
- (BOOL)reverseEnabled;
- (BOOL)undoEnabled;
- (BOOL)wantsCompassLayoutControl;
- (ChromeViewController)chromeViewController;
- (MapsRouteCreationContext)initWithExistingMapItems:(id)items;
- (RouteAnnotationsConfiguration)routeAnnotationsConfiguration;
- (id)_anchorNearCoordinate:(CLLocationCoordinate2D)coordinate;
- (id)_anchorNearMapItem:(id)item;
- (id)_anchorNearPoint:(CGPoint)point;
- (id)_anchorPointNearMapItem:(id)item inAnchorPoints:(id)points;
- (id)_errorMessageForError:(id)error directionsError:(id)directionsError request:(id)request isOffline:(BOOL)offline shouldBackoutEdit:(BOOL *)edit;
- (id)_errorMessageForUnsupportedCountry:(id)country;
- (id)_mostRecentlyAddedAnchor;
- (id)_traits;
- (id)emptyStateVideoName;
- (id)routeData;
- (int64_t)preferredMapScaleVisibility;
- (unint64_t)_routeEditorActionForEditReason:(unint64_t)reason;
- (void)_appendAnchorPoint:(id)point;
- (void)_appendCoordinate:(CLLocationCoordinate2D)coordinate isCurrentLocation:(BOOL)location;
- (void)_appendMapItem:(id)item isCurrentLocation:(BOOL)location isCoordinate:(BOOL)coordinate;
- (void)_backoutLastState;
- (void)_centerOnCurrentRouteAnimated:(BOOL)animated;
- (void)_createFakeButton;
- (void)_deleteFirstAnchorPointMatchingAnchorPoint:(id)point;
- (void)_deleteLastAnchorPointMatchingAnchorPoint:(id)point;
- (void)_expandCardIfNeeded;
- (void)_insertCenterButtons;
- (void)_insertEditStackButtons;
- (void)_insertRecenterButtonIfNeeded;
- (void)_insertRippleAnnotationAtCoordinate:(CLLocationCoordinate2D)coordinate;
- (void)_moveContextMenuToPoint:(CGPoint)point anchorPoint:(id)anchorPoint;
- (void)_popEditStack;
- (void)_presentPopupViewForMessage:(id)message timeout:(double)timeout isError:(BOOL)error ignoreChromeTransitioning:(BOOL)transitioning;
- (void)_pushEditState:(id)state shouldRecenterOnCompletion:(BOOL)completion;
- (void)_removeCenterButtons;
- (void)_removeEditStackButtons;
- (void)_removeRippleView;
- (void)_requeryStateWithAction:(unint64_t)action shouldRecenterOnCompletion:(BOOL)completion;
- (void)_setMenuAttachedAnchorPoint:(id)point;
- (void)_showRecenterButton;
- (void)_undoEditStack:(id)stack;
- (void)_updateCenterButtons;
- (void)_updateCoachingPillWithIgnoreChromeTransitioning:(BOOL)transitioning;
- (void)_updateMenu;
- (void)_updateScaleAndCompass;
- (void)_updateUndoVisibility;
- (void)applyRouteDataAddress:(id)address;
- (void)becomeTopContextInChromeViewController:(id)controller withAnimation:(id)animation;
- (void)containeeViewControllerGoToPreviousState:(id)state withSender:(id)sender;
- (void)didSaveCustomRoute:(id)route;
- (void)didTapMapView:(id)view atPoint:(CGPoint)point;
- (void)menuWillDismissWithAnimator:(id)animator;
- (void)popContainee;
- (void)pressedCloseLoop;
- (void)pressedOutAndBack;
- (void)pressedRecenter;
- (void)pressedReverse;
- (void)pressedRoutePlanning;
- (void)pressedSave;
- (void)pressedStartNavigationWithCompletion:(id)completion;
- (void)pressedStartSteppingWithCompletion:(id)completion;
- (void)pressedUndo;
- (void)pushSaveContainee;
- (void)resignTopContextInChromeViewController:(id)controller withAnimation:(id)animation;
@end

@implementation MapsRouteCreationContext

- (ChromeViewController)chromeViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_chromeViewController);

  return WeakRetained;
}

- (void)_updateCoachingPillWithIgnoreChromeTransitioning:(BOOL)transitioning
{
  transitioningCopy = transitioning;
  lastObject = [(NSMutableArray *)self->_editStack lastObject];
  anchorPoints = [lastObject anchorPoints];

  chromeViewController = [(MapsRouteCreationContext *)self chromeViewController];
  v8 = sub_10000FA08(chromeViewController);

  if (![anchorPoints count])
  {
    v9 = +[NSBundle mainBundle];
    v10 = v9;
    v11 = @"[Route Creation] Empty State Start";
    v12 = @"[Route Creation] Empty State Start MacOS";
    goto LABEL_5;
  }

  if ([anchorPoints count] == 1)
  {
    v9 = +[NSBundle mainBundle];
    v10 = v9;
    v11 = @"[Route Creation] Empty State Continue";
    v12 = @"[Route Creation] Empty State Continue MacOS";
LABEL_5:
    if (v8 == 5)
    {
      v13 = v12;
    }

    else
    {
      v13 = v11;
    }

    v14 = [v9 localizedStringForKey:v13 value:@"localized string not found" table:0];

    [(MapsRouteCreationContext *)self _presentPopupViewForMessage:v14 timeout:0 isError:transitioningCopy ignoreChromeTransitioning:0.0];
    goto LABEL_9;
  }

  superview = [(MapsPopupMessageView *)self->_popupMessageView superview];
  if (superview)
  {
    v16 = superview;
    [(MapsPopupMessageView *)self->_popupMessageView timeout];
    v18 = v17;

    if (v18 <= 2.22044605e-16)
    {
      objc_initWeak(&location, self);
      popupMessageView = self->_popupMessageView;
      v20[0] = _NSConcreteStackBlock;
      v20[1] = 3221225472;
      v20[2] = sub_1009B7A88;
      v20[3] = &unk_101661B98;
      objc_copyWeak(&v21, &location);
      [(MapsPopupMessageView *)popupMessageView dismissAnimated:1 completion:v20];
      objc_destroyWeak(&v21);
      objc_destroyWeak(&location);
    }
  }

LABEL_9:
}

- (void)_updateScaleAndCompass
{
  superview = [(MapsPopupMessageView *)self->_popupMessageView superview];

  chromeViewController = [(MapsRouteCreationContext *)self chromeViewController];
  mapView = [chromeViewController mapView];

  [mapView setShowsCompass:superview == 0];
  chromeViewController2 = [(MapsRouteCreationContext *)self chromeViewController];
  v6 = sub_10000FA08(chromeViewController2);

  if (v6 != 5 && !superview)
  {
    [mapView _compassInsets];
    [mapView _setCompassInsets:0.0];
  }

  chromeViewController3 = [(MapsRouteCreationContext *)self chromeViewController];
  [chromeViewController3 setNeedsUpdateComponent:@"mapScale" animated:1];
}

- (void)_updateMenu
{
  v3 = self->_anchorPointAttachedToMenu;
  v4 = sub_1007989A4();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v73 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "Building context menu with %@", buf, 0xCu);
  }

  if (v3)
  {
    objc_initWeak(buf, self);
    lastObject = [(NSMutableArray *)self->_editStack lastObject];
    anchorPoints = [lastObject anchorPoints];

    firstObject = [anchorPoints firstObject];
    if ([firstObject isEqual:v3])
    {
      v8 = 0;
    }

    else
    {
      lastObject2 = [anchorPoints lastObject];
      v13 = [lastObject2 isEqual:v3];

      v8 = v13 ^ 1;
    }

    v54 = objc_opt_new();
    if (!(v8 & 1 | ![(MapsRouteCreationContext *)self reverseEnabled]))
    {
      v14 = +[NSBundle mainBundle];
      v15 = [v14 localizedStringForKey:@"[Route Creation] Menu Option Reverse" value:@"localized string not found" table:0];
      v16 = [UIImage systemImageNamed:@"arrow.up.arrow.down"];
      v69[0] = _NSConcreteStackBlock;
      v69[1] = 3221225472;
      v69[2] = sub_1009B8600;
      v69[3] = &unk_101661900;
      objc_copyWeak(&v70, buf);
      v17 = [UIAction actionWithTitle:v15 image:v16 identifier:0 handler:v69];

      [v54 addObject:v17];
      objc_destroyWeak(&v70);
    }

    if (!(v8 & 1 | ![(MapsRouteCreationContext *)self outAndBackEnabled]))
    {
      v18 = +[NSBundle mainBundle];
      v19 = [v18 localizedStringForKey:@"[Route Creation] Menu Option Out-n-Back" value:@"localized string not found" table:0];
      v20 = [UIImage systemImageNamed:@"point.bottomleft.forward.to.arrowtriangle.uturn.scurvepath.fill"];
      v67[0] = _NSConcreteStackBlock;
      v67[1] = 3221225472;
      v67[2] = sub_1009B864C;
      v67[3] = &unk_101661900;
      objc_copyWeak(&v68, buf);
      v21 = [UIAction actionWithTitle:v19 image:v20 identifier:0 handler:v67];

      [v54 addObject:v21];
      objc_destroyWeak(&v68);
    }

    if (!(v8 & 1 | ![(MapsRouteCreationContext *)self closeLoopEnabled]))
    {
      v22 = +[NSBundle mainBundle];
      v23 = [v22 localizedStringForKey:@"[Route Creation] Menu Option Close Loop" value:@"localized string not found" table:0];
      v24 = [UIImage systemImageNamed:@"point.forward.to.point.capsulepath.fill"];
      v65[0] = _NSConcreteStackBlock;
      v65[1] = 3221225472;
      v65[2] = sub_1009B8698;
      v65[3] = &unk_101661900;
      objc_copyWeak(&v66, buf);
      v25 = [UIAction actionWithTitle:v23 image:v24 identifier:0 handler:v65];

      [v54 addObject:v25];
      objc_destroyWeak(&v66);
    }

    v63 = 0u;
    v64 = 0u;
    v62 = 0u;
    v61 = 0u;
    v26 = anchorPoints;
    v27 = [v26 countByEnumeratingWithState:&v61 objects:v71 count:16];
    if (v27)
    {
      v28 = 0;
      v29 = *v62;
      do
      {
        for (i = 0; i != v27; i = i + 1)
        {
          if (*v62 != v29)
          {
            objc_enumerationMutation(v26);
          }

          [*(*(&v61 + 1) + 8 * i) locationCoordinate];
          v32 = v31;
          v34 = v33;
          v36 = v35;
          [(GEOComposedRouteAnchorPoint *)v3 locationCoordinate];
          if (vabdd_f64(v32, v39) < 0.000000999999997 && vabdd_f64(v34, v37) < 0.000000999999997 && fabs(v36 - v38) < 0.000000999999997)
          {
            ++v28;
          }
        }

        v27 = [v26 countByEnumeratingWithState:&v61 objects:v71 count:16];
      }

      while (v27);

      if (v28 >= 2)
      {
        v40 = +[NSBundle mainBundle];
        v41 = [v40 localizedStringForKey:@"[Route Creation] Delete First Anchor" value:@"localized string not found" table:0];
        v42 = [UIImage systemImageNamed:@"trash"];
        v59[0] = _NSConcreteStackBlock;
        v59[1] = 3221225472;
        v59[2] = sub_1009B86E4;
        v59[3] = &unk_101661900;
        v43 = &v60;
        objc_copyWeak(&v60, buf);
        v44 = [UIAction actionWithTitle:v41 image:v42 identifier:0 handler:v59];

        [v44 setAttributes:2];
        [v54 addObject:v44];
        v45 = +[NSBundle mainBundle];
        v46 = [v45 localizedStringForKey:@"[Route Creation] Delete Last Anchor" value:@"localized string not found" table:0];
        v47 = [UIImage systemImageNamed:@"trash"];
        v57[0] = _NSConcreteStackBlock;
        v57[1] = 3221225472;
        v57[2] = sub_1009B8730;
        v57[3] = &unk_101661900;
        objc_copyWeak(&v58, buf);
        v48 = [UIAction actionWithTitle:v46 image:v47 identifier:0 handler:v57];

        [v48 setAttributes:2];
        [v54 addObject:v48];

        objc_destroyWeak(&v58);
LABEL_34:

        objc_destroyWeak(v43);
        v52 = [UIMenu menuWithChildren:v54];
        menu = self->_menu;
        self->_menu = v52;

        objc_destroyWeak(buf);
        goto LABEL_35;
      }
    }

    else
    {
    }

    v49 = +[NSBundle mainBundle];
    v50 = [v49 localizedStringForKey:@"[Route Creation] Delete Anchor" value:@"localized string not found" table:0];
    v51 = [UIImage systemImageNamed:@"trash"];
    v55[0] = _NSConcreteStackBlock;
    v55[1] = 3221225472;
    v55[2] = sub_1009B877C;
    v55[3] = &unk_101661900;
    v43 = &v56;
    objc_copyWeak(&v56, buf);
    v44 = [UIAction actionWithTitle:v50 image:v51 identifier:0 handler:v55];

    [v44 setAttributes:2];
    [v54 addObject:v44];
    goto LABEL_34;
  }

  v9 = sub_10006D178();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315650;
    v73 = "[MapsRouteCreationContext _updateMenu]";
    v74 = 2080;
    v75 = "MapsRouteCreationContext.m";
    v76 = 1024;
    v77 = 1639;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion reached unexpectedly!", buf, 0x1Cu);
  }

  if (sub_100E03634())
  {
    v10 = sub_10006D178();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = +[NSThread callStackSymbols];
      *buf = 138412290;
      v73 = v11;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
    }
  }

LABEL_35:
}

- (void)_expandCardIfNeeded
{
  v3 = +[NSUserDefaults standardUserDefaults];
  v4 = [v3 BOOLForKey:@"__internal_EnableAutomaticCardExpanion"];

  if (v4)
  {
    lastObject = [(NSMutableArray *)self->_containees lastObject];
    cardPresentationController = [lastObject cardPresentationController];
    containeeLayout = [cardPresentationController containeeLayout];

    if (containeeLayout == 1)
    {
      cardPresentationController2 = [lastObject cardPresentationController];
      [cardPresentationController2 wantsExpandLayout];
    }
  }
}

- (void)_removeCenterButtons
{
  [(CardView *)self->_centerButtonsContainer removeFromSuperview];
  centerButtonsStackView = self->_centerButtonsStackView;

  [(UIStackView *)centerButtonsStackView removeFromSuperview];
}

- (void)_removeEditStackButtons
{
  [(CardView *)self->_undoButtonContainer removeFromSuperview];
  [(UIButton *)self->_undoButton removeFromSuperview];
  [(CardView *)self->_recenterButtonContainer removeFromSuperview];
  recenterButton = self->_recenterButton;

  [(UIButton *)recenterButton removeFromSuperview];
}

- (void)_insertRecenterButtonIfNeeded
{
  superview = [(CardView *)self->_recenterButtonContainer superview];

  if (!superview)
  {
    contentView = [(CardView *)self->_recenterButtonContainer contentView];
    [contentView addSubview:self->_recenterButton];

    chromeViewController = [(MapsRouteCreationContext *)self chromeViewController];
    viewport = [chromeViewController viewport];

    [viewport addSubview:self->_recenterButtonContainer];
    trailingAnchor = [(CardView *)self->_recenterButtonContainer trailingAnchor];
    v27 = viewport;
    trailingAnchor2 = [viewport trailingAnchor];
    v9 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:-10.0];
    v29[0] = v9;
    bottomAnchor = [(CardView *)self->_recenterButtonContainer bottomAnchor];
    bottomAnchor2 = [viewport bottomAnchor];
    v12 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2 constant:-10.0];
    v29[1] = v12;
    v13 = [NSArray arrayWithObjects:v29 count:2];
    [NSLayoutConstraint activateConstraints:v13];

    leadingAnchor = [(UIButton *)self->_recenterButton leadingAnchor];
    leadingAnchor2 = [(CardView *)self->_recenterButtonContainer leadingAnchor];
    v24 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    v28[0] = v24;
    trailingAnchor3 = [(UIButton *)self->_recenterButton trailingAnchor];
    trailingAnchor4 = [(CardView *)self->_recenterButtonContainer trailingAnchor];
    v16 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4];
    v28[1] = v16;
    topAnchor = [(UIButton *)self->_recenterButton topAnchor];
    topAnchor2 = [(CardView *)self->_recenterButtonContainer topAnchor];
    v19 = [topAnchor constraintEqualToAnchor:topAnchor2];
    v28[2] = v19;
    bottomAnchor3 = [(UIButton *)self->_recenterButton bottomAnchor];
    bottomAnchor4 = [(CardView *)self->_recenterButtonContainer bottomAnchor];
    v22 = [bottomAnchor3 constraintEqualToAnchor:bottomAnchor4];
    v28[3] = v22;
    v23 = [NSArray arrayWithObjects:v28 count:4];
    [NSLayoutConstraint activateConstraints:v23];
  }
}

- (void)_insertEditStackButtons
{
  chromeViewController = [(MapsRouteCreationContext *)self chromeViewController];
  viewport = [chromeViewController viewport];

  contentView = [(CardView *)self->_undoButtonContainer contentView];
  [contentView addSubview:self->_undoButton];

  [viewport addSubview:self->_undoButtonContainer];
  leadingAnchor = [(CardView *)self->_undoButtonContainer leadingAnchor];
  v26 = viewport;
  leadingAnchor2 = [viewport leadingAnchor];
  v8 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:10.0];
  v28[0] = v8;
  bottomAnchor = [(CardView *)self->_undoButtonContainer bottomAnchor];
  bottomAnchor2 = [viewport bottomAnchor];
  v11 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2 constant:-10.0];
  v28[1] = v11;
  v12 = [NSArray arrayWithObjects:v28 count:2];
  [NSLayoutConstraint activateConstraints:v12];

  leadingAnchor3 = [(UIButton *)self->_undoButton leadingAnchor];
  leadingAnchor4 = [(CardView *)self->_undoButtonContainer leadingAnchor];
  v23 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4];
  v27[0] = v23;
  trailingAnchor = [(UIButton *)self->_undoButton trailingAnchor];
  trailingAnchor2 = [(CardView *)self->_undoButtonContainer trailingAnchor];
  v14 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v27[1] = v14;
  topAnchor = [(UIButton *)self->_undoButton topAnchor];
  topAnchor2 = [(CardView *)self->_undoButtonContainer topAnchor];
  v17 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v27[2] = v17;
  bottomAnchor3 = [(UIButton *)self->_undoButton bottomAnchor];
  bottomAnchor4 = [(CardView *)self->_undoButtonContainer bottomAnchor];
  v20 = [bottomAnchor3 constraintEqualToAnchor:bottomAnchor4];
  v27[3] = v20;
  v21 = [NSArray arrayWithObjects:v27 count:4];
  [NSLayoutConstraint activateConstraints:v21];

  [(MapsRouteCreationContext *)self _updateUndoVisibility];
}

- (void)_insertCenterButtons
{
  chromeViewController = [(MapsRouteCreationContext *)self chromeViewController];
  viewport = [chromeViewController viewport];

  contentView = [(CardView *)self->_centerButtonsContainer contentView];
  [contentView addSubview:self->_centerButtonsStackView];

  [viewport addSubview:self->_centerButtonsContainer];
  leadingAnchor = [(UIStackView *)self->_centerButtonsStackView leadingAnchor];
  leadingAnchor2 = [(CardView *)self->_centerButtonsContainer leadingAnchor];
  v23 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:5.0];
  v26[0] = v23;
  trailingAnchor = [(UIStackView *)self->_centerButtonsStackView trailingAnchor];
  trailingAnchor2 = [(CardView *)self->_centerButtonsContainer trailingAnchor];
  v20 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:-5.0];
  v26[1] = v20;
  topAnchor = [(UIStackView *)self->_centerButtonsStackView topAnchor];
  topAnchor2 = [(CardView *)self->_centerButtonsContainer topAnchor];
  v17 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v26[2] = v17;
  bottomAnchor = [(UIStackView *)self->_centerButtonsStackView bottomAnchor];
  bottomAnchor2 = [(CardView *)self->_centerButtonsContainer bottomAnchor];
  v8 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  v26[3] = v8;
  centerXAnchor = [(CardView *)self->_centerButtonsContainer centerXAnchor];
  v16 = viewport;
  centerXAnchor2 = [viewport centerXAnchor];
  v11 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
  v26[4] = v11;
  bottomAnchor3 = [(CardView *)self->_centerButtonsContainer bottomAnchor];
  bottomAnchor4 = [viewport bottomAnchor];
  v14 = [bottomAnchor3 constraintEqualToAnchor:bottomAnchor4 constant:-10.0];
  v26[5] = v14;
  v15 = [NSArray arrayWithObjects:v26 count:6];
  [NSLayoutConstraint activateConstraints:v15];
}

- (RouteAnnotationsConfiguration)routeAnnotationsConfiguration
{
  v3 = [RouteAnnotationsMutableConfiguration alloc];
  composedRoute = [(MapsRouteCreationContext *)self composedRoute];
  v5 = [(RouteAnnotationsConfiguration *)v3 initWithRoute:composedRoute];

  [(RouteAnnotationsConfiguration *)v5 setRouteTrafficFeaturesActive:0];
  lastObject = [(NSMutableArray *)self->_editStack lastObject];
  anchorPoints = [lastObject anchorPoints];
  [(RouteAnnotationsConfiguration *)v5 setAnchorPoints:anchorPoints];

  v8 = [(RouteAnnotationsMutableConfiguration *)v5 copy];

  return v8;
}

- (BOOL)wantsCompassLayoutControl
{
  chromeViewController = [(MapsRouteCreationContext *)self chromeViewController];
  v3 = sub_10000FA08(chromeViewController) != 5;

  return v3;
}

- (void)_backoutLastState
{
  v3 = sub_1007989A4();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "Programmatically undoing last action", v4, 2u);
  }

  [(NSUndoManager *)self->_undoManager undo];
}

- (void)_presentPopupViewForMessage:(id)message timeout:(double)timeout isError:(BOOL)error ignoreChromeTransitioning:(BOOL)transitioning
{
  messageCopy = message;
  v11 = sub_1007989A4();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v30 = messageCopy;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "Presenting popup for message: %@", buf, 0xCu);
  }

  objc_initWeak(buf, self);
  v21 = _NSConcreteStackBlock;
  v22 = 3221225472;
  v23 = sub_1009B9598;
  v24 = &unk_101631000;
  objc_copyWeak(v26, buf);
  transitioningCopy = transitioning;
  v12 = messageCopy;
  v25 = v12;
  v26[1] = *&timeout;
  errorCopy = error;
  v13 = objc_retainBlock(&v21);
  if (-[MapsPopupMessageView isDismissing](self->_popupMessageView, "isDismissing", v21, v22, v23, v24) || (-[MapsPopupMessageView superview](self->_popupMessageView, "superview"), (v14 = objc_claimAutoreleasedReturnValue()) == 0) || (-[MapsPopupMessageView message](self->_popupMessageView, "message"), v15 = objc_claimAutoreleasedReturnValue(), v16 = [v15 isEqual:v12], v15, v14, !v16))
  {
    popupMessageView = self->_popupMessageView;
    if (!popupMessageView)
    {
      (v13[2])(v13);
      goto LABEL_14;
    }

    if (!error)
    {
      [(MapsPopupMessageView *)popupMessageView timeout];
      popupMessageView = self->_popupMessageView;
      if (v18 > 2.22044605e-16)
      {
        superview = [(MapsPopupMessageView *)popupMessageView superview];
        v20 = superview == 0;

        if (!v20)
        {
          goto LABEL_14;
        }

        popupMessageView = self->_popupMessageView;
      }
    }

    [(MapsPopupMessageView *)popupMessageView dismissAnimated:1 completion:v13];
    goto LABEL_14;
  }

  [(MapsPopupMessageView *)self->_popupMessageView resetTimerAnimated:1];
LABEL_14:

  objc_destroyWeak(v26);
  objc_destroyWeak(buf);
}

- (id)_errorMessageForError:(id)error directionsError:(id)directionsError request:(id)request isOffline:(BOOL)offline shouldBackoutEdit:(BOOL *)edit
{
  offlineCopy = offline;
  errorCopy = error;
  directionsErrorCopy = directionsError;
  v38[0] = _NSConcreteStackBlock;
  v38[1] = 3221225472;
  v38[2] = sub_1009B9D04;
  v38[3] = &unk_1016611D0;
  v38[4] = edit;
  v12 = objc_retainBlock(v38);
  if (directionsErrorCopy && [directionsErrorCopy problemDetailsCount])
  {
    v13 = 0;
    while (1)
    {
      v14 = [directionsErrorCopy problemDetailAtIndex:v13];
      if (v14 > 8)
      {
        break;
      }

      if (v14 > 3)
      {
        if (v14 != 4)
        {
          if (v14 != 5)
          {
            goto LABEL_28;
          }

          goto LABEL_20;
        }

        v15 = +[NSBundle mainBundle];
        _mostRecentlyAddedAnchor = v15;
        v17 = @"[Route Creation] Custom Routes no pedestrians";
LABEL_26:
        v19 = [v15 localizedStringForKey:v17 value:@"localized string not found" table:0];
        goto LABEL_27;
      }

      if (v14 == 2)
      {
        goto LABEL_20;
      }

      if (v14 != 3)
      {
        goto LABEL_28;
      }

      _mostRecentlyAddedAnchor = [(MapsRouteCreationContext *)self _mostRecentlyAddedAnchor];
      countryCode = [_mostRecentlyAddedAnchor countryCode];
      v19 = [(MapsRouteCreationContext *)self _errorMessageForUnsupportedCountry:countryCode];

LABEL_27:
      if (v19)
      {
        (v12[2])(v12);
        goto LABEL_42;
      }

LABEL_28:
      if (++v13 >= [directionsErrorCopy problemDetailsCount])
      {
        goto LABEL_29;
      }
    }

    if (v14 <= 17)
    {
      if (v14 != 9)
      {
        if (v14 != 13)
        {
          goto LABEL_28;
        }

LABEL_20:
        chromeViewController = [(MapsRouteCreationContext *)self chromeViewController];
        v21 = sub_10000FA08(chromeViewController);

        v15 = +[NSBundle mainBundle];
        _mostRecentlyAddedAnchor = v15;
        if (v21 == 5)
        {
          v17 = @"[Route Creation] Anchor too far MacOS";
        }

        else
        {
          v17 = @"[Route Creation] Anchor too far";
        }

        goto LABEL_26;
      }
    }

    else if (v14 != 18)
    {
      if (v14 == 21)
      {
        v15 = +[NSBundle mainBundle];
        _mostRecentlyAddedAnchor = v15;
        v17 = @"[Route Creation] Custom Routes too many anchors";
      }

      else
      {
        if (v14 != 22 || !offlineCopy)
        {
          goto LABEL_28;
        }

        v15 = +[NSBundle mainBundle];
        _mostRecentlyAddedAnchor = v15;
        v17 = @"[Route Creation] Offline route creation error";
      }

      goto LABEL_26;
    }

    v15 = +[NSBundle mainBundle];
    _mostRecentlyAddedAnchor = v15;
    v17 = @"[Route Creation] Custom Routes too far";
    goto LABEL_26;
  }

LABEL_29:
  domain = [errorCopy domain];
  v23 = [domain isEqual:MNErrorDomain];

  if (v23)
  {
    code = [errorCopy code];
    if (code == 9)
    {
      (v12[2])(v12);
      userInfo = [errorCopy userInfo];
      v34 = [userInfo objectForKeyedSubscript:MNRouteEditorErrorUnsupportedCountriesKey];

      anyObject = [v34 anyObject];
      v19 = [(MapsRouteCreationContext *)self _errorMessageForUnsupportedCountry:anyObject];

      goto LABEL_42;
    }

    if (code == 8)
    {
      (v12[2])(v12);
      chromeViewController2 = [(MapsRouteCreationContext *)self chromeViewController];
      v26 = sub_10000FA08(chromeViewController2);

      v27 = +[NSBundle mainBundle];
      v28 = v27;
      if (v26 == 5)
      {
        v29 = @"[Route Creation] Anchor too far MacOS";
      }

      else
      {
        v29 = @"[Route Creation] Anchor too far";
      }

      goto LABEL_41;
    }
  }

  domain2 = [errorCopy domain];
  if ([domain2 isEqual:NSURLErrorDomain])
  {
  }

  else
  {
    domain3 = [errorCopy domain];
    v32 = [domain3 isEqual:kCFErrorDomainCFNetwork];

    if (!v32)
    {
      v27 = +[NSBundle mainBundle];
      v28 = v27;
      v29 = @"[Route Creation] Default error message";
      goto LABEL_41;
    }
  }

  v27 = +[NSBundle mainBundle];
  v28 = v27;
  v29 = @"[Route Creation] Network error message";
LABEL_41:
  v19 = [v27 localizedStringForKey:v29 value:@"localized string not found" table:0];

LABEL_42:

  return v19;
}

- (id)_errorMessageForUnsupportedCountry:(id)country
{
  v3 = +[NSBundle mainBundle];
  v4 = [v3 localizedStringForKey:@"[Route Creation] Custom Routes generic unavailability" value:@"localized string not found" table:0];

  return v4;
}

- (id)_mostRecentlyAddedAnchor
{
  lastObject = [(NSMutableArray *)self->_editStack lastObject];
  v4 = [(NSMutableArray *)self->_editStack count]- 2;
  if (v4 < [(NSMutableArray *)self->_editStack count]&& ([(NSMutableArray *)self->_editStack objectAtIndexedSubscript:v4], (v5 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    anchorPoints3 = v5;
    anchorPoints = [lastObject anchorPoints];
    v8 = [anchorPoints copy];

    anchorPoints2 = [anchorPoints3 anchorPoints];
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v10 = [anchorPoints2 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v18;
      do
      {
        for (i = 0; i != v11; i = i + 1)
        {
          if (*v18 != v12)
          {
            objc_enumerationMutation(anchorPoints2);
          }

          uniqueID = [*(*(&v17 + 1) + 8 * i) uniqueID];
          [v8 removeAnchorPointWithID:uniqueID];
        }

        v11 = [anchorPoints2 countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v11);
    }

    lastObject2 = [v8 lastObject];
  }

  else
  {
    anchorPoints3 = [lastObject anchorPoints];
    lastObject2 = [anchorPoints3 lastObject];
  }

  return lastObject2;
}

- (void)_requeryStateWithAction:(unint64_t)action shouldRecenterOnCompletion:(BOOL)completion
{
  [(MapsRouteCreationContext *)self _updateUndoVisibility];
  lastObject = [(NSMutableArray *)self->_editStack lastObject];
  anchorPoints = [lastObject anchorPoints];
  v9 = [anchorPoints count];

  if (v9 > 1)
  {
    v18 = objc_opt_new();
    anchorPoints2 = [lastObject anchorPoints];
    [v18 setAnchorPoints:anchorPoints2];

    [v18 setAction:action];
    [v18 setCurrentRoute:self->_composedRoute];
    if (action - 1001 <= 1)
    {
      routePersistentData = [lastObject routePersistentData];
      [v18 setUndoRedoRouteData:routePersistentData];
    }

    v21 = objc_opt_new();
    [v21 setMainTransportType:2];
    [v21 setIncludeRoutingPathLeg:1];
    [v18 setRouteAttributes:v21];
    v22 = +[MapsOfflineUIHelper sharedHelper];
    isUsingOfflineMaps = [v22 isUsingOfflineMaps];

    objc_initWeak(&location, self);
    routeEditor = self->_routeEditor;
    v27[0] = _NSConcreteStackBlock;
    v27[1] = 3221225472;
    v27[2] = sub_1009BA240;
    v27[3] = &unk_101630FD8;
    objc_copyWeak(&v30, &location);
    v28 = lastObject;
    completionCopy = completion;
    v25 = v18;
    v29 = v25;
    v32 = isUsingOfflineMaps;
    v26 = [(MNRouteEditor *)routeEditor requestRouteGeometry:v25 finishedHandler:v27];

    objc_destroyWeak(&v30);
    objc_destroyWeak(&location);
  }

  else
  {
    composedRoute = self->_composedRoute;
    self->_composedRoute = 0;

    [(MapsRouteCreationContainee *)self->_editContainee setRoute:0];
    anchorPoints3 = [lastObject anchorPoints];
    firstObject = [anchorPoints3 firstObject];

    displayInfo = [firstObject displayInfo];
    [displayInfo _routeCreation_setStartWaypointCaption];

    if ([firstObject isCurrentLocation])
    {
      displayInfo2 = [firstObject displayInfo];
      [displayInfo2 _routeCreation_setMyLocationName];
    }

    chromeViewController = [(MapsRouteCreationContext *)self chromeViewController];
    [chromeViewController setNeedsUpdateComponent:@"routeAnnotations" animated:1];

    chromeViewController2 = [(MapsRouteCreationContext *)self chromeViewController];
    mapSelectionManager = [chromeViewController2 mapSelectionManager];
    [mapSelectionManager clearSelection];

    [(CardView *)self->_recenterButtonContainer removeFromSuperview];
    [(UIButton *)self->_recenterButton removeFromSuperview];
  }
}

- (unint64_t)_routeEditorActionForEditReason:(unint64_t)reason
{
  if (reason - 1 > 4)
  {
    return 0;
  }

  else
  {
    return qword_101215030[reason - 1];
  }
}

- (void)_popEditStack
{
  lastObject = [(NSMutableArray *)self->_editStack lastObject];
  if (![lastObject reason])
  {
    [NSException raise:NSInternalInconsistencyException format:@"You should never be able to pop the initial state"];
  }

  [(NSMutableArray *)self->_editStack removeLastObject];
  [(MapsRouteCreationContext *)self _requeryStateWithAction:1001 shouldRecenterOnCompletion:0];
  [(MapsRouteCreationContext *)self _updateCoachingPillWithIgnoreChromeTransitioning:0];
  [(MapsRouteCreationContext *)self _updateCenterButtons];
}

- (void)_undoEditStack:(id)stack
{
  lastObject = [(NSMutableArray *)self->_editStack lastObject];
  [(NSUndoManager *)self->_undoManager registerUndoWithTarget:self selector:"_undoEditStack:" object:lastObject];
  v4 = sub_1006DF608([lastObject reason], 1);
  [(NSUndoManager *)self->_undoManager setActionName:v4];

  [(MapsRouteCreationContext *)self _popEditStack];
}

- (void)_pushEditState:(id)state shouldRecenterOnCompletion:(BOOL)completion
{
  completionCopy = completion;
  editStack = self->_editStack;
  stateCopy = state;
  [(NSMutableArray *)editStack addObject:stateCopy];
  [(NSUndoManager *)self->_undoManager registerUndoWithTarget:self selector:"_undoEditStack:" object:0];
  v8 = sub_1006DF608([stateCopy reason], 0);
  [(NSUndoManager *)self->_undoManager setActionName:v8];

  reason = [stateCopy reason];
  [(MapsRouteCreationContext *)self _requeryStateWithAction:[(MapsRouteCreationContext *)self _routeEditorActionForEditReason:reason] shouldRecenterOnCompletion:completionCopy];
  [(MapsRouteCreationContext *)self _updateCoachingPillWithIgnoreChromeTransitioning:0];

  [(MapsRouteCreationContext *)self _updateCenterButtons];
}

- (void)applyRouteDataAddress:(id)address
{
  addressCopy = address;
  composedRoute = [(MapsRouteCreationContext *)self composedRoute];
  [composedRoute updateWithAddress:addressCopy];
}

- (id)routeData
{
  composedRoute = [(MapsRouteCreationContext *)self composedRoute];
  persistentData = [composedRoute persistentData];

  return persistentData;
}

- (void)menuWillDismissWithAnimator:(id)animator
{
  animatorCopy = animator;
  v5 = sub_1007989A4();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v14 = "[MapsRouteCreationContext menuWillDismissWithAnimator:]";
    v15 = 2112;
    v16 = animatorCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%s %@", buf, 0x16u);
  }

  objc_initWeak(buf, self);
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1009BACA8;
  v11[3] = &unk_101661B98;
  objc_copyWeak(&v12, buf);
  v6 = objc_retainBlock(v11);
  v7 = v6;
  if (animatorCopy)
  {
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_1009BAD20;
    v9[3] = &unk_101661760;
    v10 = v6;
    [animatorCopy addCompletion:v9];
  }

  else
  {
    v8 = dispatch_time(0, 100000000);
    dispatch_after(v8, &_dispatch_main_q, v7);
  }

  objc_destroyWeak(&v12);
  objc_destroyWeak(buf);
}

- (void)_centerOnCurrentRouteAnimated:(BOOL)animated
{
  animatedCopy = animated;
  v5 = sub_1007989A4();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 67109120;
    v13 = animatedCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "_centerOnCurrentRouteAnimated: %d", buf, 8u);
  }

  v6 = 0.3;
  if (!animatedCopy)
  {
    v6 = 0.0;
  }

  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1009BAEF4;
  v10[3] = &unk_101661B18;
  v10[4] = self;
  [UIView animateWithDuration:v10 animations:v6];
  if (self->_composedRoute)
  {
    chromeViewController = [(MapsRouteCreationContext *)self chromeViewController];
    mapCameraController = [chromeViewController mapCameraController];
    composedRoute = self->_composedRoute;
    v9 = [NSArray arrayWithObjects:&composedRoute count:1];
    [mapCameraController frameRoutes:v9 includeCompassInset:0 animated:animatedCopy completion:0];
  }
}

- (void)_updateCenterButtons
{
  lastObject = [(NSMutableArray *)self->_editStack lastObject];
  anchorPoints = [lastObject anchorPoints];
  -[CardView setHidden:](self->_centerButtonsContainer, "setHidden:", [anchorPoints count] < 2);
  [(UIButton *)self->_reverseButton setEnabled:[(MapsRouteCreationContext *)self reverseEnabled]];
  [(UIButton *)self->_outAndBackButton setEnabled:[(MapsRouteCreationContext *)self outAndBackEnabled]];
  [(UIButton *)self->_closeLoopButton setEnabled:[(MapsRouteCreationContext *)self closeLoopEnabled]];
}

- (void)_moveContextMenuToPoint:(CGPoint)point anchorPoint:(id)anchorPoint
{
  y = point.y;
  x = point.x;
  superview = [(MapsMenuButton *)self->_contextMenuFakeButton superview];

  if (superview)
  {
    [(MapsMenuButton *)self->_contextMenuFakeButton setFrame:x, y, 1.0, 1.0];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1009BB0C4;
    block[3] = &unk_101661B18;
    block[4] = self;
    dispatch_async(&_dispatch_main_q, block);
  }

  else
  {
    v8 = sub_1007989A4();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "Aborting context menu presentation", buf, 2u);
    }

    [(MapsRouteCreationContext *)self _setMenuAttachedAnchorPoint:0];
  }
}

- (void)_setMenuAttachedAnchorPoint:(id)point
{
  pointCopy = point;
  v5 = sub_1007989A4();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v7 = 134217984;
    v8 = pointCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Setting _anchorPointAttachedToMenu to %p", &v7, 0xCu);
  }

  anchorPointAttachedToMenu = self->_anchorPointAttachedToMenu;
  self->_anchorPointAttachedToMenu = pointCopy;
}

- (void)_updateUndoVisibility
{
  [(CardView *)self->_undoButtonContainer setHidden:[(MapsRouteCreationContext *)self undoEnabled]^ 1];
  v3 = sub_1007989A4();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4[0] = 67109120;
    v4[1] = ![(MapsRouteCreationContext *)self undoEnabled];
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "_updateUndoVisibility: undo hidden: %d", v4, 8u);
  }
}

- (id)emptyStateVideoName
{
  lastObject = [(NSMutableArray *)self->_editStack lastObject];
  traitCollection = [(MapsRouteCreationContainee *)self->_editContainee traitCollection];
  userInterfaceStyle = [traitCollection userInterfaceStyle];

  anchorPoints = [lastObject anchorPoints];
  v7 = [anchorPoints count];

  if (v7 == 1)
  {
    v8 = @"Coaching_Continue_Light";
    v9 = @"Coaching_Continue_Dark";
  }

  else
  {
    if (v7)
    {
      v10 = 0;
      goto LABEL_9;
    }

    v8 = @"Coaching_Start_Light";
    v9 = @"Coaching_Start_Dark";
  }

  if (userInterfaceStyle == 2)
  {
    v8 = v9;
  }

  v10 = v8;
LABEL_9:

  return v10;
}

- (void)pressedRecenter
{
  v3 = sub_1007989A4();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "pressed recenter", v4, 2u);
  }

  [(MapsRouteCreationContext *)self _centerOnCurrentRouteAnimated:1];
}

- (void)pressedSave
{
  v3 = sub_1007989A4();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "pressed go to save", v4, 2u);
  }

  [(MapsRouteCreationContext *)self pushSaveContainee];
}

- (void)pressedRoutePlanning
{
  v3 = sub_1007989A4();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v27 = "[MapsRouteCreationContext pressedRoutePlanning]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "%s", buf, 0xCu);
  }

  [GEOAPPortal captureUserAction:6003 target:131 value:0];
  chromeViewController = [(MapsRouteCreationContext *)self chromeViewController];
  [chromeViewController resetForcedExploreModernMapFlag];

  chromeViewController2 = [(MapsRouteCreationContext *)self chromeViewController];
  contexts = [chromeViewController2 contexts];

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v7 = contexts;
  v8 = [v7 countByEnumeratingWithState:&v22 objects:v32 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v23;
LABEL_5:
    v11 = 0;
    while (1)
    {
      if (*v23 != v10)
      {
        objc_enumerationMutation(v7);
      }

      v12 = *(*(&v22 + 1) + 8 * v11);
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        break;
      }

      if (v9 == ++v11)
      {
        v9 = [v7 countByEnumeratingWithState:&v22 objects:v32 count:16];
        if (v9)
        {
          goto LABEL_5;
        }

        goto LABEL_11;
      }
    }

    v13 = v12;

    if (!v13)
    {
      goto LABEL_14;
    }

    chromeViewController3 = [(MapsRouteCreationContext *)self chromeViewController];
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_1009BB80C;
    v19[3] = &unk_101661A90;
    v20 = v13;
    selfCopy = self;
    v15 = v13;
    [chromeViewController3 popToContext:v15 animated:0 completion:v19];
  }

  else
  {
LABEL_11:

LABEL_14:
    v16 = sub_10006D178();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v27 = "[MapsRouteCreationContext pressedRoutePlanning]";
      v28 = 2080;
      v29 = "MapsRouteCreationContext.m";
      v30 = 1024;
      v31 = 1025;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion reached unexpectedly!", buf, 0x1Cu);
    }

    if (sub_100E03634())
    {
      v17 = sub_10006D178();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        v18 = +[NSThread callStackSymbols];
        *buf = 138412290;
        v27 = v18;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
      }
    }

    v15 = sub_1007989A4();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "Missing base mode controller for pushing route planning", buf, 2u);
    }
  }
}

- (void)pressedStartSteppingWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = sub_1007989A4();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v20 = "[MapsRouteCreationContext pressedStartSteppingWithCompletion:]";
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%s", buf, 0xCu);
  }

  [GEOAPPortal captureUserAction:3001 target:131 value:0];
  chromeViewController = [(MapsRouteCreationContext *)self chromeViewController];
  [chromeViewController resetForcedExploreModernMapFlag];

  v7 = self->_composedRoute;
  userProvidedName = [(GEOComposedRoute *)v7 userProvidedName];
  if ([userProvidedName length])
  {
    [(GEOComposedRoute *)v7 userProvidedName];
  }

  else
  {
    [(GEOComposedRoute *)v7 name];
  }
  v9 = ;

  chromeViewController2 = [(MapsRouteCreationContext *)self chromeViewController];
  _maps_platformController = [chromeViewController2 _maps_platformController];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_1009BBBE8;
  v15[3] = &unk_101630FB0;
  v16 = v7;
  v17 = v9;
  v18 = completionCopy;
  v12 = completionCopy;
  v13 = v9;
  v14 = v7;
  [_maps_platformController pushNavigationWithRoute:v14 navigationMode:2 shouldCheckNavSafetyAlert:1 completion:v15];
}

- (void)pressedStartNavigationWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = sub_1007989A4();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v20 = "[MapsRouteCreationContext pressedStartNavigationWithCompletion:]";
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%s", buf, 0xCu);
  }

  [GEOAPPortal captureUserAction:3001 target:131 value:0];
  chromeViewController = [(MapsRouteCreationContext *)self chromeViewController];
  [chromeViewController resetForcedExploreModernMapFlag];

  v7 = self->_composedRoute;
  userProvidedName = [(GEOComposedRoute *)v7 userProvidedName];
  if ([userProvidedName length])
  {
    [(GEOComposedRoute *)v7 userProvidedName];
  }

  else
  {
    [(GEOComposedRoute *)v7 name];
  }
  v9 = ;

  chromeViewController2 = [(MapsRouteCreationContext *)self chromeViewController];
  _maps_platformController = [chromeViewController2 _maps_platformController];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_1009BBEA4;
  v15[3] = &unk_101630FB0;
  v16 = v7;
  v17 = v9;
  v18 = completionCopy;
  v12 = completionCopy;
  v13 = v9;
  v14 = v7;
  [_maps_platformController pushNavigationWithRoute:v14 navigationMode:1 shouldCheckNavSafetyAlert:1 completion:v15];
}

- (BOOL)closeLoopEnabled
{
  lastObject = [(NSMutableArray *)self->_editStack lastObject];
  anchorPoints = [lastObject anchorPoints];
  if ([anchorPoints count] < 2)
  {
    LOBYTE(v4) = 0;
  }

  else
  {
    v4 = [anchorPoints startAndEndAreTheSame] ^ 1;
  }

  return v4;
}

- (BOOL)outAndBackEnabled
{
  lastObject = [(NSMutableArray *)self->_editStack lastObject];
  anchorPoints = [lastObject anchorPoints];
  if ([anchorPoints count] < 2)
  {
    isOutAndBackAllowed = 0;
  }

  else
  {
    isOutAndBackAllowed = [anchorPoints isOutAndBackAllowed];
  }

  return isOutAndBackAllowed;
}

- (BOOL)reverseEnabled
{
  lastObject = [(NSMutableArray *)self->_editStack lastObject];
  anchorPoints = [lastObject anchorPoints];
  v4 = [anchorPoints count] > 1;

  return v4;
}

- (BOOL)undoEnabled
{
  lastObject = [(NSMutableArray *)self->_editStack lastObject];
  v4 = lastObject;
  if (lastObject && [lastObject reason])
  {
    lastObject2 = [(NSMutableArray *)self->_containees lastObject];
    v6 = lastObject2 != self->_saveContainee;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)pressedCloseLoop
{
  v3 = sub_1007989A4();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v6 = 136315138;
    v7 = "[MapsRouteCreationContext pressedCloseLoop]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "%s", &v6, 0xCu);
  }

  if ([(MapsRouteCreationContext *)self closeLoopEnabled])
  {
    lastObject = [(NSMutableArray *)self->_editStack lastObject];
    instanceByClosingTheLoop = [lastObject instanceByClosingTheLoop];
    [(MapsRouteCreationContext *)self _pushEditState:instanceByClosingTheLoop shouldRecenterOnCompletion:1];
  }

  else
  {
    lastObject = sub_1007989A4();
    if (os_log_type_enabled(lastObject, OS_LOG_TYPE_INFO))
    {
      LOWORD(v6) = 0;
      _os_log_impl(&_mh_execute_header, lastObject, OS_LOG_TYPE_INFO, "Close loop is disabled; ignoring", &v6, 2u);
    }
  }
}

- (void)pressedOutAndBack
{
  v3 = sub_1007989A4();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v6 = 136315138;
    v7 = "[MapsRouteCreationContext pressedOutAndBack]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "%s", &v6, 0xCu);
  }

  if ([(MapsRouteCreationContext *)self outAndBackEnabled])
  {
    lastObject = [(NSMutableArray *)self->_editStack lastObject];
    instanceByFormingOutAndBackAnchors = [lastObject instanceByFormingOutAndBackAnchors];
    [(MapsRouteCreationContext *)self _pushEditState:instanceByFormingOutAndBackAnchors shouldRecenterOnCompletion:1];
  }

  else
  {
    lastObject = sub_1007989A4();
    if (os_log_type_enabled(lastObject, OS_LOG_TYPE_INFO))
    {
      LOWORD(v6) = 0;
      _os_log_impl(&_mh_execute_header, lastObject, OS_LOG_TYPE_INFO, "Out and back is disabled; ignoring", &v6, 2u);
    }
  }
}

- (void)pressedReverse
{
  v3 = sub_1007989A4();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v6 = 136315138;
    v7 = "[MapsRouteCreationContext pressedReverse]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "%s", &v6, 0xCu);
  }

  if ([(MapsRouteCreationContext *)self reverseEnabled])
  {
    lastObject = [(NSMutableArray *)self->_editStack lastObject];
    instanceByReversingAnchorPoints = [lastObject instanceByReversingAnchorPoints];
    [(MapsRouteCreationContext *)self _pushEditState:instanceByReversingAnchorPoints shouldRecenterOnCompletion:1];
  }

  else
  {
    lastObject = sub_1007989A4();
    if (os_log_type_enabled(lastObject, OS_LOG_TYPE_INFO))
    {
      LOWORD(v6) = 0;
      _os_log_impl(&_mh_execute_header, lastObject, OS_LOG_TYPE_INFO, "Reverse is disabled; ignoring", &v6, 2u);
    }
  }
}

- (void)pressedUndo
{
  v3 = sub_1007989A4();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4 = 136315138;
    v5 = "[MapsRouteCreationContext pressedUndo]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "%s", &v4, 0xCu);
  }

  [(NSUndoManager *)self->_undoManager undo];
}

- (void)_deleteLastAnchorPointMatchingAnchorPoint:(id)point
{
  pointCopy = point;
  v5 = sub_1007989A4();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v8 = 138412290;
    v9 = pointCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Deleting last anchor point: %@", &v8, 0xCu);
  }

  lastObject = [(NSMutableArray *)self->_editStack lastObject];
  v7 = [lastObject instanceByRemovingLastAnchorPoint:pointCopy];
  [(MapsRouteCreationContext *)self _pushEditState:v7 shouldRecenterOnCompletion:0];
}

- (void)_deleteFirstAnchorPointMatchingAnchorPoint:(id)point
{
  pointCopy = point;
  v5 = sub_1007989A4();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v8 = 138412290;
    v9 = pointCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Deleting first anchor point: %@", &v8, 0xCu);
  }

  lastObject = [(NSMutableArray *)self->_editStack lastObject];
  v7 = [lastObject instanceByRemovingFirstAnchorPoint:pointCopy];
  [(MapsRouteCreationContext *)self _pushEditState:v7 shouldRecenterOnCompletion:0];
}

- (void)_appendCoordinate:(CLLocationCoordinate2D)coordinate isCurrentLocation:(BOOL)location
{
  locationCopy = location;
  longitude = coordinate.longitude;
  latitude = coordinate.latitude;
  if ([(MapsRouteCreationContext *)self _wouldDuplicateTrailingAnchorWithCoordinate:?])
  {
    v8 = sub_1007989A4();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 134218240;
      v12 = latitude;
      v13 = 2048;
      v14 = longitude;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "Dropping appending coordinate: %f, %f", buf, 0x16u);
    }
  }

  else
  {
    if (!locationCopy)
    {
      [(MapsRouteCreationContext *)self _insertRippleAnnotationAtCoordinate:latitude, longitude];
    }

    [(UINotificationFeedbackGenerator *)self->_notificationGenerator notificationOccurred:0];
    [(MapsRouteCreationContext *)self _expandCardIfNeeded];
    v10 = [[MKPlacemark alloc] initWithCoordinate:{latitude, longitude}];
    v9 = [[MKMapItem alloc] initWithPlacemark:v10];
    [(MapsRouteCreationContext *)self _appendMapItem:v9 isCurrentLocation:locationCopy isCoordinate:1];
  }
}

- (BOOL)_wouldDuplicateTrailingAnchorWithCoordinate:(CLLocationCoordinate2D)coordinate
{
  longitude = coordinate.longitude;
  latitude = coordinate.latitude;
  lastObject = [(NSMutableArray *)self->_editStack lastObject];
  anchorPoints = [lastObject anchorPoints];
  lastObject2 = [anchorPoints lastObject];
  [lastObject2 locationCoordinate];
  v11 = vabdd_f64(latitude, v10) < 0.000000999999997 && vabdd_f64(longitude, v8) < 0.000000999999997 && vabdd_f64(1.79769313e308, v9) < 0.000000999999997;

  return v11;
}

- (void)_appendAnchorPoint:(id)point
{
  pointCopy = point;
  v5 = sub_1007989A4();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v12 = pointCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Appending anchor point: %@", buf, 0xCu);
  }

  objc_initWeak(buf, self);
  routeEditor = self->_routeEditor;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1009BCAE4;
  v8[3] = &unk_10165D288;
  objc_copyWeak(&v10, buf);
  v7 = pointCopy;
  v9 = v7;
  [(MNRouteEditor *)routeEditor validateAnchorPoint:v7 handler:v8];

  objc_destroyWeak(&v10);
  objc_destroyWeak(buf);
}

- (void)_appendMapItem:(id)item isCurrentLocation:(BOOL)location isCoordinate:(BOOL)coordinate
{
  itemCopy = item;
  [(GEOMapServiceTicket *)self->_currentReverseGeocodeTicket cancel];
  objc_initWeak(&location, self);
  v28 = _NSConcreteStackBlock;
  v29 = 3221225472;
  v30 = sub_1009BCFE0;
  v31 = &unk_101630F88;
  objc_copyWeak(&v33, &location);
  locationCopy = location;
  v9 = itemCopy;
  v32 = v9;
  coordinateCopy = coordinate;
  v10 = objc_retainBlock(&v28);
  if (([v9 _hasMUID] & 1) == 0)
  {
    v20 = sub_1007989A4();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v40 = v9;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_INFO, "Reverse geocoding and appending mapItem: %@", buf, 0xCu);
    }

    v21 = +[MKMapService sharedService];
    [v9 _coordinate];
    v23 = v22;
    v25 = v24;
    _traits = [(MapsRouteCreationContext *)self _traits];
    v18 = [v21 ticketForReverseGeocodeCoordinate:_traits traits:{v23, v25}];

    v27 = &_dispatch_main_q;
    [v18 submitWithHandler:v10 queue:&_dispatch_main_q networkActivity:0];
    goto LABEL_9;
  }

  _hasResolvablePartialInformation = [v9 _hasResolvablePartialInformation];
  v12 = sub_1007989A4();
  v13 = os_log_type_enabled(v12, OS_LOG_TYPE_INFO);
  if (_hasResolvablePartialInformation)
  {
    if (v13)
    {
      *buf = 138412290;
      v40 = v9;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "Refining map item and appending mapItem: %@", buf, 0xCu);
    }

    v14 = +[MKMapService sharedService];
    _identifier = [v9 _identifier];
    v38 = _identifier;
    v16 = [NSArray arrayWithObjects:&v38 count:1];
    _traits2 = [(MapsRouteCreationContext *)self _traits];
    v18 = [v14 ticketForIdentifiers:v16 traits:_traits2];

    v19 = &_dispatch_main_q;
    [v18 submitWithHandler:v10 queue:&_dispatch_main_q networkActivity:0];
LABEL_9:

    goto LABEL_13;
  }

  if (v13)
  {
    *buf = 138412290;
    v40 = v9;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "Appending mapItem without reverse geocoding: %@", buf, 0xCu);
  }

  v37 = v9;
  v18 = [NSArray arrayWithObjects:&v37 count:1];
  (v10[2])(v10, v18, 0);
LABEL_13:

  objc_destroyWeak(&v33);
  objc_destroyWeak(&location);
}

- (void)_removeRippleView
{
  v3 = sub_1007989A4();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "Stop ripple animation", v7, 2u);
  }

  rippleView = [(MapsRippleAnnotation *)self->_rippleAnnotation rippleView];
  [rippleView stopAnimating];

  chromeViewController = [(MapsRouteCreationContext *)self chromeViewController];
  mapView = [chromeViewController mapView];
  [mapView removeAnnotation:self->_rippleAnnotation];
}

- (void)_insertRippleAnnotationAtCoordinate:(CLLocationCoordinate2D)coordinate
{
  longitude = coordinate.longitude;
  latitude = coordinate.latitude;
  v6 = sub_1007989A4();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    *v10 = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "Start ripple animation", v10, 2u);
  }

  [NSObject cancelPreviousPerformRequestsWithTarget:self selector:"_removeRippleView" object:0];
  [(MapsRippleAnnotation *)self->_rippleAnnotation setCoordinate:latitude, longitude];
  chromeViewController = [(MapsRouteCreationContext *)self chromeViewController];
  mapView = [chromeViewController mapView];
  [mapView addAnnotation:self->_rippleAnnotation];

  rippleView = [(MapsRippleAnnotation *)self->_rippleAnnotation rippleView];
  [rippleView startAnimating];
}

- (void)_showRecenterButton
{
  composedRoute = self->_composedRoute;
  [(CardView *)self->_recenterButtonContainer alpha];
  if (composedRoute)
  {
    v5 = v4 < 1.0;
  }

  else
  {
    v5 = 0;
  }

  if (v5)
  {
    v6 = sub_1007989A4();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "animating to show recenter button", buf, 2u);
    }

    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_1009BD788;
    v7[3] = &unk_101661B18;
    v7[4] = self;
    [UIView animateWithDuration:v7 animations:0.3];
  }
}

- (void)didTapMapView:(id)view atPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  viewCopy = view;
  v8 = sub_1007989A4();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v18 = 134218240;
    v19 = x;
    v20 = 2048;
    v21 = y;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "Tap point: %g, %g", &v18, 0x16u);
  }

  v9 = [(MapsRouteCreationContext *)self _anchorNearPoint:x, y];
  if (v9)
  {
    composedRoute = [(MapsRouteCreationContext *)self composedRoute];
    anchorPoints = [composedRoute anchorPoints];
    v12 = [anchorPoints indexOfAnchorPoint:v9];

    if (!self->_anchorPointAttachedToMenu)
    {
      v13 = sub_1007989A4();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        composedRoute2 = [(MapsRouteCreationContext *)self composedRoute];
        anchorPoints2 = [composedRoute2 anchorPoints];
        v16 = [anchorPoints2 indexOfAnchorPoint:v9];
        v18 = 134217984;
        v19 = *&v16;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "Tapped anchor point at index: %lu (map view)", &v18, 0xCu);
      }

      [(MapsRouteCreationContext *)self _moveContextMenuToPoint:v9 anchorPoint:x, y];
      goto LABEL_13;
    }
  }

  else
  {
    if (!self->_anchorPointAttachedToMenu)
    {
      [viewCopy convertPoint:viewCopy toCoordinateFromView:{x, y}];
      [(MapsRouteCreationContext *)self _appendCoordinate:0 isCurrentLocation:?];
      goto LABEL_13;
    }

    v12 = 0x7FFFFFFFFFFFFFFFLL;
  }

  v17 = sub_1007989A4();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
  {
    v18 = 134217984;
    v19 = *&v12;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, "Ignoring anchor point at index: %lu (map view) due to an existing context menu", &v18, 0xCu);
  }

LABEL_13:
}

- (id)_anchorNearPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  chromeViewController = [(MapsRouteCreationContext *)self chromeViewController];
  mapView = [chromeViewController mapView];

  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  composedRoute = [(MapsRouteCreationContext *)self composedRoute];
  anchorPoints = [composedRoute anchorPoints];

  v10 = [anchorPoints countByEnumeratingWithState:&v27 objects:v37 count:16];
  if (v10)
  {
    v12 = v10;
    v13 = 0;
    v14 = *v28;
    v15 = 1600.0;
    *&v11 = 134218496;
    v26 = v11;
    do
    {
      for (i = 0; i != v12; i = i + 1)
      {
        if (*v28 != v14)
        {
          objc_enumerationMutation(anchorPoints);
        }

        v17 = *(*(&v27 + 1) + 8 * i);
        [v17 locationCoordinate];
        [mapView convertCoordinate:mapView toPointToView:?];
        v19 = v18;
        v21 = v20;
        v22 = (y - v20) * (y - v20) + (x - v18) * (x - v18);
        v23 = sub_1007989A4();
        if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
        {
          *buf = v26;
          v32 = v19;
          v33 = 2048;
          v34 = v21;
          v35 = 2048;
          v36 = v22;
          _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEBUG, "Anchor position: %g, %g. Tap point distance from anchor: %g", buf, 0x20u);
        }

        if (v22 < v15)
        {
          v24 = v17;

          v15 = v22;
          v13 = v24;
        }
      }

      v12 = [anchorPoints countByEnumeratingWithState:&v27 objects:v37 count:16];
    }

    while (v12);
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (id)_anchorNearMapItem:(id)item
{
  itemCopy = item;
  composedRoute = [(MapsRouteCreationContext *)self composedRoute];
  anchorPoints = [composedRoute anchorPoints];
  v7 = [(MapsRouteCreationContext *)self _anchorPointNearMapItem:itemCopy inAnchorPoints:anchorPoints];

  if (v7)
  {
    v8 = v7;
  }

  else
  {
    chromeViewController = [(MapsRouteCreationContext *)self chromeViewController];
    mapView = [chromeViewController mapView];

    location = [itemCopy location];
    [location coordinate];
    v13 = v12;
    v15 = v14;

    [mapView convertCoordinate:mapView toPointToView:{v13, v15}];
    v8 = [(MapsRouteCreationContext *)self _anchorNearPoint:?];
  }

  return v8;
}

- (id)_anchorPointNearMapItem:(id)item inAnchorPoints:(id)points
{
  itemCopy = item;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  pointsCopy = points;
  v7 = [pointsCopy countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = *v14;
    while (2)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(pointsCopy);
        }

        v10 = *(*(&v13 + 1) + 8 * i);
        if ([v10 muid])
        {
          muid = [v10 muid];
          if (muid == [itemCopy _muid])
          {
            v7 = v10;
            goto LABEL_12;
          }
        }
      }

      v7 = [pointsCopy countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

LABEL_12:

  return v7;
}

- (id)_anchorNearCoordinate:(CLLocationCoordinate2D)coordinate
{
  v4 = [[CLLocation alloc] initWithLatitude:coordinate.latitude longitude:coordinate.longitude];
  v5 = [[MKMapItem alloc] initWithCLLocation:v4];
  v6 = [(MapsRouteCreationContext *)self _anchorNearMapItem:v5];

  return v6;
}

- (BOOL)chromeDidSelectFlyoverTourLabelMarker:(id)marker
{
  [marker coordinate];
  v6 = CLLocationCoordinate2DMake(v4, v5);
  [(MapsRouteCreationContext *)self _appendCoordinate:0 isCurrentLocation:v6.latitude, v6.longitude];
  return 1;
}

- (BOOL)chromeShouldAllowSelectingLabelMarker:(id)marker
{
  markerCopy = marker;
  if ([markerCopy featureType] == 19)
  {
    [markerCopy coordinate];
    v6 = v5;
    v8 = v7;

    chromeViewController = [(MapsRouteCreationContext *)self chromeViewController];
    mapView = [chromeViewController mapView];

    [mapView convertCoordinate:mapView toPointToView:{v6, v8}];
    v11 = [(MapsRouteCreationContext *)self _anchorNearPoint:?];
    if (v11 && !self->_anchorPointAttachedToMenu)
    {
      v15 = sub_1007989A4();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
      {
        composedRoute = [(MapsRouteCreationContext *)self composedRoute];
        anchorPoints = [composedRoute anchorPoints];
        v18 = 134217984;
        v19 = [anchorPoints indexOfAnchorPoint:v11];
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "Tapped anchor point at index: %lu (label marker)", &v18, 0xCu);
      }

      v12 = [v11 anchorPointType] == 3 || objc_msgSend(v11, "anchorPointType") == 4;
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    isTrail = [markerCopy isTrail];

    return isTrail ^ 1;
  }

  return v12;
}

- (BOOL)chromeDidSelectAnnotationView:(id)view
{
  viewCopy = view;
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    v5 = 0;
  }

  else
  {
    annotation = [viewCopy annotation];
    [annotation coordinate];
    v8 = v7;
    v10 = v9;

    v11 = [(MapsRouteCreationContext *)self _anchorNearCoordinate:v8, v10];
    v5 = v11 == 0;
    if (v11)
    {
      chromeViewController = [(MapsRouteCreationContext *)self chromeViewController];
      mapView = [chromeViewController mapView];

      [mapView convertCoordinate:mapView toPointToView:{v8, v10}];
      v15 = v14;
      v17 = v16;
      v18 = sub_1007989A4();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
      {
        composedRoute = [(MapsRouteCreationContext *)self composedRoute];
        anchorPoints = [composedRoute anchorPoints];
        v22 = 134217984;
        v23 = [anchorPoints indexOfAnchorPoint:v11];
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_INFO, "Tapped anchor point at index: %lu (annotation view)", &v22, 0xCu);
      }

      [(MapsRouteCreationContext *)self _setMenuAttachedAnchorPoint:v11];
      [(MapsRouteCreationContext *)self _moveContextMenuToPoint:v11 anchorPoint:v15, v17];
    }

    else
    {
      mapView = [viewCopy annotation];
      [mapView coordinate];
      [(MapsRouteCreationContext *)self _appendCoordinate:0 isCurrentLocation:?];
    }
  }

  return v5;
}

- (BOOL)chromeDidSelectUserLocationAnnotation:(id)annotation
{
  [annotation coordinate];
  v5 = v4;
  v7 = v6;
  v8 = [(MapsRouteCreationContext *)self _anchorNearCoordinate:?];
  if (v8)
  {
    chromeViewController = [(MapsRouteCreationContext *)self chromeViewController];
    mapView = [chromeViewController mapView];

    [mapView convertCoordinate:mapView toPointToView:{v5, v7}];
    v12 = v11;
    v14 = v13;
    v15 = sub_1007989A4();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      composedRoute = [(MapsRouteCreationContext *)self composedRoute];
      anchorPoints = [composedRoute anchorPoints];
      v19 = 134217984;
      v20 = [anchorPoints indexOfAnchorPoint:v8];
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "Tapped anchor point at index: %lu (user annotation)", &v19, 0xCu);
    }

    [(MapsRouteCreationContext *)self _setMenuAttachedAnchorPoint:v8];
    [(MapsRouteCreationContext *)self _moveContextMenuToPoint:v8 anchorPoint:v12, v14];
  }

  else
  {
    [(MapsRouteCreationContext *)self _appendCoordinate:1 isCurrentLocation:v5, v7];
  }

  return v8 == 0;
}

- (BOOL)chromeDidSelectMarkerForMapItem:(id)item
{
  itemCopy = item;
  v5 = [(MapsRouteCreationContext *)self _anchorNearMapItem:itemCopy];
  lastObject = [(NSMutableArray *)self->_editStack lastObject];
  anchorPoints = [lastObject anchorPoints];
  v8 = [(MapsRouteCreationContext *)self _anchorPointNearMapItem:itemCopy inAnchorPoints:anchorPoints];

  anchorPointAttachedToMenu = self->_anchorPointAttachedToMenu;
  if (anchorPointAttachedToMenu)
  {
    v10 = sub_1007989A4();
    if (!os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
LABEL_5:

      goto LABEL_15;
    }

    v23 = 138412290;
    v24 = v5;
    v11 = "Ignoring anchor point at index: %@ (marker) due to an existing context menu";
LABEL_4:
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, v11, &v23, 0xCu);
    goto LABEL_5;
  }

  if (!v5)
  {
    composedRoute = self->_composedRoute;
    [(UINotificationFeedbackGenerator *)self->_notificationGenerator notificationOccurred:0];
    if (composedRoute || !v8)
    {
      [(MapsRouteCreationContext *)self _expandCardIfNeeded];
      [(MapsRouteCreationContext *)self _appendMapItem:itemCopy isCurrentLocation:0 isCoordinate:0];
      goto LABEL_15;
    }

    v10 = sub_1007989A4();
    if (!os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      goto LABEL_5;
    }

    v23 = 138412290;
    v24 = v8;
    v11 = "Pretending to add anchorPoint (%@) because it's already in the anchor point list";
    goto LABEL_4;
  }

  v12 = sub_1007989A4();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    composedRoute = [(MapsRouteCreationContext *)self composedRoute];
    anchorPoints2 = [composedRoute anchorPoints];
    v23 = 134217984;
    v24 = [anchorPoints2 indexOfAnchorPoint:v5];
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "Tapped anchor point at index: %lu (marker)", &v23, 0xCu);
  }

  chromeViewController = [(MapsRouteCreationContext *)self chromeViewController];
  mapView = [chromeViewController mapView];

  [v5 locationCoordinate];
  v18 = v17;
  v20 = v19;
  [(MapsRouteCreationContext *)self _setMenuAttachedAnchorPoint:v5];
  [mapView convertCoordinate:mapView toPointToView:{v18, v20}];
  [(MapsRouteCreationContext *)self _moveContextMenuToPoint:v5 anchorPoint:?];

LABEL_15:
  return anchorPointAttachedToMenu == 0;
}

- (BOOL)chromeDidSelectClusteredFeatureAnnotationsMarker:(id)marker
{
  [marker coordinate];
  v6 = CLLocationCoordinate2DMake(v4, v5);
  [(MapsRouteCreationContext *)self _appendCoordinate:0 isCurrentLocation:v6.latitude, v6.longitude];
  return 1;
}

- (BOOL)chromeDidSelectClusteredWaypointMarker:(id)marker
{
  [marker coordinate];
  v6 = CLLocationCoordinate2DMake(v4, v5);
  [(MapsRouteCreationContext *)self _appendCoordinate:0 isCurrentLocation:v6.latitude, v6.longitude];
  return 1;
}

- (BOOL)chromeDidSelectTrafficIncident:(id)incident latitude:(id)latitude longitude:(id)longitude
{
  longitudeCopy = longitude;
  [latitude doubleValue];
  v9 = v8;
  [longitudeCopy doubleValue];
  v11 = v10;

  v12 = CLLocationCoordinate2DMake(v9, v11);
  [(MapsRouteCreationContext *)self _appendCoordinate:0 isCurrentLocation:v12.latitude, v12.longitude];
  return 1;
}

- (BOOL)chromeDidSelectCustomPOIAnnotation:(id)annotation
{
  annotationCopy = annotation;
  chromeViewController = [(MapsRouteCreationContext *)self chromeViewController];
  isTransitioning = [chromeViewController isTransitioning];

  if (isTransitioning)
  {
    v7 = sub_1007989A4();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v10 = 138412290;
      v11 = annotationCopy;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "Ignoring POI selection: %@", &v10, 0xCu);
    }
  }

  else
  {
    [(UINotificationFeedbackGenerator *)self->_notificationGenerator notificationOccurred:0];
    [(MapsRouteCreationContext *)self _expandCardIfNeeded];
    mapItem = [annotationCopy mapItem];
    [(MapsRouteCreationContext *)self _appendMapItem:mapItem isCurrentLocation:0 isCoordinate:0];
  }

  return 1;
}

- (void)containeeViewControllerGoToPreviousState:(id)state withSender:(id)sender
{
  v5 = [(MapsRouteCreationContext *)self chromeViewController:state];
  [v5 popContext:self animated:1 completion:0];
}

- (id)_traits
{
  v3 = +[GEOMapService sharedService];
  defaultUserInitiatedTraits = [v3 defaultUserInitiatedTraits];

  chromeViewController = [(MapsRouteCreationContext *)self chromeViewController];
  currentTraits = [chromeViewController currentTraits];

  if (currentTraits)
  {
    [defaultUserInitiatedTraits copyTo:currentTraits];
  }

  else
  {
    currentTraits = defaultUserInitiatedTraits;
  }

  return currentTraits;
}

- (void)didSaveCustomRoute:(id)route
{
  routeCopy = route;
  v5 = sub_1007989A4();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v12 = 136315138;
    v13 = "[MapsRouteCreationContext didSaveCustomRoute:]";
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%s", &v12, 0xCu);
  }

  routeID = [routeCopy routeID];
  uniqueRouteID = [(GEOComposedRoute *)self->_composedRoute uniqueRouteID];
  v8 = [routeID isEqual:uniqueRouteID];

  if (v8)
  {
    [(GEOComposedRoute *)self->_composedRoute updateWithPersistentData:routeCopy];
    v9 = [[MapsCustomRouteViewContext alloc] initWithExistingRoute:self->_composedRoute];
  }

  else
  {
    v9 = [[MapsCustomRouteViewContext alloc] initWithExistingRouteData:routeCopy];
  }

  v10 = v9;
  [(MapsCustomRouteViewContext *)v9 setExitRouteCreationOnClose:1];
  chromeViewController = [(MapsRouteCreationContext *)self chromeViewController];
  [chromeViewController pushContext:v10 animated:1 completion:0];
}

- (void)popContainee
{
  v3 = sub_1007989A4();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v5 = 136315138;
    v6 = "[MapsRouteCreationContext popContainee]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "%s", &v5, 0xCu);
  }

  [(NSMutableArray *)self->_containees removeLastObject];
  chromeViewController = [(MapsRouteCreationContext *)self chromeViewController];
  [chromeViewController setNeedsUpdateComponent:@"cards" animated:1];
}

- (void)pushSaveContainee
{
  v3 = sub_1007989A4();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v6 = 136315138;
    v7 = "[MapsRouteCreationContext pushSaveContainee]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "%s", &v6, 0xCu);
  }

  _traits = [(MapsRouteCreationContext *)self _traits];
  [(MapsSaveRouteContainee *)self->_saveContainee setTraits:_traits];

  [(NSMutableArray *)self->_containees addObject:self->_saveContainee];
  chromeViewController = [(MapsRouteCreationContext *)self chromeViewController];
  [chromeViewController setNeedsUpdateComponent:@"cards" animated:1];
}

- (void)resignTopContextInChromeViewController:(id)controller withAnimation:(id)animation
{
  controllerCopy = controller;
  animationCopy = animation;
  objc_initWeak(&location, self);
  [(MNRouteEditor *)self->_routeEditor endSession];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_1009BEF80;
  v15[3] = &unk_101661B98;
  objc_copyWeak(&v16, &location);
  [animationCopy addPreparation:v15];
  currentContextTransition = [controllerCopy currentContextTransition];
  enterAnimation = [currentContextTransition enterAnimation];

  if (enterAnimation)
  {
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_1009BF0BC;
    v13[3] = &unk_101661B98;
    v10 = &v14;
    objc_copyWeak(&v14, &location);
    [enterAnimation addAnimations:v13];
  }

  else
  {
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_1009BF108;
    v11[3] = &unk_1016619A8;
    v10 = &v12;
    objc_copyWeak(&v12, &location);
    [animationCopy addCompletion:v11];
  }

  objc_destroyWeak(v10);

  objc_destroyWeak(&v16);
  objc_destroyWeak(&location);
}

- (int64_t)preferredMapScaleVisibility
{
  chromeViewController = [(MapsRouteCreationContext *)self chromeViewController];
  v4 = sub_10000FA08(chromeViewController);

  if (v4 == 5)
  {
    if (+[MapsSettings alwaysShowScale])
    {
      return 2;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    superview = [(MapsPopupMessageView *)self->_popupMessageView superview];
    v5 = superview != 0;
  }

  return v5;
}

- (void)becomeTopContextInChromeViewController:(id)controller withAnimation:(id)animation
{
  controllerCopy = controller;
  animationCopy = animation;
  objc_initWeak(&location, self);
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1009BF2B4;
  v8[3] = &unk_101661B98;
  objc_copyWeak(&v9, &location);
  [animationCopy addPreparation:v8];
  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

- (void)_createFakeButton
{
  [(MapsMenuButton *)self->_contextMenuFakeButton removeFromSuperview];
  v3 = [[MapsMenuButton alloc] initWithDelegate:self];
  contextMenuFakeButton = self->_contextMenuFakeButton;
  self->_contextMenuFakeButton = v3;

  [(MapsMenuButton *)self->_contextMenuFakeButton setShowsMenuAsPrimaryAction:1];
  [(MapsMenuButton *)self->_contextMenuFakeButton setHidden:1];
  objc_initWeak(&location, self);
  v9 = _NSConcreteStackBlock;
  v10 = 3221225472;
  v11 = sub_1009BF624;
  v12 = &unk_10164DD60;
  objc_copyWeak(&v13, &location);
  [(MapsMenuButton *)self->_contextMenuFakeButton _setMenuProvider:&v9];
  v5 = [(MapsRouteCreationContext *)self chromeViewController:v9];
  v6 = [v5 isTopContext:self];

  if (v6)
  {
    chromeViewController = [(MapsRouteCreationContext *)self chromeViewController];
    mapView = [chromeViewController mapView];
    [mapView addSubview:self->_contextMenuFakeButton];
  }

  objc_destroyWeak(&v13);
  objc_destroyWeak(&location);
}

- (MapsRouteCreationContext)initWithExistingMapItems:(id)items
{
  itemsCopy = items;
  v138.receiver = self;
  v138.super_class = MapsRouteCreationContext;
  v5 = [(MapsRouteCreationContext *)&v138 init];
  if (v5)
  {
    v6 = [[MNRouteEditor alloc] initWithTraceRecordingEnabled:GEOConfigGetBOOL()];
    routeEditor = v5->_routeEditor;
    v5->_routeEditor = v6;

    v8 = [[MapsRouteCreationContainee alloc] initWithContext:v5];
    editContainee = v5->_editContainee;
    v5->_editContainee = v8;

    v10 = [[MapsSaveRouteContainee alloc] initWithDelegate:v5 isEditing:0 showInitialKeyboard:1];
    saveContainee = v5->_saveContainee;
    v5->_saveContainee = v10;

    v12 = [NSMutableArray arrayWithObject:v5->_editContainee];
    containees = v5->_containees;
    v5->_containees = v12;

    [(ContaineeViewController *)v5->_editContainee setContaineeDelegate:v5];
    v134 = itemsCopy;
    if ([itemsCopy count])
    {
      [RouteCreationEditState initialEditStateFromMapItems:itemsCopy];
    }

    else
    {
      [RouteCreationEditState initialEditStateFromRoute:0];
    }
    v14 = ;
    v15 = [NSMutableArray arrayWithObject:v14];
    editStack = v5->_editStack;
    v5->_editStack = v15;

    v17 = objc_opt_new();
    undoManager = v5->_undoManager;
    v5->_undoManager = v17;

    v19 = [UIFont systemFontOfSize:20.0 weight:UIFontWeightSemibold];
    v20 = [UIImageSymbolConfiguration configurationWithFont:v19];

    v21 = [[CardView alloc] initAllowingBlurredForButton:1 buttonBackgroundType:0];
    [v21 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v21 setLayoutStyle:6];
    if ((_UISolariumEnabled() & 1) == 0)
    {
      v22 = [UIColor colorWithWhite:0.0 alpha:0.0799999982];
      cGColor = [v22 CGColor];
      layer = [v21 layer];
      [layer setBorderColor:cGColor];

      layer2 = [v21 layer];
      [layer2 setCornerRadius:8.0];

      layer3 = [v21 layer];
      [layer3 setBorderWidth:0.5];

      v27 = [UIColor colorWithWhite:0.0 alpha:0.0799999982];
      cGColor2 = [v27 CGColor];
      layer4 = [v21 layer];
      [layer4 setShadowColor:cGColor2];

      layer5 = [v21 layer];
      LODWORD(v31) = *"\nף=";
      [layer5 setShadowOpacity:v31];

      layer6 = [v21 layer];
      [layer6 setShadowOffset:{0.0, -2.0}];

      layer7 = [v21 layer];
      [layer7 setShadowPathIsBounds:1];
    }

    v136 = v21;
    objc_storeStrong(&v5->_undoButtonContainer, v21);
    v34 = [[UIButton alloc] initWithFrame:{0.0, 0.0, 44.0, 44.0}];
    [v34 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v34 setAccessibilityIdentifier:@"UndoButton"];
    v35 = [UIImage systemImageNamed:@"arrow.uturn.backward" withConfiguration:v20];
    [v34 setImage:v35 forState:0];

    [v34 addTarget:v5 action:"pressedUndo" forControlEvents:64];
    v36 = +[NSBundle mainBundle];
    v37 = [v36 localizedStringForKey:@"[Route Creation] Undo" value:@"localized string not found" table:0];
    [v34 setAccessibilityLabel:v37];

    v135 = v34;
    objc_storeStrong(&v5->_undoButton, v34);
    v38 = [[CardView alloc] initAllowingBlurredForButton:1 buttonBackgroundType:0];
    [v38 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v38 setLayoutStyle:6];
    v137 = v38;
    if ((_UISolariumEnabled() & 1) == 0)
    {
      v39 = [UIColor colorWithWhite:0.0 alpha:0.0799999982];
      cGColor3 = [v39 CGColor];
      layer8 = [v38 layer];
      [layer8 setBorderColor:cGColor3];

      layer9 = [v137 layer];
      [layer9 setCornerRadius:8.0];

      layer10 = [v137 layer];
      [layer10 setBorderWidth:0.5];

      v44 = [UIColor colorWithWhite:0.0 alpha:0.0799999982];
      cGColor4 = [v44 CGColor];
      layer11 = [v137 layer];
      [layer11 setShadowColor:cGColor4];

      v38 = v137;
      layer12 = [v137 layer];
      LODWORD(v48) = *"\nף=";
      [layer12 setShadowOpacity:v48];

      layer13 = [v137 layer];
      [layer13 setShadowOffset:{0.0, -2.0}];

      layer14 = [v137 layer];
      [layer14 setShadowPathIsBounds:1];
    }

    objc_storeStrong(&v5->_recenterButtonContainer, v38);
    v51 = [[UIButton alloc] initWithFrame:{0.0, 0.0, 44.0, 44.0}];
    [v51 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v51 setAccessibilityIdentifier:@"RecenterButton"];
    v52 = +[NSBundle mainBundle];
    v53 = [v52 localizedStringForKey:@"[Route Creation][AX] Recenter on Route" value:@"localized string not found" table:0];
    [v51 setAccessibilityLabel:v53];

    v54 = [UIImage _systemImageNamed:@"location.bottomleft.forward.to.point.topright.scurvepath.dashed" withConfiguration:v20];
    [v51 setImage:v54 forState:0];

    [v51 addTarget:v5 action:"pressedRecenter" forControlEvents:64];
    [v51 imageEdgeInsets];
    [v51 setImageEdgeInsets:?];
    [v38 setAlpha:0.0];
    objc_storeStrong(&v5->_recenterButton, v51);
    v55 = [UIColor colorWithDynamicProvider:&stru_101630F38];
    [v135 setTintColor:v55];

    tintColor = [v135 tintColor];
    v133 = v51;
    [v51 setTintColor:tintColor];

    v57 = [[CardView alloc] initAllowingBlurredForButton:1 buttonBackgroundType:0];
    [(CardView *)v57 setTranslatesAutoresizingMaskIntoConstraints:0];
    [(CardView *)v57 setLayoutStyle:6];
    if ((_UISolariumEnabled() & 1) == 0)
    {
      v58 = [UIColor colorWithWhite:0.0 alpha:0.0799999982];
      cGColor5 = [v58 CGColor];
      layer15 = [(CardView *)v57 layer];
      [layer15 setBorderColor:cGColor5];

      layer16 = [(CardView *)v57 layer];
      [layer16 setCornerRadius:8.0];

      layer17 = [(CardView *)v57 layer];
      [layer17 setBorderWidth:0.5];

      v63 = [UIColor colorWithWhite:0.0 alpha:0.0799999982];
      cGColor6 = [v63 CGColor];
      layer18 = [(CardView *)v57 layer];
      [layer18 setShadowColor:cGColor6];

      layer19 = [(CardView *)v57 layer];
      LODWORD(v67) = *"\nף=";
      [layer19 setShadowOpacity:v67];

      layer20 = [(CardView *)v57 layer];
      [layer20 setShadowOffset:{0.0, -2.0}];

      layer21 = [(CardView *)v57 layer];
      [layer21 setShadowPathIsBounds:1];
    }

    centerButtonsContainer = v5->_centerButtonsContainer;
    v5->_centerButtonsContainer = v57;
    v132 = v57;

    v71 = [[UIButton alloc] initWithFrame:{0.0, 0.0, 44.0, 44.0}];
    [(UIButton *)v71 setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIButton *)v71 setAccessibilityIdentifier:@"CreateARouteReverseButton"];
    v72 = [UIImage systemImageNamed:@"arrow.up.arrow.down" withConfiguration:v20];
    [(UIButton *)v71 setImage:v72 forState:0];

    [(UIButton *)v71 addTarget:v5 action:"pressedReverse" forControlEvents:64];
    v73 = +[NSBundle mainBundle];
    v74 = [v73 localizedStringForKey:@"[Route Creation] Reverse Button" value:@"localized string not found" table:0];
    [(UIButton *)v71 setAccessibilityLabel:v74];

    reverseButton = v5->_reverseButton;
    v5->_reverseButton = v71;
    v76 = v71;

    v77 = [[UIButton alloc] initWithFrame:{0.0, 0.0, 44.0, 44.0}];
    [(UIButton *)v77 setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIButton *)v77 setAccessibilityIdentifier:@"CreateARouteOutBackButton"];
    v131 = v20;
    v78 = [UIImage systemImageNamed:@"point.bottomleft.forward.to.arrowtriangle.uturn.scurvepath.fill" withConfiguration:v20];
    [(UIButton *)v77 setImage:v78 forState:0];

    [(UIButton *)v77 addTarget:v5 action:"pressedOutAndBack" forControlEvents:64];
    v79 = +[NSBundle mainBundle];
    v80 = [v79 localizedStringForKey:@"[Route Creation] Out-n-Back Button" value:@"localized string not found" table:0];
    [(UIButton *)v77 setAccessibilityLabel:v80];

    outAndBackButton = v5->_outAndBackButton;
    v5->_outAndBackButton = v77;
    v82 = v77;

    v83 = [[UIButton alloc] initWithFrame:{0.0, 0.0, 44.0, 44.0}];
    [(UIButton *)v83 setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIButton *)v83 setAccessibilityIdentifier:@"CreateARouteCloseLoopButton"];
    v84 = [UIImage systemImageNamed:@"point.forward.to.point.capsulepath.fill" withConfiguration:v20];
    [(UIButton *)v83 setImage:v84 forState:0];

    [(UIButton *)v83 addTarget:v5 action:"pressedCloseLoop" forControlEvents:64];
    v85 = +[NSBundle mainBundle];
    v86 = [v85 localizedStringForKey:@"[Route Creation] Close Loop Button" value:@"localized string not found" table:0];
    [(UIButton *)v83 setAccessibilityLabel:v86];

    closeLoopButton = v5->_closeLoopButton;
    v5->_closeLoopButton = v83;
    v88 = v83;

    [(MapsRouteCreationContext *)v5 _updateCenterButtons];
    v89 = [UIStackView alloc];
    v140[0] = v76;
    v140[1] = v82;
    v140[2] = v88;
    v90 = [NSArray arrayWithObjects:v140 count:3];
    v91 = [v89 initWithArrangedSubviews:v90];

    [(UIStackView *)v91 setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIStackView *)v91 setSpacing:10.0];
    LODWORD(v92) = 1148846080;
    [(UIStackView *)v91 setContentHuggingPriority:0 forAxis:v92];
    centerButtonsStackView = v5->_centerButtonsStackView;
    v5->_centerButtonsStackView = v91;
    v121 = v91;

    [(MapsRouteCreationContext *)v5 _createFakeButton];
    v94 = objc_opt_new();
    notificationGenerator = v5->_notificationGenerator;
    v5->_notificationGenerator = v94;

    v96 = objc_opt_new();
    rippleAnnotation = v5->_rippleAnnotation;
    v5->_rippleAnnotation = v96;

    widthAnchor = [v136 widthAnchor];
    v129 = [widthAnchor constraintEqualToConstant:44.0];
    v139[0] = v129;
    heightAnchor = [v136 heightAnchor];
    v127 = [heightAnchor constraintEqualToConstant:44.0];
    v139[1] = v127;
    widthAnchor2 = [(UIButton *)v5->_undoButton widthAnchor];
    v125 = [widthAnchor2 constraintEqualToConstant:44.0];
    v139[2] = v125;
    heightAnchor2 = [(UIButton *)v5->_undoButton heightAnchor];
    v123 = [heightAnchor2 constraintEqualToConstant:44.0];
    v139[3] = v123;
    widthAnchor3 = [v137 widthAnchor];
    v120 = [widthAnchor3 constraintEqualToConstant:44.0];
    v139[4] = v120;
    heightAnchor3 = [v137 heightAnchor];
    v118 = [heightAnchor3 constraintEqualToConstant:44.0];
    v139[5] = v118;
    widthAnchor4 = [(UIButton *)v5->_recenterButton widthAnchor];
    v116 = [widthAnchor4 constraintEqualToConstant:44.0];
    v139[6] = v116;
    heightAnchor4 = [(UIButton *)v5->_recenterButton heightAnchor];
    v114 = [heightAnchor4 constraintEqualToConstant:44.0];
    v139[7] = v114;
    v107 = v76;
    widthAnchor5 = [(UIButton *)v76 widthAnchor];
    v112 = [widthAnchor5 constraintEqualToConstant:44.0];
    v139[8] = v112;
    heightAnchor5 = [(UIButton *)v76 heightAnchor];
    v110 = [heightAnchor5 constraintEqualToConstant:44.0];
    v139[9] = v110;
    v98 = v82;
    widthAnchor6 = [(UIButton *)v82 widthAnchor];
    v108 = [widthAnchor6 constraintEqualToConstant:44.0];
    v139[10] = v108;
    heightAnchor6 = [(UIButton *)v82 heightAnchor];
    v100 = [heightAnchor6 constraintEqualToConstant:44.0];
    v139[11] = v100;
    widthAnchor7 = [(UIButton *)v88 widthAnchor];
    v102 = [widthAnchor7 constraintEqualToConstant:44.0];
    v139[12] = v102;
    heightAnchor7 = [(UIButton *)v88 heightAnchor];
    v104 = [heightAnchor7 constraintEqualToConstant:44.0];
    v139[13] = v104;
    v105 = [NSArray arrayWithObjects:v139 count:14];
    [NSLayoutConstraint activateConstraints:v105];

    itemsCopy = v134;
  }

  return v5;
}

@end