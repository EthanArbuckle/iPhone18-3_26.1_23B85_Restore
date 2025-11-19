@interface BSUIWeeklyProgressView
+ (id)renderModelWithIdentifier:(id)a3 metrics:(id)a4;
- (BOOL)_updateEnvironment;
- (BSUIWeeklyProgressView)initWithFrame:(CGRect)a3;
- (NSString)description;
- (_BSUIWeeklyProgressLayoutInfo)todayLayoutInfo;
- (_BSUIWeeklyProgressLayoutInfo)todaySeparatorLayoutInfo;
- (double)visibleProgressToday;
- (void)_animateProgressTodayIfNeeded;
- (void)_calculateComponents;
- (void)_calculateLayout;
- (void)_configureWithModel:(id)a3;
- (void)_setupBackground;
- (void)_setupViews;
- (void)_setupWeeklyProgressWithUpdateMode:(unint64_t)a3;
- (void)_traitCollectionDidChange:(id)a3 previousTraitCollection:(id)a4;
- (void)applyLayoutAttributes:(id)a3;
- (void)dealloc;
- (void)dynamicProgressChanged:(id)a3;
- (void)handleTrigger:(id)a3 didChangeState:(unint64_t)a4 updateEvent:(unint64_t)a5;
- (void)setVisibleProgressToday:(double)a3;
- (void)viewDidEndDisplay;
- (void)viewWillDisplay;
@end

@implementation BSUIWeeklyProgressView

- (BSUIWeeklyProgressView)initWithFrame:(CGRect)a3
{
  v12.receiver = self;
  v12.super_class = BSUIWeeklyProgressView;
  v3 = [(BSUIWeeklyProgressView *)&v12 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = +[BSUITemplate manager];
    v5 = [v4 dynamicRegistry];

    v6 = +[BCReadingTimeToday kind];
    v7 = [v5 progressProviderForKind:v6];
    v8 = [v7 dynamicProgressForKind:v6 instance:0 parameters:0];
    [v8 registerProgressObserver:v3];
    objc_storeStrong(&v3->_dynamicProgress, v8);
    v9 = +[UITraitCollection bc_allAPITraits];
    v10 = [(BSUIWeeklyProgressView *)v3 registerForTraitChanges:v9 withAction:"_traitCollectionDidChange:previousTraitCollection:"];
  }

  return v3;
}

- (void)dealloc
{
  [(TUIDynamicProgress *)self->_dynamicProgress unregisterProgressObserver:self];
  v3.receiver = self;
  v3.super_class = BSUIWeeklyProgressView;
  [(BSUIWeeklyProgressView *)&v3 dealloc];
}

+ (id)renderModelWithIdentifier:(id)a3 metrics:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = objc_alloc_init(_BSUIWeeklyProgressRenderModel);
  [(_BSUIWeeklyProgressRenderModel *)v7 setMetrics:v5];

  v8 = [[TUIRenderModelView alloc] initWithReuseIdentifier:@"BSUIReuseIdentifierWeeklyProgressView" identifier:v6 submodel:v7];

  return v8;
}

- (void)viewWillDisplay
{
  v9.receiver = self;
  v9.super_class = BSUIWeeklyProgressView;
  [(BSUIWeeklyProgressView *)&v9 viewWillDisplay];
  v3 = [(BSUIWeeklyProgressView *)self layer];
  [v3 setMasksToBounds:0];

  v4 = [(BSUIWeeklyProgressView *)self backgroundLayer];
  [v4 setMasksToBounds:0];

  v5 = [(_BSUIWeeklyProgressRenderModel *)self->_renderModel metrics];
  v6 = [v5 triggerName];

  if ([v6 length])
  {
    v7 = [(BSUIWeeklyProgressView *)self feedControllerHost];
    v8 = [v7 triggerStateManager];
    [v8 addObserver:self forTrigger:v6];
  }
}

- (void)viewDidEndDisplay
{
  v7.receiver = self;
  v7.super_class = BSUIWeeklyProgressView;
  [(BSUIWeeklyProgressView *)&v7 viewDidEndDisplay];
  v3 = [(_BSUIWeeklyProgressRenderModel *)self->_renderModel metrics];
  v4 = [v3 triggerName];

  if ([v4 length])
  {
    v5 = [(BSUIWeeklyProgressView *)self feedControllerHost];
    v6 = [v5 triggerStateManager];
    [v6 removeObserver:self forTrigger:v4];
  }
}

- (void)_traitCollectionDidChange:(id)a3 previousTraitCollection:(id)a4
{
  v5 = [a4 userInterfaceStyle];
  v6 = [(BSUIWeeklyProgressView *)self traitCollection];
  v7 = [v6 userInterfaceStyle];

  if (v5 != v7)
  {

    [(BSUIWeeklyProgressView *)self _setupWeeklyProgressWithUpdateMode:0];
  }
}

- (void)applyLayoutAttributes:(id)a3
{
  v7.receiver = self;
  v7.super_class = BSUIWeeklyProgressView;
  v4 = a3;
  [(BSUIWeeklyProgressView *)&v7 applyLayoutAttributes:v4];
  v5 = [v4 renderModel];

  v6 = [v5 submodel];
  [(BSUIWeeklyProgressView *)self _configureWithModel:v6];
}

- (void)_configureWithModel:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (!self->_renderModel)
  {
    goto LABEL_5;
  }

  progressToday = self->_progressToday;
  v7 = [(_BSUIWeeklyProgressRenderModel *)v4 metrics];
  [v7 progressToday];
  if (progressToday == v8)
  {

LABEL_5:
    v11 = 0;
    goto LABEL_6;
  }

  v9 = fabs(v8 * 0.000000999999997);
  v10 = vabdd_f64(progressToday, v8);

  if (v10 < v9)
  {
    goto LABEL_5;
  }

  v11 = 1;
LABEL_6:
  renderModel = self->_renderModel;
  self->_renderModel = v5;
  v13 = v5;

  v14 = [(_BSUIWeeklyProgressRenderModel *)v13 metrics];
  metrics = self->_metrics;
  self->_metrics = v14;

  v16 = [(BSUIWeeklyProgressMetrics *)self->_metrics days];
  days = self->_days;
  self->_days = v16;

  self->_runningStreakFromPreviousWeek = [(BSUIWeeklyProgressMetrics *)self->_metrics isRunningStreak];
  [(BSUIWeeklyProgressMetrics *)self->_metrics progressToday];
  self->_progressToday = v18;
  v19 = [(BSUIWeeklyProgressMetrics *)self->_metrics lastVisibleProgressToday];
  lastVisibleProgressToday = self->_lastVisibleProgressToday;
  self->_lastVisibleProgressToday = v19;

  if ([(BSUIWeeklyProgressView *)self _updateEnvironment])
  {
    v21 = 0;
  }

  else
  {
    v21 = v11;
  }

  [(BSUIWeeklyProgressView *)self _setupWeeklyProgressWithUpdateMode:v21];
  v22 = [(_BSUIWeeklyProgressRenderModel *)self->_renderModel metrics];

  v26 = [v22 triggerName];

  if ([v26 length])
  {
    v23 = [(BSUIWeeklyProgressView *)self superview];

    if (v23)
    {
      v24 = [(BSUIWeeklyProgressView *)self feedControllerHost];
      v25 = [v24 triggerStateManager];
      [v25 addObserver:self forTrigger:v26];
    }
  }
}

- (void)_calculateComponents
{
  v3 = [(BSUIWeeklyProgressView *)self days];
  v4 = [v3 count];

  if (v4 < 1)
  {
    v5 = 0;
  }

  else
  {
    v5 = [NSMutableArray arrayWithCapacity:(2 * v4) | 1];
    v6 = [(BSUIWeeklyProgressView *)self runningStreakFromPreviousWeek];
    v7 = objc_opt_new();
    v8 = v7;
    if (v6)
    {
      v9 = 6;
    }

    else
    {
      v9 = 3;
    }

    if (v6)
    {
      v10 = 1.0;
    }

    else
    {
      v10 = 0.0;
    }

    [v7 setLayoutType:v9];
    v11 = [BSUIProgressSeparatorController alloc];
    [v8 frame];
    v12 = [(BSUIProgressSeparatorController *)v11 initWithProgressView:self frame:?];
    [v8 setSeparator:v12];

    [v5 addObject:v8];
    v13 = objc_opt_new();
    [v13 setPercentComplete:v10];
    [v13 setLayoutType:0];
    v56 = 0u;
    v57 = 0u;
    v54 = 0u;
    v55 = 0u;
    obj = [(BSUIWeeklyProgressView *)self days];
    v53 = [obj countByEnumeratingWithState:&v54 objects:v58 count:16];
    if (v53)
    {
      v14 = 0;
      v15 = 0;
      v52 = *v55;
      while (1)
      {
        for (i = 0; i != v53; i = i + 1)
        {
          v17 = v13;
          v18 = v8;
          v19 = v15;
          if (*v55 != v52)
          {
            objc_enumerationMutation(obj);
          }

          v20 = *(*(&v54 + 1) + 8 * i);
          v21 = objc_opt_new();
          v22 = [v20 text];
          [v21 setDayLabel:v22];

          [v21 setLayoutType:{objc_msgSend(v20, "type")}];
          if ([v21 layoutType] == &dword_0 + 1)
          {
            [(BSUIWeeklyProgressView *)self visibleProgressToday];
          }

          else
          {
            [v20 progress];
          }

          [v21 setPercentComplete:?];
          v23 = [BSUIProgressSingleDayController alloc];
          [v21 frame];
          v25 = v24;
          v27 = v26;
          v29 = v28;
          v31 = v30;
          [v21 percentComplete];
          v33 = v32;
          v34 = [v21 dayLabel];
          v15 = [(BSUIProgressSingleDayController *)v23 initWithProgressView:self frame:v34 progress:v25 label:v27, v29, v31, v33];

          [v21 setDay:v15];
          [v5 addObject:v21];
          [v17 percentComplete];
          if (v35 < 1.0)
          {
LABEL_17:
            v36 = 3;
LABEL_24:
            [v18 setLayoutType:v36];
            goto LABEL_25;
          }

          [v21 percentComplete];
          if (v37 >= 1.0)
          {
            if ([v18 layoutType] == &dword_4 + 2)
            {
              v36 = 7;
            }

            else
            {
              v36 = 5;
            }

            goto LABEL_24;
          }

          if ([v21 layoutType] != &dword_0 + 1)
          {
            goto LABEL_17;
          }

LABEL_25:
          if ([v21 layoutType] == &dword_0 + 1)
          {
            [(BSUIWeeklyProgressView *)self setTodayLayoutInfo:v21];
            [(BSUIWeeklyProgressView *)self setTodaySeparatorLayoutInfo:v18];
          }

          ++v14;
          v13 = v21;

          v38 = [(BSUIWeeklyProgressView *)self days];
          v39 = [v38 count];

          v40 = [(BSUIWeeklyProgressView *)self shouldShowTrailingSpacerLine];
          v8 = objc_opt_new();
          v41 = v14 == v39;
          if (v14 == v39 && v40)
          {
            [v13 percentComplete];
            v41 = v42 < 1.0;
          }

          if (v41)
          {
            v43 = 3;
          }

          else
          {
            v43 = 4;
          }

          [v8 setLayoutType:v43];
          v44 = [BSUIProgressSeparatorController alloc];
          [v8 frame];
          v45 = [(BSUIProgressSeparatorController *)v44 initWithProgressView:self frame:?];
          [v8 setSeparator:v45];

          [v5 addObject:v8];
        }

        v53 = [obj countByEnumeratingWithState:&v54 objects:v58 count:16];
        if (!v53)
        {

          break;
        }
      }
    }
  }

  v46 = [(BSUIWeeklyProgressView *)self metrics];
  v47 = [v46 rightToLeft];
  v48 = [v47 BOOLValue];

  if (v48)
  {
    v49 = [v5 reverseObjectEnumerator];
    v50 = [v49 allObjects];
    [(BSUIWeeklyProgressView *)self setLayoutInfosToDisplay:v50];
  }

  else
  {
    [(BSUIWeeklyProgressView *)self setLayoutInfosToDisplay:v5];
  }
}

- (void)_calculateLayout
{
  v3 = [(BSUIWeeklyProgressView *)self days];
  v4 = [v3 count];

  [(BSUIWeeklyProgressView *)self bounds];
  Width = CGRectGetWidth(v36);
  [(BSUIWeeklyProgressView *)self bounds];
  Height = CGRectGetHeight(v37);
  [(BSUIWeeklyProgressView *)self bounds];
  MidY = CGRectGetMidY(v38);
  v7 = [(BSUIWeeklyProgressView *)self metrics];
  v8 = [v7 spacerWidth];
  [v8 floatValue];
  v10 = v9;

  v11 = [(BSUIWeeklyProgressView *)self metrics];
  v12 = [v11 spacerHeight];
  [v12 floatValue];
  v14 = v13;

  v15 = floor((Width - (v4 + 1) * v10) / v4);
  if (v15 <= Height)
  {
    v16 = v10;
  }

  else
  {
    v16 = v15 - Height + v10;
  }

  v33 = 0u;
  v34 = 0u;
  if (v15 <= Height)
  {
    v17 = v15;
  }

  else
  {
    v17 = Height;
  }

  v31 = 0uLL;
  v32 = 0uLL;
  v18 = [(BSUIWeeklyProgressView *)self layoutInfosToDisplay];
  v19 = [v18 countByEnumeratingWithState:&v31 objects:v35 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = v14;
    v22 = *v32;
    v23 = 0.0;
    do
    {
      v24 = 0;
      v25 = v23;
      do
      {
        if (*v32 != v22)
        {
          objc_enumerationMutation(v18);
        }

        v26 = *(*(&v31 + 1) + 8 * v24);
        v27 = [v26 day];

        if (v27)
        {
          v28 = v17;
        }

        else
        {
          v28 = v16;
        }

        if (v27)
        {
          v29 = v17;
        }

        else
        {
          v29 = v21;
        }

        v39.origin.x = v25;
        v39.origin.y = MidY + v29 * -0.5;
        v39.size.width = v28;
        v39.size.height = v29;
        v23 = v25 + CGRectGetWidth(v39);
        [v26 setFrame:{v25, MidY + v29 * -0.5, v28, v29}];
        v24 = v24 + 1;
        v25 = v23;
      }

      while (v20 != v24);
      v20 = [v18 countByEnumeratingWithState:&v31 objects:v35 count:16];
    }

    while (v20);
  }
}

- (void)_setupViews
{
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v2 = [(BSUIWeeklyProgressView *)self layoutInfosToDisplay];
  v3 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v11;
    do
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v11 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v10 + 1) + 8 * i);
        v8 = [v7 day];
        if (v8)
        {
          [v8 configureWithType:{objc_msgSend(v7, "layoutType")}];
        }

        v9 = [v7 separator];
        if (v9)
        {
          [v9 configureWithType:{objc_msgSend(v7, "layoutType")}];
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v4);
  }
}

- (void)_setupBackground
{
  v3 = [(BSUIWeeklyProgressView *)self backgroundLayer];

  if (!v3)
  {
    v4 = +[CALayer layer];
    backgroundLayer = self->_backgroundLayer;
    self->_backgroundLayer = v4;
  }

  [(BSUIWeeklyProgressView *)self bounds];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  [(CALayer *)self->_backgroundLayer setBounds:?];
  [(CALayer *)self->_backgroundLayer setFrame:v7, v9, v11, v13];
  v14 = [(BSUIWeeklyProgressView *)self backgroundColor];
  -[CALayer setBackgroundColor:](self->_backgroundLayer, "setBackgroundColor:", [v14 CGColor]);

  if (self->_debugBounds)
  {
    v15 = +[UIColor blueColor];
    -[CALayer setBorderColor:](self->_backgroundLayer, "setBorderColor:", [v15 CGColor]);

    [(CALayer *)self->_backgroundLayer setBorderWidth:0.5];
  }

  [(CALayer *)self->_backgroundLayer setMasksToBounds:1];
  v16 = [(BSUIWeeklyProgressView *)self layer];
  [v16 addSublayer:self->_backgroundLayer];
}

- (BOOL)_updateEnvironment
{
  v3 = [(BSUIWeeklyProgressView *)self metrics];
  v4 = [v3 axValue];
  v5 = [v4 integerValue];

  v6 = [(BSUIWeeklyProgressView *)self lastAXValue];
  v7 = v6 != v5;
  if (v6 != v5)
  {
    [(BSUIWeeklyProgressView *)self setLastAXValue:v5];
  }

  v8 = [(BSUIWeeklyProgressView *)self metrics];
  v9 = [v8 currentDayShortString];

  v10 = [(BSUIWeeklyProgressView *)self dateOfLastDay];
  if (!v10 || (v11 = v10, -[BSUIWeeklyProgressView dateOfLastDay](self, "dateOfLastDay"), v12 = objc_claimAutoreleasedReturnValue(), v13 = [v9 isEqualToString:v12], v12, v11, (v13 & 1) == 0))
  {
    v14 = [(BSUIWeeklyProgressView *)self dateOfLastDay];

    if (v14 && v9)
    {
      v15 = [(BSUIWeeklyProgressView *)self metrics];
      [v15 progressToday];
      v17 = v16;

      [(BSUIWeeklyProgressView *)self setVisibleProgressToday:v17];
    }

    [(BSUIWeeklyProgressView *)self setDateOfLastDay:v9];
    v7 = 1;
  }

  return v7;
}

- (void)_setupWeeklyProgressWithUpdateMode:(unint64_t)a3
{
  if (a3 == 1)
  {
    if ([(BSUIWeeklyProgressView *)self _isVisible])
    {

      [(BSUIWeeklyProgressView *)self _animateProgressTodayIfNeeded];
    }
  }

  else if (!a3)
  {
    [(CALayer *)self->_backgroundLayer removeFromSuperlayer];
    backgroundLayer = self->_backgroundLayer;
    self->_backgroundLayer = 0;

    layoutInfosToDisplay = self->_layoutInfosToDisplay;
    self->_layoutInfosToDisplay = 0;

    [(BSUIWeeklyProgressView *)self _setupBackground];
    [(BSUIWeeklyProgressView *)self _calculateComponents];
    [(BSUIWeeklyProgressView *)self _calculateLayout];

    [(BSUIWeeklyProgressView *)self _setupViews];
  }
}

- (double)visibleProgressToday
{
  objc_opt_class();
  v3 = [(BSUIDynamicValue *)self->_lastVisibleProgressToday value];
  v4 = BUDynamicCast();
  v5 = v4;
  v6 = &off_39B458;
  if (v4)
  {
    v6 = v4;
  }

  v7 = v6;

  [v7 floatValue];
  v9 = v8;

  return v9;
}

- (void)setVisibleProgressToday:(double)a3
{
  lastVisibleProgressToday = self->_lastVisibleProgressToday;
  v4 = [NSNumber numberWithDouble:a3];
  [(BSUIDynamicValue *)lastVisibleProgressToday updateWithValueIfChanged:v4];
}

- (void)_animateProgressTodayIfNeeded
{
  [(BSUIWeeklyProgressView *)self visibleProgressToday];
  v4 = v3;
  [(BSUIWeeklyProgressView *)self progressToday];
  v6 = v5;
  WeakRetained = objc_loadWeakRetained(&self->_todayLayoutInfo);
  v12 = [WeakRetained day];

  [v12 progress];
  if (v4 == v6)
  {
    if (v6 == v8 || v12 == 0)
    {
      goto LABEL_4;
    }
  }

  else if (!v12)
  {
    goto LABEL_4;
  }

  v9 = [(BSUIWeeklyProgressView *)self todaySeparatorLayoutInfo];
  v10 = [v9 separator];
  [v10 updateProgress:1 animate:v6];

  [(BSUIWeeklyProgressView *)self setVisibleProgressToday:v6];
  [v12 updateProgress:1 animate:v6];
LABEL_4:
}

- (void)handleTrigger:(id)a3 didChangeState:(unint64_t)a4 updateEvent:(unint64_t)a5
{
  v7 = a3;
  self->_lastTriggerState = a4;
  v8 = [(BSUIWeeklyProgressView *)self metrics];
  v9 = [v8 targetTriggerState];
  if (a4 && v9 == a4)
  {
    v10 = [(BSUIWeeklyProgressView *)self metrics];
    v11 = [v10 triggerName];
    v12 = [v11 isEqualToString:v7];

    if (v12)
    {
      v13 = [(BSUIWeeklyProgressView *)self metrics];
      v14 = [v13 triggerDelay];
      [v14 doubleValue];
      v16 = v15;

      if (v16 <= 0.0)
      {
        [(BSUIWeeklyProgressView *)self _animateProgressTodayIfNeeded];
      }

      else
      {
        v17 = dispatch_time(0, (v16 * 1000000000.0));
        block[0] = _NSConcreteStackBlock;
        block[1] = 3221225472;
        block[2] = sub_34784;
        block[3] = &unk_3873D8;
        block[4] = self;
        dispatch_after(v17, &_dispatch_main_q, block);
      }
    }
  }

  else
  {
  }
}

- (void)dynamicProgressChanged:(id)a3
{
  v4 = a3;
  v5 = [(BSUIWeeklyProgressView *)self metrics];
  v6 = [v5 dailyReadingGoal];

  if (v6)
  {
    v7 = [v4 progress];
    [v7 floatValue];
    v9 = v8;
    v10 = [(BSUIWeeklyProgressView *)self metrics];
    -[BSUIWeeklyProgressView setProgressToday:](self, "setProgressToday:", (v9 / [v10 dailyReadingGoal]));

    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_34890;
    block[3] = &unk_3873D8;
    block[4] = self;
    dispatch_async(&_dispatch_main_q, block);
  }
}

- (NSString)description
{
  v3 = objc_opt_class();
  [(BSUIWeeklyProgressView *)self frame];
  v4 = NSStringFromCGRect(v9);
  v5 = [(BSUIWeeklyProgressView *)self layoutInfosToDisplay];
  v6 = [NSMutableString stringWithFormat:@"%@: %p frame=%@, layoutType: %@", v3, self, v4, v5];

  return v6;
}

- (_BSUIWeeklyProgressLayoutInfo)todayLayoutInfo
{
  WeakRetained = objc_loadWeakRetained(&self->_todayLayoutInfo);

  return WeakRetained;
}

- (_BSUIWeeklyProgressLayoutInfo)todaySeparatorLayoutInfo
{
  WeakRetained = objc_loadWeakRetained(&self->_todaySeparatorLayoutInfo);

  return WeakRetained;
}

@end