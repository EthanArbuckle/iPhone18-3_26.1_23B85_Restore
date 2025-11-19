@interface ZWZoomPIPLensViewController
- (BOOL)_sufficientSpaceExistsForGrabber:(id)a3;
- (CGPoint)_lensDragMultiplier;
- (CGPoint)maximumPanOffsetWithZoomFactor:(double)a3;
- (CGPoint)validPanOffsetForProposedOffset:(CGPoint)a3 proposedZoomFactor:(double)a4;
- (ZWZoomPIPLensViewControllerDelegate)pipDelegate;
- (id)_activeGrabberForTouchAtLocation:(CGPoint)a3;
- (id)_defaultGrabberForAxis:(int64_t)a3;
- (id)_secondaryGrabberForAxis:(int64_t)a3;
- (id)grabberViews;
- (id)zoomRootview:(id)a3 viewForHitTestAtPoint:(CGPoint)a4;
- (int64_t)lensEdgeForTouchAtLocation:(CGPoint)a3;
- (void)_applyInitialLayoutConstraints;
- (void)_collapseNonactiveGrabbers;
- (void)_handleLongPress:(id)a3;
- (void)_handleTap:(id)a3;
- (void)_trackActiveGrabberWithTouchAtLocation:(CGPoint)a3;
- (void)_updateActiveGrabberDragConstraintWithOffset:(CGPoint)a3;
- (void)_updateActiveResizeHandleForTouchOnChromeAtLocation:(CGPoint)a3;
- (void)_updateLensChromeVisibility:(BOOL)a3 animated:(BOOL)a4 completion:(id)a5;
- (void)loadView;
- (void)scrollViewDidEndDecelerating:(id)a3;
- (void)scrollViewDidEndDragging:(id)a3 willDecelerate:(BOOL)a4;
- (void)scrollViewDidScroll:(id)a3;
- (void)scrollViewWillBeginDragging:(id)a3;
- (void)setInLensResizingMode:(BOOL)a3;
- (void)setOffsetZoomWindow:(BOOL)a3;
- (void)updateLensChromeAnimated:(BOOL)a3;
- (void)updateVisibleGrabbersAnimated:(BOOL)a3;
@end

@implementation ZWZoomPIPLensViewController

- (void)loadView
{
  v11.receiver = self;
  v11.super_class = ZWZoomPIPLensViewController;
  [(ZWZoomLensViewController *)&v11 loadView];
  v3 = [(ZWZoomPIPLensViewController *)self view];
  v4 = [[ZWLensChromeView alloc] initWithFrame:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
  [(ZWZoomPIPLensViewController *)self setLensChromeView:v4];
  [(ZWLensChromeView *)v4 setTranslatesAutoresizingMaskIntoConstraints:0];
  v5 = [(ZWZoomPIPLensViewController *)self view];
  v6 = [v5 layer];
  [v6 setMasksToBounds:0];

  [v3 addSubview:v4];
  v7 = [[ZWLensChromeGrabberView alloc] initWithEdge:0 startExpanded:0];
  [(ZWLensChromeGrabberView *)v7 setTranslatesAutoresizingMaskIntoConstraints:0];
  [(ZWZoomPIPLensViewController *)self setTopChromeGrabberView:v7];
  [v3 addSubview:v7];
  v8 = [[ZWLensChromeGrabberView alloc] initWithEdge:1 startExpanded:0];
  [(ZWLensChromeGrabberView *)v8 setTranslatesAutoresizingMaskIntoConstraints:0];
  [(ZWZoomPIPLensViewController *)self setRightChromeGrabberView:v8];
  [v3 addSubview:v8];
  v9 = [[ZWLensChromeGrabberView alloc] initWithEdge:2 startExpanded:0];
  [(ZWLensChromeGrabberView *)v9 setTranslatesAutoresizingMaskIntoConstraints:0];
  [(ZWZoomPIPLensViewController *)self setBottomChromeGrabberView:v9];
  [v3 addSubview:v9];
  v10 = [[ZWLensChromeGrabberView alloc] initWithEdge:3 startExpanded:0];
  [(ZWLensChromeGrabberView *)v10 setTranslatesAutoresizingMaskIntoConstraints:0];
  [(ZWZoomPIPLensViewController *)self setLeftChromeGrabberView:v10];
  [v3 addSubview:v10];
  [(ZWZoomPIPLensViewController *)self updateVisibleGrabbersAnimated:0];
}

- (void)_applyInitialLayoutConstraints
{
  v47.receiver = self;
  v47.super_class = ZWZoomPIPLensViewController;
  [(ZWZoomLensViewController *)&v47 _applyInitialLayoutConstraints];
  v3 = [(ZWZoomPIPLensViewController *)self view];
  v42 = [(ZWZoomPIPLensViewController *)self topChromeGrabberView];
  v4 = [(ZWZoomPIPLensViewController *)self rightChromeGrabberView];
  v5 = [(ZWZoomPIPLensViewController *)self bottomChromeGrabberView];
  v46 = [(ZWZoomPIPLensViewController *)self leftChromeGrabberView];
  v6 = [(ZWZoomPIPLensViewController *)self lensChromeView];
  v44 = [(ZWZoomLensViewController *)self lensZoomView];
  v49 = @"negativePad";
  v7 = [NSNumber numberWithDouble:-ZWLensOuterBorderWidth()];
  v50 = v7;
  v8 = [NSDictionary dictionaryWithObjects:&v50 forKeys:&v49 count:1];

  v43 = v4;
  v9 = _NSDictionaryOfVariableBindings(@"lensChromeView, leftGrabber, rightGrabber", v6, v46, v4, 0);
  v45 = v8;
  v10 = +[NSLayoutConstraint constraintsWithVisualFormat:options:metrics:views:](NSLayoutConstraint, "constraintsWithVisualFormat:options:metrics:views:", @"H:|[leftGrabber]-negativePad-[lensChromeView]-negativePad-[rightGrabber]|", 0, v8, v9);
  [v3 addConstraints:v10];

  v11 = _NSDictionaryOfVariableBindings(@"lensChromeView, topGrabber, bottomGrabber", v6, v42, v5, 0);
  v12 = +[NSLayoutConstraint constraintsWithVisualFormat:options:metrics:views:](NSLayoutConstraint, "constraintsWithVisualFormat:options:metrics:views:", @"V:|[topGrabber]-negativePad-[lensChromeView]-negativePad-[bottomGrabber]|", 0, v8, v11);
  [v3 addConstraints:v12];

  v13 = [NSLayoutConstraint constraintWithItem:v42 attribute:9 relatedBy:0 toItem:v6 attribute:9 multiplier:1.0 constant:0.0];
  [(ZWZoomPIPLensViewController *)self setTopChromeGrabberDragConstraint:v13];

  v14 = [(ZWZoomPIPLensViewController *)self topChromeGrabberDragConstraint];
  LODWORD(v15) = 1148829696;
  [v14 setPriority:v15];

  v16 = [NSLayoutConstraint constraintWithItem:v4 attribute:10 relatedBy:0 toItem:v6 attribute:10 multiplier:1.0 constant:0.0];
  [(ZWZoomPIPLensViewController *)self setRightChromeGrabberDragConstraint:v16];

  v17 = [(ZWZoomPIPLensViewController *)self rightChromeGrabberDragConstraint];
  LODWORD(v18) = 1148829696;
  [v17 setPriority:v18];

  v19 = [NSLayoutConstraint constraintWithItem:v5 attribute:9 relatedBy:0 toItem:v6 attribute:9 multiplier:1.0 constant:0.0];
  [(ZWZoomPIPLensViewController *)self setBottomChromeGrabberDragConstraint:v19];

  v20 = [(ZWZoomPIPLensViewController *)self bottomChromeGrabberDragConstraint];
  LODWORD(v21) = 1148829696;
  [v20 setPriority:v21];

  v22 = [NSLayoutConstraint constraintWithItem:v46 attribute:10 relatedBy:0 toItem:v6 attribute:10 multiplier:1.0 constant:0.0];
  [(ZWZoomPIPLensViewController *)self setLeftChromeGrabberDragConstraint:v22];

  v23 = [(ZWZoomPIPLensViewController *)self leftChromeGrabberDragConstraint];
  LODWORD(v24) = 1148829696;
  [v23 setPriority:v24];

  v25 = [(ZWZoomPIPLensViewController *)self topChromeGrabberDragConstraint];
  v48[0] = v25;
  v26 = [(ZWZoomPIPLensViewController *)self rightChromeGrabberDragConstraint];
  v48[1] = v26;
  v27 = [(ZWZoomPIPLensViewController *)self bottomChromeGrabberDragConstraint];
  v48[2] = v27;
  v28 = [(ZWZoomPIPLensViewController *)self leftChromeGrabberDragConstraint];
  v48[3] = v28;
  v29 = [NSArray arrayWithObjects:v48 count:4];
  [v3 addConstraints:v29];

  v30 = [NSLayoutConstraint constraintWithItem:v42 attribute:1 relatedBy:1 toItem:v6 attribute:1 multiplier:1.0 constant:0.0];
  [v3 addConstraint:v30];

  v31 = [NSLayoutConstraint constraintWithItem:v42 attribute:2 relatedBy:-1 toItem:v6 attribute:2 multiplier:1.0 constant:0.0];
  [v3 addConstraint:v31];

  v32 = [NSLayoutConstraint constraintWithItem:v5 attribute:1 relatedBy:1 toItem:v6 attribute:1 multiplier:1.0 constant:0.0];
  [v3 addConstraint:v32];

  v33 = [NSLayoutConstraint constraintWithItem:v5 attribute:2 relatedBy:-1 toItem:v6 attribute:2 multiplier:1.0 constant:0.0];
  [v3 addConstraint:v33];

  v34 = [NSLayoutConstraint constraintWithItem:v46 attribute:3 relatedBy:1 toItem:v6 attribute:3 multiplier:1.0 constant:0.0];
  [v3 addConstraint:v34];

  v35 = [NSLayoutConstraint constraintWithItem:v46 attribute:4 relatedBy:-1 toItem:v6 attribute:4 multiplier:1.0 constant:0.0];
  [v3 addConstraint:v35];

  v36 = [NSLayoutConstraint constraintWithItem:v43 attribute:3 relatedBy:1 toItem:v6 attribute:3 multiplier:1.0 constant:0.0];
  [v3 addConstraint:v36];

  v37 = [NSLayoutConstraint constraintWithItem:v43 attribute:4 relatedBy:-1 toItem:v6 attribute:4 multiplier:1.0 constant:0.0];
  [v3 addConstraint:v37];

  v38 = [NSLayoutConstraint constraintWithItem:v44 attribute:1 relatedBy:0 toItem:v6 attribute:1 multiplier:1.0 constant:0.0];
  [v3 addConstraint:v38];

  v39 = [NSLayoutConstraint constraintWithItem:v44 attribute:2 relatedBy:0 toItem:v6 attribute:2 multiplier:1.0 constant:0.0];
  [v3 addConstraint:v39];

  v40 = [NSLayoutConstraint constraintWithItem:v44 attribute:3 relatedBy:0 toItem:v6 attribute:3 multiplier:1.0 constant:0.0];
  [v3 addConstraint:v40];

  v41 = [NSLayoutConstraint constraintWithItem:v44 attribute:4 relatedBy:0 toItem:v6 attribute:4 multiplier:1.0 constant:0.0];
  [v3 addConstraint:v41];
}

- (void)updateLensChromeAnimated:(BOOL)a3
{
  v3 = a3;
  v5.receiver = self;
  v5.super_class = ZWZoomPIPLensViewController;
  [(ZWZoomLensViewController *)&v5 updateLensChromeAnimated:?];
  [(ZWZoomPIPLensViewController *)self updateVisibleGrabbersAnimated:v3];
}

- (void)_updateLensChromeVisibility:(BOOL)a3 animated:(BOOL)a4 completion:(id)a5
{
  v5 = a4;
  v6 = a3;
  v8 = a5;
  [(ZWZoomPIPLensViewController *)self updateLensChromeAnimated:v5];
  v9 = [(ZWZoomPIPLensViewController *)self lensChromeView];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = __79__ZWZoomPIPLensViewController__updateLensChromeVisibility_animated_completion___block_invoke;
  v11[3] = &unk_78D50;
  v12 = v8;
  v10 = v8;
  [v9 updateChromeVisibility:v6 animated:v5 completion:v11];
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

- (CGPoint)maximumPanOffsetWithZoomFactor:(double)a3
{
  v5 = [(ZWZoomLensViewController *)self lensZoomView];
  [v5 bounds];
  v7 = v6;
  v9 = v8;

  v10 = [(ZWZoomLensViewController *)self lensZoomView];
  [v10 sampledContentSizeWithZoomFactor:a3];
  v12 = v11;
  v14 = v13;

  v15 = (v7 - v12) * 0.5;
  v16 = (v9 - v14) * 0.5;
  result.y = v16;
  result.x = v15;
  return result;
}

- (void)setInLensResizingMode:(BOOL)a3
{
  if (self->_inLensResizingMode != a3)
  {
    v4 = a3;
    self->_inLensResizingMode = a3;
    v6 = [(ZWZoomPIPLensViewController *)self lensChromeView];
    [v6 showLensResizingHandles:v4 animated:1];

    v7 = [(ZWZoomLensViewController *)self lensZoomView];
    [v7 showLensResizingHandlesShowing:v4];

    [(ZWZoomPIPLensViewController *)self updateVisibleGrabbersAnimated:1];
  }
}

- (void)_updateActiveResizeHandleForTouchOnChromeAtLocation:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  if ([(ZWZoomPIPLensViewController *)self isInLensResizingMode])
  {
    v6 = [(ZWZoomPIPLensViewController *)self lensEdgeForTouchAtLocation:x, y];

    [(ZWZoomPIPLensViewController *)self setActiveResizeHandle:v6];
  }
}

- (int64_t)lensEdgeForTouchAtLocation:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v6 = [(ZWZoomPIPLensViewController *)self view];
  v7 = [(ZWZoomPIPLensViewController *)self lensChromeView];
  [v6 convertPoint:v7 toView:{x, y}];
  v9 = v8;
  v11 = v10;

  v12 = ZWZoomLensBorderThicknessForTouches();
  v13 = [(ZWZoomPIPLensViewController *)self lensChromeView];
  [v13 bounds];
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

- (void)setOffsetZoomWindow:(BOOL)a3
{
  v3 = a3;
  self->_offsetZoomWindow = a3;
  v4 = [(ZWZoomLensViewController *)self lensZoomView];
  [v4 setOffsetZoomWindowFromFinger:v3];
}

- (id)grabberViews
{
  v3 = [(ZWZoomPIPLensViewController *)self topChromeGrabberView];
  v9[0] = v3;
  v4 = [(ZWZoomPIPLensViewController *)self rightChromeGrabberView];
  v9[1] = v4;
  v5 = [(ZWZoomPIPLensViewController *)self leftChromeGrabberView];
  v9[2] = v5;
  v6 = [(ZWZoomPIPLensViewController *)self bottomChromeGrabberView];
  v9[3] = v6;
  v7 = [NSArray arrayWithObjects:v9 count:4];

  return v7;
}

- (id)_defaultGrabberForAxis:(int64_t)a3
{
  if (a3 == 2)
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

- (id)_secondaryGrabberForAxis:(int64_t)a3
{
  if (a3 == 2)
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

- (BOOL)_sufficientSpaceExistsForGrabber:(id)a3
{
  v3 = a3;
  v4 = [v3 window];
  [v3 bounds];
  [v4 convertRect:v3 fromView:?];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;

  v13 = [v3 window];

  [v13 bounds];
  v16.origin.x = v6;
  v16.origin.y = v8;
  v16.size.width = v10;
  v16.size.height = v12;
  LOBYTE(v3) = CGRectContainsRect(v15, v16);

  return v3;
}

- (id)_activeGrabberForTouchAtLocation:(CGPoint)a3
{
  v4 = [(ZWZoomPIPLensViewController *)self lensEdgeForTouchAtLocation:a3.x, a3.y];
  if (v4 <= 4)
  {
    if (v4 > 2)
    {
      if (v4 == 3)
      {
        v14 = [(ZWZoomPIPLensViewController *)self topChromeGrabberView];
        v15 = [(ZWZoomPIPLensViewController *)self _sufficientSpaceExistsForGrabber:v14];

        if (!v15)
        {
          goto LABEL_33;
        }
      }

      else
      {
        v7 = [(ZWZoomPIPLensViewController *)self topChromeGrabberView];
        v8 = [(ZWZoomPIPLensViewController *)self _sufficientSpaceExistsForGrabber:v7];

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

      v5 = [(ZWZoomPIPLensViewController *)self topChromeGrabberView];
      v6 = [(ZWZoomPIPLensViewController *)self _sufficientSpaceExistsForGrabber:v5];

      if (!v6)
      {
        goto LABEL_25;
      }
    }

    v13 = [(ZWZoomPIPLensViewController *)self topChromeGrabberView];
    goto LABEL_34;
  }

  if (v4 <= 6)
  {
    if (v4 != 5)
    {
      v9 = [(ZWZoomPIPLensViewController *)self bottomChromeGrabberView];
      v10 = [(ZWZoomPIPLensViewController *)self _sufficientSpaceExistsForGrabber:v9];

      if (v10)
      {
        goto LABEL_24;
      }
    }

LABEL_17:
    v11 = [(ZWZoomPIPLensViewController *)self rightChromeGrabberView];
    v12 = [(ZWZoomPIPLensViewController *)self _sufficientSpaceExistsForGrabber:v11];

    if (v12)
    {
      v13 = [(ZWZoomPIPLensViewController *)self rightChromeGrabberView];
      goto LABEL_34;
    }

    goto LABEL_33;
  }

  if (v4 == 7)
  {
    v16 = [(ZWZoomPIPLensViewController *)self bottomChromeGrabberView];
    v17 = [(ZWZoomPIPLensViewController *)self _sufficientSpaceExistsForGrabber:v16];

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
      v23 = [v22 ignoreLogging];

      if ((v23 & 1) == 0)
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

  v18 = [(ZWZoomPIPLensViewController *)self bottomChromeGrabberView];
  v19 = [(ZWZoomPIPLensViewController *)self _sufficientSpaceExistsForGrabber:v18];

  if (v19)
  {
LABEL_24:
    v13 = [(ZWZoomPIPLensViewController *)self bottomChromeGrabberView];
    goto LABEL_34;
  }

LABEL_25:
  v20 = [(ZWZoomPIPLensViewController *)self leftChromeGrabberView];
  v21 = [(ZWZoomPIPLensViewController *)self _sufficientSpaceExistsForGrabber:v20];

  if (v21)
  {
    v13 = [(ZWZoomPIPLensViewController *)self leftChromeGrabberView];
    goto LABEL_34;
  }

LABEL_33:
  v13 = 0;
LABEL_34:

  return v13;
}

- (void)_collapseNonactiveGrabbers
{
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v3 = [(ZWZoomPIPLensViewController *)self grabberViews];
  v4 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
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
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v10 + 1) + 8 * v7);
        v9 = [(ZWZoomPIPLensViewController *)self activeGrabber];

        if (v8 != v9)
        {
          [v8 collapseGrabberAnimated:1];
        }

        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }
}

- (void)_updateActiveGrabberDragConstraintWithOffset:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v6 = [(ZWZoomPIPLensViewController *)self activeGrabber];
  v7 = [(ZWZoomPIPLensViewController *)self topChromeGrabberView];

  if (v6 == v7)
  {
    v14 = [(ZWZoomPIPLensViewController *)self topChromeGrabberDragConstraint];
  }

  else
  {
    v8 = [(ZWZoomPIPLensViewController *)self activeGrabber];
    v9 = [(ZWZoomPIPLensViewController *)self rightChromeGrabberView];

    if (v8 == v9)
    {
      v14 = [(ZWZoomPIPLensViewController *)self rightChromeGrabberDragConstraint];
LABEL_11:
      v16 = v14;
      v15 = y;
      goto LABEL_12;
    }

    v10 = [(ZWZoomPIPLensViewController *)self activeGrabber];
    v11 = [(ZWZoomPIPLensViewController *)self bottomChromeGrabberView];

    if (v10 != v11)
    {
      v12 = [(ZWZoomPIPLensViewController *)self activeGrabber];
      v13 = [(ZWZoomPIPLensViewController *)self leftChromeGrabberView];

      if (v12 != v13)
      {
        return;
      }

      v14 = [(ZWZoomPIPLensViewController *)self leftChromeGrabberDragConstraint];
      goto LABEL_11;
    }

    v14 = [(ZWZoomPIPLensViewController *)self bottomChromeGrabberDragConstraint];
  }

  v16 = v14;
  v15 = x;
LABEL_12:
  [v14 setConstant:v15];
}

- (void)_trackActiveGrabberWithTouchAtLocation:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v6 = [(ZWZoomPIPLensViewController *)self activeGrabber];
  if (v6)
  {
    v17 = v6;
    v7 = [(ZWZoomPIPLensViewController *)self view];
    v8 = [(ZWZoomPIPLensViewController *)self lensChromeView];
    [v7 convertPoint:v8 toView:{x, y}];
    v10 = v9;
    v12 = v11;

    v13 = [(ZWZoomPIPLensViewController *)self lensChromeView];
    [v13 bounds];
    MidX = CGRectGetMidX(v19);
    v15 = [(ZWZoomPIPLensViewController *)self lensChromeView];
    [v15 bounds];
    MidY = CGRectGetMidY(v20);

    [(ZWZoomPIPLensViewController *)self _updateActiveGrabberDragConstraintWithOffset:v10 - MidX, v12 - MidY];
    v6 = v17;
  }
}

- (void)updateVisibleGrabbersAnimated:(BOOL)a3
{
  v3 = a3;
  if (-[ZWZoomLensViewController inStandbyMode](self, "inStandbyMode") || -[ZWZoomPIPLensViewController isInLensResizingMode](self, "isInLensResizingMode") || (-[ZWZoomPIPLensViewController pipDelegate](self, "pipDelegate"), v5 = objc_claimAutoreleasedReturnValue(), v6 = [v5 shouldHideGrabbersWithZoomLensViewController:self], v5, v6))
  {
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v7 = [(ZWZoomPIPLensViewController *)self grabberViews];
    v8 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
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
            objc_enumerationMutation(v7);
          }

          [*(*(&v16 + 1) + 8 * i) collapseGrabberAnimated:v3];
        }

        v9 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v9);
    }

    return;
  }

  v12 = [(ZWZoomPIPLensViewController *)self _defaultGrabberForAxis:2];
  v13 = [(ZWZoomPIPLensViewController *)self _secondaryGrabberForAxis:2];
  if ([(ZWZoomPIPLensViewController *)self _sufficientSpaceExistsForGrabber:v12])
  {
    [v12 expandGrabberAnimated:v3];
  }

  else
  {
    [v12 collapseGrabberAnimated:v3];
    if ([(ZWZoomPIPLensViewController *)self _sufficientSpaceExistsForGrabber:v13])
    {
      [v13 expandGrabberAnimated:v3];
      goto LABEL_17;
    }
  }

  [v13 collapseGrabberAnimated:v3];
LABEL_17:
  v15 = [(ZWZoomPIPLensViewController *)self _defaultGrabberForAxis:4];

  v14 = [(ZWZoomPIPLensViewController *)self _secondaryGrabberForAxis:4];

  if ([(ZWZoomPIPLensViewController *)self _sufficientSpaceExistsForGrabber:v15])
  {
    [v15 expandGrabberAnimated:v3];
LABEL_21:
    [v14 collapseGrabberAnimated:v3];
    goto LABEL_22;
  }

  [v15 collapseGrabberAnimated:v3];
  if (![(ZWZoomPIPLensViewController *)self _sufficientSpaceExistsForGrabber:v14])
  {
    goto LABEL_21;
  }

  [v14 expandGrabberAnimated:v3];
LABEL_22:
}

- (void)_handleTap:(id)a3
{
  v4 = a3;
  v19.receiver = self;
  v19.super_class = ZWZoomPIPLensViewController;
  [(ZWZoomLensViewController *)&v19 _handleTap:v4];
  if ([v4 state] == &dword_0 + 3)
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
          v11 = [(ZWZoomPIPLensViewController *)self view];
          v12 = [(ZWZoomPIPLensViewController *)self view];
          [v4 locationInView:v12];
          [v11 convertPoint:v10 toView:?];
          v13 = [v10 pointInside:0 withEvent:?];

          if (v13)
          {
            v14 = [(ZWZoomPIPLensViewController *)self pipDelegate];
            [v14 zoomLensViewController:self grabberDidReceiveTap:v10];

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

- (void)_handleLongPress:(id)a3
{
  v12.receiver = self;
  v12.super_class = ZWZoomPIPLensViewController;
  v4 = a3;
  [(ZWZoomLensViewController *)&v12 _handleLongPress:v4];
  v5 = [v4 state];

  if ((v5 - 3) >= 3)
  {
    if (v5 == &dword_0 + 1)
    {
      v6 = [(ZWZoomLensViewController *)self dummyScrollViewPanGestureRecognizer];
      v7 = [(ZWZoomPIPLensViewController *)self view];
      [v6 locationInView:v7];
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

- (void)scrollViewWillBeginDragging:(id)a3
{
  v4 = a3;
  if (![(ZWZoomLensViewController *)self inStandbyMode])
  {
    v5 = [AXAssertion assertionWithType:AXAssertionTypeDisableDashboardSystemGestures identifier:@"Zoom: PIP window dragging"];
    [(ZWZoomPIPLensViewController *)self setDisableDashBoardSystemGesturesAssertion:v5];

    v6 = [v4 panGestureRecognizer];
    v7 = [(ZWZoomPIPLensViewController *)self view];
    [v6 locationInView:v7];
    v8 = [(ZWZoomPIPLensViewController *)self _activeGrabberForTouchAtLocation:?];
    [(ZWZoomPIPLensViewController *)self setActiveGrabber:v8];

    [(ZWZoomPIPLensViewController *)self _collapseNonactiveGrabbers];
    v9.receiver = self;
    v9.super_class = ZWZoomPIPLensViewController;
    [(ZWZoomLensViewController *)&v9 scrollViewWillBeginDragging:v4];
  }
}

- (void)scrollViewDidScroll:(id)a3
{
  v4 = a3;
  if (![(ZWZoomLensViewController *)self inStandbyMode])
  {
    v5 = [v4 panGestureRecognizer];
    v6 = [(ZWZoomPIPLensViewController *)self view];
    [v5 locationInView:v6];
    [(ZWZoomPIPLensViewController *)self _trackActiveGrabberWithTouchAtLocation:?];

    v7.receiver = self;
    v7.super_class = ZWZoomPIPLensViewController;
    [(ZWZoomLensViewController *)&v7 scrollViewDidScroll:v4];
  }
}

- (void)scrollViewDidEndDragging:(id)a3 willDecelerate:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  if (![(ZWZoomLensViewController *)self inStandbyMode])
  {
    [(ZWZoomPIPLensViewController *)self setDisableDashBoardSystemGesturesAssertion:0];
    if (!v4)
    {
      [(ZWZoomPIPLensViewController *)self updateVisibleGrabbersAnimated:1];
    }

    v7.receiver = self;
    v7.super_class = ZWZoomPIPLensViewController;
    [(ZWZoomLensViewController *)&v7 scrollViewDidEndDragging:v6 willDecelerate:v4];
  }
}

- (void)scrollViewDidEndDecelerating:(id)a3
{
  v4 = a3;
  if (![(ZWZoomLensViewController *)self inStandbyMode])
  {
    [(ZWZoomPIPLensViewController *)self updateVisibleGrabbersAnimated:1];
    v5.receiver = self;
    v5.super_class = ZWZoomPIPLensViewController;
    [(ZWZoomLensViewController *)&v5 scrollViewDidEndDecelerating:v4];
  }
}

- (id)zoomRootview:(id)a3 viewForHitTestAtPoint:(CGPoint)a4
{
  y = a4.y;
  x = a4.x;
  v7 = a3;
  v8 = [(ZWZoomPIPLensViewController *)self lensChromeView];
  v29[0] = v8;
  v9 = [(ZWZoomPIPLensViewController *)self topChromeGrabberView];
  v29[1] = v9;
  v10 = [(ZWZoomPIPLensViewController *)self rightChromeGrabberView];
  v29[2] = v10;
  v11 = [(ZWZoomPIPLensViewController *)self bottomChromeGrabberView];
  v29[3] = v11;
  v12 = [(ZWZoomPIPLensViewController *)self leftChromeGrabberView];
  v29[4] = v12;
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
      [v7 convertPoint:v19 toView:{x, y}];
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

    v21 = v7;

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
  v21 = [(ZWZoomLensViewController *)&v23 zoomRootview:v7 viewForHitTestAtPoint:x, y];
LABEL_12:

  return v21;
}

- (CGPoint)validPanOffsetForProposedOffset:(CGPoint)a3 proposedZoomFactor:(double)a4
{
  y = a3.y;
  x = a3.x;
  if (![(ZWZoomPIPLensViewController *)self offsetZoomWindow])
  {
    v12.receiver = self;
    v12.super_class = ZWZoomPIPLensViewController;
    [(ZWZoomLensViewController *)&v12 validPanOffsetForProposedOffset:x proposedZoomFactor:y, a4];
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