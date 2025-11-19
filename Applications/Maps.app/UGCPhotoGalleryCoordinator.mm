@interface UGCPhotoGalleryCoordinator
- (UGCPhotoGalleryCoordinator)init;
- (id)_attributionAtIndex:(unint64_t)a3;
- (id)animationControllerForDismissedController:(id)a3;
- (id)animationControllerForPresentedController:(id)a3 presentingController:(id)a4 sourceController:(id)a5;
- (id)placePhotoGalleryRequestsUserAttribution:(id)a3;
- (void)_captureUserAction:(int)a3 atIndex:(unint64_t)a4;
- (void)_fetchUserAttribution;
- (void)_performPunchoutWithPhoto:(id)a3 index:(unint64_t)a4 presentingViewController:(id)a5;
- (void)_placePhotoGalleryDidSelectDeleteImage:(id)a3;
- (void)_startPresentationUsingIOSPhotoViewer;
- (void)_startPresentationUsingMacPhotoViewer;
- (void)dealloc;
- (void)photoThumbnailGalleryViewController:(id)a3 selectedAddPhotosUsingEntryPoint:(int64_t)a4 presentationOptions:(id)a5;
- (void)photoThumbnailGalleryViewController:(id)a3 selectedPhotoAtIndex:(unint64_t)a4 photoList:(id)a5 albumCategory:(id)a6 imageViewForTransition:(id)a7;
- (void)photoThumbnailGalleryViewControllerDidSelectDone:(id)a3;
- (void)placePhotoGallery:(id)a3 didSelectDeleteImageAtIndex:(unint64_t)a4;
- (void)placePhotoGallery:(id)a3 didSelectReportImageAtIndex:(unint64_t)a4;
- (void)placePhotoGallery:(id)a3 openButtonTappedAtIndex:(unint64_t)a4;
- (void)placePhotoGallery:(id)a3 selectedAddPhotoWithEntryPoint:(int64_t)a4 usingPresentationOptions:(id)a5;
- (void)placePhotoGalleryDidScrollLeftToIndex:(unint64_t)a3;
- (void)placePhotoGalleryDidScrollRightToIndex:(unint64_t)a3;
- (void)placePhotoGalleryDidScrollToIndex:(unint64_t)a3;
- (void)placePhotoGalleryDidSelectEditPhotoCredit:(id)a3;
- (void)placePhotoViewerSceneWillDisconnect:(id)a3;
- (void)poiEnrichmentCoordinator:(id)a3 didFinishSubmissionLookup:(id)a4;
- (void)poiEnrichmentCoordinator:(id)a3 didUpdateUserConsent:(BOOL)a4;
- (void)poiEnrichmentCoordinator:(id)a3 openURL:(id)a4;
- (void)poiEnrichmentCoordinatorDidFinish:(id)a3;
- (void)poiEnrichmentCoordinatorDidUpdateUserSubmission:(id)a3;
- (void)present;
@end

@implementation UGCPhotoGalleryCoordinator

- (id)animationControllerForDismissedController:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_6;
  }

  v5 = v4;
  v6 = [v5 viewControllers];
  v7 = [v6 firstObject];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v9 = [v5 viewControllers];
    v10 = [v9 firstObject];

    if (v10)
    {
      v11 = [v10 indexOfVisibleView];
      if (v11 >= [(NSArray *)self->_galleryPhotoList count])
      {
        v16 = 0;
      }

      else
      {
        v12 = [(UGCMorePhotosFeedViewController *)self->_galleryViewController imageViewForIndex:v11];
        v13 = [UIImageView alloc];
        v14 = [v12 image];
        v15 = [v13 initWithImage:v14];

        [v15 setContentMode:{objc_msgSend(v12, "contentMode")}];
        v16 = [[MUPhotoGalleryTransitionAnimator alloc] initWithView:v12 transitionView:v15];
      }

      v5 = v10;
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

- (id)animationControllerForPresentedController:(id)a3 presentingController:(id)a4 sourceController:(id)a5
{
  v6 = [UIImageView alloc];
  v7 = [(UIImageView *)self->_imageViewForTransition image];
  v8 = [v6 initWithImage:v7];

  [v8 setContentMode:{-[UIImageView contentMode](self->_imageViewForTransition, "contentMode")}];
  v9 = [[MUPhotoGalleryTransitionAnimator alloc] initWithView:self->_imageViewForTransition transitionView:v8];

  return v9;
}

- (id)_attributionAtIndex:(unint64_t)a3
{
  if ([(NSArray *)self->_galleryPhotoList count]<= a3)
  {
    v6 = 0;
  }

  else
  {
    v5 = [(NSArray *)self->_galleryPhotoList objectAtIndexedSubscript:a3];
    v6 = [v5 attribution];
  }

  return v6;
}

- (void)_captureUserAction:(int)a3 atIndex:(unint64_t)a4
{
  v5 = *&a3;
  v7 = [NSString stringWithFormat:@"%lu", a4];
  [GEOAPPortal captureUserAction:v5 target:612 value:v7];
  v8 = [(UGCPhotoGalleryCoordinator *)self _attributionAtIndex:a4];
  if ([v8 isUserSubmitted])
  {
    v9 = [NSNumber numberWithUnsignedInteger:a4];
    v11 = v9;
    v10 = [NSArray arrayWithObjects:&v11 count:1];
    [GEOAPPortal captureUGCUserAction:v5 target:612 value:v7 photoSources:v10];
  }
}

- (void)placePhotoGalleryDidScrollRightToIndex:(unint64_t)a3
{
  [(UGCPhotoGalleryCoordinator *)self _captureUserAction:6049 atIndex:a3];
  galleryViewController = self->_galleryViewController;

  [(UGCMorePhotosFeedViewController *)galleryViewController scrollToPhotoAtIndex:a3 animated:0];
}

- (void)placePhotoGalleryDidScrollLeftToIndex:(unint64_t)a3
{
  [(UGCPhotoGalleryCoordinator *)self _captureUserAction:6048 atIndex:a3];
  galleryViewController = self->_galleryViewController;

  [(UGCMorePhotosFeedViewController *)galleryViewController scrollToPhotoAtIndex:a3 animated:0];
}

- (void)placePhotoGalleryDidScrollToIndex:(unint64_t)a3
{
  [(UGCReportImageryController *)self->_reportImageryController cancelPresentation];
  fullScreenGalleryViewController = self->_fullScreenGalleryViewController;

  [(MUPlacePhotoGalleryViewController *)fullScreenGalleryViewController stopAnimatingActivityIndicatorViewForRAP];
}

- (void)placePhotoGallery:(id)a3 selectedAddPhotoWithEntryPoint:(int64_t)a4 usingPresentationOptions:(id)a5
{
  v7 = a4 == 2;
  v8 = a3;
  [GEOAPPortal captureUserAction:2147 target:612 value:0];
  v9 = [(UGCPOIEnrichmentCoordinator *)self mapItem];
  if (a4 == 1)
  {
    v10 = 1;
  }

  else
  {
    v10 = 2 * v7;
  }

  v11 = [UGCPOIEnrichmentCoordinator photoEmphasizedAddCoordinatorWithMapItem:v9 preferredSourceType:v10 originTarget:@"PLACECARD_PHOTO_VIEWER_ALL"];
  poiEnrichmentCoordinator = self->_poiEnrichmentCoordinator;
  self->_poiEnrichmentCoordinator = v11;

  [(UGCPOIEnrichmentCoordinator *)self->_poiEnrichmentCoordinator setDelegate:self];
  [(UGCPOIEnrichmentCoordinator *)self->_poiEnrichmentCoordinator setPresentingViewController:v8];
  v13 = [v8 navigationItem];
  v14 = [v13 rightBarButtonItem];
  [(UGCPOIEnrichmentCoordinator *)self->_poiEnrichmentCoordinator setAnchoringBarButtonItem:v14];

  [(UGCPOIEnrichmentCoordinator *)self->_poiEnrichmentCoordinator setSubmissionLookupObserver:v8];
  [(UGCPOIEnrichmentCoordinator *)self->_poiEnrichmentCoordinator setPresentationContext:1];
  [(UGCPOIEnrichmentCoordinator *)self->_poiEnrichmentCoordinator setPrefersDefaultPresentationOverContainee:1];
  v15 = self->_poiEnrichmentCoordinator;

  [(UGCPOIEnrichmentCoordinator *)v15 present];
}

- (void)placePhotoGallery:(id)a3 didSelectReportImageAtIndex:(unint64_t)a4
{
  v6 = a3;
  v7 = [(NSArray *)self->_galleryPhotoList objectAtIndex:a4];
  v8 = [v7 geoMapItemPhoto];

  v9 = [UGCReportImageryController alloc];
  v10 = [(UGCPOIEnrichmentCoordinator *)self mapItem];
  v11 = [(UGCReportImageryController *)v9 initWithMapItem:v10 reportedPhoto:v8 presentingViewController:v6];
  reportImageryController = self->_reportImageryController;
  self->_reportImageryController = v11;

  [v6 startAnimatingActivityIndicatorViewForRAP];
  v13 = self->_reportImageryController;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_1005BC3BC;
  v15[3] = &unk_10163BCD8;
  v16 = v6;
  v14 = v6;
  [(UGCReportImageryController *)v13 fetchLayoutAndPresentWithCompletion:v15];
}

- (void)placePhotoViewerSceneWillDisconnect:(id)a3
{
  photoViewerScene = self->_photoViewerScene;
  self->_photoViewerScene = 0;

  v5 = [(UGCPOIEnrichmentCoordinator *)self delegate];
  [v5 poiEnrichmentCoordinatorDidFinish:self];
}

- (void)_performPunchoutWithPhoto:(id)a3 index:(unint64_t)a4 presentingViewController:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = [NSNumber numberWithUnsignedInteger:a4];
  v11 = [v10 stringValue];
  v12 = [v8 attribution];
  v13 = [v12 providerID];
  [GEOAPPortal captureUserAction:6018 target:612 value:v11 actionRichProviderId:v13];

  v14 = [v8 attribution];
  if ([MUPlaceAttributionUtilities shouldPresentStoreProductViewControllerWithAttribution:v14])
  {
    v15 = [v14 appAdamID];
    v16 = [v14 providerID];
    [MUPlaceAttributionUtilities presentStoreProductViewControllerWithAppAdamID:v15 bundleIdentifier:v16 presentingViewController:v9];
  }

  else
  {
    v17 = [v8 photoID];
    v18 = [v14 urlsForPhotoWithIdentifier:v17];

    v19 = [v8 attribution];
    v20 = [MKPunchoutOptions punchoutOptionsForURLStrings:v18 withAttribution:v19];

    if ([v20 strategy] == 1)
    {
      v21 = v18;
    }

    else
    {
      v36 = self;
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
        v35 = v9;
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
            v28 = [v27 scheme];
            if (([v28 isEqualToString:@"http"] & 1) != 0 || (objc_msgSend(v27, "scheme"), v29 = objc_claimAutoreleasedReturnValue(), v30 = objc_msgSend(v29, "isEqualToString:", @"https"), v29, v30))
            {
              v31 = [(UGCPOIEnrichmentCoordinator *)v36 delegate];
              [v31 poiEnrichmentCoordinator:v36 openURL:v27];

              v32 = [v27 absoluteString];
              [GEOAPPortal captureUserAction:6050 target:665 value:v32];

              v18 = v34;
              v9 = v35;
              v20 = v33;
              goto LABEL_17;
            }
          }

          v24 = [v22 countByEnumeratingWithState:&v37 objects:v41 count:16];
          v18 = v34;
          v9 = v35;
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

    [MKAppLaunchController launchAttributionURLs:v21 withAttribution:v14 usingTarget:665 completionHandler:0];
LABEL_17:
  }
}

- (void)placePhotoGalleryDidSelectEditPhotoCredit:(id)a3
{
  actionCoordinator = self->_actionCoordinator;
  v4 = [(UGCPOIEnrichmentCoordinator *)self presentingViewController];
  [(ActionCoordination *)actionCoordinator viewControllerShowPhotoCredit:v4];
}

- (void)_placePhotoGalleryDidSelectDeleteImage:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(_TtC4Maps26UGCSubmissionLookupManager);
  lookupManager = self->_lookupManager;
  self->_lookupManager = v5;

  objc_initWeak(&location, self);
  v7 = self->_lookupManager;
  v8 = [(UGCPOIEnrichmentCoordinator *)self mapItem];
  v9 = [v8 _muid];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_1005BC958;
  v12[3] = &unk_101622E28;
  objc_copyWeak(&v14, &location);
  v10 = v4;
  v13 = v10;
  [(UGCSubmissionLookupManager *)v7 fetchSubmissionWithICloudIDFor:v9 completion:v12];

  v11 = [(UGCPOIEnrichmentCoordinator *)self presentingViewController];
  [v11 dismissViewControllerAnimated:1 completion:0];

  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);
}

- (void)placePhotoGallery:(id)a3 didSelectDeleteImageAtIndex:(unint64_t)a4
{
  v5 = [(NSArray *)self->_galleryPhotoList objectAtIndex:a4];
  v6 = [v5 geoMapItemPhoto];

  [(UGCPhotoGalleryCoordinator *)self _placePhotoGalleryDidSelectDeleteImage:v6];
}

- (void)placePhotoGallery:(id)a3 openButtonTappedAtIndex:(unint64_t)a4
{
  v7 = a3;
  if ([(NSArray *)self->_galleryPhotoList count]> a4)
  {
    v6 = [(NSArray *)self->_galleryPhotoList objectAtIndexedSubscript:a4];
    [(UGCPhotoGalleryCoordinator *)self _performPunchoutWithPhoto:v6 index:a4 presentingViewController:v7];
  }
}

- (void)_fetchUserAttribution
{
  v3 = [(UGCPOIEnrichmentCoordinator *)self submissionLookupResult];
  v4 = [v3 previousSubmission];
  v5 = [v4 images];
  v6 = [v5 count];

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

- (id)placePhotoGalleryRequestsUserAttribution:(id)a3
{
  v4 = a3;
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

- (void)photoThumbnailGalleryViewController:(id)a3 selectedPhotoAtIndex:(unint64_t)a4 photoList:(id)a5 albumCategory:(id)a6 imageViewForTransition:(id)a7
{
  v22 = a3;
  v12 = a5;
  v13 = a6;
  v14 = a7;
  v15 = [v12 objectAtIndexedSubscript:a4];
  if ([v15 needsObfuscationWhenRenderedInFullScreen])
  {
    [(UGCPhotoGalleryCoordinator *)self _performPunchoutWithPhoto:v15 index:a4 presentingViewController:v22];
  }

  else
  {
    objc_storeStrong(&self->_galleryPhotoList, a5);
    objc_storeStrong(&self->_imageViewForTransition, a7);
    v16 = [MUPlacePhotoGalleryViewController alloc];
    v17 = [(UGCPOIEnrichmentCoordinator *)self mapItem];
    v18 = [v16 initWithPhotos:v12 additionalView:0 scrollToIndex:a4 mapItem:v17 delegate:self];
    fullScreenGalleryViewController = self->_fullScreenGalleryViewController;
    self->_fullScreenGalleryViewController = v18;

    -[MUPlacePhotoGalleryViewController setEnablePersonalizedAttribution:](self->_fullScreenGalleryViewController, "setEnablePersonalizedAttribution:", [v13 categoryType] == 2);
    v20 = [[UINavigationController alloc] initWithRootViewController:self->_fullScreenGalleryViewController];
    v21 = [v20 navigationController];
    [v21 setNavigationBarHidden:1 animated:0];

    if (sub_10000FA08(self->_fullScreenGalleryViewController) != 5)
    {
      [v20 setTransitioningDelegate:self];
    }

    [v20 setModalPresentationStyle:5];
    [(UGCMorePhotosFeedViewController *)self->_galleryViewController presentViewController:v20 animated:1 completion:0];
  }
}

- (void)poiEnrichmentCoordinator:(id)a3 didFinishSubmissionLookup:(id)a4
{
  v8 = a4;
  v5 = [(UGCPOIEnrichmentCoordinator *)self submissionStatusDelegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = [(UGCPOIEnrichmentCoordinator *)self submissionStatusDelegate];
    [v7 poiEnrichmentCoordinator:self didFinishSubmissionLookup:v8];
  }
}

- (void)poiEnrichmentCoordinatorDidUpdateUserSubmission:(id)a3
{
  v4 = [(UGCPOIEnrichmentCoordinator *)self submissionStatusDelegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [(UGCPOIEnrichmentCoordinator *)self submissionStatusDelegate];
    [v6 poiEnrichmentCoordinatorDidUpdateUserSubmission:self];
  }
}

- (void)poiEnrichmentCoordinator:(id)a3 didUpdateUserConsent:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [(UGCPOIEnrichmentCoordinator *)self submissionStatusDelegate];
  [v7 poiEnrichmentCoordinator:v6 didUpdateUserConsent:v4];
}

- (void)poiEnrichmentCoordinator:(id)a3 openURL:(id)a4
{
  v5 = a4;
  v6 = [(UGCPOIEnrichmentCoordinator *)self delegate];
  [v6 poiEnrichmentCoordinator:self openURL:v5];
}

- (void)poiEnrichmentCoordinatorDidFinish:(id)a3
{
  poiEnrichmentCoordinator = self->_poiEnrichmentCoordinator;
  self->_poiEnrichmentCoordinator = 0;
}

- (void)photoThumbnailGalleryViewController:(id)a3 selectedAddPhotosUsingEntryPoint:(int64_t)a4 presentationOptions:(id)a5
{
  v8 = a4 == 2;
  v9 = a5;
  v10 = a3;
  v11 = [(UGCPOIEnrichmentCoordinator *)self mapItem];
  if (a4 == 1)
  {
    v12 = 1;
  }

  else
  {
    v12 = 2 * v8;
  }

  v13 = [UGCPOIEnrichmentCoordinator photoEmphasizedAddCoordinatorWithMapItem:v11 preferredSourceType:v12 originTarget:@"PLACECARD_PHOTO_VIEWER_ALL"];
  poiEnrichmentCoordinator = self->_poiEnrichmentCoordinator;
  self->_poiEnrichmentCoordinator = v13;

  [(UGCPOIEnrichmentCoordinator *)self->_poiEnrichmentCoordinator setDelegate:self];
  [(UGCPOIEnrichmentCoordinator *)self->_poiEnrichmentCoordinator setPresentingViewController:v10];

  v15 = [v9 sourceView];
  [(UGCPOIEnrichmentCoordinator *)self->_poiEnrichmentCoordinator setAnchoringView:v15];

  v16 = [v9 progressObserver];

  [(UGCPOIEnrichmentCoordinator *)self->_poiEnrichmentCoordinator setSubmissionLookupObserver:v16];
  [(UGCPOIEnrichmentCoordinator *)self->_poiEnrichmentCoordinator setPresentationContext:1];
  [(UGCPOIEnrichmentCoordinator *)self->_poiEnrichmentCoordinator setPrefersDefaultPresentationOverContainee:1];
  v17 = self->_poiEnrichmentCoordinator;

  [(UGCPOIEnrichmentCoordinator *)v17 present];
}

- (void)photoThumbnailGalleryViewControllerDidSelectDone:(id)a3
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_1005BD94C;
  v3[3] = &unk_101661B18;
  v3[4] = self;
  [a3 dismissViewControllerAnimated:1 completion:v3];
}

- (void)_startPresentationUsingIOSPhotoViewer
{
  v3 = [UGCMorePhotosFeedViewController alloc];
  v4 = [(UGCPOIEnrichmentCoordinator *)self mapItem];
  v5 = [(UGCMorePhotosFeedViewController *)v3 initWithMapItem:v4];
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
  v8 = [(UGCPOIEnrichmentCoordinator *)self presentingViewController];
  (v7[2])(v7, v8);
}

- (void)_startPresentationUsingMacPhotoViewer
{
  v3 = +[MacPlacePhotoViewerScene requestSceneActivation];
  photoViewerScene = self->_photoViewerScene;
  self->_photoViewerScene = v3;

  v5 = [MacPlacePhotoViewerConfiguration alloc];
  v6 = [(UGCPOIEnrichmentCoordinator *)self mapItem];
  v11 = [(MacPlacePhotoViewerConfiguration *)v5 initWithMapItem:v6 startingContext:1];

  [(MacPlacePhotoViewerConfiguration *)v11 setAlbumIndex:[(UGCPhotoGalleryCoordinator *)self albumIndex]];
  [(MacPlacePhotoViewerConfiguration *)v11 setSelectedPhotoIndex:[(UGCPhotoGalleryCoordinator *)self selectedIndex]];
  v7 = [(UGCPOIEnrichmentCoordinator *)self submissionLookupResult];
  [(MacPlacePhotoViewerConfiguration *)v11 setUserSubmissionLookupResult:v7];

  v8 = self->_photoViewerScene;
  v9 = [(UGCPOIEnrichmentCoordinator *)self presentingViewController];
  v10 = [v9 _maps_mapsSceneDelegate];
  [(MacPlacePhotoViewerScene *)v8 openPhotoGalleryWithConfiguration:v11 sceneDelegate:v10 delegate:self];
}

- (void)present
{
  v3 = +[UIApplication sharedMapsDelegate];
  v4 = [v3 appCoordinator];
  v5 = [v4 baseActionCoordinator];
  actionCoordinator = self->_actionCoordinator;
  self->_actionCoordinator = v5;

  v7 = +[UIDevice currentDevice];
  v8 = [v7 userInterfaceIdiom];

  if (v8 == 5)
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