@interface UGCPOIEnrichmentContaineeViewController
- (UGCPOIEnrichmentContaineeViewController)initWithPOIEnrichmentForm:(id)form delegate:(id)delegate presentationContext:(int64_t)context;
- (UGCPOIEnrichmentEditorDelegate)delegate;
- (double)heightForLayout:(unint64_t)layout;
- (id)_backgroundColorForModalFormSheet;
- (void)_updateAppearanceForSubmission;
- (void)cancelButtonPressed;
- (void)contentDidUpdate;
- (void)poiEnrichmentViewController:(id)controller didSelectTermsOfServiceURL:(id)l;
- (void)sendButtonPressed;
- (void)setShowCardBackground:(BOOL)background;
- (void)setSuppressRatings:(BOOL)ratings;
- (void)submissionFinishedWithError:(id)error;
- (void)viewDidLoad;
- (void)willBeginSubmissionWithProgress:(id)progress;
@end

@implementation UGCPOIEnrichmentContaineeViewController

- (UGCPOIEnrichmentEditorDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)poiEnrichmentViewController:(id)controller didSelectTermsOfServiceURL:(id)l
{
  lCopy = l;
  delegate = [(UGCPOIEnrichmentContaineeViewController *)self delegate];
  [delegate poiEnrichmentEditor:self didSelectTermsOfServiceURL:lCopy];
}

- (void)contentDidUpdate
{
  cardPresentationController = [(ContaineeViewController *)self cardPresentationController];
  [cardPresentationController updateHeightForCurrentLayoutAnimated:1];
}

- (void)submissionFinishedWithError:(id)error
{
  headerView = self->_headerView;
  errorCopy = error;
  leadingButton = [(UGCPOIEnrichmentModalHeaderView *)headerView leadingButton];
  [leadingButton setEnabled:1];

  trailingButton = [(UGCPOIEnrichmentModalHeaderView *)self->_headerView trailingButton];
  [trailingButton setEnabled:{-[UGCPOIEnrichmentForm isComplete](self->_poiEnrichmentForm, "isComplete")}];

  v8 = self->_headerView;
  if (errorCopy)
  {
    [(UGCPOIEnrichmentModalHeaderView *)v8 setObservedProgress:0];
    v8 = self->_headerView;
    v7 = 0.0;
  }

  else
  {
    LODWORD(v7) = 1.0;
  }

  [(UGCPOIEnrichmentModalHeaderView *)v8 setProgress:v7];
  [(UGCPOIEnrichmentViewController *)self->_contentViewController submissionFinishedWithError:errorCopy];
}

- (void)willBeginSubmissionWithProgress:(id)progress
{
  headerView = self->_headerView;
  progressCopy = progress;
  leadingButton = [(UGCPOIEnrichmentModalHeaderView *)headerView leadingButton];
  [leadingButton setEnabled:0];

  trailingButton = [(UGCPOIEnrichmentModalHeaderView *)self->_headerView trailingButton];
  [trailingButton setEnabled:0];

  [(UGCPOIEnrichmentModalHeaderView *)self->_headerView setObservedProgress:progressCopy];
  [(UGCPOIEnrichmentViewController *)self->_contentViewController willBeginSubmissionWithProgress:progressCopy];
}

- (void)setSuppressRatings:(BOOL)ratings
{
  if (self->_suppressRatings != ratings)
  {
    ratingsCopy = ratings;
    self->_suppressRatings = ratings;
    if ([(UGCPOIEnrichmentContaineeViewController *)self isViewLoaded])
    {
      contentViewController = self->_contentViewController;

      [(UGCPOIEnrichmentViewController *)contentViewController setSuppressRatings:ratingsCopy];
    }
  }
}

- (void)setShowCardBackground:(BOOL)background
{
  if (self->_showCardBackground != background)
  {
    self->_showCardBackground = background;
    if (background)
    {
      view = [(UGCPOIEnrichmentContaineeViewController *)self view];
      [view insertSubview:self->_cardView atIndex:0];

      cardView = self->_cardView;
      view2 = [(UGCPOIEnrichmentContaineeViewController *)self view];
      v6 = [(CardView *)cardView _maps_constraintsForCenteringInView:view2];
      [NSLayoutConstraint activateConstraints:v6];
    }

    else
    {
      v7 = self->_cardView;

      [(CardView *)v7 removeFromSuperview];
    }
  }
}

- (double)heightForLayout:(unint64_t)layout
{
  isPreparingForModalPresentation = [(UGCPOIEnrichmentContaineeViewController *)self isPreparingForModalPresentation];
  if (layout > 5)
  {
    v17 = -1.0;
  }

  else
  {
    if (((1 << layout) & 0x27) != 0)
    {
      if (isPreparingForModalPresentation)
      {
        v6 = &UILayoutFittingExpandedSize;
      }

      else
      {
        v6 = &UILayoutFittingCompressedSize;
      }

      width = v6->width;
      p_height = &UILayoutFittingExpandedSize.height;
      if (!isPreparingForModalPresentation)
      {
        p_height = &UILayoutFittingCompressedSize.height;
      }

      v9 = *p_height;
      [(UGCPOIEnrichmentModalHeaderView *)self->_headerView systemLayoutSizeFittingSize:v6->width, *p_height];
      v11 = v10;
      view = [(UGCPOIEnrichmentViewController *)self->_contentViewController view];
      [view systemLayoutSizeFittingSize:{width, v9}];
      v14 = v13 + v11;

      cardPresentationController = [(ContaineeViewController *)self cardPresentationController];
      [cardPresentationController bottomSafeOffset];
      v17 = v14 + v16;
    }

    else
    {
      cardPresentationController = [(ContaineeViewController *)self cardPresentationController];
      [cardPresentationController availableHeight];
      v17 = v18;
    }
  }

  cardPresentationController2 = [(ContaineeViewController *)self cardPresentationController];
  containerStyle = [cardPresentationController2 containerStyle];

  if (containerStyle == 6)
  {
    cardPresentationController3 = [(ContaineeViewController *)self cardPresentationController];
    [cardPresentationController3 availableHeight];
    v17 = v22;
  }

  return v17;
}

- (void)viewDidLoad
{
  v49.receiver = self;
  v49.super_class = UGCPOIEnrichmentContaineeViewController;
  [(ContaineeViewController *)&v49 viewDidLoad];
  cardPresentationController = [(ContaineeViewController *)self cardPresentationController];
  [cardPresentationController setPresentedModally:1];

  cardPresentationController2 = [(ContaineeViewController *)self cardPresentationController];
  [cardPresentationController2 setTakesAvailableHeight:1];

  cardPresentationController3 = [(ContaineeViewController *)self cardPresentationController];
  [cardPresentationController3 setAllowsSwipeToDismiss:0];

  cardPresentationController4 = [(ContaineeViewController *)self cardPresentationController];
  [cardPresentationController4 setDefaultContaineeLayout:5];

  headerView = [(ContaineeViewController *)self headerView];
  [headerView addSubview:self->_headerView];

  [(UGCPOIEnrichmentViewController *)self->_contentViewController setSuppressRatings:self->_suppressRatings];
  view = [(UGCPOIEnrichmentViewController *)self->_contentViewController view];
  [view setTranslatesAutoresizingMaskIntoConstraints:0];

  view2 = [(UGCPOIEnrichmentViewController *)self->_contentViewController view];
  [view2 setPreservesSuperviewLayoutMargins:1];

  [(UGCPOIEnrichmentContaineeViewController *)self addChildViewController:self->_contentViewController];
  contentView = [(ContaineeViewController *)self contentView];
  view3 = [(UGCPOIEnrichmentViewController *)self->_contentViewController view];
  [contentView addSubview:view3];

  [(UGCPOIEnrichmentViewController *)self->_contentViewController didMoveToParentViewController:self];
  topAnchor = [(UGCPOIEnrichmentModalHeaderView *)self->_headerView topAnchor];
  headerView2 = [(ContaineeViewController *)self headerView];
  topAnchor2 = [headerView2 topAnchor];
  v45 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v50[0] = v45;
  leadingAnchor = [(UGCPOIEnrichmentModalHeaderView *)self->_headerView leadingAnchor];
  headerView3 = [(ContaineeViewController *)self headerView];
  leadingAnchor2 = [headerView3 leadingAnchor];
  v41 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v50[1] = v41;
  trailingAnchor = [(UGCPOIEnrichmentModalHeaderView *)self->_headerView trailingAnchor];
  headerView4 = [(ContaineeViewController *)self headerView];
  trailingAnchor2 = [headerView4 trailingAnchor];
  v37 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v50[2] = v37;
  bottomAnchor = [(UGCPOIEnrichmentModalHeaderView *)self->_headerView bottomAnchor];
  headerView5 = [(ContaineeViewController *)self headerView];
  bottomAnchor2 = [headerView5 bottomAnchor];
  v33 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  v50[3] = v33;
  view4 = [(UGCPOIEnrichmentViewController *)self->_contentViewController view];
  topAnchor3 = [view4 topAnchor];
  contentView2 = [(ContaineeViewController *)self contentView];
  topAnchor4 = [contentView2 topAnchor];
  v28 = [topAnchor3 constraintEqualToAnchor:topAnchor4];
  v50[4] = v28;
  view5 = [(UGCPOIEnrichmentViewController *)self->_contentViewController view];
  leadingAnchor3 = [view5 leadingAnchor];
  contentView3 = [(ContaineeViewController *)self contentView];
  leadingAnchor4 = [contentView3 leadingAnchor];
  v23 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4];
  v50[5] = v23;
  view6 = [(UGCPOIEnrichmentViewController *)self->_contentViewController view];
  trailingAnchor3 = [view6 trailingAnchor];
  contentView4 = [(ContaineeViewController *)self contentView];
  trailingAnchor4 = [contentView4 trailingAnchor];
  v14 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4];
  v50[6] = v14;
  view7 = [(UGCPOIEnrichmentViewController *)self->_contentViewController view];
  bottomAnchor3 = [view7 bottomAnchor];
  contentView5 = [(ContaineeViewController *)self contentView];
  bottomAnchor4 = [contentView5 bottomAnchor];
  v19 = [bottomAnchor3 constraintEqualToAnchor:bottomAnchor4];
  v50[7] = v19;
  v20 = [NSArray arrayWithObjects:v50 count:8];
  [NSLayoutConstraint activateConstraints:v20];

  [(UGCPOIEnrichmentContaineeViewController *)self _updateAppearanceForSubmission];
}

- (void)_updateAppearanceForSubmission
{
  isComplete = [(UGCPOIEnrichmentForm *)self->_poiEnrichmentForm isComplete];
  trailingButton = [(UGCPOIEnrichmentModalHeaderView *)self->_headerView trailingButton];
  [trailingButton setEnabled:isComplete];
}

- (void)sendButtonPressed
{
  if ([(UGCPOIEnrichmentForm *)self->_poiEnrichmentForm isComplete])
  {
    [(UGCPOIEnrichmentViewController *)self->_contentViewController logDoneAction];
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained poiEnrichmentEditor:self finishedFillingEnrichmentForm:self->_poiEnrichmentForm];
  }

  else
  {

    [(UGCPOIEnrichmentContaineeViewController *)self cancelButtonPressed];
  }
}

- (void)cancelButtonPressed
{
  [(UGCPOIEnrichmentViewController *)self->_contentViewController logCancelAction];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained poiEnrichmenEditorDidCancel:self];
}

- (id)_backgroundColorForModalFormSheet
{
  theme = [(UGCPOIEnrichmentContaineeViewController *)self theme];
  backgroundColorForModalFormSheet = [theme backgroundColorForModalFormSheet];

  return backgroundColorForModalFormSheet;
}

- (UGCPOIEnrichmentContaineeViewController)initWithPOIEnrichmentForm:(id)form delegate:(id)delegate presentationContext:(int64_t)context
{
  formCopy = form;
  delegateCopy = delegate;
  v23.receiver = self;
  v23.super_class = UGCPOIEnrichmentContaineeViewController;
  v11 = [(UGCPOIEnrichmentContaineeViewController *)&v23 initWithNibName:0 bundle:0];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_poiEnrichmentForm, form);
    [(UGCForm *)v12->_poiEnrichmentForm addObserver:v12];
    objc_storeWeak(&v12->_delegate, delegateCopy);
    v13 = [[UGCPOIEnrichmentViewController alloc] initWithPOIEnrichmentForm:formCopy presentationContext:context];
    contentViewController = v12->_contentViewController;
    v12->_contentViewController = v13;

    [(UGCPOIEnrichmentViewController *)v12->_contentViewController setDelegate:v12];
    v15 = [[UGCPOIEnrichmentModalHeaderView alloc] initWithFrame:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
    headerView = v12->_headerView;
    v12->_headerView = v15;

    [(UGCPOIEnrichmentModalHeaderView *)v12->_headerView setTranslatesAutoresizingMaskIntoConstraints:0];
    mapItem = [(UGCPOIEnrichmentForm *)v12->_poiEnrichmentForm mapItem];
    [(UGCPOIEnrichmentModalHeaderView *)v12->_headerView setMapItem:mapItem];

    leadingButton = [(UGCPOIEnrichmentModalHeaderView *)v12->_headerView leadingButton];
    [leadingButton addTarget:v12 action:"cancelButtonPressed" forControlEvents:64];

    trailingButton = [(UGCPOIEnrichmentModalHeaderView *)v12->_headerView trailingButton];
    [trailingButton addTarget:v12 action:"sendButtonPressed" forControlEvents:64];

    v20 = [[CardView alloc] initAllowingBlurred:0];
    cardView = v12->_cardView;
    v12->_cardView = v20;

    [(CardView *)v12->_cardView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(CardView *)v12->_cardView setHideGrabber:1];
    v12->_isPreparingForModalPresentation = 0;
  }

  return v12;
}

@end