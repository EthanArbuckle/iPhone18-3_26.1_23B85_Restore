@interface _NTKCUltraCubePreviewViewController
- (_NTKCUltraCubePreviewViewController)initWithPreviewProvider:(id)provider;
- (_NTKCUltraCubePreviewViewControllerDelegate)delegate;
- (id)_toolbarItemsShowingRevert:(BOOL)revert;
- (int64_t)_optionFromPosition:(int64_t)position;
- (int64_t)_positionFromOption:(int64_t)option;
- (void)_cancelPressed;
- (void)_deletePressed;
- (void)_donePressed;
- (void)_hideLoadingLabel;
- (void)_hideLoadingSpinner;
- (void)_loadInitialCropPreview;
- (void)_revertPressed;
- (void)_setCropValidationState:(unint64_t)state animated:(BOOL)animated;
- (void)_setPreview:(id)preview animated:(BOOL)animated;
- (void)_setupCenteredViewWithPhoto:(id)photo maskedPhoto:(id)maskedPhoto;
- (void)_showLoadingLabel;
- (void)_showLoadingSpinner;
- (void)_updateAllButtonStates;
- (void)_updateDeleteButtonEnabledState;
- (void)_updateDoneButtonEnabledState;
- (void)_validatePreview:(id)preview withCrop:(CGRect)crop animated:(BOOL)animated;
- (void)dealloc;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)scrollViewDidScroll:(id)scroll;
- (void)scrollViewDidSettleFromInteracting:(id)interacting;
- (void)scrollViewWillBeginInteraction:(id)interaction;
- (void)setInitialPreviewState:(unint64_t)state;
- (void)ultracubeTimePlacementViewControllerDidUpdateSelectedOption:(id)option;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
@end

@implementation _NTKCUltraCubePreviewViewController

- (_NTKCUltraCubePreviewViewController)initWithPreviewProvider:(id)provider
{
  providerCopy = provider;
  v15.receiver = self;
  v15.super_class = _NTKCUltraCubePreviewViewController;
  v6 = [(_NTKCUltraCubePreviewViewController *)&v15 initWithNibName:0 bundle:0];
  v7 = v6;
  if (v6)
  {
    navigationItem = [(_NTKCUltraCubePreviewViewController *)v6 navigationItem];
    [navigationItem setHidesBackButton:1];

    v7->_initialPreviewState = 0;
    objc_storeStrong(&v7->_previewProvider, provider);
    v7->_cropValidationState = 0;
    v9 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:16 target:v7 action:"_deletePressed"];
    deleteButton = v7->_deleteButton;
    v7->_deleteButton = v9;

    -[UIBarButtonItem setEnabled:](v7->_deleteButton, "setEnabled:", [providerCopy ultracube_canDelete]);
    v11 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:1 target:v7 action:"_cancelPressed"];
    cancelButton = v7->_cancelButton;
    v7->_cancelButton = v11;

    v13 = NTKCCustomizationLocalizedString();
    [(_NTKCUltraCubePreviewViewController *)v7 setTitle:v13];
  }

  return v7;
}

- (void)dealloc
{
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = +[_NTKCUltraCubePreviewViewController _KVOScrollViewKeys];
  v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    do
    {
      v7 = 0;
      do
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [(NTKCCenteringScrollView *)self->_scrollView removeObserver:self forKeyPath:*(*(&v9 + 1) + 8 * v7) context:off_579B8];
        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }

  v8.receiver = self;
  v8.super_class = _NTKCUltraCubePreviewViewController;
  [(_NTKCUltraCubePreviewViewController *)&v8 dealloc];
}

- (void)viewDidLoad
{
  v65.receiver = self;
  v65.super_class = _NTKCUltraCubePreviewViewController;
  [(_NTKCUltraCubePreviewViewController *)&v65 viewDidLoad];
  v3 = +[UIColor systemBackgroundColor];
  view = [(_NTKCUltraCubePreviewViewController *)self view];
  [view setBackgroundColor:v3];

  v5 = +[CAShapeLayer layer];
  reverseMask = self->_reverseMask;
  self->_reverseMask = v5;

  v7 = [UIColor colorWithWhite:0.2 alpha:1.0];
  -[CAShapeLayer setFillColor:](self->_reverseMask, "setFillColor:", [v7 CGColor]);

  view2 = [(_NTKCUltraCubePreviewViewController *)self view];
  layer = [view2 layer];
  [layer addSublayer:self->_reverseMask];

  view3 = [(_NTKCUltraCubePreviewViewController *)self view];
  [view3 bounds];
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;

  v19 = [[NTKCCenteringScrollView alloc] initWithFrame:{v12, v14, v16, v18}];
  scrollView = self->_scrollView;
  self->_scrollView = v19;

  [(NTKCCenteringScrollView *)self->_scrollView setNtk_delegate:self];
  [(NTKCCenteringScrollView *)self->_scrollView setMinimumZoomScale:0.1];
  v63 = 0u;
  v64 = 0u;
  v61 = 0u;
  v62 = 0u;
  v21 = +[_NTKCUltraCubePreviewViewController _KVOScrollViewKeys];
  v22 = [v21 countByEnumeratingWithState:&v61 objects:v66 count:16];
  if (v22)
  {
    v23 = v22;
    v24 = *v62;
    do
    {
      v25 = 0;
      do
      {
        if (*v62 != v24)
        {
          objc_enumerationMutation(v21);
        }

        [(NTKCCenteringScrollView *)self->_scrollView addObserver:self forKeyPath:*(*(&v61 + 1) + 8 * v25) options:0 context:off_579B8];
        v25 = v25 + 1;
      }

      while (v23 != v25);
      v23 = [v21 countByEnumeratingWithState:&v61 objects:v66 count:16];
    }

    while (v23);
  }

  v26 = [[_NTKCUltraCubeOverlayScrollView alloc] initWithFrame:v12, v14, v16, v18];
  overlayScrollView = self->_overlayScrollView;
  self->_overlayScrollView = v26;

  v28 = +[UIColor clearColor];
  [(NTKCCenteringScrollView *)self->_overlayScrollView setBackgroundColor:v28];

  [(NTKCCenteringScrollView *)self->_overlayScrollView setUserInteractionEnabled:0];
  if ([(NTKUltraCubePreviewProvider *)self->_previewProvider ultracube_canCrop])
  {
    [(NTKUltraCubePreviewProvider *)self->_previewProvider ultracube_minimumNormalizedCropSize];
    v30 = 1.0 / v29;
    v32 = 1.0 / v31;
    if (v30 >= v32)
    {
      v30 = v32;
    }

    [(NTKCCenteringScrollView *)self->_scrollView setMaximumZoomRatio:v30];
    [(NTKCCenteringScrollView *)self->_scrollView maximumZoomRatio];
    [(NTKCCenteringScrollView *)self->_overlayScrollView setMaximumZoomRatio:?];
  }

  else
  {
    [(NTKCCenteringScrollView *)self->_scrollView setMaximumZoomRatio:1.0];
    [(NTKCCenteringScrollView *)self->_scrollView maximumZoomRatio];
    [(NTKCCenteringScrollView *)self->_overlayScrollView setMaximumZoomRatio:?];
    [(NTKCCenteringScrollView *)self->_scrollView setScrollEnabled:0];
    [(UIBarButtonItem *)self->_cancelButton setEnabled:0];
  }

  view4 = [(_NTKCUltraCubePreviewViewController *)self view];
  [view4 addSubview:self->_scrollView];

  v34 = [(_NTKCUltraCubePreviewViewController *)self _toolbarItemsShowingRevert:1];
  revertableToolbarItems = self->_revertableToolbarItems;
  self->_revertableToolbarItems = v34;

  v36 = [(_NTKCUltraCubePreviewViewController *)self _toolbarItemsShowingRevert:0];
  doneToolbarItems = self->_doneToolbarItems;
  self->_doneToolbarItems = v36;

  [(_NTKCUltraCubePreviewViewController *)self _loadInitialCropPreview];
  v38 = objc_opt_new();
  timeContainer = self->_timeContainer;
  self->_timeContainer = v38;

  [(UIView *)self->_timeContainer setUserInteractionEnabled:0];
  view5 = [(_NTKCUltraCubePreviewViewController *)self view];
  [view5 addSubview:self->_timeContainer];

  v41 = +[CLKDevice currentDevice];
  v42 = [NTKDigitalTimeLabel labelWithOptions:0 forDevice:v41];
  time = self->_time;
  self->_time = v42;

  [(NTKDigitalTimeLabel *)self->_time setUsesLegibility:1];
  v44 = [UIColor colorWithWhite:1.0 alpha:0.9];
  [(NTKDigitalTimeLabel *)self->_time setTextColor:v44];

  v45 = +[NTKDate faceDate];
  timeFormatter = [(NTKDigitalTimeLabel *)self->_time timeFormatter];
  [timeFormatter setOverrideDate:v45];

  [(NTKDigitalTimeLabel *)self->_time setHidden:1];
  [(UIView *)self->_timeContainer addSubview:self->_time];
  view6 = [(_NTKCUltraCubePreviewViewController *)self view];
  [view6 insertSubview:self->_overlayScrollView aboveSubview:self->_timeContainer];

  v48 = +[CAShapeLayer layer];
  mask = self->_mask;
  self->_mask = v48;

  [(CAShapeLayer *)self->_mask setFillRule:kCAFillRuleEvenOdd];
  v50 = [UIColor colorWithWhite:0.0 alpha:0.6];
  -[CAShapeLayer setFillColor:](self->_mask, "setFillColor:", [v50 CGColor]);

  view7 = [(_NTKCUltraCubePreviewViewController *)self view];
  layer2 = [view7 layer];
  [layer2 addSublayer:self->_mask];

  v53 = objc_opt_new();
  placementGuideContainer = self->_placementGuideContainer;
  self->_placementGuideContainer = v53;

  [(UIView *)self->_placementGuideContainer setAlpha:0.0];
  [(UIView *)self->_placementGuideContainer setUserInteractionEnabled:0];
  view8 = [(_NTKCUltraCubePreviewViewController *)self view];
  [view8 addSubview:self->_placementGuideContainer];

  v56 = objc_opt_new();
  placementGuideLabel = self->_placementGuideLabel;
  self->_placementGuideLabel = v56;

  v58 = [UIFont systemFontOfSize:16.0 weight:UIFontWeightRegular];
  [(UILabel *)self->_placementGuideLabel setFont:v58];

  [(UILabel *)self->_placementGuideLabel setTextAlignment:1];
  v59 = [NTKUltraCubeFaceBundle localizedStringForKey:@"PLACEMENT_GUIDE_INVALID" comment:&stru_49630];
  [(UILabel *)self->_placementGuideLabel setText:v59];

  v60 = +[UIColor systemRedColor];
  [(UILabel *)self->_placementGuideLabel setTextColor:v60];

  [(UIView *)self->_placementGuideContainer addSubview:self->_placementGuideLabel];
}

- (void)viewDidLayoutSubviews
{
  v81.receiver = self;
  v81.super_class = _NTKCUltraCubePreviewViewController;
  [(_NTKCUltraCubePreviewViewController *)&v81 viewDidLayoutSubviews];
  view = [(_NTKCUltraCubePreviewViewController *)self view];
  [view bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  previewProvider = [(_NTKCUltraCubePreviewViewController *)self previewProvider];
  [previewProvider ultracube_screenBounds];
  v75 = v14;
  v76 = v13;
  v73 = v16;
  v74 = v15;

  previewProvider2 = [(_NTKCUltraCubePreviewViewController *)self previewProvider];
  [previewProvider2 ultracube_screenCornerRadius];
  v71 = v18;

  v78 = v11;
  [(NTKCCenteringScrollView *)self->_scrollView setFrame:v5, v7, v9, v11];
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  [(NTKCCenteringScrollView *)self->_scrollView setContentInset:UIEdgeInsetsZero.top, left, bottom, right];
  v77 = v7;
  [(NTKCCenteringScrollView *)self->_overlayScrollView setFrame:v5, v7, v9, v11];
  [(NTKCCenteringScrollView *)self->_overlayScrollView setContentInset:UIEdgeInsetsZero.top, left, bottom, right];
  v22 = v5;
  v23 = v9;
  v24 = v11;
  UIRectCenteredIntegralRectScale();
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v32 = v31;
  [(NTKCCenteringScrollView *)self->_scrollView safeAreaInsets];
  v34 = v33;
  [(NTKCCenteringScrollView *)self->_scrollView safeAreaInsets];
  v36 = v34 - v35;
  dy = v34 - v35;
  v82.origin.x = v26;
  v82.origin.y = v28;
  v82.size.width = v30;
  v37 = v23;
  v82.size.height = v32;
  v83 = CGRectOffset(v82, 0.0, v36);
  x = v83.origin.x;
  y = v83.origin.y;
  width = v83.size.width;
  height = v83.size.height;
  [(CAShapeLayer *)self->_mask setFrame:v22, v77, v37, v24];
  [(CAShapeLayer *)self->_mask bounds];
  v42 = [UIBezierPath bezierPathWithRect:?];
  v43 = [UIBezierPath bezierPathWithRoundedRect:x cornerRadius:y, width, height, v71];
  [v42 appendPath:v43];

  -[CAShapeLayer setPath:](self->_mask, "setPath:", [v42 CGPath]);
  [(CAShapeLayer *)self->_reverseMask setFrame:x, y, width, height];
  [(CAShapeLayer *)self->_reverseMask bounds];
  v44 = [UIBezierPath bezierPathWithRoundedRect:"bezierPathWithRoundedRect:cornerRadius:" cornerRadius:?];
  -[CAShapeLayer setPath:](self->_reverseMask, "setPath:", [v44 CGPath]);

  v84.origin.x = v76;
  v84.origin.y = v75;
  v84.size.width = v74;
  v84.size.height = v73;
  v45 = 272.0 / CGRectGetWidth(v84);
  v85.origin.x = v76;
  v85.origin.y = v75;
  v85.size.width = v74;
  v85.size.height = v73;
  v46 = 340.0 / CGRectGetHeight(v85);
  if (v45 >= v46)
  {
    v46 = v45;
  }

  self->_timeContainerScale = v46;
  timeContainer = self->_timeContainer;
  v48 = *&CGAffineTransformIdentity.c;
  *&v80.a = *&CGAffineTransformIdentity.a;
  *&v80.c = v48;
  *&v80.tx = *&CGAffineTransformIdentity.tx;
  [(UIView *)timeContainer setTransform:&v80];
  UIRectCenteredIntegralRectScale();
  [(UIView *)self->_timeContainer setFrame:0];
  [(UIView *)self->_timeContainer frame];
  v87 = CGRectOffset(v86, 0.0, dy);
  [(UIView *)self->_timeContainer setFrame:v87.origin.x, v87.origin.y, v87.size.width, v87.size.height];
  CGAffineTransformMakeScale(&v79, self->_timeContainerScale, self->_timeContainerScale);
  v49 = self->_timeContainer;
  v80 = v79;
  [(UIView *)v49 setTransform:&v80];
  [(NTKCCenteringScrollView *)self->_scrollView setMinimumDisplaySize:width withCropRectCushion:height, 1.075 + -1.0];
  overlayScrollView = self->_overlayScrollView;
  [(NTKCCenteringScrollView *)self->_scrollView minimumDisplaySize];
  [NTKCCenteringScrollView setMinimumDisplaySize:"setMinimumDisplaySize:withCropRectCushion:" withCropRectCushion:?];
  [(UIView *)self->_placementGuideContainer setFrame:v22, v77, v37, v78];
  [(NTKCCenteringScrollView *)self->_scrollView safeAreaInsets];
  v52 = y - v51;
  [(NTKCCenteringScrollView *)self->_scrollView safeAreaInsets];
  [(UILabel *)self->_placementGuideLabel setFrame:0.0, v53, v37, v52];
  [(NTKCompanionUltraCubeTimePlacementViewController *)self->_timePlacementViewController idealViewHeight];
  v55 = v54;
  v88.origin.x = v22;
  v88.origin.y = v77;
  v88.size.width = v37;
  v88.size.height = v78;
  v56 = CGRectGetWidth(v88);
  view2 = [(NTKCompanionUltraCubeTimePlacementViewController *)self->_timePlacementViewController view];
  [view2 bounds];
  v92.origin.x = 0.0;
  v92.origin.y = 0.0;
  v92.size.width = v56;
  v92.size.height = v55;
  v58 = CGRectEqualToRect(v89, v92);

  if (!v58)
  {
    view3 = [(NTKCompanionUltraCubeTimePlacementViewController *)self->_timePlacementViewController view];
    [view3 setBounds:{0.0, 0.0, v56, v55}];
  }

  view4 = [(_NTKCUltraCubePreviewViewController *)self view];
  [view4 safeAreaInsets];
  v62 = v61;

  v90.origin.x = v22;
  v90.origin.y = v77;
  v90.size.width = v37;
  v90.size.height = v78;
  v63 = CGRectGetWidth(v90) * 0.5;
  v91.origin.x = v22;
  v91.origin.y = v77;
  v91.size.width = v37;
  v91.size.height = v78;
  v64 = CGRectGetMaxY(v91) - v55 * 0.5 - v62 + -16.0;
  view5 = [(NTKCompanionUltraCubeTimePlacementViewController *)self->_timePlacementViewController view];
  [view5 center];
  v67 = v66;
  v69 = v68;

  if (v67 != v63 || v69 != v64)
  {
    view6 = [(NTKCompanionUltraCubeTimePlacementViewController *)self->_timePlacementViewController view];
    [view6 setCenter:{v63, v64}];
  }
}

- (void)viewDidDisappear:(BOOL)disappear
{
  v5.receiver = self;
  v5.super_class = _NTKCUltraCubePreviewViewController;
  [(_NTKCUltraCubePreviewViewController *)&v5 viewDidDisappear:disappear];
  delegate = [(_NTKCUltraCubePreviewViewController *)self delegate];
  [delegate _ultracubePreviewViewControllerDidDismiss:self];
}

- (void)_loadInitialCropPreview
{
  [(_NTKCUltraCubePreviewViewController *)self setInitialPreviewState:1];
  objc_initWeak(&location, self);
  previewProvider = self->_previewProvider;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_30C8;
  v4[3] = &unk_48C40;
  objc_copyWeak(&v5, &location);
  [(NTKUltraCubePreviewProvider *)previewProvider ultracube_getPreviewWithCompletion:v4];
  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

- (void)setInitialPreviewState:(unint64_t)state
{
  self->_initialPreviewState = state;
  switch(state)
  {
    case 3uLL:
      [(_NTKCUltraCubePreviewViewController *)self _hideLoadingSpinner];

      [(_NTKCUltraCubePreviewViewController *)self _hideLoadingLabel];
      break;
    case 2uLL:
      [(_NTKCUltraCubePreviewViewController *)self _hideLoadingSpinner];
      v4 = [NTKUltraCubeFaceBundle localizedStringForKey:@"LOADING_IMAGE_ERROR_MESSAGE" comment:@"Something went wrong."];
      [(UILabel *)self->_loadingLabel setText:v4];

      break;
    case 1uLL:
      [(_NTKCUltraCubePreviewViewController *)self setToolbarItems:self->_doneToolbarItems animated:0];
      [(UIBarButtonItem *)self->_doneButton setEnabled:0];
      [(UIBarButtonItem *)self->_deleteButton setEnabled:0];
      [(_NTKCUltraCubePreviewViewController *)self _showLoadingLabel];

      [(_NTKCUltraCubePreviewViewController *)self _showLoadingSpinner];
      break;
  }
}

- (void)_showLoadingSpinner
{
  if (!self->_loadingSpinner)
  {
    v3 = [[UIActivityIndicatorView alloc] initWithActivityIndicatorStyle:100];
    loadingSpinner = self->_loadingSpinner;
    self->_loadingSpinner = v3;

    [(UIActivityIndicatorView *)self->_loadingSpinner startAnimating];
  }

  v6 = [[UIBarButtonItem alloc] initWithCustomView:self->_loadingSpinner];
  navigationItem = [(_NTKCUltraCubePreviewViewController *)self navigationItem];
  [navigationItem setRightBarButtonItem:v6];
}

- (void)_hideLoadingSpinner
{
  navigationItem = [(_NTKCUltraCubePreviewViewController *)self navigationItem];
  [navigationItem setRightBarButtonItem:0];

  [(UIActivityIndicatorView *)self->_loadingSpinner stopAnimating];
  loadingSpinner = self->_loadingSpinner;
  self->_loadingSpinner = 0;
}

- (void)_showLoadingLabel
{
  if (!self->_loadingLabel)
  {
    view = [(_NTKCUltraCubePreviewViewController *)self view];
    [view bounds];
    UIRectCenteredIntegralRectScale();
    v5 = v4;
    v7 = v6;
    v9 = v8;
    v11 = v10;

    navigationController = [(_NTKCUltraCubePreviewViewController *)self navigationController];
    view2 = [navigationController view];
    [view2 safeAreaInsets];
    v15 = v14;
    navigationController2 = [(_NTKCUltraCubePreviewViewController *)self navigationController];
    view3 = [navigationController2 view];
    [view3 safeAreaInsets];
    v19 = v15 - v18;

    v27.origin.x = v5;
    v27.origin.y = v7;
    v27.size.width = v9;
    v27.size.height = v11;
    v28 = CGRectOffset(v27, 0.0, v19);
    v20 = [[UILabel alloc] initWithFrame:{v28.origin.x, v28.origin.y, v28.size.width, v28.size.height}];
    loadingLabel = self->_loadingLabel;
    self->_loadingLabel = v20;

    +[UIFont labelFontSize];
    v22 = [UIFont systemFontOfSize:?];
    [(UILabel *)self->_loadingLabel setFont:v22];

    v23 = [NTKUltraCubeFaceBundle localizedStringForKey:@"LOADING_IMAGE_MESSAGE" comment:@"Loading Image..."];
    [(UILabel *)self->_loadingLabel setText:v23];

    [(UILabel *)self->_loadingLabel setTextAlignment:1];
    v24 = +[UIColor placeholderTextColor];
    [(UILabel *)self->_loadingLabel setTextColor:v24];

    view4 = [(_NTKCUltraCubePreviewViewController *)self view];
    [view4 addSubview:self->_loadingLabel];
  }
}

- (void)_hideLoadingLabel
{
  [(UILabel *)self->_loadingLabel removeFromSuperview];
  loadingLabel = self->_loadingLabel;
  self->_loadingLabel = 0;
}

- (void)_setupCenteredViewWithPhoto:(id)photo maskedPhoto:(id)maskedPhoto
{
  photoCopy = photo;
  maskedPhotoCopy = maskedPhoto;
  centeredView = [(NTKCCenteringScrollView *)self->_scrollView centeredView];

  if (!centeredView)
  {
    v8 = [[UIImageView alloc] initWithImage:photoCopy];
    [(NTKCCenteringScrollView *)self->_scrollView setCenteredView:v8];

    [(NTKCCenteringScrollView *)self->_overlayScrollView setHidden:maskedPhotoCopy == 0];
    if (maskedPhotoCopy)
    {
      v9 = [[UIImageView alloc] initWithImage:maskedPhotoCopy];
      [(NTKCCenteringScrollView *)self->_overlayScrollView setCenteredView:v9];

      v10 = &off_4B420;
    }

    else
    {
      v10 = &off_4B438;
    }

    v11 = [[NTKCompanionUltraCubeTimePlacementViewController alloc] initWithOptions:v10];
    v12 = BPSBridgeTintColor();
    view = [(NTKCompanionUltraCubeTimePlacementViewController *)v11 view];
    [view setTintColor:v12];

    [(NTKCompanionUltraCubeTimePlacementViewController *)v11 setDelegate:self];
    [(_NTKCUltraCubePreviewViewController *)self addChildViewController:v11];
    view2 = [(_NTKCUltraCubePreviewViewController *)self view];
    view3 = [(NTKCompanionUltraCubeTimePlacementViewController *)v11 view];
    [view2 addSubview:view3];

    [(NTKCompanionUltraCubeTimePlacementViewController *)v11 didMoveToParentViewController:self];
    timePlacementViewController = self->_timePlacementViewController;
    self->_timePlacementViewController = v11;

    view4 = [(_NTKCUltraCubePreviewViewController *)self view];
    [view4 setNeedsLayout];
  }
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  if (off_579B8 == context)
  {
    if ([path isEqualToString:{@"bounds", object, change}])
    {
      [(NTKCCenteringScrollView *)self->_scrollView zoomScale];
      [(NTKCCenteringScrollView *)self->_overlayScrollView setZoomScale:0 animated:?];
      [(NTKCCenteringScrollView *)self->_scrollView contentInset];
      [(NTKCCenteringScrollView *)self->_overlayScrollView setContentInset:?];
      [(NTKCCenteringScrollView *)self->_scrollView bounds];
      overlayScrollView = self->_overlayScrollView;

      [(NTKCCenteringScrollView *)overlayScrollView setBounds:?];
    }
  }

  else
  {
    v8.receiver = self;
    v8.super_class = _NTKCUltraCubePreviewViewController;
    [(_NTKCUltraCubePreviewViewController *)&v8 observeValueForKeyPath:path ofObject:object change:change context:?];
  }
}

- (void)scrollViewWillBeginInteraction:(id)interaction
{
  [(_NTKCUltraCubePreviewViewController *)self setDidInteractWithCropView:1];
  currentPreview = [(_NTKCUltraCubePreviewViewController *)self currentPreview];
  [(NTKCCenteringScrollView *)self->_scrollView cropRect];
  [(_NTKCUltraCubePreviewViewController *)self _validatePreview:currentPreview withCrop:0 animated:?];

  toolbarItems = [(_NTKCUltraCubePreviewViewController *)self toolbarItems];
  v6 = [toolbarItems isEqualToArray:self->_revertableToolbarItems];

  if (v6)
  {
    doneToolbarItems = self->_doneToolbarItems;

    [(_NTKCUltraCubePreviewViewController *)self setToolbarItems:doneToolbarItems animated:1];
  }
}

- (void)scrollViewDidScroll:(id)scroll
{
  currentPreview = [(_NTKCUltraCubePreviewViewController *)self currentPreview];
  [(NTKCCenteringScrollView *)self->_scrollView cropRect];
  [(_NTKCUltraCubePreviewViewController *)self _validatePreview:currentPreview withCrop:0 animated:?];
}

- (void)scrollViewDidSettleFromInteracting:(id)interacting
{
  currentPreview = [(_NTKCUltraCubePreviewViewController *)self currentPreview];
  [(NTKCCenteringScrollView *)self->_scrollView cropRect];
  x = v5;
  y = v7;
  width = v9;
  height = v11;
  photoScale = self->_photoScale;
  if (photoScale != 0.0)
  {
    CGAffineTransformMakeScale(&v19, photoScale, self->_photoScale);
    v20.origin.x = x;
    v20.origin.y = y;
    v20.size.width = width;
    v20.size.height = height;
    v21 = CGRectApplyAffineTransform(v20, &v19);
    x = v21.origin.x;
    y = v21.origin.y;
    width = v21.size.width;
    height = v21.size.height;
  }

  v14 = [NTKUltraCubeCropPreview alloc];
  photo = [currentPreview photo];
  maskedPhoto = [currentPreview maskedPhoto];
  previewValidator = [currentPreview previewValidator];
  v18 = -[NTKUltraCubeCropPreview initWithPhoto:maskedPhoto:previewValidator:crop:timeLabelPosition:revertable:](v14, "initWithPhoto:maskedPhoto:previewValidator:crop:timeLabelPosition:revertable:", photo, maskedPhoto, previewValidator, [currentPreview timeLabelPosition], 1, x, y, width, height);

  [(_NTKCUltraCubePreviewViewController *)self _setPreview:v18 animated:1];
}

- (void)_setPreview:(id)preview animated:(BOOL)animated
{
  previewCopy = preview;
  if ([(NTKDigitalTimeLabel *)self->_time isHidden])
  {
    [(NTKDigitalTimeLabel *)self->_time setHidden:0];
  }

  [(NTKUltraCubeCropPreview *)previewCopy crop];
  x = v6;
  y = v8;
  width = v10;
  height = v12;
  photo = [(NTKUltraCubeCropPreview *)previewCopy photo];
  maskedPhoto = [(NTKUltraCubeCropPreview *)previewCopy maskedPhoto];
  [photo scale];
  self->_photoScale = v16;
  [(_NTKCUltraCubePreviewViewController *)self _setupCenteredViewWithPhoto:photo maskedPhoto:maskedPhoto];
  timeLabelPosition = [(NTKUltraCubeCropPreview *)previewCopy timeLabelPosition];
  [(NTKCompanionUltraCubeTimePlacementViewController *)self->_timePlacementViewController setSelectedOption:[(_NTKCUltraCubePreviewViewController *)self _optionFromPosition:timeLabelPosition]];
  v32.origin.x = x;
  v32.origin.y = y;
  v32.size.width = width;
  v32.size.height = height;
  if (!CGRectIsEmpty(v32))
  {
    photoScale = self->_photoScale;
    if (photoScale != 0.0)
    {
      CGAffineTransformMakeScale(&v31, 1.0 / photoScale, 1.0 / photoScale);
      v33.origin.x = x;
      v33.origin.y = y;
      v33.size.width = width;
      v33.size.height = height;
      v34 = CGRectApplyAffineTransform(v33, &v31);
      x = v34.origin.x;
      y = v34.origin.y;
      width = v34.size.width;
      height = v34.size.height;
    }
  }

  [(NTKCCenteringScrollView *)self->_scrollView setCropRect:x, y, width, height];
  [(NTKCCenteringScrollView *)self->_overlayScrollView setCropRect:x, y, width, height];
  v19 = +[CLKDevice currentDevice];
  ultracube_timeLabelFont = [(NTKUltraCubePreviewProvider *)self->_previewProvider ultracube_timeLabelFont];
  v21 = [(NTKUltraCubeCropPreview *)previewCopy timeLabelStyleForDevice:v19 font:ultracube_timeLabelFont];
  [(NTKDigitalTimeLabel *)self->_time setStyle:v21];
  [(NTKDigitalTimeLabel *)self->_time setFrameUsingCurrentStyle];
  v22 = [(_NTKCUltraCubePreviewViewController *)self _shouldPositionMaskLabel:timeLabelPosition];
  v23 = 0.0;
  if (v22)
  {
    v23 = 1.0;
  }

  [(NTKCCenteringScrollView *)self->_overlayScrollView setAlpha:v23];
  isRevertable = [(NTKUltraCubeCropPreview *)previewCopy isRevertable];
  didInteractWithCropView = [(_NTKCUltraCubePreviewViewController *)self didInteractWithCropView];
  v26 = &OBJC_IVAR____NTKCUltraCubePreviewViewController__revertableToolbarItems;
  if (didInteractWithCropView & 1 | ((isRevertable & 1) == 0))
  {
    v26 = &OBJC_IVAR____NTKCUltraCubePreviewViewController__doneToolbarItems;
  }

  v27 = *(&self->super.super.super.isa + *v26);
  toolbarItems = [(_NTKCUltraCubePreviewViewController *)self toolbarItems];

  if (toolbarItems != v27)
  {
    [(_NTKCUltraCubePreviewViewController *)self setToolbarItems:v27 animated:0];
  }

  [(_NTKCUltraCubePreviewViewController *)self _validatePreview:previewCopy withCrop:0 animated:x, y, width, height];
  [(_NTKCUltraCubePreviewViewController *)self _updateAllButtonStates];
  currentPreview = self->_currentPreview;
  self->_currentPreview = previewCopy;
  v30 = previewCopy;
}

- (int64_t)_positionFromOption:(int64_t)option
{
  if ((option - 1) > 3)
  {
    return 2;
  }

  else
  {
    return qword_42B68[option - 1];
  }
}

- (int64_t)_optionFromPosition:(int64_t)position
{
  if ((position - 1) > 3)
  {
    return 3;
  }

  else
  {
    return qword_42B88[position - 1];
  }
}

- (void)_setCropValidationState:(unint64_t)state animated:(BOOL)animated
{
  self->_cropValidationState = state;
  v5 = 0.0;
  block[1] = 3221225472;
  block[0] = _NSConcreteStackBlock;
  block[2] = sub_3F78;
  block[3] = &unk_48C90;
  animatedCopy = animated;
  if (state == 1)
  {
    v5 = 1.0;
  }

  block[4] = self;
  *&block[5] = v5;
  dispatch_async(&_dispatch_main_q, block);
  [(_NTKCUltraCubePreviewViewController *)self _updateDoneButtonEnabledState];
}

- (void)_validatePreview:(id)preview withCrop:(CGRect)crop animated:(BOOL)animated
{
  animatedCopy = animated;
  y = crop.origin.y;
  x = crop.origin.x;
  previewCopy = preview;
  if (-[_NTKCUltraCubePreviewViewController _timePositionRequiresCropValidation:](self, "_timePositionRequiresCropValidation:", [previewCopy timeLabelPosition]))
  {
    photo = [previewCopy photo];
    [photo size];
    v12 = v11;
    v14 = v13;

    [(NTKCCenteringScrollView *)self->_scrollView zoomScale];
    v16 = v15;
    font = [(NTKDigitalTimeLabel *)self->_time font];
    [font capHeight];
    v19 = v18;

    font2 = [(NTKDigitalTimeLabel *)self->_time font];
    [font2 ascender];
    dy = y;
    v22 = x;
    v23 = floor(v21 - v19);

    [(NTKDigitalTimeLabel *)self->_time frame];
    v25 = v24;
    [(NTKDigitalTimeLabel *)self->_time frame];
    v27 = v23 + v26;
    [(NTKDigitalTimeLabel *)self->_time frame];
    v29 = v28;
    CGAffineTransformMakeScale(&v42, self->_timeContainerScale, self->_timeContainerScale);
    v43.origin.x = v25;
    v43.origin.y = v27;
    v43.size.width = v29;
    v43.size.height = v19;
    v44 = CGRectApplyAffineTransform(v43, &v42);
    v30 = v44.origin.x;
    v31 = v44.origin.y;
    width = v44.size.width;
    height = v44.size.height;
    CGAffineTransformMakeScale(&v42, 1.0 / v16, 1.0 / v16);
    v45.origin.x = v30;
    v45.origin.y = v31;
    v45.size.width = width;
    v45.size.height = height;
    v46 = CGRectApplyAffineTransform(v45, &v42);
    v47 = CGRectOffset(v46, v22, dy);
    v34 = v47.origin.x / v12;
    v35 = v47.origin.y / v14;
    v36 = v47.size.width / v12;
    v37 = v47.size.height / v14;
    previewValidator = [previewCopy previewValidator];
    v40[0] = _NSConcreteStackBlock;
    v40[1] = 3221225472;
    v40[2] = sub_4274;
    v40[3] = &unk_48CB8;
    v40[4] = self;
    v41 = animatedCopy;
    [previewValidator validateTimeLabel:v40 completion:{v34, v35, v36, v37}];
  }

  else
  {
    [(_NTKCUltraCubePreviewViewController *)self _setCropValidationState:0 animated:animatedCopy];
  }
}

- (void)_updateAllButtonStates
{
  [(_NTKCUltraCubePreviewViewController *)self _updateDoneButtonEnabledState];

  [(_NTKCUltraCubePreviewViewController *)self _updateDeleteButtonEnabledState];
}

- (void)_updateDeleteButtonEnabledState
{
  ultracube_canDelete = [(NTKUltraCubePreviewProvider *)self->_previewProvider ultracube_canDelete];
  if (self->_initialPreviewState == 3)
  {
    v4 = ultracube_canDelete;
  }

  else
  {
    v4 = 0;
  }

  deleteButton = self->_deleteButton;

  [(UIBarButtonItem *)deleteButton setEnabled:v4];
}

- (void)_updateDoneButtonEnabledState
{
  isDragging = [(NTKCCenteringScrollView *)self->_scrollView isDragging];
  isDecelerating = [(NTKCCenteringScrollView *)self->_scrollView isDecelerating];
  v5 = 0;
  if ((isDragging & 1) == 0 && (isDecelerating & 1) == 0)
  {
    v5 = self->_cropValidationState != 1 && self->_initialPreviewState == 3;
  }

  doneButton = self->_doneButton;

  [(UIBarButtonItem *)doneButton setEnabled:v5];
}

- (void)_cancelPressed
{
  if ([(_NTKCUltraCubePreviewViewController *)self didInteractWithCropView])
  {
    v3 = [UIAlertController alertControllerWithTitle:0 message:0 preferredStyle:0];
    v4 = NTKCCustomizationLocalizedString();
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_4570;
    v10[3] = &unk_48CE0;
    v10[4] = self;
    v5 = [UIAlertAction actionWithTitle:v4 style:0 handler:v10];
    [v3 addAction:v5];

    v6 = NTKCCustomizationLocalizedString();
    v7 = [UIAlertAction actionWithTitle:v6 style:1 handler:0];
    [v3 addAction:v7];

    parentViewController = [(_NTKCUltraCubePreviewViewController *)self parentViewController];
    [parentViewController presentViewController:v3 animated:1 completion:0];
  }

  else
  {
    delegate = [(_NTKCUltraCubePreviewViewController *)self delegate];
    [delegate _ultracubePreviewViewControllerWantsToCancel:self];
  }
}

- (void)_deletePressed
{
  v3 = NTKCCustomizationLocalizedString();
  v4 = [UIAlertController alertControllerWithTitle:0 message:v3 preferredStyle:0];
  v5 = NTKCCustomizationLocalizedString();
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_473C;
  v9[3] = &unk_48CE0;
  v9[4] = self;
  v6 = [UIAlertAction actionWithTitle:v5 style:2 handler:v9];
  [v4 addAction:v6];

  v7 = NTKCCustomizationLocalizedString();
  v8 = [UIAlertAction actionWithTitle:v7 style:1 handler:0];
  [v4 addAction:v8];

  [(_NTKCUltraCubePreviewViewController *)self presentViewController:v4 animated:1 completion:0];
}

- (void)_donePressed
{
  delegate = [(_NTKCUltraCubePreviewViewController *)self delegate];
  [delegate _ultracubePreviewViewControllerWantsToSave:self];
}

- (void)_revertPressed
{
  v3 = [NTKUltraCubeFaceBundle localizedStringForKey:@"REVERT_WARNING_MESSAGE" comment:@"Revert to original will…"];
  v4 = [UIAlertController alertControllerWithTitle:0 message:v3 preferredStyle:0];
  v5 = [NTKUltraCubeFaceBundle localizedStringForKey:@"REVERT_TO_ORIGINAL" comment:@"Revert to Original"];
  objc_initWeak(&location, self);
  v9 = _NSConcreteStackBlock;
  v10 = 3221225472;
  v11 = sub_49B4;
  v12 = &unk_48D08;
  objc_copyWeak(&v13, &location);
  v6 = [UIAlertAction actionWithTitle:v5 style:2 handler:&v9];
  [v4 addAction:{v6, v9, v10, v11, v12}];

  v7 = [NTKUltraCubeFaceBundle localizedStringForKey:@"CANCEL" comment:@"Cancel"];
  v8 = [UIAlertAction actionWithTitle:v7 style:1 handler:0];
  [v4 addAction:v8];

  [(_NTKCUltraCubePreviewViewController *)self presentViewController:v4 animated:1 completion:0];
  objc_destroyWeak(&v13);
  objc_destroyWeak(&location);
}

- (id)_toolbarItemsShowingRevert:(BOOL)revert
{
  if (revert)
  {
    v4 = [NTKUltraCubeFaceBundle localizedStringForKey:@"REVERT" comment:@"Revert"];
    v5 = [[UIBarButtonItem alloc] initWithTitle:v4 style:0 target:self action:"_revertPressed"];
    v6 = +[UIColor systemRedColor];
    [(UIBarButtonItem *)v5 setTintColor:v6];
  }

  else
  {
    doneButton = self->_doneButton;
    if (!doneButton)
    {
      v8 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:0 target:self action:"_donePressed"];
      v9 = self->_doneButton;
      self->_doneButton = v8;

      [(UIBarButtonItem *)self->_doneButton setEnabled:0];
      doneButton = self->_doneButton;
    }

    v5 = doneButton;
  }

  v10 = +[UIBarButtonItem flexibleSpaceItem];
  deleteButton = self->_deleteButton;
  v15[1] = v10;
  v15[2] = deleteButton;
  v12 = +[UIBarButtonItem flexibleSpaceItem];
  v15[3] = v12;
  v15[4] = v5;
  v13 = [NSArray arrayWithObjects:v15 count:5];

  return v13;
}

- (void)ultracubeTimePlacementViewControllerDidUpdateSelectedOption:(id)option
{
  optionCopy = option;
  currentPreview = [(_NTKCUltraCubePreviewViewController *)self currentPreview];
  if (currentPreview)
  {
    [(_NTKCUltraCubePreviewViewController *)self setDidInteractWithCropView:1];
    v5 = -[_NTKCUltraCubePreviewViewController _positionFromOption:](self, "_positionFromOption:", [optionCopy selectedOption]);
    v6 = [NTKUltraCubeCropPreview alloc];
    photo = [currentPreview photo];
    maskedPhoto = [currentPreview maskedPhoto];
    previewValidator = [currentPreview previewValidator];
    [currentPreview crop];
    v10 = [(NTKUltraCubeCropPreview *)v6 initWithPhoto:photo maskedPhoto:maskedPhoto previewValidator:previewValidator crop:v5 timeLabelPosition:1 revertable:?];

    [(_NTKCUltraCubePreviewViewController *)self _setPreview:v10 animated:1];
  }
}

- (_NTKCUltraCubePreviewViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end