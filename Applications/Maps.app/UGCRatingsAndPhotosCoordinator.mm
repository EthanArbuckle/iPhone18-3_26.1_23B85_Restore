@interface UGCRatingsAndPhotosCoordinator
- (BOOL)isEditingSubmission;
- (UGCRatingsAndPhotosCoordinator)init;
- (id)_createPOIEnrichmentFormWithContext;
- (id)presentationControllerForPresentedViewController:(id)a3 presentingViewController:(id)a4 sourceViewController:(id)a5;
- (int)_generateEntryPointForAnalytics:(int64_t)a3;
- (void)_dismissPOIEnrichmentEditorWithCompletion:(id)a3;
- (void)_dismissPhotoPickerWithCompletion:(id)a3;
- (void)_failLookupWithError:(id)a3;
- (void)_failWithAccountErrorWithPresentingViewController:(id)a3;
- (void)_handleLookupSubmissionCompletion:(id)a3 lookupError:(id)a4;
- (void)_presentPOIEnrichmentViewController;
- (void)_presentPhotoPickerWithMaxCount:(unint64_t)a3;
- (void)_presentThirdPartyPhotoSharePromptIfNecessaryForReviewedPlace:(id)a3;
- (void)_startPOIEnrichmentFlow;
- (void)_startRatingsAndPhotosFlowDependentUponReviewedPlaceLookup;
- (void)_startRatingsAndPhotosFlowRequiringInformedConsent;
- (void)_startRatingsAndPhotosFlowWithInformedConsentIfNeeded;
- (void)_startRatingsAndPhotosFlowWithSubmissionLookup;
- (void)captureAnalyticsForRatingsForm:(id)a3 photosForm:(id)a4;
- (void)poiEnrichmenEditorDidCancel:(id)a3;
- (void)poiEnrichmentEditor:(id)a3 didSelectTermsOfServiceURL:(id)a4;
- (void)poiEnrichmentEditor:(id)a3 finishedFillingEnrichmentForm:(id)a4;
- (void)submissionCompletionWithViewController:(id)a3 enrichmentForm:(id)a4 policy:(int64_t)a5 newReviewedPlace:(id)a6 response:(id)a7 error:(id)a8;
- (void)takePhotoController:(id)a3 didSelectPhotosWithMetadata:(id)a4;
- (void)takePhotoControllerDidCancel:(id)a3;
@end

@implementation UGCRatingsAndPhotosCoordinator

- (id)presentationControllerForPresentedViewController:(id)a3 presentingViewController:(id)a4 sourceViewController:(id)a5
{
  v6 = a4;
  v7 = a3;
  v8 = [[MapsFormSheetPresentationController alloc] initWithPresentedViewController:v7 presentingViewController:v6];

  return v8;
}

- (void)_dismissPOIEnrichmentEditorWithCompletion:(id)a3
{
  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = sub_100DD71B4;
  v23[3] = &unk_101661090;
  v23[4] = self;
  v4 = a3;
  v24 = v4;
  v5 = objc_retainBlock(v23);
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 || [(UGCPOIEnrichmentCoordinator *)self prefersDefaultPresentationOverContainee]&& ([(UGCPOIEnrichmentCoordinator *)self presentingViewController], v6 = objc_claimAutoreleasedReturnValue(), v6, v6))
  {
    [(UGCPOIEnrichmentEditor *)self->_ratingContributionsViewController dismissViewControllerAnimated:1 completion:v5];
  }

  else
  {
    v7 = [(UGCPOIEnrichmentCoordinator *)self containerViewController];

    if (v7)
    {
      if (MapsFeature_IsEnabled_SydneyARP() && self->_shouldShowThankYouScreen && !self->_userHasDeletedSubmission)
      {
        v9 = [UGCCommunityAcknowledgementViewController alloc];
        v10 = +[ARPAcknowledgementOptions defaultOptions];
        v17 = _NSConcreteStackBlock;
        v18 = 3221225472;
        v19 = sub_100DD7208;
        v20 = &unk_101661090;
        v21 = self;
        v22 = v5;
        v11 = [(UGCCommunityAcknowledgementViewController *)v9 initWithOptions:v10 completion:&v17];
        thankYouVC = self->_thankYouVC;
        self->_thankYouVC = v11;

        v13 = [UINavigationController alloc];
        v14 = [v13 initWithRootViewController:{self->_thankYouVC, v17, v18, v19, v20, v21}];
        v15 = [(UGCCommunityAcknowledgementViewController *)self->_thankYouVC navigationItem];
        [v15 setHidesBackButton:1];

        v16 = [v14 presentationController];
        [v16 setDelegate:self];

        [(UGCPOIEnrichmentEditor *)self->_ratingContributionsViewController presentViewController:v14 animated:1 completion:0];
      }

      else
      {
        v8 = [(UGCPOIEnrichmentCoordinator *)self containeeDelegate];
        [v8 containeeViewControllerGoToPreviousState:self->_ratingContributionsViewController withSender:0];

        (v5[2])(v5);
      }
    }
  }
}

- (void)_failWithAccountErrorWithPresentingViewController:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100DD7338;
  v5[3] = &unk_101661B98;
  objc_copyWeak(&v6, &location);
  [v4 presentLoginFailureAlertWithCancelHandler:v5];
  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);
}

- (void)_failLookupWithError:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  v5 = [(UGCPOIEnrichmentCoordinator *)self presentingViewController];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100DD7468;
  v6[3] = &unk_101661B98;
  objc_copyWeak(&v7, &location);
  [v5 presentLookupFailureAlertWithCancelHandler:v6];

  objc_destroyWeak(&v7);
  objc_destroyWeak(&location);
}

- (void)_dismissPhotoPickerWithCompletion:(id)a3
{
  v4 = a3;
  photoPicker = self->_photoPicker;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100DD7554;
  v7[3] = &unk_101661090;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  [(UGCAddPhotosController *)photoPicker dismissWithCompletion:v7];
}

- (void)takePhotoController:(id)a3 didSelectPhotosWithMetadata:(id)a4
{
  v6 = a3;
  v7 = a4;
  [(UGCRatingsAndPhotosCoordinator *)self setInitialPhotosWithMetadata:v7];
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

- (void)takePhotoControllerDidCancel:(id)a3
{
  v4 = a3;
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

- (void)poiEnrichmenEditorDidCancel:(id)a3
{
  self->_shouldShowThankYouScreen = 0;
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_100DD7870;
  v3[3] = &unk_101661B18;
  v3[4] = self;
  [(UGCRatingsAndPhotosCoordinator *)self _dismissPOIEnrichmentEditorWithCompletion:v3];
}

- (void)_presentThirdPartyPhotoSharePromptIfNecessaryForReviewedPlace:(id)a3
{
  v3 = a3;
  if (MapsFeature_IsEnabled_SydneyARP() && [v3 numberOfPhotosAdded])
  {
    [UGCThirdPartyPhotoSharingSplashViewController checkShouldPresentPhotoSharingSplash:&stru_101655028];
  }
}

- (int)_generateEntryPointForAnalytics:(int64_t)a3
{
  if (a3 == 3)
  {
    return 2;
  }

  else
  {
    return a3 == 2;
  }
}

- (void)captureAnalyticsForRatingsForm:(id)a3 photosForm:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(UGCRatingsAndPhotosCoordinator *)self _generateEntryPointForAnalytics:[(UGCPOIEnrichmentCoordinator *)self entryPoint]];
  v9 = [(UGCPOIEnrichmentCoordinator *)self originTarget];
  [GEOAPPortal captureUserAction:301 target:666 value:0];
  v10 = +[GEOAPSharedStateData sharedData];
  [v10 populateRatingPhotoSubmissionDetailsWithEntryPoint:v8 originTarget:v9];

  v51 = 0u;
  v52 = 0u;
  v49 = 0u;
  v50 = 0u;
  v11 = [v6 allRatingCategories];
  v12 = [v11 countByEnumeratingWithState:&v49 objects:v55 count:16];
  if (v12)
  {
    v13 = *v50;
    while (2)
    {
      for (i = 0; i != v12; i = i + 1)
      {
        if (*v50 != v13)
        {
          objc_enumerationMutation(v11);
        }

        if ([*(*(&v49 + 1) + 8 * i) isEdited])
        {
          LODWORD(v12) = 1;
          goto LABEL_11;
        }
      }

      v12 = [v11 countByEnumeratingWithState:&v49 objects:v55 count:16];
      if (v12)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v15 = [v7 numberOfAddedPhotos];
  v16 = v12 ^ 1;
  if (!v15)
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
    v17 = [v7 addedPhotos];
    v18 = 0;
    v19 = [v17 countByEnumeratingWithState:&v45 objects:v54 count:16];
    if (v19)
    {
      v20 = *v46;
      do
      {
        for (j = 0; j != v19; j = j + 1)
        {
          if (*v46 != v20)
          {
            objc_enumerationMutation(v17);
          }

          v18 = v18 + [*(*(&v45 + 1) + 8 * j) isSuggestedPhoto];
        }

        v19 = [v17 countByEnumeratingWithState:&v45 objects:v54 count:16];
      }

      while (v19);
    }

    v22 = +[GEOAPSharedStateData sharedData];
    [v22 populatePhotoSubmissionDetailsWithEntryPoint:v8 numberOfPhotos:objc_msgSend(v7 numberOfARPSuggestedPhotos:"numberOfAddedPhotos") originTarget:{v18, v9}];

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
    v39 = v6;
    [v23 populateRatingSubmissionDetailsWithEntryPoint:v8 originTarget:v9 specifierBlock:v38];

LABEL_22:
    _Block_object_dispose(&v41, 8);
    goto LABEL_34;
  }

  if (![v7 numberOfAddedPhotos])
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
    v32 = v6;
    [v30 populateRatingSubmissionDetailsWithEntryPoint:v8 originTarget:v9 specifierBlock:v31];

    goto LABEL_22;
  }

  [GEOAPPortal captureUserAction:2131 target:666 value:0];
  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v24 = [v7 addedPhotos];
  v25 = 0;
  v26 = [v24 countByEnumeratingWithState:&v34 objects:v53 count:16];
  if (v26)
  {
    v27 = *v35;
    do
    {
      for (k = 0; k != v26; k = k + 1)
      {
        if (*v35 != v27)
        {
          objc_enumerationMutation(v24);
        }

        v25 = v25 + [*(*(&v34 + 1) + 8 * k) isSuggestedPhoto];
      }

      v26 = [v24 countByEnumeratingWithState:&v34 objects:v53 count:16];
    }

    while (v26);
  }

  v29 = +[GEOAPSharedStateData sharedData];
  [v29 populatePhotoSubmissionDetailsWithEntryPoint:v8 numberOfPhotos:objc_msgSend(v7 numberOfARPSuggestedPhotos:"numberOfAddedPhotos") originTarget:{v25, v9}];

LABEL_34:
}

- (void)poiEnrichmentEditor:(id)a3 didSelectTermsOfServiceURL:(id)a4
{
  v5 = a4;
  v6 = [(UGCPOIEnrichmentCoordinator *)self delegate];
  [v6 poiEnrichmentCoordinator:self openURL:v5];
}

- (void)submissionCompletionWithViewController:(id)a3 enrichmentForm:(id)a4 policy:(int64_t)a5 newReviewedPlace:(id)a6 response:(id)a7 error:(id)a8
{
  v14 = a3;
  v15 = a4;
  v16 = a6;
  v17 = a7;
  v18 = a8;
  [v14 submissionFinishedWithError:v18];
  v19 = [v15 ratingsForm];
  v20 = [v15 photosForm];
  [(UGCRatingsAndPhotosCoordinator *)self captureAnalyticsForRatingsForm:v19 photosForm:v20];

  if (!v18 && ![v17 status])
  {
    if (!a5)
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
        v37 = v16;
        [v14 dismissViewControllerAnimated:1 completion:v36];

        goto LABEL_4;
      }

      objc_initWeak(&location, self);
      v22 = [UGCCommunityAcknowledgementViewController alloc];
      v23 = +[ARPAcknowledgementOptions defaultOptions];
      v31[0] = _NSConcreteStackBlock;
      v31[1] = 3221225472;
      v31[2] = sub_100DD8758;
      v31[3] = &unk_101661480;
      v24 = v14;
      v32 = v24;
      objc_copyWeak(&v34, &location);
      v33 = v16;
      v25 = [(UGCCommunityAcknowledgementViewController *)v22 initWithOptions:v23 completion:v31];
      thankYouVC = self->_thankYouVC;
      self->_thankYouVC = v25;

      v27 = [(UGCCommunityAcknowledgementViewController *)self->_thankYouVC navigationItem];
      [v27 setHidesBackButton:1];

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
      v29 = v16;
      [(UGCRatingsAndPhotosCoordinator *)self _dismissPOIEnrichmentEditorWithCompletion:v28];

      objc_destroyWeak(&v30);
    }

    objc_destroyWeak(&location);
    goto LABEL_4;
  }

  [(UGCRatingsAndPhotosCoordinator *)self _presentFailedToSubmitAlertForResponse:v17 withPresentingViewController:v14];
LABEL_4:
}

- (void)poiEnrichmentEditor:(id)a3 finishedFillingEnrichmentForm:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = +[UIApplication sharedMapsDelegate];
  v9 = [v8 submissionManager];

  v10 = [_TtC4Maps9UGCReport alloc];
  v11 = [(UGCPOIEnrichmentCoordinator *)self mapItem];
  v12 = [(UGCReport *)v10 initWithReportType:0 initialForm:v7 mapItem:v11 submitter:v9];

  v13 = [(UGCReport *)v12 newReviewedPlace];
  self->_userHasDeletedSubmission = [(UGCReviewedPlace *)v13 isDeleted];
  IsEnabled_SydneyARP = MapsFeature_IsEnabled_SydneyARP();
  if (MapsFeature_IsEnabled_ARPCommunityID())
  {
    v15 = [(UGCRatingsAndPhotosCoordinator *)self existingSubmission];
    -[UGCReport setShouldMigrateRatingsWithICloud:](v12, "setShouldMigrateRatingsWithICloud:", [v15 hasRatingsWithICloud]);

    objc_initWeak(&location, self);
    v31[0] = _NSConcreteStackBlock;
    v31[1] = 3221225472;
    v31[2] = sub_100DD8C50;
    v31[3] = &unk_101654F78;
    v16 = v6;
    v32 = v16;
    v26[0] = _NSConcreteStackBlock;
    v26[1] = 3221225472;
    v26[2] = sub_100DD8C5C;
    v26[3] = &unk_101654FA0;
    objc_copyWeak(v30, &location);
    v27 = v16;
    v28 = v7;
    v30[1] = IsEnabled_SydneyARP;
    v29 = v13;
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
    v18 = v6;
    v25 = v18;
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_100DD8CF4;
    v19[3] = &unk_101654FA0;
    objc_copyWeak(v23, &location);
    v20 = v18;
    v21 = v7;
    v23[1] = IsEnabled_SydneyARP;
    v22 = v13;
    [(UGCReport *)v12 submitRatingsAndPhotosSimultaneouslyUsingDSIDWithUploadPolicy:IsEnabled_SydneyARP progressBlock:v24 completion:v19];

    objc_destroyWeak(v23);
    v17 = v25;
  }

  objc_destroyWeak(&location);
}

- (BOOL)isEditingSubmission
{
  v2 = [(UGCRatingsAndPhotosCoordinator *)self existingSubmission];
  v3 = v2 != 0;

  return v3;
}

- (id)_createPOIEnrichmentFormWithContext
{
  v3 = [(UGCPOIEnrichmentCoordinator *)self mapItem];
  v4 = [v3 _geoMapItem];
  v5 = [v4 _placeQuestionnaire];

  v6 = [(UGCRatingsAndPhotosCoordinator *)self existingSubmission];
  v7 = [v6 parentSubmissionIdentifier];

  v8 = [(UGCRatingsAndPhotosCoordinator *)self existingSubmission];
  v9 = [v8 previousSubmission];

  if ([(UGCRatingsAndPhotosCoordinator *)self isEditingSubmission])
  {
    v10 = [v9 scorecard];
    v11 = [UGCRatingsForm editRatingFormWithPlaceQuestionnaire:v5 existingScorecard:v10];

    v12 = [(UGCRatingsAndPhotosCoordinator *)self existingSubmission];
    v13 = [v12 ratingsSubmissionIdentifier];
    [v11 setParentSubmissionIdentifier:v13];

    v14 = [v9 images];
    v15 = [UGCPhotosForm editPhotosFormWithPlaceQuestionnaire:v5 previouslySubmittedImages:v14];

    v16 = [(UGCRatingsAndPhotosCoordinator *)self existingSubmission];
    v17 = [v16 photosSubmissionIdentifier];
    [v15 setParentSubmissionIdentifier:v17];

    v18 = [(UGCPOIEnrichmentCoordinator *)self mapItem];
    [UGCPOIEnrichmentForm editPOIEnrichmentFormWithMapItem:v18 parentSubmissionIdentifier:v7 photosForm:v15 ratingsForm:v11];
  }

  else
  {
    v11 = [UGCRatingsForm addRatingFormWithPlaceQuestionnaire:v5];
    v19 = [(UGCRatingsAndPhotosCoordinator *)self initialOverallState];
    v20 = [v11 overallCategory];
    [v20 setCurrentState:v19];

    v15 = [UGCPhotosForm addPhotosFormWithPlaceQuestionnaire:v5 photosWithMetadata:&__NSArray0__struct];
    v18 = [(UGCPOIEnrichmentCoordinator *)self mapItem];
    [UGCPOIEnrichmentForm addPOIEnrichmentFormWithMapItem:v18 photosForm:v15 ratingsForm:v11];
  }
  v21 = ;

  if ([(UGCRatingsAndPhotosCoordinator *)self initialOverallState])
  {
    v22 = [(UGCRatingsAndPhotosCoordinator *)self initialOverallState];
    v23 = [v11 overallCategory];
    [v23 setCurrentState:v22];
  }

  [v15 addPhotoListWithMetadata:self->_initialPhotosWithMetadata];

  return v21;
}

- (void)_presentPOIEnrichmentViewController
{
  v13 = [(UGCRatingsAndPhotosCoordinator *)self _createPOIEnrichmentFormWithContext];
  v3 = +[UIDevice currentDevice];
  v4 = [v3 userInterfaceIdiom];

  if (v4 == 5)
  {
    v5 = [[MacUGCPOIEnrichmentEditorViewController alloc] initWithPOIEnrichmentForm:v13 delegate:self presentationContext:[(UGCPOIEnrichmentCoordinator *)self presentationContext]];
    [(MacUGCPOIEnrichmentEditorViewController *)v5 setModalInPresentation:1];
    [(MacUGCPOIEnrichmentEditorViewController *)v5 setModalPresentationStyle:2];
    [(MacUGCPOIEnrichmentEditorViewController *)v5 setSuppressRatings:[(UGCRatingsAndPhotosCoordinator *)self suppressRatings]];
    ratingContributionsViewController = self->_ratingContributionsViewController;
    self->_ratingContributionsViewController = v5;
    v7 = v5;

    v8 = [(UGCPOIEnrichmentCoordinator *)self presentingViewController];
    v9 = v8;
    v10 = v7;
LABEL_6:
    [(UGCPOIEnrichmentContaineeViewController *)v8 presentViewController:v10 animated:1 completion:0];
    goto LABEL_9;
  }

  v9 = [[UGCPOIEnrichmentContaineeViewController alloc] initWithPOIEnrichmentForm:v13 delegate:self presentationContext:[(UGCPOIEnrichmentCoordinator *)self presentationContext]];
  objc_storeStrong(&self->_ratingContributionsViewController, v9);
  [(UGCPOIEnrichmentContaineeViewController *)v9 setSuppressRatings:[(UGCRatingsAndPhotosCoordinator *)self suppressRatings]];
  if ([(UGCPOIEnrichmentCoordinator *)self prefersDefaultPresentationOverContainee])
  {
    v11 = [(UGCPOIEnrichmentCoordinator *)self presentingViewController];

    if (v11)
    {
      [(UGCPOIEnrichmentContaineeViewController *)v9 setShowCardBackground:1];
      [(UGCPOIEnrichmentContaineeViewController *)v9 setTransitioningDelegate:self];
      [(UGCPOIEnrichmentContaineeViewController *)v9 setModalPresentationStyle:4];
      [(UGCPOIEnrichmentContaineeViewController *)v9 setModalInPresentation:1];
      v8 = [(UGCPOIEnrichmentCoordinator *)self presentingViewController];
      v7 = v8;
      v10 = v9;
      goto LABEL_6;
    }
  }

  v12 = [(UGCPOIEnrichmentCoordinator *)self containerViewController];

  if (!v12)
  {
    goto LABEL_10;
  }

  v7 = [(UGCPOIEnrichmentCoordinator *)self containerViewController];
  [(MacUGCPOIEnrichmentEditorViewController *)v7 presentController:v9 animated:1];
LABEL_9:

LABEL_10:
  [(UGCPOIEnrichmentEditor *)self->_ratingContributionsViewController setAccessibilityIdentifier:@"RatingsAndPhotosView"];
}

- (void)_presentPhotoPickerWithMaxCount:(unint64_t)a3
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
    v6 = [(UGCPOIEnrichmentCoordinator *)self presentingViewController];
    v7 = [(UGCRatingsAndPhotosCoordinator *)self preferredSourceType];
    v8 = [(UGCPOIEnrichmentCoordinator *)self mapItem];
    v9 = [v8 _geoMapItem];
    v10 = [v9 _placeQuestionnaire];
    v11 = [(UGCAddPhotosController *)v5 initWithPresentingViewController:v6 sourceType:v7 multipleSelectionLimit:a3 placeQuestionnaire:v10 delegate:self];
    photoPicker = self->_photoPicker;
    self->_photoPicker = v11;

    v13 = self->_photoPicker;

    [(UGCAddPhotosController *)v13 present];
  }
}

- (void)_handleLookupSubmissionCompletion:(id)a3 lookupError:(id)a4
{
  v14 = a3;
  v6 = a4;
  v7 = [(UGCPOIEnrichmentCoordinator *)self submissionLookupObserver];
  [v7 endAnimatingActivityIndicatorWithError:v6];

  if (v6)
  {
    v8 = [(UGCPOIEnrichmentCoordinator *)self submissionStatusDelegate];
    v9 = objc_opt_respondsToSelector();

    if (v9)
    {
      v10 = [(UGCPOIEnrichmentCoordinator *)self submissionStatusDelegate];
      [v10 poiEnrichmentCoordinator:self didFinishSubmissionLookup:v14];
    }

    [(UGCRatingsAndPhotosCoordinator *)self _failLookupWithError:v6];
  }

  else
  {
    [(UGCRatingsAndPhotosCoordinator *)self setExistingSubmission:v14];
    v11 = [(UGCPOIEnrichmentCoordinator *)self submissionStatusDelegate];
    v12 = objc_opt_respondsToSelector();

    if (v12)
    {
      v13 = [(UGCPOIEnrichmentCoordinator *)self submissionStatusDelegate];
      [v13 poiEnrichmentCoordinator:self didFinishSubmissionLookup:v14];
    }

    [(UGCRatingsAndPhotosCoordinator *)self _startPOIEnrichmentFlow];
  }
}

- (void)_startRatingsAndPhotosFlowWithSubmissionLookup
{
  v3 = [(UGCPOIEnrichmentCoordinator *)self mapItem];
  v4 = [v3 _muid];

  v5 = objc_alloc_init(_TtC4Maps26UGCSubmissionLookupManager);
  lookupManager = self->_lookupManager;
  self->_lookupManager = v5;

  if (MapsFeature_IsEnabled_ARPCommunityID())
  {
    objc_initWeak(&location, self);
    v7 = self->_lookupManager;
    v8 = [(UGCPOIEnrichmentCoordinator *)self mapItem];
    v9 = [v8 _geoMapItem];
    v10 = [v9 _identifierHistory];
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_100DD96FC;
    v15[3] = &unk_101654F50;
    objc_copyWeak(&v16, &location);
    [(UGCSubmissionLookupManager *)v7 fetchSubmissionWithCommunityIDAndICloudIDFor:v4 identifierHistory:v10 completion:v15];

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
    [(UGCSubmissionLookupManager *)v12 fetchSubmissionWithICloudIDFor:v4 completion:v13];
    v11 = &v14;
  }

  objc_destroyWeak(v11);
  objc_destroyWeak(&location);
}

- (void)_startPOIEnrichmentFlow
{
  if (MapsFeature_IsEnabled_SydneyARP())
  {
    v3 = [(UGCPOIEnrichmentCoordinator *)self mapItem];
    v4 = [v3 _geoMapItem];
    v5 = [v4 _placeQuestionnaire];
    UInteger = [v5 maximumNumberOfPhotos];
  }

  else
  {
    UInteger = GEOConfigGetUInteger();
  }

  v7 = [(UGCSubmissionLookupResult *)self->_existingSubmission previousSubmission];
  v8 = [v7 images];
  v9 = [v8 count];
  v10 = [(UGCPOIEnrichmentCoordinator *)self mapItem];
  v11 = [v10 _geoMapItem];
  v12 = [v11 _placeQuestionnaire];
  if (v9 >= [v12 maximumNumberOfPhotos])
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
  v3 = [(UGCPOIEnrichmentCoordinator *)self mapItem];
  v4 = [v3 _muid];
  v5 = [(UGCPOIEnrichmentCoordinator *)self mapItem];
  v6 = [v5 _geoMapItem];
  v7 = [v6 _identifierHistory];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100DD9A84;
  v8[3] = &unk_101654F28;
  objc_copyWeak(&v9, &location);
  [UGCReviewedPlaceManager fetchReviewedPlaceForMUID:v4 withIdentifierHistory:v7 completion:v8];

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

- (void)_startRatingsAndPhotosFlowRequiringInformedConsent
{
  objc_initWeak(&location, self);
  v3 = [(UGCPOIEnrichmentCoordinator *)self presentingViewController];
  v4 = [(UGCPOIEnrichmentCoordinator *)self presentationContext];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100DD9BE4;
  v5[3] = &unk_101654F00;
  objc_copyWeak(&v6, &location);
  [UGCInformedConsentViewController presentIfNeededWithPresentingViewController:v3 presentationContext:v4 completion:v5];

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