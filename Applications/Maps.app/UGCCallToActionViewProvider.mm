@interface UGCCallToActionViewProvider
- (MUPlaceCallToActionAppearance)submissionStatusAppearance;
- (UGCCallToActionViewProvider)initWithDelegate:(id)delegate;
- (void)_finishResolvingWithBlock:(id)block;
- (void)_handleLookupSubmissionCompletion:(id)completion lookupError:(id)error;
- (void)_resolveForCurrentState;
- (void)_resolveForEditWithCompletion:(id)completion;
- (void)_restart;
- (void)_retrievePhotoURLWithCompletion:(id)completion;
- (void)_updateWithPOIEnrichment:(id)enrichment;
- (void)cancel;
- (void)dealloc;
- (void)feedbackSubmissionManagerCompletedSubmissionWithMUID:(unint64_t)d withError:(id)error;
- (void)refineUserSubmissionForMapItem:(id)item;
- (void)resolveForUserEdit;
- (void)setAlwaysRefinesUserSubmission:(BOOL)submission;
- (void)setMapItem:(id)item;
- (void)updateWithFetchedLookupResult:(id)result;
@end

@implementation UGCCallToActionViewProvider

- (void)feedbackSubmissionManagerCompletedSubmissionWithMUID:(unint64_t)d withError:(id)error
{
  errorCopy = error;
  if (MapsFeature_IsEnabled_SydneyARP())
  {
    v7 = sub_1007996E8();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v10 = 134218242;
      dCopy = d;
      v12 = 2112;
      v13 = errorCopy;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "FeedbackSubmissionManager did complete photo submission for muid: %llu error: %@", &v10, 0x16u);
    }

    if (!errorCopy)
    {
      mapItem = [(UGCCallToActionViewProvider *)self mapItem];
      _muid = [mapItem _muid];

      if (_muid == d)
      {
        [(UGCCallToActionViewProvider *)self resolveForUserEdit];
      }
    }
  }
}

- (void)_finishResolvingWithBlock:(id)block
{
  blockCopy = block;
  [(UGCCallToActionViewProvider *)self setIsResolving:0];
  v4 = blockCopy;
  if (blockCopy)
  {
    (*(blockCopy + 2))(blockCopy);
    v4 = blockCopy;
  }
}

- (void)_retrievePhotoURLWithCompletion:(id)completion
{
  completionCopy = completion;
  dispatch_assert_queue_V2(&_dispatch_main_q);
  firstPhotoURL = [(UGCCallToActionViewProvider *)self firstPhotoURL];

  if (firstPhotoURL)
  {
    firstPhotoURL2 = [(UGCCallToActionViewProvider *)self firstPhotoURL];
    firstPhotoID = [(UGCCallToActionViewProvider *)self firstPhotoID];
    completionCopy[2](completionCopy, firstPhotoURL2, firstPhotoID, [(UGCCallToActionViewProvider *)self numberOfPhotosAddedForSubmission]);
  }

  else
  {
    mapItem = [(UGCCallToActionViewProvider *)self mapItem];
    _muid = [mapItem _muid];

    [(UGCSubmissionLookupManager *)self->_lookupManager cancelIfNeeded];
    v10 = objc_alloc_init(_TtC4Maps26UGCSubmissionLookupManager);
    lookupManager = self->_lookupManager;
    self->_lookupManager = v10;

    objc_initWeak(&location, self);
    v12 = self->_lookupManager;
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_100CB6B3C;
    v13[3] = &unk_1016502C0;
    objc_copyWeak(&v15, &location);
    v14 = completionCopy;
    [(UGCSubmissionLookupManager *)v12 fetchSubmissionWithICloudIDFor:_muid completion:v13];

    objc_destroyWeak(&v15);
    objc_destroyWeak(&location);
  }
}

- (void)_updateWithPOIEnrichment:(id)enrichment
{
  enrichmentCopy = enrichment;
  dispatch_assert_queue_V2(&_dispatch_main_q);
  scorecard = [enrichmentCopy scorecard];
  hasRecommended = [scorecard hasRecommended];

  if (hasRecommended)
  {
    scorecard2 = [enrichmentCopy scorecard];
    if ([scorecard2 recommended])
    {
      v7 = 2;
    }

    else
    {
      v7 = 1;
    }

    [(UGCCallToActionViewProvider *)self setCurrentRatingCategoryState:v7];
  }

  else
  {
    [(UGCCallToActionViewProvider *)self setCurrentRatingCategoryState:0];
  }

  images = [enrichmentCopy images];
  -[UGCCallToActionViewProvider setNumberOfPhotosAddedForSubmission:](self, "setNumberOfPhotosAddedForSubmission:", [images count]);

  images2 = [enrichmentCopy images];
  firstObject = [images2 firstObject];

  firstPhotoURL = [(UGCCallToActionViewProvider *)self firstPhotoURL];
  v12 = firstPhotoURL | firstObject;

  if (v12)
  {
    firstPhotoURL2 = [(UGCCallToActionViewProvider *)self firstPhotoURL];
    absoluteString = [firstPhotoURL2 absoluteString];
    v15 = [firstObject url];
    v16 = [absoluteString isEqual:v15];

    if ((v16 & 1) == 0)
    {
      v17 = [firstObject url];
      v18 = [NSURL URLWithString:v17];
      [(UGCCallToActionViewProvider *)self setFirstPhotoURL:v18];

      imageId = [firstObject imageId];
      [(UGCCallToActionViewProvider *)self setFirstPhotoID:imageId];

      WeakRetained = objc_loadWeakRetained(&self->_delegate);
      firstPhotoURL3 = [(UGCCallToActionViewProvider *)self firstPhotoURL];
      imageId2 = [firstObject imageId];
      [WeakRetained callToActionViewProviderDidUpdateWithPreferredUserUploadedPhoto:firstPhotoURL3 photoID:imageId2 numberOfPhotos:{-[UGCCallToActionViewProvider numberOfPhotosAddedForSubmission](self, "numberOfPhotosAddedForSubmission")}];
    }
  }
}

- (void)_handleLookupSubmissionCompletion:(id)completion lookupError:(id)error
{
  completionCopy = completion;
  [(UGCCallToActionViewProvider *)self setLookupResult:completionCopy];
  if ([completionCopy status] == 1)
  {
    previousSubmission = [completionCopy previousSubmission];
    [(UGCCallToActionViewProvider *)self _updateWithPOIEnrichment:previousSubmission];

    v7 = v11;
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v8 = sub_100CB70EC;
  }

  else
  {
    v7 = &v9;
    v9 = _NSConcreteStackBlock;
    v10 = 3221225472;
    v8 = sub_100CB7140;
  }

  v7[2] = v8;
  v7[3] = &unk_101661B18;
  v7[4] = &self->super.isa;
  [(UGCCallToActionViewProvider *)self _finishResolvingWithBlock:v9, v10];
}

- (void)refineUserSubmissionForMapItem:(id)item
{
  itemCopy = item;
  dispatch_assert_queue_V2(&_dispatch_main_q);
  [(UGCSubmissionLookupManager *)self->_lookupManager cancelIfNeeded];
  v5 = objc_alloc_init(_TtC4Maps26UGCSubmissionLookupManager);
  lookupManager = self->_lookupManager;
  self->_lookupManager = v5;

  if (MapsFeature_IsEnabled_ARPCommunityID())
  {
    objc_initWeak(&location, self);
    v7 = self->_lookupManager;
    _muid = [itemCopy _muid];
    _geoMapItem = [itemCopy _geoMapItem];
    _identifierHistory = [_geoMapItem _identifierHistory];
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_100CB7378;
    v16[3] = &unk_101654F50;
    objc_copyWeak(&v17, &location);
    [(UGCSubmissionLookupManager *)v7 fetchSubmissionWithCommunityIDAndICloudIDFor:_muid identifierHistory:_identifierHistory completion:v16];

    v11 = &v17;
  }

  else
  {
    objc_initWeak(&location, self);
    v12 = self->_lookupManager;
    _muid2 = [itemCopy _muid];
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_100CB7450;
    v14[3] = &unk_101654F50;
    objc_copyWeak(&v15, &location);
    [(UGCSubmissionLookupManager *)v12 fetchSubmissionWithICloudIDFor:_muid2 completion:v14];
    v11 = &v15;
  }

  objc_destroyWeak(v11);
  objc_destroyWeak(&location);
}

- (void)updateWithFetchedLookupResult:(id)result
{
  resultCopy = result;
  dispatch_assert_queue_V2(&_dispatch_main_q);
  if ([resultCopy status] == 1)
  {
    [(UGCCallToActionViewProvider *)self cancel];
    [(UGCCallToActionViewProvider *)self setHasUserAlreadyRatedThisPlace:1];
    [(UGCCallToActionViewProvider *)self setLookupResult:resultCopy];
    previousSubmission = [resultCopy previousSubmission];
    [(UGCCallToActionViewProvider *)self _updateWithPOIEnrichment:previousSubmission];

    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained callToActionViewProviderDidFinishResolvingEditState:self];
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_FAULT))
  {
    *v7 = 0;
    _os_log_fault_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_FAULT, "Assertion failed: lookupResult.status == UGCSubmissionLookupStatusSuccess", v7, 2u);
  }
}

- (void)cancel
{
  dispatch_assert_queue_V2(&_dispatch_main_q);
  [(UGCSubmissionLookupManager *)self->_lookupManager cancelIfNeeded];
  [(UGCCallToActionViewProvider *)self setHasUserAlreadyRatedThisPlace:0];
  [(UGCCallToActionViewProvider *)self setCurrentRatingCategoryState:0];
  [(UGCCallToActionViewProvider *)self setNumberOfPhotosAddedForSubmission:0];
  [(UGCCallToActionViewProvider *)self setLookupResult:0];
  [(UGCCallToActionViewProvider *)self setIsResolving:0];

  [(UGCCallToActionViewProvider *)self setFirstPhotoURL:0];
}

- (void)resolveForUserEdit
{
  dispatch_assert_queue_V2(&_dispatch_main_q);
  [(UGCCallToActionViewProvider *)self cancel];

  [(UGCCallToActionViewProvider *)self _resolveForCurrentState];
}

- (void)_resolveForEditWithCompletion:(id)completion
{
  completionCopy = completion;
  if (completionCopy)
  {
    objc_initWeak(location, self);
    _muid = [(MKMapItem *)self->_mapItem _muid];
    _geoMapItem = [(MKMapItem *)self->_mapItem _geoMapItem];
    _identifierHistory = [_geoMapItem _identifierHistory];
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_100CB790C;
    v8[3] = &unk_101650298;
    v9 = completionCopy;
    objc_copyWeak(&v10, location);
    [UGCReviewedPlaceManager fetchReviewedPlaceForMUID:_muid withIdentifierHistory:_identifierHistory completion:v8];

    objc_destroyWeak(&v10);
    objc_destroyWeak(location);
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_FAULT))
  {
    LOWORD(location[0]) = 0;
    _os_log_fault_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_FAULT, "Assertion failed: completion != ((void *)0)", location, 2u);
  }
}

- (void)_resolveForCurrentState
{
  dispatch_assert_queue_V2(&_dispatch_main_q);
  v3 = sub_1007996E8();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    LOWORD(buf) = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "Resolving current state", &buf, 2u);
  }

  if ([(MKMapItem *)self->_mapItem _muid])
  {
    [(UGCCallToActionViewProvider *)self setIsResolving:1];
    if ([(UGCCallToActionViewProvider *)self canAddRatingOrPhoto])
    {
      WeakRetained = objc_loadWeakRetained(&self->_delegate);
      [WeakRetained callToActionViewProviderInitialLoadingStateDidChange:self];

      objc_initWeak(&buf, self);
      v5 = v8;
      v8[0] = _NSConcreteStackBlock;
      v8[1] = 3221225472;
      v8[2] = sub_100CB8000;
      v8[3] = &unk_101654F28;
      objc_copyWeak(&v9, &buf);
      [(UGCCallToActionViewProvider *)self _resolveForEditWithCompletion:v8];
    }

    else
    {
      v7 = sub_1007996E8();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        LOWORD(buf) = 0;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "This POI does not support ratings/photos.  Will not show CTA but will check if we reviewed this place", &buf, 2u);
      }

      objc_initWeak(&buf, self);
      v5 = v10;
      v10[0] = _NSConcreteStackBlock;
      v10[1] = 3221225472;
      v10[2] = sub_100CB7E18;
      v10[3] = &unk_101654F28;
      objc_copyWeak(&v11, &buf);
      [(UGCCallToActionViewProvider *)self _resolveForEditWithCompletion:v10];
    }

    objc_destroyWeak(v5 + 4);
    objc_destroyWeak(&buf);
  }

  else
  {
    v6 = sub_1007996E8();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      LOWORD(buf) = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "Map item does not have MUID. Early exit.", &buf, 2u);
    }

    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_100CB7DC4;
    v13[3] = &unk_101661B18;
    v13[4] = self;
    [(UGCCallToActionViewProvider *)self _finishResolvingWithBlock:v13];
  }
}

- (void)_restart
{
  dispatch_assert_queue_V2(&_dispatch_main_q);
  [(UGCCallToActionViewProvider *)self cancel];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained callToActionViewProviderDidFinishClearingExistingState:self];

  [(UGCCallToActionViewProvider *)self _resolveForCurrentState];
}

- (void)setAlwaysRefinesUserSubmission:(BOOL)submission
{
  if (self->_alwaysRefinesUserSubmission != submission)
  {
    self->_alwaysRefinesUserSubmission = submission;
    [(UGCCallToActionViewProvider *)self _restart];
  }
}

- (void)setMapItem:(id)item
{
  itemCopy = item;
  if (self->_mapItem != itemCopy)
  {
    v6 = itemCopy;
    objc_storeStrong(&self->_mapItem, item);
    [(UGCCallToActionViewProvider *)self _restart];
    itemCopy = v6;
  }
}

- (MUPlaceCallToActionAppearance)submissionStatusAppearance
{
  if ([(UGCCallToActionViewProvider *)self isResolving])
  {
    v3 = +[MUPlaceCallToActionAppearance userRecommendedLoadingAppearance];
  }

  else if ([(UGCCallToActionViewProvider *)self hasUserAlreadyRatedThisPlace])
  {
    if ([(UGCCallToActionViewProvider *)self currentRatingCategoryState]|| (v3 = [(UGCCallToActionViewProvider *)self numberOfPhotosAddedForSubmission]) != 0)
    {
      currentRatingCategoryState = [(UGCCallToActionViewProvider *)self currentRatingCategoryState];
      if (currentRatingCategoryState == 2)
      {
        v5 = 2;
      }

      else
      {
        v5 = currentRatingCategoryState == 1;
      }

      v3 = [MUPlaceCallToActionAppearance userRecommendedAppearanceForRatingState:v5 numberOfPhotosAdded:[(UGCCallToActionViewProvider *)self numberOfPhotosAddedForSubmission]];
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)dealloc
{
  [(UGCSubmissionLookupManager *)self->_lookupManager cancelIfNeeded];
  v3 = +[UIApplication sharedMapsDelegate];
  submissionManager = [v3 submissionManager];
  [submissionManager removeObserver:self];

  v5.receiver = self;
  v5.super_class = UGCCallToActionViewProvider;
  [(UGCCallToActionViewProvider *)&v5 dealloc];
}

- (UGCCallToActionViewProvider)initWithDelegate:(id)delegate
{
  delegateCopy = delegate;
  v10.receiver = self;
  v10.super_class = UGCCallToActionViewProvider;
  v5 = [(UGCCallToActionViewProvider *)&v10 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_delegate, delegateCopy);
    v7 = +[UIApplication sharedMapsDelegate];
    submissionManager = [v7 submissionManager];
    [submissionManager addObserver:v6];
  }

  return v6;
}

@end