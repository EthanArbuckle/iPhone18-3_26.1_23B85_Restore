@interface UGCInlinePOIEnrichmentController
- (BOOL)_isLoading;
- (MUPlaceCardAnalyticsController)analyticsController;
- (UGCInlinePOIEnrichmentController)initWithMapItem:(id)item;
- (UGCInlinePOIEnrichmentControllerDelegate)delegate;
- (UIViewController)contentViewController;
- (UIViewController)presentingViewController;
- (id)_previousSubmission;
- (void)_reloadInlineViewController;
- (void)_submitWithUploadPolicy:(int64_t)policy completion:(id)completion;
- (void)captureAnalyticsForRatingsForm:(id)form photosForm:(id)photosForm;
- (void)captureUserAction:(int)action value:(id)value target:(int)target;
- (void)captureUserActionForRatingState:(int64_t)state value:(id)value target:(int)target;
- (void)openTermsOfServiceURL:(id)l;
- (void)presentInformedConsentIfNeededWithCompletion:(id)completion;
- (void)presentPOIEnrichment;
- (void)requestAddPhotosWithSourceType:(int64_t)type presentationOptions:(id)options;
- (void)setLookupResult:(id)result;
- (void)setSubmissionStatus:(id)status;
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
  delegate = [(UGCInlinePOIEnrichmentController *)self delegate];
  [delegate inlinePOIEnrichmentControllerPresentPOIEnrichment:self];
}

- (void)openTermsOfServiceURL:(id)l
{
  lCopy = l;
  delegate = [(UGCInlinePOIEnrichmentController *)self delegate];
  [delegate inlinePOIEnrichmentController:self didSelectTermsOfServiceURL:lCopy];
}

- (void)captureAnalyticsForRatingsForm:(id)form photosForm:(id)photosForm
{
  formCopy = form;
  photosFormCopy = photosForm;
  analyticsController = [(UGCInlinePOIEnrichmentController *)self analyticsController];
  [analyticsController instrumentAction:301 target:201 eventValue:0 moduleType:6 feedbackType:0];

  v9 = +[GEOAPSharedStateData sharedData];
  [v9 populateRatingPhotoSubmissionDetailsWithEntryPoint:2 originTarget:@"PLACECARD_INLINE"];

  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  allRatingCategories = [formCopy allRatingCategories];
  v11 = [allRatingCategories countByEnumeratingWithState:&v38 objects:v42 count:16];
  if (v11)
  {
    v12 = *v39;
    while (2)
    {
      for (i = 0; i != v11; i = i + 1)
      {
        if (*v39 != v12)
        {
          objc_enumerationMutation(allRatingCategories);
        }

        if ([*(*(&v38 + 1) + 8 * i) isEdited])
        {
          LODWORD(v11) = 1;
          goto LABEL_11;
        }
      }

      v11 = [allRatingCategories countByEnumeratingWithState:&v38 objects:v42 count:16];
      if (v11)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  numberOfAddedPhotos = [photosFormCopy numberOfAddedPhotos];
  v15 = v11 ^ 1;
  if (!numberOfAddedPhotos)
  {
    v15 = 1;
  }

  if (v15)
  {
    if ([photosFormCopy numberOfAddedPhotos])
    {
      analyticsController2 = [(UGCInlinePOIEnrichmentController *)self analyticsController];
      [analyticsController2 instrumentAction:2131 target:201 eventValue:0 moduleType:6 feedbackType:0];

      v21 = +[GEOAPSharedStateData sharedData];
      [v21 populatePhotoSubmissionDetailsWithEntryPoint:2 numberOfPhotos:objc_msgSend(photosFormCopy numberOfARPSuggestedPhotos:"numberOfAddedPhotos") originTarget:{0, @"PLACECARD_INLINE"}];

      analyticsController3 = [(UGCInlinePOIEnrichmentController *)self analyticsController];
      [analyticsController3 instrumentAction:2131 target:201 eventValue:0 moduleType:6 feedbackType:0];

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
    v29 = formCopy;
    [v23 populateRatingSubmissionDetailsWithEntryPoint:2 originTarget:@"PLACECARD_INLINE" specifierBlock:&v25];

    v24 = [(UGCInlinePOIEnrichmentController *)self analyticsController:v25];
    [v24 instrumentAction:343 target:201 eventValue:0 moduleType:6 feedbackType:0];
  }

  else
  {
    v16 = +[GEOAPSharedStateData sharedData];
    [v16 populatePhotoSubmissionDetailsWithEntryPoint:2 numberOfPhotos:objc_msgSend(photosFormCopy numberOfARPSuggestedPhotos:"numberOfAddedPhotos") originTarget:{0, @"PLACECARD_INLINE"}];

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
    v32 = formCopy;
    [v17 populateRatingSubmissionDetailsWithEntryPoint:2 originTarget:@"PLACECARD_INLINE" specifierBlock:v31];

    analyticsController4 = [(UGCInlinePOIEnrichmentController *)self analyticsController];
    [analyticsController4 instrumentAction:2131 target:201 eventValue:0 moduleType:6 feedbackType:0];

    analyticsController5 = [(UGCInlinePOIEnrichmentController *)self analyticsController];
    [analyticsController5 instrumentAction:343 target:201 eventValue:0 moduleType:6 feedbackType:0];
  }

  _Block_object_dispose(&v34, 8);
LABEL_20:
}

- (void)captureUserAction:(int)action value:(id)value target:(int)target
{
  v5 = *&target;
  v6 = *&action;
  valueCopy = value;
  analyticsController = [(UGCInlinePOIEnrichmentController *)self analyticsController];
  [analyticsController instrumentAction:v6 target:v5 eventValue:valueCopy moduleType:6 feedbackType:0];
}

- (void)captureUserActionForRatingState:(int64_t)state value:(id)value target:(int)target
{
  v5 = *&target;
  if (state == 1)
  {
    v7 = 298;
  }

  else
  {
    v7 = 0;
  }

  if (state == 2)
  {
    v8 = 299;
  }

  else
  {
    v8 = v7;
  }

  valueCopy = value;
  analyticsController = [(UGCInlinePOIEnrichmentController *)self analyticsController];
  [analyticsController instrumentAction:v8 target:v5 eventValue:valueCopy moduleType:6 feedbackType:0];
}

- (void)requestAddPhotosWithSourceType:(int64_t)type presentationOptions:(id)options
{
  optionsCopy = options;
  mapItem = [(UGCInlinePOIEnrichmentController *)self mapItem];
  v8 = [UGCPOIEnrichmentCoordinator photoEmphasizedAddCoordinatorWithMapItem:mapItem preferredSourceType:type originTarget:@"PLACECARD_BUSINESS_INFO" suppressRatings:1];

  sourceView = [optionsCopy sourceView];
  [v8 setAnchoringView:sourceView];

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

- (void)presentInformedConsentIfNeededWithCompletion:(id)completion
{
  completionCopy = completion;
  WeakRetained = objc_loadWeakRetained(&self->_presentingViewController);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1006C96C8;
  v7[3] = &unk_10162EBD8;
  v8 = completionCopy;
  v6 = completionCopy;
  [UGCInformedConsentViewController presentIfNeededWithPresentingViewController:WeakRetained presentationContext:1 completion:v7];
}

- (void)_submitWithUploadPolicy:(int64_t)policy completion:(id)completion
{
  completionCopy = completion;
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

    completionCopy[2](completionCopy);
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
  submissionManager = [v7 submissionManager];

  v9 = [_TtC4Maps9UGCReport alloc];
  poiEnrichmentForm = self->_poiEnrichmentForm;
  mapItem = [(UGCInlinePOIEnrichmentController *)self mapItem];
  v12 = [(UGCReport *)v9 initWithReportType:0 initialForm:poiEnrichmentForm mapItem:mapItem submitter:submissionManager];

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
    v19[4] = completionCopy;
    [(UGCReport *)v12 submitRatingsAndPhotosWithUploadPolicy:policy progressBlock:0 completion:v19];
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
    v17[4] = completionCopy;
    [(UGCReport *)v12 submitRatingsAndPhotosSimultaneouslyUsingDSIDWithUploadPolicy:policy progressBlock:0 completion:v17];
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
    view = [(UGCInlinePOIEnrichmentViewController *)self->_inlineViewController view];
    [view removeFromSuperview];

    [(UGCInlinePOIEnrichmentViewController *)self->_inlineViewController removeFromParentViewController];
    v5 = self->_inlineViewController;
    self->_inlineViewController = 0;
  }

  _previousSubmission = [(UGCInlinePOIEnrichmentController *)self _previousSubmission];
  mapItem = [(UGCInlinePOIEnrichmentController *)self mapItem];
  _geoMapItem = [mapItem _geoMapItem];
  _placeQuestionnaire = [_geoMapItem _placeQuestionnaire];
  if (_previousSubmission)
  {
    scorecard = [_previousSubmission scorecard];
    v10 = [UGCRatingsForm editRatingFormWithPlaceQuestionnaire:_placeQuestionnaire existingScorecard:scorecard];

    mapItem2 = [(UGCInlinePOIEnrichmentController *)self mapItem];
    _geoMapItem2 = [mapItem2 _geoMapItem];
    _placeQuestionnaire2 = [_geoMapItem2 _placeQuestionnaire];
    images = [_previousSubmission images];
    v15 = [UGCPhotosForm editPhotosFormWithPlaceQuestionnaire:_placeQuestionnaire2 previouslySubmittedImages:images];

    mapItem3 = [(UGCInlinePOIEnrichmentController *)self mapItem];
    parentSubmissionIdentifier = [(UGCSubmissionLookupResult *)self->_lookupResult parentSubmissionIdentifier];
    v18 = [UGCPOIEnrichmentForm editPOIEnrichmentFormWithMapItem:mapItem3 parentSubmissionIdentifier:parentSubmissionIdentifier photosForm:v15 ratingsForm:v10];
  }

  else
  {
    v10 = [UGCRatingsForm addRatingFormWithPlaceQuestionnaire:_placeQuestionnaire];

    mapItem4 = [(UGCInlinePOIEnrichmentController *)self mapItem];
    _geoMapItem3 = [mapItem4 _geoMapItem];
    _placeQuestionnaire3 = [_geoMapItem3 _placeQuestionnaire];
    v15 = [UGCPhotosForm addPhotosFormWithPlaceQuestionnaire:_placeQuestionnaire3 photosWithMetadata:&__NSArray0__struct];

    mapItem3 = [(UGCInlinePOIEnrichmentController *)self mapItem];
    v18 = [UGCPOIEnrichmentForm addPOIEnrichmentFormWithMapItem:mapItem3 photosForm:v15 ratingsForm:v10];
  }

  poiEnrichmentForm = self->_poiEnrichmentForm;
  self->_poiEnrichmentForm = v18;
  v23 = v18;

  v24 = [[UGCInlinePOIEnrichmentViewController alloc] initWithPOIEnrichmentForm:v23];
  v25 = self->_inlineViewController;
  self->_inlineViewController = v24;

  [(UGCInlinePOIEnrichmentViewController *)self->_inlineViewController setEnrichmentController:self];
  [(UGCInlinePOIEnrichmentViewController *)self->_inlineViewController setFormInteractionEnabled:[(UGCInlinePOIEnrichmentController *)self _isLoading]^ 1];
  view2 = [(UGCInlinePOIEnrichmentViewController *)self->_inlineViewController view];
  [view2 setPreservesSuperviewLayoutMargins:1];

  [(UIViewController *)self->_contentViewController addChildViewController:self->_inlineViewController];
  view3 = [(UIViewController *)self->_contentViewController view];
  view4 = [(UGCInlinePOIEnrichmentViewController *)self->_inlineViewController view];
  [view3 addSubview:view4];

  [(UGCInlinePOIEnrichmentViewController *)self->_inlineViewController didMoveToParentViewController:self->_contentViewController];
  v29 = [MUEdgeLayout alloc];
  view5 = [(UGCInlinePOIEnrichmentViewController *)self->_inlineViewController view];
  view6 = [(UIViewController *)self->_contentViewController view];

  v32 = [v29 initWithItem:view5 container:view6];
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

- (void)setLookupResult:(id)result
{
  resultCopy = result;
  v6 = resultCopy;
  if (self->_lookupResult != resultCopy)
  {
    v8 = resultCopy;
    v7 = [(UGCSubmissionLookupResult *)resultCopy isEqual:?];
    v6 = v8;
    if ((v7 & 1) == 0)
    {
      objc_storeStrong(&self->_lookupResult, result);
      [(UGCInlinePOIEnrichmentController *)self _reloadInlineViewController];
      v6 = v8;
    }
  }
}

- (void)setSubmissionStatus:(id)status
{
  statusCopy = status;
  v6 = statusCopy;
  if (self->_submissionStatus != statusCopy)
  {
    v8 = statusCopy;
    v7 = [(MUPlaceCallToActionAppearance *)statusCopy isEqual:?];
    v6 = v8;
    if ((v7 & 1) == 0)
    {
      objc_storeStrong(&self->_submissionStatus, status);
      [(UGCInlinePOIEnrichmentViewController *)self->_inlineViewController setFormInteractionEnabled:[(UGCInlinePOIEnrichmentController *)self _isLoading]^ 1];
      v6 = v8;
    }
  }
}

- (UGCInlinePOIEnrichmentController)initWithMapItem:(id)item
{
  itemCopy = item;
  v11.receiver = self;
  v11.super_class = UGCInlinePOIEnrichmentController;
  v6 = [(UGCInlinePOIEnrichmentController *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_mapItem, item);
    v8 = +[MKLocationManager unretainedUGCInstance];
    locationManager = v7->_locationManager;
    v7->_locationManager = v8;
  }

  return v7;
}

@end