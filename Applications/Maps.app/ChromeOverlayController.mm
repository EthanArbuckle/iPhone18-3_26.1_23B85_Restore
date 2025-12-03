@interface ChromeOverlayController
- (BOOL)_canHostOverlays;
- (BOOL)_checkIfAnyConstraints:(id)constraints match:(BOOL)match;
- (BOOL)_setConstraintsEnabled:(BOOL)enabled container:(id)container overlay:(id)overlay;
- (ChromeOverlayController)init;
- (ChromeOverlayControllerDelegate)delegate;
- (UIView)parentView;
- (UIView)passThroughView;
- (UIViewController)containingViewController;
- (id)_addCollisionGuideAlongAxis:(int64_t)axis;
- (id)collisionGuideForEdge:(unint64_t)edge;
- (id)layoutGuideForOverlay:(id)overlay;
- (void)_activateHosting;
- (void)_setConstraints:(id)constraints view:(id)view container:(id)container forOverlay:(id)overlay;
- (void)_setupIfNeeded;
- (void)_teardownIfNeeded;
- (void)addOverlay:(id)overlay inLayoutGuide:(id)guide;
- (void)installInView:(id)view containingViewController:(id)controller contentLayoutGuide:(id)guide mapInsetsLayoutGuide:(id)layoutGuide viewportLayoutGuide:(id)viewportLayoutGuide;
- (void)overlayDidUpdateExistingMapInsetConstraints:(id)constraints;
- (void)removeAllOverlays;
- (void)removeOverlay:(id)overlay;
- (void)setMapInsetsConstraints:(id)constraints forOverlay:(id)overlay;
- (void)setMapInsetsConstraintsEnabled:(BOOL)enabled forOverlay:(id)overlay;
- (void)setShowingConstraintsEnabled:(BOOL)enabled forOverlay:(id)overlay;
- (void)setViewportConstraints:(id)constraints forOverlay:(id)overlay;
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
  superview = [(UIView *)self->_passThroughView superview];
  parentView = [(ChromeOverlayController *)self parentView];

  if (superview != parentView && [(ChromeOverlayController *)self _canHostOverlays])
  {
    parentView2 = [(ChromeOverlayController *)self parentView];
    v6 = [PassThroughView alloc];
    [parentView2 bounds];
    v7 = [(PassThroughView *)v6 initWithFrame:?];
    passThroughView = self->_passThroughView;
    self->_passThroughView = v7;

    [(UIView *)self->_passThroughView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIView *)self->_passThroughView setClipsToBounds:1];
    [(UIView *)self->_passThroughView setAccessibilityIdentifier:@"ChromeOverlayController"];
    [parentView2 addSubview:self->_passThroughView];
    v9 = +[MKSystemController sharedInstance];
    isInternalInstall = [v9 isInternalInstall];

    if (isInternalInstall)
    {
      v12 = +[NSUserDefaults standardUserDefaults];
      -[UIView setHidden:](self->_passThroughView, "setHidden:", [v12 BOOLForKey:@"__internal__DisableChrome"]);
    }

    LODWORD(v11) = 1148846080;
    v13 = [(UIView *)self->_passThroughView _maps_constraintsEqualToEdgesOfView:parentView2 priority:v11];
    allConstraints = [v13 allConstraints];
    [parentView2 addConstraints:allConstraints];

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
    topAnchor = [v25 topAnchor];
    topAnchor2 = [(UIView *)self->_passThroughView topAnchor];
    v29 = [topAnchor constraintEqualToAnchor:topAnchor2];
    [(UIView *)v26 addConstraint:v29];

    v30 = [(ChromeOverlayController *)self _addCollisionGuideAlongAxis:1];
    [v30 setIdentifier:@"card.collision.left"];
    v31 = self->_passThroughView;
    leftAnchor = [v30 leftAnchor];
    leftAnchor2 = [(UIView *)self->_passThroughView leftAnchor];
    v34 = [leftAnchor constraintEqualToAnchor:leftAnchor2];
    [(UIView *)v31 addConstraint:v34];

    v35 = [(ChromeOverlayController *)self _addCollisionGuideAlongAxis:0];
    [v35 setIdentifier:@"card.collision.bottom"];
    v36 = self->_passThroughView;
    bottomAnchor = [v35 bottomAnchor];
    bottomAnchor2 = [(UIView *)self->_passThroughView bottomAnchor];
    v39 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
    [(UIView *)v36 addConstraint:v39];

    v40 = [(ChromeOverlayController *)self _addCollisionGuideAlongAxis:1];
    [v40 setIdentifier:@"card.collision.right"];
    v41 = self->_passThroughView;
    rightAnchor = [v40 rightAnchor];
    rightAnchor2 = [(UIView *)self->_passThroughView rightAnchor];
    v44 = [rightAnchor constraintEqualToAnchor:rightAnchor2];
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
  parentView = [(ChromeOverlayController *)self parentView];
  if (parentView)
  {
    contentLayoutGuide = [(ChromeOverlayController *)self contentLayoutGuide];
    if (contentLayoutGuide)
    {
      mapInsetsLayoutGuide = [(ChromeOverlayController *)self mapInsetsLayoutGuide];
      if (mapInsetsLayoutGuide)
      {
        viewportLayoutGuide = [(ChromeOverlayController *)self viewportLayoutGuide];
        v7 = viewportLayoutGuide != 0;
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
  objectEnumerator = [(NSMapTable *)self->_viewportConstraintsByOverlay objectEnumerator];
  v5 = [objectEnumerator countByEnumeratingWithState:&v28 objects:v33 count:16];
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
          objc_enumerationMutation(objectEnumerator);
        }

        v9 = *(*(&v28 + 1) + 8 * v8);
        parentView = [(ChromeOverlayController *)self parentView];
        [parentView removeConstraints:v9];

        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [objectEnumerator countByEnumeratingWithState:&v28 objects:v33 count:16];
    }

    while (v6);
  }

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  objectEnumerator2 = [(NSMapTable *)self->_mapInsetsConstraintsByOverlay objectEnumerator];
  v12 = [objectEnumerator2 countByEnumeratingWithState:&v24 objects:v32 count:16];
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
          objc_enumerationMutation(objectEnumerator2);
        }

        v16 = *(*(&v24 + 1) + 8 * v15);
        parentView2 = [(ChromeOverlayController *)self parentView];
        [parentView2 removeConstraints:v16];

        v15 = v15 + 1;
      }

      while (v13 != v15);
      v13 = [objectEnumerator2 countByEnumeratingWithState:&v24 objects:v32 count:16];
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
  delegate = [(ChromeOverlayController *)self delegate];
  passThroughView = [delegate passThroughView];

  return passThroughView;
}

- (id)_addCollisionGuideAlongAxis:(int64_t)axis
{
  v5 = objc_alloc_init(UILayoutGuide);
  [(UIView *)self->_passThroughView addLayoutGuide:v5];
  if (axis)
  {
    if (axis != 1)
    {
      goto LABEL_6;
    }

    passThroughView = self->_passThroughView;
    topAnchor = [v5 topAnchor];
    topAnchor2 = [(UIView *)self->_passThroughView topAnchor];
    v21 = topAnchor;
    v7 = [topAnchor constraintGreaterThanOrEqualToAnchor:?];
    v23[0] = v7;
    bottomAnchor = [v5 bottomAnchor];
    bottomAnchor2 = [(UIView *)self->_passThroughView bottomAnchor];
    v10 = [bottomAnchor constraintLessThanOrEqualToAnchor:bottomAnchor2];
    v23[1] = v10;
    heightAnchor = [v5 heightAnchor];
    v12 = [heightAnchor constraintGreaterThanOrEqualToConstant:4.0];
    v23[2] = v12;
    widthAnchor = [v5 widthAnchor];
    v14 = v23;
  }

  else
  {
    passThroughView = self->_passThroughView;
    leadingAnchor = [v5 leadingAnchor];
    topAnchor2 = [(UIView *)self->_passThroughView leadingAnchor];
    v21 = leadingAnchor;
    v7 = [leadingAnchor constraintGreaterThanOrEqualToAnchor:?];
    v22[0] = v7;
    bottomAnchor = [v5 trailingAnchor];
    bottomAnchor2 = [(UIView *)self->_passThroughView trailingAnchor];
    v10 = [bottomAnchor constraintLessThanOrEqualToAnchor:bottomAnchor2];
    v22[1] = v10;
    heightAnchor = [v5 widthAnchor];
    v12 = [heightAnchor constraintGreaterThanOrEqualToConstant:4.0];
    v22[2] = v12;
    widthAnchor = [v5 heightAnchor];
    v14 = v22;
  }

  v16 = [widthAnchor constraintEqualToConstant:0.0];
  v14[3] = v16;
  v17 = [NSArray arrayWithObjects:v14 count:4];
  [(UIView *)passThroughView addConstraints:v17];

LABEL_6:

  return v5;
}

- (id)collisionGuideForEdge:(unint64_t)edge
{
  collisionGuidesByEdge = self->_collisionGuidesByEdge;
  v4 = [NSNumber numberWithUnsignedInteger:edge];
  v5 = [(NSDictionary *)collisionGuidesByEdge objectForKeyedSubscript:v4];

  return v5;
}

- (BOOL)_checkIfAnyConstraints:(id)constraints match:(BOOL)match
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100C9E544;
  v5[3] = &unk_10164FF78;
  matchCopy = match;
  return [constraints indexOfObjectWithOptions:1 passingTest:v5] != 0x7FFFFFFFFFFFFFFFLL;
}

- (BOOL)_setConstraintsEnabled:(BOOL)enabled container:(id)container overlay:(id)overlay
{
  if (overlay)
  {
    enabledCopy = enabled;
    v7 = [container objectForKey:overlay];
    if (v7)
    {
      if (enabledCopy)
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

- (void)_setConstraints:(id)constraints view:(id)view container:(id)container forOverlay:(id)overlay
{
  constraintsCopy = constraints;
  containerCopy = container;
  overlayCopy = overlay;
  if (overlayCopy)
  {
    v10 = [containerCopy objectForKey:overlayCopy];
    [NSLayoutConstraint deactivateConstraints:v10];
    if (constraintsCopy)
    {
      [NSLayoutConstraint activateConstraints:constraintsCopy];
      [containerCopy setObject:constraintsCopy forKey:overlayCopy];
    }

    else
    {
      [containerCopy removeObjectForKey:overlayCopy];
    }
  }
}

- (void)setViewportConstraints:(id)constraints forOverlay:(id)overlay
{
  overlayCopy = overlay;
  constraintsCopy = constraints;
  parentView = [(ChromeOverlayController *)self parentView];
  [(ChromeOverlayController *)self _setConstraints:constraintsCopy view:parentView container:self->_viewportConstraintsByOverlay forOverlay:overlayCopy];
}

- (void)overlayDidUpdateExistingMapInsetConstraints:(id)constraints
{
  constraintsCopy = constraints;
  delegate = [(ChromeOverlayController *)self delegate];
  [delegate overlayControllerDidUpdateMapInsets:self fromOverlay:constraintsCopy];
}

- (void)setMapInsetsConstraintsEnabled:(BOOL)enabled forOverlay:(id)overlay
{
  enabledCopy = enabled;
  overlayCopy = overlay;
  if ([(ChromeOverlayController *)self _setConstraintsEnabled:enabledCopy container:self->_mapInsetsConstraintsByOverlay overlay:?])
  {
    delegate = [(ChromeOverlayController *)self delegate];
    [delegate overlayControllerDidUpdateMapInsets:self fromOverlay:overlayCopy];
  }
}

- (void)setMapInsetsConstraints:(id)constraints forOverlay:(id)overlay
{
  overlayCopy = overlay;
  constraintsCopy = constraints;
  parentView = [(ChromeOverlayController *)self parentView];
  [(ChromeOverlayController *)self _setConstraints:constraintsCopy view:parentView container:self->_mapInsetsConstraintsByOverlay forOverlay:overlayCopy];

  delegate = [(ChromeOverlayController *)self delegate];
  [delegate overlayControllerDidUpdateMapInsets:self fromOverlay:overlayCopy];
}

- (void)setShowingConstraintsEnabled:(BOOL)enabled forOverlay:(id)overlay
{
  enabledCopy = enabled;
  hidingConstraintsByOverlay = self->_hidingConstraintsByOverlay;
  overlayCopy = overlay;
  [(ChromeOverlayController *)self _setConstraintsEnabled:enabledCopy ^ 1 container:hidingConstraintsByOverlay overlay:overlayCopy];
  [(ChromeOverlayController *)self _setConstraintsEnabled:enabledCopy container:self->_showingConstraintsByOverlay overlay:overlayCopy];
}

- (id)layoutGuideForOverlay:(id)overlay
{
  overlayCopy = overlay;
  if (!overlayCopy || ([(NSMapTable *)self->_layoutGuidesByOverlay objectForKey:overlayCopy], (contentLayoutGuide = objc_claimAutoreleasedReturnValue()) == 0))
  {
    contentLayoutGuide = [(ChromeOverlayController *)self contentLayoutGuide];
  }

  return contentLayoutGuide;
}

- (void)installInView:(id)view containingViewController:(id)controller contentLayoutGuide:(id)guide mapInsetsLayoutGuide:(id)layoutGuide viewportLayoutGuide:(id)viewportLayoutGuide
{
  viewCopy = view;
  controllerCopy = controller;
  guideCopy = guide;
  layoutGuideCopy = layoutGuide;
  viewportLayoutGuideCopy = viewportLayoutGuide;
  parentView = [(ChromeOverlayController *)self parentView];

  if (parentView != viewCopy)
  {
    [(ChromeOverlayController *)self _teardownIfNeeded];
    [(ChromeOverlayController *)self setParentView:viewCopy];
    [(ChromeOverlayController *)self setContainingViewController:controllerCopy];
    [(ChromeOverlayController *)self setContentLayoutGuide:guideCopy];
    [(ChromeOverlayController *)self setMapInsetsLayoutGuide:layoutGuideCopy];
    [(ChromeOverlayController *)self setViewportLayoutGuide:viewportLayoutGuideCopy];
    [(ChromeOverlayController *)self _setupIfNeeded];
  }
}

- (void)removeAllOverlays
{
  [(ChromeOverlayController *)self _deactivateHosting];
  overlays = self->_overlays;

  [(NSMutableOrderedSet *)overlays removeAllObjects];
}

- (void)removeOverlay:(id)overlay
{
  overlayCopy = overlay;
  [overlayCopy setHost:0];
  [(NSMutableOrderedSet *)self->_overlays removeObject:overlayCopy];
  [(NSMapTable *)self->_layoutGuidesByOverlay removeObjectForKey:overlayCopy];
  [(NSMapTable *)self->_hidingConstraintsByOverlay removeObjectForKey:overlayCopy];
  [(NSMapTable *)self->_showingConstraintsByOverlay removeObjectForKey:overlayCopy];
  [(NSMapTable *)self->_collisionConstraintsByOverlay removeObjectForKey:overlayCopy];
  [(NSMapTable *)self->_mapInsetsConstraintsByOverlay removeObjectForKey:overlayCopy];
  [(NSMapTable *)self->_viewportConstraintsByOverlay removeObjectForKey:overlayCopy];
}

- (void)addOverlay:(id)overlay inLayoutGuide:(id)guide
{
  overlayCopy = overlay;
  guideCopy = guide;
  [(NSMutableOrderedSet *)self->_overlays addObject:overlayCopy];
  layoutGuidesByOverlay = self->_layoutGuidesByOverlay;
  if (guideCopy)
  {
    [(NSMapTable *)layoutGuidesByOverlay setObject:guideCopy forKey:overlayCopy];
  }

  else
  {
    [(NSMapTable *)layoutGuidesByOverlay removeObjectForKey:overlayCopy];
  }

  if ([(ChromeOverlayController *)self _canHostOverlays])
  {
    [overlayCopy setHost:self];
  }
}

@end