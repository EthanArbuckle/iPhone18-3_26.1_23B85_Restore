@interface UGCPhotoGalleryCoordinator
- (UGCPhotoGalleryCoordinator)init;
- (id)_attributionAtIndex:(unint64_t)index;
- (id)animationControllerForDismissedController:(id)controller;
- (id)animationControllerForPresentedController:(id)controller presentingController:(id)presentingController sourceController:(id)sourceController;
- (id)placePhotoGalleryRequestsUserAttribution:(id)attribution;
- (void)_captureUserAction:(int)action atIndex:(unint64_t)index;
- (void)_fetchUserAttribution;
- (void)_performPunchoutWithPhoto:(id)photo index:(unint64_t)index presentingViewController:(id)controller;
- (void)_placePhotoGalleryDidSelectDeleteImage:(id)image;
- (void)_startPresentationUsingIOSPhotoViewer;
- (void)_startPresentationUsingMacPhotoViewer;
- (void)dealloc;
- (void)photoThumbnailGalleryViewController:(id)controller selectedAddPhotosUsingEntryPoint:(int64_t)point presentationOptions:(id)options;
- (void)photoThumbnailGalleryViewController:(id)controller selectedPhotoAtIndex:(unint64_t)index photoList:(id)list albumCategory:(id)category imageViewForTransition:(id)transition;
- (void)photoThumbnailGalleryViewControllerDidSelectDone:(id)done;
- (void)placePhotoGallery:(id)gallery didSelectDeleteImageAtIndex:(unint64_t)index;
- (void)placePhotoGallery:(id)gallery didSelectReportImageAtIndex:(unint64_t)index;
- (void)placePhotoGallery:(id)gallery openButtonTappedAtIndex:(unint64_t)index;
- (void)placePhotoGallery:(id)gallery selectedAddPhotoWithEntryPoint:(int64_t)point usingPresentationOptions:(id)options;
- (void)placePhotoGalleryDidScrollLeftToIndex:(unint64_t)index;
- (void)placePhotoGalleryDidScrollRightToIndex:(unint64_t)index;
- (void)placePhotoGalleryDidScrollToIndex:(unint64_t)index;
- (void)placePhotoGalleryDidSelectEditPhotoCredit:(id)credit;
- (void)placePhotoViewerSceneWillDisconnect:(id)disconnect;
- (void)poiEnrichmentCoordinator:(id)coordinator didFinishSubmissionLookup:(id)lookup;
- (void)poiEnrichmentCoordinator:(id)coordinator didUpdateUserConsent:(BOOL)consent;
- (void)poiEnrichmentCoordinator:(id)coordinator openURL:(id)l;
- (void)poiEnrichmentCoordinatorDidFinish:(id)finish;
- (void)poiEnrichmentCoordinatorDidUpdateUserSubmission:(id)submission;
- (void)present;
@end

@implementation UGCPhotoGalleryCoordinator

- (id)animationControllerForDismissedController:(id)controller
{
  controllerCopy = controller;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_6;
  }

  v5 = controllerCopy;
  viewControllers = [v5 viewControllers];
  firstObject = [viewControllers firstObject];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    viewControllers2 = [v5 viewControllers];
    firstObject2 = [viewControllers2 firstObject];

    if (firstObject2)
    {
      indexOfVisibleView = [firstObject2 indexOfVisibleView];
      if (indexOfVisibleView >= [(NSArray *)self->_galleryPhotoList count])
      {
        v16 = 0;
      }

      else
      {
        v12 = [(UGCMorePhotosFeedViewController *)self->_galleryViewController imageViewForIndex:indexOfVisibleView];
        v13 = [UIImageView alloc];
        image = [v12 image];
        v15 = [v13 initWithImage:image];

        [v15 setContentMode:{objc_msgSend(v12, "contentMode")}];
        v16 = [[MUPhotoGalleryTransitionAnimator alloc] initWithView:v12 transitionView:v15];
      }

      v5 = firstObject2;
      goto LABEL_10;
    }

LABEL_6:
    v16 = 0;
    goto LABEL_11;
  }

  v16 = 0;
LABEL_10:

LABEL_11:

  return v16;
}

- (id)animationControllerForPresentedController:(id)controller presentingController:(id)presentingController sourceController:(id)sourceController
{
  v6 = [UIImageView alloc];
  image = [(UIImageView *)self->_imageViewForTransition image];
  v8 = [v6 initWithImage:image];

  [v8 setContentMode:{-[UIImageView contentMode](self->_imageViewForTransition, "contentMode")}];
  v9 = [[MUPhotoGalleryTransitionAnimator alloc] initWithView:self->_imageViewForTransition transitionView:v8];

  return v9;
}

- (id)_attributionAtIndex:(unint64_t)index
{
  if ([(NSArray *)self->_galleryPhotoList count]<= index)
  {
    attribution = 0;
  }

  else
  {
    v5 = [(NSArray *)self->_galleryPhotoList objectAtIndexedSubscript:index];
    attribution = [v5 attribution];
  }

  return attribution;
}

- (void)_captureUserAction:(int)action atIndex:(unint64_t)index
{
  v5 = *&action;
  index = [NSString stringWithFormat:@"%lu", index];
  [GEOAPPortal captureUserAction:v5 target:612 value:index];
  v8 = [(UGCPhotoGalleryCoordinator *)self _attributionAtIndex:index];
  if ([v8 isUserSubmitted])
  {
    v9 = [NSNumber numberWithUnsignedInteger:index];
    v11 = v9;
    v10 = [NSArray arrayWithObjects:&v11 count:1];
    [GEOAPPortal captureUGCUserAction:v5 target:612 value:index photoSources:v10];
  }
}

- (void)placePhotoGalleryDidScrollRightToIndex:(unint64_t)index
{
  [(UGCPhotoGalleryCoordinator *)self _captureUserAction:6049 atIndex:index];
  galleryViewController = self->_galleryViewController;

  [(UGCMorePhotosFeedViewController *)galleryViewController scrollToPhotoAtIndex:index animated:0];
}

- (void)placePhotoGalleryDidScrollLeftToIndex:(unint64_t)index
{
  [(UGCPhotoGalleryCoordinator *)self _captureUserAction:6048 atIndex:index];
  galleryViewController = self->_galleryViewController;

  [(UGCMorePhotosFeedViewController *)galleryViewController scrollToPhotoAtIndex:index animated:0];
}

- (void)placePhotoGalleryDidScrollToIndex:(unint64_t)index
{
  [(UGCReportImageryController *)self->_reportImageryController cancelPresentation];
  fullScreenGalleryViewController = self->_fullScreenGalleryViewController;

  [(MUPlacePhotoGalleryViewController *)fullScreenGalleryViewController stopAnimatingActivityIndicatorViewForRAP];
}

- (void)placePhotoGallery:(id)gallery selectedAddPhotoWithEntryPoint:(int64_t)point usingPresentationOptions:(id)options
{
  v7 = point == 2;
  galleryCopy = gallery;
  [GEOAPPortal captureUserAction:2147 target:612 value:0];
  mapItem = [(UGCPOIEnrichmentCoordinator *)self mapItem];
  if (point == 1)
  {
    v10 = 1;
  }

  else
  {
    v10 = 2 * v7;
  }

  v11 = [UGCPOIEnrichmentCoordinator photoEmphasizedAddCoordinatorWithMapItem:mapItem preferredSourceType:v10 originTarget:@"PLACECARD_PHOTO_VIEWER_ALL"];
  poiEnrichmentCoordinator = self->_poiEnrichmentCoordinator;
  self->_poiEnrichmentCoordinator = v11;

  [(UGCPOIEnrichmentCoordinator *)self->_poiEnrichmentCoordinator setDelegate:self];
  [(UGCPOIEnrichmentCoordinator *)self->_poiEnrichmentCoordinator setPresentingViewController:galleryCopy];
  navigationItem = [galleryCopy navigationItem];
  rightBarButtonItem = [navigationItem rightBarButtonItem];
  [(UGCPOIEnrichmentCoordinator *)self->_poiEnrichmentCoordinator setAnchoringBarButtonItem:rightBarButtonItem];

  [(UGCPOIEnrichmentCoordinator *)self->_poiEnrichmentCoordinator setSubmissionLookupObserver:galleryCopy];
  [(UGCPOIEnrichmentCoordinator *)self->_poiEnrichmentCoordinator setPresentationContext:1];
  [(UGCPOIEnrichmentCoordinator *)self->_poiEnrichmentCoordinator setPrefersDefaultPresentationOverContainee:1];
  v15 = self->_poiEnrichmentCoordinator;

  [(UGCPOIEnrichmentCoordinator *)v15 present];
}

- (void)placePhotoGallery:(id)gallery didSelectReportImageAtIndex:(unint64_t)index
{
  galleryCopy = gallery;
  v7 = [(NSArray *)self->_galleryPhotoList objectAtIndex:index];
  geoMapItemPhoto = [v7 geoMapItemPhoto];

  v9 = [UGCReportImageryController alloc];
  mapItem = [(UGCPOIEnrichmentCoordinator *)self mapItem];
  v11 = [(UGCReportImageryController *)v9 initWithMapItem:mapItem reportedPhoto:geoMapItemPhoto presentingViewController:galleryCopy];
  reportImageryController = self->_reportImageryController;
  self->_reportImageryController = v11;

  [galleryCopy startAnimatingActivityIndicatorViewForRAP];
  v13 = self->_reportImageryController;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_1005BC3BC;
  v15[3] = &unk_10163BCD8;
  v16 = galleryCopy;
  v14 = galleryCopy;
  [(UGCReportImageryController *)v13 fetchLayoutAndPresentWithCompletion:v15];
}

- (void)placePhotoViewerSceneWillDisconnect:(id)disconnect
{
  photoViewerScene = self->_photoViewerScene;
  self->_photoViewerScene = 0;

  delegate = [(UGCPOIEnrichmentCoordinator *)self delegate];
  [delegate poiEnrichmentCoordinatorDidFinish:self];
}

- (void)_performPunchoutWithPhoto:(id)photo index:(unint64_t)index presentingViewController:(id)controller
{
  photoCopy = photo;
  controllerCopy = controller;
  v10 = [NSNumber numberWithUnsignedInteger:index];
  stringValue = [v10 stringValue];
  attribution = [photoCopy attribution];
  providerID = [attribution providerID];
  [GEOAPPortal captureUserAction:6018 target:612 value:stringValue actionRichProviderId:providerID];

  attribution2 = [photoCopy attribution];
  if ([MUPlaceAttributionUtilities shouldPresentStoreProductViewControllerWithAttribution:attribution2])
  {
    appAdamID = [attribution2 appAdamID];
    providerID2 = [attribution2 providerID];
    [MUPlaceAttributionUtilities presentStoreProductViewControllerWithAppAdamID:appAdamID bundleIdentifier:providerID2 presentingViewController:controllerCopy];
  }

  else
  {
    photoID = [photoCopy photoID];
    v18 = [attribution2 urlsForPhotoWithIdentifier:photoID];

    attribution3 = [photoCopy attribution];
    v20 = [MKPunchoutOptions punchoutOptionsForURLStrings:v18 withAttribution:attribution3];

    if ([v20 strategy] == 1)
    {
      v21 = v18;
    }

    else
    {
      selfCopy = self;
      v39 = 0u;
      v40 = 0u;
      v37 = 0u;
      v38 = 0u;
      v22 = v18;
      v23 = [v22 countByEnumeratingWithState:&v37 objects:v41 count:16];
      if (v23)
      {
        v24 = v23;
        v25 = *v38;
        v34 = v18;
        v35 = controllerCopy;
        v33 = v20;
        while (2)
        {
          for (i = 0; i != v24; i = i + 1)
          {
            if (*v38 != v25)
            {
              objc_enumerationMutation(v22);
            }

            v27 = [NSURL URLWithString:*(*(&v37 + 1) + 8 * i), v33, v34, v35];
            scheme = [v27 scheme];
            if (([scheme isEqualToString:@"http"] & 1) != 0 || (objc_msgSend(v27, "scheme"), v29 = objc_claimAutoreleasedReturnValue(), v30 = objc_msgSend(v29, "isEqualToString:", @"https"), v29, v30))
            {
              delegate = [(UGCPOIEnrichmentCoordinator *)selfCopy delegate];
              [delegate poiEnrichmentCoordinator:selfCopy openURL:v27];

              absoluteString = [v27 absoluteString];
              [GEOAPPortal captureUserAction:6050 target:665 value:absoluteString];

              v18 = v34;
              controllerCopy = v35;
              v20 = v33;
              goto LABEL_17;
            }
          }

          v24 = [v22 countByEnumeratingWithState:&v37 objects:v41 count:16];
          v18 = v34;
          controllerCopy = v35;
          v20 = v33;
          if (v24)
          {
            continue;
          }

          break;
        }
      }

      v21 = v22;
    }

    [MKAppLaunchController launchAttributionURLs:v21 withAttribution:attribution2 usingTarget:665 completionHandler:0];
LABEL_17:
  }
}

- (void)placePhotoGalleryDidSelectEditPhotoCredit:(id)credit
{
  actionCoordinator = self->_actionCoordinator;
  presentingViewController = [(UGCPOIEnrichmentCoordinator *)self presentingViewController];
  [(ActionCoordination *)actionCoordinator viewControllerShowPhotoCredit:presentingViewController];
}

- (void)_placePhotoGalleryDidSelectDeleteImage:(id)image
{
  imageCopy = image;
  v5 = objc_alloc_init(_TtC4Maps26UGCSubmissionLookupManager);
  lookupManager = self->_lookupManager;
  self->_lookupManager = v5;

  objc_initWeak(&location, self);
  v7 = self->_lookupManager;
  mapItem = [(UGCPOIEnrichmentCoordinator *)self mapItem];
  _muid = [mapItem _muid];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_1005BC958;
  v12[3] = &unk_101622E28;
  objc_copyWeak(&v14, &location);
  v10 = imageCopy;
  v13 = v10;
  [(UGCSubmissionLookupManager *)v7 fetchSubmissionWithICloudIDFor:_muid completion:v12];

  presentingViewController = [(UGCPOIEnrichmentCoordinator *)self presentingViewController];
  [presentingViewController dismissViewControllerAnimated:1 completion:0];

  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);
}

- (void)placePhotoGallery:(id)gallery didSelectDeleteImageAtIndex:(unint64_t)index
{
  v5 = [(NSArray *)self->_galleryPhotoList objectAtIndex:index];
  geoMapItemPhoto = [v5 geoMapItemPhoto];

  [(UGCPhotoGalleryCoordinator *)self _placePhotoGalleryDidSelectDeleteImage:geoMapItemPhoto];
}

- (void)placePhotoGallery:(id)gallery openButtonTappedAtIndex:(unint64_t)index
{
  galleryCopy = gallery;
  if ([(NSArray *)self->_galleryPhotoList count]> index)
  {
    v6 = [(NSArray *)self->_galleryPhotoList objectAtIndexedSubscript:index];
    [(UGCPhotoGalleryCoordinator *)self _performPunchoutWithPhoto:v6 index:index presentingViewController:galleryCopy];
  }
}

- (void)_fetchUserAttribution
{
  submissionLookupResult = [(UGCPOIEnrichmentCoordinator *)self submissionLookupResult];
  previousSubmission = [submissionLookupResult previousSubmission];
  images = [previousSubmission images];
  v6 = [images count];

  if (v6)
  {
    objc_initWeak(&location, self);
    v7 = +[UGCPhotoAttributionPreferencesManager sharedManager];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_1005BD000;
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
    v12 = sub_1005BD2E4;
    v13 = sub_1005BD2F4;
    v14 = 0;
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_1005BD2FC;
    v8[3] = &unk_1016247D0;
    v8[4] = &v9;
    [userAttributionResult withValue:v8 orError:&stru_101622DA0];
    v6 = v10[5];
    _Block_object_dispose(&v9, 8);
  }

  else
  {
    [(UGCPhotoGalleryCoordinator *)self _fetchUserAttribution];
    v6 = [[MUPlaceUserAttributionViewModel alloc] initWithAttributionName:&stru_1016631F0];
  }

  return v6;
}

- (void)photoThumbnailGalleryViewController:(id)controller selectedPhotoAtIndex:(unint64_t)index photoList:(id)list albumCategory:(id)category imageViewForTransition:(id)transition
{
  controllerCopy = controller;
  listCopy = list;
  categoryCopy = category;
  transitionCopy = transition;
  v15 = [listCopy objectAtIndexedSubscript:index];
  if ([v15 needsObfuscationWhenRenderedInFullScreen])
  {
    [(UGCPhotoGalleryCoordinator *)self _performPunchoutWithPhoto:v15 index:index presentingViewController:controllerCopy];
  }

  else
  {
    objc_storeStrong(&self->_galleryPhotoList, list);
    objc_storeStrong(&self->_imageViewForTransition, transition);
    v16 = [MUPlacePhotoGalleryViewController alloc];
    mapItem = [(UGCPOIEnrichmentCoordinator *)self mapItem];
    v18 = [v16 initWithPhotos:listCopy additionalView:0 scrollToIndex:index mapItem:mapItem delegate:self];
    fullScreenGalleryViewController = self->_fullScreenGalleryViewController;
    self->_fullScreenGalleryViewController = v18;

    -[MUPlacePhotoGalleryViewController setEnablePersonalizedAttribution:](self->_fullScreenGalleryViewController, "setEnablePersonalizedAttribution:", [categoryCopy categoryType] == 2);
    v20 = [[UINavigationController alloc] initWithRootViewController:self->_fullScreenGalleryViewController];
    navigationController = [v20 navigationController];
    [navigationController setNavigationBarHidden:1 animated:0];

    if (sub_10000FA08(self->_fullScreenGalleryViewController) != 5)
    {
      [v20 setTransitioningDelegate:self];
    }

    [v20 setModalPresentationStyle:5];
    [(UGCMorePhotosFeedViewController *)self->_galleryViewController presentViewController:v20 animated:1 completion:0];
  }
}

- (void)poiEnrichmentCoordinator:(id)coordinator didFinishSubmissionLookup:(id)lookup
{
  lookupCopy = lookup;
  submissionStatusDelegate = [(UGCPOIEnrichmentCoordinator *)self submissionStatusDelegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    submissionStatusDelegate2 = [(UGCPOIEnrichmentCoordinator *)self submissionStatusDelegate];
    [submissionStatusDelegate2 poiEnrichmentCoordinator:self didFinishSubmissionLookup:lookupCopy];
  }
}

- (void)poiEnrichmentCoordinatorDidUpdateUserSubmission:(id)submission
{
  submissionStatusDelegate = [(UGCPOIEnrichmentCoordinator *)self submissionStatusDelegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    submissionStatusDelegate2 = [(UGCPOIEnrichmentCoordinator *)self submissionStatusDelegate];
    [submissionStatusDelegate2 poiEnrichmentCoordinatorDidUpdateUserSubmission:self];
  }
}

- (void)poiEnrichmentCoordinator:(id)coordinator didUpdateUserConsent:(BOOL)consent
{
  consentCopy = consent;
  coordinatorCopy = coordinator;
  submissionStatusDelegate = [(UGCPOIEnrichmentCoordinator *)self submissionStatusDelegate];
  [submissionStatusDelegate poiEnrichmentCoordinator:coordinatorCopy didUpdateUserConsent:consentCopy];
}

- (void)poiEnrichmentCoordinator:(id)coordinator openURL:(id)l
{
  lCopy = l;
  delegate = [(UGCPOIEnrichmentCoordinator *)self delegate];
  [delegate poiEnrichmentCoordinator:self openURL:lCopy];
}

- (void)poiEnrichmentCoordinatorDidFinish:(id)finish
{
  poiEnrichmentCoordinator = self->_poiEnrichmentCoordinator;
  self->_poiEnrichmentCoordinator = 0;
}

- (void)photoThumbnailGalleryViewController:(id)controller selectedAddPhotosUsingEntryPoint:(int64_t)point presentationOptions:(id)options
{
  v8 = point == 2;
  optionsCopy = options;
  controllerCopy = controller;
  mapItem = [(UGCPOIEnrichmentCoordinator *)self mapItem];
  if (point == 1)
  {
    v12 = 1;
  }

  else
  {
    v12 = 2 * v8;
  }

  v13 = [UGCPOIEnrichmentCoordinator photoEmphasizedAddCoordinatorWithMapItem:mapItem preferredSourceType:v12 originTarget:@"PLACECARD_PHOTO_VIEWER_ALL"];
  poiEnrichmentCoordinator = self->_poiEnrichmentCoordinator;
  self->_poiEnrichmentCoordinator = v13;

  [(UGCPOIEnrichmentCoordinator *)self->_poiEnrichmentCoordinator setDelegate:self];
  [(UGCPOIEnrichmentCoordinator *)self->_poiEnrichmentCoordinator setPresentingViewController:controllerCopy];

  sourceView = [optionsCopy sourceView];
  [(UGCPOIEnrichmentCoordinator *)self->_poiEnrichmentCoordinator setAnchoringView:sourceView];

  progressObserver = [optionsCopy progressObserver];

  [(UGCPOIEnrichmentCoordinator *)self->_poiEnrichmentCoordinator setSubmissionLookupObserver:progressObserver];
  [(UGCPOIEnrichmentCoordinator *)self->_poiEnrichmentCoordinator setPresentationContext:1];
  [(UGCPOIEnrichmentCoordinator *)self->_poiEnrichmentCoordinator setPrefersDefaultPresentationOverContainee:1];
  v17 = self->_poiEnrichmentCoordinator;

  [(UGCPOIEnrichmentCoordinator *)v17 present];
}

- (void)photoThumbnailGalleryViewControllerDidSelectDone:(id)done
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_1005BD94C;
  v3[3] = &unk_101661B18;
  v3[4] = self;
  [done dismissViewControllerAnimated:1 completion:v3];
}

- (void)_startPresentationUsingIOSPhotoViewer
{
  v3 = [UGCMorePhotosFeedViewController alloc];
  mapItem = [(UGCPOIEnrichmentCoordinator *)self mapItem];
  v5 = [(UGCMorePhotosFeedViewController *)v3 initWithMapItem:mapItem];
  galleryViewController = self->_galleryViewController;
  self->_galleryViewController = v5;

  [(UGCMorePhotosFeedViewController *)self->_galleryViewController setDelegate:self];
  [(UGCMorePhotosFeedViewController *)self->_galleryViewController setModalPresentationStyle:8];
  [(UGCMorePhotosFeedViewController *)self->_galleryViewController setSelectedAlbumIndex:[(UGCPhotoGalleryCoordinator *)self albumIndex]];
  [(UGCMorePhotosFeedViewController *)self->_galleryViewController setStartingImageIndex:[(UGCPhotoGalleryCoordinator *)self selectedIndex]];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1005BDA88;
  v9[3] = &unk_10164F8F8;
  v9[4] = self;
  v7 = objc_retainBlock(v9);
  presentingViewController = [(UGCPOIEnrichmentCoordinator *)self presentingViewController];
  (v7[2])(v7, presentingViewController);
}

- (void)_startPresentationUsingMacPhotoViewer
{
  v3 = +[MacPlacePhotoViewerScene requestSceneActivation];
  photoViewerScene = self->_photoViewerScene;
  self->_photoViewerScene = v3;

  v5 = [MacPlacePhotoViewerConfiguration alloc];
  mapItem = [(UGCPOIEnrichmentCoordinator *)self mapItem];
  v11 = [(MacPlacePhotoViewerConfiguration *)v5 initWithMapItem:mapItem startingContext:1];

  [(MacPlacePhotoViewerConfiguration *)v11 setAlbumIndex:[(UGCPhotoGalleryCoordinator *)self albumIndex]];
  [(MacPlacePhotoViewerConfiguration *)v11 setSelectedPhotoIndex:[(UGCPhotoGalleryCoordinator *)self selectedIndex]];
  submissionLookupResult = [(UGCPOIEnrichmentCoordinator *)self submissionLookupResult];
  [(MacPlacePhotoViewerConfiguration *)v11 setUserSubmissionLookupResult:submissionLookupResult];

  v8 = self->_photoViewerScene;
  presentingViewController = [(UGCPOIEnrichmentCoordinator *)self presentingViewController];
  _maps_mapsSceneDelegate = [presentingViewController _maps_mapsSceneDelegate];
  [(MacPlacePhotoViewerScene *)v8 openPhotoGalleryWithConfiguration:v11 sceneDelegate:_maps_mapsSceneDelegate delegate:self];
}

- (void)present
{
  v3 = +[UIApplication sharedMapsDelegate];
  appCoordinator = [v3 appCoordinator];
  baseActionCoordinator = [appCoordinator baseActionCoordinator];
  actionCoordinator = self->_actionCoordinator;
  self->_actionCoordinator = baseActionCoordinator;

  v7 = +[UIDevice currentDevice];
  userInterfaceIdiom = [v7 userInterfaceIdiom];

  if (userInterfaceIdiom == 5)
  {

    [(UGCPhotoGalleryCoordinator *)self _startPresentationUsingMacPhotoViewer];
  }

  else
  {

    [(UGCPhotoGalleryCoordinator *)self _startPresentationUsingIOSPhotoViewer];
  }
}

- (void)dealloc
{
  v3 = +[UGCPhotoAttributionPreferencesManager sharedManager];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = UGCPhotoGalleryCoordinator;
  [(UGCPhotoGalleryCoordinator *)&v4 dealloc];
}

- (UGCPhotoGalleryCoordinator)init
{
  v5.receiver = self;
  v5.super_class = UGCPhotoGalleryCoordinator;
  v2 = [(UGCPOIEnrichmentCoordinator *)&v5 init];
  if (v2)
  {
    v3 = +[UGCPhotoAttributionPreferencesManager sharedManager];
    [v3 addObserver:v2];
  }

  return v2;
}

@end