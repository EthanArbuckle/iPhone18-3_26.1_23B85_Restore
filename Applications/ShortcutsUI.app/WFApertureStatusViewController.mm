@interface WFApertureStatusViewController
- (NSDictionary)postOptions;
- (NSString)elementIdentifier;
- (NSString)requestIdentifier;
- (UIColor)keyColor;
- (WFApertureIconAccessoryView)iconView;
- (WFApertureStatusViewController)initWithRunningContext:(id)context attribution:(id)attribution progress:(id)progress;
- (WFApertureStatusViewControllerDelegate)delegate;
- (WFProgressAccessoryView)progressView;
- (int64_t)preferredLayoutMode;
- (unint64_t)presentationBehaviors;
- (void)dealloc;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)setActiveLayoutMode:(int64_t)mode;
- (void)setAttribution:(id)attribution;
- (void)setCompletingSuccessfully:(BOOL)successfully;
- (void)setProgress:(id)progress;
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
  runningContext = [(WFApertureStatusViewController *)self runningContext];
  v5 = [v3 requestIdentifierForContext:runningContext];

  return v5;
}

- (unint64_t)presentationBehaviors
{
  runningContext = [(WFApertureStatusViewController *)self runningContext];
  originatingBundleIdentifier = [runningContext originatingBundleIdentifier];
  v4 = [originatingBundleIdentifier isEqualToString:VCBundleIdentifierShortcutsiOS];

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
  iconView = [(WFApertureStatusViewController *)self iconView];
  primaryColor = [iconView primaryColor];

  return primaryColor;
}

- (int64_t)preferredLayoutMode
{
  if ([(WFApertureStatusViewController *)self overrideLayoutMode])
  {

    return [(WFApertureStatusViewController *)self overrideLayoutMode];
  }

  else
  {
    runningContext = [(WFApertureStatusViewController *)self runningContext];
    v5 = [(WFApertureStatusViewController *)self preferredLayoutModeForRunningContext:runningContext];

    return v5;
  }
}

- (void)setActiveLayoutMode:(int64_t)mode
{
  self->_previousLayoutMode = self->_activeLayoutMode;
  self->_activeLayoutMode = mode;
  progressView = [(WFApertureStatusViewController *)self progressView];
  [progressView setActiveLayoutMode:mode];

  if (mode == 4)
  {
    view = [(WFApertureStatusViewController *)self view];
    subviews = [view subviews];
    iconView = [(WFApertureStatusViewController *)self iconView];
    if ([subviews containsObject:iconView])
    {
      view2 = [(WFApertureStatusViewController *)self view];
      subviews2 = [view2 subviews];
      progressView2 = [(WFApertureStatusViewController *)self progressView];
      v12 = [subviews2 containsObject:progressView2];

      if (v12)
      {
        goto LABEL_7;
      }
    }

    else
    {
    }

    view3 = [(WFApertureStatusViewController *)self view];
    iconView2 = [(WFApertureStatusViewController *)self iconView];
    [view3 addSubview:iconView2];

    view4 = [(WFApertureStatusViewController *)self view];
    progressView3 = [(WFApertureStatusViewController *)self progressView];
    [view4 addSubview:progressView3];
  }

LABEL_7:
  v17 = [(WFApertureStatusViewController *)self previousLayoutMode]== 3 || [(WFApertureStatusViewController *)self previousLayoutMode]== 3 || [(WFApertureStatusViewController *)self previousLayoutMode]== 2;
  if (mode == 4 && v17)
  {
    collapseTimer = [(WFApertureStatusViewController *)self collapseTimer];
    [collapseTimer invalidate];

    [(WFApertureStatusViewController *)self setCollapseTimer:0];
    delegate = [(WFApertureStatusViewController *)self delegate];
    v20 = objc_opt_respondsToSelector();

    if (v20)
    {
      delegate2 = [(WFApertureStatusViewController *)self delegate];
      [delegate2 statusViewControllerDidTransitionFromVisibleToCustomLayout:self];
    }
  }

  previousLayoutMode = [(WFApertureStatusViewController *)self previousLayoutMode];
  if (mode != 4 && previousLayoutMode == 4)
  {
    delegate3 = [(WFApertureStatusViewController *)self delegate];
    v24 = objc_opt_respondsToSelector();

    if (v24)
    {
      delegate4 = [(WFApertureStatusViewController *)self delegate];
      [delegate4 statusViewControllerDidCollapseFromCustomLayout:self];
    }
  }
}

- (NSString)elementIdentifier
{
  runningContext = [(WFApertureStatusViewController *)self runningContext];
  v3 = WFApertureStatusViewControllerIdentityFromRunningContext();

  return v3;
}

- (void)setAttribution:(id)attribution
{
  attributionCopy = attribution;
  if ([(WFApertureStatusViewController *)self initialPresentationTransitioning])
  {
    [(WFApertureStatusViewController *)self setPendingDelayedAttribution:attributionCopy];
  }

  else
  {
    objc_storeStrong(&self->_attribution, attribution);
    iconView = [(WFApertureStatusViewController *)self iconView];
    icon = [attributionCopy icon];
    appBundleIdentifier = [attributionCopy appBundleIdentifier];
    [iconView setIcon:icon associatedAppBundleIdentifier:appBundleIdentifier animated:1];

    progressView = [(WFApertureStatusViewController *)self progressView];
    iconView2 = [(WFApertureStatusViewController *)self iconView];
    primaryColor = [iconView2 primaryColor];
    [progressView tintControlWithColor:primaryColor animated:1];
  }
}

- (void)startCollapseTimerIfNecessary
{
  collapseTimer = [(WFApertureStatusViewController *)self collapseTimer];

  if (!collapseTimer)
  {
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_1000051E8;
    v5[3] = &unk_100028750;
    v5[4] = self;
    v4 = [NSTimer scheduledTimerWithTimeInterval:0 repeats:v5 block:2.5];
    [(WFApertureStatusViewController *)self setCollapseTimer:v4];
  }
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  if (off_100030750 == context)
  {
    block[5] = v6;
    block[6] = v7;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000052F0;
    block[3] = &unk_1000288A0;
    block[4] = self;
    dispatch_async(&_dispatch_main_q, block);
  }
}

- (void)setProgress:(id)progress
{
  progressCopy = progress;
  progress = self->_progress;
  if (progress != progressCopy)
  {
    progressCopy2 = progress;
    v8 = progressCopy2;
    if (progressCopy2)
    {
      [(NSProgress *)progressCopy2 removeObserver:self forKeyPath:@"fractionCompleted"];
      progressView = [(WFApertureStatusViewController *)self progressView];
      [progressView setCancelAction:0];
    }

    objc_storeStrong(&self->_progress, progress);
    if (progressCopy)
    {
      [(NSProgress *)progressCopy addObserver:self forKeyPath:@"fractionCompleted" options:0 context:off_100030750];
      progressView2 = [(WFApertureStatusViewController *)self progressView];
      v12[0] = _NSConcreteStackBlock;
      v12[1] = 3221225472;
      v12[2] = sub_1000054BC;
      v12[3] = &unk_100028728;
      v13 = progressCopy;
      v11 = [UIAction actionWithHandler:v12];
      [progressView2 setCancelAction:v11];
    }
  }
}

- (void)viewWillLayoutSubviews
{
  v36.receiver = self;
  v36.super_class = WFApertureStatusViewController;
  [(WFApertureStatusViewController *)&v36 viewWillLayoutSubviews];
  activeLayoutMode = [(WFApertureStatusViewController *)self activeLayoutMode];
  view = [(WFApertureStatusViewController *)self view];
  [view bounds];
  v6 = v5;
  v8 = v7;

  view2 = [(WFApertureStatusViewController *)self view];
  sBUISA_systemApertureObstructedAreaLayoutGuide = [view2 SBUISA_systemApertureObstructedAreaLayoutGuide];
  [sBUISA_systemApertureObstructedAreaLayoutGuide layoutFrame];
  v12 = v11;

  trailingView = [(WFApertureStatusViewController *)self trailingView];
  v14 = trailingView;
  v15 = 50.0;
  if (activeLayoutMode != 4)
  {
    v15 = 24.0;
  }

  v16 = (v8 - v15) * 0.5;
  if (activeLayoutMode == 4)
  {
    [trailingView setFrame:{v6 + -50.0 + -17.0, v16, 50.0, 50.0}];

    leadingView = [(WFApertureStatusViewController *)self leadingView];
    [leadingView setFrame:{17.0, v16, 50.0, 50.0}];

    leadingView2 = [(WFApertureStatusViewController *)self leadingView];
    [leadingView2 frame];
    v19 = CGRectGetMaxX(v37) + 14.0;

    v20 = v12 + -4.0;
    titleLabel = [(WFApertureStatusViewController *)self titleLabel];
    [titleLabel intrinsicContentSize];
    v23 = v22;

    trailingView2 = [(WFApertureStatusViewController *)self trailingView];
    [trailingView2 frame];
    v26 = v25 - v19 + -6.0;

    if (v23 >= v26)
    {
      v23 = v26;
    }

    titleLabel2 = [(WFApertureStatusViewController *)self titleLabel];
    [titleLabel2 intrinsicContentSize];
    v29 = v28;

    titleLabel3 = [(WFApertureStatusViewController *)self titleLabel];
    v31 = titleLabel3;
    v32 = v19;
    v35 = v20;
    v33 = v23;
    v34 = v29;
  }

  else
  {
    [trailingView setFrame:{v6 + -7.0 + -24.0, v16, 24.0, 24.0}];

    titleLabel3 = [(WFApertureStatusViewController *)self leadingView];
    v31 = titleLabel3;
    v32 = 7.0;
    v33 = 24.0;
    v34 = 24.0;
    v35 = v16;
  }

  [titleLabel3 setFrame:{v32, v35, v33, v34}];
}

- (WFProgressAccessoryView)progressView
{
  progressView = self->_progressView;
  if (!progressView)
  {
    v4 = [WFProgressAccessoryView alloc];
    iconView = [(WFApertureStatusViewController *)self iconView];
    primaryColor = [iconView primaryColor];
    runningContext = [(WFApertureStatusViewController *)self runningContext];
    v8 = [(WFProgressAccessoryView *)v4 initWithTintColor:primaryColor runningContext:runningContext];
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
    attribution = [(WFApertureStatusViewController *)self attribution];
    icon = [attribution icon];
    runningContext = [(WFApertureStatusViewController *)self runningContext];
    v8 = [(WFApertureIconAccessoryView *)v4 initWithIcon:icon runningContext:runningContext];
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

- (void)setCompletingSuccessfully:(BOOL)successfully
{
  if (successfully)
  {
    progressView = [(WFApertureStatusViewController *)self progressView];
    [progressView updateProgressWithValue:1.0];
  }
}

- (void)dealloc
{
  [(NSProgress *)self->_progress removeObserver:self forKeyPath:@"fractionCompleted" context:off_100030750];
  v3.receiver = self;
  v3.super_class = WFApertureStatusViewController;
  [(WFApertureStatusViewController *)&v3 dealloc];
}

- (WFApertureStatusViewController)initWithRunningContext:(id)context attribution:(id)attribution progress:(id)progress
{
  contextCopy = context;
  attributionCopy = attribution;
  progressCopy = progress;
  if (contextCopy)
  {
    if (attributionCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v26 = +[NSAssertionHandler currentHandler];
    [v26 handleFailureInMethod:a2 object:self file:@"WFApertureStatusViewController.m" lineNumber:62 description:{@"Invalid parameter not satisfying: %@", @"runningContext"}];

    if (attributionCopy)
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
    objc_storeStrong(&v13->_attribution, attribution);
    objc_storeStrong(&v14->_runningContext, context);
    v15 = objc_alloc_init(UILabel);
    titleFont = [(WFApertureStatusViewController *)v14 titleFont];
    [(UILabel *)v15 setFont:titleFont];

    title = [attributionCopy title];
    [(UILabel *)v15 setText:title];

    [(UILabel *)v15 setNumberOfLines:1];
    v18 = +[UIColor systemWhiteColor];
    [(UILabel *)v15 setTextColor:v18];

    view = [(WFApertureStatusViewController *)v14 view];
    [view addSubview:v15];

    titleLabel = v14->_titleLabel;
    v14->_titleLabel = v15;
    v21 = v15;

    [(WFApertureStatusViewController *)v14 setAssociatedRunningContext:contextCopy];
    [(WFApertureStatusViewController *)v14 startCollapseTimerIfNecessary];
    [(WFApertureStatusViewController *)v14 setProgress:progressCopy];
    v14->_initialPresentationTransitioning = 1;
    v22 = dispatch_time(0, 600000000);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100005CC8;
    block[3] = &unk_1000288A0;
    v23 = v14;
    v29 = v23;
    dispatch_after(v22, &_dispatch_main_q, block);
    v24 = v23;
  }

  return v14;
}

@end