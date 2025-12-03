@interface MacUGCPOIEnrichmentEditorViewController
- (MacUGCPOIEnrichmentEditorViewController)initWithPOIEnrichmentForm:(id)form delegate:(id)delegate presentationContext:(int64_t)context;
- (UGCPOIEnrichmentEditorDelegate)delegate;
- (void)_animteProgressViewWithCompletion:(id)completion;
- (void)cancelButtonPressed;
- (void)formDidChange:(id)change;
- (void)loadView;
- (void)sendButtonPressed;
- (void)setSuppressRatings:(BOOL)ratings;
- (void)submissionFinishedWithError:(id)error;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)willBeginSubmissionWithProgress:(id)progress;
@end

@implementation MacUGCPOIEnrichmentEditorViewController

- (UGCPOIEnrichmentEditorDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)formDidChange:(id)change
{
  isComplete = [(UGCPOIEnrichmentForm *)self->_poiEnrichmentForm isComplete];
  rightButton = [(MacFooterView *)self->_submitButtonsFooterView rightButton];
  [rightButton setEnabled:isComplete];
}

- (void)willBeginSubmissionWithProgress:(id)progress
{
  progressCopy = progress;
  [(UGCPOIEnrichmentViewController *)self->_contentViewController willBeginSubmissionWithProgress:progressCopy];
  [(MacFooterView *)self->_submitButtonsFooterView willBeginSubmissionWithProgress:progressCopy];
  view = [(MacUGCPOIEnrichmentEditorViewController *)self view];
  [view addSubview:self->_progressView];

  [(MapsProgressBarModalView *)self->_progressView setHidden:1];
  v6 = [MUEdgeLayout alloc];
  progressView = self->_progressView;
  view2 = [(MacUGCPOIEnrichmentEditorViewController *)self view];
  v9 = [v6 initWithItem:progressView container:view2];
  [v9 activate];

  if ((MapsFeature_IsEnabled_SydneyARP() & 1) == 0)
  {
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_100767C00;
    v10[3] = &unk_101661A90;
    v10[4] = self;
    v11 = progressCopy;
    [(MacUGCPOIEnrichmentEditorViewController *)self _animteProgressViewWithCompletion:v10];
  }
}

- (void)submissionFinishedWithError:(id)error
{
  errorCopy = error;
  progressView = self->_progressView;
  if (errorCopy)
  {
    [(MapsProgressBarModalView *)progressView setObservedProgress:0];
    progressView = self->_progressView;
    v5 = 0.0;
  }

  else
  {
    LODWORD(v5) = 1.0;
  }

  [(MapsProgressBarModalView *)progressView setProgress:v5];
  [(UGCPOIEnrichmentViewController *)self->_contentViewController submissionFinishedWithError:errorCopy];
  [(MacFooterView *)self->_submitButtonsFooterView submissionFinishedWithError:errorCopy];
  isComplete = [(UGCPOIEnrichmentForm *)self->_poiEnrichmentForm isComplete];
  rightButton = [(MacFooterView *)self->_submitButtonsFooterView rightButton];
  [rightButton setEnabled:isComplete];

  if ((MapsFeature_IsEnabled_SydneyARP() & 1) == 0)
  {
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_100767D6C;
    v9[3] = &unk_101661B18;
    v9[4] = self;
    [(MacUGCPOIEnrichmentEditorViewController *)self _animteProgressViewWithCompletion:v9];
  }
}

- (void)_animteProgressViewWithCompletion:(id)completion
{
  completionCopy = completion;
  if (completionCopy)
  {
    view = [(MacUGCPOIEnrichmentEditorViewController *)self view];
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_100767ED4;
    v6[3] = &unk_101661760;
    v7 = completionCopy;
    [UIView transitionWithView:view duration:5242882 options:v6 animations:0 completion:0.100000001];
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_FAULT))
  {
    *buf = 0;
    _os_log_fault_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_FAULT, "Assertion failed: completion != ((void *)0)", buf, 2u);
  }
}

- (void)sendButtonPressed
{
  [(UGCPOIEnrichmentViewController *)self->_contentViewController logDoneAction];
  delegate = [(MacUGCPOIEnrichmentEditorViewController *)self delegate];
  [delegate poiEnrichmentEditor:self finishedFillingEnrichmentForm:self->_poiEnrichmentForm];
}

- (void)cancelButtonPressed
{
  [(UGCPOIEnrichmentViewController *)self->_contentViewController logCancelAction];
  delegate = [(MacUGCPOIEnrichmentEditorViewController *)self delegate];
  [delegate poiEnrichmenEditorDidCancel:self];
}

- (void)setSuppressRatings:(BOOL)ratings
{
  if (self->_suppressRatings != ratings)
  {
    ratingsCopy = ratings;
    self->_suppressRatings = ratings;
    if ([(MacUGCPOIEnrichmentEditorViewController *)self isViewLoaded])
    {
      contentViewController = self->_contentViewController;

      [(UGCPOIEnrichmentViewController *)contentViewController setSuppressRatings:ratingsCopy];
    }
  }
}

- (void)viewWillAppear:(BOOL)appear
{
  v17.receiver = self;
  v17.super_class = MacUGCPOIEnrichmentEditorViewController;
  [(MacUGCPOIEnrichmentEditorViewController *)&v17 viewWillAppear:appear];
  height = UILayoutFittingCompressedSize.height;
  [(UGCPOIEnrichmentHeaderView *)self->_macHeaderView systemLayoutSizeFittingSize:348.0, height];
  v6 = v5;
  view = [(UGCPOIEnrichmentViewController *)self->_contentViewController view];
  [view systemLayoutSizeFittingSize:{348.0, height}];
  v9 = v8;

  [(MacFooterView *)self->_submitButtonsFooterView systemLayoutSizeFittingSize:348.0, height];
  v11 = v10;
  sizeLayout = self->_sizeLayout;
  if (!sizeLayout)
  {
    v13 = [MUSizeLayout alloc];
    view2 = [(MacUGCPOIEnrichmentEditorViewController *)self view];
    v15 = [v13 initWithItem:view2 size:{CGSizeZero.width, CGSizeZero.height}];
    v16 = self->_sizeLayout;
    self->_sizeLayout = v15;

    sizeLayout = self->_sizeLayout;
  }

  [(MUSizeLayout *)sizeLayout setSize:348.0, v9 + v6 + v11];
  [(MUSizeLayout *)self->_sizeLayout activate];
}

- (void)viewDidLoad
{
  v39.receiver = self;
  v39.super_class = MacUGCPOIEnrichmentEditorViewController;
  [(MacUGCPOIEnrichmentEditorViewController *)&v39 viewDidLoad];
  [(MacUGCPOIEnrichmentEditorViewController *)self _mapsui_resetViewLayoutMargins];
  view = [(MacUGCPOIEnrichmentEditorViewController *)self view];
  [view setDirectionalLayoutMargins:{0.0, 26.0, 0.0, 26.0}];

  v4 = [MapsTheme visualEffectViewAllowingBlur:1];
  blurView = self->_blurView;
  self->_blurView = v4;

  [(UIVisualEffectView *)self->_blurView _mapsui_resetLayoutMarginsWithPreservesSuperview:1];
  contentView = [(UIVisualEffectView *)self->_blurView contentView];
  [contentView _mapsui_resetLayoutMarginsWithPreservesSuperview:1];

  view2 = [(MacUGCPOIEnrichmentEditorViewController *)self view];
  [view2 addSubview:self->_blurView];

  v8 = [UGCPOIEnrichmentHeaderView alloc];
  y = CGRectZero.origin.y;
  width = CGRectZero.size.width;
  height = CGRectZero.size.height;
  height = [(UGCPOIEnrichmentHeaderView *)v8 initWithFrame:CGRectZero.origin.x, y, width, height];
  macHeaderView = self->_macHeaderView;
  self->_macHeaderView = height;

  [(UGCPOIEnrichmentHeaderView *)self->_macHeaderView setPreservesSuperviewLayoutMargins:1];
  mapItem = [(UGCPOIEnrichmentForm *)self->_poiEnrichmentForm mapItem];
  [(UGCPOIEnrichmentHeaderView *)self->_macHeaderView setMapItem:mapItem];

  contentView2 = [(UIVisualEffectView *)self->_blurView contentView];
  [contentView2 addSubview:self->_macHeaderView];

  view3 = [(UGCPOIEnrichmentViewController *)self->_contentViewController view];
  [view3 setPreservesSuperviewLayoutMargins:1];

  [(UGCPOIEnrichmentViewController *)self->_contentViewController setSuppressRatings:self->_suppressRatings];
  [(MacUGCPOIEnrichmentEditorViewController *)self addChildViewController:self->_contentViewController];
  contentView3 = [(UIVisualEffectView *)self->_blurView contentView];
  view4 = [(UGCPOIEnrichmentViewController *)self->_contentViewController view];
  [contentView3 addSubview:view4];

  [(UGCPOIEnrichmentViewController *)self->_contentViewController didMoveToParentViewController:self];
  v19 = [[MacFooterView alloc] initWithNoBlurRightSideButtonsOfType:16];
  submitButtonsFooterView = self->_submitButtonsFooterView;
  self->_submitButtonsFooterView = v19;

  [(MacFooterView *)self->_submitButtonsFooterView setDelegate:self];
  isComplete = [(UGCPOIEnrichmentForm *)self->_poiEnrichmentForm isComplete];
  rightButton = [(MacFooterView *)self->_submitButtonsFooterView rightButton];
  [rightButton setEnabled:isComplete];

  contentView4 = [(UIVisualEffectView *)self->_blurView contentView];
  [contentView4 addSubview:self->_submitButtonsFooterView];

  v24 = [MUEdgeLayout alloc];
  v25 = self->_blurView;
  view5 = [(MacUGCPOIEnrichmentEditorViewController *)self view];
  v27 = [v24 initWithItem:v25 container:view5];

  v28 = [MUStackLayout alloc];
  contentView5 = [(UIVisualEffectView *)self->_blurView contentView];
  v30 = [v28 initWithContainer:contentView5 axis:1];

  v41[0] = self->_macHeaderView;
  view6 = [(UGCPOIEnrichmentViewController *)self->_contentViewController view];
  v32 = self->_submitButtonsFooterView;
  v41[1] = view6;
  v41[2] = v32;
  v33 = [NSArray arrayWithObjects:v41 count:3];
  [v30 setArrangedLayoutItems:v33];

  v40[0] = v27;
  v40[1] = v30;
  v34 = [NSArray arrayWithObjects:v40 count:2];
  [NSLayoutConstraint _mapsui_activateLayouts:v34];

  height2 = [[MapsProgressBarModalView alloc] initWithFrame:CGRectZero.origin.x, y, width, height];
  progressView = self->_progressView;
  self->_progressView = height2;

  v37 = +[NSBundle mainBundle];
  v38 = [v37 localizedStringForKey:@"Uploading... [UGC]" value:@"localized string not found" table:0];
  [(MapsProgressBarModalView *)self->_progressView setProgressTitle:v38];
}

- (void)loadView
{
  v3 = [[UIView alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
  [(MacUGCPOIEnrichmentEditorViewController *)self setView:v3];

  view = [(MacUGCPOIEnrichmentEditorViewController *)self view];
  [view setAccessibilityIdentifier:@"UGCPOIEnrichmentView"];
}

- (MacUGCPOIEnrichmentEditorViewController)initWithPOIEnrichmentForm:(id)form delegate:(id)delegate presentationContext:(int64_t)context
{
  formCopy = form;
  delegateCopy = delegate;
  v16.receiver = self;
  v16.super_class = MacUGCPOIEnrichmentEditorViewController;
  v11 = [(MacUGCPOIEnrichmentEditorViewController *)&v16 initWithNibName:0 bundle:0];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_poiEnrichmentForm, form);
    [(UGCForm *)v12->_poiEnrichmentForm addObserver:v12];
    objc_storeWeak(&v12->_delegate, delegateCopy);
    v13 = [[UGCPOIEnrichmentViewController alloc] initWithPOIEnrichmentForm:formCopy presentationContext:context];
    contentViewController = v12->_contentViewController;
    v12->_contentViewController = v13;
  }

  return v12;
}

@end