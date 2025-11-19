@interface UGCCallToActionViewProvider
- (MUPlaceCallToActionAppearance)submissionStatusAppearance;
- (UGCCallToActionViewProvider)initWithDelegate:(id)a3;
- (void)_finishResolvingWithBlock:(id)a3;
- (void)_handleLookupSubmissionCompletion:(id)a3 lookupError:(id)a4;
- (void)_resolveForCurrentState;
- (void)_resolveForEditWithCompletion:(id)a3;
- (void)_restart;
- (void)_retrievePhotoURLWithCompletion:(id)a3;
- (void)_updateWithPOIEnrichment:(id)a3;
- (void)cancel;
- (void)dealloc;
- (void)feedbackSubmissionManagerCompletedSubmissionWithMUID:(unint64_t)a3 withError:(id)a4;
- (void)refineUserSubmissionForMapItem:(id)a3;
- (void)resolveForUserEdit;
- (void)setAlwaysRefinesUserSubmission:(BOOL)a3;
- (void)setMapItem:(id)a3;
- (void)updateWithFetchedLookupResult:(id)a3;
@end

@implementation UGCCallToActionViewProvider

- (void)feedbackSubmissionManagerCompletedSubmissionWithMUID:(unint64_t)a3 withError:(id)a4
{
  v6 = a4;
  if (MapsFeature_IsEnabled_SydneyARP())
  {
    v7 = sub_1007996E8();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v10 = 134218242;
      v11 = a3;
      v12 = 2112;
      v13 = v6;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "FeedbackSubmissionManager did complete photo submission for muid: %llu error: %@", &v10, 0x16u);
    }

    if (!v6)
    {
      v8 = [(UGCCallToActionViewProvider *)self mapItem];
      v9 = [v8 _muid];

      if (v9 == a3)
      {
        [(UGCCallToActionViewProvider *)self resolveForUserEdit];
      }
    }
  }
}

- (void)_finishResolvingWithBlock:(id)a3
{
  v5 = a3;
  [(UGCCallToActionViewProvider *)self setIsResolving:0];
  v4 = v5;
  if (v5)
  {
    (*(v5 + 2))(v5);
    v4 = v5;
  }
}

- (void)_retrievePhotoURLWithCompletion:(id)a3
{
  v4 = a3;
  dispatch_assert_queue_V2(&_dispatch_main_q);
  v5 = [(UGCCallToActionViewProvider *)self firstPhotoURL];

  if (v5)
  {
    v6 = [(UGCCallToActionViewProvider *)self firstPhotoURL];
    v7 = [(UGCCallToActionViewProvider *)self firstPhotoID];
    v4[2](v4, v6, v7, [(UGCCallToActionViewProvider *)self numberOfPhotosAddedForSubmission]);
  }

  else
  {
    v8 = [(UGCCallToActionViewProvider *)self mapItem];
    v9 = [v8 _muid];

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
    v14 = v4;
    [(UGCSubmissionLookupManager *)v12 fetchSubmissionWithICloudIDFor:v9 completion:v13];

    objc_destroyWeak(&v15);
    objc_destroyWeak(&location);
  }
}

- (void)_updateWithPOIEnrichment:(id)a3
{
  v23 = a3;
  dispatch_assert_queue_V2(&_dispatch_main_q);
  v4 = [v23 scorecard];
  v5 = [v4 hasRecommended];

  if (v5)
  {
    v6 = [v23 scorecard];
    if ([v6 recommended])
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

  v8 = [v23 images];
  -[UGCCallToActionViewProvider setNumberOfPhotosAddedForSubmission:](self, "setNumberOfPhotosAddedForSubmission:", [v8 count]);

  v9 = [v23 images];
  v10 = [v9 firstObject];

  v11 = [(UGCCallToActionViewProvider *)self firstPhotoURL];
  v12 = v11 | v10;

  if (v12)
  {
    v13 = [(UGCCallToActionViewProvider *)self firstPhotoURL];
    v14 = [v13 absoluteString];
    v15 = [v10 url];
    v16 = [v14 isEqual:v15];

    if ((v16 & 1) == 0)
    {
      v17 = [v10 url];
      v18 = [NSURL URLWithString:v17];
      [(UGCCallToActionViewProvider *)self setFirstPhotoURL:v18];

      v19 = [v10 imageId];
      [(UGCCallToActionViewProvider *)self setFirstPhotoID:v19];

      WeakRetained = objc_loadWeakRetained(&self->_delegate);
      v21 = [(UGCCallToActionViewProvider *)self firstPhotoURL];
      v22 = [v10 imageId];
      [WeakRetained callToActionViewProviderDidUpdateWithPreferredUserUploadedPhoto:v21 photoID:v22 numberOfPhotos:{-[UGCCallToActionViewProvider numberOfPhotosAddedForSubmission](self, "numberOfPhotosAddedForSubmission")}];
    }
  }
}

- (void)_handleLookupSubmissionCompletion:(id)a3 lookupError:(id)a4
{
  v5 = a3;
  [(UGCCallToActionViewProvider *)self setLookupResult:v5];
  if ([v5 status] == 1)
  {
    v6 = [v5 previousSubmission];
    [(UGCCallToActionViewProvider *)self _updateWithPOIEnrichment:v6];

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

- (void)refineUserSubmissionForMapItem:(id)a3
{
  v4 = a3;
  dispatch_assert_queue_V2(&_dispatch_main_q);
  [(UGCSubmissionLookupManager *)self->_lookupManager cancelIfNeeded];
  v5 = objc_alloc_init(_TtC4Maps26UGCSubmissionLookupManager);
  lookupManager = self->_lookupManager;
  self->_lookupManager = v5;

  if (MapsFeature_IsEnabled_ARPCommunityID())
  {
    objc_initWeak(&location, self);
    v7 = self->_lookupManager;
    v8 = [v4 _muid];
    v9 = [v4 _geoMapItem];
    v10 = [v9 _identifierHistory];
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_100CB7378;
    v16[3] = &unk_101654F50;
    objc_copyWeak(&v17, &location);
    [(UGCSubmissionLookupManager *)v7 fetchSubmissionWithCommunityIDAndICloudIDFor:v8 identifierHistory:v10 completion:v16];

    v11 = &v17;
  }

  else
  {
    objc_initWeak(&location, self);
    v12 = self->_lookupManager;
    v13 = [v4 _muid];
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_100CB7450;
    v14[3] = &unk_101654F50;
    objc_copyWeak(&v15, &location);
    [(UGCSubmissionLookupManager *)v12 fetchSubmissionWithICloudIDFor:v13 completion:v14];
    v11 = &v15;
  }

  objc_destroyWeak(v11);
  objc_destroyWeak(&location);
}

- (void)updateWithFetchedLookupResult:(id)a3
{
  v4 = a3;
  dispatch_assert_queue_V2(&_dispatch_main_q);
  if ([v4 status] == 1)
  {
    [(UGCCallToActionViewProvider *)self cancel];
    [(UGCCallToActionViewProvider *)self setHasUserAlreadyRatedThisPlace:1];
    [(UGCCallToActionViewProvider *)self setLookupResult:v4];
    v5 = [v4 previousSubmission];
    [(UGCCallToActionViewProvider *)self _updateWithPOIEnrichment:v5];

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

- (void)_resolveForEditWithCompletion:(id)a3
{
  v4 = a3;
  if (v4)
  {
    objc_initWeak(location, self);
    v5 = [(MKMapItem *)self->_mapItem _muid];
    v6 = [(MKMapItem *)self->_mapItem _geoMapItem];
    v7 = [v6 _identifierHistory];
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_100CB790C;
    v8[3] = &unk_101650298;
    v9 = v4;
    objc_copyWeak(&v10, location);
    [UGCReviewedPlaceManager fetchReviewedPlaceForMUID:v5 withIdentifierHistory:v7 completion:v8];

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

- (void)setAlwaysRefinesUserSubmission:(BOOL)a3
{
  if (self->_alwaysRefinesUserSubmission != a3)
  {
    self->_alwaysRefinesUserSubmission = a3;
    [(UGCCallToActionViewProvider *)self _restart];
  }
}

- (void)setMapItem:(id)a3
{
  v5 = a3;
  if (self->_mapItem != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_mapItem, a3);
    [(UGCCallToActionViewProvider *)self _restart];
    v5 = v6;
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
      v4 = [(UGCCallToActionViewProvider *)self currentRatingCategoryState];
      if (v4 == 2)
      {
        v5 = 2;
      }

      else
      {
        v5 = v4 == 1;
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
  v4 = [v3 submissionManager];
  [v4 removeObserver:self];

  v5.receiver = self;
  v5.super_class = UGCCallToActionViewProvider;
  [(UGCCallToActionViewProvider *)&v5 dealloc];
}

- (UGCCallToActionViewProvider)initWithDelegate:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = UGCCallToActionViewProvider;
  v5 = [(UGCCallToActionViewProvider *)&v10 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_delegate, v4);
    v7 = +[UIApplication sharedMapsDelegate];
    v8 = [v7 submissionManager];
    [v8 addObserver:v6];
  }

  return v6;
}

@end