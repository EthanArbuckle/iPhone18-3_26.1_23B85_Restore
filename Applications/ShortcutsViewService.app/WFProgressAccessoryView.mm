@interface WFProgressAccessoryView
- (BOOL)isRunningFromActionButton;
- (CGSize)sizeThatFits:(CGSize)fits forLayoutMode:(int64_t)mode;
- (WFProgressAccessoryView)initWithTintColor:(id)color runningContext:(id)context;
- (void)layoutSubviews;
- (void)setActiveLayoutMode:(int64_t)mode;
- (void)setCancelAction:(id)action;
- (void)setProgressSuppressionState:(int64_t)state;
- (void)tintControlWithColor:(id)color animated:(BOOL)animated;
- (void)touchedDownCancelButton;
- (void)touchedUpCancelButton;
- (void)updateMicaViewState;
- (void)updateProgressWithValue:(double)value;
@end

@implementation WFProgressAccessoryView

- (void)touchedUpCancelButton
{
  [(WFProgressAccessoryView *)self setIsTouchingDownButton:0];

  [(WFProgressAccessoryView *)self updateMicaViewState];
}

- (void)touchedDownCancelButton
{
  [(WFProgressAccessoryView *)self setIsTouchingDownButton:1];

  [(WFProgressAccessoryView *)self updateMicaViewState];
}

- (void)setProgressSuppressionState:(int64_t)state
{
  dispatch_assert_queue_V2(&_dispatch_main_q);
  if ([(WFProgressAccessoryView *)self progressSuppressionState]!= state)
  {
    self->_progressSuppressionState = state;
    progressSuppressionTimer = [(WFProgressAccessoryView *)self progressSuppressionTimer];
    [progressSuppressionTimer invalidate];

    [(WFProgressAccessoryView *)self setProgressSuppressionTimer:0];
    if (state == 3)
    {
      [(WFProgressAccessoryView *)self setMicaViewHidden:0 animated:1];
    }

    else
    {
      if ([(WFProgressAccessoryView *)self activeLayoutMode]!= 4)
      {
        [(WFProgressAccessoryView *)self setMicaViewHidden:1 animated:0];
      }

      if ([(WFProgressAccessoryView *)self progressSuppressionState]== 1)
      {
        v8[0] = _NSConcreteStackBlock;
        v8[1] = 3221225472;
        v8[2] = sub_100002508;
        v8[3] = &unk_100010580;
        v8[4] = self;
        v6 = [NSTimer scheduledTimerWithTimeInterval:0 repeats:v8 block:1.0];
        [(WFProgressAccessoryView *)self setProgressSuppressionTimer:v6];
      }
    }

    systemApertureElementContext = [(WFProgressAccessoryView *)self systemApertureElementContext];
    [systemApertureElementContext setElementNeedsUpdate];
  }
}

- (void)updateMicaViewState
{
  activeLayoutMode = [(WFProgressAccessoryView *)self activeLayoutMode];
  [(WFProgressAccessoryView *)self lastKnownProgressValue];
  if (activeLayoutMode == 4)
  {
    if (v4 >= 1.0)
    {
      v5 = @"zoom-done";
    }

    else if ([(WFProgressAccessoryView *)self isTouchingDownButton])
    {
      v5 = @"zoom-press";
    }

    else
    {
      v5 = @"zoom";
    }
  }

  else if (v4 >= 1.0)
  {
    v5 = @"compact-done";
  }

  else
  {
    v5 = @"compact";
  }

  micaView = [(WFProgressAccessoryView *)self micaView];
  [micaView setState:v5];
}

- (void)setActiveLayoutMode:(int64_t)mode
{
  self->_activeLayoutMode = mode;
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_100002690;
  v3[3] = &unk_1000103E8;
  v3[4] = self;
  v3[5] = mode;
  dispatch_async(&_dispatch_main_q, v3);
}

- (void)updateProgressWithValue:(double)value
{
  if (![(WFProgressAccessoryView *)self hasCompleted])
  {
    micaView = [(WFProgressAccessoryView *)self micaView];
    v6 = [micaView publishedObjectWithName:@"progress fill"];

    [v6 setStrokeStart:{0.999 - dbl_100008AB0[-[WFProgressAccessoryView activeLayoutMode](self, "activeLayoutMode") == 4] * value * 0.999 / 0.999}];
    if (value <= 0.0 || value >= 1.0)
    {
      if (value >= 1.0)
      {
        [(WFProgressAccessoryView *)self setHasCompleted:1];
      }

      if ([(WFProgressAccessoryView *)self progressSuppressionState]!= 1)
      {
        goto LABEL_11;
      }

      if (value > 0.0)
      {
        [(WFProgressAccessoryView *)self setProgressSuppressionState:3];
      }

      if (value >= 1.0)
      {
        v7 = +[UIColor whiteColor];
        [(WFProgressAccessoryView *)self tintControlWithColor:v7 animated:0];

        v8 = dispatch_time(0, 150000000);
        v9[0] = _NSConcreteStackBlock;
        v9[1] = 3221225472;
        v9[2] = sub_1000028F4;
        v9[3] = &unk_1000103E8;
        v9[4] = self;
        *&v9[5] = value;
        dispatch_after(v8, &_dispatch_main_q, v9);
      }

      else
      {
LABEL_11:
        [(WFProgressAccessoryView *)self setLastKnownProgressValue:value];
        [(WFProgressAccessoryView *)self updateMicaViewState];
      }
    }
  }
}

- (void)tintControlWithColor:(id)color animated:(BOOL)animated
{
  animatedCopy = animated;
  colorCopy = color;
  [(WFProgressAccessoryView *)self lastKnownProgressValue];
  if (v7 < 1.0)
  {
    micaView = [(WFProgressAccessoryView *)self micaView];
    v9 = [micaView publishedObjectWithName:@"stop button"];

    micaView2 = [(WFProgressAccessoryView *)self micaView];
    v11 = [micaView2 publishedObjectWithName:@"back fill"];

    micaView3 = [(WFProgressAccessoryView *)self micaView];
    v13 = [micaView3 publishedObjectWithName:@"progress fill"];

    v25 = 0.0;
    v26 = 0.0;
    v23 = 0;
    v24 = 0.0;
    [colorCopy getRed:&v26 green:&v25 blue:&v24 alpha:&v23];
    v14 = [UIColor colorWithRed:v26 green:v25 blue:v24 alpha:0.37];
    v15 = v14;
    if (animatedCopy)
    {
      strokeColor = [v11 strokeColor];
      CFRetain(strokeColor);
      [v11 setStrokeColor:{objc_msgSend(v15, "CGColor")}];
      v17 = [CABasicAnimation animationWithKeyPath:@"strokeColor"];
      [v17 setFromValue:strokeColor];
      [v17 setToValue:{objc_msgSend(v15, "CGColor")}];
      [v17 setDuration:0.300000012];
      [v17 setFillMode:kCAFillModeForwards];
      [v11 addAnimation:v17 forKey:@"strokeColor"];
      CFRelease(strokeColor);
      strokeColor2 = [v13 strokeColor];
      CFRetain(strokeColor2);
      [v13 setStrokeColor:{objc_msgSend(colorCopy, "CGColor")}];
      v19 = [CABasicAnimation animationWithKeyPath:@"strokeColor"];
      [v19 setFromValue:strokeColor2];
      [v19 setToValue:{objc_msgSend(colorCopy, "CGColor")}];
      [v19 setDuration:0.300000012];
      [v19 setFillMode:kCAFillModeForwards];
      [v13 addAnimation:v19 forKey:@"strokeColor"];
      CFRelease(strokeColor2);
      v20[0] = _NSConcreteStackBlock;
      v20[1] = 3221225472;
      v20[2] = sub_100002C94;
      v20[3] = &unk_1000103C0;
      v21 = v9;
      v22 = colorCopy;
      [UIView animateWithDuration:0 delay:v20 options:0 animations:2.0 completion:0.15];
    }

    else
    {
      [v11 setStrokeColor:{objc_msgSend(v14, "CGColor")}];
      [v13 setStrokeColor:{objc_msgSend(colorCopy, "CGColor")}];
      [v9 setBackgroundColor:{objc_msgSend(colorCopy, "CGColor")}];
    }
  }
}

- (CGSize)sizeThatFits:(CGSize)fits forLayoutMode:(int64_t)mode
{
  if (mode == 4)
  {
    width = 50.0;
    height = 50.0;
  }

  else if ([(WFProgressAccessoryView *)self progressSuppressionState:fits.width]== 3)
  {
    height = 24.0;
    width = 23.0;
  }

  else
  {
    width = CGSizeZero.width;
    height = CGSizeZero.height;
  }

  result.height = height;
  result.width = width;
  return result;
}

- (BOOL)isRunningFromActionButton
{
  runningContext = [(WFProgressAccessoryView *)self runningContext];
  runSource = [runningContext runSource];
  v4 = [runSource isEqualToString:WFWorkflowRunSourceActionButton];

  return v4;
}

- (void)setCancelAction:(id)action
{
  actionCopy = action;
  if (actionCopy || !self->_cancelAction)
  {
    cancelButton = [(WFProgressAccessoryView *)self cancelButton];
    [cancelButton addAction:actionCopy forControlEvents:64];

    v5 = actionCopy;
    cancelAction = self->_cancelAction;
    self->_cancelAction = v5;
  }

  else
  {
    cancelButton2 = [(WFProgressAccessoryView *)self cancelButton];
    [cancelButton2 removeAction:self->_cancelAction forControlEvents:64];

    cancelAction = self->_cancelAction;
    self->_cancelAction = 0;
  }
}

- (void)layoutSubviews
{
  v16.receiver = self;
  v16.super_class = WFProgressAccessoryView;
  [(WFProgressAccessoryView *)&v16 layoutSubviews];
  traitCollection = [(WFProgressAccessoryView *)self traitCollection];
  [traitCollection displayScale];
  v5 = 1.0 / v4;

  [(WFProgressAccessoryView *)self bounds];
  v18 = CGRectOffset(v17, v5, 0.0);
  x = v18.origin.x;
  y = v18.origin.y;
  width = v18.size.width;
  height = v18.size.height;
  micaView = [(WFProgressAccessoryView *)self micaView];
  [micaView setFrame:{x, y, width, height}];

  [(WFProgressAccessoryView *)self bounds];
  v20 = CGRectOffset(v19, v5, 0.0);
  v11 = v20.origin.x;
  v12 = v20.origin.y;
  v13 = v20.size.width;
  v14 = v20.size.height;
  cancelButton = [(WFProgressAccessoryView *)self cancelButton];
  [cancelButton setFrame:{v11, v12, v13, v14}];
}

- (WFProgressAccessoryView)initWithTintColor:(id)color runningContext:(id)context
{
  colorCopy = color;
  contextCopy = context;
  v23.receiver = self;
  v23.super_class = WFProgressAccessoryView;
  v8 = [(WFProgressAccessoryView *)&v23 initWithFrame:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
  if (v8)
  {
    v9 = [NSBundle bundleForClass:objc_opt_class()];
    v10 = [[BSUICAPackageView alloc] initWithPackageName:@"zoomy-progress" inBundle:v9];
    [v10 setState:@"compact"];
    micaView = v8->_micaView;
    v8->_micaView = v10;
    v12 = v10;

    v13 = +[UIButtonConfiguration plainButtonConfiguration];
    v14 = [UIButton buttonWithConfiguration:v13 primaryAction:0];
    [(UIButton *)v14 addTarget:v8 action:"touchedDownCancelButton" forControlEvents:17];
    [(UIButton *)v14 addTarget:v8 action:"touchedUpCancelButton" forControlEvents:480];
    cancelButton = v8->_cancelButton;
    v8->_cancelButton = v14;
    v16 = v14;

    objc_storeStrong(&v8->_runningContext, context);
    [(WFProgressAccessoryView *)v8 addSubview:v12];
    [(WFProgressAccessoryView *)v8 addSubview:v16];
    [(WFProgressAccessoryView *)v8 tintControlWithColor:colorCopy animated:0];
    [(WFProgressAccessoryView *)v8 updateProgressWithValue:0.0];
    v24[0] = WFWorkflowRunKindAppShortcut;
    v24[1] = WFWorkflowRunKindAppIntent;
    v24[2] = WFWorkflowRunKindContextualAction;
    v24[3] = WFWorkflowRunKindINShortcut;
    v17 = [NSArray arrayWithObjects:v24 count:4];

    runningContext = [(WFProgressAccessoryView *)v8 runningContext];
    runKind = [runningContext runKind];
    LODWORD(cancelButton) = [v17 containsObject:runKind];

    if (cancelButton)
    {
      v20 = 1;
    }

    else
    {
      v20 = 3;
    }

    [(WFProgressAccessoryView *)v8 setProgressSuppressionState:v20];
    v21 = v8;
  }

  return v8;
}

@end