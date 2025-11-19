@interface WFApertureStatusViewController
- (NSDictionary)postOptions;
- (NSString)elementIdentifier;
- (NSString)requestIdentifier;
- (UIColor)keyColor;
- (WFApertureIconAccessoryView)iconView;
- (WFApertureStatusViewController)initWithRunningContext:(id)a3 attribution:(id)a4 progress:(id)a5;
- (WFApertureStatusViewControllerDelegate)delegate;
- (WFProgressAccessoryView)progressView;
- (int64_t)preferredLayoutMode;
- (unint64_t)presentationBehaviors;
- (void)dealloc;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)setActiveLayoutMode:(int64_t)a3;
- (void)setAttribution:(id)a3;
- (void)setCompletingSuccessfully:(BOOL)a3;
- (void)setProgress:(id)a3;
- (void)startCollapseTimerIfNecessary;
- (void)viewWillLayoutSubviews;
@end

@implementation WFApertureStatusViewController

- (WFApertureStatusViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (NSString)requestIdentifier
{
  v3 = objc_opt_class();
  v4 = [(WFApertureStatusViewController *)self runningContext];
  v5 = [v3 requestIdentifierForContext:v4];

  return v5;
}

- (unint64_t)presentationBehaviors
{
  v2 = [(WFApertureStatusViewController *)self runningContext];
  v3 = [v2 originatingBundleIdentifier];
  v4 = [v3 isEqualToString:VCBundleIdentifierShortcutsiOS];

  if (v4)
  {
    return 24;
  }

  else
  {
    return 26;
  }
}

- (UIColor)keyColor
{
  v2 = [(WFApertureStatusViewController *)self iconView];
  v3 = [v2 primaryColor];

  return v3;
}

- (int64_t)preferredLayoutMode
{
  if ([(WFApertureStatusViewController *)self overrideLayoutMode])
  {

    return [(WFApertureStatusViewController *)self overrideLayoutMode];
  }

  else
  {
    v4 = [(WFApertureStatusViewController *)self runningContext];
    v5 = [(WFApertureStatusViewController *)self preferredLayoutModeForRunningContext:v4];

    return v5;
  }
}

- (void)setActiveLayoutMode:(int64_t)a3
{
  self->_previousLayoutMode = self->_activeLayoutMode;
  self->_activeLayoutMode = a3;
  v5 = [(WFApertureStatusViewController *)self progressView];
  [v5 setActiveLayoutMode:a3];

  if (a3 == 4)
  {
    v6 = [(WFApertureStatusViewController *)self view];
    v7 = [v6 subviews];
    v8 = [(WFApertureStatusViewController *)self iconView];
    if ([v7 containsObject:v8])
    {
      v9 = [(WFApertureStatusViewController *)self view];
      v10 = [v9 subviews];
      v11 = [(WFApertureStatusViewController *)self progressView];
      v12 = [v10 containsObject:v11];

      if (v12)
      {
        goto LABEL_7;
      }
    }

    else
    {
    }

    v13 = [(WFApertureStatusViewController *)self view];
    v14 = [(WFApertureStatusViewController *)self iconView];
    [v13 addSubview:v14];

    v15 = [(WFApertureStatusViewController *)self view];
    v16 = [(WFApertureStatusViewController *)self progressView];
    [v15 addSubview:v16];
  }

LABEL_7:
  v17 = [(WFApertureStatusViewController *)self previousLayoutMode]== 3 || [(WFApertureStatusViewController *)self previousLayoutMode]== 3 || [(WFApertureStatusViewController *)self previousLayoutMode]== 2;
  if (a3 == 4 && v17)
  {
    v18 = [(WFApertureStatusViewController *)self collapseTimer];
    [v18 invalidate];

    [(WFApertureStatusViewController *)self setCollapseTimer:0];
    v19 = [(WFApertureStatusViewController *)self delegate];
    v20 = objc_opt_respondsToSelector();

    if (v20)
    {
      v21 = [(WFApertureStatusViewController *)self delegate];
      [v21 statusViewControllerDidTransitionFromVisibleToCustomLayout:self];
    }
  }

  v22 = [(WFApertureStatusViewController *)self previousLayoutMode];
  if (a3 != 4 && v22 == 4)
  {
    v23 = [(WFApertureStatusViewController *)self delegate];
    v24 = objc_opt_respondsToSelector();

    if (v24)
    {
      v25 = [(WFApertureStatusViewController *)self delegate];
      [v25 statusViewControllerDidCollapseFromCustomLayout:self];
    }
  }
}

- (NSString)elementIdentifier
{
  v2 = [(WFApertureStatusViewController *)self runningContext];
  v3 = WFApertureStatusViewControllerIdentityFromRunningContext();

  return v3;
}

- (void)setAttribution:(id)a3
{
  v11 = a3;
  if ([(WFApertureStatusViewController *)self initialPresentationTransitioning])
  {
    [(WFApertureStatusViewController *)self setPendingDelayedAttribution:v11];
  }

  else
  {
    objc_storeStrong(&self->_attribution, a3);
    v5 = [(WFApertureStatusViewController *)self iconView];
    v6 = [v11 icon];
    v7 = [v11 appBundleIdentifier];
    [v5 setIcon:v6 associatedAppBundleIdentifier:v7 animated:1];

    v8 = [(WFApertureStatusViewController *)self progressView];
    v9 = [(WFApertureStatusViewController *)self iconView];
    v10 = [v9 primaryColor];
    [v8 tintControlWithColor:v10 animated:1];
  }
}

- (void)startCollapseTimerIfNecessary
{
  v3 = [(WFApertureStatusViewController *)self collapseTimer];

  if (!v3)
  {
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_100004F54;
    v5[3] = &unk_100010580;
    v5[4] = self;
    v4 = [NSTimer scheduledTimerWithTimeInterval:0 repeats:v5 block:2.5];
    [(WFApertureStatusViewController *)self setCollapseTimer:v4];
  }
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  if (off_100016630 == a6)
  {
    block[5] = v6;
    block[6] = v7;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10000505C;
    block[3] = &unk_1000105A8;
    block[4] = self;
    dispatch_async(&_dispatch_main_q, block);
  }
}

- (void)setProgress:(id)a3
{
  v5 = a3;
  progress = self->_progress;
  if (progress != v5)
  {
    v7 = progress;
    v8 = v7;
    if (v7)
    {
      [(NSProgress *)v7 removeObserver:self forKeyPath:@"fractionCompleted"];
      v9 = [(WFApertureStatusViewController *)self progressView];
      [v9 setCancelAction:0];
    }

    objc_storeStrong(&self->_progress, a3);
    if (v5)
    {
      [(NSProgress *)v5 addObserver:self forKeyPath:@"fractionCompleted" options:0 context:off_100016630];
      v10 = [(WFApertureStatusViewController *)self progressView];
      v12[0] = _NSConcreteStackBlock;
      v12[1] = 3221225472;
      v12[2] = sub_100005228;
      v12[3] = &unk_100010558;
      v13 = v5;
      v11 = [UIAction actionWithHandler:v12];
      [v10 setCancelAction:v11];
    }
  }
}

- (void)viewWillLayoutSubviews
{
  v36.receiver = self;
  v36.super_class = WFApertureStatusViewController;
  [(WFApertureStatusViewController *)&v36 viewWillLayoutSubviews];
  v3 = [(WFApertureStatusViewController *)self activeLayoutMode];
  v4 = [(WFApertureStatusViewController *)self view];
  [v4 bounds];
  v6 = v5;
  v8 = v7;

  v9 = [(WFApertureStatusViewController *)self view];
  v10 = [v9 SBUISA_systemApertureObstructedAreaLayoutGuide];
  [v10 layoutFrame];
  v12 = v11;

  v13 = [(WFApertureStatusViewController *)self trailingView];
  v14 = v13;
  v15 = 50.0;
  if (v3 != 4)
  {
    v15 = 24.0;
  }

  v16 = (v8 - v15) * 0.5;
  if (v3 == 4)
  {
    [v13 setFrame:{v6 + -50.0 + -17.0, v16, 50.0, 50.0}];

    v17 = [(WFApertureStatusViewController *)self leadingView];
    [v17 setFrame:{17.0, v16, 50.0, 50.0}];

    v18 = [(WFApertureStatusViewController *)self leadingView];
    [v18 frame];
    v19 = CGRectGetMaxX(v37) + 14.0;

    v20 = v12 + -4.0;
    v21 = [(WFApertureStatusViewController *)self titleLabel];
    [v21 intrinsicContentSize];
    v23 = v22;

    v24 = [(WFApertureStatusViewController *)self trailingView];
    [v24 frame];
    v26 = v25 - v19 + -6.0;

    if (v23 >= v26)
    {
      v23 = v26;
    }

    v27 = [(WFApertureStatusViewController *)self titleLabel];
    [v27 intrinsicContentSize];
    v29 = v28;

    v30 = [(WFApertureStatusViewController *)self titleLabel];
    v31 = v30;
    v32 = v19;
    v35 = v20;
    v33 = v23;
    v34 = v29;
  }

  else
  {
    [v13 setFrame:{v6 + -7.0 + -24.0, v16, 24.0, 24.0}];

    v30 = [(WFApertureStatusViewController *)self leadingView];
    v31 = v30;
    v32 = 7.0;
    v33 = 24.0;
    v34 = 24.0;
    v35 = v16;
  }

  [v30 setFrame:{v32, v35, v33, v34}];
}

- (WFProgressAccessoryView)progressView
{
  progressView = self->_progressView;
  if (!progressView)
  {
    v4 = [WFProgressAccessoryView alloc];
    v5 = [(WFApertureStatusViewController *)self iconView];
    v6 = [v5 primaryColor];
    v7 = [(WFApertureStatusViewController *)self runningContext];
    v8 = [(WFProgressAccessoryView *)v4 initWithTintColor:v6 runningContext:v7];
    v9 = self->_progressView;
    self->_progressView = v8;

    progressView = self->_progressView;
  }

  return progressView;
}

- (WFApertureIconAccessoryView)iconView
{
  iconView = self->_iconView;
  if (!iconView)
  {
    v4 = [WFApertureIconAccessoryView alloc];
    v5 = [(WFApertureStatusViewController *)self attribution];
    v6 = [v5 icon];
    v7 = [(WFApertureStatusViewController *)self runningContext];
    v8 = [(WFApertureIconAccessoryView *)v4 initWithIcon:v6 runningContext:v7];
    v9 = self->_iconView;
    self->_iconView = v8;

    iconView = self->_iconView;
  }

  return iconView;
}

- (NSDictionary)postOptions
{
  v4 = kSBUIPresentableSystemApertureSupportingUserInfoKey;
  v5 = &__kCFBooleanTrue;
  v2 = [NSDictionary dictionaryWithObjects:&v5 forKeys:&v4 count:1];

  return v2;
}

- (void)setCompletingSuccessfully:(BOOL)a3
{
  if (a3)
  {
    v3 = [(WFApertureStatusViewController *)self progressView];
    [v3 updateProgressWithValue:1.0];
  }
}

- (void)dealloc
{
  [(NSProgress *)self->_progress removeObserver:self forKeyPath:@"fractionCompleted" context:off_100016630];
  v3.receiver = self;
  v3.super_class = WFApertureStatusViewController;
  [(WFApertureStatusViewController *)&v3 dealloc];
}

- (WFApertureStatusViewController)initWithRunningContext:(id)a3 attribution:(id)a4 progress:(id)a5
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  if (v10)
  {
    if (v11)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v26 = +[NSAssertionHandler currentHandler];
    [v26 handleFailureInMethod:a2 object:self file:@"WFApertureStatusViewController.m" lineNumber:62 description:{@"Invalid parameter not satisfying: %@", @"runningContext"}];

    if (v11)
    {
      goto LABEL_3;
    }
  }

  v27 = +[NSAssertionHandler currentHandler];
  [v27 handleFailureInMethod:a2 object:self file:@"WFApertureStatusViewController.m" lineNumber:63 description:{@"Invalid parameter not satisfying: %@", @"attribution"}];

LABEL_3:
  v30.receiver = self;
  v30.super_class = WFApertureStatusViewController;
  v13 = [(WFApertureStatusViewController *)&v30 initWithNibName:0 bundle:0];
  v14 = v13;
  if (v13)
  {
    v13->_overrideLayoutMode = 0;
    v13->_previousLayoutMode = 0;
    objc_storeStrong(&v13->_attribution, a4);
    objc_storeStrong(&v14->_runningContext, a3);
    v15 = objc_alloc_init(UILabel);
    v16 = [(WFApertureStatusViewController *)v14 titleFont];
    [(UILabel *)v15 setFont:v16];

    v17 = [v11 title];
    [(UILabel *)v15 setText:v17];

    [(UILabel *)v15 setNumberOfLines:1];
    v18 = +[UIColor systemWhiteColor];
    [(UILabel *)v15 setTextColor:v18];

    v19 = [(WFApertureStatusViewController *)v14 view];
    [v19 addSubview:v15];

    titleLabel = v14->_titleLabel;
    v14->_titleLabel = v15;
    v21 = v15;

    [(WFApertureStatusViewController *)v14 setAssociatedRunningContext:v10];
    [(WFApertureStatusViewController *)v14 startCollapseTimerIfNecessary];
    [(WFApertureStatusViewController *)v14 setProgress:v12];
    v14->_initialPresentationTransitioning = 1;
    v22 = dispatch_time(0, 600000000);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100005A34;
    block[3] = &unk_1000105A8;
    v23 = v14;
    v29 = v23;
    dispatch_after(v22, &_dispatch_main_q, block);
    v24 = v23;
  }

  return v14;
}

@end