@interface WFProgressAccessoryView
- (BOOL)isRunningFromActionButton;
- (CGSize)sizeThatFits:(CGSize)a3 forLayoutMode:(int64_t)a4;
- (WFProgressAccessoryView)initWithTintColor:(id)a3 runningContext:(id)a4;
- (void)layoutSubviews;
- (void)setActiveLayoutMode:(int64_t)a3;
- (void)setCancelAction:(id)a3;
- (void)setProgressSuppressionState:(int64_t)a3;
- (void)tintControlWithColor:(id)a3 animated:(BOOL)a4;
- (void)touchedDownCancelButton;
- (void)touchedUpCancelButton;
- (void)updateMicaViewState;
- (void)updateProgressWithValue:(double)a3;
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

- (void)setProgressSuppressionState:(int64_t)a3
{
  dispatch_assert_queue_V2(&_dispatch_main_q);
  if ([(WFProgressAccessoryView *)self progressSuppressionState]!= a3)
  {
    self->_progressSuppressionState = a3;
    v5 = [(WFProgressAccessoryView *)self progressSuppressionTimer];
    [v5 invalidate];

    [(WFProgressAccessoryView *)self setProgressSuppressionTimer:0];
    if (a3 == 3)
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
        v8[2] = sub_1000032A8;
        v8[3] = &unk_100028750;
        v8[4] = self;
        v6 = [NSTimer scheduledTimerWithTimeInterval:0 repeats:v8 block:1.0];
        [(WFProgressAccessoryView *)self setProgressSuppressionTimer:v6];
      }
    }

    v7 = [(WFProgressAccessoryView *)self systemApertureElementContext];
    [v7 setElementNeedsUpdate];
  }
}

- (void)updateMicaViewState
{
  v3 = [(WFProgressAccessoryView *)self activeLayoutMode];
  [(WFProgressAccessoryView *)self lastKnownProgressValue];
  if (v3 == 4)
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

  v6 = [(WFProgressAccessoryView *)self micaView];
  [v6 setState:v5];
}

- (void)setActiveLayoutMode:(int64_t)a3
{
  self->_activeLayoutMode = a3;
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_100003430;
  v3[3] = &unk_1000286D8;
  v3[4] = self;
  v3[5] = a3;
  dispatch_async(&_dispatch_main_q, v3);
}

- (void)updateProgressWithValue:(double)a3
{
  if (![(WFProgressAccessoryView *)self hasCompleted])
  {
    v5 = [(WFProgressAccessoryView *)self micaView];
    v6 = [v5 publishedObjectWithName:@"progress fill"];

    [v6 setStrokeStart:{0.999 - dbl_100019660[-[WFProgressAccessoryView activeLayoutMode](self, "activeLayoutMode") == 4] * a3 * 0.999 / 0.999}];
    if (a3 <= 0.0 || a3 >= 1.0)
    {
      if (a3 >= 1.0)
      {
        [(WFProgressAccessoryView *)self setHasCompleted:1];
      }

      if ([(WFProgressAccessoryView *)self progressSuppressionState]!= 1)
      {
        goto LABEL_11;
      }

      if (a3 > 0.0)
      {
        [(WFProgressAccessoryView *)self setProgressSuppressionState:3];
      }

      if (a3 >= 1.0)
      {
        v7 = +[UIColor whiteColor];
        [(WFProgressAccessoryView *)self tintControlWithColor:v7 animated:0];

        v8 = dispatch_time(0, 150000000);
        v9[0] = _NSConcreteStackBlock;
        v9[1] = 3221225472;
        v9[2] = sub_100003694;
        v9[3] = &unk_1000286D8;
        v9[4] = self;
        *&v9[5] = a3;
        dispatch_after(v8, &_dispatch_main_q, v9);
      }

      else
      {
LABEL_11:
        [(WFProgressAccessoryView *)self setLastKnownProgressValue:a3];
        [(WFProgressAccessoryView *)self updateMicaViewState];
      }
    }
  }
}

- (void)tintControlWithColor:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  [(WFProgressAccessoryView *)self lastKnownProgressValue];
  if (v7 < 1.0)
  {
    v8 = [(WFProgressAccessoryView *)self micaView];
    v9 = [v8 publishedObjectWithName:@"stop button"];

    v10 = [(WFProgressAccessoryView *)self micaView];
    v11 = [v10 publishedObjectWithName:@"back fill"];

    v12 = [(WFProgressAccessoryView *)self micaView];
    v13 = [v12 publishedObjectWithName:@"progress fill"];

    v25 = 0.0;
    v26 = 0.0;
    v23 = 0;
    v24 = 0.0;
    [v6 getRed:&v26 green:&v25 blue:&v24 alpha:&v23];
    v14 = [UIColor colorWithRed:v26 green:v25 blue:v24 alpha:0.37];
    v15 = v14;
    if (v4)
    {
      v16 = [v11 strokeColor];
      CFRetain(v16);
      [v11 setStrokeColor:{objc_msgSend(v15, "CGColor")}];
      v17 = [CABasicAnimation animationWithKeyPath:@"strokeColor"];
      [v17 setFromValue:v16];
      [v17 setToValue:{objc_msgSend(v15, "CGColor")}];
      [v17 setDuration:0.300000012];
      [v17 setFillMode:kCAFillModeForwards];
      [v11 addAnimation:v17 forKey:@"strokeColor"];
      CFRelease(v16);
      v18 = [v13 strokeColor];
      CFRetain(v18);
      [v13 setStrokeColor:{objc_msgSend(v6, "CGColor")}];
      v19 = [CABasicAnimation animationWithKeyPath:@"strokeColor"];
      [v19 setFromValue:v18];
      [v19 setToValue:{objc_msgSend(v6, "CGColor")}];
      [v19 setDuration:0.300000012];
      [v19 setFillMode:kCAFillModeForwards];
      [v13 addAnimation:v19 forKey:@"strokeColor"];
      CFRelease(v18);
      v20[0] = _NSConcreteStackBlock;
      v20[1] = 3221225472;
      v20[2] = sub_100003A34;
      v20[3] = &unk_1000287E0;
      v21 = v9;
      v22 = v6;
      [UIView animateWithDuration:0 delay:v20 options:0 animations:2.0 completion:0.15];
    }

    else
    {
      [v11 setStrokeColor:{objc_msgSend(v14, "CGColor")}];
      [v13 setStrokeColor:{objc_msgSend(v6, "CGColor")}];
      [v9 setBackgroundColor:{objc_msgSend(v6, "CGColor")}];
    }
  }
}

- (CGSize)sizeThatFits:(CGSize)a3 forLayoutMode:(int64_t)a4
{
  if (a4 == 4)
  {
    width = 50.0;
    height = 50.0;
  }

  else if ([(WFProgressAccessoryView *)self progressSuppressionState:a3.width]== 3)
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
  v2 = [(WFProgressAccessoryView *)self runningContext];
  v3 = [v2 runSource];
  v4 = [v3 isEqualToString:WFWorkflowRunSourceActionButton];

  return v4;
}

- (void)setCancelAction:(id)a3
{
  v8 = a3;
  if (v8 || !self->_cancelAction)
  {
    v4 = [(WFProgressAccessoryView *)self cancelButton];
    [v4 addAction:v8 forControlEvents:64];

    v5 = v8;
    cancelAction = self->_cancelAction;
    self->_cancelAction = v5;
  }

  else
  {
    v7 = [(WFProgressAccessoryView *)self cancelButton];
    [v7 removeAction:self->_cancelAction forControlEvents:64];

    cancelAction = self->_cancelAction;
    self->_cancelAction = 0;
  }
}

- (void)layoutSubviews
{
  v16.receiver = self;
  v16.super_class = WFProgressAccessoryView;
  [(WFProgressAccessoryView *)&v16 layoutSubviews];
  v3 = [(WFProgressAccessoryView *)self traitCollection];
  [v3 displayScale];
  v5 = 1.0 / v4;

  [(WFProgressAccessoryView *)self bounds];
  v18 = CGRectOffset(v17, v5, 0.0);
  x = v18.origin.x;
  y = v18.origin.y;
  width = v18.size.width;
  height = v18.size.height;
  v10 = [(WFProgressAccessoryView *)self micaView];
  [v10 setFrame:{x, y, width, height}];

  [(WFProgressAccessoryView *)self bounds];
  v20 = CGRectOffset(v19, v5, 0.0);
  v11 = v20.origin.x;
  v12 = v20.origin.y;
  v13 = v20.size.width;
  v14 = v20.size.height;
  v15 = [(WFProgressAccessoryView *)self cancelButton];
  [v15 setFrame:{v11, v12, v13, v14}];
}

- (WFProgressAccessoryView)initWithTintColor:(id)a3 runningContext:(id)a4
{
  v6 = a3;
  v7 = a4;
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

    objc_storeStrong(&v8->_runningContext, a4);
    [(WFProgressAccessoryView *)v8 addSubview:v12];
    [(WFProgressAccessoryView *)v8 addSubview:v16];
    [(WFProgressAccessoryView *)v8 tintControlWithColor:v6 animated:0];
    [(WFProgressAccessoryView *)v8 updateProgressWithValue:0.0];
    v24[0] = WFWorkflowRunKindAppShortcut;
    v24[1] = WFWorkflowRunKindAppIntent;
    v24[2] = WFWorkflowRunKindContextualAction;
    v24[3] = WFWorkflowRunKindINShortcut;
    v17 = [NSArray arrayWithObjects:v24 count:4];

    v18 = [(WFProgressAccessoryView *)v8 runningContext];
    v19 = [v18 runKind];
    LODWORD(cancelButton) = [v17 containsObject:v19];

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