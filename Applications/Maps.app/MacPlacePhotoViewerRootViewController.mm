@interface MacPlacePhotoViewerRootViewController
- (BOOL)photoViewerToolbarControllerShouldEnablePersonalizedAttribution:(id)attribution;
- (MUPlacePhotoGalleryViewControllerDelegate)underlyingGalleryDelegate;
- (MacPlacePhotoViewerActionDelegate)delegate;
- (MacPlacePhotoViewerRootViewController)initWithConfiguration:(id)configuration sceneDelegate:(id)delegate;
- (UIViewController)topmostViewController;
- (id)photoViewerToolbarControllerGetCurrentPhoto:(id)photo;
- (id)placePhotoGalleryImageViewForPhotoAtIndex:(unint64_t)index;
- (id)placePhotoGalleryRequestsUserAttribution:(id)attribution;
- (int64_t)context;
- (void)_fetchUserAttribution;
- (void)_logUGCAction:(int)action withIndex:(unint64_t)index;
- (void)_performPunchoutWithPhoto:(id)photo index:(unint64_t)index presentingViewController:(id)controller;
- (void)photoThumbnailGalleryViewController:(id)controller selectedPhotoAtIndex:(unint64_t)index photoList:(id)list albumCategory:(id)category imageViewForTransition:(id)transition;
- (void)photoViewerToolbarController:(id)controller selectedReportAnIssueItem:(id)item;
- (void)photoViewerToolbarControllerTappedLeft:(id)left;
- (void)photoViewerToolbarControllerTappedMorePhotos:(id)photos;
- (void)photoViewerToolbarControllerTappedRight:(id)right;
- (void)placePhotoGallery:(id)gallery attributionViewTappedAtIndex:(unint64_t)index;
- (void)placePhotoGallery:(id)gallery openButtonTappedAtIndex:(unint64_t)index;
- (void)placePhotoGallery:(id)gallery willCloseAtIndex:(unint64_t)index;
- (void)placePhotoGalleryAdditionalViewTapped:(id)tapped;
- (void)placePhotoGalleryDidCloseAtIndex:(unint64_t)index;
- (void)placePhotoGalleryDidScrollLeftToIndex:(unint64_t)index;
- (void)placePhotoGalleryDidScrollRightToIndex:(unint64_t)index;
- (void)placePhotoGalleryDidScrollToIndex:(unint64_t)index;
- (void)setContext:(int64_t)context;
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

- (void)_logUGCAction:(int)action withIndex:(unint64_t)index
{
  v5 = *&action;
  photoGalleryViewController = [(MacPlacePhotoViewerRootViewController *)self photoGalleryViewController];
  currentPhoto = [photoGalleryViewController currentPhoto];
  attribution = [currentPhoto attribution];

  if ([attribution isUserSubmitted])
  {
    v9 = [NSNumber numberWithUnsignedInteger:index];
    v11 = v9;
    v10 = [NSArray arrayWithObjects:&v11 count:1];
    [GEOAPPortal captureUGCUserAction:v5 target:612 value:0 photoSources:v10];
  }
}

- (UIViewController)topmostViewController
{
  photoGalleryViewController = [(MacPlacePhotoViewerRootViewController *)self photoGalleryViewController];

  if (photoGalleryViewController)
  {
    selfCopy = [(MacPlacePhotoViewerRootViewController *)self photoGalleryViewController];
  }

  else
  {
    selfCopy = self;
  }

  return selfCopy;
}

- (void)photoViewerToolbarControllerTappedMorePhotos:(id)photos
{
  [(MacPlacePhotoViewerRootViewController *)self setContext:1];
  photoGalleryViewController = [(MacPlacePhotoViewerRootViewController *)self photoGalleryViewController];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10063B678;
  v5[3] = &unk_101661B18;
  v5[4] = self;
  [photoGalleryViewController dismissViewControllerAnimated:1 completion:v5];
}

- (void)photoViewerToolbarControllerTappedRight:(id)right
{
  photoGalleryViewController = [(MacPlacePhotoViewerRootViewController *)self photoGalleryViewController];
  [photoGalleryViewController scrollRight];
}

- (void)photoViewerToolbarControllerTappedLeft:(id)left
{
  photoGalleryViewController = [(MacPlacePhotoViewerRootViewController *)self photoGalleryViewController];
  [photoGalleryViewController scrollLeft];
}

- (int64_t)context
{
  toolbarController = [(MacPlacePhotoViewerRootViewController *)self toolbarController];
  context = [toolbarController context];

  return context;
}

- (void)setContext:(int64_t)context
{
  toolbarController = [(MacPlacePhotoViewerRootViewController *)self toolbarController];
  [toolbarController setContext:context];
}

- (void)photoThumbnailGalleryViewController:(id)controller selectedPhotoAtIndex:(unint64_t)index photoList:(id)list albumCategory:(id)category imageViewForTransition:(id)transition
{
  controllerCopy = controller;
  listCopy = list;
  categoryCopy = category;
  v13 = [listCopy objectAtIndexedSubscript:index];
  if ([v13 needsObfuscationWhenRenderedInFullScreen])
  {
    [(MacPlacePhotoViewerRootViewController *)self _performPunchoutWithPhoto:v13 index:index presentingViewController:controllerCopy];
  }

  else
  {
    v14 = [MUPlacePhotoGalleryViewController alloc];
    mapItem = [(MacPlacePhotoViewerRootViewController *)self mapItem];
    v16 = [v14 initWithPhotos:listCopy additionalView:0 scrollToIndex:index mapItem:mapItem delegate:self];
    [(MacPlacePhotoViewerRootViewController *)self setPhotoGalleryViewController:v16];

    v17 = [categoryCopy categoryType] == 2;
    photoGalleryViewController = [(MacPlacePhotoViewerRootViewController *)self photoGalleryViewController];
    [photoGalleryViewController setEnablePersonalizedAttribution:v17];

    photoGalleryViewController2 = [(MacPlacePhotoViewerRootViewController *)self photoGalleryViewController];
    [photoGalleryViewController2 setDelegate:self];

    photoGalleryViewController3 = [(MacPlacePhotoViewerRootViewController *)self photoGalleryViewController];
    [photoGalleryViewController3 setModalPresentationStyle:8];

    [(MacPlacePhotoViewerRootViewController *)self setContext:2];
    photoGalleryViewController4 = [(MacPlacePhotoViewerRootViewController *)self photoGalleryViewController];
    [(MacPlacePhotoViewerRootViewController *)self presentViewController:photoGalleryViewController4 animated:1 completion:0];
  }
}

- (void)_fetchUserAttribution
{
  userSubmissionLookupResult = [(MacPlacePhotoViewerConfiguration *)self->_configuration userSubmissionLookupResult];
  previousSubmission = [userSubmissionLookupResult previousSubmission];
  images = [previousSubmission images];
  v6 = [images count];

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

- (id)placePhotoGalleryRequestsUserAttribution:(id)attribution
{
  attributionCopy = attribution;
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

- (void)placePhotoGallery:(id)gallery openButtonTappedAtIndex:(unint64_t)index
{
  galleryCopy = gallery;
  underlyingGalleryDelegate = [(MacPlacePhotoViewerRootViewController *)self underlyingGalleryDelegate];
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    underlyingGalleryDelegate2 = [(MacPlacePhotoViewerRootViewController *)self underlyingGalleryDelegate];
    [underlyingGalleryDelegate2 placePhotoGallery:galleryCopy openButtonTappedAtIndex:index];
  }

  else
  {
    currentPhoto = [galleryCopy currentPhoto];
    underlyingGalleryDelegate2 = currentPhoto;
    if (currentPhoto)
    {
      attribution = [currentPhoto attribution];
      photoID = [underlyingGalleryDelegate2 photoID];
      v12 = [attribution urlsForPhotoWithIdentifier:photoID];

      attribution2 = [underlyingGalleryDelegate2 attribution];
      [MKAppLaunchController launchAttributionURLs:v12 withAttribution:attribution2 usingTarget:665 completionHandler:0];
    }
  }
}

- (void)placePhotoGalleryDidScrollToIndex:(unint64_t)index
{
  underlyingGalleryDelegate = [(MacPlacePhotoViewerRootViewController *)self underlyingGalleryDelegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    underlyingGalleryDelegate2 = [(MacPlacePhotoViewerRootViewController *)self underlyingGalleryDelegate];
    [underlyingGalleryDelegate2 placePhotoGalleryDidScrollToIndex:index];
  }
}

- (void)placePhotoGalleryDidScrollRightToIndex:(unint64_t)index
{
  [(MacPlacePhotoViewerRootViewController *)self _updateScrollButtonsWithIndex:?];
  underlyingGalleryDelegate = [(MacPlacePhotoViewerRootViewController *)self underlyingGalleryDelegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    underlyingGalleryDelegate2 = [(MacPlacePhotoViewerRootViewController *)self underlyingGalleryDelegate];
    [underlyingGalleryDelegate2 placePhotoGalleryDidScrollRightToIndex:index];
  }

  else
  {
    [(MacPlacePhotoViewerRootViewController *)self _logUGCAction:6049 withIndex:index];
    underlyingGalleryDelegate2 = [(MacPlacePhotoViewerRootViewController *)self photoThumbnailViewController];
    [underlyingGalleryDelegate2 scrollToPhotoAtIndex:index animated:0];
  }
}

- (void)placePhotoGalleryDidScrollLeftToIndex:(unint64_t)index
{
  [(MacPlacePhotoViewerRootViewController *)self _updateScrollButtonsWithIndex:?];
  underlyingGalleryDelegate = [(MacPlacePhotoViewerRootViewController *)self underlyingGalleryDelegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    underlyingGalleryDelegate2 = [(MacPlacePhotoViewerRootViewController *)self underlyingGalleryDelegate];
    [underlyingGalleryDelegate2 placePhotoGalleryDidScrollLeftToIndex:index];
  }

  else
  {
    [(MacPlacePhotoViewerRootViewController *)self _logUGCAction:6048 withIndex:index];
    underlyingGalleryDelegate2 = [(MacPlacePhotoViewerRootViewController *)self photoThumbnailViewController];
    [underlyingGalleryDelegate2 scrollToPhotoAtIndex:index animated:0];
  }
}

- (void)_performPunchoutWithPhoto:(id)photo index:(unint64_t)index presentingViewController:(id)controller
{
  photoCopy = photo;
  v7 = [NSNumber numberWithUnsignedInteger:index];
  stringValue = [v7 stringValue];
  attribution = [photoCopy attribution];
  providerID = [attribution providerID];
  [GEOAPPortal captureUserAction:6018 target:612 value:stringValue actionRichProviderId:providerID];

  attribution2 = [photoCopy attribution];
  photoID = [photoCopy photoID];

  v12 = [attribution2 urlsForPhotoWithIdentifier:photoID];

  [MKAppLaunchController launchAttributionURLs:v12 withAttribution:attribution2 completionHandler:0];
}

- (void)placePhotoGallery:(id)gallery attributionViewTappedAtIndex:(unint64_t)index
{
  galleryCopy = gallery;
  underlyingGalleryDelegate = [(MacPlacePhotoViewerRootViewController *)self underlyingGalleryDelegate];
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    underlyingGalleryDelegate2 = [(MacPlacePhotoViewerRootViewController *)self underlyingGalleryDelegate];
    [underlyingGalleryDelegate2 placePhotoGallery:galleryCopy attributionViewTappedAtIndex:index];
  }

  else
  {
    underlyingGalleryDelegate2 = [galleryCopy currentPhoto];
    [MacPlacePhotoViewerRootViewController _performPunchoutWithPhoto:"_performPunchoutWithPhoto:index:presentingViewController:" index:? presentingViewController:?];
  }
}

- (void)placePhotoGalleryAdditionalViewTapped:(id)tapped
{
  tappedCopy = tapped;
  underlyingGalleryDelegate = [(MacPlacePhotoViewerRootViewController *)self underlyingGalleryDelegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    underlyingGalleryDelegate2 = [(MacPlacePhotoViewerRootViewController *)self underlyingGalleryDelegate];
    [underlyingGalleryDelegate2 placePhotoGalleryAdditionalViewTapped:tappedCopy];
  }
}

- (void)placePhotoGalleryDidCloseAtIndex:(unint64_t)index
{
  underlyingGalleryDelegate = [(MacPlacePhotoViewerRootViewController *)self underlyingGalleryDelegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    underlyingGalleryDelegate2 = [(MacPlacePhotoViewerRootViewController *)self underlyingGalleryDelegate];
    [underlyingGalleryDelegate2 placePhotoGalleryDidCloseAtIndex:index];
  }
}

- (void)placePhotoGallery:(id)gallery willCloseAtIndex:(unint64_t)index
{
  galleryCopy = gallery;
  underlyingGalleryDelegate = [(MacPlacePhotoViewerRootViewController *)self underlyingGalleryDelegate];
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    underlyingGalleryDelegate2 = [(MacPlacePhotoViewerRootViewController *)self underlyingGalleryDelegate];
    [underlyingGalleryDelegate2 placePhotoGallery:galleryCopy willCloseAtIndex:index];
  }
}

- (BOOL)photoViewerToolbarControllerShouldEnablePersonalizedAttribution:(id)attribution
{
  photoGalleryViewController = [(MacPlacePhotoViewerRootViewController *)self photoGalleryViewController];
  enablePersonalizedAttribution = [photoGalleryViewController enablePersonalizedAttribution];

  return enablePersonalizedAttribution;
}

- (id)photoViewerToolbarControllerGetCurrentPhoto:(id)photo
{
  photoGalleryViewController = [(MacPlacePhotoViewerRootViewController *)self photoGalleryViewController];
  currentPhoto = [photoGalleryViewController currentPhoto];

  return currentPhoto;
}

- (void)photoViewerToolbarController:(id)controller selectedReportAnIssueItem:(id)item
{
  itemCopy = item;
  photoGalleryViewController = [(MacPlacePhotoViewerRootViewController *)self photoGalleryViewController];
  currentPhoto = [photoGalleryViewController currentPhoto];

  v7 = [RAPPlacecardImageryContextImpl alloc];
  mapItem = [(MacPlacePhotoViewerRootViewController *)self mapItem];
  geoMapItemPhoto = [currentPhoto geoMapItemPhoto];
  largestPhotoURL = [currentPhoto largestPhotoURL];
  absoluteString = [largestPhotoURL absoluteString];
  v12 = [(RAPPlacecardImageryContextImpl *)v7 initWithMapItem:mapItem photo:geoMapItemPhoto selectedPhotoURL:absoluteString];

  [(RAPPresenter *)self->_rapPresenter presentPlacecardImageryRAPWithContext:v12 selectedIssueItem:itemCopy completion:0];
}

- (id)placePhotoGalleryImageViewForPhotoAtIndex:(unint64_t)index
{
  underlyingGalleryDelegate = [(MacPlacePhotoViewerRootViewController *)self underlyingGalleryDelegate];
  v5 = [underlyingGalleryDelegate placePhotoGalleryImageViewForPhotoAtIndex:index];

  return v5;
}

- (void)viewDidLoad
{
  v26.receiver = self;
  v26.super_class = MacPlacePhotoViewerRootViewController;
  [(MacPlacePhotoViewerRootViewController *)&v26 viewDidLoad];
  v3 = [UGCMorePhotosFeedViewController alloc];
  mapItem = [(MacPlacePhotoViewerRootViewController *)self mapItem];
  v5 = [(UGCMorePhotosFeedViewController *)v3 initWithMapItem:mapItem];
  [(MacPlacePhotoViewerRootViewController *)self setPhotoThumbnailViewController:v5];

  photoThumbnailViewController = [(MacPlacePhotoViewerRootViewController *)self photoThumbnailViewController];
  [photoThumbnailViewController setDelegate:self];

  albumIndex = [(MacPlacePhotoViewerConfiguration *)self->_configuration albumIndex];
  photoThumbnailViewController2 = [(MacPlacePhotoViewerRootViewController *)self photoThumbnailViewController];
  [photoThumbnailViewController2 setSelectedAlbumIndex:albumIndex];

  selectedPhotoIndex = [(MacPlacePhotoViewerConfiguration *)self->_configuration selectedPhotoIndex];
  photoThumbnailViewController3 = [(MacPlacePhotoViewerRootViewController *)self photoThumbnailViewController];
  [photoThumbnailViewController3 setStartingImageIndex:selectedPhotoIndex];

  context = [(MacPlacePhotoViewerRootViewController *)self context];
  if (context == 2)
  {
    photoGalleryViewController = [(MacPlacePhotoViewerRootViewController *)self photoGalleryViewController];
    view = [photoGalleryViewController view];

    [view setTranslatesAutoresizingMaskIntoConstraints:0];
    photoGalleryViewController2 = [(MacPlacePhotoViewerRootViewController *)self photoGalleryViewController];
    [(MacPlacePhotoViewerRootViewController *)self addChildViewController:photoGalleryViewController2];

    view2 = [(MacPlacePhotoViewerRootViewController *)self view];
    [view2 addSubview:view];

    photoGalleryViewController3 = [(MacPlacePhotoViewerRootViewController *)self photoGalleryViewController];
  }

  else
  {
    if (context != 1)
    {
      return;
    }

    photoThumbnailViewController4 = [(MacPlacePhotoViewerRootViewController *)self photoThumbnailViewController];
    view = [photoThumbnailViewController4 view];

    [view setTranslatesAutoresizingMaskIntoConstraints:0];
    photoThumbnailViewController5 = [(MacPlacePhotoViewerRootViewController *)self photoThumbnailViewController];
    [(MacPlacePhotoViewerRootViewController *)self addChildViewController:photoThumbnailViewController5];

    view3 = [(MacPlacePhotoViewerRootViewController *)self view];
    [view3 addSubview:view];

    photoGalleryViewController3 = [(MacPlacePhotoViewerRootViewController *)self photoThumbnailViewController];
  }

  v20 = photoGalleryViewController3;
  [photoGalleryViewController3 didMoveToParentViewController:self];

  if (view)
  {
    view4 = [(MacPlacePhotoViewerRootViewController *)self view];
    safeAreaLayoutGuide = [view4 safeAreaLayoutGuide];
    LODWORD(v23) = 1148846080;
    v24 = [view _maps_constraintsEqualToEdgesOfLayoutGuide:safeAreaLayoutGuide priority:v23];
    allConstraints = [v24 allConstraints];
    [NSLayoutConstraint activateConstraints:allConstraints];
  }
}

- (MacPlacePhotoViewerRootViewController)initWithConfiguration:(id)configuration sceneDelegate:(id)delegate
{
  configurationCopy = configuration;
  delegateCopy = delegate;
  v28.receiver = self;
  v28.super_class = MacPlacePhotoViewerRootViewController;
  v9 = [(MacPlacePhotoViewerRootViewController *)&v28 initWithNibName:0 bundle:0];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_configuration, configuration);
    v11 = [PhotoViewerToolbarController alloc];
    mapItem = [(MacPlacePhotoViewerConfiguration *)v10->_configuration mapItem];
    v13 = [(PhotoViewerToolbarController *)v11 initWithMapItem:mapItem];
    toolbarController = v10->_toolbarController;
    v10->_toolbarController = v13;

    [(PhotoViewerToolbarController *)v10->_toolbarController setDelegate:v10];
    v15 = [RAPPlacecardImageryLayoutManager alloc];
    v16 = +[RAPPlacecardImageryIssueItem defaultIssueItems];
    v17 = [(RAPPlacecardImageryLayoutManager *)v15 initWithDefaultItems:v16];
    reportImageryLayoutManager = v10->_reportImageryLayoutManager;
    v10->_reportImageryLayoutManager = v17;

    objc_storeStrong(&v10->_mapsSceneDelegate, delegate);
    v19 = [[RAPPresenter alloc] initWithSceneDelegate:v10->_mapsSceneDelegate];
    rapPresenter = v10->_rapPresenter;
    v10->_rapPresenter = v19;

    photoGalleryViewController = [configurationCopy photoGalleryViewController];
    delegate = [photoGalleryViewController delegate];
    objc_storeWeak(&v10->_underlyingGalleryDelegate, delegate);

    photoGalleryViewController2 = [configurationCopy photoGalleryViewController];
    [photoGalleryViewController2 setDelegate:v10];

    photoGalleryViewController3 = [configurationCopy photoGalleryViewController];
    photoGalleryViewController = v10->_photoGalleryViewController;
    v10->_photoGalleryViewController = photoGalleryViewController3;

    photoGalleryViewController4 = [configurationCopy photoGalleryViewController];
    [(PhotoViewerToolbarController *)v10->_toolbarController setSuppressPhotoGrid:photoGalleryViewController4 != 0];

    [(MacPlacePhotoViewerRootViewController *)v10 setContext:[(MacPlacePhotoViewerConfiguration *)v10->_configuration startingContext]];
  }

  return v10;
}

@end