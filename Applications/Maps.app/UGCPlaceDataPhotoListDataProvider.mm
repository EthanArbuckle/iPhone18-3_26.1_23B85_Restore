@interface UGCPlaceDataPhotoListDataProvider
- (BOOL)hasDataToShow;
- (BOOL)hasPhotosThatShouldBeObfuscatedWhenInFullScreen;
- (BOOL)hasReachedTotalCount;
- (BOOL)isAllowedToShowAddPhotoCallToAction;
- (id)attributionNames;
- (id)delegate;
- (id)initWitBatchRequester:(id)requester initialCount:(unint64_t)count batchCount:(unint64_t)batchCount totalCount:(unint64_t)totalCount albumCategory:(id)category delegate:(id)delegate;
- (id)photoList;
- (void)_failWithError:(id)error range:(_NSRange)range;
- (void)_performOnCallbackQueue:(id)queue;
- (void)_processResult:(id)result;
- (void)fetchNextBatchRequestIfNeeded;
@end

@implementation UGCPlaceDataPhotoListDataProvider

- (id)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (BOOL)isAllowedToShowAddPhotoCallToAction
{
  delegate = [(UGCPlaceDataPhotoListDataProvider *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = sub_100B5DB58;
  v13 = sub_100B5DB68;
  v14 = 0;
  geo_isolate_sync();
  if ([v10[5] count])
  {
    delegate2 = [(UGCPlaceDataPhotoListDataProvider *)self delegate];
    v6 = [delegate2 photoViewerDataProviderRequestsMapItem:self];

    v7 = [MKPOIEnrichmentAvailibility shouldShowAddPhotoButtonOnMorePhotosGalleryForMapItem:v6 usingAttributionsByProviderIds:v10[5]];
  }

  else
  {
    v7 = 0;
  }

  _Block_object_dispose(&v9, 8);

  return v7;
}

- (id)photoList
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = sub_100B5DB58;
  v10 = sub_100B5DB68;
  v11 = 0;
  serialQueue = self->_serialQueue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100B5DCD4;
  v5[3] = &unk_101661600;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(serialQueue, v5);
  v3 = [v7[5] copy];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (void)_performOnCallbackQueue:(id)queue
{
  queueCopy = queue;
  v4 = queueCopy;
  if (queueCopy)
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100B5DE04;
    block[3] = &unk_101661760;
    v6 = queueCopy;
    dispatch_async(&_dispatch_main_q, block);
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_FAULT))
  {
    *buf = 0;
    _os_log_fault_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_FAULT, "Assertion failed: completion != ((void *)0)", buf, 2u);
  }
}

- (void)_failWithError:(id)error range:(_NSRange)range
{
  length = range.length;
  location = range.location;
  errorCopy = error;
  dispatch_assert_queue_V2(self->_serialQueue);
  self->_shouldLoadNextBatch = 0;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100B5DEDC;
  v9[3] = &unk_10164C698;
  v9[4] = self;
  v10 = errorCopy;
  v11 = location;
  v12 = length;
  v8 = errorCopy;
  [(UGCPlaceDataPhotoListDataProvider *)self _performOnCallbackQueue:v9];
}

- (void)_processResult:(id)result
{
  resultCopy = result;
  dispatch_assert_queue_V2(self->_serialQueue);
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = objc_loadWeakRetained(&self->_delegate);
    v7 = [v6 photoViewerDataProviderRequestsMapItem:self];
    name = [v7 name];
  }

  else
  {
    name = &stru_1016631F0;
  }

  photos = [resultCopy photos];
  v10 = name;
  v11 = [[NSMutableArray alloc] initWithCapacity:{objc_msgSend(photos, "count")}];
  v56 = 0u;
  v57 = 0u;
  v58 = 0u;
  v59 = 0u;
  v12 = photos;
  v13 = [v12 countByEnumeratingWithState:&v56 objects:&v61 count:16];
  if (v13)
  {
    v14 = *v57;
    do
    {
      for (i = 0; i != v13; i = i + 1)
      {
        if (*v57 != v14)
        {
          objc_enumerationMutation(v12);
        }

        v16 = [[MKMapItemPhoto alloc] initWithGeoMapItemPhoto:*(*(&v56 + 1) + 8 * i) fallbackTitle:v10];
        [v11 addObject:v16];
      }

      v13 = [v12 countByEnumeratingWithState:&v56 objects:&v61 count:16];
    }

    while (v13);
  }

  v17 = [v11 copy];
  v50 = _NSConcreteStackBlock;
  v51 = 3221225472;
  v52 = sub_100B5E550;
  v53 = &unk_101661A90;
  v18 = v17;
  v54 = v18;
  selfCopy = self;
  geo_isolate_sync();
  if (self->_isLoadingFirstBatch)
  {
    self->_isLoadingFirstBatch = 0;
    indexOfTappedPhoto = self->_indexOfTappedPhoto;
    if (indexOfTappedPhoto < [v18 count])
    {
      v20 = [v18 mutableCopy];
      v21 = [v20 objectAtIndexedSubscript:self->_indexOfTappedPhoto];
      [v20 removeObjectAtIndex:self->_indexOfTappedPhoto];
      [v20 insertObject:v21 atIndex:0];
      v22 = [v20 copy];

      v18 = v22;
    }
  }

  photoList = self->_photoList;
  v24 = [v18 copy];
  [(NSMutableArray *)photoList addObjectsFromArray:v24];

  v61 = 0;
  v62 = &v61;
  v63 = 0x3032000000;
  v64 = sub_100B5DB58;
  v65 = sub_100B5DB68;
  v66 = 0;
  v44 = _NSConcreteStackBlock;
  v45 = 3221225472;
  v46 = sub_100B5E660;
  v47 = &unk_101661600;
  selfCopy2 = self;
  v49 = &v61;
  geo_isolate_sync();
  v43 = 0u;
  v41 = 0u;
  v42 = 0u;
  v40 = 0u;
  v25 = v18;
  v26 = [v25 countByEnumeratingWithState:&v40 objects:v60 count:{16, 72}];
  if (v26)
  {
    v27 = *v41;
    do
    {
      for (j = 0; j != v26; j = j + 1)
      {
        if (*v41 != v27)
        {
          objc_enumerationMutation(v25);
        }

        v29 = *(*(&v40 + 1) + 8 * j);
        attribution = [v29 attribution];
        providerID = [attribution providerID];

        if ([providerID length])
        {
          attribution2 = [v29 attribution];
          if (attribution2)
          {
            v33 = [v62[5] objectForKeyedSubscript:providerID];
            v34 = v33 == 0;

            if (v34)
            {
              v35 = v62[5];
              attribution3 = [v29 attribution];
              [v35 setObject:attribution3 forKey:providerID];
            }
          }
        }
      }

      v26 = [v25 countByEnumeratingWithState:&v40 objects:v60 count:16];
    }

    while (v26);
  }

  v39[5] = _NSConcreteStackBlock;
  v39[6] = 3221225472;
  v39[7] = sub_100B5E6B4;
  v39[8] = &unk_101661600;
  v39[9] = self;
  v39[10] = &v61;
  geo_isolate_sync();
  v37 = [(NSMutableArray *)self->_photoList count];
  self->_currentIndex = v37;
  if (v37 >= self->_totalCount)
  {
    self->_shouldLoadNextBatch = 0;
  }

  v39[0] = _NSConcreteStackBlock;
  v39[1] = 3221225472;
  v39[2] = sub_100B5E708;
  v39[3] = &unk_101661B18;
  v39[4] = self;
  [(UGCPlaceDataPhotoListDataProvider *)self _performOnCallbackQueue:v39];
  _Block_object_dispose(&v61, 8);
}

- (void)fetchNextBatchRequestIfNeeded
{
  v3 = self->_serialQueue;
  objc_initWeak(&location, self);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100B5E848;
  block[3] = &unk_101661340;
  block[4] = self;
  objc_copyWeak(&v5, &location);
  dispatch_async(v3, block);
  objc_destroyWeak(&v5);

  objc_destroyWeak(&location);
}

- (id)attributionNames
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = sub_100B5DB58;
  v10 = sub_100B5DB68;
  v11 = 0;
  geo_isolate_sync();
  allValues = [v7[5] allValues];
  v3 = sub_100021DB0(allValues, &stru_10163AAC0);

  _Block_object_dispose(&v6, 8);

  return v3;
}

- (BOOL)hasPhotosThatShouldBeObfuscatedWhenInFullScreen
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2020000000;
  v7 = 0;
  geo_isolate_sync();
  v2 = *(v5 + 24);
  _Block_object_dispose(&v4, 8);
  return v2;
}

- (BOOL)hasDataToShow
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  serialQueue = self->_serialQueue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100B5EFD0;
  v5[3] = &unk_101661600;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(serialQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (BOOL)hasReachedTotalCount
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  serialQueue = self->_serialQueue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100B5F0CC;
  v5[3] = &unk_101661600;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(serialQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (id)initWitBatchRequester:(id)requester initialCount:(unint64_t)count batchCount:(unint64_t)batchCount totalCount:(unint64_t)totalCount albumCategory:(id)category delegate:(id)delegate
{
  requesterCopy = requester;
  categoryCopy = category;
  delegateCopy = delegate;
  v31.receiver = self;
  v31.super_class = UGCPlaceDataPhotoListDataProvider;
  v18 = [(UGCPlaceDataPhotoListDataProvider *)&v31 init];
  if (v18)
  {
    v19 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v20 = dispatch_queue_create("com.apple.Maps.UGCPhotoViewerDataProviderQueue", v19);
    serialQueue = v18->_serialQueue;
    v18->_serialQueue = v20;

    v22 = objc_alloc_init(NSMutableArray);
    photoList = v18->_photoList;
    v18->_photoList = v22;

    objc_storeStrong(&v18->_batchRequester, requester);
    v18->_currentIndex = 0;
    v18->_initialCount = count;
    v18->_batchCount = batchCount;
    v18->_totalCount = totalCount;
    v18->_shouldLoadNextBatch = 1;
    v18->_isLoading = 0;
    v24 = objc_alloc_init(NSMutableDictionary);
    attributionsByVendorId = v18->_attributionsByVendorId;
    v18->_attributionsByVendorId = v24;

    objc_storeWeak(&v18->_delegate, delegateCopy);
    v18->_isLoadingFirstBatch = 1;
    v18->_indexOfTappedPhoto = 0;
    objc_storeStrong(&v18->_albumCategory, category);
    v26 = geo_isolater_create();
    attributionsByVendorIdIsolator = v18->_attributionsByVendorIdIsolator;
    v18->_attributionsByVendorIdIsolator = v26;

    v28 = geo_isolater_create();
    hasObfuscatedPhotosIsolator = v18->_hasObfuscatedPhotosIsolator;
    v18->_hasObfuscatedPhotosIsolator = v28;
  }

  return v18;
}

@end