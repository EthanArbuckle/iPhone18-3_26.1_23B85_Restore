@interface ParkedCarViewController
- (ParkedCarViewControllerDelegate)parkedCarDelegate;
- (UIScrollView)scrollView;
- (UIScrollViewDelegate)scrollViewDelegate;
- (id)animationControllerForDismissedController:(id)controller;
- (id)animationControllerForPresentedController:(id)controller presentingController:(id)presentingController sourceController:(id)sourceController;
- (void)_editLocationTapped;
- (void)_getDirections;
- (void)_handlePhotoTap;
- (void)_imagePickerDidRetake:(id)retake;
- (void)_loadStackViewIfNeeded;
- (void)_locationApprovalDidChange:(id)change;
- (void)_showCamera;
- (void)_showLocationRefinement;
- (void)_updateContentAlpha:(double)alpha;
- (void)_updatePocketInsets;
- (void)_updateSectionControllerState:(BOOL)state;
- (void)imagePickerController:(id)controller didFinishPickingMediaWithInfo:(id)info;
- (void)imagePickerControllerDidCancel:(id)cancel;
- (void)instrumentDismissAction;
- (void)locationRefinementViewController:(id)controller didSelectCoordinate:(CLLocationCoordinate2D)coordinate;
- (void)parkedCarDetailsSectionControllerDidRemovePhoto:(id)photo;
- (void)parkedCarFooterActionsSectionControllerDidRemoveParkedCar:(id)car;
- (void)parkedCarFooterActionsSectionControllerDidShareLocation:(id)location;
- (void)parkedCarManager:(id)manager didUpdateParkedCar:(id)car;
- (void)performAction:(int64_t)action;
- (void)setContentAlpha:(double)alpha;
- (void)setParkedCar:(id)car;
- (void)setScrollViewDelegate:(id)delegate;
- (void)textFieldRowViewDidBeginEditing:(id)editing;
- (void)textFieldRowViewDidChange:(id)change;
- (void)textFieldRowViewDidEndEditing:(id)editing;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
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

- (void)parkedCarFooterActionsSectionControllerDidRemoveParkedCar:(id)car
{
  v4 = +[MKMapService sharedService];
  LODWORD(v6) = 1;
  [v4 capturePlaceCardUserAction:6033 onTarget:201 eventValue:0 mapItem:0 timestamp:0xFFFFFFFFLL resultIndex:0 targetID:CFAbsoluteTimeGetCurrent() providerID:0 animationID:0 actionURL:0 photoID:0 placeCardType:v6 localizedMapItemCategory:0 availableActions:0 unactionableUIElements:0];

  v5 = +[ParkedCarManager sharedManager];
  [v5 removeParkedCar];

  parkedCarDelegate = [(ParkedCarViewController *)self parkedCarDelegate];
  [parkedCarDelegate parkedCarViewControllerDidRequestDismissal:self];
}

- (void)parkedCarFooterActionsSectionControllerDidShareLocation:(id)location
{
  parkedCarDelegate = [(ParkedCarViewController *)self parkedCarDelegate];
  [parkedCarDelegate parkedCarViewControllerDidSelectShare:self];
}

- (void)parkedCarDetailsSectionControllerDidRemovePhoto:(id)photo
{
  v5 = +[ParkedCarManager sharedManager];
  parkedCar = [(ParkedCarViewController *)self parkedCar];
  [v5 removeImageForParkedCar:parkedCar];
}

- (void)locationRefinementViewController:(id)controller didSelectCoordinate:(CLLocationCoordinate2D)coordinate
{
  longitude = coordinate.longitude;
  latitude = coordinate.latitude;
  if ([GEOLocationShifter isLocationShiftRequiredForCoordinate:controller])
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

- (void)imagePickerControllerDidCancel:(id)cancel
{
  cancelCopy = cancel;
  v4 = +[NSNotificationCenter defaultCenter];
  [v4 removeObserver:self name:_UIImagePickerControllerUserDidRejectItemNotification object:0];

  v5 = +[MKMapService sharedService];
  [v5 captureUserAction:18 onTarget:620 eventValue:0];

  [cancelCopy dismissViewControllerAnimated:1 completion:0];
}

- (void)imagePickerController:(id)controller didFinishPickingMediaWithInfo:(id)info
{
  infoCopy = info;
  controllerCopy = controller;
  v8 = +[NSNotificationCenter defaultCenter];
  [v8 removeObserver:self name:_UIImagePickerControllerUserDidRejectItemNotification object:0];

  v9 = +[MKMapService sharedService];
  [v9 captureUserAction:17 onTarget:620 eventValue:0];

  v11 = [infoCopy objectForKeyedSubscript:UIImagePickerControllerOriginalImage];

  v10 = +[ParkedCarManager sharedManager];
  [v10 setImage:v11 forParkedCar:self->_parkedCar];

  [controllerCopy dismissViewControllerAnimated:1 completion:0];
}

- (void)textFieldRowViewDidChange:(id)change
{
  contentStackView = self->_contentStackView;
  textView = [change textView];
  [(MUScrollableStackView *)contentStackView _maps_scrollTextViewSelectedRangeVisible:textView];
}

- (void)textFieldRowViewDidEndEditing:(id)editing
{
  editingCopy = editing;
  v6 = +[ParkedCarManager sharedManager];
  currentTextFieldValue = [editingCopy currentTextFieldValue];

  [v6 setNotes:currentTextFieldValue forParkedCar:self->_parkedCar];
}

- (void)textFieldRowViewDidBeginEditing:(id)editing
{
  editingCopy = editing;
  v5 = +[MKMapService sharedService];
  LODWORD(v8) = 1;
  [v5 capturePlaceCardUserAction:6032 onTarget:201 eventValue:0 mapItem:0 timestamp:0xFFFFFFFFLL resultIndex:0 targetID:CFAbsoluteTimeGetCurrent() providerID:0 animationID:0 actionURL:0 photoID:0 placeCardType:v8 localizedMapItemCategory:0 availableActions:0 unactionableUIElements:0];

  parkedCarDelegate = [(ParkedCarViewController *)self parkedCarDelegate];
  [parkedCarDelegate parkedCarViewControllerDidBeginEditing:self];

  contentStackView = self->_contentStackView;
  textView = [editingCopy textView];

  [textView frame];
  [(MUScrollableStackView *)contentStackView scrollRectToVisible:1 animated:?];
}

- (id)animationControllerForDismissedController:(id)controller
{
  controllerCopy = controller;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v6 = [FullscreenImageViewControllerZoomAnimationController alloc];
    photoImageView = [(ParkedCarDetailsSectionController *)self->_detailsSectionController photoImageView];
    v8 = [(FullscreenImageViewControllerZoomAnimationController *)v6 initWithOriginalImageView:photoImageView];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)animationControllerForPresentedController:(id)controller presentingController:(id)presentingController sourceController:(id)sourceController
{
  controllerCopy = controller;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v8 = [FullscreenImageViewControllerZoomAnimationController alloc];
    photoImageView = [(ParkedCarDetailsSectionController *)self->_detailsSectionController photoImageView];
    v10 = [(FullscreenImageViewControllerZoomAnimationController *)v8 initWithOriginalImageView:photoImageView];
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
  lastLocation = [v4 lastLocation];

  if (lastLocation && (+[MKLocationManager sharedLocationManager](MKLocationManager, "sharedLocationManager"), v5 = objc_claimAutoreleasedReturnValue(), v6 = [v5 isAuthorizedForPreciseLocation], v5, v6))
  {
    [lastLocation coordinate];
    [(ParkedCar *)self->_parkedCar coordinate];
    GEOCalculateDistance();
    v8 = 2 * (v7 <= 5000.0);
  }

  else
  {
    v8 = 0;
  }

  parkedCarDelegate = [(ParkedCarViewController *)self parkedCarDelegate];
  [parkedCarDelegate parkerCarViewControllerDidSelectDoDirections:self transportType:v8];
}

- (void)_imagePickerDidRetake:(id)retake
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
  image = [(ParkedCar *)self->_parkedCar image];
  if (image)
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

  image2 = [(ParkedCar *)self->_parkedCar image];

  if (image2)
  {
    v7 = [FullscreenImageViewController alloc];
    image3 = [(ParkedCar *)self->_parkedCar image];
    v12 = [(FullscreenImageViewController *)v7 initWithImage:image3 scrollable:1];

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

- (void)performAction:(int64_t)action
{
  switch(action)
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

- (void)parkedCarManager:(id)manager didUpdateParkedCar:(id)car
{
  if (self->_parkedCar == car)
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

- (void)setParkedCar:(id)car
{
  carCopy = car;
  v6 = carCopy;
  parkedCar = self->_parkedCar;
  if (parkedCar == carCopy)
  {
    goto LABEL_17;
  }

  if (!carCopy || parkedCar)
  {
    if (carCopy || !parkedCar)
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
  objc_storeStrong(&self->_parkedCar, car);
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

  view = [(ParkedCarViewController *)self view];
  [view _maps_annotateViewWithParkedCarViewController:self];

LABEL_17:
}

- (void)_locationApprovalDidChange:(id)change
{
  v5 = +[MKLocationManager sharedLocationManager];
  if (([v5 isAuthorizedForPreciseLocation] & 1) == 0)
  {
    parkedCarDelegate = [(ParkedCarViewController *)self parkedCarDelegate];
    [parkedCarDelegate parkedCarViewControllerDidRequestDismissal:self];
  }
}

- (void)_updateSectionControllerState:(BOOL)state
{
  stateCopy = state;
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

        [*(*(&v9 + 1) + 8 * v8) setActive:{stateCopy, v9}];
        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [(NSArray *)v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }
}

- (void)viewDidDisappear:(BOOL)disappear
{
  v4.receiver = self;
  v4.super_class = ParkedCarViewController;
  [(ParkedCarViewController *)&v4 viewDidDisappear:disappear];
  [(ParkedCarViewController *)self _updateSectionControllerState:0];
}

- (void)viewWillAppear:(BOOL)appear
{
  v4.receiver = self;
  v4.super_class = ParkedCarViewController;
  [(ParkedCarViewController *)&v4 viewWillAppear:appear];
  [(ParkedCarViewController *)self _updateSectionControllerState:1];
}

- (void)viewDidLayoutSubviews
{
  v4.receiver = self;
  v4.super_class = ParkedCarViewController;
  [(ParkedCarViewController *)&v4 viewDidLayoutSubviews];
  view = [(ParkedCarViewController *)self view];
  [view bounds];
  [(MUScrollableStackView *)self->_contentStackView setFrame:?];
}

- (void)_updatePocketInsets
{
  [(ParkedCarViewController *)self heightForContentAboveTitle];
  v4 = v3 + 72.0;
  scrollView = [(ParkedCarViewController *)self scrollView];
  [scrollView _setPocketInsets:{v4, 0.0, 0.0, 0.0}];
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
  view = [(ParkedCarViewController *)self view];
  [view addSubview:self->_contentStackView];

  view2 = [(ParkedCarViewController *)self view];
  [view2 setAccessibilityIdentifier:@"ParkedCarView"];

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
        sectionView = [*(*(&v25 + 1) + 8 * v13) sectionView];
        [(MUScrollableStackView *)contentStackView addArrangedSubview:sectionView];

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

- (void)_updateContentAlpha:(double)alpha
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
          sectionView = [(ParkedCarHeaderSectionController *)v10 sectionView];
          [sectionView setAlpha:alpha];
        }

        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [(NSArray *)v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }
}

- (void)setContentAlpha:(double)alpha
{
  if (self->_contentAlpha != alpha)
  {
    self->_contentAlpha = alpha;
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

- (void)setScrollViewDelegate:(id)delegate
{
  delegateCopy = delegate;
  scrollView = [(ParkedCarViewController *)self scrollView];
  [scrollView setDelegate:delegateCopy];
}

- (UIScrollViewDelegate)scrollViewDelegate
{
  scrollView = [(ParkedCarViewController *)self scrollView];
  delegate = [scrollView delegate];

  return delegate;
}

@end