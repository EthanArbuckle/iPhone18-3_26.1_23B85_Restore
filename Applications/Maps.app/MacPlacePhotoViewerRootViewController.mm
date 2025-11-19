@interface MacPlacePhotoViewerRootViewController
- (BOOL)photoViewerToolbarControllerShouldEnablePersonalizedAttribution:(id)a3;
- (MUPlacePhotoGalleryViewControllerDelegate)underlyingGalleryDelegate;
- (MacPlacePhotoViewerActionDelegate)delegate;
- (MacPlacePhotoViewerRootViewController)initWithConfiguration:(id)a3 sceneDelegate:(id)a4;
- (UIViewController)topmostViewController;
- (id)photoViewerToolbarControllerGetCurrentPhoto:(id)a3;
- (id)placePhotoGalleryImageViewForPhotoAtIndex:(unint64_t)a3;
- (id)placePhotoGalleryRequestsUserAttribution:(id)a3;
- (int64_t)context;
- (void)_fetchUserAttribution;
- (void)_logUGCAction:(int)a3 withIndex:(unint64_t)a4;
- (void)_performPunchoutWithPhoto:(id)a3 index:(unint64_t)a4 presentingViewController:(id)a5;
- (void)photoThumbnailGalleryViewController:(id)a3 selectedPhotoAtIndex:(unint64_t)a4 photoList:(id)a5 albumCategory:(id)a6 imageViewForTransition:(id)a7;
- (void)photoViewerToolbarController:(id)a3 selectedReportAnIssueItem:(id)a4;
- (void)photoViewerToolbarControllerTappedLeft:(id)a3;
- (void)photoViewerToolbarControllerTappedMorePhotos:(id)a3;
- (void)photoViewerToolbarControllerTappedRight:(id)a3;
- (void)placePhotoGallery:(id)a3 attributionViewTappedAtIndex:(unint64_t)a4;
- (void)placePhotoGallery:(id)a3 openButtonTappedAtIndex:(unint64_t)a4;
- (void)placePhotoGallery:(id)a3 willCloseAtIndex:(unint64_t)a4;
- (void)placePhotoGalleryAdditionalViewTapped:(id)a3;
- (void)placePhotoGalleryDidCloseAtIndex:(unint64_t)a3;
- (void)placePhotoGalleryDidScrollLeftToIndex:(unint64_t)a3;
- (void)placePhotoGalleryDidScrollRightToIndex:(unint64_t)a3;
- (void)placePhotoGalleryDidScrollToIndex:(unint64_t)a3;
- (void)setContext:(int64_t)a3;
- (void)viewDidLoad;
@end

@implementation MacPlacePhotoViewerRootViewController

- (MUPlacePhotoGalleryViewControllerDelegate)underlyingGalleryDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_underlyingGalleryDelegate);

  return WeakRetained;
}

- (MacPlacePhotoViewerActionDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)_logUGCAction:(int)a3 withIndex:(unint64_t)a4
{
  v5 = *&a3;
  v6 = [(MacPlacePhotoViewerRootViewController *)self photoGalleryViewController];
  v7 = [v6 currentPhoto];
  v8 = [v7 attribution];

  if ([v8 isUserSubmitted])
  {
    v9 = [NSNumber numberWithUnsignedInteger:a4];
    v11 = v9;
    v10 = [NSArray arrayWithObjects:&v11 count:1];
    [GEOAPPortal captureUGCUserAction:v5 target:612 value:0 photoSources:v10];
  }
}

- (UIViewController)topmostViewController
{
  v3 = [(MacPlacePhotoViewerRootViewController *)self photoGalleryViewController];

  if (v3)
  {
    v4 = [(MacPlacePhotoViewerRootViewController *)self photoGalleryViewController];
  }

  else
  {
    v4 = self;
  }

  return v4;
}

- (void)photoViewerToolbarControllerTappedMorePhotos:(id)a3
{
  [(MacPlacePhotoViewerRootViewController *)self setContext:1];
  v4 = [(MacPlacePhotoViewerRootViewController *)self photoGalleryViewController];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10063B678;
  v5[3] = &unk_101661B18;
  v5[4] = self;
  [v4 dismissViewControllerAnimated:1 completion:v5];
}

- (void)photoViewerToolbarControllerTappedRight:(id)a3
{
  v3 = [(MacPlacePhotoViewerRootViewController *)self photoGalleryViewController];
  [v3 scrollRight];
}

- (void)photoViewerToolbarControllerTappedLeft:(id)a3
{
  v3 = [(MacPlacePhotoViewerRootViewController *)self photoGalleryViewController];
  [v3 scrollLeft];
}

- (int64_t)context
{
  v2 = [(MacPlacePhotoViewerRootViewController *)self toolbarController];
  v3 = [v2 context];

  return v3;
}

- (void)setContext:(int64_t)a3
{
  v4 = [(MacPlacePhotoViewerRootViewController *)self toolbarController];
  [v4 setContext:a3];
}

- (void)photoThumbnailGalleryViewController:(id)a3 selectedPhotoAtIndex:(unint64_t)a4 photoList:(id)a5 albumCategory:(id)a6 imageViewForTransition:(id)a7
{
  v22 = a3;
  v11 = a5;
  v12 = a6;
  v13 = [v11 objectAtIndexedSubscript:a4];
  if ([v13 needsObfuscationWhenRenderedInFullScreen])
  {
    [(MacPlacePhotoViewerRootViewController *)self _performPunchoutWithPhoto:v13 index:a4 presentingViewController:v22];
  }

  else
  {
    v14 = [MUPlacePhotoGalleryViewController alloc];
    v15 = [(MacPlacePhotoViewerRootViewController *)self mapItem];
    v16 = [v14 initWithPhotos:v11 additionalView:0 scrollToIndex:a4 mapItem:v15 delegate:self];
    [(MacPlacePhotoViewerRootViewController *)self setPhotoGalleryViewController:v16];

    v17 = [v12 categoryType] == 2;
    v18 = [(MacPlacePhotoViewerRootViewController *)self photoGalleryViewController];
    [v18 setEnablePersonalizedAttribution:v17];

    v19 = [(MacPlacePhotoViewerRootViewController *)self photoGalleryViewController];
    [v19 setDelegate:self];

    v20 = [(MacPlacePhotoViewerRootViewController *)self photoGalleryViewController];
    [v20 setModalPresentationStyle:8];

    [(MacPlacePhotoViewerRootViewController *)self setContext:2];
    v21 = [(MacPlacePhotoViewerRootViewController *)self photoGalleryViewController];
    [(MacPlacePhotoViewerRootViewController *)self presentViewController:v21 animated:1 completion:0];
  }
}

- (void)_fetchUserAttribution
{
  v3 = [(MacPlacePhotoViewerConfiguration *)self->_configuration userSubmissionLookupResult];
  v4 = [v3 previousSubmission];
  v5 = [v4 images];
  v6 = [v5 count];

  if (v6)
  {
    objc_initWeak(&location, self);
    v7 = +[UGCPhotoAttributionPreferencesManager sharedManager];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_10063BB10;
    v12[3] = &unk_10163B510;
    objc_copyWeak(&v13, &location);
    [v7 photoAttributionPreferencesWithCompletion:v12];

    objc_destroyWeak(&v13);
    objc_destroyWeak(&location);
  }

  else
  {
    v11 = GEOErrorDomain();
    v8 = [NSError errorWithDomain:v11 code:-6 userInfo:0];
    v9 = [Result resultWithError:v8];
    userAttributionResult = self->_userAttributionResult;
    self->_userAttributionResult = v9;
  }
}

- (id)placePhotoGalleryRequestsUserAttribution:(id)a3
{
  v4 = a3;
  userAttributionResult = self->_userAttributionResult;
  if (userAttributionResult)
  {
    v9 = 0;
    v10 = &v9;
    v11 = 0x3032000000;
    v12 = sub_10063BDF0;
    v13 = sub_10063BE00;
    v14 = 0;
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_10063BE08;
    v8[3] = &unk_1016247D0;
    v8[4] = &v9;
    [userAttributionResult withValue:v8 orError:&stru_1016247F0];
    v6 = v10[5];
    _Block_object_dispose(&v9, 8);
  }

  else
  {
    [(MacPlacePhotoViewerRootViewController *)self _fetchUserAttribution];
    v6 = [[MUPlaceUserAttributionViewModel alloc] initWithAttributionName:&stru_1016631F0];
  }

  return v6;
}

- (void)placePhotoGallery:(id)a3 openButtonTappedAtIndex:(unint64_t)a4
{
  v14 = a3;
  v6 = [(MacPlacePhotoViewerRootViewController *)self underlyingGalleryDelegate];
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    v8 = [(MacPlacePhotoViewerRootViewController *)self underlyingGalleryDelegate];
    [v8 placePhotoGallery:v14 openButtonTappedAtIndex:a4];
  }

  else
  {
    v9 = [v14 currentPhoto];
    v8 = v9;
    if (v9)
    {
      v10 = [v9 attribution];
      v11 = [v8 photoID];
      v12 = [v10 urlsForPhotoWithIdentifier:v11];

      v13 = [v8 attribution];
      [MKAppLaunchController launchAttributionURLs:v12 withAttribution:v13 usingTarget:665 completionHandler:0];
    }
  }
}

- (void)placePhotoGalleryDidScrollToIndex:(unint64_t)a3
{
  v5 = [(MacPlacePhotoViewerRootViewController *)self underlyingGalleryDelegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = [(MacPlacePhotoViewerRootViewController *)self underlyingGalleryDelegate];
    [v7 placePhotoGalleryDidScrollToIndex:a3];
  }
}

- (void)placePhotoGalleryDidScrollRightToIndex:(unint64_t)a3
{
  [(MacPlacePhotoViewerRootViewController *)self _updateScrollButtonsWithIndex:?];
  v5 = [(MacPlacePhotoViewerRootViewController *)self underlyingGalleryDelegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = [(MacPlacePhotoViewerRootViewController *)self underlyingGalleryDelegate];
    [v7 placePhotoGalleryDidScrollRightToIndex:a3];
  }

  else
  {
    [(MacPlacePhotoViewerRootViewController *)self _logUGCAction:6049 withIndex:a3];
    v7 = [(MacPlacePhotoViewerRootViewController *)self photoThumbnailViewController];
    [v7 scrollToPhotoAtIndex:a3 animated:0];
  }
}

- (void)placePhotoGalleryDidScrollLeftToIndex:(unint64_t)a3
{
  [(MacPlacePhotoViewerRootViewController *)self _updateScrollButtonsWithIndex:?];
  v5 = [(MacPlacePhotoViewerRootViewController *)self underlyingGalleryDelegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = [(MacPlacePhotoViewerRootViewController *)self underlyingGalleryDelegate];
    [v7 placePhotoGalleryDidScrollLeftToIndex:a3];
  }

  else
  {
    [(MacPlacePhotoViewerRootViewController *)self _logUGCAction:6048 withIndex:a3];
    v7 = [(MacPlacePhotoViewerRootViewController *)self photoThumbnailViewController];
    [v7 scrollToPhotoAtIndex:a3 animated:0];
  }
}

- (void)_performPunchoutWithPhoto:(id)a3 index:(unint64_t)a4 presentingViewController:(id)a5
{
  v6 = a3;
  v7 = [NSNumber numberWithUnsignedInteger:a4];
  v8 = [v7 stringValue];
  v9 = [v6 attribution];
  v10 = [v9 providerID];
  [GEOAPPortal captureUserAction:6018 target:612 value:v8 actionRichProviderId:v10];

  v13 = [v6 attribution];
  v11 = [v6 photoID];

  v12 = [v13 urlsForPhotoWithIdentifier:v11];

  [MKAppLaunchController launchAttributionURLs:v12 withAttribution:v13 completionHandler:0];
}

- (void)placePhotoGallery:(id)a3 attributionViewTappedAtIndex:(unint64_t)a4
{
  v6 = a3;
  v7 = [(MacPlacePhotoViewerRootViewController *)self underlyingGalleryDelegate];
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    v9 = [(MacPlacePhotoViewerRootViewController *)self underlyingGalleryDelegate];
    [v9 placePhotoGallery:v6 attributionViewTappedAtIndex:a4];
  }

  else
  {
    v9 = [v6 currentPhoto];
    [MacPlacePhotoViewerRootViewController _performPunchoutWithPhoto:"_performPunchoutWithPhoto:index:presentingViewController:" index:? presentingViewController:?];
  }
}

- (void)placePhotoGalleryAdditionalViewTapped:(id)a3
{
  v7 = a3;
  v4 = [(MacPlacePhotoViewerRootViewController *)self underlyingGalleryDelegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [(MacPlacePhotoViewerRootViewController *)self underlyingGalleryDelegate];
    [v6 placePhotoGalleryAdditionalViewTapped:v7];
  }
}

- (void)placePhotoGalleryDidCloseAtIndex:(unint64_t)a3
{
  v5 = [(MacPlacePhotoViewerRootViewController *)self underlyingGalleryDelegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = [(MacPlacePhotoViewerRootViewController *)self underlyingGalleryDelegate];
    [v7 placePhotoGalleryDidCloseAtIndex:a3];
  }
}

- (void)placePhotoGallery:(id)a3 willCloseAtIndex:(unint64_t)a4
{
  v9 = a3;
  v6 = [(MacPlacePhotoViewerRootViewController *)self underlyingGalleryDelegate];
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    v8 = [(MacPlacePhotoViewerRootViewController *)self underlyingGalleryDelegate];
    [v8 placePhotoGallery:v9 willCloseAtIndex:a4];
  }
}

- (BOOL)photoViewerToolbarControllerShouldEnablePersonalizedAttribution:(id)a3
{
  v3 = [(MacPlacePhotoViewerRootViewController *)self photoGalleryViewController];
  v4 = [v3 enablePersonalizedAttribution];

  return v4;
}

- (id)photoViewerToolbarControllerGetCurrentPhoto:(id)a3
{
  v3 = [(MacPlacePhotoViewerRootViewController *)self photoGalleryViewController];
  v4 = [v3 currentPhoto];

  return v4;
}

- (void)photoViewerToolbarController:(id)a3 selectedReportAnIssueItem:(id)a4
{
  v5 = a4;
  v6 = [(MacPlacePhotoViewerRootViewController *)self photoGalleryViewController];
  v13 = [v6 currentPhoto];

  v7 = [RAPPlacecardImageryContextImpl alloc];
  v8 = [(MacPlacePhotoViewerRootViewController *)self mapItem];
  v9 = [v13 geoMapItemPhoto];
  v10 = [v13 largestPhotoURL];
  v11 = [v10 absoluteString];
  v12 = [(RAPPlacecardImageryContextImpl *)v7 initWithMapItem:v8 photo:v9 selectedPhotoURL:v11];

  [(RAPPresenter *)self->_rapPresenter presentPlacecardImageryRAPWithContext:v12 selectedIssueItem:v5 completion:0];
}

- (id)placePhotoGalleryImageViewForPhotoAtIndex:(unint64_t)a3
{
  v4 = [(MacPlacePhotoViewerRootViewController *)self underlyingGalleryDelegate];
  v5 = [v4 placePhotoGalleryImageViewForPhotoAtIndex:a3];

  return v5;
}

- (void)viewDidLoad
{
  v26.receiver = self;
  v26.super_class = MacPlacePhotoViewerRootViewController;
  [(MacPlacePhotoViewerRootViewController *)&v26 viewDidLoad];
  v3 = [UGCMorePhotosFeedViewController alloc];
  v4 = [(MacPlacePhotoViewerRootViewController *)self mapItem];
  v5 = [(UGCMorePhotosFeedViewController *)v3 initWithMapItem:v4];
  [(MacPlacePhotoViewerRootViewController *)self setPhotoThumbnailViewController:v5];

  v6 = [(MacPlacePhotoViewerRootViewController *)self photoThumbnailViewController];
  [v6 setDelegate:self];

  v7 = [(MacPlacePhotoViewerConfiguration *)self->_configuration albumIndex];
  v8 = [(MacPlacePhotoViewerRootViewController *)self photoThumbnailViewController];
  [v8 setSelectedAlbumIndex:v7];

  v9 = [(MacPlacePhotoViewerConfiguration *)self->_configuration selectedPhotoIndex];
  v10 = [(MacPlacePhotoViewerRootViewController *)self photoThumbnailViewController];
  [v10 setStartingImageIndex:v9];

  v11 = [(MacPlacePhotoViewerRootViewController *)self context];
  if (v11 == 2)
  {
    v17 = [(MacPlacePhotoViewerRootViewController *)self photoGalleryViewController];
    v13 = [v17 view];

    [v13 setTranslatesAutoresizingMaskIntoConstraints:0];
    v18 = [(MacPlacePhotoViewerRootViewController *)self photoGalleryViewController];
    [(MacPlacePhotoViewerRootViewController *)self addChildViewController:v18];

    v19 = [(MacPlacePhotoViewerRootViewController *)self view];
    [v19 addSubview:v13];

    v16 = [(MacPlacePhotoViewerRootViewController *)self photoGalleryViewController];
  }

  else
  {
    if (v11 != 1)
    {
      return;
    }

    v12 = [(MacPlacePhotoViewerRootViewController *)self photoThumbnailViewController];
    v13 = [v12 view];

    [v13 setTranslatesAutoresizingMaskIntoConstraints:0];
    v14 = [(MacPlacePhotoViewerRootViewController *)self photoThumbnailViewController];
    [(MacPlacePhotoViewerRootViewController *)self addChildViewController:v14];

    v15 = [(MacPlacePhotoViewerRootViewController *)self view];
    [v15 addSubview:v13];

    v16 = [(MacPlacePhotoViewerRootViewController *)self photoThumbnailViewController];
  }

  v20 = v16;
  [v16 didMoveToParentViewController:self];

  if (v13)
  {
    v21 = [(MacPlacePhotoViewerRootViewController *)self view];
    v22 = [v21 safeAreaLayoutGuide];
    LODWORD(v23) = 1148846080;
    v24 = [v13 _maps_constraintsEqualToEdgesOfLayoutGuide:v22 priority:v23];
    v25 = [v24 allConstraints];
    [NSLayoutConstraint activateConstraints:v25];
  }
}

- (MacPlacePhotoViewerRootViewController)initWithConfiguration:(id)a3 sceneDelegate:(id)a4
{
  v7 = a3;
  v8 = a4;
  v28.receiver = self;
  v28.super_class = MacPlacePhotoViewerRootViewController;
  v9 = [(MacPlacePhotoViewerRootViewController *)&v28 initWithNibName:0 bundle:0];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_configuration, a3);
    v11 = [PhotoViewerToolbarController alloc];
    v12 = [(MacPlacePhotoViewerConfiguration *)v10->_configuration mapItem];
    v13 = [(PhotoViewerToolbarController *)v11 initWithMapItem:v12];
    toolbarController = v10->_toolbarController;
    v10->_toolbarController = v13;

    [(PhotoViewerToolbarController *)v10->_toolbarController setDelegate:v10];
    v15 = [RAPPlacecardImageryLayoutManager alloc];
    v16 = +[RAPPlacecardImageryIssueItem defaultIssueItems];
    v17 = [(RAPPlacecardImageryLayoutManager *)v15 initWithDefaultItems:v16];
    reportImageryLayoutManager = v10->_reportImageryLayoutManager;
    v10->_reportImageryLayoutManager = v17;

    objc_storeStrong(&v10->_mapsSceneDelegate, a4);
    v19 = [[RAPPresenter alloc] initWithSceneDelegate:v10->_mapsSceneDelegate];
    rapPresenter = v10->_rapPresenter;
    v10->_rapPresenter = v19;

    v21 = [v7 photoGalleryViewController];
    v22 = [v21 delegate];
    objc_storeWeak(&v10->_underlyingGalleryDelegate, v22);

    v23 = [v7 photoGalleryViewController];
    [v23 setDelegate:v10];

    v24 = [v7 photoGalleryViewController];
    photoGalleryViewController = v10->_photoGalleryViewController;
    v10->_photoGalleryViewController = v24;

    v26 = [v7 photoGalleryViewController];
    [(PhotoViewerToolbarController *)v10->_toolbarController setSuppressPhotoGrid:v26 != 0];

    [(MacPlacePhotoViewerRootViewController *)v10 setContext:[(MacPlacePhotoViewerConfiguration *)v10->_configuration startingContext]];
  }

  return v10;
}

@end