@interface BSUIDailyReadingLayer
- (BOOL)_isVisible;
- (BOOL)dynamicCompletedReadingGoal;
- (CGRect)_workingInsetRect;
- (CGRect)lastWorkingRect;
- (CGRect)workingRect;
- (TUIFeedControllerHosting)feedControllerHost;
- (double)_actualReadingTimeSeconds;
- (double)_calculatedProgress;
- (double)_endCapHeight;
- (double)_visibleOrActualProgress;
- (double)visibleProgressToday;
- (id)detailLayer;
- (id)hiddenTimeLayer;
- (id)titleLayer;
- (int64_t)dynamicStreakDayGoal;
- (int64_t)dynamicTimeReadToday;
- (void)_animateArcLayer:(id)layer;
- (void)_animateProgressTodayIfNeededHonoringDelay:(BOOL)delay;
- (void)_animateTimeTextFade;
- (void)_backgroundArc;
- (void)_checkEnvironment;
- (void)_progressArc;
- (void)_setInitialTimeTextAnimate;
- (void)_setupBackgroundWithDebugBounds:(BOOL)bounds;
- (void)_setupDailyReading;
- (void)_setupDynamicTimeLayerWithDebugBounds:(BOOL)bounds;
- (void)_setupGoalArtwork;
- (void)_startMicaPlayer;
- (void)_updateArcLayer:(id)layer color:(id)color percent:(double)percent;
- (void)_updateProgressNoAnimation;
- (void)_updateTimeTextAnimate:(BOOL)animate;
- (void)configureWithMetrics:(id)metrics timeTextYOffset:(double)offset micaFileProvider:(id)provider;
- (void)configureWithSublayers:(id)sublayers;
- (void)dealloc;
- (void)didAddLayerWithFeedControllerHost:(id)host;
- (void)dynamicProgressChanged:(id)changed;
- (void)handleTrigger:(id)trigger didChangeState:(unint64_t)state updateEvent:(unint64_t)event;
- (void)setVisibleProgressToday:(double)today;
- (void)willRemoveLayerWithFeedControllerHost:(id)host;
@end

@implementation BSUIDailyReadingLayer

- (void)dealloc
{
  [(TUIDynamicProgress *)self->_dynamicProgress unregisterProgressObserver:self];
  v3.receiver = self;
  v3.super_class = BSUIDailyReadingLayer;
  [(BSUIDailyReadingLayer *)&v3 dealloc];
}

- (void)configureWithMetrics:(id)metrics timeTextYOffset:(double)offset micaFileProvider:(id)provider
{
  metricsCopy = metrics;
  objc_storeStrong(&self->_metrics, metrics);
  self->_timeTextYOffset = offset;
  size = CGRectZero.size;
  self->_workingRect.origin = CGRectZero.origin;
  self->_workingRect.size = size;
  metrics = [(BSUIDailyReadingLayer *)self metrics];
  triggerName = [metrics triggerName];

  if (!triggerName)
  {
    self->_lastTriggerState = 2;
    [(BSUIDailyReadingLayer *)self _updateProgressNoAnimation];
  }

  if ([(BSUIDailyReadingMetrics *)self->_metrics clockTicks])
  {
    v11 = +[BSUITemplate manager];
    dynamicRegistry = [v11 dynamicRegistry];

    v13 = +[BCReadingTimeToday kind];
    v14 = [dynamicRegistry progressProviderForKind:v13];
    v15 = [v14 dynamicProgressForKind:v13 instance:0 parameters:0];
    [v15 registerProgressObserver:self];
    dynamicProgress = self->_dynamicProgress;
    self->_dynamicProgress = v15;
    v17 = v15;

    progress = [v17 progress];
    integerValue = [progress integerValue];

    dynamicTimeReadToday = [(BSUIDailyReadingLayer *)self dynamicTimeReadToday];
    if (integerValue <= dynamicTimeReadToday)
    {
      v21 = dynamicTimeReadToday;
    }

    else
    {
      v21 = integerValue;
    }

    v22 = [NSNumber numberWithInteger:v21];

    [(BSUIDailyReadingLayer *)self setOverrideReadingTimeToday:v22];
  }
}

- (void)configureWithSublayers:(id)sublayers
{
  sublayersCopy = sublayers;
  textSublayers = self->_textSublayers;
  if (textSublayers)
  {
    [(NSArray *)textSublayers enumerateObjectsUsingBlock:&stru_388668];
  }

  symbolImageSublayers = self->_symbolImageSublayers;
  if (symbolImageSublayers)
  {
    [(NSArray *)symbolImageSublayers enumerateObjectsUsingBlock:&stru_388688];
  }

  v7 = objc_alloc_init(NSMutableArray);
  v8 = objc_alloc_init(NSMutableArray);
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_4152C;
  v17[3] = &unk_3886B0;
  v9 = v7;
  v18 = v9;
  v10 = v8;
  v19 = v10;
  [sublayersCopy enumerateObjectsUsingBlock:v17];
  objc_storeStrong(&self->_textSublayers, v7);
  v11 = self->_symbolImageSublayers;
  self->_symbolImageSublayers = v10;
  v12 = v10;

  [(BSUIDailyReadingLayer *)self _setupDailyReading];
  if ([(BSUIDailyReadingLayer *)self _isVisible])
  {
    [(BSUIDailyReadingLayer *)self _animateProgressTodayIfNeededHonoringDelay:1];
  }

  v13 = self->_textSublayers;
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_415A8;
  v16[3] = &unk_3886D8;
  v16[4] = self;
  [(NSArray *)v13 enumerateObjectsUsingBlock:v16];
  v14 = self->_symbolImageSublayers;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_41608;
  v15[3] = &unk_3886D8;
  v15[4] = self;
  [(NSArray *)v14 enumerateObjectsUsingBlock:v15];
}

- (double)_actualReadingTimeSeconds
{
  overrideReadingTimeToday = [(BSUIDailyReadingLayer *)self overrideReadingTimeToday];
  v4 = overrideReadingTimeToday;
  if (overrideReadingTimeToday)
  {
    [overrideReadingTimeToday floatValue];
    v6 = v5;
  }

  else
  {
    metrics = [(BSUIDailyReadingLayer *)self metrics];
    actualReadingTimeSeconds = [metrics actualReadingTimeSeconds];
    [actualReadingTimeSeconds floatValue];
    v6 = v9;
  }

  return v6;
}

- (double)_calculatedProgress
{
  dynamicStreakDayGoal = [(BSUIDailyReadingLayer *)self dynamicStreakDayGoal];
  if (dynamicStreakDayGoal < 1)
  {
    return 0.0;
  }

  v4 = dynamicStreakDayGoal;
  [(BSUIDailyReadingLayer *)self _actualReadingTimeSeconds];
  return v5 / v4;
}

- (double)_visibleOrActualProgress
{
  metrics = [(BSUIDailyReadingLayer *)self metrics];
  lastVisibleProgressToday = [metrics lastVisibleProgressToday];

  if (lastVisibleProgressToday)
  {

    [(BSUIDailyReadingLayer *)self visibleProgressToday];
  }

  else
  {

    [(BSUIDailyReadingLayer *)self _calculatedProgress];
  }

  return result;
}

- (CGRect)workingRect
{
  p_workingRect = &self->_workingRect;
  if (CGRectIsEmpty(self->_workingRect))
  {
    [(BSUIDailyReadingLayer *)self _workingInsetRect];
    p_workingRect->origin.x = x;
    p_workingRect->origin.y = y;
    p_workingRect->size.width = width;
    p_workingRect->size.height = height;
  }

  else
  {
    x = p_workingRect->origin.x;
    y = p_workingRect->origin.y;
    width = p_workingRect->size.width;
    height = p_workingRect->size.height;
  }

  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGRect)_workingInsetRect
{
  [(BSUIDailyReadingLayer *)self frame];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  metrics = [(BSUIDailyReadingLayer *)self metrics];
  progressBarWidth = [metrics progressBarWidth];
  [progressBarWidth floatValue];
  v14 = v13;

  metrics2 = [(BSUIDailyReadingLayer *)self metrics];
  arcWidth = [metrics2 arcWidth];
  [arcWidth floatValue];
  v18 = v17;

  if (v18 > 0.0)
  {
    v19 = v18;
    v40.origin.x = v4;
    v40.origin.y = v6;
    v40.size.width = v8;
    v40.size.height = v10;
    if (CGRectGetWidth(v40) > v19)
    {
      v8 = v19;
    }
  }

  v41.origin.x = v4;
  v41.origin.y = v6;
  v41.size.width = v8;
  v41.size.height = v10;
  v42 = CGRectInset(v41, v14 * 0.5, v14 * 0.5);
  x = v42.origin.x;
  y = v42.origin.y;
  width = v42.size.width;
  height = v42.size.height;
  metrics3 = [(BSUIDailyReadingLayer *)self metrics];
  iconMode = [metrics3 iconMode];

  v26 = x;
  v27 = y;
  v28 = width;
  v29 = height;
  if (iconMode)
  {
    v30 = CGRectGetWidth(*&v26);
    v43.origin.x = x;
    v43.origin.y = y;
    v43.size.width = width;
    v43.size.height = height;
    v31 = CGRectGetHeight(v43);
  }

  else
  {
    v32 = CGRectGetHeight(*&v26);
    v44.origin.x = x;
    v44.origin.y = y;
    v44.size.width = width;
    v44.size.height = height;
    v33 = CGRectGetWidth(v44) * 0.5;
    if (v32 < v33)
    {
      v33 = v32;
    }

    v30 = v14 + v33 * 2.0;
    v31 = v33 + v14;
  }

  [(BSUIDailyReadingLayer *)self frame];
  v34 = CGRectGetWidth(v45);
  v35 = v34;
  v36 = 0.0;
  if (iconMode)
  {
    [(BSUIDailyReadingLayer *)self frame:v34];
    v36 = (CGRectGetHeight(v46) - v31) * 0.5;
  }

  v37 = (v35 - v30) * 0.5;
  v38 = v30;
  v39 = v31;
  result.size.height = v39;
  result.size.width = v38;
  result.origin.y = v36;
  result.origin.x = v37;
  return result;
}

- (double)_endCapHeight
{
  metrics = [(BSUIDailyReadingLayer *)self metrics];
  progressBarWidth = [metrics progressBarWidth];
  [progressBarWidth floatValue];
  v5 = v4 * 0.5;

  return v5;
}

- (void)_updateArcLayer:(id)layer color:(id)color percent:(double)percent
{
  colorCopy = color;
  layerCopy = layer;
  [(BSUIDailyReadingLayer *)self workingRect];
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;
  metrics = [(BSUIDailyReadingLayer *)self metrics];
  progressBarWidth = [metrics progressBarWidth];
  [progressBarWidth floatValue];
  v21 = v20;

  metrics2 = [(BSUIDailyReadingLayer *)self metrics];
  iconMode = [metrics2 iconMode];

  metrics3 = [(BSUIDailyReadingLayer *)self metrics];
  rightToLeft = [metrics3 rightToLeft];
  bOOLValue = [rightToLeft BOOLValue];

  v27 = v11;
  v28 = v13;
  v29 = v15;
  v30 = v17;
  if (iconMode)
  {
    MidY = CGRectGetMidY(*&v27);
  }

  else
  {
    MaxY = CGRectGetMaxY(*&v27);
    [(BSUIDailyReadingLayer *)self _endCapHeight];
    MidY = MaxY - v33;
  }

  v46.origin.x = v11;
  v46.origin.y = v13;
  v46.size.width = v15;
  v46.size.height = v17;
  MidX = CGRectGetMidX(v46);
  v35 = -1.57079633;
  if (bOOLValue)
  {
    v36 = 4.71238898;
  }

  else
  {
    v36 = -1.57079633;
  }

  if (!bOOLValue)
  {
    v35 = 4.71238898;
  }

  v37 = -3.14159265;
  if (bOOLValue)
  {
    v38 = -6.28318531;
  }

  else
  {
    v38 = -3.14159265;
  }

  if (!bOOLValue)
  {
    v37 = 0.0;
  }

  if (iconMode)
  {
    v39 = v35;
  }

  else
  {
    v39 = v37;
  }

  if (!iconMode)
  {
    v36 = v38;
  }

  v40 = v21;
  v44 = [UIBezierPath bezierPathWithArcCenter:bOOLValue ^ 1 radius:MidX startAngle:MidY endAngle:(v15 - v40) * 0.5 clockwise:v36, v39, v38];
  cGColor = [colorCopy CGColor];

  [layerCopy setStrokeColor:cGColor];
  v42 = +[UIColor clearColor];
  [layerCopy setFillColor:{objc_msgSend(v42, "CGColor")}];

  [layerCopy setBounds:{v11, v13, v15, v17}];
  [layerCopy setFrame:{v11, v13, v15, v17}];
  [layerCopy setLineWidth:v40];
  [layerCopy setLineCap:kCALineCapRound];
  [layerCopy setStrokeStart:0.0];
  [layerCopy setStrokeEnd:percent];
  [layerCopy setZPosition:1.0];
  v43 = v44;
  [layerCopy setPath:{objc_msgSend(v44, "CGPath")}];
}

- (void)_animateArcLayer:(id)layer
{
  if (layer)
  {
    layerCopy = layer;
    [(BSUIDailyReadingLayer *)self _calculatedProgress];
    v6 = v5;
    progressArcLayer = [(BSUIDailyReadingLayer *)self progressArcLayer];
    [progressArcLayer setStrokeEnd:v6];

    v10 = [CASpringAnimation animationWithKeyPath:@"strokeEnd"];
    [v10 setMass:1.0];
    [v10 setStiffness:55.0];
    [v10 setDamping:15.0];
    [v10 setInitialVelocity:0.0];
    [(BSUIDailyReadingLayer *)self _visibleOrActualProgress];
    v8 = [NSNumber numberWithDouble:?];
    [v10 setFromValue:v8];

    v9 = [NSNumber numberWithDouble:v6];
    [v10 setToValue:v9];

    [v10 settlingDuration];
    [v10 setDuration:?];
    [layerCopy addAnimation:v10 forKey:@"strokeEnd"];

    [(BSUIDailyReadingLayer *)self setVisibleProgressToday:v6];
  }
}

- (void)_backgroundArc
{
  v11 = +[UITraitCollection _currentTraitCollection];
  metrics = [(BSUIDailyReadingLayer *)self metrics];
  controlColor = [metrics controlColor];
  v5 = [controlColor resolvedColorWithTraitCollection:v11];

  backgroundArcLayer = self->_backgroundArcLayer;
  if (backgroundArcLayer)
  {
    if (!CGColorEqualToColor(-[CAShapeLayer strokeColor](backgroundArcLayer, "strokeColor"), [v5 CGColor]))
    {
      -[CAShapeLayer setStrokeColor:](self->_backgroundArcLayer, "setStrokeColor:", [v5 CGColor]);
    }
  }

  else
  {
    v7 = +[CAShapeLayer layer];
    v8 = self->_backgroundArcLayer;
    self->_backgroundArcLayer = v7;

    [(BSUIDailyReadingLayer *)self _updateArcLayer:self->_backgroundArcLayer color:v5 percent:1.0];
    backgroundLayer = [(BSUIDailyReadingLayer *)self backgroundLayer];
    backgroundArcLayer = [(BSUIDailyReadingLayer *)self backgroundArcLayer];
    [backgroundLayer addSublayer:backgroundArcLayer];
  }
}

- (void)_progressArc
{
  v13 = +[UITraitCollection _currentTraitCollection];
  metrics = [(BSUIDailyReadingLayer *)self metrics];
  progressColor = [metrics progressColor];
  v5 = [progressColor resolvedColorWithTraitCollection:v13];

  [(BSUIDailyReadingLayer *)self _visibleOrActualProgress];
  progressArcLayer = self->_progressArcLayer;
  if (progressArcLayer)
  {
    if (!CGColorEqualToColor(-[CAShapeLayer strokeColor](progressArcLayer, "strokeColor"), [v5 CGColor]))
    {
      -[CAShapeLayer setStrokeColor:](self->_progressArcLayer, "setStrokeColor:", [v5 CGColor]);
    }
  }

  else
  {
    v8 = v6;
    v9 = +[CAShapeLayer layer];
    v10 = self->_progressArcLayer;
    self->_progressArcLayer = v9;

    [(BSUIDailyReadingLayer *)self _updateArcLayer:self->_progressArcLayer color:v5 percent:v8];
    backgroundArcLayer = [(BSUIDailyReadingLayer *)self backgroundArcLayer];
    progressArcLayer = [(BSUIDailyReadingLayer *)self progressArcLayer];
    [backgroundArcLayer addSublayer:progressArcLayer];
  }
}

- (void)_updateProgressNoAnimation
{
  [(BSUIDailyReadingLayer *)self _calculatedProgress];
  v4 = v3;
  progressArcLayer = [(BSUIDailyReadingLayer *)self progressArcLayer];
  [progressArcLayer setStrokeEnd:v4];
}

- (id)titleLayer
{
  if ([(NSArray *)self->_textSublayers count]== &dword_0 + 3)
  {
    v3 = [(NSArray *)self->_textSublayers objectAtIndexedSubscript:0];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)hiddenTimeLayer
{
  if ([(NSArray *)self->_textSublayers count]== &dword_0 + 3)
  {
    v3 = [(NSArray *)self->_textSublayers objectAtIndexedSubscript:1];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)detailLayer
{
  if ([(NSArray *)self->_textSublayers count]== &dword_0 + 3)
  {
    v3 = [(NSArray *)self->_textSublayers objectAtIndexedSubscript:2];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)_setupGoalArtwork
{
  awardImageLayer = [(BSUIDailyReadingLayer *)self awardImageLayer];
  [awardImageLayer removeFromSuperlayer];

  [(BSUIDailyReadingLayer *)self setAwardImageLayer:0];
  [(BSUIDailyReadingLayer *)self workingRect];
  rect = v4;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  dynamicTimeLayer = [(BSUIDailyReadingLayer *)self dynamicTimeLayer];
  v12 = *&CATransform3DIdentity.m33;
  rect_8[4] = *&CATransform3DIdentity.m31;
  rect_8[5] = v12;
  v13 = *&CATransform3DIdentity.m43;
  rect_8[6] = *&CATransform3DIdentity.m41;
  rect_8[7] = v13;
  v14 = *&CATransform3DIdentity.m13;
  rect_8[0] = *&CATransform3DIdentity.m11;
  rect_8[1] = v14;
  v15 = *&CATransform3DIdentity.m23;
  rect_8[2] = *&CATransform3DIdentity.m21;
  rect_8[3] = v15;
  [dynamicTimeLayer setTransform:rect_8];

  dynamicTimeLayer2 = [(BSUIDailyReadingLayer *)self dynamicTimeLayer];
  [dynamicTimeLayer2 frame];
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v24 = v23;

  v59.origin.x = v18;
  v59.origin.y = v20;
  v59.size.width = v22;
  v59.size.height = v24;
  MidY = CGRectGetMidY(v59);
  v60.origin.x = v18;
  v60.origin.y = v20;
  v60.size.width = v22;
  v60.size.height = v24;
  Height = CGRectGetHeight(v60);
  metrics = [(BSUIDailyReadingLayer *)self metrics];
  if ([metrics isAX])
  {
    v28 = 22.0;
  }

  else
  {
    v28 = 16.0;
  }

  v29 = Height - v28;
  metrics2 = [(BSUIDailyReadingLayer *)self metrics];
  if ([metrics2 isAX])
  {
    v31 = 4.0;
  }

  else
  {
    v31 = 2.0;
  }

  v61.origin.x = rect;
  v61.origin.y = v6;
  v61.size.width = v8;
  v61.size.height = v10;
  v32 = CGRectGetMidX(v61) - v29 * 0.5;
  v33 = objc_alloc_init(CALayer);
  [v33 setFrame:{v32, MidY - v29 * 0.5 - v31, v29, v29}];
  [(BSUIDailyReadingLayer *)self setAwardImageLayer:v33];
  backgroundLayer = [(BSUIDailyReadingLayer *)self backgroundLayer];
  [backgroundLayer addSublayer:v33];

  v35 = objc_alloc_init(BSUIMicaFileProvider);
  micaPlayer = [(BSUIDailyReadingLayer *)self micaPlayer];
  if (micaPlayer)
  {

LABEL_10:
    micaPlayer2 = [(BSUIDailyReadingLayer *)self micaPlayer];
    [micaPlayer2 removeFromSuperlayer];

    v41 = [[TUIMicaPlayer alloc] initWithPath:@"/mica/ic_ReadingMeter-Checkmark_58_v4~AMH.caar" retinaScale:v35 fileProvider:1.0];
    [(BSUIDailyReadingLayer *)self setMicaPlayer:v41];

    metrics3 = [(BSUIDailyReadingLayer *)self metrics];
    opacity = [metrics3 opacity];
    [opacity floatValue];
    v45 = v44;
    micaPlayer3 = [(BSUIDailyReadingLayer *)self micaPlayer];
    rootLayer = [micaPlayer3 rootLayer];
    LODWORD(v48) = v45;
    [rootLayer setOpacity:v48];

    micaPlayer4 = [(BSUIDailyReadingLayer *)self micaPlayer];
    awardImageLayer2 = [(BSUIDailyReadingLayer *)self awardImageLayer];
    [micaPlayer4 addToLayer:awardImageLayer2 onTop:1 gravity:@"resize"];

    goto LABEL_11;
  }

  micaPlayer5 = [(BSUIDailyReadingLayer *)self micaPlayer];
  path = [micaPlayer5 path];
  v39 = [path isEqualToString:@"/mica/ic_ReadingMeter-Checkmark_58_v4~AMH.caar"];

  if ((v39 & 1) == 0)
  {
    goto LABEL_10;
  }

LABEL_11:
  if ([(BSUIDailyReadingLayer *)self _goalCompleted])
  {
    [(BSUIDailyReadingLayer *)self _visibleOrActualProgress];
    if (v51 >= 1.0)
    {
      micaPlayer6 = [(BSUIDailyReadingLayer *)self micaPlayer];
      [micaPlayer6 documentDuration];
      v54 = v53;
      micaPlayer7 = [(BSUIDailyReadingLayer *)self micaPlayer];
      [micaPlayer7 setPlaybackTime:v54];

      dynamicTimeLayer3 = [(BSUIDailyReadingLayer *)self dynamicTimeLayer];
      [dynamicTimeLayer3 setOpacity:0.0];

      [(BSUIDailyReadingLayer *)self setGoalCompletedAnimationRequested:1];
    }
  }
}

- (void)_setupBackgroundWithDebugBounds:(BOOL)bounds
{
  boundsCopy = bounds;
  backgroundLayer = [(BSUIDailyReadingLayer *)self backgroundLayer];

  if (!backgroundLayer)
  {
    v6 = +[CALayer layer];
    backgroundLayer = self->_backgroundLayer;
    self->_backgroundLayer = v6;
  }

  [(BSUIDailyReadingLayer *)self bounds];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  [(CALayer *)self->_backgroundLayer setBounds:?];
  [(CALayer *)self->_backgroundLayer setFrame:v9, v11, v13, v15];
  metrics = [(BSUIDailyReadingLayer *)self metrics];
  backgroundColor = [metrics backgroundColor];
  -[CALayer setBackgroundColor:](self->_backgroundLayer, "setBackgroundColor:", [backgroundColor CGColor]);

  if (boundsCopy)
  {
    v18 = +[UIColor blueColor];
    -[CALayer setBorderColor:](self->_backgroundLayer, "setBorderColor:", [v18 CGColor]);

    [(CALayer *)self->_backgroundLayer setBorderWidth:0.5];
  }

  [(CALayer *)self->_backgroundLayer setMasksToBounds:1];
  [(BSUIDailyReadingLayer *)self addSublayer:self->_backgroundLayer];
  [(BSUIDailyReadingLayer *)self workingRect];

  [(BSUIDailyReadingLayer *)self setLastWorkingRect:?];
}

- (void)_checkEnvironment
{
  backgroundLayer = [(BSUIDailyReadingLayer *)self backgroundLayer];

  if (backgroundLayer)
  {
    metrics = [(BSUIDailyReadingLayer *)self metrics];
    axValue = [metrics axValue];
    integerValue = [axValue integerValue];

    lastAXValue = [(BSUIDailyReadingLayer *)self lastAXValue];
    v8 = lastAXValue != integerValue;
    if (lastAXValue != integerValue)
    {
      [(BSUIDailyReadingLayer *)self setLastAXValue:integerValue];
    }

    dynamicStreakDayGoal = [(BSUIDailyReadingLayer *)self dynamicStreakDayGoal];
    if ([(BSUIDailyReadingLayer *)self lastGoals]!= dynamicStreakDayGoal)
    {
      if (dynamicStreakDayGoal >= 1)
      {
        dynamicProgress = [(BSUIDailyReadingLayer *)self dynamicProgress];
        progress = [dynamicProgress progress];
        [progress floatValue];
        v13 = v12;

        [(BSUIDailyReadingLayer *)self _actualReadingTimeSeconds];
        if (v14 <= v13)
        {
          v14 = v13;
        }

        [(BSUIDailyReadingLayer *)self setVisibleProgressToday:v14 / dynamicStreakDayGoal];
      }

      [(BSUIDailyReadingLayer *)self setLastGoals:dynamicStreakDayGoal];
      v8 = 1;
    }

    [(BSUIDailyReadingLayer *)self lastWorkingRect];
    v16 = v15;
    v18 = v17;
    v20 = v19;
    v22 = v21;
    [(BSUIDailyReadingLayer *)self workingRect];
    v30.origin.x = v23;
    v30.origin.y = v24;
    v30.size.width = v25;
    v30.size.height = v26;
    v29.origin.x = v16;
    v29.origin.y = v18;
    v29.size.width = v20;
    v29.size.height = v22;
    if (CGRectEqualToRect(v29, v30))
    {
      if (!v8)
      {
        return;
      }
    }

    else
    {
      [(BSUIDailyReadingLayer *)self workingRect];
      [(BSUIDailyReadingLayer *)self setLastWorkingRect:?];
    }

    backgroundLayer2 = [(BSUIDailyReadingLayer *)self backgroundLayer];
    [backgroundLayer2 removeFromSuperlayer];

    [(BSUIDailyReadingLayer *)self setAwardImageLayer:0];
    [(BSUIDailyReadingLayer *)self setProgressArcLayer:0];
    [(BSUIDailyReadingLayer *)self setBackgroundArcLayer:0];
    [(BSUIDailyReadingLayer *)self setDynamicTimeLayer:0];

    [(BSUIDailyReadingLayer *)self setBackgroundLayer:0];
  }
}

- (void)_setupDailyReading
{
  [(BSUIDailyReadingLayer *)self _checkEnvironment];
  [(BSUIDailyReadingLayer *)self _setupBackgroundWithDebugBounds:0];
  [(BSUIDailyReadingLayer *)self _backgroundArc];
  [(BSUIDailyReadingLayer *)self _progressArc];
  [(BSUIDailyReadingLayer *)self _setupDynamicTimeLayerWithDebugBounds:0];
  hiddenTimeLayer = [(BSUIDailyReadingLayer *)self hiddenTimeLayer];
  [hiddenTimeLayer setHidden:1];

  metrics = [(BSUIDailyReadingLayer *)self metrics];
  iconMode = [metrics iconMode];

  if ((iconMode & 1) == 0)
  {

    [(BSUIDailyReadingLayer *)self _setupGoalArtwork];
  }
}

- (BOOL)_isVisible
{
  lastTriggerState = self->_lastTriggerState;
  if (([(BSUIDailyReadingLayer *)self isHidden]& 1) != 0)
  {
    LOBYTE(v4) = 0;
  }

  else
  {
    superlayer = [(BSUIDailyReadingLayer *)self superlayer];
    v4 = [superlayer isHidden] ^ 1;
  }

  return (lastTriggerState == 2) & v4;
}

- (void)setVisibleProgressToday:(double)today
{
  metrics = [(BSUIDailyReadingLayer *)self metrics];
  lastVisibleProgressToday = [metrics lastVisibleProgressToday];
  v5 = [NSNumber numberWithDouble:today];
  [lastVisibleProgressToday updateWithValueIfChanged:v5];
}

- (double)visibleProgressToday
{
  objc_opt_class();
  metrics = [(BSUIDailyReadingLayer *)self metrics];
  lastVisibleProgressToday = [metrics lastVisibleProgressToday];
  value = [lastVisibleProgressToday value];
  v6 = BUDynamicCast();
  v7 = v6;
  v8 = &off_39B4A0;
  if (v6)
  {
    v8 = v6;
  }

  v9 = v8;

  [v9 floatValue];
  v11 = v10;

  return v11;
}

- (int64_t)dynamicStreakDayGoal
{
  objc_opt_class();
  metrics = [(BSUIDailyReadingLayer *)self metrics];
  dynamicStreakDayGoal = [metrics dynamicStreakDayGoal];
  value = [dynamicStreakDayGoal value];
  v6 = BUDynamicCast();
  v7 = v6;
  if (v6)
  {
    readingGoalSeconds = v6;
  }

  else
  {
    metrics2 = [(BSUIDailyReadingLayer *)self metrics];
    readingGoalSeconds = [metrics2 readingGoalSeconds];
  }

  integerValue = [readingGoalSeconds integerValue];
  return integerValue;
}

- (int64_t)dynamicTimeReadToday
{
  objc_opt_class();
  metrics = [(BSUIDailyReadingLayer *)self metrics];
  dynamicTimeReadToday = [metrics dynamicTimeReadToday];
  value = [dynamicTimeReadToday value];
  v6 = BUDynamicCast();
  v7 = v6;
  v8 = &off_39B4A0;
  if (v6)
  {
    v8 = v6;
  }

  v9 = v8;

  integerValue = [v9 integerValue];
  return integerValue;
}

- (BOOL)dynamicCompletedReadingGoal
{
  objc_opt_class();
  metrics = [(BSUIDailyReadingLayer *)self metrics];
  dynamicCompletedReadingGoal = [metrics dynamicCompletedReadingGoal];
  value = [dynamicCompletedReadingGoal value];
  v6 = BUDynamicCast();
  v7 = v6;
  v8 = &off_39B4A0;
  if (v6)
  {
    v8 = v6;
  }

  v9 = v8;

  bOOLValue = [v9 BOOLValue];
  return bOOLValue;
}

- (void)_setupDynamicTimeLayerWithDebugBounds:(BOOL)bounds
{
  boundsCopy = bounds;
  metrics = [(BSUIDailyReadingLayer *)self metrics];
  iconMode = [metrics iconMode];

  if ((iconMode & 1) == 0)
  {
    metrics2 = [(BSUIDailyReadingLayer *)self metrics];
    timeFontSpec = [metrics2 timeFontSpec];
    font = [timeFontSpec font];

    timeTextYOffset = self->_timeTextYOffset;
    [font capHeight];
    v11 = timeTextYOffset + v10;
    [font ascender];
    v13 = v11 - v12;
    [font ascender];
    v15 = v14;
    [font capHeight];
    v17 = (v15 - v16) * 0.5;
    [font ascender];
    v19 = v18;
    [(CALayer *)self->_backgroundLayer frame];
    v21 = v20;
    dynamicTimeLayer = [(BSUIDailyReadingLayer *)self dynamicTimeLayer];

    if (!dynamicTimeLayer)
    {
      v23 = objc_opt_new();
      [(BSUIDailyReadingLayer *)self setDynamicTimeLayer:v23];
    }

    v24 = v19 + v17 * 0.5;
    v25 = v13 + v17;
    v26 = +[UITraitCollection _currentTraitCollection];
    dynamicTimeLayer2 = [(BSUIDailyReadingLayer *)self dynamicTimeLayer];
    [dynamicTimeLayer2 setMasksToBounds:1];
    if (boundsCopy)
    {
      v28 = +[UIColor redColor];
      [dynamicTimeLayer2 setBorderColor:{objc_msgSend(v28, "CGColor")}];

      [dynamicTimeLayer2 setBorderWidth:0.5];
    }

    metrics3 = [(BSUIDailyReadingLayer *)self metrics];
    useFontFallback = [metrics3 useFontFallback];

    [dynamicTimeLayer2 setFrame:{0.0, v25, v21, v24}];
    [dynamicTimeLayer2 setBounds:{0.0, v17, v21, v24}];
    metrics4 = [(BSUIDailyReadingLayer *)self metrics];
    timeFontSpec2 = [metrics4 timeFontSpec];
    font2 = [timeFontSpec2 font];
    [dynamicTimeLayer2 setFont:font2 useFontFallback:useFontFallback];

    metrics5 = [(BSUIDailyReadingLayer *)self metrics];
    textColor = [metrics5 textColor];
    v36 = [textColor resolvedColorWithTraitCollection:v26];
    [dynamicTimeLayer2 setColor:v36];

    [dynamicTimeLayer2 setHeight:v24];
    [dynamicTimeLayer2 setUseFontFallback:useFontFallback];
    metrics6 = [(BSUIDailyReadingLayer *)self metrics];
    timeSeparator = [metrics6 timeSeparator];
    [dynamicTimeLayer2 setTimeSeparator:timeSeparator];

    metrics7 = [(BSUIDailyReadingLayer *)self metrics];
    contentsScale = [metrics7 contentsScale];
    v41 = contentsScale;
    if (!contentsScale)
    {
      contentsScale = &off_39B4B8;
    }

    [contentsScale floatValue];
    [dynamicTimeLayer2 setContentsScale:v42];

    backgroundLayer = [(BSUIDailyReadingLayer *)self backgroundLayer];
    [backgroundLayer addSublayer:dynamicTimeLayer2];

    [(BSUIDailyReadingLayer *)self _setInitialTimeTextAnimate];
  }
}

- (void)_setInitialTimeTextAnimate
{
  if ([(BSUIDailyReadingLayer *)self _goalCompleted])
  {
    dynamicProgress = [(BSUIDailyReadingLayer *)self dynamicProgress];
    progress = [dynamicProgress progress];
    [progress floatValue];
    v6 = v5;

    [(BSUIDailyReadingLayer *)self _actualReadingTimeSeconds];
    if (v7 <= v6)
    {
      v8 = v6;
    }

    else
    {
      v8 = v7;
    }

    dynamicTimeLayer = [(BSUIDailyReadingLayer *)self dynamicTimeLayer];
    v10 = v8;
    v12 = dynamicTimeLayer;
  }

  else
  {
    _readingTimeForVisibleOrActualProgress = [(BSUIDailyReadingLayer *)self _readingTimeForVisibleOrActualProgress];
    dynamicTimeLayer = [(BSUIDailyReadingLayer *)self dynamicTimeLayer];
    v12 = dynamicTimeLayer;
    v10 = _readingTimeForVisibleOrActualProgress;
  }

  [dynamicTimeLayer setReadingTime:v10 animate:0];
}

- (void)_updateTimeTextAnimate:(BOOL)animate
{
  animateCopy = animate;
  overrideReadingTimeToday = [(BSUIDailyReadingLayer *)self overrideReadingTimeToday];

  if (overrideReadingTimeToday)
  {
    overrideReadingTimeToday2 = [(BSUIDailyReadingLayer *)self overrideReadingTimeToday];
    integerValue = [overrideReadingTimeToday2 integerValue];

    if (![(BSUIDailyReadingLayer *)self goalCompletedAnimationRequested])
    {
      if ([(BSUIDailyReadingLayer *)self _goalCompleted])
      {
        dynamicProgress = [(BSUIDailyReadingLayer *)self dynamicProgress];
        progress = [dynamicProgress progress];
        [progress floatValue];
        v11 = v10;

        [(BSUIDailyReadingLayer *)self _actualReadingTimeSeconds];
        if (v12 <= v11)
        {
          v13 = v11;
        }

        else
        {
          v13 = v12;
        }

        dynamicTimeLayer = [(BSUIDailyReadingLayer *)self dynamicTimeLayer];
        v15 = v13;
        v17 = dynamicTimeLayer;
        v16 = 0;
      }

      else
      {
        dynamicTimeLayer = [(BSUIDailyReadingLayer *)self dynamicTimeLayer];
        v17 = dynamicTimeLayer;
        v15 = integerValue;
        v16 = animateCopy;
      }

      [dynamicTimeLayer setReadingTime:v15 animate:v16];
    }
  }
}

- (void)_animateTimeTextFade
{
  v3 = dispatch_time(0, 200000000);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_434C8;
  block[3] = &unk_3873D8;
  block[4] = self;
  dispatch_after(v3, &_dispatch_main_q, block);
}

- (void)_startMicaPlayer
{
  micaPlayer = [(BSUIDailyReadingLayer *)self micaPlayer];

  if (micaPlayer)
  {
    v4 = dispatch_time(0, 300000000);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_437DC;
    block[3] = &unk_3873D8;
    block[4] = self;
    dispatch_after(v4, &_dispatch_main_q, block);
  }
}

- (void)_animateProgressTodayIfNeededHonoringDelay:(BOOL)delay
{
  delayCopy = delay;
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_43A1C;
  v19[3] = &unk_3873D8;
  v19[4] = self;
  v5 = objc_retainBlock(v19);
  [(BSUIDailyReadingLayer *)self _visibleOrActualProgress];
  v7 = v6;
  [(BSUIDailyReadingLayer *)self _calculatedProgress];
  if (v7 != v8)
  {
    metrics = [(BSUIDailyReadingLayer *)self metrics];
    triggerDelay = [metrics triggerDelay];
    [triggerDelay doubleValue];
    v12 = v11;

    if (delayCopy && v12 > 0.0)
    {
      v13 = dispatch_time(0, (v12 * 1000000000.0));
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_43B3C;
      block[3] = &unk_386C58;
      v18 = v5;
      dispatch_after(v13, &_dispatch_main_q, block);
      v14 = v18;
    }

    else
    {
      v14 = objc_retainBlock(v5);
      if (v14)
      {
        if (+[NSThread isMainThread])
        {
          v14[2](v14);
        }

        else
        {
          v15[0] = _NSConcreteStackBlock;
          v15[1] = 3221225472;
          v15[2] = sub_43B4C;
          v15[3] = &unk_386C58;
          v14 = v14;
          v16 = v14;
          dispatch_async(&_dispatch_main_q, v15);
        }
      }
    }
  }
}

- (void)didAddLayerWithFeedControllerHost:(id)host
{
  hostCopy = host;
  [(BSUIDailyReadingLayer *)self setFeedControllerHost:?];
  metrics = [(BSUIDailyReadingLayer *)self metrics];
  triggerName = [metrics triggerName];
  v6 = [triggerName length];

  if (v6)
  {
    triggerStateManager = [hostCopy triggerStateManager];
    metrics2 = [(BSUIDailyReadingLayer *)self metrics];
    triggerName2 = [metrics2 triggerName];
    [triggerStateManager addObserver:self forTrigger:triggerName2];
  }
}

- (void)willRemoveLayerWithFeedControllerHost:(id)host
{
  hostCopy = host;
  metrics = [(BSUIDailyReadingLayer *)self metrics];
  triggerName = [metrics triggerName];
  v6 = [triggerName length];

  if (v6)
  {
    triggerStateManager = [hostCopy triggerStateManager];
    metrics2 = [(BSUIDailyReadingLayer *)self metrics];
    triggerName2 = [metrics2 triggerName];
    [triggerStateManager removeObserver:self forTrigger:triggerName2];
  }

  [(BSUIDailyReadingLayer *)self setFeedControllerHost:0];
}

- (void)handleTrigger:(id)trigger didChangeState:(unint64_t)state updateEvent:(unint64_t)event
{
  triggerCopy = trigger;
  self->_lastTriggerState = state;
  metrics = [(BSUIDailyReadingLayer *)self metrics];
  targetTriggerState = [metrics targetTriggerState];
  if (state && targetTriggerState == state)
  {
    metrics2 = [(BSUIDailyReadingLayer *)self metrics];
    triggerName = [metrics2 triggerName];
    v11 = [triggerName isEqualToString:triggerCopy];

    if (v11)
    {
      [(BSUIDailyReadingLayer *)self _animateProgressTodayIfNeededHonoringDelay:1];
    }
  }

  else
  {
  }
}

- (void)dynamicProgressChanged:(id)changed
{
  changedCopy = changed;
  progress = [changedCopy progress];

  if (progress)
  {
    progress2 = [changedCopy progress];
    [(BSUIDailyReadingLayer *)self setOverrideReadingTimeToday:progress2];

    if ([(BSUIDailyReadingLayer *)self _isVisible])
    {
      if (![(BSUIDailyReadingLayer *)self goalCompletedAnimationRequested])
      {
        [(BSUIDailyReadingLayer *)self _animateProgressTodayIfNeededHonoringDelay:0];
      }
    }
  }
}

- (CGRect)lastWorkingRect
{
  x = self->_lastWorkingRect.origin.x;
  y = self->_lastWorkingRect.origin.y;
  width = self->_lastWorkingRect.size.width;
  height = self->_lastWorkingRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (TUIFeedControllerHosting)feedControllerHost
{
  WeakRetained = objc_loadWeakRetained(&self->_feedControllerHost);

  return WeakRetained;
}

@end