@interface ParkedCarViewController
- (ParkedCarViewControllerDelegate)parkedCarDelegate;
- (UIScrollView)scrollView;
- (UIScrollViewDelegate)scrollViewDelegate;
- (id)animationControllerForDismissedController:(id)a3;
- (id)animationControllerForPresentedController:(id)a3 presentingController:(id)a4 sourceController:(id)a5;
- (void)_editLocationTapped;
- (void)_getDirections;
- (void)_handlePhotoTap;
- (void)_imagePickerDidRetake:(id)a3;
- (void)_loadStackViewIfNeeded;
- (void)_locationApprovalDidChange:(id)a3;
- (void)_showCamera;
- (void)_showLocationRefinement;
- (void)_updateContentAlpha:(double)a3;
- (void)_updatePocketInsets;
- (void)_updateSectionControllerState:(BOOL)a3;
- (void)imagePickerController:(id)a3 didFinishPickingMediaWithInfo:(id)a4;
- (void)imagePickerControllerDidCancel:(id)a3;
- (void)instrumentDismissAction;
- (void)locationRefinementViewController:(id)a3 didSelectCoordinate:(CLLocationCoordinate2D)a4;
- (void)parkedCarDetailsSectionControllerDidRemovePhoto:(id)a3;
- (void)parkedCarFooterActionsSectionControllerDidRemoveParkedCar:(id)a3;
- (void)parkedCarFooterActionsSectionControllerDidShareLocation:(id)a3;
- (void)parkedCarManager:(id)a3 didUpdateParkedCar:(id)a4;
- (void)performAction:(int64_t)a3;
- (void)setContentAlpha:(double)a3;
- (void)setParkedCar:(id)a3;
- (void)setScrollViewDelegate:(id)a3;
- (void)textFieldRowViewDidBeginEditing:(id)a3;
- (void)textFieldRowViewDidChange:(id)a3;
- (void)textFieldRowViewDidEndEditing:(id)a3;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation ParkedCarViewController

- (ParkedCarViewControllerDelegate)parkedCarDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_parkedCarDelegate);

  return WeakRetained;
}

- (void)instrumentDismissAction
{
  v2 = +[MKMapService sharedService];
  [v2 captureUserAction:4 onTarget:201 eventValue:0];
}

- (void)parkedCarFooterActionsSectionControllerDidRemoveParkedCar:(id)a3
{
  v4 = +[MKMapService sharedService];
  LODWORD(v6) = 1;
  [v4 capturePlaceCardUserAction:6033 onTarget:201 eventValue:0 mapItem:0 timestamp:0xFFFFFFFFLL resultIndex:0 targetID:CFAbsoluteTimeGetCurrent() providerID:0 animationID:0 actionURL:0 photoID:0 placeCardType:v6 localizedMapItemCategory:0 availableActions:0 unactionableUIElements:0];

  v5 = +[ParkedCarManager sharedManager];
  [v5 removeParkedCar];

  v7 = [(ParkedCarViewController *)self parkedCarDelegate];
  [v7 parkedCarViewControllerDidRequestDismissal:self];
}

- (void)parkedCarFooterActionsSectionControllerDidShareLocation:(id)a3
{
  v4 = [(ParkedCarViewController *)self parkedCarDelegate];
  [v4 parkedCarViewControllerDidSelectShare:self];
}

- (void)parkedCarDetailsSectionControllerDidRemovePhoto:(id)a3
{
  v5 = +[ParkedCarManager sharedManager];
  v4 = [(ParkedCarViewController *)self parkedCar];
  [v5 removeImageForParkedCar:v4];
}

- (void)locationRefinementViewController:(id)a3 didSelectCoordinate:(CLLocationCoordinate2D)a4
{
  longitude = a4.longitude;
  latitude = a4.latitude;
  if ([GEOLocationShifter isLocationShiftRequiredForCoordinate:a3])
  {
    v7 = 2;
  }

  else
  {
    v7 = 1;
  }

  v8 = +[ParkedCarManager sharedManager];
  [v8 setCoordinate:v7 referenceFrame:self->_parkedCar forParkedCar:{latitude, longitude}];
}

- (void)imagePickerControllerDidCancel:(id)a3
{
  v6 = a3;
  v4 = +[NSNotificationCenter defaultCenter];
  [v4 removeObserver:self name:_UIImagePickerControllerUserDidRejectItemNotification object:0];

  v5 = +[MKMapService sharedService];
  [v5 captureUserAction:18 onTarget:620 eventValue:0];

  [v6 dismissViewControllerAnimated:1 completion:0];
}

- (void)imagePickerController:(id)a3 didFinishPickingMediaWithInfo:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = +[NSNotificationCenter defaultCenter];
  [v8 removeObserver:self name:_UIImagePickerControllerUserDidRejectItemNotification object:0];

  v9 = +[MKMapService sharedService];
  [v9 captureUserAction:17 onTarget:620 eventValue:0];

  v11 = [v6 objectForKeyedSubscript:UIImagePickerControllerOriginalImage];

  v10 = +[ParkedCarManager sharedManager];
  [v10 setImage:v11 forParkedCar:self->_parkedCar];

  [v7 dismissViewControllerAnimated:1 completion:0];
}

- (void)textFieldRowViewDidChange:(id)a3
{
  contentStackView = self->_contentStackView;
  v4 = [a3 textView];
  [(MUScrollableStackView *)contentStackView _maps_scrollTextViewSelectedRangeVisible:v4];
}

- (void)textFieldRowViewDidEndEditing:(id)a3
{
  v4 = a3;
  v6 = +[ParkedCarManager sharedManager];
  v5 = [v4 currentTextFieldValue];

  [v6 setNotes:v5 forParkedCar:self->_parkedCar];
}

- (void)textFieldRowViewDidBeginEditing:(id)a3
{
  v4 = a3;
  v5 = +[MKMapService sharedService];
  LODWORD(v8) = 1;
  [v5 capturePlaceCardUserAction:6032 onTarget:201 eventValue:0 mapItem:0 timestamp:0xFFFFFFFFLL resultIndex:0 targetID:CFAbsoluteTimeGetCurrent() providerID:0 animationID:0 actionURL:0 photoID:0 placeCardType:v8 localizedMapItemCategory:0 availableActions:0 unactionableUIElements:0];

  v6 = [(ParkedCarViewController *)self parkedCarDelegate];
  [v6 parkedCarViewControllerDidBeginEditing:self];

  contentStackView = self->_contentStackView;
  v9 = [v4 textView];

  [v9 frame];
  [(MUScrollableStackView *)contentStackView scrollRectToVisible:1 animated:?];
}

- (id)animationControllerForDismissedController:(id)a3
{
  v4 = a3;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v6 = [FullscreenImageViewControllerZoomAnimationController alloc];
    v7 = [(ParkedCarDetailsSectionController *)self->_detailsSectionController photoImageView];
    v8 = [(FullscreenImageViewControllerZoomAnimationController *)v6 initWithOriginalImageView:v7];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)animationControllerForPresentedController:(id)a3 presentingController:(id)a4 sourceController:(id)a5
{
  v6 = a3;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v8 = [FullscreenImageViewControllerZoomAnimationController alloc];
    v9 = [(ParkedCarDetailsSectionController *)self->_detailsSectionController photoImageView];
    v10 = [(FullscreenImageViewControllerZoomAnimationController *)v8 initWithOriginalImageView:v9];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (void)_editLocationTapped
{
  v3 = +[MKMapService sharedService];
  LODWORD(v4) = 1;
  [v3 capturePlaceCardUserAction:6027 onTarget:201 eventValue:0 mapItem:0 timestamp:0xFFFFFFFFLL resultIndex:0 targetID:CFAbsoluteTimeGetCurrent() providerID:0 animationID:0 actionURL:0 photoID:0 placeCardType:v4 localizedMapItemCategory:0 availableActions:0 unactionableUIElements:0];

  [(ParkedCarViewController *)self _showLocationRefinement];
}

- (void)_getDirections
{
  v3 = +[MKMapService sharedService];
  LODWORD(v10) = 1;
  [v3 capturePlaceCardUserAction:6003 onTarget:201 eventValue:0 mapItem:0 timestamp:0xFFFFFFFFLL resultIndex:0 targetID:CFAbsoluteTimeGetCurrent() providerID:0 animationID:0 actionURL:0 photoID:0 placeCardType:v10 localizedMapItemCategory:0 availableActions:0 unactionableUIElements:0];

  v4 = +[MKLocationManager sharedLocationManager];
  v11 = [v4 lastLocation];

  if (v11 && (+[MKLocationManager sharedLocationManager](MKLocationManager, "sharedLocationManager"), v5 = objc_claimAutoreleasedReturnValue(), v6 = [v5 isAuthorizedForPreciseLocation], v5, v6))
  {
    [v11 coordinate];
    [(ParkedCar *)self->_parkedCar coordinate];
    GEOCalculateDistance();
    v8 = 2 * (v7 <= 5000.0);
  }

  else
  {
    v8 = 0;
  }

  v9 = [(ParkedCarViewController *)self parkedCarDelegate];
  [v9 parkerCarViewControllerDidSelectDoDirections:self transportType:v8];
}

- (void)_imagePickerDidRetake:(id)a3
{
  v3 = +[MKMapService sharedService];
  [v3 captureUserAction:6031 onTarget:620 eventValue:0];
}

- (void)_showCamera
{
  v4 = objc_alloc_init(UIImagePickerController);
  [v4 setDelegate:self];
  [v4 setSourceType:1];
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 addObserver:self selector:"_imagePickerDidRetake:" name:_UIImagePickerControllerUserDidRejectItemNotification object:0];

  [(ParkedCarViewController *)self presentViewController:v4 animated:1 completion:0];
}

- (void)_showLocationRefinement
{
  v5 = objc_alloc_init(MKMapCamera);
  [(ParkedCar *)self->_parkedCar coordinate];
  [v5 setCenterCoordinate:?];
  [v5 setAltitude:1000.0];
  v3 = [[ParkedCarLocationRefinementViewController alloc] initWithCamera:v5 parkedCar:self->_parkedCar];
  [(LocationRefinementViewController *)v3 setDelegate:self];
  [(ParkedCarLocationRefinementViewController *)v3 setModalPresentationStyle:2];
  v4 = [[UINavigationController alloc] initWithRootViewController:v3];
  [(ParkedCarViewController *)self presentViewController:v4 animated:1 completion:0];
}

- (void)_handlePhotoTap
{
  v3 = [(ParkedCar *)self->_parkedCar image];
  if (v3)
  {
    v4 = 6006;
  }

  else
  {
    v4 = 6029;
  }

  v5 = +[MKMapService sharedService];
  LODWORD(v11) = 1;
  [v5 capturePlaceCardUserAction:v4 onTarget:201 eventValue:0 mapItem:0 timestamp:0xFFFFFFFFLL resultIndex:0 targetID:CFAbsoluteTimeGetCurrent() providerID:0 animationID:0 actionURL:0 photoID:0 placeCardType:v11 localizedMapItemCategory:0 availableActions:0 unactionableUIElements:0];

  v6 = [(ParkedCar *)self->_parkedCar image];

  if (v6)
  {
    v7 = [FullscreenImageViewController alloc];
    v8 = [(ParkedCar *)self->_parkedCar image];
    v12 = [(FullscreenImageViewController *)v7 initWithImage:v8 scrollable:1];

    v9 = +[NSBundle mainBundle];
    v10 = [v9 localizedStringForKey:@"Parked Car [Photo Viewer]" value:@"localized string not found" table:0];
    [(FullscreenImageViewController *)v12 setTitle:v10];

    [(FullscreenImageViewController *)v12 setTransitioningDelegate:self];
    [(FullscreenImageViewController *)v12 setModalPresentationStyle:0];
    [(ParkedCarViewController *)self presentViewController:v12 animated:1 completion:0];
  }

  else
  {

    [(ParkedCarViewController *)self _showCamera];
  }
}

- (void)performAction:(int64_t)a3
{
  switch(a3)
  {
    case 3:
      [(ParkedCarViewController *)self _showLocationRefinement];
      break;
    case 2:
      [(ParkedCarViewController *)self _showCamera];
      break;
    case 1:
      [(ParkedCarDetailsSectionController *)self->_detailsSectionController activateNotesTextField];
      break;
  }
}

- (void)parkedCarManager:(id)a3 didUpdateParkedCar:(id)a4
{
  if (self->_parkedCar == a4)
  {
    block[5] = v4;
    block[6] = v5;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100B1FACC;
    block[3] = &unk_101661B18;
    block[4] = self;
    dispatch_async(&_dispatch_main_q, block);
  }
}

- (void)setParkedCar:(id)a3
{
  v5 = a3;
  v6 = v5;
  parkedCar = self->_parkedCar;
  if (parkedCar == v5)
  {
    goto LABEL_17;
  }

  if (!v5 || parkedCar)
  {
    if (v5 || !parkedCar)
    {
      goto LABEL_9;
    }

    v8 = +[ParkedCarManager sharedManager];
    [v8 removeParkedCarObserver:self];
  }

  else
  {
    v8 = +[ParkedCarManager sharedManager];
    [v8 addParkedCarObserver:self];
  }

LABEL_9:
  objc_storeStrong(&self->_parkedCar, a3);
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v9 = self->_sectionControllers;
  v10 = [(NSArray *)v9 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v16;
    do
    {
      for (i = 0; i != v11; i = i + 1)
      {
        if (*v16 != v12)
        {
          objc_enumerationMutation(v9);
        }

        [*(*(&v15 + 1) + 8 * i) setParkedCar:{self->_parkedCar, v15}];
      }

      v11 = [(NSArray *)v9 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v11);
  }

  v14 = [(ParkedCarViewController *)self view];
  [v14 _maps_annotateViewWithParkedCarViewController:self];

LABEL_17:
}

- (void)_locationApprovalDidChange:(id)a3
{
  v5 = +[MKLocationManager sharedLocationManager];
  if (([v5 isAuthorizedForPreciseLocation] & 1) == 0)
  {
    v4 = [(ParkedCarViewController *)self parkedCarDelegate];
    [v4 parkedCarViewControllerDidRequestDismissal:self];
  }
}

- (void)_updateSectionControllerState:(BOOL)a3
{
  v3 = a3;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v4 = self->_sectionControllers;
  v5 = [(NSArray *)v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v10;
    do
    {
      v8 = 0;
      do
      {
        if (*v10 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [*(*(&v9 + 1) + 8 * v8) setActive:{v3, v9}];
        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [(NSArray *)v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }
}

- (void)viewDidDisappear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = ParkedCarViewController;
  [(ParkedCarViewController *)&v4 viewDidDisappear:a3];
  [(ParkedCarViewController *)self _updateSectionControllerState:0];
}

- (void)viewWillAppear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = ParkedCarViewController;
  [(ParkedCarViewController *)&v4 viewWillAppear:a3];
  [(ParkedCarViewController *)self _updateSectionControllerState:1];
}

- (void)viewDidLayoutSubviews
{
  v4.receiver = self;
  v4.super_class = ParkedCarViewController;
  [(ParkedCarViewController *)&v4 viewDidLayoutSubviews];
  v3 = [(ParkedCarViewController *)self view];
  [v3 bounds];
  [(MUScrollableStackView *)self->_contentStackView setFrame:?];
}

- (void)_updatePocketInsets
{
  [(ParkedCarViewController *)self heightForContentAboveTitle];
  v4 = v3 + 72.0;
  v5 = [(ParkedCarViewController *)self scrollView];
  [v5 _setPocketInsets:{v4, 0.0, 0.0, 0.0}];
}

- (void)_loadStackViewIfNeeded
{
  if (!self->_contentStackView)
  {
    v3 = [[MUScrollableStackView alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
    contentStackView = self->_contentStackView;
    self->_contentStackView = v3;

    [(MUScrollableStackView *)self->_contentStackView setSpacing:16.0];
    [(MUScrollableStackView *)self->_contentStackView setAlwaysBounceVertical:1];
    [(MUScrollableStackView *)self->_contentStackView setScrollEnabled:1];
    v5 = self->_contentStackView;

    [(MUScrollableStackView *)v5 setKeyboardDismissMode:1];
  }
}

- (void)viewDidLoad
{
  v29.receiver = self;
  v29.super_class = ParkedCarViewController;
  [(ParkedCarViewController *)&v29 viewDidLoad];
  [(ParkedCarViewController *)self _loadStackViewIfNeeded];
  v3 = [(ParkedCarViewController *)self view];
  [v3 addSubview:self->_contentStackView];

  v4 = [(ParkedCarViewController *)self view];
  [v4 setAccessibilityIdentifier:@"ParkedCarView"];

  v5 = [[NSMutableArray alloc] initWithCapacity:4];
  v23 = [[ParkedCarHeaderSectionController alloc] initWithParkedCar:self->_parkedCar];
  [v5 addObject:?];
  v6 = [[ParkedCarHeaderButtonsSectionController alloc] initWithParkedCar:self->_parkedCar];
  [(ParkedCarHeaderButtonsSectionController *)v6 setActionDelegate:self];
  v24 = v6;
  [v5 addObject:v6];
  v7 = [[ParkedCarDetailsSectionController alloc] initWithParkedCar:self->_parkedCar];
  [(ParkedCarDetailsSectionController *)v7 setTextFieldDelegate:self];
  [(ParkedCarDetailsSectionController *)v7 setDetailsDelegate:self];
  [v5 addObject:v7];
  v8 = [[ParkedCarFooterActionsSectionController alloc] initWithParkedCar:self->_parkedCar];
  [(ParkedCarFooterActionsSectionController *)v8 setActionDelegate:self];
  [v5 addObject:v8];
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v9 = v5;
  v10 = [v9 countByEnumeratingWithState:&v25 objects:v30 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v26;
    do
    {
      v13 = 0;
      do
      {
        if (*v26 != v12)
        {
          objc_enumerationMutation(v9);
        }

        contentStackView = self->_contentStackView;
        v15 = [*(*(&v25 + 1) + 8 * v13) sectionView];
        [(MUScrollableStackView *)contentStackView addArrangedSubview:v15];

        v13 = v13 + 1;
      }

      while (v11 != v13);
      v11 = [v9 countByEnumeratingWithState:&v25 objects:v30 count:16];
    }

    while (v11);
  }

  headerSectionController = self->_headerSectionController;
  self->_headerSectionController = v23;
  v17 = v23;

  detailsSectionController = self->_detailsSectionController;
  self->_detailsSectionController = v7;
  v19 = v7;

  v20 = [v9 copy];
  sectionControllers = self->_sectionControllers;
  self->_sectionControllers = v20;

  v22 = +[NSNotificationCenter defaultCenter];
  [v22 addObserver:self selector:"_locationApprovalDidChange:" name:MKLocationManagerApprovalDidChangeNotification object:0];

  [(ParkedCarViewController *)self _updatePocketInsets];
}

- (void)_updateContentAlpha:(double)a3
{
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = self->_sectionControllers;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      v9 = 0;
      do
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v12 + 1) + 8 * v9);
        if (v10 != self->_headerSectionController)
        {
          v11 = [(ParkedCarHeaderSectionController *)v10 sectionView];
          [v11 setAlpha:a3];
        }

        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [(NSArray *)v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }
}

- (void)setContentAlpha:(double)a3
{
  if (self->_contentAlpha != a3)
  {
    self->_contentAlpha = a3;
    [(ParkedCarViewController *)self _loadStackViewIfNeeded];
    contentAlpha = self->_contentAlpha;

    [(ParkedCarViewController *)self _updateContentAlpha:contentAlpha];
  }
}

- (UIScrollView)scrollView
{
  [(ParkedCarViewController *)self _loadStackViewIfNeeded];
  contentStackView = self->_contentStackView;

  return contentStackView;
}

- (void)setScrollViewDelegate:(id)a3
{
  v4 = a3;
  v5 = [(ParkedCarViewController *)self scrollView];
  [v5 setDelegate:v4];
}

- (UIScrollViewDelegate)scrollViewDelegate
{
  v2 = [(ParkedCarViewController *)self scrollView];
  v3 = [v2 delegate];

  return v3;
}

@end