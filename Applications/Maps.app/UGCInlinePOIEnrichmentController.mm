@interface UGCInlinePOIEnrichmentController
- (BOOL)_isLoading;
- (MUPlaceCardAnalyticsController)analyticsController;
- (UGCInlinePOIEnrichmentController)initWithMapItem:(id)a3;
- (UGCInlinePOIEnrichmentControllerDelegate)delegate;
- (UIViewController)contentViewController;
- (UIViewController)presentingViewController;
- (id)_previousSubmission;
- (void)_reloadInlineViewController;
- (void)_submitWithUploadPolicy:(int64_t)a3 completion:(id)a4;
- (void)captureAnalyticsForRatingsForm:(id)a3 photosForm:(id)a4;
- (void)captureUserAction:(int)a3 value:(id)a4 target:(int)a5;
- (void)captureUserActionForRatingState:(int64_t)a3 value:(id)a4 target:(int)a5;
- (void)openTermsOfServiceURL:(id)a3;
- (void)presentInformedConsentIfNeededWithCompletion:(id)a3;
- (void)presentPOIEnrichment;
- (void)requestAddPhotosWithSourceType:(int64_t)a3 presentationOptions:(id)a4;
- (void)setLookupResult:(id)a3;
- (void)setSubmissionStatus:(id)a3;
@end

@implementation UGCInlinePOIEnrichmentController

- (MUPlaceCardAnalyticsController)analyticsController
{
  WeakRetained = objc_loadWeakRetained(&self->_analyticsController);

  return WeakRetained;
}

- (UIViewController)presentingViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_presentingViewController);

  return WeakRetained;
}

- (UGCInlinePOIEnrichmentControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)presentPOIEnrichment
{
  v3 = [(UGCInlinePOIEnrichmentController *)self delegate];
  [v3 inlinePOIEnrichmentControllerPresentPOIEnrichment:self];
}

- (void)openTermsOfServiceURL:(id)a3
{
  v4 = a3;
  v5 = [(UGCInlinePOIEnrichmentController *)self delegate];
  [v5 inlinePOIEnrichmentController:self didSelectTermsOfServiceURL:v4];
}

- (void)captureAnalyticsForRatingsForm:(id)a3 photosForm:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(UGCInlinePOIEnrichmentController *)self analyticsController];
  [v8 instrumentAction:301 target:201 eventValue:0 moduleType:6 feedbackType:0];

  v9 = +[GEOAPSharedStateData sharedData];
  [v9 populateRatingPhotoSubmissionDetailsWithEntryPoint:2 originTarget:@"PLACECARD_INLINE"];

  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  v10 = [v6 allRatingCategories];
  v11 = [v10 countByEnumeratingWithState:&v38 objects:v42 count:16];
  if (v11)
  {
    v12 = *v39;
    while (2)
    {
      for (i = 0; i != v11; i = i + 1)
      {
        if (*v39 != v12)
        {
          objc_enumerationMutation(v10);
        }

        if ([*(*(&v38 + 1) + 8 * i) isEdited])
        {
          LODWORD(v11) = 1;
          goto LABEL_11;
        }
      }

      v11 = [v10 countByEnumeratingWithState:&v38 objects:v42 count:16];
      if (v11)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v14 = [v7 numberOfAddedPhotos];
  v15 = v11 ^ 1;
  if (!v14)
  {
    v15 = 1;
  }

  if (v15)
  {
    if ([v7 numberOfAddedPhotos])
    {
      v20 = [(UGCInlinePOIEnrichmentController *)self analyticsController];
      [v20 instrumentAction:2131 target:201 eventValue:0 moduleType:6 feedbackType:0];

      v21 = +[GEOAPSharedStateData sharedData];
      [v21 populatePhotoSubmissionDetailsWithEntryPoint:2 numberOfPhotos:objc_msgSend(v7 numberOfARPSuggestedPhotos:"numberOfAddedPhotos") originTarget:{0, @"PLACECARD_INLINE"}];

      v22 = [(UGCInlinePOIEnrichmentController *)self analyticsController];
      [v22 instrumentAction:2131 target:201 eventValue:0 moduleType:6 feedbackType:0];

      goto LABEL_20;
    }

    if (!v11)
    {
      goto LABEL_20;
    }

    v34 = 0;
    v35 = &v34;
    v36 = 0x2020000000;
    v37 = 0;
    v23 = +[GEOAPSharedStateData sharedData];
    v25 = _NSConcreteStackBlock;
    v26 = 3221225472;
    v27 = sub_1006C91F4;
    v28 = &unk_101654FC8;
    v30 = &v34;
    v29 = v6;
    [v23 populateRatingSubmissionDetailsWithEntryPoint:2 originTarget:@"PLACECARD_INLINE" specifierBlock:&v25];

    v24 = [(UGCInlinePOIEnrichmentController *)self analyticsController:v25];
    [v24 instrumentAction:343 target:201 eventValue:0 moduleType:6 feedbackType:0];
  }

  else
  {
    v16 = +[GEOAPSharedStateData sharedData];
    [v16 populatePhotoSubmissionDetailsWithEntryPoint:2 numberOfPhotos:objc_msgSend(v7 numberOfARPSuggestedPhotos:"numberOfAddedPhotos") originTarget:{0, @"PLACECARD_INLINE"}];

    v34 = 0;
    v35 = &v34;
    v36 = 0x2020000000;
    v37 = 0;
    v17 = +[GEOAPSharedStateData sharedData];
    v31[0] = _NSConcreteStackBlock;
    v31[1] = 3221225472;
    v31[2] = sub_1006C90B4;
    v31[3] = &unk_101654FC8;
    v33 = &v34;
    v32 = v6;
    [v17 populateRatingSubmissionDetailsWithEntryPoint:2 originTarget:@"PLACECARD_INLINE" specifierBlock:v31];

    v18 = [(UGCInlinePOIEnrichmentController *)self analyticsController];
    [v18 instrumentAction:2131 target:201 eventValue:0 moduleType:6 feedbackType:0];

    v19 = [(UGCInlinePOIEnrichmentController *)self analyticsController];
    [v19 instrumentAction:343 target:201 eventValue:0 moduleType:6 feedbackType:0];
  }

  _Block_object_dispose(&v34, 8);
LABEL_20:
}

- (void)captureUserAction:(int)a3 value:(id)a4 target:(int)a5
{
  v5 = *&a5;
  v6 = *&a3;
  v8 = a4;
  v9 = [(UGCInlinePOIEnrichmentController *)self analyticsController];
  [v9 instrumentAction:v6 target:v5 eventValue:v8 moduleType:6 feedbackType:0];
}

- (void)captureUserActionForRatingState:(int64_t)a3 value:(id)a4 target:(int)a5
{
  v5 = *&a5;
  if (a3 == 1)
  {
    v7 = 298;
  }

  else
  {
    v7 = 0;
  }

  if (a3 == 2)
  {
    v8 = 299;
  }

  else
  {
    v8 = v7;
  }

  v9 = a4;
  v10 = [(UGCInlinePOIEnrichmentController *)self analyticsController];
  [v10 instrumentAction:v8 target:v5 eventValue:v9 moduleType:6 feedbackType:0];
}

- (void)requestAddPhotosWithSourceType:(int64_t)a3 presentationOptions:(id)a4
{
  v6 = a4;
  v7 = [(UGCInlinePOIEnrichmentController *)self mapItem];
  v8 = [UGCPOIEnrichmentCoordinator photoEmphasizedAddCoordinatorWithMapItem:v7 preferredSourceType:a3 originTarget:@"PLACECARD_BUSINESS_INFO" suppressRatings:1];

  v9 = [v6 sourceView];
  [v8 setAnchoringView:v9];

  objc_initWeak(&location, self);
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1006C95A0;
  v11[3] = &unk_101661340;
  objc_copyWeak(&v13, &location);
  v10 = v8;
  v12 = v10;
  [(UGCInlinePOIEnrichmentController *)self _submitWithUploadPolicy:0 completion:v11];

  objc_destroyWeak(&v13);
  objc_destroyWeak(&location);
}

- (void)presentInformedConsentIfNeededWithCompletion:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_presentingViewController);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1006C96C8;
  v7[3] = &unk_10162EBD8;
  v8 = v4;
  v6 = v4;
  [UGCInformedConsentViewController presentIfNeededWithPresentingViewController:WeakRetained presentationContext:1 completion:v7];
}

- (void)_submitWithUploadPolicy:(int64_t)a3 completion:(id)a4
{
  v6 = a4;
  if (![(UGCPOIEnrichmentForm *)self->_poiEnrichmentForm isEdited])
  {
    v15 = sub_1006C9974();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      LOWORD(location[0]) = 0;
      v16 = "The form is not edited so not submitting";
LABEL_9:
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, v16, location, 2u);
    }

LABEL_10:

    v6[2](v6);
    goto LABEL_13;
  }

  if (![(UGCPOIEnrichmentForm *)self->_poiEnrichmentForm isComplete])
  {
    v15 = sub_1006C9974();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      LOWORD(location[0]) = 0;
      v16 = "The form is not complete so bailing";
      goto LABEL_9;
    }

    goto LABEL_10;
  }

  v7 = +[UIApplication sharedMapsDelegate];
  v8 = [v7 submissionManager];

  v9 = [_TtC4Maps9UGCReport alloc];
  poiEnrichmentForm = self->_poiEnrichmentForm;
  v11 = [(UGCInlinePOIEnrichmentController *)self mapItem];
  v12 = [(UGCReport *)v9 initWithReportType:0 initialForm:poiEnrichmentForm mapItem:v11 submitter:v8];

  objc_initWeak(location, self);
  if (MapsFeature_IsEnabled_ARPCommunityID())
  {
    v13 = v19;
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_1006C99C8;
    v19[3] = &unk_1016307A8;
    v14 = &v20;
    objc_copyWeak(&v20, location);
    v19[4] = v6;
    [(UGCReport *)v12 submitRatingsAndPhotosWithUploadPolicy:a3 progressBlock:0 completion:v19];
  }

  else
  {
    v13 = v17;
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_1006C9AE8;
    v17[3] = &unk_1016307A8;
    v14 = &v18;
    objc_copyWeak(&v18, location);
    v17[4] = v6;
    [(UGCReport *)v12 submitRatingsAndPhotosSimultaneouslyUsingDSIDWithUploadPolicy:a3 progressBlock:0 completion:v17];
  }

  objc_destroyWeak(v14);
  objc_destroyWeak(location);

LABEL_13:
}

- (void)_reloadInlineViewController
{
  inlineViewController = self->_inlineViewController;
  if (inlineViewController)
  {
    [(UGCInlinePOIEnrichmentViewController *)inlineViewController willMoveToParentViewController:0];
    v4 = [(UGCInlinePOIEnrichmentViewController *)self->_inlineViewController view];
    [v4 removeFromSuperview];

    [(UGCInlinePOIEnrichmentViewController *)self->_inlineViewController removeFromParentViewController];
    v5 = self->_inlineViewController;
    self->_inlineViewController = 0;
  }

  v33 = [(UGCInlinePOIEnrichmentController *)self _previousSubmission];
  v6 = [(UGCInlinePOIEnrichmentController *)self mapItem];
  v7 = [v6 _geoMapItem];
  v8 = [v7 _placeQuestionnaire];
  if (v33)
  {
    v9 = [v33 scorecard];
    v10 = [UGCRatingsForm editRatingFormWithPlaceQuestionnaire:v8 existingScorecard:v9];

    v11 = [(UGCInlinePOIEnrichmentController *)self mapItem];
    v12 = [v11 _geoMapItem];
    v13 = [v12 _placeQuestionnaire];
    v14 = [v33 images];
    v15 = [UGCPhotosForm editPhotosFormWithPlaceQuestionnaire:v13 previouslySubmittedImages:v14];

    v16 = [(UGCInlinePOIEnrichmentController *)self mapItem];
    v17 = [(UGCSubmissionLookupResult *)self->_lookupResult parentSubmissionIdentifier];
    v18 = [UGCPOIEnrichmentForm editPOIEnrichmentFormWithMapItem:v16 parentSubmissionIdentifier:v17 photosForm:v15 ratingsForm:v10];
  }

  else
  {
    v10 = [UGCRatingsForm addRatingFormWithPlaceQuestionnaire:v8];

    v19 = [(UGCInlinePOIEnrichmentController *)self mapItem];
    v20 = [v19 _geoMapItem];
    v21 = [v20 _placeQuestionnaire];
    v15 = [UGCPhotosForm addPhotosFormWithPlaceQuestionnaire:v21 photosWithMetadata:&__NSArray0__struct];

    v16 = [(UGCInlinePOIEnrichmentController *)self mapItem];
    v18 = [UGCPOIEnrichmentForm addPOIEnrichmentFormWithMapItem:v16 photosForm:v15 ratingsForm:v10];
  }

  poiEnrichmentForm = self->_poiEnrichmentForm;
  self->_poiEnrichmentForm = v18;
  v23 = v18;

  v24 = [[UGCInlinePOIEnrichmentViewController alloc] initWithPOIEnrichmentForm:v23];
  v25 = self->_inlineViewController;
  self->_inlineViewController = v24;

  [(UGCInlinePOIEnrichmentViewController *)self->_inlineViewController setEnrichmentController:self];
  [(UGCInlinePOIEnrichmentViewController *)self->_inlineViewController setFormInteractionEnabled:[(UGCInlinePOIEnrichmentController *)self _isLoading]^ 1];
  v26 = [(UGCInlinePOIEnrichmentViewController *)self->_inlineViewController view];
  [v26 setPreservesSuperviewLayoutMargins:1];

  [(UIViewController *)self->_contentViewController addChildViewController:self->_inlineViewController];
  v27 = [(UIViewController *)self->_contentViewController view];
  v28 = [(UGCInlinePOIEnrichmentViewController *)self->_inlineViewController view];
  [v27 addSubview:v28];

  [(UGCInlinePOIEnrichmentViewController *)self->_inlineViewController didMoveToParentViewController:self->_contentViewController];
  v29 = [MUEdgeLayout alloc];
  v30 = [(UGCInlinePOIEnrichmentViewController *)self->_inlineViewController view];
  v31 = [(UIViewController *)self->_contentViewController view];

  v32 = [v29 initWithItem:v30 container:v31];
  [v32 activate];
}

- (id)_previousSubmission
{
  lookupResult = self->_lookupResult;
  if (lookupResult)
  {
    if ([lookupResult status] == 1)
    {
      lookupResult = [(UGCSubmissionLookupResult *)self->_lookupResult previousSubmission];
    }

    else
    {
      lookupResult = 0;
    }
  }

  return lookupResult;
}

- (BOOL)_isLoading
{
  submissionStatus = self->_submissionStatus;
  if (submissionStatus)
  {
    LOBYTE(submissionStatus) = [(MUPlaceCallToActionAppearance *)submissionStatus type]== 5;
  }

  return submissionStatus;
}

- (UIViewController)contentViewController
{
  contentViewController = self->_contentViewController;
  if (!contentViewController)
  {
    v4 = objc_alloc_init(UIViewController);
    v5 = self->_contentViewController;
    self->_contentViewController = v4;

    [(UIViewController *)self->_contentViewController _mapsui_resetViewLayoutMargins];
    [(UGCInlinePOIEnrichmentController *)self _reloadInlineViewController];
    contentViewController = self->_contentViewController;
  }

  return contentViewController;
}

- (void)setLookupResult:(id)a3
{
  v5 = a3;
  v6 = v5;
  if (self->_lookupResult != v5)
  {
    v8 = v5;
    v7 = [(UGCSubmissionLookupResult *)v5 isEqual:?];
    v6 = v8;
    if ((v7 & 1) == 0)
    {
      objc_storeStrong(&self->_lookupResult, a3);
      [(UGCInlinePOIEnrichmentController *)self _reloadInlineViewController];
      v6 = v8;
    }
  }
}

- (void)setSubmissionStatus:(id)a3
{
  v5 = a3;
  v6 = v5;
  if (self->_submissionStatus != v5)
  {
    v8 = v5;
    v7 = [(MUPlaceCallToActionAppearance *)v5 isEqual:?];
    v6 = v8;
    if ((v7 & 1) == 0)
    {
      objc_storeStrong(&self->_submissionStatus, a3);
      [(UGCInlinePOIEnrichmentViewController *)self->_inlineViewController setFormInteractionEnabled:[(UGCInlinePOIEnrichmentController *)self _isLoading]^ 1];
      v6 = v8;
    }
  }
}

- (UGCInlinePOIEnrichmentController)initWithMapItem:(id)a3
{
  v5 = a3;
  v11.receiver = self;
  v11.super_class = UGCInlinePOIEnrichmentController;
  v6 = [(UGCInlinePOIEnrichmentController *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_mapItem, a3);
    v8 = +[MKLocationManager unretainedUGCInstance];
    locationManager = v7->_locationManager;
    v7->_locationManager = v8;
  }

  return v7;
}

@end