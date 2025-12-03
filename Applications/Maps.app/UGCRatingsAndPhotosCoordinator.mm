@interface UGCRatingsAndPhotosCoordinator
- (BOOL)isEditingSubmission;
- (UGCRatingsAndPhotosCoordinator)init;
- (id)_createPOIEnrichmentFormWithContext;
- (id)presentationControllerForPresentedViewController:(id)controller presentingViewController:(id)viewController sourceViewController:(id)sourceViewController;
- (int)_generateEntryPointForAnalytics:(int64_t)analytics;
- (void)_dismissPOIEnrichmentEditorWithCompletion:(id)completion;
- (void)_dismissPhotoPickerWithCompletion:(id)completion;
- (void)_failLookupWithError:(id)error;
- (void)_failWithAccountErrorWithPresentingViewController:(id)controller;
- (void)_handleLookupSubmissionCompletion:(id)completion lookupError:(id)error;
- (void)_presentPOIEnrichmentViewController;
- (void)_presentPhotoPickerWithMaxCount:(unint64_t)count;
- (void)_presentThirdPartyPhotoSharePromptIfNecessaryForReviewedPlace:(id)place;
- (void)_startPOIEnrichmentFlow;
- (void)_startRatingsAndPhotosFlowDependentUponReviewedPlaceLookup;
- (void)_startRatingsAndPhotosFlowRequiringInformedConsent;
- (void)_startRatingsAndPhotosFlowWithInformedConsentIfNeeded;
- (void)_startRatingsAndPhotosFlowWithSubmissionLookup;
- (void)captureAnalyticsForRatingsForm:(id)form photosForm:(id)photosForm;
- (void)poiEnrichmenEditorDidCancel:(id)cancel;
- (void)poiEnrichmentEditor:(id)editor didSelectTermsOfServiceURL:(id)l;
- (void)poiEnrichmentEditor:(id)editor finishedFillingEnrichmentForm:(id)form;
- (void)submissionCompletionWithViewController:(id)controller enrichmentForm:(id)form policy:(int64_t)policy newReviewedPlace:(id)place response:(id)response error:(id)error;
- (void)takePhotoController:(id)controller didSelectPhotosWithMetadata:(id)metadata;
- (void)takePhotoControllerDidCancel:(id)cancel;
@end

@implementation UGCRatingsAndPhotosCoordinator

- (id)presentationControllerForPresentedViewController:(id)controller presentingViewController:(id)viewController sourceViewController:(id)sourceViewController
{
  viewControllerCopy = viewController;
  controllerCopy = controller;
  v8 = [[MapsFormSheetPresentationController alloc] initWithPresentedViewController:controllerCopy presentingViewController:viewControllerCopy];

  return v8;
}

- (void)_dismissPOIEnrichmentEditorWithCompletion:(id)completion
{
  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = sub_100DD71B4;
  v23[3] = &unk_101661090;
  v23[4] = self;
  completionCopy = completion;
  v24 = completionCopy;
  v5 = objc_retainBlock(v23);
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 || [(UGCPOIEnrichmentCoordinator *)self prefersDefaultPresentationOverContainee]&& ([(UGCPOIEnrichmentCoordinator *)self presentingViewController], v6 = objc_claimAutoreleasedReturnValue(), v6, v6))
  {
    [(UGCPOIEnrichmentEditor *)self->_ratingContributionsViewController dismissViewControllerAnimated:1 completion:v5];
  }

  else
  {
    containerViewController = [(UGCPOIEnrichmentCoordinator *)self containerViewController];

    if (containerViewController)
    {
      if (MapsFeature_IsEnabled_SydneyARP() && self->_shouldShowThankYouScreen && !self->_userHasDeletedSubmission)
      {
        v9 = [UGCCommunityAcknowledgementViewController alloc];
        v10 = +[ARPAcknowledgementOptions defaultOptions];
        v17 = _NSConcreteStackBlock;
        v18 = 3221225472;
        v19 = sub_100DD7208;
        v20 = &unk_101661090;
        selfCopy = self;
        v22 = v5;
        v11 = [(UGCCommunityAcknowledgementViewController *)v9 initWithOptions:v10 completion:&v17];
        thankYouVC = self->_thankYouVC;
        self->_thankYouVC = v11;

        v13 = [UINavigationController alloc];
        v14 = [v13 initWithRootViewController:{self->_thankYouVC, v17, v18, v19, v20, selfCopy}];
        navigationItem = [(UGCCommunityAcknowledgementViewController *)self->_thankYouVC navigationItem];
        [navigationItem setHidesBackButton:1];

        presentationController = [v14 presentationController];
        [presentationController setDelegate:self];

        [(UGCPOIEnrichmentEditor *)self->_ratingContributionsViewController presentViewController:v14 animated:1 completion:0];
      }

      else
      {
        containeeDelegate = [(UGCPOIEnrichmentCoordinator *)self containeeDelegate];
        [containeeDelegate containeeViewControllerGoToPreviousState:self->_ratingContributionsViewController withSender:0];

        (v5[2])(v5);
      }
    }
  }
}

- (void)_failWithAccountErrorWithPresentingViewController:(id)controller
{
  controllerCopy = controller;
  objc_initWeak(&location, self);
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100DD7338;
  v5[3] = &unk_101661B98;
  objc_copyWeak(&v6, &location);
  [controllerCopy presentLoginFailureAlertWithCancelHandler:v5];
  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);
}

- (void)_failLookupWithError:(id)error
{
  errorCopy = error;
  objc_initWeak(&location, self);
  presentingViewController = [(UGCPOIEnrichmentCoordinator *)self presentingViewController];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100DD7468;
  v6[3] = &unk_101661B98;
  objc_copyWeak(&v7, &location);
  [presentingViewController presentLookupFailureAlertWithCancelHandler:v6];

  objc_destroyWeak(&v7);
  objc_destroyWeak(&location);
}

- (void)_dismissPhotoPickerWithCompletion:(id)completion
{
  completionCopy = completion;
  photoPicker = self->_photoPicker;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100DD7554;
  v7[3] = &unk_101661090;
  v7[4] = self;
  v8 = completionCopy;
  v6 = completionCopy;
  [(UGCAddPhotosController *)photoPicker dismissWithCompletion:v7];
}

- (void)takePhotoController:(id)controller didSelectPhotosWithMetadata:(id)metadata
{
  controllerCopy = controller;
  metadataCopy = metadata;
  [(UGCRatingsAndPhotosCoordinator *)self setInitialPhotosWithMetadata:metadataCopy];
  objc_initWeak(&location, self);
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100DD7694;
  v8[3] = &unk_101661B98;
  objc_copyWeak(&v9, &location);
  [(UGCRatingsAndPhotosCoordinator *)self _dismissPhotoPickerWithCompletion:v8];
  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

- (void)takePhotoControllerDidCancel:(id)cancel
{
  cancelCopy = cancel;
  objc_initWeak(&location, self);
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100DD77A8;
  v5[3] = &unk_101661B98;
  objc_copyWeak(&v6, &location);
  [(UGCRatingsAndPhotosCoordinator *)self _dismissPhotoPickerWithCompletion:v5];
  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);
}

- (void)poiEnrichmenEditorDidCancel:(id)cancel
{
  self->_shouldShowThankYouScreen = 0;
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_100DD7870;
  v3[3] = &unk_101661B18;
  v3[4] = self;
  [(UGCRatingsAndPhotosCoordinator *)self _dismissPOIEnrichmentEditorWithCompletion:v3];
}

- (void)_presentThirdPartyPhotoSharePromptIfNecessaryForReviewedPlace:(id)place
{
  placeCopy = place;
  if (MapsFeature_IsEnabled_SydneyARP() && [placeCopy numberOfPhotosAdded])
  {
    [UGCThirdPartyPhotoSharingSplashViewController checkShouldPresentPhotoSharingSplash:&stru_101655028];
  }
}

- (int)_generateEntryPointForAnalytics:(int64_t)analytics
{
  if (analytics == 3)
  {
    return 2;
  }

  else
  {
    return analytics == 2;
  }
}

- (void)captureAnalyticsForRatingsForm:(id)form photosForm:(id)photosForm
{
  formCopy = form;
  photosFormCopy = photosForm;
  v8 = [(UGCRatingsAndPhotosCoordinator *)self _generateEntryPointForAnalytics:[(UGCPOIEnrichmentCoordinator *)self entryPoint]];
  originTarget = [(UGCPOIEnrichmentCoordinator *)self originTarget];
  [GEOAPPortal captureUserAction:301 target:666 value:0];
  v10 = +[GEOAPSharedStateData sharedData];
  [v10 populateRatingPhotoSubmissionDetailsWithEntryPoint:v8 originTarget:originTarget];

  v51 = 0u;
  v52 = 0u;
  v49 = 0u;
  v50 = 0u;
  allRatingCategories = [formCopy allRatingCategories];
  v12 = [allRatingCategories countByEnumeratingWithState:&v49 objects:v55 count:16];
  if (v12)
  {
    v13 = *v50;
    while (2)
    {
      for (i = 0; i != v12; i = i + 1)
      {
        if (*v50 != v13)
        {
          objc_enumerationMutation(allRatingCategories);
        }

        if ([*(*(&v49 + 1) + 8 * i) isEdited])
        {
          LODWORD(v12) = 1;
          goto LABEL_11;
        }
      }

      v12 = [allRatingCategories countByEnumeratingWithState:&v49 objects:v55 count:16];
      if (v12)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  numberOfAddedPhotos = [photosFormCopy numberOfAddedPhotos];
  v16 = v12 ^ 1;
  if (!numberOfAddedPhotos)
  {
    v16 = 1;
  }

  if ((v16 & 1) == 0)
  {
    [GEOAPPortal captureUserAction:2131 target:666 value:0];
    [GEOAPPortal captureUserAction:343 target:666 value:0];
    v47 = 0u;
    v48 = 0u;
    v45 = 0u;
    v46 = 0u;
    addedPhotos = [photosFormCopy addedPhotos];
    v18 = 0;
    v19 = [addedPhotos countByEnumeratingWithState:&v45 objects:v54 count:16];
    if (v19)
    {
      v20 = *v46;
      do
      {
        for (j = 0; j != v19; j = j + 1)
        {
          if (*v46 != v20)
          {
            objc_enumerationMutation(addedPhotos);
          }

          v18 = v18 + [*(*(&v45 + 1) + 8 * j) isSuggestedPhoto];
        }

        v19 = [addedPhotos countByEnumeratingWithState:&v45 objects:v54 count:16];
      }

      while (v19);
    }

    v22 = +[GEOAPSharedStateData sharedData];
    [v22 populatePhotoSubmissionDetailsWithEntryPoint:v8 numberOfPhotos:objc_msgSend(photosFormCopy numberOfARPSuggestedPhotos:"numberOfAddedPhotos") originTarget:{v18, originTarget}];

    v41 = 0;
    v42 = &v41;
    v43 = 0x2020000000;
    v44 = 0;
    v23 = +[GEOAPSharedStateData sharedData];
    v38[0] = _NSConcreteStackBlock;
    v38[1] = 3221225472;
    v38[2] = sub_100DD8070;
    v38[3] = &unk_101654FC8;
    v40 = &v41;
    v39 = formCopy;
    [v23 populateRatingSubmissionDetailsWithEntryPoint:v8 originTarget:originTarget specifierBlock:v38];

LABEL_22:
    _Block_object_dispose(&v41, 8);
    goto LABEL_34;
  }

  if (![photosFormCopy numberOfAddedPhotos])
  {
    if (!v12)
    {
      goto LABEL_34;
    }

    [GEOAPPortal captureUserAction:343 target:666 value:0];
    v41 = 0;
    v42 = &v41;
    v43 = 0x2020000000;
    v44 = 0;
    v30 = +[GEOAPSharedStateData sharedData];
    v31[0] = _NSConcreteStackBlock;
    v31[1] = 3221225472;
    v31[2] = sub_100DD81B0;
    v31[3] = &unk_101654FC8;
    v33 = &v41;
    v32 = formCopy;
    [v30 populateRatingSubmissionDetailsWithEntryPoint:v8 originTarget:originTarget specifierBlock:v31];

    goto LABEL_22;
  }

  [GEOAPPortal captureUserAction:2131 target:666 value:0];
  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  addedPhotos2 = [photosFormCopy addedPhotos];
  v25 = 0;
  v26 = [addedPhotos2 countByEnumeratingWithState:&v34 objects:v53 count:16];
  if (v26)
  {
    v27 = *v35;
    do
    {
      for (k = 0; k != v26; k = k + 1)
      {
        if (*v35 != v27)
        {
          objc_enumerationMutation(addedPhotos2);
        }

        v25 = v25 + [*(*(&v34 + 1) + 8 * k) isSuggestedPhoto];
      }

      v26 = [addedPhotos2 countByEnumeratingWithState:&v34 objects:v53 count:16];
    }

    while (v26);
  }

  v29 = +[GEOAPSharedStateData sharedData];
  [v29 populatePhotoSubmissionDetailsWithEntryPoint:v8 numberOfPhotos:objc_msgSend(photosFormCopy numberOfARPSuggestedPhotos:"numberOfAddedPhotos") originTarget:{v25, originTarget}];

LABEL_34:
}

- (void)poiEnrichmentEditor:(id)editor didSelectTermsOfServiceURL:(id)l
{
  lCopy = l;
  delegate = [(UGCPOIEnrichmentCoordinator *)self delegate];
  [delegate poiEnrichmentCoordinator:self openURL:lCopy];
}

- (void)submissionCompletionWithViewController:(id)controller enrichmentForm:(id)form policy:(int64_t)policy newReviewedPlace:(id)place response:(id)response error:(id)error
{
  controllerCopy = controller;
  formCopy = form;
  placeCopy = place;
  responseCopy = response;
  errorCopy = error;
  [controllerCopy submissionFinishedWithError:errorCopy];
  ratingsForm = [formCopy ratingsForm];
  photosForm = [formCopy photosForm];
  [(UGCRatingsAndPhotosCoordinator *)self captureAnalyticsForRatingsForm:ratingsForm photosForm:photosForm];

  if (!errorCopy && ![responseCopy status])
  {
    if (!policy)
    {
      [(UGCPOIEnrichmentCoordinator *)self invokeSubmissionUpdate];
    }

    v21 = MapsSuggestionsEngineForMapsProcess();
    [v21 hintRefreshOfType:21];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      if (self->_userHasDeletedSubmission)
      {
        v36[0] = _NSConcreteStackBlock;
        v36[1] = 3221225472;
        v36[2] = sub_100DD86F4;
        v36[3] = &unk_101661A90;
        v36[4] = self;
        v37 = placeCopy;
        [controllerCopy dismissViewControllerAnimated:1 completion:v36];

        goto LABEL_4;
      }

      objc_initWeak(&location, self);
      v22 = [UGCCommunityAcknowledgementViewController alloc];
      v23 = +[ARPAcknowledgementOptions defaultOptions];
      v31[0] = _NSConcreteStackBlock;
      v31[1] = 3221225472;
      v31[2] = sub_100DD8758;
      v31[3] = &unk_101661480;
      v24 = controllerCopy;
      v32 = v24;
      objc_copyWeak(&v34, &location);
      v33 = placeCopy;
      v25 = [(UGCCommunityAcknowledgementViewController *)v22 initWithOptions:v23 completion:v31];
      thankYouVC = self->_thankYouVC;
      self->_thankYouVC = v25;

      navigationItem = [(UGCCommunityAcknowledgementViewController *)self->_thankYouVC navigationItem];
      [navigationItem setHidesBackButton:1];

      [v24 presentViewController:self->_thankYouVC animated:1 completion:0];
      objc_destroyWeak(&v34);
    }

    else
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        goto LABEL_4;
      }

      objc_initWeak(&location, self);
      v28[0] = _NSConcreteStackBlock;
      v28[1] = 3221225472;
      v28[2] = sub_100DD881C;
      v28[3] = &unk_101661340;
      objc_copyWeak(&v30, &location);
      v29 = placeCopy;
      [(UGCRatingsAndPhotosCoordinator *)self _dismissPOIEnrichmentEditorWithCompletion:v28];

      objc_destroyWeak(&v30);
    }

    objc_destroyWeak(&location);
    goto LABEL_4;
  }

  [(UGCRatingsAndPhotosCoordinator *)self _presentFailedToSubmitAlertForResponse:responseCopy withPresentingViewController:controllerCopy];
LABEL_4:
}

- (void)poiEnrichmentEditor:(id)editor finishedFillingEnrichmentForm:(id)form
{
  editorCopy = editor;
  formCopy = form;
  v8 = +[UIApplication sharedMapsDelegate];
  submissionManager = [v8 submissionManager];

  v10 = [_TtC4Maps9UGCReport alloc];
  mapItem = [(UGCPOIEnrichmentCoordinator *)self mapItem];
  v12 = [(UGCReport *)v10 initWithReportType:0 initialForm:formCopy mapItem:mapItem submitter:submissionManager];

  newReviewedPlace = [(UGCReport *)v12 newReviewedPlace];
  self->_userHasDeletedSubmission = [(UGCReviewedPlace *)newReviewedPlace isDeleted];
  IsEnabled_SydneyARP = MapsFeature_IsEnabled_SydneyARP();
  if (MapsFeature_IsEnabled_ARPCommunityID())
  {
    existingSubmission = [(UGCRatingsAndPhotosCoordinator *)self existingSubmission];
    -[UGCReport setShouldMigrateRatingsWithICloud:](v12, "setShouldMigrateRatingsWithICloud:", [existingSubmission hasRatingsWithICloud]);

    objc_initWeak(&location, self);
    v31[0] = _NSConcreteStackBlock;
    v31[1] = 3221225472;
    v31[2] = sub_100DD8C50;
    v31[3] = &unk_101654F78;
    v16 = editorCopy;
    v32 = v16;
    v26[0] = _NSConcreteStackBlock;
    v26[1] = 3221225472;
    v26[2] = sub_100DD8C5C;
    v26[3] = &unk_101654FA0;
    objc_copyWeak(v30, &location);
    v27 = v16;
    v28 = formCopy;
    v30[1] = IsEnabled_SydneyARP;
    v29 = newReviewedPlace;
    [(UGCReport *)v12 submitRatingsAndPhotosWithUploadPolicy:IsEnabled_SydneyARP progressBlock:v31 completion:v26];

    objc_destroyWeak(v30);
    v17 = v32;
  }

  else
  {
    objc_initWeak(&location, self);
    v24[0] = _NSConcreteStackBlock;
    v24[1] = 3221225472;
    v24[2] = sub_100DD8CE8;
    v24[3] = &unk_101654F78;
    v18 = editorCopy;
    v25 = v18;
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_100DD8CF4;
    v19[3] = &unk_101654FA0;
    objc_copyWeak(v23, &location);
    v20 = v18;
    v21 = formCopy;
    v23[1] = IsEnabled_SydneyARP;
    v22 = newReviewedPlace;
    [(UGCReport *)v12 submitRatingsAndPhotosSimultaneouslyUsingDSIDWithUploadPolicy:IsEnabled_SydneyARP progressBlock:v24 completion:v19];

    objc_destroyWeak(v23);
    v17 = v25;
  }

  objc_destroyWeak(&location);
}

- (BOOL)isEditingSubmission
{
  existingSubmission = [(UGCRatingsAndPhotosCoordinator *)self existingSubmission];
  v3 = existingSubmission != 0;

  return v3;
}

- (id)_createPOIEnrichmentFormWithContext
{
  mapItem = [(UGCPOIEnrichmentCoordinator *)self mapItem];
  _geoMapItem = [mapItem _geoMapItem];
  _placeQuestionnaire = [_geoMapItem _placeQuestionnaire];

  existingSubmission = [(UGCRatingsAndPhotosCoordinator *)self existingSubmission];
  parentSubmissionIdentifier = [existingSubmission parentSubmissionIdentifier];

  existingSubmission2 = [(UGCRatingsAndPhotosCoordinator *)self existingSubmission];
  previousSubmission = [existingSubmission2 previousSubmission];

  if ([(UGCRatingsAndPhotosCoordinator *)self isEditingSubmission])
  {
    scorecard = [previousSubmission scorecard];
    v11 = [UGCRatingsForm editRatingFormWithPlaceQuestionnaire:_placeQuestionnaire existingScorecard:scorecard];

    existingSubmission3 = [(UGCRatingsAndPhotosCoordinator *)self existingSubmission];
    ratingsSubmissionIdentifier = [existingSubmission3 ratingsSubmissionIdentifier];
    [v11 setParentSubmissionIdentifier:ratingsSubmissionIdentifier];

    images = [previousSubmission images];
    v15 = [UGCPhotosForm editPhotosFormWithPlaceQuestionnaire:_placeQuestionnaire previouslySubmittedImages:images];

    existingSubmission4 = [(UGCRatingsAndPhotosCoordinator *)self existingSubmission];
    photosSubmissionIdentifier = [existingSubmission4 photosSubmissionIdentifier];
    [v15 setParentSubmissionIdentifier:photosSubmissionIdentifier];

    mapItem2 = [(UGCPOIEnrichmentCoordinator *)self mapItem];
    [UGCPOIEnrichmentForm editPOIEnrichmentFormWithMapItem:mapItem2 parentSubmissionIdentifier:parentSubmissionIdentifier photosForm:v15 ratingsForm:v11];
  }

  else
  {
    v11 = [UGCRatingsForm addRatingFormWithPlaceQuestionnaire:_placeQuestionnaire];
    initialOverallState = [(UGCRatingsAndPhotosCoordinator *)self initialOverallState];
    overallCategory = [v11 overallCategory];
    [overallCategory setCurrentState:initialOverallState];

    v15 = [UGCPhotosForm addPhotosFormWithPlaceQuestionnaire:_placeQuestionnaire photosWithMetadata:&__NSArray0__struct];
    mapItem2 = [(UGCPOIEnrichmentCoordinator *)self mapItem];
    [UGCPOIEnrichmentForm addPOIEnrichmentFormWithMapItem:mapItem2 photosForm:v15 ratingsForm:v11];
  }
  v21 = ;

  if ([(UGCRatingsAndPhotosCoordinator *)self initialOverallState])
  {
    initialOverallState2 = [(UGCRatingsAndPhotosCoordinator *)self initialOverallState];
    overallCategory2 = [v11 overallCategory];
    [overallCategory2 setCurrentState:initialOverallState2];
  }

  [v15 addPhotoListWithMetadata:self->_initialPhotosWithMetadata];

  return v21;
}

- (void)_presentPOIEnrichmentViewController
{
  _createPOIEnrichmentFormWithContext = [(UGCRatingsAndPhotosCoordinator *)self _createPOIEnrichmentFormWithContext];
  v3 = +[UIDevice currentDevice];
  userInterfaceIdiom = [v3 userInterfaceIdiom];

  if (userInterfaceIdiom == 5)
  {
    v5 = [[MacUGCPOIEnrichmentEditorViewController alloc] initWithPOIEnrichmentForm:_createPOIEnrichmentFormWithContext delegate:self presentationContext:[(UGCPOIEnrichmentCoordinator *)self presentationContext]];
    [(MacUGCPOIEnrichmentEditorViewController *)v5 setModalInPresentation:1];
    [(MacUGCPOIEnrichmentEditorViewController *)v5 setModalPresentationStyle:2];
    [(MacUGCPOIEnrichmentEditorViewController *)v5 setSuppressRatings:[(UGCRatingsAndPhotosCoordinator *)self suppressRatings]];
    ratingContributionsViewController = self->_ratingContributionsViewController;
    self->_ratingContributionsViewController = v5;
    containerViewController2 = v5;

    presentingViewController = [(UGCPOIEnrichmentCoordinator *)self presentingViewController];
    v9 = presentingViewController;
    v10 = containerViewController2;
LABEL_6:
    [(UGCPOIEnrichmentContaineeViewController *)presentingViewController presentViewController:v10 animated:1 completion:0];
    goto LABEL_9;
  }

  v9 = [[UGCPOIEnrichmentContaineeViewController alloc] initWithPOIEnrichmentForm:_createPOIEnrichmentFormWithContext delegate:self presentationContext:[(UGCPOIEnrichmentCoordinator *)self presentationContext]];
  objc_storeStrong(&self->_ratingContributionsViewController, v9);
  [(UGCPOIEnrichmentContaineeViewController *)v9 setSuppressRatings:[(UGCRatingsAndPhotosCoordinator *)self suppressRatings]];
  if ([(UGCPOIEnrichmentCoordinator *)self prefersDefaultPresentationOverContainee])
  {
    presentingViewController2 = [(UGCPOIEnrichmentCoordinator *)self presentingViewController];

    if (presentingViewController2)
    {
      [(UGCPOIEnrichmentContaineeViewController *)v9 setShowCardBackground:1];
      [(UGCPOIEnrichmentContaineeViewController *)v9 setTransitioningDelegate:self];
      [(UGCPOIEnrichmentContaineeViewController *)v9 setModalPresentationStyle:4];
      [(UGCPOIEnrichmentContaineeViewController *)v9 setModalInPresentation:1];
      presentingViewController = [(UGCPOIEnrichmentCoordinator *)self presentingViewController];
      containerViewController2 = presentingViewController;
      v10 = v9;
      goto LABEL_6;
    }
  }

  containerViewController = [(UGCPOIEnrichmentCoordinator *)self containerViewController];

  if (!containerViewController)
  {
    goto LABEL_10;
  }

  containerViewController2 = [(UGCPOIEnrichmentCoordinator *)self containerViewController];
  [(MacUGCPOIEnrichmentEditorViewController *)containerViewController2 presentController:v9 animated:1];
LABEL_9:

LABEL_10:
  [(UGCPOIEnrichmentEditor *)self->_ratingContributionsViewController setAccessibilityIdentifier:@"RatingsAndPhotosView"];
}

- (void)_presentPhotoPickerWithMaxCount:(unint64_t)count
{
  if (self->_photoPicker)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_FAULT))
    {
      *v14 = 0;
      _os_log_fault_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_FAULT, "Assertion failed: _photoPicker == ((void *)0)", v14, 2u);
    }
  }

  else
  {
    v5 = [UGCAddPhotosController alloc];
    presentingViewController = [(UGCPOIEnrichmentCoordinator *)self presentingViewController];
    preferredSourceType = [(UGCRatingsAndPhotosCoordinator *)self preferredSourceType];
    mapItem = [(UGCPOIEnrichmentCoordinator *)self mapItem];
    _geoMapItem = [mapItem _geoMapItem];
    _placeQuestionnaire = [_geoMapItem _placeQuestionnaire];
    v11 = [(UGCAddPhotosController *)v5 initWithPresentingViewController:presentingViewController sourceType:preferredSourceType multipleSelectionLimit:count placeQuestionnaire:_placeQuestionnaire delegate:self];
    photoPicker = self->_photoPicker;
    self->_photoPicker = v11;

    v13 = self->_photoPicker;

    [(UGCAddPhotosController *)v13 present];
  }
}

- (void)_handleLookupSubmissionCompletion:(id)completion lookupError:(id)error
{
  completionCopy = completion;
  errorCopy = error;
  submissionLookupObserver = [(UGCPOIEnrichmentCoordinator *)self submissionLookupObserver];
  [submissionLookupObserver endAnimatingActivityIndicatorWithError:errorCopy];

  if (errorCopy)
  {
    submissionStatusDelegate = [(UGCPOIEnrichmentCoordinator *)self submissionStatusDelegate];
    v9 = objc_opt_respondsToSelector();

    if (v9)
    {
      submissionStatusDelegate2 = [(UGCPOIEnrichmentCoordinator *)self submissionStatusDelegate];
      [submissionStatusDelegate2 poiEnrichmentCoordinator:self didFinishSubmissionLookup:completionCopy];
    }

    [(UGCRatingsAndPhotosCoordinator *)self _failLookupWithError:errorCopy];
  }

  else
  {
    [(UGCRatingsAndPhotosCoordinator *)self setExistingSubmission:completionCopy];
    submissionStatusDelegate3 = [(UGCPOIEnrichmentCoordinator *)self submissionStatusDelegate];
    v12 = objc_opt_respondsToSelector();

    if (v12)
    {
      submissionStatusDelegate4 = [(UGCPOIEnrichmentCoordinator *)self submissionStatusDelegate];
      [submissionStatusDelegate4 poiEnrichmentCoordinator:self didFinishSubmissionLookup:completionCopy];
    }

    [(UGCRatingsAndPhotosCoordinator *)self _startPOIEnrichmentFlow];
  }
}

- (void)_startRatingsAndPhotosFlowWithSubmissionLookup
{
  mapItem = [(UGCPOIEnrichmentCoordinator *)self mapItem];
  _muid = [mapItem _muid];

  v5 = objc_alloc_init(_TtC4Maps26UGCSubmissionLookupManager);
  lookupManager = self->_lookupManager;
  self->_lookupManager = v5;

  if (MapsFeature_IsEnabled_ARPCommunityID())
  {
    objc_initWeak(&location, self);
    v7 = self->_lookupManager;
    mapItem2 = [(UGCPOIEnrichmentCoordinator *)self mapItem];
    _geoMapItem = [mapItem2 _geoMapItem];
    _identifierHistory = [_geoMapItem _identifierHistory];
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_100DD96FC;
    v15[3] = &unk_101654F50;
    objc_copyWeak(&v16, &location);
    [(UGCSubmissionLookupManager *)v7 fetchSubmissionWithCommunityIDAndICloudIDFor:_muid identifierHistory:_identifierHistory completion:v15];

    v11 = &v16;
  }

  else
  {
    objc_initWeak(&location, self);
    v12 = self->_lookupManager;
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_100DD9774;
    v13[3] = &unk_101654F50;
    objc_copyWeak(&v14, &location);
    [(UGCSubmissionLookupManager *)v12 fetchSubmissionWithICloudIDFor:_muid completion:v13];
    v11 = &v14;
  }

  objc_destroyWeak(v11);
  objc_destroyWeak(&location);
}

- (void)_startPOIEnrichmentFlow
{
  if (MapsFeature_IsEnabled_SydneyARP())
  {
    mapItem = [(UGCPOIEnrichmentCoordinator *)self mapItem];
    _geoMapItem = [mapItem _geoMapItem];
    _placeQuestionnaire = [_geoMapItem _placeQuestionnaire];
    UInteger = [_placeQuestionnaire maximumNumberOfPhotos];
  }

  else
  {
    UInteger = GEOConfigGetUInteger();
  }

  previousSubmission = [(UGCSubmissionLookupResult *)self->_existingSubmission previousSubmission];
  images = [previousSubmission images];
  v9 = [images count];
  mapItem2 = [(UGCPOIEnrichmentCoordinator *)self mapItem];
  _geoMapItem2 = [mapItem2 _geoMapItem];
  _placeQuestionnaire2 = [_geoMapItem2 _placeQuestionnaire];
  if (v9 >= [_placeQuestionnaire2 maximumNumberOfPhotos])
  {
    UInteger = 0;
  }

  if ([(UGCRatingsAndPhotosCoordinator *)self hasPhotoPickerEmphasis]&& UInteger)
  {

    [(UGCRatingsAndPhotosCoordinator *)self _presentPhotoPickerWithMaxCount:UInteger];
  }

  else
  {

    [(UGCRatingsAndPhotosCoordinator *)self _presentPOIEnrichmentViewController];
  }
}

- (void)_startRatingsAndPhotosFlowDependentUponReviewedPlaceLookup
{
  objc_initWeak(&location, self);
  mapItem = [(UGCPOIEnrichmentCoordinator *)self mapItem];
  _muid = [mapItem _muid];
  mapItem2 = [(UGCPOIEnrichmentCoordinator *)self mapItem];
  _geoMapItem = [mapItem2 _geoMapItem];
  _identifierHistory = [_geoMapItem _identifierHistory];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100DD9A84;
  v8[3] = &unk_101654F28;
  objc_copyWeak(&v9, &location);
  [UGCReviewedPlaceManager fetchReviewedPlaceForMUID:_muid withIdentifierHistory:_identifierHistory completion:v8];

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

- (void)_startRatingsAndPhotosFlowRequiringInformedConsent
{
  objc_initWeak(&location, self);
  presentingViewController = [(UGCPOIEnrichmentCoordinator *)self presentingViewController];
  presentationContext = [(UGCPOIEnrichmentCoordinator *)self presentationContext];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100DD9BE4;
  v5[3] = &unk_101654F00;
  objc_copyWeak(&v6, &location);
  [UGCInformedConsentViewController presentIfNeededWithPresentingViewController:presentingViewController presentationContext:presentationContext completion:v5];

  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);
}

- (void)_startRatingsAndPhotosFlowWithInformedConsentIfNeeded
{
  if (MapsFeature_IsEnabled_ARPCommunityID() && GEOConfigGetBOOL() && ![(UGCRatingsAndPhotosCoordinator *)self hasPhotoPickerEmphasis]&& ![(UGCPOIEnrichmentCoordinator *)self entryPointRequiresARPPrivacyScreenIfNeeded])
  {

    [(UGCRatingsAndPhotosCoordinator *)self _startRatingsAndPhotosFlowDependentUponReviewedPlaceLookup];
  }

  else
  {

    [(UGCRatingsAndPhotosCoordinator *)self _startRatingsAndPhotosFlowRequiringInformedConsent];
  }
}

- (UGCRatingsAndPhotosCoordinator)init
{
  v3.receiver = self;
  v3.super_class = UGCRatingsAndPhotosCoordinator;
  result = [(UGCPOIEnrichmentCoordinator *)&v3 init];
  if (result)
  {
    result->_shouldShowThankYouScreen = 1;
  }

  return result;
}

@end