@interface ChromeOverlayController
- (BOOL)_canHostOverlays;
- (BOOL)_checkIfAnyConstraints:(id)a3 match:(BOOL)a4;
- (BOOL)_setConstraintsEnabled:(BOOL)a3 container:(id)a4 overlay:(id)a5;
- (ChromeOverlayController)init;
- (ChromeOverlayControllerDelegate)delegate;
- (UIView)parentView;
- (UIView)passThroughView;
- (UIViewController)containingViewController;
- (id)_addCollisionGuideAlongAxis:(int64_t)a3;
- (id)collisionGuideForEdge:(unint64_t)a3;
- (id)layoutGuideForOverlay:(id)a3;
- (void)_activateHosting;
- (void)_setConstraints:(id)a3 view:(id)a4 container:(id)a5 forOverlay:(id)a6;
- (void)_setupIfNeeded;
- (void)_teardownIfNeeded;
- (void)addOverlay:(id)a3 inLayoutGuide:(id)a4;
- (void)installInView:(id)a3 containingViewController:(id)a4 contentLayoutGuide:(id)a5 mapInsetsLayoutGuide:(id)a6 viewportLayoutGuide:(id)a7;
- (void)overlayDidUpdateExistingMapInsetConstraints:(id)a3;
- (void)removeAllOverlays;
- (void)removeOverlay:(id)a3;
- (void)setMapInsetsConstraints:(id)a3 forOverlay:(id)a4;
- (void)setMapInsetsConstraintsEnabled:(BOOL)a3 forOverlay:(id)a4;
- (void)setShowingConstraintsEnabled:(BOOL)a3 forOverlay:(id)a4;
- (void)setViewportConstraints:(id)a3 forOverlay:(id)a4;
@end

@implementation ChromeOverlayController

- (ChromeOverlayController)init
{
  v8.receiver = self;
  v8.super_class = ChromeOverlayController;
  v2 = [(ChromeOverlayController *)&v8 init];
  if (v2)
  {
    v3 = +[NSMutableOrderedSet orderedSet];
    overlays = v2->_overlays;
    v2->_overlays = v3;

    v5 = +[NSMapTable weakToStrongObjectsMapTable];
    layoutGuidesByOverlay = v2->_layoutGuidesByOverlay;
    v2->_layoutGuidesByOverlay = v5;
  }

  return v2;
}

- (UIView)parentView
{
  WeakRetained = objc_loadWeakRetained(&self->_parentView);

  return WeakRetained;
}

- (void)_setupIfNeeded
{
  v3 = [(UIView *)self->_passThroughView superview];
  v4 = [(ChromeOverlayController *)self parentView];

  if (v3 != v4 && [(ChromeOverlayController *)self _canHostOverlays])
  {
    v5 = [(ChromeOverlayController *)self parentView];
    v6 = [PassThroughView alloc];
    [v5 bounds];
    v7 = [(PassThroughView *)v6 initWithFrame:?];
    passThroughView = self->_passThroughView;
    self->_passThroughView = v7;

    [(UIView *)self->_passThroughView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIView *)self->_passThroughView setClipsToBounds:1];
    [(UIView *)self->_passThroughView setAccessibilityIdentifier:@"ChromeOverlayController"];
    [v5 addSubview:self->_passThroughView];
    v9 = +[MKSystemController sharedInstance];
    v10 = [v9 isInternalInstall];

    if (v10)
    {
      v12 = +[NSUserDefaults standardUserDefaults];
      -[UIView setHidden:](self->_passThroughView, "setHidden:", [v12 BOOLForKey:@"__internal__DisableChrome"]);
    }

    LODWORD(v11) = 1148846080;
    v13 = [(UIView *)self->_passThroughView _maps_constraintsEqualToEdgesOfView:v5 priority:v11];
    v14 = [v13 allConstraints];
    [v5 addConstraints:v14];

    v15 = +[NSMapTable weakToStrongObjectsMapTable];
    hidingConstraintsByOverlay = self->_hidingConstraintsByOverlay;
    self->_hidingConstraintsByOverlay = v15;

    v17 = +[NSMapTable weakToStrongObjectsMapTable];
    showingConstraintsByOverlay = self->_showingConstraintsByOverlay;
    self->_showingConstraintsByOverlay = v17;

    v19 = +[NSMapTable weakToStrongObjectsMapTable];
    mapInsetsConstraintsByOverlay = self->_mapInsetsConstraintsByOverlay;
    self->_mapInsetsConstraintsByOverlay = v19;

    v21 = +[NSMapTable weakToStrongObjectsMapTable];
    viewportConstraintsByOverlay = self->_viewportConstraintsByOverlay;
    self->_viewportConstraintsByOverlay = v21;

    v23 = +[NSMapTable weakToStrongObjectsMapTable];
    collisionConstraintsByOverlay = self->_collisionConstraintsByOverlay;
    self->_collisionConstraintsByOverlay = v23;

    v25 = [(ChromeOverlayController *)self _addCollisionGuideAlongAxis:0];
    [v25 setIdentifier:@"card.collision.top"];
    v26 = self->_passThroughView;
    v27 = [v25 topAnchor];
    v28 = [(UIView *)self->_passThroughView topAnchor];
    v29 = [v27 constraintEqualToAnchor:v28];
    [(UIView *)v26 addConstraint:v29];

    v30 = [(ChromeOverlayController *)self _addCollisionGuideAlongAxis:1];
    [v30 setIdentifier:@"card.collision.left"];
    v31 = self->_passThroughView;
    v32 = [v30 leftAnchor];
    v33 = [(UIView *)self->_passThroughView leftAnchor];
    v34 = [v32 constraintEqualToAnchor:v33];
    [(UIView *)v31 addConstraint:v34];

    v35 = [(ChromeOverlayController *)self _addCollisionGuideAlongAxis:0];
    [v35 setIdentifier:@"card.collision.bottom"];
    v36 = self->_passThroughView;
    v37 = [v35 bottomAnchor];
    v38 = [(UIView *)self->_passThroughView bottomAnchor];
    v39 = [v37 constraintEqualToAnchor:v38];
    [(UIView *)v36 addConstraint:v39];

    v40 = [(ChromeOverlayController *)self _addCollisionGuideAlongAxis:1];
    [v40 setIdentifier:@"card.collision.right"];
    v41 = self->_passThroughView;
    v42 = [v40 rightAnchor];
    v43 = [(UIView *)self->_passThroughView rightAnchor];
    v44 = [v42 constraintEqualToAnchor:v43];
    [(UIView *)v41 addConstraint:v44];

    v47[0] = &off_1016E9578;
    v47[1] = &off_1016E9590;
    v48[0] = v25;
    v48[1] = v30;
    v47[2] = &off_1016E95A8;
    v47[3] = &off_1016E95C0;
    v48[2] = v35;
    v48[3] = v40;
    v45 = [NSDictionary dictionaryWithObjects:v48 forKeys:v47 count:4];
    collisionGuidesByEdge = self->_collisionGuidesByEdge;
    self->_collisionGuidesByEdge = v45;

    [(ChromeOverlayController *)self _activateHosting];
  }
}

- (BOOL)_canHostOverlays
{
  v3 = [(ChromeOverlayController *)self parentView];
  if (v3)
  {
    v4 = [(ChromeOverlayController *)self contentLayoutGuide];
    if (v4)
    {
      v5 = [(ChromeOverlayController *)self mapInsetsLayoutGuide];
      if (v5)
      {
        v6 = [(ChromeOverlayController *)self viewportLayoutGuide];
        v7 = v6 != 0;
      }

      else
      {
        v7 = 0;
      }
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)_activateHosting
{
  if ([(ChromeOverlayController *)self _canHostOverlays])
  {
    overlays = self->_overlays;
    v4[0] = _NSConcreteStackBlock;
    v4[1] = 3221225472;
    v4[2] = sub_100C9EB58;
    v4[3] = &unk_10164FF38;
    v4[4] = self;
    [(NSMutableOrderedSet *)overlays enumerateObjectsUsingBlock:v4];
  }
}

- (void)_teardownIfNeeded
{
  [(ChromeOverlayController *)self _deactivateHosting];
  [(UIView *)self->_passThroughView removeFromSuperview];
  passThroughView = self->_passThroughView;
  self->_passThroughView = 0;

  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v4 = [(NSMapTable *)self->_viewportConstraintsByOverlay objectEnumerator];
  v5 = [v4 countByEnumeratingWithState:&v28 objects:v33 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v29;
    do
    {
      v8 = 0;
      do
      {
        if (*v29 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v28 + 1) + 8 * v8);
        v10 = [(ChromeOverlayController *)self parentView];
        [v10 removeConstraints:v9];

        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v28 objects:v33 count:16];
    }

    while (v6);
  }

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v11 = [(NSMapTable *)self->_mapInsetsConstraintsByOverlay objectEnumerator];
  v12 = [v11 countByEnumeratingWithState:&v24 objects:v32 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v25;
    do
    {
      v15 = 0;
      do
      {
        if (*v25 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v24 + 1) + 8 * v15);
        v17 = [(ChromeOverlayController *)self parentView];
        [v17 removeConstraints:v16];

        v15 = v15 + 1;
      }

      while (v13 != v15);
      v13 = [v11 countByEnumeratingWithState:&v24 objects:v32 count:16];
    }

    while (v13);
  }

  collisionGuidesByEdge = self->_collisionGuidesByEdge;
  self->_collisionGuidesByEdge = 0;

  mapInsetsConstraintsByOverlay = self->_mapInsetsConstraintsByOverlay;
  self->_mapInsetsConstraintsByOverlay = 0;

  viewportConstraintsByOverlay = self->_viewportConstraintsByOverlay;
  self->_viewportConstraintsByOverlay = 0;

  collisionConstraintsByOverlay = self->_collisionConstraintsByOverlay;
  self->_collisionConstraintsByOverlay = 0;

  hidingConstraintsByOverlay = self->_hidingConstraintsByOverlay;
  self->_hidingConstraintsByOverlay = 0;

  showingConstraintsByOverlay = self->_showingConstraintsByOverlay;
  self->_showingConstraintsByOverlay = 0;

  [(ChromeOverlayController *)self setContentLayoutGuide:0];
  [(ChromeOverlayController *)self setMapInsetsLayoutGuide:0];
  [(ChromeOverlayController *)self setViewportLayoutGuide:0];
}

- (ChromeOverlayControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (UIViewController)containingViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_containingViewController);

  return WeakRetained;
}

- (UIView)passThroughView
{
  v2 = [(ChromeOverlayController *)self delegate];
  v3 = [v2 passThroughView];

  return v3;
}

- (id)_addCollisionGuideAlongAxis:(int64_t)a3
{
  v5 = objc_alloc_init(UILayoutGuide);
  [(UIView *)self->_passThroughView addLayoutGuide:v5];
  if (a3)
  {
    if (a3 != 1)
    {
      goto LABEL_6;
    }

    passThroughView = self->_passThroughView;
    v6 = [v5 topAnchor];
    v20 = [(UIView *)self->_passThroughView topAnchor];
    v21 = v6;
    v7 = [v6 constraintGreaterThanOrEqualToAnchor:?];
    v23[0] = v7;
    v8 = [v5 bottomAnchor];
    v9 = [(UIView *)self->_passThroughView bottomAnchor];
    v10 = [v8 constraintLessThanOrEqualToAnchor:v9];
    v23[1] = v10;
    v11 = [v5 heightAnchor];
    v12 = [v11 constraintGreaterThanOrEqualToConstant:4.0];
    v23[2] = v12;
    v13 = [v5 widthAnchor];
    v14 = v23;
  }

  else
  {
    passThroughView = self->_passThroughView;
    v15 = [v5 leadingAnchor];
    v20 = [(UIView *)self->_passThroughView leadingAnchor];
    v21 = v15;
    v7 = [v15 constraintGreaterThanOrEqualToAnchor:?];
    v22[0] = v7;
    v8 = [v5 trailingAnchor];
    v9 = [(UIView *)self->_passThroughView trailingAnchor];
    v10 = [v8 constraintLessThanOrEqualToAnchor:v9];
    v22[1] = v10;
    v11 = [v5 widthAnchor];
    v12 = [v11 constraintGreaterThanOrEqualToConstant:4.0];
    v22[2] = v12;
    v13 = [v5 heightAnchor];
    v14 = v22;
  }

  v16 = [v13 constraintEqualToConstant:0.0];
  v14[3] = v16;
  v17 = [NSArray arrayWithObjects:v14 count:4];
  [(UIView *)passThroughView addConstraints:v17];

LABEL_6:

  return v5;
}

- (id)collisionGuideForEdge:(unint64_t)a3
{
  collisionGuidesByEdge = self->_collisionGuidesByEdge;
  v4 = [NSNumber numberWithUnsignedInteger:a3];
  v5 = [(NSDictionary *)collisionGuidesByEdge objectForKeyedSubscript:v4];

  return v5;
}

- (BOOL)_checkIfAnyConstraints:(id)a3 match:(BOOL)a4
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100C9E544;
  v5[3] = &unk_10164FF78;
  v6 = a4;
  return [a3 indexOfObjectWithOptions:1 passingTest:v5] != 0x7FFFFFFFFFFFFFFFLL;
}

- (BOOL)_setConstraintsEnabled:(BOOL)a3 container:(id)a4 overlay:(id)a5
{
  if (a5)
  {
    v5 = a3;
    v7 = [a4 objectForKey:a5];
    if (v7)
    {
      if (v5)
      {
        if ([(ChromeOverlayController *)self _checkIfAnyConstraints:v7 match:0])
        {
          [NSLayoutConstraint activateConstraints:v7];
LABEL_9:
          v8 = 1;
LABEL_11:

          return v8;
        }
      }

      else if ([(ChromeOverlayController *)self _checkIfAnyConstraints:v7 match:1])
      {
        [NSLayoutConstraint deactivateConstraints:v7];
        goto LABEL_9;
      }
    }

    v8 = 0;
    goto LABEL_11;
  }

  return 0;
}

- (void)_setConstraints:(id)a3 view:(id)a4 container:(id)a5 forOverlay:(id)a6
{
  v11 = a3;
  v8 = a5;
  v9 = a6;
  if (v9)
  {
    v10 = [v8 objectForKey:v9];
    [NSLayoutConstraint deactivateConstraints:v10];
    if (v11)
    {
      [NSLayoutConstraint activateConstraints:v11];
      [v8 setObject:v11 forKey:v9];
    }

    else
    {
      [v8 removeObjectForKey:v9];
    }
  }
}

- (void)setViewportConstraints:(id)a3 forOverlay:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(ChromeOverlayController *)self parentView];
  [(ChromeOverlayController *)self _setConstraints:v7 view:v8 container:self->_viewportConstraintsByOverlay forOverlay:v6];
}

- (void)overlayDidUpdateExistingMapInsetConstraints:(id)a3
{
  v4 = a3;
  v5 = [(ChromeOverlayController *)self delegate];
  [v5 overlayControllerDidUpdateMapInsets:self fromOverlay:v4];
}

- (void)setMapInsetsConstraintsEnabled:(BOOL)a3 forOverlay:(id)a4
{
  v4 = a3;
  v7 = a4;
  if ([(ChromeOverlayController *)self _setConstraintsEnabled:v4 container:self->_mapInsetsConstraintsByOverlay overlay:?])
  {
    v6 = [(ChromeOverlayController *)self delegate];
    [v6 overlayControllerDidUpdateMapInsets:self fromOverlay:v7];
  }
}

- (void)setMapInsetsConstraints:(id)a3 forOverlay:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(ChromeOverlayController *)self parentView];
  [(ChromeOverlayController *)self _setConstraints:v7 view:v8 container:self->_mapInsetsConstraintsByOverlay forOverlay:v6];

  v9 = [(ChromeOverlayController *)self delegate];
  [v9 overlayControllerDidUpdateMapInsets:self fromOverlay:v6];
}

- (void)setShowingConstraintsEnabled:(BOOL)a3 forOverlay:(id)a4
{
  v4 = a3;
  hidingConstraintsByOverlay = self->_hidingConstraintsByOverlay;
  v7 = a4;
  [(ChromeOverlayController *)self _setConstraintsEnabled:v4 ^ 1 container:hidingConstraintsByOverlay overlay:v7];
  [(ChromeOverlayController *)self _setConstraintsEnabled:v4 container:self->_showingConstraintsByOverlay overlay:v7];
}

- (id)layoutGuideForOverlay:(id)a3
{
  v4 = a3;
  if (!v4 || ([(NSMapTable *)self->_layoutGuidesByOverlay objectForKey:v4], (v5 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v5 = [(ChromeOverlayController *)self contentLayoutGuide];
  }

  return v5;
}

- (void)installInView:(id)a3 containingViewController:(id)a4 contentLayoutGuide:(id)a5 mapInsetsLayoutGuide:(id)a6 viewportLayoutGuide:(id)a7
{
  v17 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v15 = a7;
  v16 = [(ChromeOverlayController *)self parentView];

  if (v16 != v17)
  {
    [(ChromeOverlayController *)self _teardownIfNeeded];
    [(ChromeOverlayController *)self setParentView:v17];
    [(ChromeOverlayController *)self setContainingViewController:v12];
    [(ChromeOverlayController *)self setContentLayoutGuide:v13];
    [(ChromeOverlayController *)self setMapInsetsLayoutGuide:v14];
    [(ChromeOverlayController *)self setViewportLayoutGuide:v15];
    [(ChromeOverlayController *)self _setupIfNeeded];
  }
}

- (void)removeAllOverlays
{
  [(ChromeOverlayController *)self _deactivateHosting];
  overlays = self->_overlays;

  [(NSMutableOrderedSet *)overlays removeAllObjects];
}

- (void)removeOverlay:(id)a3
{
  v4 = a3;
  [v4 setHost:0];
  [(NSMutableOrderedSet *)self->_overlays removeObject:v4];
  [(NSMapTable *)self->_layoutGuidesByOverlay removeObjectForKey:v4];
  [(NSMapTable *)self->_hidingConstraintsByOverlay removeObjectForKey:v4];
  [(NSMapTable *)self->_showingConstraintsByOverlay removeObjectForKey:v4];
  [(NSMapTable *)self->_collisionConstraintsByOverlay removeObjectForKey:v4];
  [(NSMapTable *)self->_mapInsetsConstraintsByOverlay removeObjectForKey:v4];
  [(NSMapTable *)self->_viewportConstraintsByOverlay removeObjectForKey:v4];
}

- (void)addOverlay:(id)a3 inLayoutGuide:(id)a4
{
  v8 = a3;
  v6 = a4;
  [(NSMutableOrderedSet *)self->_overlays addObject:v8];
  layoutGuidesByOverlay = self->_layoutGuidesByOverlay;
  if (v6)
  {
    [(NSMapTable *)layoutGuidesByOverlay setObject:v6 forKey:v8];
  }

  else
  {
    [(NSMapTable *)layoutGuidesByOverlay removeObjectForKey:v8];
  }

  if ([(ChromeOverlayController *)self _canHostOverlays])
  {
    [v8 setHost:self];
  }
}

@end