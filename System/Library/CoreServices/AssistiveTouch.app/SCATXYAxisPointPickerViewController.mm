@interface SCATXYAxisPointPickerViewController
- (CGPoint)_currentFocusedPointInScreenCoordinates:(BOOL)a3;
- (SCATXYAxisPointPickerViewController)initWithElementManager:(id)a3 menu:(id)a4;
- (double)_rangeAnimationVelocityWithSlowdownMultiplier:(unint64_t)a3;
- (id)_sweepAnimationForLayer:(id)a3 parentBounds:(CGRect)a4 slowdownMultiplier:(unint64_t)a5 direction:(BOOL)a6 animationKey:(id)a7;
- (id)_sweepAnimationStartingInPlaceForLayer:(id)a3 parentBounds:(CGRect)a4 slowdownMultiplier:(unint64_t)a5 direction:(BOOL)a6 animationKey:(id)a7;
- (void)_beginHighlightingTargetedElements;
- (void)_endHighlightingTargedElements;
- (void)animationDidStop:(id)a3 finished:(BOOL)a4;
- (void)dealloc;
- (void)loadView;
- (void)orientationDidChange:(id)a3;
- (void)updateWithPhase:(unint64_t)a3 withPicker:(id)a4;
@end

@implementation SCATXYAxisPointPickerViewController

- (SCATXYAxisPointPickerViewController)initWithElementManager:(id)a3 menu:(id)a4
{
  v11.receiver = self;
  v11.super_class = SCATXYAxisPointPickerViewController;
  v4 = [(SCATPointPickerViewController *)&v11 initWithElementManager:a3 menu:a4];
  if (v4)
  {
    v5 = [[AXDispatchTimer alloc] initWithTargetSerialQueue:&_dispatch_main_q];
    [(SCATXYAxisPointPickerViewController *)v4 setElementFinderTimer:v5];
    v6 = +[AXSettings sharedInstance];
    v7 = 2 * ([v6 switchControlPointPickerSelectionStyle] == 1);

    v8 = [[SCATXYAxisRangeLayer alloc] initWithAxis:0];
    [(SCATXYAxisPointPickerViewController *)v4 setXAxis:v8];
    [(SCATXYAxisRangeLayer *)v8 updateTheme:v7 animated:0];
    v9 = [[SCATXYAxisRangeLayer alloc] initWithAxis:1];
    [(SCATXYAxisPointPickerViewController *)v4 setYAxis:v9];
    [(SCATXYAxisRangeLayer *)v9 updateTheme:v7 animated:0];
  }

  return v4;
}

- (void)dealloc
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = SCATXYAxisPointPickerViewController;
  [(SCATPointPickerViewController *)&v4 dealloc];
}

- (void)loadView
{
  v12.receiver = self;
  v12.super_class = SCATXYAxisPointPickerViewController;
  [(SCATPointPickerViewController *)&v12 loadView];
  v3 = [UIView alloc];
  v4 = [(SCATXYAxisPointPickerViewController *)self view];
  [v4 bounds];
  v5 = [v3 initWithFrame:?];

  [v5 setAutoresizingMask:18];
  v6 = [(SCATXYAxisPointPickerViewController *)self view];
  [v6 addSubview:v5];

  v7 = +[AXSettings sharedInstance];
  v8 = [v7 assistiveTouchScannerCursorHighVisibilityEnabled];

  v9 = [v5 layer];
  v10 = v9;
  LODWORD(v11) = 0.75;
  if (v8)
  {
    *&v11 = 1.0;
  }

  [v9 setOpacity:v11];

  [(SCATXYAxisPointPickerViewController *)self setAxisContainerView:v5];
}

- (void)updateWithPhase:(unint64_t)a3 withPicker:(id)a4
{
  v6 = a4;
  if (self->_pickerPhase != a3)
  {
    v7 = [(SCATXYAxisPointPickerViewController *)self axisContainerView];
    [v7 bounds];
    v9 = v8;
    v11 = v10;
    v13 = v12;
    v15 = v14;
    v16 = [(SCATXYAxisPointPickerViewController *)self xAxis];
    v17 = [(SCATXYAxisPointPickerViewController *)self yAxis];
    [(SCATXYAxisPointPickerViewController *)self setSweepCount:0];
    if (a3 > 3)
    {
      if (a3 <= 5)
      {
        if (a3 == 4)
        {
          [v16 removeAllAnimations];
          [v16 updateTheme:3 animated:1];
          v32 = [v7 layer];
          [v32 addSublayer:v17];

          if (![v6 refinementCount])
          {
            [v17 updateFrameForParentBounds:0 refinementPoint:{v9, v11, v13, v15}];
            if ([v6 usesTwoLevelRefinement])
            {
              v51 = 0;
            }

            else
            {
              v51 = 2;
            }

            [v17 updateTheme:v51 animated:1];
            v35 = [(SCATXYAxisPointPickerViewController *)self _sweepAnimationForLayer:v17 parentBounds:1 slowdownMultiplier:1 direction:@"SCATRangeAnimationID" animationKey:v9, v11, v13, v15];
            v52 = [v35 toValue];
            [v52 CGPointValue];
            [v17 updateLayerTreePosition:?];

            v53 = [v35 animationKey];
            v54 = v17;
            goto LABEL_46;
          }

          [v6 pickedPointInDeviceCoordinates];
          v70 = v33;
          v71 = v34;
          [v17 updateFrameForParentBounds:&v70 refinementPoint:{v9, v11, v13, v15}];
          [v17 updateToFitWithinParentBounds:{v9, v11, v13, v15}];
          [v17 updateTheme:1 animated:1];
          v20 = [v17 lineLayer];
          [v17 bounds];
          v21 = self;
          v22 = v20;
          v23 = 1;
        }

        else
        {
          v19 = [v17 isAnimatingForwards];
          [v17 removeAllAnimations];
          [v17 updateToFitWithinParentBounds:{v9, v11, v13, v15}];
          [v17 updateTheme:1 animated:1];
          v20 = [v17 lineLayer];
          [v17 bounds];
          v21 = self;
          v22 = v20;
          v23 = v19;
        }

        v35 = [(SCATXYAxisPointPickerViewController *)v21 _sweepAnimationForLayer:v22 parentBounds:8 slowdownMultiplier:v23 direction:@"SCATLineAnimationID" animationKey:?];

        v36 = [v17 lineLayer];
        v37 = [v35 toValue];
        [v37 CGPointValue];
        [v36 updateLayerTreePosition:?];

        v38 = v17;
LABEL_37:
        v53 = [v38 lineLayer];
        v67 = [v35 animationKey];
        [v53 addAnimation:v35 forKey:v67];

LABEL_38:
        goto LABEL_39;
      }

      if (a3 != 6)
      {
        if (a3 != 7)
        {
LABEL_23:
          v35 = [NSNumber numberWithUnsignedInteger:a3];
          _AXAssert();
          goto LABEL_39;
        }

        [v17 updateTheme:3 animated:1];
        v31 = [(SCATPointPickerViewController *)self pointPicker];
        [(SCATXYAxisPointPickerViewController *)self _currentFocusedPointInScreenCoordinates:0];
        [v31 _savePoint:1 andNotifyDelegate:?];

        [v16 resetLineLayer];
        [v17 resetLineLayer];
LABEL_16:
        [(SCATXYAxisPointPickerViewController *)self _endHighlightingTargedElements];
        [v16 removeAllAnimations];
        [v16 removeFromSuperlayer];
        [v17 removeAllAnimations];
        [v17 removeFromSuperlayer];
LABEL_40:
        self->_pickerPhase = a3;

        goto LABEL_41;
      }

      v44 = [v17 lineLayer];
      [v44 convertTime:0 fromLayer:CACurrentMediaTime()];
      v46 = v45;
      v47 = [v17 lineLayer];
      [v47 setTimeOffset:v46];

      v48 = CACurrentMediaTime();
      v49 = [v17 lineLayer];
      [v49 setBeginTime:v48];

      v30 = v17;
    }

    else
    {
      if (a3 <= 1)
      {
        if (a3)
        {
          if (a3 == 1)
          {
            v18 = [v16 superlayer];
            if (v18)
            {
            }

            else
            {
              v55 = [v17 superlayer];

              if (!v55)
              {
                goto LABEL_30;
              }
            }

            _AXAssert();
LABEL_30:
            v56 = [v16 animationKeys];
            if ([v56 count])
            {
            }

            else
            {
              v57 = [v17 animationKeys];
              v58 = [v57 count];

              if (!v58)
              {
LABEL_34:
                v59 = [v7 layer];
                [v59 addSublayer:v16];

                v60 = [(SCATPointPickerViewController *)self pointPicker];
                v61 = [v60 refinementCount];

                if (v61)
                {
                  v62 = [(SCATPointPickerViewController *)self pointPicker];
                  [v62 pickedPointInDeviceCoordinates];
                  v70 = v63;
                  v71 = v64;

                  [v16 updateFrameForParentBounds:&v70 refinementPoint:{v9, v11, v13, v15}];
                  [v16 updateToFitWithinParentBounds:{v9, v11, v13, v15}];
                  [v16 updateTheme:1 animated:1];
                  v40 = [v16 lineLayer];
                  [v16 bounds];
                  v41 = self;
                  v42 = v40;
                  v43 = 1;
                  goto LABEL_36;
                }

                [v16 updateFrameForParentBounds:0 refinementPoint:{v9, v11, v13, v15}];
                if ([v6 usesTwoLevelRefinement])
                {
                  v68 = 0;
                }

                else
                {
                  v68 = 2;
                }

                [v16 updateTheme:v68 animated:1];
                v35 = [(SCATXYAxisPointPickerViewController *)self _sweepAnimationForLayer:v16 parentBounds:1 slowdownMultiplier:1 direction:@"SCATRangeAnimationID" animationKey:v9, v11, v13, v15];
                v69 = [v35 toValue];
                [v69 CGPointValue];
                [v16 updateLayerTreePosition:?];

                v53 = [v35 animationKey];
                v54 = v16;
LABEL_46:
                [v54 addAnimation:v35 forKey:v53];
                goto LABEL_38;
              }
            }

            _AXAssert();
            goto LABEL_34;
          }

          goto LABEL_23;
        }

        goto LABEL_16;
      }

      if (a3 == 2)
      {
        v39 = [v16 isAnimatingForwards];
        [v16 removeAllAnimations];
        [v16 updateToFitWithinParentBounds:{v9, v11, v13, v15}];
        [v16 updateTheme:1 animated:1];
        v40 = [v16 lineLayer];
        [v16 bounds];
        v41 = self;
        v42 = v40;
        v43 = v39;
LABEL_36:
        v35 = [(SCATXYAxisPointPickerViewController *)v41 _sweepAnimationForLayer:v42 parentBounds:8 slowdownMultiplier:v43 direction:@"SCATLineAnimationID" animationKey:?];

        v65 = [v16 lineLayer];
        v66 = [v35 toValue];
        [v66 CGPointValue];
        [v65 updateLayerTreePosition:?];

        v38 = v16;
        goto LABEL_37;
      }

      v24 = [v16 lineLayer];
      [v24 convertTime:0 fromLayer:CACurrentMediaTime()];
      v26 = v25;
      v27 = [v16 lineLayer];
      [v27 setTimeOffset:v26];

      v28 = CACurrentMediaTime();
      v29 = [v16 lineLayer];
      [v29 setBeginTime:v28];

      v30 = v16;
    }

    v35 = [v30 lineLayer];
    LODWORD(v50) = 0.25;
    [v35 setSpeed:v50];
LABEL_39:

    goto LABEL_40;
  }

LABEL_41:
}

- (CGPoint)_currentFocusedPointInScreenCoordinates:(BOOL)a3
{
  v3 = a3;
  v5 = [(SCATXYAxisPointPickerViewController *)self yAxis];
  v6 = [v5 lineLayer];
  v7 = [v6 isActive];

  v8 = [(SCATXYAxisPointPickerViewController *)self yAxis];
  v9 = v8;
  if (v7)
  {
    v10 = [v8 lineLayer];
    v11 = [v10 presentationLayer];
    [v11 position];
    v13 = v12;
    v15 = v14;

    v9 = [(SCATXYAxisPointPickerViewController *)self yAxis];
    v16 = [v9 presentationLayer];
    v17 = [(SCATXYAxisPointPickerViewController *)self axisContainerView];
    v18 = [v17 layer];
    [v16 convertPoint:v18 toLayer:{v13, v15}];
    v20 = v19;
  }

  else
  {
    v16 = [v8 presentationLayer];
    [v16 position];
    v20 = v21;
  }

  v22 = [(SCATXYAxisPointPickerViewController *)self xAxis];
  v23 = [v22 lineLayer];
  v24 = [v23 isActive];

  if (v24)
  {
    v25 = [(SCATXYAxisPointPickerViewController *)self xAxis];
    v26 = [v25 lineLayer];
    v27 = [v26 presentationLayer];
    [v27 position];
    v29 = v28;
    v31 = v30;

    v32 = [(SCATXYAxisPointPickerViewController *)self xAxis];
    v33 = [v32 presentationLayer];
    v34 = [(SCATXYAxisPointPickerViewController *)self axisContainerView];
    v35 = [v34 layer];
    [v33 convertPoint:v35 toLayer:{v29, v31}];
    v37 = v36;
  }

  else
  {
    v32 = [(SCATXYAxisPointPickerViewController *)self yAxis];
    v33 = [v32 presentationLayer];
    [v33 position];
    v37 = v38;
  }

  if (v3)
  {
    v39 = [(SCATXYAxisPointPickerViewController *)self axisContainerView];
    [HNDScreen convertPoint:v39 fromView:v37, v20];
    v41 = v40;
    v43 = v42;

    v44 = v41;
    v45 = v43;
  }

  else
  {
    v44 = v37;
    v45 = v20;
  }

  result.y = v45;
  result.x = v44;
  return result;
}

- (void)orientationDidChange:(id)a3
{
  v4 = +[UIScreen mainScreen];
  [v4 bounds];
  v6 = v5;
  v8 = v7;
  v9 = [(SCATXYAxisPointPickerViewController *)self yAxis];
  [v9 frame];
  Width = CGRectGetWidth(v20);
  +[SCATXYAxisRangeLayer rangeLayerFrameInset];
  v12 = Width - v11;
  v13 = [(SCATXYAxisPointPickerViewController *)self xAxis];
  [v13 frame];
  Height = CGRectGetHeight(v21);
  +[SCATXYAxisRangeLayer rangeLayerFrameInset];
  v16 = Height - v15;

  if (v6 != v12 || v8 != v16)
  {
    v18 = [(SCATPointPickerViewController *)self pointPicker];
    [v18 redisplayIfNeeded:0];
  }
}

- (void)_beginHighlightingTargetedElements
{
  [(SCATXYAxisPointPickerViewController *)self _currentFocusedPointInScreenCoordinates:1];
  v4 = v3;
  v6 = v5;
  v7 = [(SCATXYAxisPointPickerViewController *)self axisPointPicker];
  [v7 didSweepOverPoint:{v4, v6}];

  v8 = [(SCATXYAxisPointPickerViewController *)self elementFinderTimer];
  v9[4] = self;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10000DE78;
  v10[3] = &unk_1001D3488;
  v10[4] = self;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10000DE80;
  v9[3] = &unk_1001D3488;
  [v8 afterDelay:v10 processBlock:v9 cancelBlock:0.1];
}

- (void)_endHighlightingTargedElements
{
  v2 = [(SCATXYAxisPointPickerViewController *)self elementFinderTimer];
  [v2 cancel];
}

- (double)_rangeAnimationVelocityWithSlowdownMultiplier:(unint64_t)a3
{
  if (!a3)
  {
    _AXAssert();
  }

  v4 = +[AXSettings sharedInstance];
  [v4 assistiveTouchAxisSweepSpeed];
  v6 = v5;

  return v6 / a3;
}

- (id)_sweepAnimationForLayer:(id)a3 parentBounds:(CGRect)a4 slowdownMultiplier:(unint64_t)a5 direction:(BOOL)a6 animationKey:(id)a7
{
  v7 = a6;
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v15 = a7;
  v16 = a3;
  v17 = [v16 axis];
  v18 = [SCATSweepAnimation sweepAnimationWithDirection:v7 scatLayer:v16 animationKey:v15];

  [v18 setDelegate:self];
  [v18 setRemovedOnCompletion:1];
  if (v17)
  {
    v32.origin.x = x;
    v32.origin.y = y;
    v32.size.width = width;
    v32.size.height = height;
    x = CGRectGetMidX(v32);
    width = height;
    v19 = x;
  }

  else
  {
    v33.origin.x = x;
    v33.origin.y = y;
    v33.size.width = width;
    v33.size.height = height;
    height = CGRectGetMidY(v33);
    v20 = +[HNDAccessibilityManager sharedManager];
    if ([v20 applicationIsRTL])
    {
      v19 = width;
    }

    else
    {
      v19 = x;
    }

    v21 = +[HNDAccessibilityManager sharedManager];
    if (![v21 applicationIsRTL])
    {
      x = width;
    }

    y = height;
  }

  [(SCATXYAxisPointPickerViewController *)self _rangeAnimationVelocityWithSlowdownMultiplier:a5];
  v23 = width / v22;
  v24 = [NSValue valueWithCGPoint:v19, y];
  if (v7)
  {
    [v18 setFromValue:v24];

    v25 = [NSValue valueWithCGPoint:x, height];
    [v18 setToValue:v25];
  }

  else
  {
    [v18 setToValue:v24];

    v25 = [NSValue valueWithCGPoint:x, height];
    [v18 setFromValue:v25];
  }

  [v18 setDuration:v23];
  v26 = +[AXSettings sharedInstance];
  v27 = [v26 assistiveTouchDelayAfterInputEnabled];
  if (a5 == 1 && v27)
  {
    [v26 assistiveTouchDelayAfterInput];
    v29 = v28;
    [v18 setFillMode:kCAFillModeBackwards];
    [v18 setBeginTime:v29 + CACurrentMediaTime()];
  }

  return v18;
}

- (id)_sweepAnimationStartingInPlaceForLayer:(id)a3 parentBounds:(CGRect)a4 slowdownMultiplier:(unint64_t)a5 direction:(BOOL)a6 animationKey:(id)a7
{
  v8 = a6;
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v15 = a3;
  v16 = a7;
  v17 = [v15 axis];
  v18 = [SCATSweepAnimation sweepAnimationWithDirection:v8 scatLayer:v15 animationKey:v16];

  [v18 setDelegate:self];
  [v18 setRemovedOnCompletion:1];
  if (v17)
  {
    v32.origin.x = x;
    v32.origin.y = y;
    v32.size.width = width;
    v32.size.height = height;
    width = CGRectGetMidX(v32);
    [v15 position];
    v20 = v19;
    if (!v8)
    {
      height = y;
    }

    [v15 position];
    v22 = vabdd_f64(height, v21);
    [(SCATXYAxisPointPickerViewController *)self _rangeAnimationVelocityWithSlowdownMultiplier:a5];
    v24 = width;
  }

  else
  {
    v33.origin.x = x;
    v33.origin.y = y;
    v33.size.width = width;
    v33.size.height = height;
    height = CGRectGetMidY(v33);
    [v15 position];
    v24 = v25;
    if (!v8)
    {
      width = x;
    }

    [v15 position];
    v22 = vabdd_f64(width, v26);
    [(SCATXYAxisPointPickerViewController *)self _rangeAnimationVelocityWithSlowdownMultiplier:a5];
    v20 = height;
  }

  v27 = v22 / v23;
  v28 = [NSValue valueWithCGPoint:v24, v20];
  [v18 setFromValue:v28];

  v29 = [NSValue valueWithCGPoint:width, height];
  [v18 setToValue:v29];

  [v18 setDuration:v27];

  return v18;
}

- (void)animationDidStop:(id)a3 finished:(BOOL)a4
{
  v4 = a4;
  v13 = a3;
  if ([(SCATXYAxisPointPickerViewController *)self pickerPhase]!= 7)
  {
    if ([(SCATXYAxisPointPickerViewController *)self pickerPhase])
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) != 0 && v4)
      {
        [(SCATXYAxisPointPickerViewController *)self setSweepCount:[(SCATXYAxisPointPickerViewController *)self sweepCount]+ 1];
        if ((-[SCATXYAxisPointPickerViewController sweepCount](self, "sweepCount") & 1) != 0 || (-[SCATXYAxisPointPickerViewController axisPointPicker](self, "axisPointPicker"), v6 = objc_claimAutoreleasedReturnValue(), v7 = [v6 pauseForNumberOfCycles:{-[SCATXYAxisPointPickerViewController numberOfCycles](self, "numberOfCycles")}], v6, (v7 & 1) == 0))
        {
          v8 = v13;
          v9 = [v8 scatLayer];
          v10 = [v8 reversedAnimation];
          v11 = [v10 toValue];
          [v11 CGPointValue];
          [v9 updateLayerTreePosition:?];

          v12 = [v8 animationKey];

          [v9 addAnimation:v10 forKey:v12];
        }
      }
    }
  }
}

@end