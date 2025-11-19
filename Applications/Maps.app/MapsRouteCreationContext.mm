@interface MapsRouteCreationContext
- (BOOL)_wouldDuplicateTrailingAnchorWithCoordinate:(CLLocationCoordinate2D)a3;
- (BOOL)chromeDidSelectAnnotationView:(id)a3;
- (BOOL)chromeDidSelectClusteredFeatureAnnotationsMarker:(id)a3;
- (BOOL)chromeDidSelectClusteredWaypointMarker:(id)a3;
- (BOOL)chromeDidSelectCustomPOIAnnotation:(id)a3;
- (BOOL)chromeDidSelectFlyoverTourLabelMarker:(id)a3;
- (BOOL)chromeDidSelectMarkerForMapItem:(id)a3;
- (BOOL)chromeDidSelectTrafficIncident:(id)a3 latitude:(id)a4 longitude:(id)a5;
- (BOOL)chromeDidSelectUserLocationAnnotation:(id)a3;
- (BOOL)chromeShouldAllowSelectingLabelMarker:(id)a3;
- (BOOL)closeLoopEnabled;
- (BOOL)outAndBackEnabled;
- (BOOL)reverseEnabled;
- (BOOL)undoEnabled;
- (BOOL)wantsCompassLayoutControl;
- (ChromeViewController)chromeViewController;
- (MapsRouteCreationContext)initWithExistingMapItems:(id)a3;
- (RouteAnnotationsConfiguration)routeAnnotationsConfiguration;
- (id)_anchorNearCoordinate:(CLLocationCoordinate2D)a3;
- (id)_anchorNearMapItem:(id)a3;
- (id)_anchorNearPoint:(CGPoint)a3;
- (id)_anchorPointNearMapItem:(id)a3 inAnchorPoints:(id)a4;
- (id)_errorMessageForError:(id)a3 directionsError:(id)a4 request:(id)a5 isOffline:(BOOL)a6 shouldBackoutEdit:(BOOL *)a7;
- (id)_errorMessageForUnsupportedCountry:(id)a3;
- (id)_mostRecentlyAddedAnchor;
- (id)_traits;
- (id)emptyStateVideoName;
- (id)routeData;
- (int64_t)preferredMapScaleVisibility;
- (unint64_t)_routeEditorActionForEditReason:(unint64_t)a3;
- (void)_appendAnchorPoint:(id)a3;
- (void)_appendCoordinate:(CLLocationCoordinate2D)a3 isCurrentLocation:(BOOL)a4;
- (void)_appendMapItem:(id)a3 isCurrentLocation:(BOOL)a4 isCoordinate:(BOOL)a5;
- (void)_backoutLastState;
- (void)_centerOnCurrentRouteAnimated:(BOOL)a3;
- (void)_createFakeButton;
- (void)_deleteFirstAnchorPointMatchingAnchorPoint:(id)a3;
- (void)_deleteLastAnchorPointMatchingAnchorPoint:(id)a3;
- (void)_expandCardIfNeeded;
- (void)_insertCenterButtons;
- (void)_insertEditStackButtons;
- (void)_insertRecenterButtonIfNeeded;
- (void)_insertRippleAnnotationAtCoordinate:(CLLocationCoordinate2D)a3;
- (void)_moveContextMenuToPoint:(CGPoint)a3 anchorPoint:(id)a4;
- (void)_popEditStack;
- (void)_presentPopupViewForMessage:(id)a3 timeout:(double)a4 isError:(BOOL)a5 ignoreChromeTransitioning:(BOOL)a6;
- (void)_pushEditState:(id)a3 shouldRecenterOnCompletion:(BOOL)a4;
- (void)_removeCenterButtons;
- (void)_removeEditStackButtons;
- (void)_removeRippleView;
- (void)_requeryStateWithAction:(unint64_t)a3 shouldRecenterOnCompletion:(BOOL)a4;
- (void)_setMenuAttachedAnchorPoint:(id)a3;
- (void)_showRecenterButton;
- (void)_undoEditStack:(id)a3;
- (void)_updateCenterButtons;
- (void)_updateCoachingPillWithIgnoreChromeTransitioning:(BOOL)a3;
- (void)_updateMenu;
- (void)_updateScaleAndCompass;
- (void)_updateUndoVisibility;
- (void)applyRouteDataAddress:(id)a3;
- (void)becomeTopContextInChromeViewController:(id)a3 withAnimation:(id)a4;
- (void)containeeViewControllerGoToPreviousState:(id)a3 withSender:(id)a4;
- (void)didSaveCustomRoute:(id)a3;
- (void)didTapMapView:(id)a3 atPoint:(CGPoint)a4;
- (void)menuWillDismissWithAnimator:(id)a3;
- (void)popContainee;
- (void)pressedCloseLoop;
- (void)pressedOutAndBack;
- (void)pressedRecenter;
- (void)pressedReverse;
- (void)pressedRoutePlanning;
- (void)pressedSave;
- (void)pressedStartNavigationWithCompletion:(id)a3;
- (void)pressedStartSteppingWithCompletion:(id)a3;
- (void)pressedUndo;
- (void)pushSaveContainee;
- (void)resignTopContextInChromeViewController:(id)a3 withAnimation:(id)a4;
@end

@implementation MapsRouteCreationContext

- (ChromeViewController)chromeViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_chromeViewController);

  return WeakRetained;
}

- (void)_updateCoachingPillWithIgnoreChromeTransitioning:(BOOL)a3
{
  v3 = a3;
  v5 = [(NSMutableArray *)self->_editStack lastObject];
  v6 = [v5 anchorPoints];

  v7 = [(MapsRouteCreationContext *)self chromeViewController];
  v8 = sub_10000FA08(v7);

  if (![v6 count])
  {
    v9 = +[NSBundle mainBundle];
    v10 = v9;
    v11 = @"[Route Creation] Empty State Start";
    v12 = @"[Route Creation] Empty State Start MacOS";
    goto LABEL_5;
  }

  if ([v6 count] == 1)
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

    [(MapsRouteCreationContext *)self _presentPopupViewForMessage:v14 timeout:0 isError:v3 ignoreChromeTransitioning:0.0];
    goto LABEL_9;
  }

  v15 = [(MapsPopupMessageView *)self->_popupMessageView superview];
  if (v15)
  {
    v16 = v15;
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
  v3 = [(MapsPopupMessageView *)self->_popupMessageView superview];

  v4 = [(MapsRouteCreationContext *)self chromeViewController];
  v8 = [v4 mapView];

  [v8 setShowsCompass:v3 == 0];
  v5 = [(MapsRouteCreationContext *)self chromeViewController];
  v6 = sub_10000FA08(v5);

  if (v6 != 5 && !v3)
  {
    [v8 _compassInsets];
    [v8 _setCompassInsets:0.0];
  }

  v7 = [(MapsRouteCreationContext *)self chromeViewController];
  [v7 setNeedsUpdateComponent:@"mapScale" animated:1];
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
    v5 = [(NSMutableArray *)self->_editStack lastObject];
    v6 = [v5 anchorPoints];

    v7 = [v6 firstObject];
    if ([v7 isEqual:v3])
    {
      v8 = 0;
    }

    else
    {
      v12 = [v6 lastObject];
      v13 = [v12 isEqual:v3];

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
    v26 = v6;
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
    v8 = [(NSMutableArray *)self->_containees lastObject];
    v5 = [v8 cardPresentationController];
    v6 = [v5 containeeLayout];

    if (v6 == 1)
    {
      v7 = [v8 cardPresentationController];
      [v7 wantsExpandLayout];
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
  v3 = [(CardView *)self->_recenterButtonContainer superview];

  if (!v3)
  {
    v4 = [(CardView *)self->_recenterButtonContainer contentView];
    [v4 addSubview:self->_recenterButton];

    v5 = [(MapsRouteCreationContext *)self chromeViewController];
    v6 = [v5 viewport];

    [v6 addSubview:self->_recenterButtonContainer];
    v7 = [(CardView *)self->_recenterButtonContainer trailingAnchor];
    v27 = v6;
    v8 = [v6 trailingAnchor];
    v9 = [v7 constraintEqualToAnchor:v8 constant:-10.0];
    v29[0] = v9;
    v10 = [(CardView *)self->_recenterButtonContainer bottomAnchor];
    v11 = [v6 bottomAnchor];
    v12 = [v10 constraintEqualToAnchor:v11 constant:-10.0];
    v29[1] = v12;
    v13 = [NSArray arrayWithObjects:v29 count:2];
    [NSLayoutConstraint activateConstraints:v13];

    v26 = [(UIButton *)self->_recenterButton leadingAnchor];
    v25 = [(CardView *)self->_recenterButtonContainer leadingAnchor];
    v24 = [v26 constraintEqualToAnchor:v25];
    v28[0] = v24;
    v14 = [(UIButton *)self->_recenterButton trailingAnchor];
    v15 = [(CardView *)self->_recenterButtonContainer trailingAnchor];
    v16 = [v14 constraintEqualToAnchor:v15];
    v28[1] = v16;
    v17 = [(UIButton *)self->_recenterButton topAnchor];
    v18 = [(CardView *)self->_recenterButtonContainer topAnchor];
    v19 = [v17 constraintEqualToAnchor:v18];
    v28[2] = v19;
    v20 = [(UIButton *)self->_recenterButton bottomAnchor];
    v21 = [(CardView *)self->_recenterButtonContainer bottomAnchor];
    v22 = [v20 constraintEqualToAnchor:v21];
    v28[3] = v22;
    v23 = [NSArray arrayWithObjects:v28 count:4];
    [NSLayoutConstraint activateConstraints:v23];
  }
}

- (void)_insertEditStackButtons
{
  v3 = [(MapsRouteCreationContext *)self chromeViewController];
  v4 = [v3 viewport];

  v5 = [(CardView *)self->_undoButtonContainer contentView];
  [v5 addSubview:self->_undoButton];

  [v4 addSubview:self->_undoButtonContainer];
  v6 = [(CardView *)self->_undoButtonContainer leadingAnchor];
  v26 = v4;
  v7 = [v4 leadingAnchor];
  v8 = [v6 constraintEqualToAnchor:v7 constant:10.0];
  v28[0] = v8;
  v9 = [(CardView *)self->_undoButtonContainer bottomAnchor];
  v10 = [v4 bottomAnchor];
  v11 = [v9 constraintEqualToAnchor:v10 constant:-10.0];
  v28[1] = v11;
  v12 = [NSArray arrayWithObjects:v28 count:2];
  [NSLayoutConstraint activateConstraints:v12];

  v25 = [(UIButton *)self->_undoButton leadingAnchor];
  v24 = [(CardView *)self->_undoButtonContainer leadingAnchor];
  v23 = [v25 constraintEqualToAnchor:v24];
  v27[0] = v23;
  v22 = [(UIButton *)self->_undoButton trailingAnchor];
  v13 = [(CardView *)self->_undoButtonContainer trailingAnchor];
  v14 = [v22 constraintEqualToAnchor:v13];
  v27[1] = v14;
  v15 = [(UIButton *)self->_undoButton topAnchor];
  v16 = [(CardView *)self->_undoButtonContainer topAnchor];
  v17 = [v15 constraintEqualToAnchor:v16];
  v27[2] = v17;
  v18 = [(UIButton *)self->_undoButton bottomAnchor];
  v19 = [(CardView *)self->_undoButtonContainer bottomAnchor];
  v20 = [v18 constraintEqualToAnchor:v19];
  v27[3] = v20;
  v21 = [NSArray arrayWithObjects:v27 count:4];
  [NSLayoutConstraint activateConstraints:v21];

  [(MapsRouteCreationContext *)self _updateUndoVisibility];
}

- (void)_insertCenterButtons
{
  v3 = [(MapsRouteCreationContext *)self chromeViewController];
  v4 = [v3 viewport];

  v5 = [(CardView *)self->_centerButtonsContainer contentView];
  [v5 addSubview:self->_centerButtonsStackView];

  [v4 addSubview:self->_centerButtonsContainer];
  v25 = [(UIStackView *)self->_centerButtonsStackView leadingAnchor];
  v24 = [(CardView *)self->_centerButtonsContainer leadingAnchor];
  v23 = [v25 constraintEqualToAnchor:v24 constant:5.0];
  v26[0] = v23;
  v22 = [(UIStackView *)self->_centerButtonsStackView trailingAnchor];
  v21 = [(CardView *)self->_centerButtonsContainer trailingAnchor];
  v20 = [v22 constraintEqualToAnchor:v21 constant:-5.0];
  v26[1] = v20;
  v19 = [(UIStackView *)self->_centerButtonsStackView topAnchor];
  v18 = [(CardView *)self->_centerButtonsContainer topAnchor];
  v17 = [v19 constraintEqualToAnchor:v18];
  v26[2] = v17;
  v6 = [(UIStackView *)self->_centerButtonsStackView bottomAnchor];
  v7 = [(CardView *)self->_centerButtonsContainer bottomAnchor];
  v8 = [v6 constraintEqualToAnchor:v7];
  v26[3] = v8;
  v9 = [(CardView *)self->_centerButtonsContainer centerXAnchor];
  v16 = v4;
  v10 = [v4 centerXAnchor];
  v11 = [v9 constraintEqualToAnchor:v10];
  v26[4] = v11;
  v12 = [(CardView *)self->_centerButtonsContainer bottomAnchor];
  v13 = [v4 bottomAnchor];
  v14 = [v12 constraintEqualToAnchor:v13 constant:-10.0];
  v26[5] = v14;
  v15 = [NSArray arrayWithObjects:v26 count:6];
  [NSLayoutConstraint activateConstraints:v15];
}

- (RouteAnnotationsConfiguration)routeAnnotationsConfiguration
{
  v3 = [RouteAnnotationsMutableConfiguration alloc];
  v4 = [(MapsRouteCreationContext *)self composedRoute];
  v5 = [(RouteAnnotationsConfiguration *)v3 initWithRoute:v4];

  [(RouteAnnotationsConfiguration *)v5 setRouteTrafficFeaturesActive:0];
  v6 = [(NSMutableArray *)self->_editStack lastObject];
  v7 = [v6 anchorPoints];
  [(RouteAnnotationsConfiguration *)v5 setAnchorPoints:v7];

  v8 = [(RouteAnnotationsMutableConfiguration *)v5 copy];

  return v8;
}

- (BOOL)wantsCompassLayoutControl
{
  v2 = [(MapsRouteCreationContext *)self chromeViewController];
  v3 = sub_10000FA08(v2) != 5;

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

- (void)_presentPopupViewForMessage:(id)a3 timeout:(double)a4 isError:(BOOL)a5 ignoreChromeTransitioning:(BOOL)a6
{
  v10 = a3;
  v11 = sub_1007989A4();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v30 = v10;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "Presenting popup for message: %@", buf, 0xCu);
  }

  objc_initWeak(buf, self);
  v21 = _NSConcreteStackBlock;
  v22 = 3221225472;
  v23 = sub_1009B9598;
  v24 = &unk_101631000;
  objc_copyWeak(v26, buf);
  v27 = a6;
  v12 = v10;
  v25 = v12;
  v26[1] = *&a4;
  v28 = a5;
  v13 = objc_retainBlock(&v21);
  if (-[MapsPopupMessageView isDismissing](self->_popupMessageView, "isDismissing", v21, v22, v23, v24) || (-[MapsPopupMessageView superview](self->_popupMessageView, "superview"), (v14 = objc_claimAutoreleasedReturnValue()) == 0) || (-[MapsPopupMessageView message](self->_popupMessageView, "message"), v15 = objc_claimAutoreleasedReturnValue(), v16 = [v15 isEqual:v12], v15, v14, !v16))
  {
    popupMessageView = self->_popupMessageView;
    if (!popupMessageView)
    {
      (v13[2])(v13);
      goto LABEL_14;
    }

    if (!a5)
    {
      [(MapsPopupMessageView *)popupMessageView timeout];
      popupMessageView = self->_popupMessageView;
      if (v18 > 2.22044605e-16)
      {
        v19 = [(MapsPopupMessageView *)popupMessageView superview];
        v20 = v19 == 0;

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

- (id)_errorMessageForError:(id)a3 directionsError:(id)a4 request:(id)a5 isOffline:(BOOL)a6 shouldBackoutEdit:(BOOL *)a7
{
  v37 = a6;
  v10 = a3;
  v11 = a4;
  v38[0] = _NSConcreteStackBlock;
  v38[1] = 3221225472;
  v38[2] = sub_1009B9D04;
  v38[3] = &unk_1016611D0;
  v38[4] = a7;
  v12 = objc_retainBlock(v38);
  if (v11 && [v11 problemDetailsCount])
  {
    v13 = 0;
    while (1)
    {
      v14 = [v11 problemDetailAtIndex:v13];
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
        v16 = v15;
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

      v16 = [(MapsRouteCreationContext *)self _mostRecentlyAddedAnchor];
      v18 = [v16 countryCode];
      v19 = [(MapsRouteCreationContext *)self _errorMessageForUnsupportedCountry:v18];

LABEL_27:
      if (v19)
      {
        (v12[2])(v12);
        goto LABEL_42;
      }

LABEL_28:
      if (++v13 >= [v11 problemDetailsCount])
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
        v20 = [(MapsRouteCreationContext *)self chromeViewController];
        v21 = sub_10000FA08(v20);

        v15 = +[NSBundle mainBundle];
        v16 = v15;
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
        v16 = v15;
        v17 = @"[Route Creation] Custom Routes too many anchors";
      }

      else
      {
        if (v14 != 22 || !v37)
        {
          goto LABEL_28;
        }

        v15 = +[NSBundle mainBundle];
        v16 = v15;
        v17 = @"[Route Creation] Offline route creation error";
      }

      goto LABEL_26;
    }

    v15 = +[NSBundle mainBundle];
    v16 = v15;
    v17 = @"[Route Creation] Custom Routes too far";
    goto LABEL_26;
  }

LABEL_29:
  v22 = [v10 domain];
  v23 = [v22 isEqual:MNErrorDomain];

  if (v23)
  {
    v24 = [v10 code];
    if (v24 == 9)
    {
      (v12[2])(v12);
      v33 = [v10 userInfo];
      v34 = [v33 objectForKeyedSubscript:MNRouteEditorErrorUnsupportedCountriesKey];

      v35 = [v34 anyObject];
      v19 = [(MapsRouteCreationContext *)self _errorMessageForUnsupportedCountry:v35];

      goto LABEL_42;
    }

    if (v24 == 8)
    {
      (v12[2])(v12);
      v25 = [(MapsRouteCreationContext *)self chromeViewController];
      v26 = sub_10000FA08(v25);

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

  v30 = [v10 domain];
  if ([v30 isEqual:NSURLErrorDomain])
  {
  }

  else
  {
    v31 = [v10 domain];
    v32 = [v31 isEqual:kCFErrorDomainCFNetwork];

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

- (id)_errorMessageForUnsupportedCountry:(id)a3
{
  v3 = +[NSBundle mainBundle];
  v4 = [v3 localizedStringForKey:@"[Route Creation] Custom Routes generic unavailability" value:@"localized string not found" table:0];

  return v4;
}

- (id)_mostRecentlyAddedAnchor
{
  v3 = [(NSMutableArray *)self->_editStack lastObject];
  v4 = [(NSMutableArray *)self->_editStack count]- 2;
  if (v4 < [(NSMutableArray *)self->_editStack count]&& ([(NSMutableArray *)self->_editStack objectAtIndexedSubscript:v4], (v5 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v6 = v5;
    v7 = [v3 anchorPoints];
    v8 = [v7 copy];

    v9 = [v6 anchorPoints];
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v10 = [v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
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
            objc_enumerationMutation(v9);
          }

          v14 = [*(*(&v17 + 1) + 8 * i) uniqueID];
          [v8 removeAnchorPointWithID:v14];
        }

        v11 = [v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v11);
    }

    v15 = [v8 lastObject];
  }

  else
  {
    v6 = [v3 anchorPoints];
    v15 = [v6 lastObject];
  }

  return v15;
}

- (void)_requeryStateWithAction:(unint64_t)a3 shouldRecenterOnCompletion:(BOOL)a4
{
  [(MapsRouteCreationContext *)self _updateUndoVisibility];
  v7 = [(NSMutableArray *)self->_editStack lastObject];
  v8 = [v7 anchorPoints];
  v9 = [v8 count];

  if (v9 > 1)
  {
    v18 = objc_opt_new();
    v19 = [v7 anchorPoints];
    [v18 setAnchorPoints:v19];

    [v18 setAction:a3];
    [v18 setCurrentRoute:self->_composedRoute];
    if (a3 - 1001 <= 1)
    {
      v20 = [v7 routePersistentData];
      [v18 setUndoRedoRouteData:v20];
    }

    v21 = objc_opt_new();
    [v21 setMainTransportType:2];
    [v21 setIncludeRoutingPathLeg:1];
    [v18 setRouteAttributes:v21];
    v22 = +[MapsOfflineUIHelper sharedHelper];
    v23 = [v22 isUsingOfflineMaps];

    objc_initWeak(&location, self);
    routeEditor = self->_routeEditor;
    v27[0] = _NSConcreteStackBlock;
    v27[1] = 3221225472;
    v27[2] = sub_1009BA240;
    v27[3] = &unk_101630FD8;
    objc_copyWeak(&v30, &location);
    v28 = v7;
    v31 = a4;
    v25 = v18;
    v29 = v25;
    v32 = v23;
    v26 = [(MNRouteEditor *)routeEditor requestRouteGeometry:v25 finishedHandler:v27];

    objc_destroyWeak(&v30);
    objc_destroyWeak(&location);
  }

  else
  {
    composedRoute = self->_composedRoute;
    self->_composedRoute = 0;

    [(MapsRouteCreationContainee *)self->_editContainee setRoute:0];
    v11 = [v7 anchorPoints];
    v12 = [v11 firstObject];

    v13 = [v12 displayInfo];
    [v13 _routeCreation_setStartWaypointCaption];

    if ([v12 isCurrentLocation])
    {
      v14 = [v12 displayInfo];
      [v14 _routeCreation_setMyLocationName];
    }

    v15 = [(MapsRouteCreationContext *)self chromeViewController];
    [v15 setNeedsUpdateComponent:@"routeAnnotations" animated:1];

    v16 = [(MapsRouteCreationContext *)self chromeViewController];
    v17 = [v16 mapSelectionManager];
    [v17 clearSelection];

    [(CardView *)self->_recenterButtonContainer removeFromSuperview];
    [(UIButton *)self->_recenterButton removeFromSuperview];
  }
}

- (unint64_t)_routeEditorActionForEditReason:(unint64_t)a3
{
  if (a3 - 1 > 4)
  {
    return 0;
  }

  else
  {
    return qword_101215030[a3 - 1];
  }
}

- (void)_popEditStack
{
  v3 = [(NSMutableArray *)self->_editStack lastObject];
  if (![v3 reason])
  {
    [NSException raise:NSInternalInconsistencyException format:@"You should never be able to pop the initial state"];
  }

  [(NSMutableArray *)self->_editStack removeLastObject];
  [(MapsRouteCreationContext *)self _requeryStateWithAction:1001 shouldRecenterOnCompletion:0];
  [(MapsRouteCreationContext *)self _updateCoachingPillWithIgnoreChromeTransitioning:0];
  [(MapsRouteCreationContext *)self _updateCenterButtons];
}

- (void)_undoEditStack:(id)a3
{
  v5 = [(NSMutableArray *)self->_editStack lastObject];
  [(NSUndoManager *)self->_undoManager registerUndoWithTarget:self selector:"_undoEditStack:" object:v5];
  v4 = sub_1006DF608([v5 reason], 1);
  [(NSUndoManager *)self->_undoManager setActionName:v4];

  [(MapsRouteCreationContext *)self _popEditStack];
}

- (void)_pushEditState:(id)a3 shouldRecenterOnCompletion:(BOOL)a4
{
  v4 = a4;
  editStack = self->_editStack;
  v7 = a3;
  [(NSMutableArray *)editStack addObject:v7];
  [(NSUndoManager *)self->_undoManager registerUndoWithTarget:self selector:"_undoEditStack:" object:0];
  v8 = sub_1006DF608([v7 reason], 0);
  [(NSUndoManager *)self->_undoManager setActionName:v8];

  v9 = [v7 reason];
  [(MapsRouteCreationContext *)self _requeryStateWithAction:[(MapsRouteCreationContext *)self _routeEditorActionForEditReason:v9] shouldRecenterOnCompletion:v4];
  [(MapsRouteCreationContext *)self _updateCoachingPillWithIgnoreChromeTransitioning:0];

  [(MapsRouteCreationContext *)self _updateCenterButtons];
}

- (void)applyRouteDataAddress:(id)a3
{
  v4 = a3;
  v5 = [(MapsRouteCreationContext *)self composedRoute];
  [v5 updateWithAddress:v4];
}

- (id)routeData
{
  v2 = [(MapsRouteCreationContext *)self composedRoute];
  v3 = [v2 persistentData];

  return v3;
}

- (void)menuWillDismissWithAnimator:(id)a3
{
  v4 = a3;
  v5 = sub_1007989A4();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v14 = "[MapsRouteCreationContext menuWillDismissWithAnimator:]";
    v15 = 2112;
    v16 = v4;
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
  if (v4)
  {
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_1009BAD20;
    v9[3] = &unk_101661760;
    v10 = v6;
    [v4 addCompletion:v9];
  }

  else
  {
    v8 = dispatch_time(0, 100000000);
    dispatch_after(v8, &_dispatch_main_q, v7);
  }

  objc_destroyWeak(&v12);
  objc_destroyWeak(buf);
}

- (void)_centerOnCurrentRouteAnimated:(BOOL)a3
{
  v3 = a3;
  v5 = sub_1007989A4();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 67109120;
    v13 = v3;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "_centerOnCurrentRouteAnimated: %d", buf, 8u);
  }

  v6 = 0.3;
  if (!v3)
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
    v7 = [(MapsRouteCreationContext *)self chromeViewController];
    v8 = [v7 mapCameraController];
    composedRoute = self->_composedRoute;
    v9 = [NSArray arrayWithObjects:&composedRoute count:1];
    [v8 frameRoutes:v9 includeCompassInset:0 animated:v3 completion:0];
  }
}

- (void)_updateCenterButtons
{
  v4 = [(NSMutableArray *)self->_editStack lastObject];
  v3 = [v4 anchorPoints];
  -[CardView setHidden:](self->_centerButtonsContainer, "setHidden:", [v3 count] < 2);
  [(UIButton *)self->_reverseButton setEnabled:[(MapsRouteCreationContext *)self reverseEnabled]];
  [(UIButton *)self->_outAndBackButton setEnabled:[(MapsRouteCreationContext *)self outAndBackEnabled]];
  [(UIButton *)self->_closeLoopButton setEnabled:[(MapsRouteCreationContext *)self closeLoopEnabled]];
}

- (void)_moveContextMenuToPoint:(CGPoint)a3 anchorPoint:(id)a4
{
  y = a3.y;
  x = a3.x;
  v7 = [(MapsMenuButton *)self->_contextMenuFakeButton superview];

  if (v7)
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

- (void)_setMenuAttachedAnchorPoint:(id)a3
{
  v4 = a3;
  v5 = sub_1007989A4();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v7 = 134217984;
    v8 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Setting _anchorPointAttachedToMenu to %p", &v7, 0xCu);
  }

  anchorPointAttachedToMenu = self->_anchorPointAttachedToMenu;
  self->_anchorPointAttachedToMenu = v4;
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
  v3 = [(NSMutableArray *)self->_editStack lastObject];
  v4 = [(MapsRouteCreationContainee *)self->_editContainee traitCollection];
  v5 = [v4 userInterfaceStyle];

  v6 = [v3 anchorPoints];
  v7 = [v6 count];

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

  if (v5 == 2)
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
  v4 = [(MapsRouteCreationContext *)self chromeViewController];
  [v4 resetForcedExploreModernMapFlag];

  v5 = [(MapsRouteCreationContext *)self chromeViewController];
  v6 = [v5 contexts];

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v7 = v6;
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

    v14 = [(MapsRouteCreationContext *)self chromeViewController];
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_1009BB80C;
    v19[3] = &unk_101661A90;
    v20 = v13;
    v21 = self;
    v15 = v13;
    [v14 popToContext:v15 animated:0 completion:v19];
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

- (void)pressedStartSteppingWithCompletion:(id)a3
{
  v4 = a3;
  v5 = sub_1007989A4();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v20 = "[MapsRouteCreationContext pressedStartSteppingWithCompletion:]";
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%s", buf, 0xCu);
  }

  [GEOAPPortal captureUserAction:3001 target:131 value:0];
  v6 = [(MapsRouteCreationContext *)self chromeViewController];
  [v6 resetForcedExploreModernMapFlag];

  v7 = self->_composedRoute;
  v8 = [(GEOComposedRoute *)v7 userProvidedName];
  if ([v8 length])
  {
    [(GEOComposedRoute *)v7 userProvidedName];
  }

  else
  {
    [(GEOComposedRoute *)v7 name];
  }
  v9 = ;

  v10 = [(MapsRouteCreationContext *)self chromeViewController];
  v11 = [v10 _maps_platformController];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_1009BBBE8;
  v15[3] = &unk_101630FB0;
  v16 = v7;
  v17 = v9;
  v18 = v4;
  v12 = v4;
  v13 = v9;
  v14 = v7;
  [v11 pushNavigationWithRoute:v14 navigationMode:2 shouldCheckNavSafetyAlert:1 completion:v15];
}

- (void)pressedStartNavigationWithCompletion:(id)a3
{
  v4 = a3;
  v5 = sub_1007989A4();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v20 = "[MapsRouteCreationContext pressedStartNavigationWithCompletion:]";
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%s", buf, 0xCu);
  }

  [GEOAPPortal captureUserAction:3001 target:131 value:0];
  v6 = [(MapsRouteCreationContext *)self chromeViewController];
  [v6 resetForcedExploreModernMapFlag];

  v7 = self->_composedRoute;
  v8 = [(GEOComposedRoute *)v7 userProvidedName];
  if ([v8 length])
  {
    [(GEOComposedRoute *)v7 userProvidedName];
  }

  else
  {
    [(GEOComposedRoute *)v7 name];
  }
  v9 = ;

  v10 = [(MapsRouteCreationContext *)self chromeViewController];
  v11 = [v10 _maps_platformController];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_1009BBEA4;
  v15[3] = &unk_101630FB0;
  v16 = v7;
  v17 = v9;
  v18 = v4;
  v12 = v4;
  v13 = v9;
  v14 = v7;
  [v11 pushNavigationWithRoute:v14 navigationMode:1 shouldCheckNavSafetyAlert:1 completion:v15];
}

- (BOOL)closeLoopEnabled
{
  v2 = [(NSMutableArray *)self->_editStack lastObject];
  v3 = [v2 anchorPoints];
  if ([v3 count] < 2)
  {
    LOBYTE(v4) = 0;
  }

  else
  {
    v4 = [v3 startAndEndAreTheSame] ^ 1;
  }

  return v4;
}

- (BOOL)outAndBackEnabled
{
  v2 = [(NSMutableArray *)self->_editStack lastObject];
  v3 = [v2 anchorPoints];
  if ([v3 count] < 2)
  {
    v4 = 0;
  }

  else
  {
    v4 = [v3 isOutAndBackAllowed];
  }

  return v4;
}

- (BOOL)reverseEnabled
{
  v2 = [(NSMutableArray *)self->_editStack lastObject];
  v3 = [v2 anchorPoints];
  v4 = [v3 count] > 1;

  return v4;
}

- (BOOL)undoEnabled
{
  v3 = [(NSMutableArray *)self->_editStack lastObject];
  v4 = v3;
  if (v3 && [v3 reason])
  {
    v5 = [(NSMutableArray *)self->_containees lastObject];
    v6 = v5 != self->_saveContainee;
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
    v4 = [(NSMutableArray *)self->_editStack lastObject];
    v5 = [v4 instanceByClosingTheLoop];
    [(MapsRouteCreationContext *)self _pushEditState:v5 shouldRecenterOnCompletion:1];
  }

  else
  {
    v4 = sub_1007989A4();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      LOWORD(v6) = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "Close loop is disabled; ignoring", &v6, 2u);
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
    v4 = [(NSMutableArray *)self->_editStack lastObject];
    v5 = [v4 instanceByFormingOutAndBackAnchors];
    [(MapsRouteCreationContext *)self _pushEditState:v5 shouldRecenterOnCompletion:1];
  }

  else
  {
    v4 = sub_1007989A4();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      LOWORD(v6) = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "Out and back is disabled; ignoring", &v6, 2u);
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
    v4 = [(NSMutableArray *)self->_editStack lastObject];
    v5 = [v4 instanceByReversingAnchorPoints];
    [(MapsRouteCreationContext *)self _pushEditState:v5 shouldRecenterOnCompletion:1];
  }

  else
  {
    v4 = sub_1007989A4();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      LOWORD(v6) = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "Reverse is disabled; ignoring", &v6, 2u);
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

- (void)_deleteLastAnchorPointMatchingAnchorPoint:(id)a3
{
  v4 = a3;
  v5 = sub_1007989A4();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v8 = 138412290;
    v9 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Deleting last anchor point: %@", &v8, 0xCu);
  }

  v6 = [(NSMutableArray *)self->_editStack lastObject];
  v7 = [v6 instanceByRemovingLastAnchorPoint:v4];
  [(MapsRouteCreationContext *)self _pushEditState:v7 shouldRecenterOnCompletion:0];
}

- (void)_deleteFirstAnchorPointMatchingAnchorPoint:(id)a3
{
  v4 = a3;
  v5 = sub_1007989A4();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v8 = 138412290;
    v9 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Deleting first anchor point: %@", &v8, 0xCu);
  }

  v6 = [(NSMutableArray *)self->_editStack lastObject];
  v7 = [v6 instanceByRemovingFirstAnchorPoint:v4];
  [(MapsRouteCreationContext *)self _pushEditState:v7 shouldRecenterOnCompletion:0];
}

- (void)_appendCoordinate:(CLLocationCoordinate2D)a3 isCurrentLocation:(BOOL)a4
{
  v4 = a4;
  longitude = a3.longitude;
  latitude = a3.latitude;
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
    if (!v4)
    {
      [(MapsRouteCreationContext *)self _insertRippleAnnotationAtCoordinate:latitude, longitude];
    }

    [(UINotificationFeedbackGenerator *)self->_notificationGenerator notificationOccurred:0];
    [(MapsRouteCreationContext *)self _expandCardIfNeeded];
    v10 = [[MKPlacemark alloc] initWithCoordinate:{latitude, longitude}];
    v9 = [[MKMapItem alloc] initWithPlacemark:v10];
    [(MapsRouteCreationContext *)self _appendMapItem:v9 isCurrentLocation:v4 isCoordinate:1];
  }
}

- (BOOL)_wouldDuplicateTrailingAnchorWithCoordinate:(CLLocationCoordinate2D)a3
{
  longitude = a3.longitude;
  latitude = a3.latitude;
  v5 = [(NSMutableArray *)self->_editStack lastObject];
  v6 = [v5 anchorPoints];
  v7 = [v6 lastObject];
  [v7 locationCoordinate];
  v11 = vabdd_f64(latitude, v10) < 0.000000999999997 && vabdd_f64(longitude, v8) < 0.000000999999997 && vabdd_f64(1.79769313e308, v9) < 0.000000999999997;

  return v11;
}

- (void)_appendAnchorPoint:(id)a3
{
  v4 = a3;
  v5 = sub_1007989A4();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v12 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Appending anchor point: %@", buf, 0xCu);
  }

  objc_initWeak(buf, self);
  routeEditor = self->_routeEditor;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1009BCAE4;
  v8[3] = &unk_10165D288;
  objc_copyWeak(&v10, buf);
  v7 = v4;
  v9 = v7;
  [(MNRouteEditor *)routeEditor validateAnchorPoint:v7 handler:v8];

  objc_destroyWeak(&v10);
  objc_destroyWeak(buf);
}

- (void)_appendMapItem:(id)a3 isCurrentLocation:(BOOL)a4 isCoordinate:(BOOL)a5
{
  v8 = a3;
  [(GEOMapServiceTicket *)self->_currentReverseGeocodeTicket cancel];
  objc_initWeak(&location, self);
  v28 = _NSConcreteStackBlock;
  v29 = 3221225472;
  v30 = sub_1009BCFE0;
  v31 = &unk_101630F88;
  objc_copyWeak(&v33, &location);
  v34 = a4;
  v9 = v8;
  v32 = v9;
  v35 = a5;
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
    v26 = [(MapsRouteCreationContext *)self _traits];
    v18 = [v21 ticketForReverseGeocodeCoordinate:v26 traits:{v23, v25}];

    v27 = &_dispatch_main_q;
    [v18 submitWithHandler:v10 queue:&_dispatch_main_q networkActivity:0];
    goto LABEL_9;
  }

  v11 = [v9 _hasResolvablePartialInformation];
  v12 = sub_1007989A4();
  v13 = os_log_type_enabled(v12, OS_LOG_TYPE_INFO);
  if (v11)
  {
    if (v13)
    {
      *buf = 138412290;
      v40 = v9;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "Refining map item and appending mapItem: %@", buf, 0xCu);
    }

    v14 = +[MKMapService sharedService];
    v15 = [v9 _identifier];
    v38 = v15;
    v16 = [NSArray arrayWithObjects:&v38 count:1];
    v17 = [(MapsRouteCreationContext *)self _traits];
    v18 = [v14 ticketForIdentifiers:v16 traits:v17];

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

  v4 = [(MapsRippleAnnotation *)self->_rippleAnnotation rippleView];
  [v4 stopAnimating];

  v5 = [(MapsRouteCreationContext *)self chromeViewController];
  v6 = [v5 mapView];
  [v6 removeAnnotation:self->_rippleAnnotation];
}

- (void)_insertRippleAnnotationAtCoordinate:(CLLocationCoordinate2D)a3
{
  longitude = a3.longitude;
  latitude = a3.latitude;
  v6 = sub_1007989A4();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    *v10 = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "Start ripple animation", v10, 2u);
  }

  [NSObject cancelPreviousPerformRequestsWithTarget:self selector:"_removeRippleView" object:0];
  [(MapsRippleAnnotation *)self->_rippleAnnotation setCoordinate:latitude, longitude];
  v7 = [(MapsRouteCreationContext *)self chromeViewController];
  v8 = [v7 mapView];
  [v8 addAnnotation:self->_rippleAnnotation];

  v9 = [(MapsRippleAnnotation *)self->_rippleAnnotation rippleView];
  [v9 startAnimating];
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

- (void)didTapMapView:(id)a3 atPoint:(CGPoint)a4
{
  y = a4.y;
  x = a4.x;
  v7 = a3;
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
    v10 = [(MapsRouteCreationContext *)self composedRoute];
    v11 = [v10 anchorPoints];
    v12 = [v11 indexOfAnchorPoint:v9];

    if (!self->_anchorPointAttachedToMenu)
    {
      v13 = sub_1007989A4();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        v14 = [(MapsRouteCreationContext *)self composedRoute];
        v15 = [v14 anchorPoints];
        v16 = [v15 indexOfAnchorPoint:v9];
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
      [v7 convertPoint:v7 toCoordinateFromView:{x, y}];
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

- (id)_anchorNearPoint:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v6 = [(MapsRouteCreationContext *)self chromeViewController];
  v7 = [v6 mapView];

  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v8 = [(MapsRouteCreationContext *)self composedRoute];
  v9 = [v8 anchorPoints];

  v10 = [v9 countByEnumeratingWithState:&v27 objects:v37 count:16];
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
          objc_enumerationMutation(v9);
        }

        v17 = *(*(&v27 + 1) + 8 * i);
        [v17 locationCoordinate];
        [v7 convertCoordinate:v7 toPointToView:?];
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

      v12 = [v9 countByEnumeratingWithState:&v27 objects:v37 count:16];
    }

    while (v12);
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (id)_anchorNearMapItem:(id)a3
{
  v4 = a3;
  v5 = [(MapsRouteCreationContext *)self composedRoute];
  v6 = [v5 anchorPoints];
  v7 = [(MapsRouteCreationContext *)self _anchorPointNearMapItem:v4 inAnchorPoints:v6];

  if (v7)
  {
    v8 = v7;
  }

  else
  {
    v9 = [(MapsRouteCreationContext *)self chromeViewController];
    v10 = [v9 mapView];

    v11 = [v4 location];
    [v11 coordinate];
    v13 = v12;
    v15 = v14;

    [v10 convertCoordinate:v10 toPointToView:{v13, v15}];
    v8 = [(MapsRouteCreationContext *)self _anchorNearPoint:?];
  }

  return v8;
}

- (id)_anchorPointNearMapItem:(id)a3 inAnchorPoints:(id)a4
{
  v5 = a3;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = a4;
  v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = *v14;
    while (2)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = *(*(&v13 + 1) + 8 * i);
        if ([v10 muid])
        {
          v11 = [v10 muid];
          if (v11 == [v5 _muid])
          {
            v7 = v10;
            goto LABEL_12;
          }
        }
      }

      v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
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

- (id)_anchorNearCoordinate:(CLLocationCoordinate2D)a3
{
  v4 = [[CLLocation alloc] initWithLatitude:a3.latitude longitude:a3.longitude];
  v5 = [[MKMapItem alloc] initWithCLLocation:v4];
  v6 = [(MapsRouteCreationContext *)self _anchorNearMapItem:v5];

  return v6;
}

- (BOOL)chromeDidSelectFlyoverTourLabelMarker:(id)a3
{
  [a3 coordinate];
  v6 = CLLocationCoordinate2DMake(v4, v5);
  [(MapsRouteCreationContext *)self _appendCoordinate:0 isCurrentLocation:v6.latitude, v6.longitude];
  return 1;
}

- (BOOL)chromeShouldAllowSelectingLabelMarker:(id)a3
{
  v4 = a3;
  if ([v4 featureType] == 19)
  {
    [v4 coordinate];
    v6 = v5;
    v8 = v7;

    v9 = [(MapsRouteCreationContext *)self chromeViewController];
    v10 = [v9 mapView];

    [v10 convertCoordinate:v10 toPointToView:{v6, v8}];
    v11 = [(MapsRouteCreationContext *)self _anchorNearPoint:?];
    if (v11 && !self->_anchorPointAttachedToMenu)
    {
      v15 = sub_1007989A4();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
      {
        v16 = [(MapsRouteCreationContext *)self composedRoute];
        v17 = [v16 anchorPoints];
        v18 = 134217984;
        v19 = [v17 indexOfAnchorPoint:v11];
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
    v13 = [v4 isTrail];

    return v13 ^ 1;
  }

  return v12;
}

- (BOOL)chromeDidSelectAnnotationView:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    v5 = 0;
  }

  else
  {
    v6 = [v4 annotation];
    [v6 coordinate];
    v8 = v7;
    v10 = v9;

    v11 = [(MapsRouteCreationContext *)self _anchorNearCoordinate:v8, v10];
    v5 = v11 == 0;
    if (v11)
    {
      v12 = [(MapsRouteCreationContext *)self chromeViewController];
      v13 = [v12 mapView];

      [v13 convertCoordinate:v13 toPointToView:{v8, v10}];
      v15 = v14;
      v17 = v16;
      v18 = sub_1007989A4();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
      {
        v19 = [(MapsRouteCreationContext *)self composedRoute];
        v20 = [v19 anchorPoints];
        v22 = 134217984;
        v23 = [v20 indexOfAnchorPoint:v11];
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_INFO, "Tapped anchor point at index: %lu (annotation view)", &v22, 0xCu);
      }

      [(MapsRouteCreationContext *)self _setMenuAttachedAnchorPoint:v11];
      [(MapsRouteCreationContext *)self _moveContextMenuToPoint:v11 anchorPoint:v15, v17];
    }

    else
    {
      v13 = [v4 annotation];
      [v13 coordinate];
      [(MapsRouteCreationContext *)self _appendCoordinate:0 isCurrentLocation:?];
    }
  }

  return v5;
}

- (BOOL)chromeDidSelectUserLocationAnnotation:(id)a3
{
  [a3 coordinate];
  v5 = v4;
  v7 = v6;
  v8 = [(MapsRouteCreationContext *)self _anchorNearCoordinate:?];
  if (v8)
  {
    v9 = [(MapsRouteCreationContext *)self chromeViewController];
    v10 = [v9 mapView];

    [v10 convertCoordinate:v10 toPointToView:{v5, v7}];
    v12 = v11;
    v14 = v13;
    v15 = sub_1007989A4();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      v16 = [(MapsRouteCreationContext *)self composedRoute];
      v17 = [v16 anchorPoints];
      v19 = 134217984;
      v20 = [v17 indexOfAnchorPoint:v8];
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

- (BOOL)chromeDidSelectMarkerForMapItem:(id)a3
{
  v4 = a3;
  v5 = [(MapsRouteCreationContext *)self _anchorNearMapItem:v4];
  v6 = [(NSMutableArray *)self->_editStack lastObject];
  v7 = [v6 anchorPoints];
  v8 = [(MapsRouteCreationContext *)self _anchorPointNearMapItem:v4 inAnchorPoints:v7];

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
      [(MapsRouteCreationContext *)self _appendMapItem:v4 isCurrentLocation:0 isCoordinate:0];
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
    v13 = [(MapsRouteCreationContext *)self composedRoute];
    v14 = [v13 anchorPoints];
    v23 = 134217984;
    v24 = [v14 indexOfAnchorPoint:v5];
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "Tapped anchor point at index: %lu (marker)", &v23, 0xCu);
  }

  v15 = [(MapsRouteCreationContext *)self chromeViewController];
  v16 = [v15 mapView];

  [v5 locationCoordinate];
  v18 = v17;
  v20 = v19;
  [(MapsRouteCreationContext *)self _setMenuAttachedAnchorPoint:v5];
  [v16 convertCoordinate:v16 toPointToView:{v18, v20}];
  [(MapsRouteCreationContext *)self _moveContextMenuToPoint:v5 anchorPoint:?];

LABEL_15:
  return anchorPointAttachedToMenu == 0;
}

- (BOOL)chromeDidSelectClusteredFeatureAnnotationsMarker:(id)a3
{
  [a3 coordinate];
  v6 = CLLocationCoordinate2DMake(v4, v5);
  [(MapsRouteCreationContext *)self _appendCoordinate:0 isCurrentLocation:v6.latitude, v6.longitude];
  return 1;
}

- (BOOL)chromeDidSelectClusteredWaypointMarker:(id)a3
{
  [a3 coordinate];
  v6 = CLLocationCoordinate2DMake(v4, v5);
  [(MapsRouteCreationContext *)self _appendCoordinate:0 isCurrentLocation:v6.latitude, v6.longitude];
  return 1;
}

- (BOOL)chromeDidSelectTrafficIncident:(id)a3 latitude:(id)a4 longitude:(id)a5
{
  v7 = a5;
  [a4 doubleValue];
  v9 = v8;
  [v7 doubleValue];
  v11 = v10;

  v12 = CLLocationCoordinate2DMake(v9, v11);
  [(MapsRouteCreationContext *)self _appendCoordinate:0 isCurrentLocation:v12.latitude, v12.longitude];
  return 1;
}

- (BOOL)chromeDidSelectCustomPOIAnnotation:(id)a3
{
  v4 = a3;
  v5 = [(MapsRouteCreationContext *)self chromeViewController];
  v6 = [v5 isTransitioning];

  if (v6)
  {
    v7 = sub_1007989A4();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v10 = 138412290;
      v11 = v4;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "Ignoring POI selection: %@", &v10, 0xCu);
    }
  }

  else
  {
    [(UINotificationFeedbackGenerator *)self->_notificationGenerator notificationOccurred:0];
    [(MapsRouteCreationContext *)self _expandCardIfNeeded];
    v8 = [v4 mapItem];
    [(MapsRouteCreationContext *)self _appendMapItem:v8 isCurrentLocation:0 isCoordinate:0];
  }

  return 1;
}

- (void)containeeViewControllerGoToPreviousState:(id)a3 withSender:(id)a4
{
  v5 = [(MapsRouteCreationContext *)self chromeViewController:a3];
  [v5 popContext:self animated:1 completion:0];
}

- (id)_traits
{
  v3 = +[GEOMapService sharedService];
  v4 = [v3 defaultUserInitiatedTraits];

  v5 = [(MapsRouteCreationContext *)self chromeViewController];
  v6 = [v5 currentTraits];

  if (v6)
  {
    [v4 copyTo:v6];
  }

  else
  {
    v6 = v4;
  }

  return v6;
}

- (void)didSaveCustomRoute:(id)a3
{
  v4 = a3;
  v5 = sub_1007989A4();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v12 = 136315138;
    v13 = "[MapsRouteCreationContext didSaveCustomRoute:]";
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%s", &v12, 0xCu);
  }

  v6 = [v4 routeID];
  v7 = [(GEOComposedRoute *)self->_composedRoute uniqueRouteID];
  v8 = [v6 isEqual:v7];

  if (v8)
  {
    [(GEOComposedRoute *)self->_composedRoute updateWithPersistentData:v4];
    v9 = [[MapsCustomRouteViewContext alloc] initWithExistingRoute:self->_composedRoute];
  }

  else
  {
    v9 = [[MapsCustomRouteViewContext alloc] initWithExistingRouteData:v4];
  }

  v10 = v9;
  [(MapsCustomRouteViewContext *)v9 setExitRouteCreationOnClose:1];
  v11 = [(MapsRouteCreationContext *)self chromeViewController];
  [v11 pushContext:v10 animated:1 completion:0];
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
  v4 = [(MapsRouteCreationContext *)self chromeViewController];
  [v4 setNeedsUpdateComponent:@"cards" animated:1];
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

  v4 = [(MapsRouteCreationContext *)self _traits];
  [(MapsSaveRouteContainee *)self->_saveContainee setTraits:v4];

  [(NSMutableArray *)self->_containees addObject:self->_saveContainee];
  v5 = [(MapsRouteCreationContext *)self chromeViewController];
  [v5 setNeedsUpdateComponent:@"cards" animated:1];
}

- (void)resignTopContextInChromeViewController:(id)a3 withAnimation:(id)a4
{
  v6 = a3;
  v7 = a4;
  objc_initWeak(&location, self);
  [(MNRouteEditor *)self->_routeEditor endSession];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_1009BEF80;
  v15[3] = &unk_101661B98;
  objc_copyWeak(&v16, &location);
  [v7 addPreparation:v15];
  v8 = [v6 currentContextTransition];
  v9 = [v8 enterAnimation];

  if (v9)
  {
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_1009BF0BC;
    v13[3] = &unk_101661B98;
    v10 = &v14;
    objc_copyWeak(&v14, &location);
    [v9 addAnimations:v13];
  }

  else
  {
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_1009BF108;
    v11[3] = &unk_1016619A8;
    v10 = &v12;
    objc_copyWeak(&v12, &location);
    [v7 addCompletion:v11];
  }

  objc_destroyWeak(v10);

  objc_destroyWeak(&v16);
  objc_destroyWeak(&location);
}

- (int64_t)preferredMapScaleVisibility
{
  v3 = [(MapsRouteCreationContext *)self chromeViewController];
  v4 = sub_10000FA08(v3);

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
    v6 = [(MapsPopupMessageView *)self->_popupMessageView superview];
    v5 = v6 != 0;
  }

  return v5;
}

- (void)becomeTopContextInChromeViewController:(id)a3 withAnimation:(id)a4
{
  v6 = a3;
  v7 = a4;
  objc_initWeak(&location, self);
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1009BF2B4;
  v8[3] = &unk_101661B98;
  objc_copyWeak(&v9, &location);
  [v7 addPreparation:v8];
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
    v7 = [(MapsRouteCreationContext *)self chromeViewController];
    v8 = [v7 mapView];
    [v8 addSubview:self->_contextMenuFakeButton];
  }

  objc_destroyWeak(&v13);
  objc_destroyWeak(&location);
}

- (MapsRouteCreationContext)initWithExistingMapItems:(id)a3
{
  v4 = a3;
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
    v134 = v4;
    if ([v4 count])
    {
      [RouteCreationEditState initialEditStateFromMapItems:v4];
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
      v23 = [v22 CGColor];
      v24 = [v21 layer];
      [v24 setBorderColor:v23];

      v25 = [v21 layer];
      [v25 setCornerRadius:8.0];

      v26 = [v21 layer];
      [v26 setBorderWidth:0.5];

      v27 = [UIColor colorWithWhite:0.0 alpha:0.0799999982];
      v28 = [v27 CGColor];
      v29 = [v21 layer];
      [v29 setShadowColor:v28];

      v30 = [v21 layer];
      LODWORD(v31) = *"\nף=";
      [v30 setShadowOpacity:v31];

      v32 = [v21 layer];
      [v32 setShadowOffset:{0.0, -2.0}];

      v33 = [v21 layer];
      [v33 setShadowPathIsBounds:1];
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
      v40 = [v39 CGColor];
      v41 = [v38 layer];
      [v41 setBorderColor:v40];

      v42 = [v137 layer];
      [v42 setCornerRadius:8.0];

      v43 = [v137 layer];
      [v43 setBorderWidth:0.5];

      v44 = [UIColor colorWithWhite:0.0 alpha:0.0799999982];
      v45 = [v44 CGColor];
      v46 = [v137 layer];
      [v46 setShadowColor:v45];

      v38 = v137;
      v47 = [v137 layer];
      LODWORD(v48) = *"\nף=";
      [v47 setShadowOpacity:v48];

      v49 = [v137 layer];
      [v49 setShadowOffset:{0.0, -2.0}];

      v50 = [v137 layer];
      [v50 setShadowPathIsBounds:1];
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

    v56 = [v135 tintColor];
    v133 = v51;
    [v51 setTintColor:v56];

    v57 = [[CardView alloc] initAllowingBlurredForButton:1 buttonBackgroundType:0];
    [(CardView *)v57 setTranslatesAutoresizingMaskIntoConstraints:0];
    [(CardView *)v57 setLayoutStyle:6];
    if ((_UISolariumEnabled() & 1) == 0)
    {
      v58 = [UIColor colorWithWhite:0.0 alpha:0.0799999982];
      v59 = [v58 CGColor];
      v60 = [(CardView *)v57 layer];
      [v60 setBorderColor:v59];

      v61 = [(CardView *)v57 layer];
      [v61 setCornerRadius:8.0];

      v62 = [(CardView *)v57 layer];
      [v62 setBorderWidth:0.5];

      v63 = [UIColor colorWithWhite:0.0 alpha:0.0799999982];
      v64 = [v63 CGColor];
      v65 = [(CardView *)v57 layer];
      [v65 setShadowColor:v64];

      v66 = [(CardView *)v57 layer];
      LODWORD(v67) = *"\nף=";
      [v66 setShadowOpacity:v67];

      v68 = [(CardView *)v57 layer];
      [v68 setShadowOffset:{0.0, -2.0}];

      v69 = [(CardView *)v57 layer];
      [v69 setShadowPathIsBounds:1];
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

    v130 = [v136 widthAnchor];
    v129 = [v130 constraintEqualToConstant:44.0];
    v139[0] = v129;
    v128 = [v136 heightAnchor];
    v127 = [v128 constraintEqualToConstant:44.0];
    v139[1] = v127;
    v126 = [(UIButton *)v5->_undoButton widthAnchor];
    v125 = [v126 constraintEqualToConstant:44.0];
    v139[2] = v125;
    v124 = [(UIButton *)v5->_undoButton heightAnchor];
    v123 = [v124 constraintEqualToConstant:44.0];
    v139[3] = v123;
    v122 = [v137 widthAnchor];
    v120 = [v122 constraintEqualToConstant:44.0];
    v139[4] = v120;
    v119 = [v137 heightAnchor];
    v118 = [v119 constraintEqualToConstant:44.0];
    v139[5] = v118;
    v117 = [(UIButton *)v5->_recenterButton widthAnchor];
    v116 = [v117 constraintEqualToConstant:44.0];
    v139[6] = v116;
    v115 = [(UIButton *)v5->_recenterButton heightAnchor];
    v114 = [v115 constraintEqualToConstant:44.0];
    v139[7] = v114;
    v107 = v76;
    v113 = [(UIButton *)v76 widthAnchor];
    v112 = [v113 constraintEqualToConstant:44.0];
    v139[8] = v112;
    v111 = [(UIButton *)v76 heightAnchor];
    v110 = [v111 constraintEqualToConstant:44.0];
    v139[9] = v110;
    v98 = v82;
    v109 = [(UIButton *)v82 widthAnchor];
    v108 = [v109 constraintEqualToConstant:44.0];
    v139[10] = v108;
    v99 = [(UIButton *)v82 heightAnchor];
    v100 = [v99 constraintEqualToConstant:44.0];
    v139[11] = v100;
    v101 = [(UIButton *)v88 widthAnchor];
    v102 = [v101 constraintEqualToConstant:44.0];
    v139[12] = v102;
    v103 = [(UIButton *)v88 heightAnchor];
    v104 = [v103 constraintEqualToConstant:44.0];
    v139[13] = v104;
    v105 = [NSArray arrayWithObjects:v139 count:14];
    [NSLayoutConstraint activateConstraints:v105];

    v4 = v134;
  }

  return v5;
}

@end