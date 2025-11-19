@interface UGCPOIEnrichmentContaineeViewController
- (UGCPOIEnrichmentContaineeViewController)initWithPOIEnrichmentForm:(id)a3 delegate:(id)a4 presentationContext:(int64_t)a5;
- (UGCPOIEnrichmentEditorDelegate)delegate;
- (double)heightForLayout:(unint64_t)a3;
- (id)_backgroundColorForModalFormSheet;
- (void)_updateAppearanceForSubmission;
- (void)cancelButtonPressed;
- (void)contentDidUpdate;
- (void)poiEnrichmentViewController:(id)a3 didSelectTermsOfServiceURL:(id)a4;
- (void)sendButtonPressed;
- (void)setShowCardBackground:(BOOL)a3;
- (void)setSuppressRatings:(BOOL)a3;
- (void)submissionFinishedWithError:(id)a3;
- (void)viewDidLoad;
- (void)willBeginSubmissionWithProgress:(id)a3;
@end

@implementation UGCPOIEnrichmentContaineeViewController

- (UGCPOIEnrichmentEditorDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)poiEnrichmentViewController:(id)a3 didSelectTermsOfServiceURL:(id)a4
{
  v5 = a4;
  v6 = [(UGCPOIEnrichmentContaineeViewController *)self delegate];
  [v6 poiEnrichmentEditor:self didSelectTermsOfServiceURL:v5];
}

- (void)contentDidUpdate
{
  v2 = [(ContaineeViewController *)self cardPresentationController];
  [v2 updateHeightForCurrentLayoutAnimated:1];
}

- (void)submissionFinishedWithError:(id)a3
{
  headerView = self->_headerView;
  v9 = a3;
  v5 = [(UGCPOIEnrichmentModalHeaderView *)headerView leadingButton];
  [v5 setEnabled:1];

  v6 = [(UGCPOIEnrichmentModalHeaderView *)self->_headerView trailingButton];
  [v6 setEnabled:{-[UGCPOIEnrichmentForm isComplete](self->_poiEnrichmentForm, "isComplete")}];

  v8 = self->_headerView;
  if (v9)
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
  [(UGCPOIEnrichmentViewController *)self->_contentViewController submissionFinishedWithError:v9];
}

- (void)willBeginSubmissionWithProgress:(id)a3
{
  headerView = self->_headerView;
  v7 = a3;
  v5 = [(UGCPOIEnrichmentModalHeaderView *)headerView leadingButton];
  [v5 setEnabled:0];

  v6 = [(UGCPOIEnrichmentModalHeaderView *)self->_headerView trailingButton];
  [v6 setEnabled:0];

  [(UGCPOIEnrichmentModalHeaderView *)self->_headerView setObservedProgress:v7];
  [(UGCPOIEnrichmentViewController *)self->_contentViewController willBeginSubmissionWithProgress:v7];
}

- (void)setSuppressRatings:(BOOL)a3
{
  if (self->_suppressRatings != a3)
  {
    v3 = a3;
    self->_suppressRatings = a3;
    if ([(UGCPOIEnrichmentContaineeViewController *)self isViewLoaded])
    {
      contentViewController = self->_contentViewController;

      [(UGCPOIEnrichmentViewController *)contentViewController setSuppressRatings:v3];
    }
  }
}

- (void)setShowCardBackground:(BOOL)a3
{
  if (self->_showCardBackground != a3)
  {
    self->_showCardBackground = a3;
    if (a3)
    {
      v4 = [(UGCPOIEnrichmentContaineeViewController *)self view];
      [v4 insertSubview:self->_cardView atIndex:0];

      cardView = self->_cardView;
      v8 = [(UGCPOIEnrichmentContaineeViewController *)self view];
      v6 = [(CardView *)cardView _maps_constraintsForCenteringInView:v8];
      [NSLayoutConstraint activateConstraints:v6];
    }

    else
    {
      v7 = self->_cardView;

      [(CardView *)v7 removeFromSuperview];
    }
  }
}

- (double)heightForLayout:(unint64_t)a3
{
  v5 = [(UGCPOIEnrichmentContaineeViewController *)self isPreparingForModalPresentation];
  if (a3 > 5)
  {
    v17 = -1.0;
  }

  else
  {
    if (((1 << a3) & 0x27) != 0)
    {
      if (v5)
      {
        v6 = &UILayoutFittingExpandedSize;
      }

      else
      {
        v6 = &UILayoutFittingCompressedSize;
      }

      width = v6->width;
      p_height = &UILayoutFittingExpandedSize.height;
      if (!v5)
      {
        p_height = &UILayoutFittingCompressedSize.height;
      }

      v9 = *p_height;
      [(UGCPOIEnrichmentModalHeaderView *)self->_headerView systemLayoutSizeFittingSize:v6->width, *p_height];
      v11 = v10;
      v12 = [(UGCPOIEnrichmentViewController *)self->_contentViewController view];
      [v12 systemLayoutSizeFittingSize:{width, v9}];
      v14 = v13 + v11;

      v15 = [(ContaineeViewController *)self cardPresentationController];
      [v15 bottomSafeOffset];
      v17 = v14 + v16;
    }

    else
    {
      v15 = [(ContaineeViewController *)self cardPresentationController];
      [v15 availableHeight];
      v17 = v18;
    }
  }

  v19 = [(ContaineeViewController *)self cardPresentationController];
  v20 = [v19 containerStyle];

  if (v20 == 6)
  {
    v21 = [(ContaineeViewController *)self cardPresentationController];
    [v21 availableHeight];
    v17 = v22;
  }

  return v17;
}

- (void)viewDidLoad
{
  v49.receiver = self;
  v49.super_class = UGCPOIEnrichmentContaineeViewController;
  [(ContaineeViewController *)&v49 viewDidLoad];
  v3 = [(ContaineeViewController *)self cardPresentationController];
  [v3 setPresentedModally:1];

  v4 = [(ContaineeViewController *)self cardPresentationController];
  [v4 setTakesAvailableHeight:1];

  v5 = [(ContaineeViewController *)self cardPresentationController];
  [v5 setAllowsSwipeToDismiss:0];

  v6 = [(ContaineeViewController *)self cardPresentationController];
  [v6 setDefaultContaineeLayout:5];

  v7 = [(ContaineeViewController *)self headerView];
  [v7 addSubview:self->_headerView];

  [(UGCPOIEnrichmentViewController *)self->_contentViewController setSuppressRatings:self->_suppressRatings];
  v8 = [(UGCPOIEnrichmentViewController *)self->_contentViewController view];
  [v8 setTranslatesAutoresizingMaskIntoConstraints:0];

  v9 = [(UGCPOIEnrichmentViewController *)self->_contentViewController view];
  [v9 setPreservesSuperviewLayoutMargins:1];

  [(UGCPOIEnrichmentContaineeViewController *)self addChildViewController:self->_contentViewController];
  v10 = [(ContaineeViewController *)self contentView];
  v11 = [(UGCPOIEnrichmentViewController *)self->_contentViewController view];
  [v10 addSubview:v11];

  [(UGCPOIEnrichmentViewController *)self->_contentViewController didMoveToParentViewController:self];
  v47 = [(UGCPOIEnrichmentModalHeaderView *)self->_headerView topAnchor];
  v48 = [(ContaineeViewController *)self headerView];
  v46 = [v48 topAnchor];
  v45 = [v47 constraintEqualToAnchor:v46];
  v50[0] = v45;
  v43 = [(UGCPOIEnrichmentModalHeaderView *)self->_headerView leadingAnchor];
  v44 = [(ContaineeViewController *)self headerView];
  v42 = [v44 leadingAnchor];
  v41 = [v43 constraintEqualToAnchor:v42];
  v50[1] = v41;
  v39 = [(UGCPOIEnrichmentModalHeaderView *)self->_headerView trailingAnchor];
  v40 = [(ContaineeViewController *)self headerView];
  v38 = [v40 trailingAnchor];
  v37 = [v39 constraintEqualToAnchor:v38];
  v50[2] = v37;
  v35 = [(UGCPOIEnrichmentModalHeaderView *)self->_headerView bottomAnchor];
  v36 = [(ContaineeViewController *)self headerView];
  v34 = [v36 bottomAnchor];
  v33 = [v35 constraintEqualToAnchor:v34];
  v50[3] = v33;
  v32 = [(UGCPOIEnrichmentViewController *)self->_contentViewController view];
  v30 = [v32 topAnchor];
  v31 = [(ContaineeViewController *)self contentView];
  v29 = [v31 topAnchor];
  v28 = [v30 constraintEqualToAnchor:v29];
  v50[4] = v28;
  v27 = [(UGCPOIEnrichmentViewController *)self->_contentViewController view];
  v25 = [v27 leadingAnchor];
  v26 = [(ContaineeViewController *)self contentView];
  v24 = [v26 leadingAnchor];
  v23 = [v25 constraintEqualToAnchor:v24];
  v50[5] = v23;
  v22 = [(UGCPOIEnrichmentViewController *)self->_contentViewController view];
  v21 = [v22 trailingAnchor];
  v12 = [(ContaineeViewController *)self contentView];
  v13 = [v12 trailingAnchor];
  v14 = [v21 constraintEqualToAnchor:v13];
  v50[6] = v14;
  v15 = [(UGCPOIEnrichmentViewController *)self->_contentViewController view];
  v16 = [v15 bottomAnchor];
  v17 = [(ContaineeViewController *)self contentView];
  v18 = [v17 bottomAnchor];
  v19 = [v16 constraintEqualToAnchor:v18];
  v50[7] = v19;
  v20 = [NSArray arrayWithObjects:v50 count:8];
  [NSLayoutConstraint activateConstraints:v20];

  [(UGCPOIEnrichmentContaineeViewController *)self _updateAppearanceForSubmission];
}

- (void)_updateAppearanceForSubmission
{
  v3 = [(UGCPOIEnrichmentForm *)self->_poiEnrichmentForm isComplete];
  v4 = [(UGCPOIEnrichmentModalHeaderView *)self->_headerView trailingButton];
  [v4 setEnabled:v3];
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
  v2 = [(UGCPOIEnrichmentContaineeViewController *)self theme];
  v3 = [v2 backgroundColorForModalFormSheet];

  return v3;
}

- (UGCPOIEnrichmentContaineeViewController)initWithPOIEnrichmentForm:(id)a3 delegate:(id)a4 presentationContext:(int64_t)a5
{
  v9 = a3;
  v10 = a4;
  v23.receiver = self;
  v23.super_class = UGCPOIEnrichmentContaineeViewController;
  v11 = [(UGCPOIEnrichmentContaineeViewController *)&v23 initWithNibName:0 bundle:0];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_poiEnrichmentForm, a3);
    [(UGCForm *)v12->_poiEnrichmentForm addObserver:v12];
    objc_storeWeak(&v12->_delegate, v10);
    v13 = [[UGCPOIEnrichmentViewController alloc] initWithPOIEnrichmentForm:v9 presentationContext:a5];
    contentViewController = v12->_contentViewController;
    v12->_contentViewController = v13;

    [(UGCPOIEnrichmentViewController *)v12->_contentViewController setDelegate:v12];
    v15 = [[UGCPOIEnrichmentModalHeaderView alloc] initWithFrame:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
    headerView = v12->_headerView;
    v12->_headerView = v15;

    [(UGCPOIEnrichmentModalHeaderView *)v12->_headerView setTranslatesAutoresizingMaskIntoConstraints:0];
    v17 = [(UGCPOIEnrichmentForm *)v12->_poiEnrichmentForm mapItem];
    [(UGCPOIEnrichmentModalHeaderView *)v12->_headerView setMapItem:v17];

    v18 = [(UGCPOIEnrichmentModalHeaderView *)v12->_headerView leadingButton];
    [v18 addTarget:v12 action:"cancelButtonPressed" forControlEvents:64];

    v19 = [(UGCPOIEnrichmentModalHeaderView *)v12->_headerView trailingButton];
    [v19 addTarget:v12 action:"sendButtonPressed" forControlEvents:64];

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