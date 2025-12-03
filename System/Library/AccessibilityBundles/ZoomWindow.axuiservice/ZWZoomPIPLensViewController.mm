@interface ZWZoomPIPLensViewController
- (BOOL)_sufficientSpaceExistsForGrabber:(id)grabber;
- (CGPoint)_lensDragMultiplier;
- (CGPoint)maximumPanOffsetWithZoomFactor:(double)factor;
- (CGPoint)validPanOffsetForProposedOffset:(CGPoint)offset proposedZoomFactor:(double)factor;
- (ZWZoomPIPLensViewControllerDelegate)pipDelegate;
- (id)_activeGrabberForTouchAtLocation:(CGPoint)location;
- (id)_defaultGrabberForAxis:(int64_t)axis;
- (id)_secondaryGrabberForAxis:(int64_t)axis;
- (id)grabberViews;
- (id)zoomRootview:(id)rootview viewForHitTestAtPoint:(CGPoint)point;
- (int64_t)lensEdgeForTouchAtLocation:(CGPoint)location;
- (void)_applyInitialLayoutConstraints;
- (void)_collapseNonactiveGrabbers;
- (void)_handleLongPress:(id)press;
- (void)_handleTap:(id)tap;
- (void)_trackActiveGrabberWithTouchAtLocation:(CGPoint)location;
- (void)_updateActiveGrabberDragConstraintWithOffset:(CGPoint)offset;
- (void)_updateActiveResizeHandleForTouchOnChromeAtLocation:(CGPoint)location;
- (void)_updateLensChromeVisibility:(BOOL)visibility animated:(BOOL)animated completion:(id)completion;
- (void)loadView;
- (void)scrollViewDidEndDecelerating:(id)decelerating;
- (void)scrollViewDidEndDragging:(id)dragging willDecelerate:(BOOL)decelerate;
- (void)scrollViewDidScroll:(id)scroll;
- (void)scrollViewWillBeginDragging:(id)dragging;
- (void)setInLensResizingMode:(BOOL)mode;
- (void)setOffsetZoomWindow:(BOOL)window;
- (void)updateLensChromeAnimated:(BOOL)animated;
- (void)updateVisibleGrabbersAnimated:(BOOL)animated;
@end

@implementation ZWZoomPIPLensViewController

- (void)loadView
{
  v11.receiver = self;
  v11.super_class = ZWZoomPIPLensViewController;
  [(ZWZoomLensViewController *)&v11 loadView];
  view = [(ZWZoomPIPLensViewController *)self view];
  v4 = [[ZWLensChromeView alloc] initWithFrame:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
  [(ZWZoomPIPLensViewController *)self setLensChromeView:v4];
  [(ZWLensChromeView *)v4 setTranslatesAutoresizingMaskIntoConstraints:0];
  view2 = [(ZWZoomPIPLensViewController *)self view];
  layer = [view2 layer];
  [layer setMasksToBounds:0];

  [view addSubview:v4];
  v7 = [[ZWLensChromeGrabberView alloc] initWithEdge:0 startExpanded:0];
  [(ZWLensChromeGrabberView *)v7 setTranslatesAutoresizingMaskIntoConstraints:0];
  [(ZWZoomPIPLensViewController *)self setTopChromeGrabberView:v7];
  [view addSubview:v7];
  v8 = [[ZWLensChromeGrabberView alloc] initWithEdge:1 startExpanded:0];
  [(ZWLensChromeGrabberView *)v8 setTranslatesAutoresizingMaskIntoConstraints:0];
  [(ZWZoomPIPLensViewController *)self setRightChromeGrabberView:v8];
  [view addSubview:v8];
  v9 = [[ZWLensChromeGrabberView alloc] initWithEdge:2 startExpanded:0];
  [(ZWLensChromeGrabberView *)v9 setTranslatesAutoresizingMaskIntoConstraints:0];
  [(ZWZoomPIPLensViewController *)self setBottomChromeGrabberView:v9];
  [view addSubview:v9];
  v10 = [[ZWLensChromeGrabberView alloc] initWithEdge:3 startExpanded:0];
  [(ZWLensChromeGrabberView *)v10 setTranslatesAutoresizingMaskIntoConstraints:0];
  [(ZWZoomPIPLensViewController *)self setLeftChromeGrabberView:v10];
  [view addSubview:v10];
  [(ZWZoomPIPLensViewController *)self updateVisibleGrabbersAnimated:0];
}

- (void)_applyInitialLayoutConstraints
{
  v47.receiver = self;
  v47.super_class = ZWZoomPIPLensViewController;
  [(ZWZoomLensViewController *)&v47 _applyInitialLayoutConstraints];
  view = [(ZWZoomPIPLensViewController *)self view];
  topChromeGrabberView = [(ZWZoomPIPLensViewController *)self topChromeGrabberView];
  rightChromeGrabberView = [(ZWZoomPIPLensViewController *)self rightChromeGrabberView];
  bottomChromeGrabberView = [(ZWZoomPIPLensViewController *)self bottomChromeGrabberView];
  leftChromeGrabberView = [(ZWZoomPIPLensViewController *)self leftChromeGrabberView];
  lensChromeView = [(ZWZoomPIPLensViewController *)self lensChromeView];
  lensZoomView = [(ZWZoomLensViewController *)self lensZoomView];
  v49 = @"negativePad";
  v7 = [NSNumber numberWithDouble:-ZWLensOuterBorderWidth()];
  v50 = v7;
  v8 = [NSDictionary dictionaryWithObjects:&v50 forKeys:&v49 count:1];

  v43 = rightChromeGrabberView;
  v9 = _NSDictionaryOfVariableBindings(@"lensChromeView, leftGrabber, rightGrabber", lensChromeView, leftChromeGrabberView, rightChromeGrabberView, 0);
  v45 = v8;
  v10 = +[NSLayoutConstraint constraintsWithVisualFormat:options:metrics:views:](NSLayoutConstraint, "constraintsWithVisualFormat:options:metrics:views:", @"H:|[leftGrabber]-negativePad-[lensChromeView]-negativePad-[rightGrabber]|", 0, v8, v9);
  [view addConstraints:v10];

  v11 = _NSDictionaryOfVariableBindings(@"lensChromeView, topGrabber, bottomGrabber", lensChromeView, topChromeGrabberView, bottomChromeGrabberView, 0);
  v12 = +[NSLayoutConstraint constraintsWithVisualFormat:options:metrics:views:](NSLayoutConstraint, "constraintsWithVisualFormat:options:metrics:views:", @"V:|[topGrabber]-negativePad-[lensChromeView]-negativePad-[bottomGrabber]|", 0, v8, v11);
  [view addConstraints:v12];

  v13 = [NSLayoutConstraint constraintWithItem:topChromeGrabberView attribute:9 relatedBy:0 toItem:lensChromeView attribute:9 multiplier:1.0 constant:0.0];
  [(ZWZoomPIPLensViewController *)self setTopChromeGrabberDragConstraint:v13];

  topChromeGrabberDragConstraint = [(ZWZoomPIPLensViewController *)self topChromeGrabberDragConstraint];
  LODWORD(v15) = 1148829696;
  [topChromeGrabberDragConstraint setPriority:v15];

  v16 = [NSLayoutConstraint constraintWithItem:rightChromeGrabberView attribute:10 relatedBy:0 toItem:lensChromeView attribute:10 multiplier:1.0 constant:0.0];
  [(ZWZoomPIPLensViewController *)self setRightChromeGrabberDragConstraint:v16];

  rightChromeGrabberDragConstraint = [(ZWZoomPIPLensViewController *)self rightChromeGrabberDragConstraint];
  LODWORD(v18) = 1148829696;
  [rightChromeGrabberDragConstraint setPriority:v18];

  v19 = [NSLayoutConstraint constraintWithItem:bottomChromeGrabberView attribute:9 relatedBy:0 toItem:lensChromeView attribute:9 multiplier:1.0 constant:0.0];
  [(ZWZoomPIPLensViewController *)self setBottomChromeGrabberDragConstraint:v19];

  bottomChromeGrabberDragConstraint = [(ZWZoomPIPLensViewController *)self bottomChromeGrabberDragConstraint];
  LODWORD(v21) = 1148829696;
  [bottomChromeGrabberDragConstraint setPriority:v21];

  v22 = [NSLayoutConstraint constraintWithItem:leftChromeGrabberView attribute:10 relatedBy:0 toItem:lensChromeView attribute:10 multiplier:1.0 constant:0.0];
  [(ZWZoomPIPLensViewController *)self setLeftChromeGrabberDragConstraint:v22];

  leftChromeGrabberDragConstraint = [(ZWZoomPIPLensViewController *)self leftChromeGrabberDragConstraint];
  LODWORD(v24) = 1148829696;
  [leftChromeGrabberDragConstraint setPriority:v24];

  topChromeGrabberDragConstraint2 = [(ZWZoomPIPLensViewController *)self topChromeGrabberDragConstraint];
  v48[0] = topChromeGrabberDragConstraint2;
  rightChromeGrabberDragConstraint2 = [(ZWZoomPIPLensViewController *)self rightChromeGrabberDragConstraint];
  v48[1] = rightChromeGrabberDragConstraint2;
  bottomChromeGrabberDragConstraint2 = [(ZWZoomPIPLensViewController *)self bottomChromeGrabberDragConstraint];
  v48[2] = bottomChromeGrabberDragConstraint2;
  leftChromeGrabberDragConstraint2 = [(ZWZoomPIPLensViewController *)self leftChromeGrabberDragConstraint];
  v48[3] = leftChromeGrabberDragConstraint2;
  v29 = [NSArray arrayWithObjects:v48 count:4];
  [view addConstraints:v29];

  v30 = [NSLayoutConstraint constraintWithItem:topChromeGrabberView attribute:1 relatedBy:1 toItem:lensChromeView attribute:1 multiplier:1.0 constant:0.0];
  [view addConstraint:v30];

  v31 = [NSLayoutConstraint constraintWithItem:topChromeGrabberView attribute:2 relatedBy:-1 toItem:lensChromeView attribute:2 multiplier:1.0 constant:0.0];
  [view addConstraint:v31];

  v32 = [NSLayoutConstraint constraintWithItem:bottomChromeGrabberView attribute:1 relatedBy:1 toItem:lensChromeView attribute:1 multiplier:1.0 constant:0.0];
  [view addConstraint:v32];

  v33 = [NSLayoutConstraint constraintWithItem:bottomChromeGrabberView attribute:2 relatedBy:-1 toItem:lensChromeView attribute:2 multiplier:1.0 constant:0.0];
  [view addConstraint:v33];

  v34 = [NSLayoutConstraint constraintWithItem:leftChromeGrabberView attribute:3 relatedBy:1 toItem:lensChromeView attribute:3 multiplier:1.0 constant:0.0];
  [view addConstraint:v34];

  v35 = [NSLayoutConstraint constraintWithItem:leftChromeGrabberView attribute:4 relatedBy:-1 toItem:lensChromeView attribute:4 multiplier:1.0 constant:0.0];
  [view addConstraint:v35];

  v36 = [NSLayoutConstraint constraintWithItem:v43 attribute:3 relatedBy:1 toItem:lensChromeView attribute:3 multiplier:1.0 constant:0.0];
  [view addConstraint:v36];

  v37 = [NSLayoutConstraint constraintWithItem:v43 attribute:4 relatedBy:-1 toItem:lensChromeView attribute:4 multiplier:1.0 constant:0.0];
  [view addConstraint:v37];

  v38 = [NSLayoutConstraint constraintWithItem:lensZoomView attribute:1 relatedBy:0 toItem:lensChromeView attribute:1 multiplier:1.0 constant:0.0];
  [view addConstraint:v38];

  v39 = [NSLayoutConstraint constraintWithItem:lensZoomView attribute:2 relatedBy:0 toItem:lensChromeView attribute:2 multiplier:1.0 constant:0.0];
  [view addConstraint:v39];

  v40 = [NSLayoutConstraint constraintWithItem:lensZoomView attribute:3 relatedBy:0 toItem:lensChromeView attribute:3 multiplier:1.0 constant:0.0];
  [view addConstraint:v40];

  v41 = [NSLayoutConstraint constraintWithItem:lensZoomView attribute:4 relatedBy:0 toItem:lensChromeView attribute:4 multiplier:1.0 constant:0.0];
  [view addConstraint:v41];
}

- (void)updateLensChromeAnimated:(BOOL)animated
{
  animatedCopy = animated;
  v5.receiver = self;
  v5.super_class = ZWZoomPIPLensViewController;
  [(ZWZoomLensViewController *)&v5 updateLensChromeAnimated:?];
  [(ZWZoomPIPLensViewController *)self updateVisibleGrabbersAnimated:animatedCopy];
}

- (void)_updateLensChromeVisibility:(BOOL)visibility animated:(BOOL)animated completion:(id)completion
{
  animatedCopy = animated;
  visibilityCopy = visibility;
  completionCopy = completion;
  [(ZWZoomPIPLensViewController *)self updateLensChromeAnimated:animatedCopy];
  lensChromeView = [(ZWZoomPIPLensViewController *)self lensChromeView];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = __79__ZWZoomPIPLensViewController__updateLensChromeVisibility_animated_completion___block_invoke;
  v11[3] = &unk_78D50;
  v12 = completionCopy;
  v10 = completionCopy;
  [lensChromeView updateChromeVisibility:visibilityCopy animated:animatedCopy completion:v11];
}

uint64_t __79__ZWZoomPIPLensViewController__updateLensChromeVisibility_animated_completion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (CGPoint)maximumPanOffsetWithZoomFactor:(double)factor
{
  lensZoomView = [(ZWZoomLensViewController *)self lensZoomView];
  [lensZoomView bounds];
  v7 = v6;
  v9 = v8;

  lensZoomView2 = [(ZWZoomLensViewController *)self lensZoomView];
  [lensZoomView2 sampledContentSizeWithZoomFactor:factor];
  v12 = v11;
  v14 = v13;

  v15 = (v7 - v12) * 0.5;
  v16 = (v9 - v14) * 0.5;
  result.y = v16;
  result.x = v15;
  return result;
}

- (void)setInLensResizingMode:(BOOL)mode
{
  if (self->_inLensResizingMode != mode)
  {
    modeCopy = mode;
    self->_inLensResizingMode = mode;
    lensChromeView = [(ZWZoomPIPLensViewController *)self lensChromeView];
    [lensChromeView showLensResizingHandles:modeCopy animated:1];

    lensZoomView = [(ZWZoomLensViewController *)self lensZoomView];
    [lensZoomView showLensResizingHandlesShowing:modeCopy];

    [(ZWZoomPIPLensViewController *)self updateVisibleGrabbersAnimated:1];
  }
}

- (void)_updateActiveResizeHandleForTouchOnChromeAtLocation:(CGPoint)location
{
  y = location.y;
  x = location.x;
  if ([(ZWZoomPIPLensViewController *)self isInLensResizingMode])
  {
    v6 = [(ZWZoomPIPLensViewController *)self lensEdgeForTouchAtLocation:x, y];

    [(ZWZoomPIPLensViewController *)self setActiveResizeHandle:v6];
  }
}

- (int64_t)lensEdgeForTouchAtLocation:(CGPoint)location
{
  y = location.y;
  x = location.x;
  view = [(ZWZoomPIPLensViewController *)self view];
  lensChromeView = [(ZWZoomPIPLensViewController *)self lensChromeView];
  [view convertPoint:lensChromeView toView:{x, y}];
  v9 = v8;
  v11 = v10;

  v12 = ZWZoomLensBorderThicknessForTouches();
  lensChromeView2 = [(ZWZoomPIPLensViewController *)self lensChromeView];
  [lensChromeView2 bounds];
  v15 = v14;
  rect_24 = v16;
  v38 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;

  v22 = v15 - v12;
  v23 = v17 - v12;
  v24 = v19;
  rect_8 = v19;
  v25 = v19 + v12 * 2.0;
  v26 = v12 + v12;
  v27 = v21 + v12 * 2.0;
  rect = v24 + v22;
  v44.origin.x = v22;
  v44.origin.y = v23;
  v44.size.width = v25;
  v44.size.height = v26;
  v39.x = v9;
  v39.y = v11;
  v28 = CGRectContainsPoint(v44, v39);
  v45.origin.x = v22;
  v45.origin.y = v21 + v23;
  v45.size.width = v25;
  v45.size.height = v26;
  v40.x = v9;
  v40.y = v11;
  v29 = CGRectContainsPoint(v45, v40);
  v46.origin.x = v22;
  v46.origin.y = v23;
  v46.size.width = v26;
  v46.size.height = v27;
  v41.x = v9;
  v41.y = v11;
  v30 = CGRectContainsPoint(v46, v41);
  v47.origin.x = rect;
  v47.origin.y = v23;
  v47.size.width = v26;
  v47.size.height = v27;
  v42.x = v9;
  v42.y = v11;
  v31 = CGRectContainsPoint(v47, v42);
  v48.origin.y = rect_24;
  v48.origin.x = v38;
  v48.size.width = rect_8;
  v48.size.height = v21;
  v43.x = v9;
  v43.y = v11;
  LODWORD(result) = CGRectContainsPoint(v48, v43);
  if (v28 && v30)
  {
    return 2;
  }

  if (v28 && v31)
  {
    return 4;
  }

  if (v29 && v30)
  {
    return 8;
  }

  v33 = 5;
  if (v28)
  {
    v33 = 3;
  }

  if (v29 && v31)
  {
    v33 = 6;
  }

  v34 = 9;
  if (v29)
  {
    v34 = 7;
  }

  if ((!v29 || !v31) && !v28 && !v31)
  {
    v33 = v34;
  }

  if (v29 && v31 || v28 || v31 || v29 || v30)
  {
    return v33;
  }

  else
  {
    return result;
  }
}

- (void)setOffsetZoomWindow:(BOOL)window
{
  windowCopy = window;
  self->_offsetZoomWindow = window;
  lensZoomView = [(ZWZoomLensViewController *)self lensZoomView];
  [lensZoomView setOffsetZoomWindowFromFinger:windowCopy];
}

- (id)grabberViews
{
  topChromeGrabberView = [(ZWZoomPIPLensViewController *)self topChromeGrabberView];
  v9[0] = topChromeGrabberView;
  rightChromeGrabberView = [(ZWZoomPIPLensViewController *)self rightChromeGrabberView];
  v9[1] = rightChromeGrabberView;
  leftChromeGrabberView = [(ZWZoomPIPLensViewController *)self leftChromeGrabberView];
  v9[2] = leftChromeGrabberView;
  bottomChromeGrabberView = [(ZWZoomPIPLensViewController *)self bottomChromeGrabberView];
  v9[3] = bottomChromeGrabberView;
  v7 = [NSArray arrayWithObjects:v9 count:4];

  return v7;
}

- (id)_defaultGrabberForAxis:(int64_t)axis
{
  if (axis == 2)
  {
    [(ZWZoomPIPLensViewController *)self leftChromeGrabberView];
  }

  else
  {
    [(ZWZoomPIPLensViewController *)self bottomChromeGrabberView];
  }
  v3 = ;

  return v3;
}

- (id)_secondaryGrabberForAxis:(int64_t)axis
{
  if (axis == 2)
  {
    [(ZWZoomPIPLensViewController *)self rightChromeGrabberView];
  }

  else
  {
    [(ZWZoomPIPLensViewController *)self topChromeGrabberView];
  }
  v3 = ;

  return v3;
}

- (BOOL)_sufficientSpaceExistsForGrabber:(id)grabber
{
  grabberCopy = grabber;
  window = [grabberCopy window];
  [grabberCopy bounds];
  [window convertRect:grabberCopy fromView:?];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;

  window2 = [grabberCopy window];

  [window2 bounds];
  v16.origin.x = v6;
  v16.origin.y = v8;
  v16.size.width = v10;
  v16.size.height = v12;
  LOBYTE(grabberCopy) = CGRectContainsRect(v15, v16);

  return grabberCopy;
}

- (id)_activeGrabberForTouchAtLocation:(CGPoint)location
{
  v4 = [(ZWZoomPIPLensViewController *)self lensEdgeForTouchAtLocation:location.x, location.y];
  if (v4 <= 4)
  {
    if (v4 > 2)
    {
      if (v4 == 3)
      {
        topChromeGrabberView = [(ZWZoomPIPLensViewController *)self topChromeGrabberView];
        v15 = [(ZWZoomPIPLensViewController *)self _sufficientSpaceExistsForGrabber:topChromeGrabberView];

        if (!v15)
        {
          goto LABEL_33;
        }
      }

      else
      {
        topChromeGrabberView2 = [(ZWZoomPIPLensViewController *)self topChromeGrabberView];
        v8 = [(ZWZoomPIPLensViewController *)self _sufficientSpaceExistsForGrabber:topChromeGrabberView2];

        if (!v8)
        {
          goto LABEL_17;
        }
      }
    }

    else
    {
      if (v4 == 1)
      {
        goto LABEL_33;
      }

      if (v4 != 2)
      {
        goto LABEL_27;
      }

      topChromeGrabberView3 = [(ZWZoomPIPLensViewController *)self topChromeGrabberView];
      v6 = [(ZWZoomPIPLensViewController *)self _sufficientSpaceExistsForGrabber:topChromeGrabberView3];

      if (!v6)
      {
        goto LABEL_25;
      }
    }

    topChromeGrabberView4 = [(ZWZoomPIPLensViewController *)self topChromeGrabberView];
    goto LABEL_34;
  }

  if (v4 <= 6)
  {
    if (v4 != 5)
    {
      bottomChromeGrabberView = [(ZWZoomPIPLensViewController *)self bottomChromeGrabberView];
      v10 = [(ZWZoomPIPLensViewController *)self _sufficientSpaceExistsForGrabber:bottomChromeGrabberView];

      if (v10)
      {
        goto LABEL_24;
      }
    }

LABEL_17:
    rightChromeGrabberView = [(ZWZoomPIPLensViewController *)self rightChromeGrabberView];
    v12 = [(ZWZoomPIPLensViewController *)self _sufficientSpaceExistsForGrabber:rightChromeGrabberView];

    if (v12)
    {
      topChromeGrabberView4 = [(ZWZoomPIPLensViewController *)self rightChromeGrabberView];
      goto LABEL_34;
    }

    goto LABEL_33;
  }

  if (v4 == 7)
  {
    bottomChromeGrabberView2 = [(ZWZoomPIPLensViewController *)self bottomChromeGrabberView];
    v17 = [(ZWZoomPIPLensViewController *)self _sufficientSpaceExistsForGrabber:bottomChromeGrabberView2];

    if (!v17)
    {
      goto LABEL_33;
    }

    goto LABEL_24;
  }

  if (v4 != 8)
  {
    if (v4 != 9)
    {
LABEL_27:
      v22 = +[AXSubsystemZoom sharedInstance];
      ignoreLogging = [v22 ignoreLogging];

      if ((ignoreLogging & 1) == 0)
      {
        v24 = +[AXSubsystemZoom identifier];
        v25 = AXLoggerForFacility();

        v26 = AXOSLogLevelFromAXLogLevel();
        if (os_log_type_enabled(v25, v26))
        {
          v27 = AXColorizeFormatLog();
          v28 = _AXStringForArgs();
          if (os_log_type_enabled(v25, v26))
          {
            v30 = 138543362;
            v31 = v28;
            _os_log_impl(&dword_0, v25, v26, "%{public}@", &v30, 0xCu);
          }
        }
      }

      goto LABEL_33;
    }

    goto LABEL_25;
  }

  bottomChromeGrabberView3 = [(ZWZoomPIPLensViewController *)self bottomChromeGrabberView];
  v19 = [(ZWZoomPIPLensViewController *)self _sufficientSpaceExistsForGrabber:bottomChromeGrabberView3];

  if (v19)
  {
LABEL_24:
    topChromeGrabberView4 = [(ZWZoomPIPLensViewController *)self bottomChromeGrabberView];
    goto LABEL_34;
  }

LABEL_25:
  leftChromeGrabberView = [(ZWZoomPIPLensViewController *)self leftChromeGrabberView];
  v21 = [(ZWZoomPIPLensViewController *)self _sufficientSpaceExistsForGrabber:leftChromeGrabberView];

  if (v21)
  {
    topChromeGrabberView4 = [(ZWZoomPIPLensViewController *)self leftChromeGrabberView];
    goto LABEL_34;
  }

LABEL_33:
  topChromeGrabberView4 = 0;
LABEL_34:

  return topChromeGrabberView4;
}

- (void)_collapseNonactiveGrabbers
{
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  grabberViews = [(ZWZoomPIPLensViewController *)self grabberViews];
  v4 = [grabberViews countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
    do
    {
      v7 = 0;
      do
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(grabberViews);
        }

        v8 = *(*(&v10 + 1) + 8 * v7);
        activeGrabber = [(ZWZoomPIPLensViewController *)self activeGrabber];

        if (v8 != activeGrabber)
        {
          [v8 collapseGrabberAnimated:1];
        }

        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [grabberViews countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }
}

- (void)_updateActiveGrabberDragConstraintWithOffset:(CGPoint)offset
{
  y = offset.y;
  x = offset.x;
  activeGrabber = [(ZWZoomPIPLensViewController *)self activeGrabber];
  topChromeGrabberView = [(ZWZoomPIPLensViewController *)self topChromeGrabberView];

  if (activeGrabber == topChromeGrabberView)
  {
    topChromeGrabberDragConstraint = [(ZWZoomPIPLensViewController *)self topChromeGrabberDragConstraint];
  }

  else
  {
    activeGrabber2 = [(ZWZoomPIPLensViewController *)self activeGrabber];
    rightChromeGrabberView = [(ZWZoomPIPLensViewController *)self rightChromeGrabberView];

    if (activeGrabber2 == rightChromeGrabberView)
    {
      topChromeGrabberDragConstraint = [(ZWZoomPIPLensViewController *)self rightChromeGrabberDragConstraint];
LABEL_11:
      v16 = topChromeGrabberDragConstraint;
      v15 = y;
      goto LABEL_12;
    }

    activeGrabber3 = [(ZWZoomPIPLensViewController *)self activeGrabber];
    bottomChromeGrabberView = [(ZWZoomPIPLensViewController *)self bottomChromeGrabberView];

    if (activeGrabber3 != bottomChromeGrabberView)
    {
      activeGrabber4 = [(ZWZoomPIPLensViewController *)self activeGrabber];
      leftChromeGrabberView = [(ZWZoomPIPLensViewController *)self leftChromeGrabberView];

      if (activeGrabber4 != leftChromeGrabberView)
      {
        return;
      }

      topChromeGrabberDragConstraint = [(ZWZoomPIPLensViewController *)self leftChromeGrabberDragConstraint];
      goto LABEL_11;
    }

    topChromeGrabberDragConstraint = [(ZWZoomPIPLensViewController *)self bottomChromeGrabberDragConstraint];
  }

  v16 = topChromeGrabberDragConstraint;
  v15 = x;
LABEL_12:
  [topChromeGrabberDragConstraint setConstant:v15];
}

- (void)_trackActiveGrabberWithTouchAtLocation:(CGPoint)location
{
  y = location.y;
  x = location.x;
  activeGrabber = [(ZWZoomPIPLensViewController *)self activeGrabber];
  if (activeGrabber)
  {
    v17 = activeGrabber;
    view = [(ZWZoomPIPLensViewController *)self view];
    lensChromeView = [(ZWZoomPIPLensViewController *)self lensChromeView];
    [view convertPoint:lensChromeView toView:{x, y}];
    v10 = v9;
    v12 = v11;

    lensChromeView2 = [(ZWZoomPIPLensViewController *)self lensChromeView];
    [lensChromeView2 bounds];
    MidX = CGRectGetMidX(v19);
    lensChromeView3 = [(ZWZoomPIPLensViewController *)self lensChromeView];
    [lensChromeView3 bounds];
    MidY = CGRectGetMidY(v20);

    [(ZWZoomPIPLensViewController *)self _updateActiveGrabberDragConstraintWithOffset:v10 - MidX, v12 - MidY];
    activeGrabber = v17;
  }
}

- (void)updateVisibleGrabbersAnimated:(BOOL)animated
{
  animatedCopy = animated;
  if (-[ZWZoomLensViewController inStandbyMode](self, "inStandbyMode") || -[ZWZoomPIPLensViewController isInLensResizingMode](self, "isInLensResizingMode") || (-[ZWZoomPIPLensViewController pipDelegate](self, "pipDelegate"), v5 = objc_claimAutoreleasedReturnValue(), v6 = [v5 shouldHideGrabbersWithZoomLensViewController:self], v5, v6))
  {
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    grabberViews = [(ZWZoomPIPLensViewController *)self grabberViews];
    v8 = [grabberViews countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v17;
      do
      {
        for (i = 0; i != v9; i = i + 1)
        {
          if (*v17 != v10)
          {
            objc_enumerationMutation(grabberViews);
          }

          [*(*(&v16 + 1) + 8 * i) collapseGrabberAnimated:animatedCopy];
        }

        v9 = [grabberViews countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v9);
    }

    return;
  }

  v12 = [(ZWZoomPIPLensViewController *)self _defaultGrabberForAxis:2];
  v13 = [(ZWZoomPIPLensViewController *)self _secondaryGrabberForAxis:2];
  if ([(ZWZoomPIPLensViewController *)self _sufficientSpaceExistsForGrabber:v12])
  {
    [v12 expandGrabberAnimated:animatedCopy];
  }

  else
  {
    [v12 collapseGrabberAnimated:animatedCopy];
    if ([(ZWZoomPIPLensViewController *)self _sufficientSpaceExistsForGrabber:v13])
    {
      [v13 expandGrabberAnimated:animatedCopy];
      goto LABEL_17;
    }
  }

  [v13 collapseGrabberAnimated:animatedCopy];
LABEL_17:
  v15 = [(ZWZoomPIPLensViewController *)self _defaultGrabberForAxis:4];

  v14 = [(ZWZoomPIPLensViewController *)self _secondaryGrabberForAxis:4];

  if ([(ZWZoomPIPLensViewController *)self _sufficientSpaceExistsForGrabber:v15])
  {
    [v15 expandGrabberAnimated:animatedCopy];
LABEL_21:
    [v14 collapseGrabberAnimated:animatedCopy];
    goto LABEL_22;
  }

  [v15 collapseGrabberAnimated:animatedCopy];
  if (![(ZWZoomPIPLensViewController *)self _sufficientSpaceExistsForGrabber:v14])
  {
    goto LABEL_21;
  }

  [v14 expandGrabberAnimated:animatedCopy];
LABEL_22:
}

- (void)_handleTap:(id)tap
{
  tapCopy = tap;
  v19.receiver = self;
  v19.super_class = ZWZoomPIPLensViewController;
  [(ZWZoomLensViewController *)&v19 _handleTap:tapCopy];
  if ([tapCopy state] == &dword_0 + 3)
  {
    [(ZWZoomPIPLensViewController *)self grabberViews];
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v5 = v18 = 0u;
    v6 = [v5 countByEnumeratingWithState:&v15 objects:v20 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v16;
      while (2)
      {
        for (i = 0; i != v7; i = i + 1)
        {
          if (*v16 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v15 + 1) + 8 * i);
          view = [(ZWZoomPIPLensViewController *)self view];
          view2 = [(ZWZoomPIPLensViewController *)self view];
          [tapCopy locationInView:view2];
          [view convertPoint:v10 toView:?];
          v13 = [v10 pointInside:0 withEvent:?];

          if (v13)
          {
            pipDelegate = [(ZWZoomPIPLensViewController *)self pipDelegate];
            [pipDelegate zoomLensViewController:self grabberDidReceiveTap:v10];

            goto LABEL_12;
          }
        }

        v7 = [v5 countByEnumeratingWithState:&v15 objects:v20 count:16];
        if (v7)
        {
          continue;
        }

        break;
      }
    }

LABEL_12:
  }
}

- (void)_handleLongPress:(id)press
{
  v12.receiver = self;
  v12.super_class = ZWZoomPIPLensViewController;
  pressCopy = press;
  [(ZWZoomLensViewController *)&v12 _handleLongPress:pressCopy];
  state = [pressCopy state];

  if ((state - 3) >= 3)
  {
    if (state == &dword_0 + 1)
    {
      dummyScrollViewPanGestureRecognizer = [(ZWZoomLensViewController *)self dummyScrollViewPanGestureRecognizer];
      view = [(ZWZoomPIPLensViewController *)self view];
      [dummyScrollViewPanGestureRecognizer locationInView:view];
      v9 = v8;
      v11 = v10;

      [(ZWZoomPIPLensViewController *)self _updateActiveResizeHandleForTouchOnChromeAtLocation:v9, v11];
    }
  }

  else
  {
    [(ZWZoomPIPLensViewController *)self _updateActiveGrabberDragConstraintWithOffset:CGPointZero.x, CGPointZero.y];
    [(ZWZoomPIPLensViewController *)self setActiveGrabber:0];
    [(ZWZoomPIPLensViewController *)self updateVisibleGrabbersAnimated:1];
  }
}

- (CGPoint)_lensDragMultiplier
{
  v2 = 1.0;
  v3 = 1.0;
  result.y = v3;
  result.x = v2;
  return result;
}

- (void)scrollViewWillBeginDragging:(id)dragging
{
  draggingCopy = dragging;
  if (![(ZWZoomLensViewController *)self inStandbyMode])
  {
    v5 = [AXAssertion assertionWithType:AXAssertionTypeDisableDashboardSystemGestures identifier:@"Zoom: PIP window dragging"];
    [(ZWZoomPIPLensViewController *)self setDisableDashBoardSystemGesturesAssertion:v5];

    panGestureRecognizer = [draggingCopy panGestureRecognizer];
    view = [(ZWZoomPIPLensViewController *)self view];
    [panGestureRecognizer locationInView:view];
    v8 = [(ZWZoomPIPLensViewController *)self _activeGrabberForTouchAtLocation:?];
    [(ZWZoomPIPLensViewController *)self setActiveGrabber:v8];

    [(ZWZoomPIPLensViewController *)self _collapseNonactiveGrabbers];
    v9.receiver = self;
    v9.super_class = ZWZoomPIPLensViewController;
    [(ZWZoomLensViewController *)&v9 scrollViewWillBeginDragging:draggingCopy];
  }
}

- (void)scrollViewDidScroll:(id)scroll
{
  scrollCopy = scroll;
  if (![(ZWZoomLensViewController *)self inStandbyMode])
  {
    panGestureRecognizer = [scrollCopy panGestureRecognizer];
    view = [(ZWZoomPIPLensViewController *)self view];
    [panGestureRecognizer locationInView:view];
    [(ZWZoomPIPLensViewController *)self _trackActiveGrabberWithTouchAtLocation:?];

    v7.receiver = self;
    v7.super_class = ZWZoomPIPLensViewController;
    [(ZWZoomLensViewController *)&v7 scrollViewDidScroll:scrollCopy];
  }
}

- (void)scrollViewDidEndDragging:(id)dragging willDecelerate:(BOOL)decelerate
{
  decelerateCopy = decelerate;
  draggingCopy = dragging;
  if (![(ZWZoomLensViewController *)self inStandbyMode])
  {
    [(ZWZoomPIPLensViewController *)self setDisableDashBoardSystemGesturesAssertion:0];
    if (!decelerateCopy)
    {
      [(ZWZoomPIPLensViewController *)self updateVisibleGrabbersAnimated:1];
    }

    v7.receiver = self;
    v7.super_class = ZWZoomPIPLensViewController;
    [(ZWZoomLensViewController *)&v7 scrollViewDidEndDragging:draggingCopy willDecelerate:decelerateCopy];
  }
}

- (void)scrollViewDidEndDecelerating:(id)decelerating
{
  deceleratingCopy = decelerating;
  if (![(ZWZoomLensViewController *)self inStandbyMode])
  {
    [(ZWZoomPIPLensViewController *)self updateVisibleGrabbersAnimated:1];
    v5.receiver = self;
    v5.super_class = ZWZoomPIPLensViewController;
    [(ZWZoomLensViewController *)&v5 scrollViewDidEndDecelerating:deceleratingCopy];
  }
}

- (id)zoomRootview:(id)rootview viewForHitTestAtPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  rootviewCopy = rootview;
  lensChromeView = [(ZWZoomPIPLensViewController *)self lensChromeView];
  v29[0] = lensChromeView;
  topChromeGrabberView = [(ZWZoomPIPLensViewController *)self topChromeGrabberView];
  v29[1] = topChromeGrabberView;
  rightChromeGrabberView = [(ZWZoomPIPLensViewController *)self rightChromeGrabberView];
  v29[2] = rightChromeGrabberView;
  bottomChromeGrabberView = [(ZWZoomPIPLensViewController *)self bottomChromeGrabberView];
  v29[3] = bottomChromeGrabberView;
  leftChromeGrabberView = [(ZWZoomPIPLensViewController *)self leftChromeGrabberView];
  v29[4] = leftChromeGrabberView;
  v13 = [NSArray arrayWithObjects:v29 count:5];

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v14 = v13;
  v15 = [v14 countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v25;
LABEL_3:
    v18 = 0;
    while (1)
    {
      if (*v25 != v17)
      {
        objc_enumerationMutation(v14);
      }

      v19 = *(*(&v24 + 1) + 8 * v18);
      [rootviewCopy convertPoint:v19 toView:{x, y}];
      v20 = [v19 hitTest:0 withEvent:?];

      if (v20)
      {
        break;
      }

      if (v16 == ++v18)
      {
        v16 = [v14 countByEnumeratingWithState:&v24 objects:v28 count:16];
        if (v16)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }

    v21 = rootviewCopy;

    if (v21)
    {
      goto LABEL_12;
    }
  }

  else
  {
LABEL_9:
  }

  v23.receiver = self;
  v23.super_class = ZWZoomPIPLensViewController;
  v21 = [(ZWZoomLensViewController *)&v23 zoomRootview:rootviewCopy viewForHitTestAtPoint:x, y];
LABEL_12:

  return v21;
}

- (CGPoint)validPanOffsetForProposedOffset:(CGPoint)offset proposedZoomFactor:(double)factor
{
  y = offset.y;
  x = offset.x;
  if (![(ZWZoomPIPLensViewController *)self offsetZoomWindow])
  {
    v12.receiver = self;
    v12.super_class = ZWZoomPIPLensViewController;
    [(ZWZoomLensViewController *)&v12 validPanOffsetForProposedOffset:x proposedZoomFactor:y, factor];
    x = v8;
    y = v9;
  }

  v10 = x;
  v11 = y;
  result.y = v11;
  result.x = v10;
  return result;
}

- (ZWZoomPIPLensViewControllerDelegate)pipDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_pipDelegate);

  return WeakRetained;
}

@end