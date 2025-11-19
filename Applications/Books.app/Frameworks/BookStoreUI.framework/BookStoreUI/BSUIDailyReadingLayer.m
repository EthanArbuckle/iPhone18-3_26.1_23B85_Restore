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
- (void)_animateArcLayer:(id)a3;
- (void)_animateProgressTodayIfNeededHonoringDelay:(BOOL)a3;
- (void)_animateTimeTextFade;
- (void)_backgroundArc;
- (void)_checkEnvironment;
- (void)_progressArc;
- (void)_setInitialTimeTextAnimate;
- (void)_setupBackgroundWithDebugBounds:(BOOL)a3;
- (void)_setupDailyReading;
- (void)_setupDynamicTimeLayerWithDebugBounds:(BOOL)a3;
- (void)_setupGoalArtwork;
- (void)_startMicaPlayer;
- (void)_updateArcLayer:(id)a3 color:(id)a4 percent:(double)a5;
- (void)_updateProgressNoAnimation;
- (void)_updateTimeTextAnimate:(BOOL)a3;
- (void)configureWithMetrics:(id)a3 timeTextYOffset:(double)a4 micaFileProvider:(id)a5;
- (void)configureWithSublayers:(id)a3;
- (void)dealloc;
- (void)didAddLayerWithFeedControllerHost:(id)a3;
- (void)dynamicProgressChanged:(id)a3;
- (void)handleTrigger:(id)a3 didChangeState:(unint64_t)a4 updateEvent:(unint64_t)a5;
- (void)setVisibleProgressToday:(double)a3;
- (void)willRemoveLayerWithFeedControllerHost:(id)a3;
@end

@implementation BSUIDailyReadingLayer

- (void)dealloc
{
  [(TUIDynamicProgress *)self->_dynamicProgress unregisterProgressObserver:self];
  v3.receiver = self;
  v3.super_class = BSUIDailyReadingLayer;
  [(BSUIDailyReadingLayer *)&v3 dealloc];
}

- (void)configureWithMetrics:(id)a3 timeTextYOffset:(double)a4 micaFileProvider:(id)a5
{
  v23 = a3;
  objc_storeStrong(&self->_metrics, a3);
  self->_timeTextYOffset = a4;
  size = CGRectZero.size;
  self->_workingRect.origin = CGRectZero.origin;
  self->_workingRect.size = size;
  v9 = [(BSUIDailyReadingLayer *)self metrics];
  v10 = [v9 triggerName];

  if (!v10)
  {
    self->_lastTriggerState = 2;
    [(BSUIDailyReadingLayer *)self _updateProgressNoAnimation];
  }

  if ([(BSUIDailyReadingMetrics *)self->_metrics clockTicks])
  {
    v11 = +[BSUITemplate manager];
    v12 = [v11 dynamicRegistry];

    v13 = +[BCReadingTimeToday kind];
    v14 = [v12 progressProviderForKind:v13];
    v15 = [v14 dynamicProgressForKind:v13 instance:0 parameters:0];
    [v15 registerProgressObserver:self];
    dynamicProgress = self->_dynamicProgress;
    self->_dynamicProgress = v15;
    v17 = v15;

    v18 = [v17 progress];
    v19 = [v18 integerValue];

    v20 = [(BSUIDailyReadingLayer *)self dynamicTimeReadToday];
    if (v19 <= v20)
    {
      v21 = v20;
    }

    else
    {
      v21 = v19;
    }

    v22 = [NSNumber numberWithInteger:v21];

    [(BSUIDailyReadingLayer *)self setOverrideReadingTimeToday:v22];
  }
}

- (void)configureWithSublayers:(id)a3
{
  v4 = a3;
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
  [v4 enumerateObjectsUsingBlock:v17];
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
  v3 = [(BSUIDailyReadingLayer *)self overrideReadingTimeToday];
  v4 = v3;
  if (v3)
  {
    [v3 floatValue];
    v6 = v5;
  }

  else
  {
    v7 = [(BSUIDailyReadingLayer *)self metrics];
    v8 = [v7 actualReadingTimeSeconds];
    [v8 floatValue];
    v6 = v9;
  }

  return v6;
}

- (double)_calculatedProgress
{
  v3 = [(BSUIDailyReadingLayer *)self dynamicStreakDayGoal];
  if (v3 < 1)
  {
    return 0.0;
  }

  v4 = v3;
  [(BSUIDailyReadingLayer *)self _actualReadingTimeSeconds];
  return v5 / v4;
}

- (double)_visibleOrActualProgress
{
  v3 = [(BSUIDailyReadingLayer *)self metrics];
  v4 = [v3 lastVisibleProgressToday];

  if (v4)
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
  v11 = [(BSUIDailyReadingLayer *)self metrics];
  v12 = [v11 progressBarWidth];
  [v12 floatValue];
  v14 = v13;

  v15 = [(BSUIDailyReadingLayer *)self metrics];
  v16 = [v15 arcWidth];
  [v16 floatValue];
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
  v24 = [(BSUIDailyReadingLayer *)self metrics];
  v25 = [v24 iconMode];

  v26 = x;
  v27 = y;
  v28 = width;
  v29 = height;
  if (v25)
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
  if (v25)
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
  v2 = [(BSUIDailyReadingLayer *)self metrics];
  v3 = [v2 progressBarWidth];
  [v3 floatValue];
  v5 = v4 * 0.5;

  return v5;
}

- (void)_updateArcLayer:(id)a3 color:(id)a4 percent:(double)a5
{
  v8 = a4;
  v9 = a3;
  [(BSUIDailyReadingLayer *)self workingRect];
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v18 = [(BSUIDailyReadingLayer *)self metrics];
  v19 = [v18 progressBarWidth];
  [v19 floatValue];
  v21 = v20;

  v22 = [(BSUIDailyReadingLayer *)self metrics];
  v23 = [v22 iconMode];

  v24 = [(BSUIDailyReadingLayer *)self metrics];
  v25 = [v24 rightToLeft];
  v26 = [v25 BOOLValue];

  v27 = v11;
  v28 = v13;
  v29 = v15;
  v30 = v17;
  if (v23)
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
  if (v26)
  {
    v36 = 4.71238898;
  }

  else
  {
    v36 = -1.57079633;
  }

  if (!v26)
  {
    v35 = 4.71238898;
  }

  v37 = -3.14159265;
  if (v26)
  {
    v38 = -6.28318531;
  }

  else
  {
    v38 = -3.14159265;
  }

  if (!v26)
  {
    v37 = 0.0;
  }

  if (v23)
  {
    v39 = v35;
  }

  else
  {
    v39 = v37;
  }

  if (!v23)
  {
    v36 = v38;
  }

  v40 = v21;
  v44 = [UIBezierPath bezierPathWithArcCenter:v26 ^ 1 radius:MidX startAngle:MidY endAngle:(v15 - v40) * 0.5 clockwise:v36, v39, v38];
  v41 = [v8 CGColor];

  [v9 setStrokeColor:v41];
  v42 = +[UIColor clearColor];
  [v9 setFillColor:{objc_msgSend(v42, "CGColor")}];

  [v9 setBounds:{v11, v13, v15, v17}];
  [v9 setFrame:{v11, v13, v15, v17}];
  [v9 setLineWidth:v40];
  [v9 setLineCap:kCALineCapRound];
  [v9 setStrokeStart:0.0];
  [v9 setStrokeEnd:a5];
  [v9 setZPosition:1.0];
  v43 = v44;
  [v9 setPath:{objc_msgSend(v44, "CGPath")}];
}

- (void)_animateArcLayer:(id)a3
{
  if (a3)
  {
    v4 = a3;
    [(BSUIDailyReadingLayer *)self _calculatedProgress];
    v6 = v5;
    v7 = [(BSUIDailyReadingLayer *)self progressArcLayer];
    [v7 setStrokeEnd:v6];

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
    [v4 addAnimation:v10 forKey:@"strokeEnd"];

    [(BSUIDailyReadingLayer *)self setVisibleProgressToday:v6];
  }
}

- (void)_backgroundArc
{
  v11 = +[UITraitCollection _currentTraitCollection];
  v3 = [(BSUIDailyReadingLayer *)self metrics];
  v4 = [v3 controlColor];
  v5 = [v4 resolvedColorWithTraitCollection:v11];

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
    v9 = [(BSUIDailyReadingLayer *)self backgroundLayer];
    v10 = [(BSUIDailyReadingLayer *)self backgroundArcLayer];
    [v9 addSublayer:v10];
  }
}

- (void)_progressArc
{
  v13 = +[UITraitCollection _currentTraitCollection];
  v3 = [(BSUIDailyReadingLayer *)self metrics];
  v4 = [v3 progressColor];
  v5 = [v4 resolvedColorWithTraitCollection:v13];

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
    v11 = [(BSUIDailyReadingLayer *)self backgroundArcLayer];
    v12 = [(BSUIDailyReadingLayer *)self progressArcLayer];
    [v11 addSublayer:v12];
  }
}

- (void)_updateProgressNoAnimation
{
  [(BSUIDailyReadingLayer *)self _calculatedProgress];
  v4 = v3;
  v5 = [(BSUIDailyReadingLayer *)self progressArcLayer];
  [v5 setStrokeEnd:v4];
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
  v3 = [(BSUIDailyReadingLayer *)self awardImageLayer];
  [v3 removeFromSuperlayer];

  [(BSUIDailyReadingLayer *)self setAwardImageLayer:0];
  [(BSUIDailyReadingLayer *)self workingRect];
  rect = v4;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = [(BSUIDailyReadingLayer *)self dynamicTimeLayer];
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
  [v11 setTransform:rect_8];

  v16 = [(BSUIDailyReadingLayer *)self dynamicTimeLayer];
  [v16 frame];
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
  v27 = [(BSUIDailyReadingLayer *)self metrics];
  if ([v27 isAX])
  {
    v28 = 22.0;
  }

  else
  {
    v28 = 16.0;
  }

  v29 = Height - v28;
  v30 = [(BSUIDailyReadingLayer *)self metrics];
  if ([v30 isAX])
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
  v34 = [(BSUIDailyReadingLayer *)self backgroundLayer];
  [v34 addSublayer:v33];

  v35 = objc_alloc_init(BSUIMicaFileProvider);
  v36 = [(BSUIDailyReadingLayer *)self micaPlayer];
  if (v36)
  {

LABEL_10:
    v40 = [(BSUIDailyReadingLayer *)self micaPlayer];
    [v40 removeFromSuperlayer];

    v41 = [[TUIMicaPlayer alloc] initWithPath:@"/mica/ic_ReadingMeter-Checkmark_58_v4~AMH.caar" retinaScale:v35 fileProvider:1.0];
    [(BSUIDailyReadingLayer *)self setMicaPlayer:v41];

    v42 = [(BSUIDailyReadingLayer *)self metrics];
    v43 = [v42 opacity];
    [v43 floatValue];
    v45 = v44;
    v46 = [(BSUIDailyReadingLayer *)self micaPlayer];
    v47 = [v46 rootLayer];
    LODWORD(v48) = v45;
    [v47 setOpacity:v48];

    v49 = [(BSUIDailyReadingLayer *)self micaPlayer];
    v50 = [(BSUIDailyReadingLayer *)self awardImageLayer];
    [v49 addToLayer:v50 onTop:1 gravity:@"resize"];

    goto LABEL_11;
  }

  v37 = [(BSUIDailyReadingLayer *)self micaPlayer];
  v38 = [v37 path];
  v39 = [v38 isEqualToString:@"/mica/ic_ReadingMeter-Checkmark_58_v4~AMH.caar"];

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
      v52 = [(BSUIDailyReadingLayer *)self micaPlayer];
      [v52 documentDuration];
      v54 = v53;
      v55 = [(BSUIDailyReadingLayer *)self micaPlayer];
      [v55 setPlaybackTime:v54];

      v56 = [(BSUIDailyReadingLayer *)self dynamicTimeLayer];
      [v56 setOpacity:0.0];

      [(BSUIDailyReadingLayer *)self setGoalCompletedAnimationRequested:1];
    }
  }
}

- (void)_setupBackgroundWithDebugBounds:(BOOL)a3
{
  v3 = a3;
  v5 = [(BSUIDailyReadingLayer *)self backgroundLayer];

  if (!v5)
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
  v16 = [(BSUIDailyReadingLayer *)self metrics];
  v17 = [v16 backgroundColor];
  -[CALayer setBackgroundColor:](self->_backgroundLayer, "setBackgroundColor:", [v17 CGColor]);

  if (v3)
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
  v3 = [(BSUIDailyReadingLayer *)self backgroundLayer];

  if (v3)
  {
    v4 = [(BSUIDailyReadingLayer *)self metrics];
    v5 = [v4 axValue];
    v6 = [v5 integerValue];

    v7 = [(BSUIDailyReadingLayer *)self lastAXValue];
    v8 = v7 != v6;
    if (v7 != v6)
    {
      [(BSUIDailyReadingLayer *)self setLastAXValue:v6];
    }

    v9 = [(BSUIDailyReadingLayer *)self dynamicStreakDayGoal];
    if ([(BSUIDailyReadingLayer *)self lastGoals]!= v9)
    {
      if (v9 >= 1)
      {
        v10 = [(BSUIDailyReadingLayer *)self dynamicProgress];
        v11 = [v10 progress];
        [v11 floatValue];
        v13 = v12;

        [(BSUIDailyReadingLayer *)self _actualReadingTimeSeconds];
        if (v14 <= v13)
        {
          v14 = v13;
        }

        [(BSUIDailyReadingLayer *)self setVisibleProgressToday:v14 / v9];
      }

      [(BSUIDailyReadingLayer *)self setLastGoals:v9];
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

    v27 = [(BSUIDailyReadingLayer *)self backgroundLayer];
    [v27 removeFromSuperlayer];

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
  v3 = [(BSUIDailyReadingLayer *)self hiddenTimeLayer];
  [v3 setHidden:1];

  v4 = [(BSUIDailyReadingLayer *)self metrics];
  v5 = [v4 iconMode];

  if ((v5 & 1) == 0)
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
    v5 = [(BSUIDailyReadingLayer *)self superlayer];
    v4 = [v5 isHidden] ^ 1;
  }

  return (lastTriggerState == 2) & v4;
}

- (void)setVisibleProgressToday:(double)a3
{
  v6 = [(BSUIDailyReadingLayer *)self metrics];
  v4 = [v6 lastVisibleProgressToday];
  v5 = [NSNumber numberWithDouble:a3];
  [v4 updateWithValueIfChanged:v5];
}

- (double)visibleProgressToday
{
  objc_opt_class();
  v3 = [(BSUIDailyReadingLayer *)self metrics];
  v4 = [v3 lastVisibleProgressToday];
  v5 = [v4 value];
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
  v3 = [(BSUIDailyReadingLayer *)self metrics];
  v4 = [v3 dynamicStreakDayGoal];
  v5 = [v4 value];
  v6 = BUDynamicCast();
  v7 = v6;
  if (v6)
  {
    v8 = v6;
  }

  else
  {
    v9 = [(BSUIDailyReadingLayer *)self metrics];
    v8 = [v9 readingGoalSeconds];
  }

  v10 = [v8 integerValue];
  return v10;
}

- (int64_t)dynamicTimeReadToday
{
  objc_opt_class();
  v3 = [(BSUIDailyReadingLayer *)self metrics];
  v4 = [v3 dynamicTimeReadToday];
  v5 = [v4 value];
  v6 = BUDynamicCast();
  v7 = v6;
  v8 = &off_39B4A0;
  if (v6)
  {
    v8 = v6;
  }

  v9 = v8;

  v10 = [v9 integerValue];
  return v10;
}

- (BOOL)dynamicCompletedReadingGoal
{
  objc_opt_class();
  v3 = [(BSUIDailyReadingLayer *)self metrics];
  v4 = [v3 dynamicCompletedReadingGoal];
  v5 = [v4 value];
  v6 = BUDynamicCast();
  v7 = v6;
  v8 = &off_39B4A0;
  if (v6)
  {
    v8 = v6;
  }

  v9 = v8;

  v10 = [v9 BOOLValue];
  return v10;
}

- (void)_setupDynamicTimeLayerWithDebugBounds:(BOOL)a3
{
  v3 = a3;
  v5 = [(BSUIDailyReadingLayer *)self metrics];
  v6 = [v5 iconMode];

  if ((v6 & 1) == 0)
  {
    v7 = [(BSUIDailyReadingLayer *)self metrics];
    v8 = [v7 timeFontSpec];
    v44 = [v8 font];

    timeTextYOffset = self->_timeTextYOffset;
    [v44 capHeight];
    v11 = timeTextYOffset + v10;
    [v44 ascender];
    v13 = v11 - v12;
    [v44 ascender];
    v15 = v14;
    [v44 capHeight];
    v17 = (v15 - v16) * 0.5;
    [v44 ascender];
    v19 = v18;
    [(CALayer *)self->_backgroundLayer frame];
    v21 = v20;
    v22 = [(BSUIDailyReadingLayer *)self dynamicTimeLayer];

    if (!v22)
    {
      v23 = objc_opt_new();
      [(BSUIDailyReadingLayer *)self setDynamicTimeLayer:v23];
    }

    v24 = v19 + v17 * 0.5;
    v25 = v13 + v17;
    v26 = +[UITraitCollection _currentTraitCollection];
    v27 = [(BSUIDailyReadingLayer *)self dynamicTimeLayer];
    [v27 setMasksToBounds:1];
    if (v3)
    {
      v28 = +[UIColor redColor];
      [v27 setBorderColor:{objc_msgSend(v28, "CGColor")}];

      [v27 setBorderWidth:0.5];
    }

    v29 = [(BSUIDailyReadingLayer *)self metrics];
    v30 = [v29 useFontFallback];

    [v27 setFrame:{0.0, v25, v21, v24}];
    [v27 setBounds:{0.0, v17, v21, v24}];
    v31 = [(BSUIDailyReadingLayer *)self metrics];
    v32 = [v31 timeFontSpec];
    v33 = [v32 font];
    [v27 setFont:v33 useFontFallback:v30];

    v34 = [(BSUIDailyReadingLayer *)self metrics];
    v35 = [v34 textColor];
    v36 = [v35 resolvedColorWithTraitCollection:v26];
    [v27 setColor:v36];

    [v27 setHeight:v24];
    [v27 setUseFontFallback:v30];
    v37 = [(BSUIDailyReadingLayer *)self metrics];
    v38 = [v37 timeSeparator];
    [v27 setTimeSeparator:v38];

    v39 = [(BSUIDailyReadingLayer *)self metrics];
    v40 = [v39 contentsScale];
    v41 = v40;
    if (!v40)
    {
      v40 = &off_39B4B8;
    }

    [v40 floatValue];
    [v27 setContentsScale:v42];

    v43 = [(BSUIDailyReadingLayer *)self backgroundLayer];
    [v43 addSublayer:v27];

    [(BSUIDailyReadingLayer *)self _setInitialTimeTextAnimate];
  }
}

- (void)_setInitialTimeTextAnimate
{
  if ([(BSUIDailyReadingLayer *)self _goalCompleted])
  {
    v3 = [(BSUIDailyReadingLayer *)self dynamicProgress];
    v4 = [v3 progress];
    [v4 floatValue];
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

    v9 = [(BSUIDailyReadingLayer *)self dynamicTimeLayer];
    v10 = v8;
    v12 = v9;
  }

  else
  {
    v11 = [(BSUIDailyReadingLayer *)self _readingTimeForVisibleOrActualProgress];
    v9 = [(BSUIDailyReadingLayer *)self dynamicTimeLayer];
    v12 = v9;
    v10 = v11;
  }

  [v9 setReadingTime:v10 animate:0];
}

- (void)_updateTimeTextAnimate:(BOOL)a3
{
  v3 = a3;
  v5 = [(BSUIDailyReadingLayer *)self overrideReadingTimeToday];

  if (v5)
  {
    v6 = [(BSUIDailyReadingLayer *)self overrideReadingTimeToday];
    v7 = [v6 integerValue];

    if (![(BSUIDailyReadingLayer *)self goalCompletedAnimationRequested])
    {
      if ([(BSUIDailyReadingLayer *)self _goalCompleted])
      {
        v8 = [(BSUIDailyReadingLayer *)self dynamicProgress];
        v9 = [v8 progress];
        [v9 floatValue];
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

        v14 = [(BSUIDailyReadingLayer *)self dynamicTimeLayer];
        v15 = v13;
        v17 = v14;
        v16 = 0;
      }

      else
      {
        v14 = [(BSUIDailyReadingLayer *)self dynamicTimeLayer];
        v17 = v14;
        v15 = v7;
        v16 = v3;
      }

      [v14 setReadingTime:v15 animate:v16];
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
  v3 = [(BSUIDailyReadingLayer *)self micaPlayer];

  if (v3)
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

- (void)_animateProgressTodayIfNeededHonoringDelay:(BOOL)a3
{
  v3 = a3;
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
    v9 = [(BSUIDailyReadingLayer *)self metrics];
    v10 = [v9 triggerDelay];
    [v10 doubleValue];
    v12 = v11;

    if (v3 && v12 > 0.0)
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

- (void)didAddLayerWithFeedControllerHost:(id)a3
{
  v10 = a3;
  [(BSUIDailyReadingLayer *)self setFeedControllerHost:?];
  v4 = [(BSUIDailyReadingLayer *)self metrics];
  v5 = [v4 triggerName];
  v6 = [v5 length];

  if (v6)
  {
    v7 = [v10 triggerStateManager];
    v8 = [(BSUIDailyReadingLayer *)self metrics];
    v9 = [v8 triggerName];
    [v7 addObserver:self forTrigger:v9];
  }
}

- (void)willRemoveLayerWithFeedControllerHost:(id)a3
{
  v10 = a3;
  v4 = [(BSUIDailyReadingLayer *)self metrics];
  v5 = [v4 triggerName];
  v6 = [v5 length];

  if (v6)
  {
    v7 = [v10 triggerStateManager];
    v8 = [(BSUIDailyReadingLayer *)self metrics];
    v9 = [v8 triggerName];
    [v7 removeObserver:self forTrigger:v9];
  }

  [(BSUIDailyReadingLayer *)self setFeedControllerHost:0];
}

- (void)handleTrigger:(id)a3 didChangeState:(unint64_t)a4 updateEvent:(unint64_t)a5
{
  v12 = a3;
  self->_lastTriggerState = a4;
  v7 = [(BSUIDailyReadingLayer *)self metrics];
  v8 = [v7 targetTriggerState];
  if (a4 && v8 == a4)
  {
    v9 = [(BSUIDailyReadingLayer *)self metrics];
    v10 = [v9 triggerName];
    v11 = [v10 isEqualToString:v12];

    if (v11)
    {
      [(BSUIDailyReadingLayer *)self _animateProgressTodayIfNeededHonoringDelay:1];
    }
  }

  else
  {
  }
}

- (void)dynamicProgressChanged:(id)a3
{
  v6 = a3;
  v4 = [v6 progress];

  if (v4)
  {
    v5 = [v6 progress];
    [(BSUIDailyReadingLayer *)self setOverrideReadingTimeToday:v5];

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