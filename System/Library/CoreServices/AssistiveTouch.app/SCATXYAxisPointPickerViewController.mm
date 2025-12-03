@interface SCATXYAxisPointPickerViewController
- (CGPoint)_currentFocusedPointInScreenCoordinates:(BOOL)coordinates;
- (SCATXYAxisPointPickerViewController)initWithElementManager:(id)manager menu:(id)menu;
- (double)_rangeAnimationVelocityWithSlowdownMultiplier:(unint64_t)multiplier;
- (id)_sweepAnimationForLayer:(id)layer parentBounds:(CGRect)bounds slowdownMultiplier:(unint64_t)multiplier direction:(BOOL)direction animationKey:(id)key;
- (id)_sweepAnimationStartingInPlaceForLayer:(id)layer parentBounds:(CGRect)bounds slowdownMultiplier:(unint64_t)multiplier direction:(BOOL)direction animationKey:(id)key;
- (void)_beginHighlightingTargetedElements;
- (void)_endHighlightingTargedElements;
- (void)animationDidStop:(id)stop finished:(BOOL)finished;
- (void)dealloc;
- (void)loadView;
- (void)orientationDidChange:(id)change;
- (void)updateWithPhase:(unint64_t)phase withPicker:(id)picker;
@end

@implementation SCATXYAxisPointPickerViewController

- (SCATXYAxisPointPickerViewController)initWithElementManager:(id)manager menu:(id)menu
{
  v11.receiver = self;
  v11.super_class = SCATXYAxisPointPickerViewController;
  v4 = [(SCATPointPickerViewController *)&v11 initWithElementManager:manager menu:menu];
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
  view = [(SCATXYAxisPointPickerViewController *)self view];
  [view bounds];
  v5 = [v3 initWithFrame:?];

  [v5 setAutoresizingMask:18];
  view2 = [(SCATXYAxisPointPickerViewController *)self view];
  [view2 addSubview:v5];

  v7 = +[AXSettings sharedInstance];
  assistiveTouchScannerCursorHighVisibilityEnabled = [v7 assistiveTouchScannerCursorHighVisibilityEnabled];

  layer = [v5 layer];
  v10 = layer;
  LODWORD(v11) = 0.75;
  if (assistiveTouchScannerCursorHighVisibilityEnabled)
  {
    *&v11 = 1.0;
  }

  [layer setOpacity:v11];

  [(SCATXYAxisPointPickerViewController *)self setAxisContainerView:v5];
}

- (void)updateWithPhase:(unint64_t)phase withPicker:(id)picker
{
  pickerCopy = picker;
  if (self->_pickerPhase != phase)
  {
    axisContainerView = [(SCATXYAxisPointPickerViewController *)self axisContainerView];
    [axisContainerView bounds];
    v9 = v8;
    v11 = v10;
    v13 = v12;
    v15 = v14;
    xAxis = [(SCATXYAxisPointPickerViewController *)self xAxis];
    yAxis = [(SCATXYAxisPointPickerViewController *)self yAxis];
    [(SCATXYAxisPointPickerViewController *)self setSweepCount:0];
    if (phase > 3)
    {
      if (phase <= 5)
      {
        if (phase == 4)
        {
          [xAxis removeAllAnimations];
          [xAxis updateTheme:3 animated:1];
          layer = [axisContainerView layer];
          [layer addSublayer:yAxis];

          if (![pickerCopy refinementCount])
          {
            [yAxis updateFrameForParentBounds:0 refinementPoint:{v9, v11, v13, v15}];
            if ([pickerCopy usesTwoLevelRefinement])
            {
              v51 = 0;
            }

            else
            {
              v51 = 2;
            }

            [yAxis updateTheme:v51 animated:1];
            lineLayer11 = [(SCATXYAxisPointPickerViewController *)self _sweepAnimationForLayer:yAxis parentBounds:1 slowdownMultiplier:1 direction:@"SCATRangeAnimationID" animationKey:v9, v11, v13, v15];
            toValue = [lineLayer11 toValue];
            [toValue CGPointValue];
            [yAxis updateLayerTreePosition:?];

            animationKey = [lineLayer11 animationKey];
            v54 = yAxis;
            goto LABEL_46;
          }

          [pickerCopy pickedPointInDeviceCoordinates];
          v70 = v33;
          v71 = v34;
          [yAxis updateFrameForParentBounds:&v70 refinementPoint:{v9, v11, v13, v15}];
          [yAxis updateToFitWithinParentBounds:{v9, v11, v13, v15}];
          [yAxis updateTheme:1 animated:1];
          lineLayer = [yAxis lineLayer];
          [yAxis bounds];
          selfCopy2 = self;
          v22 = lineLayer;
          v23 = 1;
        }

        else
        {
          isAnimatingForwards = [yAxis isAnimatingForwards];
          [yAxis removeAllAnimations];
          [yAxis updateToFitWithinParentBounds:{v9, v11, v13, v15}];
          [yAxis updateTheme:1 animated:1];
          lineLayer = [yAxis lineLayer];
          [yAxis bounds];
          selfCopy2 = self;
          v22 = lineLayer;
          v23 = isAnimatingForwards;
        }

        lineLayer11 = [(SCATXYAxisPointPickerViewController *)selfCopy2 _sweepAnimationForLayer:v22 parentBounds:8 slowdownMultiplier:v23 direction:@"SCATLineAnimationID" animationKey:?];

        lineLayer2 = [yAxis lineLayer];
        toValue2 = [lineLayer11 toValue];
        [toValue2 CGPointValue];
        [lineLayer2 updateLayerTreePosition:?];

        v38 = yAxis;
LABEL_37:
        animationKey = [v38 lineLayer];
        animationKey2 = [lineLayer11 animationKey];
        [animationKey addAnimation:lineLayer11 forKey:animationKey2];

LABEL_38:
        goto LABEL_39;
      }

      if (phase != 6)
      {
        if (phase != 7)
        {
LABEL_23:
          lineLayer11 = [NSNumber numberWithUnsignedInteger:phase];
          _AXAssert();
          goto LABEL_39;
        }

        [yAxis updateTheme:3 animated:1];
        pointPicker = [(SCATPointPickerViewController *)self pointPicker];
        [(SCATXYAxisPointPickerViewController *)self _currentFocusedPointInScreenCoordinates:0];
        [pointPicker _savePoint:1 andNotifyDelegate:?];

        [xAxis resetLineLayer];
        [yAxis resetLineLayer];
LABEL_16:
        [(SCATXYAxisPointPickerViewController *)self _endHighlightingTargedElements];
        [xAxis removeAllAnimations];
        [xAxis removeFromSuperlayer];
        [yAxis removeAllAnimations];
        [yAxis removeFromSuperlayer];
LABEL_40:
        self->_pickerPhase = phase;

        goto LABEL_41;
      }

      lineLayer3 = [yAxis lineLayer];
      [lineLayer3 convertTime:0 fromLayer:CACurrentMediaTime()];
      v46 = v45;
      lineLayer4 = [yAxis lineLayer];
      [lineLayer4 setTimeOffset:v46];

      v48 = CACurrentMediaTime();
      lineLayer5 = [yAxis lineLayer];
      [lineLayer5 setBeginTime:v48];

      v30 = yAxis;
    }

    else
    {
      if (phase <= 1)
      {
        if (phase)
        {
          if (phase == 1)
          {
            superlayer = [xAxis superlayer];
            if (superlayer)
            {
            }

            else
            {
              superlayer2 = [yAxis superlayer];

              if (!superlayer2)
              {
                goto LABEL_30;
              }
            }

            _AXAssert();
LABEL_30:
            animationKeys = [xAxis animationKeys];
            if ([animationKeys count])
            {
            }

            else
            {
              animationKeys2 = [yAxis animationKeys];
              v58 = [animationKeys2 count];

              if (!v58)
              {
LABEL_34:
                layer2 = [axisContainerView layer];
                [layer2 addSublayer:xAxis];

                pointPicker2 = [(SCATPointPickerViewController *)self pointPicker];
                refinementCount = [pointPicker2 refinementCount];

                if (refinementCount)
                {
                  pointPicker3 = [(SCATPointPickerViewController *)self pointPicker];
                  [pointPicker3 pickedPointInDeviceCoordinates];
                  v70 = v63;
                  v71 = v64;

                  [xAxis updateFrameForParentBounds:&v70 refinementPoint:{v9, v11, v13, v15}];
                  [xAxis updateToFitWithinParentBounds:{v9, v11, v13, v15}];
                  [xAxis updateTheme:1 animated:1];
                  lineLayer6 = [xAxis lineLayer];
                  [xAxis bounds];
                  selfCopy4 = self;
                  v42 = lineLayer6;
                  v43 = 1;
                  goto LABEL_36;
                }

                [xAxis updateFrameForParentBounds:0 refinementPoint:{v9, v11, v13, v15}];
                if ([pickerCopy usesTwoLevelRefinement])
                {
                  v68 = 0;
                }

                else
                {
                  v68 = 2;
                }

                [xAxis updateTheme:v68 animated:1];
                lineLayer11 = [(SCATXYAxisPointPickerViewController *)self _sweepAnimationForLayer:xAxis parentBounds:1 slowdownMultiplier:1 direction:@"SCATRangeAnimationID" animationKey:v9, v11, v13, v15];
                toValue3 = [lineLayer11 toValue];
                [toValue3 CGPointValue];
                [xAxis updateLayerTreePosition:?];

                animationKey = [lineLayer11 animationKey];
                v54 = xAxis;
LABEL_46:
                [v54 addAnimation:lineLayer11 forKey:animationKey];
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

      if (phase == 2)
      {
        isAnimatingForwards2 = [xAxis isAnimatingForwards];
        [xAxis removeAllAnimations];
        [xAxis updateToFitWithinParentBounds:{v9, v11, v13, v15}];
        [xAxis updateTheme:1 animated:1];
        lineLayer6 = [xAxis lineLayer];
        [xAxis bounds];
        selfCopy4 = self;
        v42 = lineLayer6;
        v43 = isAnimatingForwards2;
LABEL_36:
        lineLayer11 = [(SCATXYAxisPointPickerViewController *)selfCopy4 _sweepAnimationForLayer:v42 parentBounds:8 slowdownMultiplier:v43 direction:@"SCATLineAnimationID" animationKey:?];

        lineLayer7 = [xAxis lineLayer];
        toValue4 = [lineLayer11 toValue];
        [toValue4 CGPointValue];
        [lineLayer7 updateLayerTreePosition:?];

        v38 = xAxis;
        goto LABEL_37;
      }

      lineLayer8 = [xAxis lineLayer];
      [lineLayer8 convertTime:0 fromLayer:CACurrentMediaTime()];
      v26 = v25;
      lineLayer9 = [xAxis lineLayer];
      [lineLayer9 setTimeOffset:v26];

      v28 = CACurrentMediaTime();
      lineLayer10 = [xAxis lineLayer];
      [lineLayer10 setBeginTime:v28];

      v30 = xAxis;
    }

    lineLayer11 = [v30 lineLayer];
    LODWORD(v50) = 0.25;
    [lineLayer11 setSpeed:v50];
LABEL_39:

    goto LABEL_40;
  }

LABEL_41:
}

- (CGPoint)_currentFocusedPointInScreenCoordinates:(BOOL)coordinates
{
  coordinatesCopy = coordinates;
  yAxis = [(SCATXYAxisPointPickerViewController *)self yAxis];
  lineLayer = [yAxis lineLayer];
  isActive = [lineLayer isActive];

  yAxis2 = [(SCATXYAxisPointPickerViewController *)self yAxis];
  yAxis3 = yAxis2;
  if (isActive)
  {
    lineLayer2 = [yAxis2 lineLayer];
    presentationLayer = [lineLayer2 presentationLayer];
    [presentationLayer position];
    v13 = v12;
    v15 = v14;

    yAxis3 = [(SCATXYAxisPointPickerViewController *)self yAxis];
    presentationLayer2 = [yAxis3 presentationLayer];
    axisContainerView = [(SCATXYAxisPointPickerViewController *)self axisContainerView];
    layer = [axisContainerView layer];
    [presentationLayer2 convertPoint:layer toLayer:{v13, v15}];
    v20 = v19;
  }

  else
  {
    presentationLayer2 = [yAxis2 presentationLayer];
    [presentationLayer2 position];
    v20 = v21;
  }

  xAxis = [(SCATXYAxisPointPickerViewController *)self xAxis];
  lineLayer3 = [xAxis lineLayer];
  isActive2 = [lineLayer3 isActive];

  if (isActive2)
  {
    xAxis2 = [(SCATXYAxisPointPickerViewController *)self xAxis];
    lineLayer4 = [xAxis2 lineLayer];
    presentationLayer3 = [lineLayer4 presentationLayer];
    [presentationLayer3 position];
    v29 = v28;
    v31 = v30;

    xAxis3 = [(SCATXYAxisPointPickerViewController *)self xAxis];
    presentationLayer4 = [xAxis3 presentationLayer];
    axisContainerView2 = [(SCATXYAxisPointPickerViewController *)self axisContainerView];
    layer2 = [axisContainerView2 layer];
    [presentationLayer4 convertPoint:layer2 toLayer:{v29, v31}];
    v37 = v36;
  }

  else
  {
    xAxis3 = [(SCATXYAxisPointPickerViewController *)self yAxis];
    presentationLayer4 = [xAxis3 presentationLayer];
    [presentationLayer4 position];
    v37 = v38;
  }

  if (coordinatesCopy)
  {
    axisContainerView3 = [(SCATXYAxisPointPickerViewController *)self axisContainerView];
    [HNDScreen convertPoint:axisContainerView3 fromView:v37, v20];
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

- (void)orientationDidChange:(id)change
{
  v4 = +[UIScreen mainScreen];
  [v4 bounds];
  v6 = v5;
  v8 = v7;
  yAxis = [(SCATXYAxisPointPickerViewController *)self yAxis];
  [yAxis frame];
  Width = CGRectGetWidth(v20);
  +[SCATXYAxisRangeLayer rangeLayerFrameInset];
  v12 = Width - v11;
  xAxis = [(SCATXYAxisPointPickerViewController *)self xAxis];
  [xAxis frame];
  Height = CGRectGetHeight(v21);
  +[SCATXYAxisRangeLayer rangeLayerFrameInset];
  v16 = Height - v15;

  if (v6 != v12 || v8 != v16)
  {
    pointPicker = [(SCATPointPickerViewController *)self pointPicker];
    [pointPicker redisplayIfNeeded:0];
  }
}

- (void)_beginHighlightingTargetedElements
{
  [(SCATXYAxisPointPickerViewController *)self _currentFocusedPointInScreenCoordinates:1];
  v4 = v3;
  v6 = v5;
  axisPointPicker = [(SCATXYAxisPointPickerViewController *)self axisPointPicker];
  [axisPointPicker didSweepOverPoint:{v4, v6}];

  elementFinderTimer = [(SCATXYAxisPointPickerViewController *)self elementFinderTimer];
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
  [elementFinderTimer afterDelay:v10 processBlock:v9 cancelBlock:0.1];
}

- (void)_endHighlightingTargedElements
{
  elementFinderTimer = [(SCATXYAxisPointPickerViewController *)self elementFinderTimer];
  [elementFinderTimer cancel];
}

- (double)_rangeAnimationVelocityWithSlowdownMultiplier:(unint64_t)multiplier
{
  if (!multiplier)
  {
    _AXAssert();
  }

  v4 = +[AXSettings sharedInstance];
  [v4 assistiveTouchAxisSweepSpeed];
  v6 = v5;

  return v6 / multiplier;
}

- (id)_sweepAnimationForLayer:(id)layer parentBounds:(CGRect)bounds slowdownMultiplier:(unint64_t)multiplier direction:(BOOL)direction animationKey:(id)key
{
  directionCopy = direction;
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  keyCopy = key;
  layerCopy = layer;
  axis = [layerCopy axis];
  v18 = [SCATSweepAnimation sweepAnimationWithDirection:directionCopy scatLayer:layerCopy animationKey:keyCopy];

  [v18 setDelegate:self];
  [v18 setRemovedOnCompletion:1];
  if (axis)
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

  [(SCATXYAxisPointPickerViewController *)self _rangeAnimationVelocityWithSlowdownMultiplier:multiplier];
  v23 = width / v22;
  v24 = [NSValue valueWithCGPoint:v19, y];
  if (directionCopy)
  {
    [v18 setFromValue:v24];

    height = [NSValue valueWithCGPoint:x, height];
    [v18 setToValue:height];
  }

  else
  {
    [v18 setToValue:v24];

    height = [NSValue valueWithCGPoint:x, height];
    [v18 setFromValue:height];
  }

  [v18 setDuration:v23];
  v26 = +[AXSettings sharedInstance];
  assistiveTouchDelayAfterInputEnabled = [v26 assistiveTouchDelayAfterInputEnabled];
  if (multiplier == 1 && assistiveTouchDelayAfterInputEnabled)
  {
    [v26 assistiveTouchDelayAfterInput];
    v29 = v28;
    [v18 setFillMode:kCAFillModeBackwards];
    [v18 setBeginTime:v29 + CACurrentMediaTime()];
  }

  return v18;
}

- (id)_sweepAnimationStartingInPlaceForLayer:(id)layer parentBounds:(CGRect)bounds slowdownMultiplier:(unint64_t)multiplier direction:(BOOL)direction animationKey:(id)key
{
  directionCopy = direction;
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  layerCopy = layer;
  keyCopy = key;
  axis = [layerCopy axis];
  v18 = [SCATSweepAnimation sweepAnimationWithDirection:directionCopy scatLayer:layerCopy animationKey:keyCopy];

  [v18 setDelegate:self];
  [v18 setRemovedOnCompletion:1];
  if (axis)
  {
    v32.origin.x = x;
    v32.origin.y = y;
    v32.size.width = width;
    v32.size.height = height;
    width = CGRectGetMidX(v32);
    [layerCopy position];
    v20 = v19;
    if (!directionCopy)
    {
      height = y;
    }

    [layerCopy position];
    v22 = vabdd_f64(height, v21);
    [(SCATXYAxisPointPickerViewController *)self _rangeAnimationVelocityWithSlowdownMultiplier:multiplier];
    v24 = width;
  }

  else
  {
    v33.origin.x = x;
    v33.origin.y = y;
    v33.size.width = width;
    v33.size.height = height;
    height = CGRectGetMidY(v33);
    [layerCopy position];
    v24 = v25;
    if (!directionCopy)
    {
      width = x;
    }

    [layerCopy position];
    v22 = vabdd_f64(width, v26);
    [(SCATXYAxisPointPickerViewController *)self _rangeAnimationVelocityWithSlowdownMultiplier:multiplier];
    v20 = height;
  }

  v27 = v22 / v23;
  v28 = [NSValue valueWithCGPoint:v24, v20];
  [v18 setFromValue:v28];

  height = [NSValue valueWithCGPoint:width, height];
  [v18 setToValue:height];

  [v18 setDuration:v27];

  return v18;
}

- (void)animationDidStop:(id)stop finished:(BOOL)finished
{
  finishedCopy = finished;
  stopCopy = stop;
  if ([(SCATXYAxisPointPickerViewController *)self pickerPhase]!= 7)
  {
    if ([(SCATXYAxisPointPickerViewController *)self pickerPhase])
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) != 0 && finishedCopy)
      {
        [(SCATXYAxisPointPickerViewController *)self setSweepCount:[(SCATXYAxisPointPickerViewController *)self sweepCount]+ 1];
        if ((-[SCATXYAxisPointPickerViewController sweepCount](self, "sweepCount") & 1) != 0 || (-[SCATXYAxisPointPickerViewController axisPointPicker](self, "axisPointPicker"), v6 = objc_claimAutoreleasedReturnValue(), v7 = [v6 pauseForNumberOfCycles:{-[SCATXYAxisPointPickerViewController numberOfCycles](self, "numberOfCycles")}], v6, (v7 & 1) == 0))
        {
          v8 = stopCopy;
          scatLayer = [v8 scatLayer];
          reversedAnimation = [v8 reversedAnimation];
          toValue = [reversedAnimation toValue];
          [toValue CGPointValue];
          [scatLayer updateLayerTreePosition:?];

          animationKey = [v8 animationKey];

          [scatLayer addAnimation:reversedAnimation forKey:animationKey];
        }
      }
    }
  }
}

@end