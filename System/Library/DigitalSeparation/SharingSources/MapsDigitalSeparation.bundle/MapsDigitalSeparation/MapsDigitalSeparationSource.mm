@interface MapsDigitalSeparationSource
- (BOOL)_shouldReportSharedTripServiceError:(id)error;
- (void)_didFetchSharedResources:(id)resources withErrors:(id)errors completion:(id)completion;
- (void)_fetchActiveSharedTripWithCompletion:(id)completion;
- (void)_fetchFavoritesWithCompletion:(id)completion;
- (void)_fetchFavoritesWithStore:(id)store withCompletion:(id)completion;
- (void)_performOperationsInParallelForSharing:(id)sharing favorites:(id)favorites completion:(id)completion;
- (void)fetchSharedResourcesWithCompletion:(id)completion;
- (void)stopAllSharingWithCompletion:(id)completion;
- (void)stopSharing:(id)sharing withCompletion:(id)completion;
- (void)stopSharingWithParticipant:(id)participant completion:(id)completion;
@end

@implementation MapsDigitalSeparationSource

- (void)fetchSharedResourcesWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = +[MSPMapsInstallState isMapsAppInstalled];
  self->_mapsIsInstalled = v5;
  v6 = sub_47FC();
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_INFO);
  if (v5)
  {
    if (v7)
    {
      *buf = 0;
      _os_log_impl(&dword_0, v6, OS_LOG_TYPE_INFO, "Will fetch shared resources...", buf, 2u);
    }

    v8 = dispatch_group_create();
    v9 = objc_alloc_init(NSMutableArray);
    v10 = [[NSMutableArray alloc] initWithCapacity:2];
    dispatch_group_enter(v8);
    v27[0] = _NSConcreteStackBlock;
    v27[1] = 3221225472;
    v27[2] = sub_4840;
    v27[3] = &unk_CDD0;
    v11 = v9;
    v28 = v11;
    v12 = v10;
    v29 = v12;
    v13 = v8;
    v30 = v13;
    [(MapsDigitalSeparationSource *)self _fetchActiveSharedTripWithCompletion:v27];
    dispatch_group_enter(v13);
    v23[0] = _NSConcreteStackBlock;
    v23[1] = 3221225472;
    v23[2] = sub_4948;
    v23[3] = &unk_CDF8;
    v14 = v11;
    v24 = v14;
    v15 = v12;
    v25 = v15;
    v26 = v13;
    v16 = v13;
    [(MapsDigitalSeparationSource *)self _fetchFavoritesWithCompletion:v23];
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_4A3C;
    v19[3] = &unk_CE20;
    v19[4] = self;
    v20 = v14;
    v21 = v15;
    v22 = completionCopy;
    v17 = v15;
    v18 = v14;
    dispatch_group_notify(v16, &_dispatch_main_q, v19);
  }

  else
  {
    if (v7)
    {
      *buf = 0;
      _os_log_impl(&dword_0, v6, OS_LOG_TYPE_INFO, "Will not fetch shared resources, Maps not installed", buf, 2u);
    }

    v16 = [NSError errorWithDomain:DSSourceNameMaps code:0 userInfo:0];
    (*(completionCopy + 2))(completionCopy, &__NSArray0__struct, v16);
  }
}

- (void)_didFetchSharedResources:(id)resources withErrors:(id)errors completion:(id)completion
{
  resourcesCopy = resources;
  errorsCopy = errors;
  completionCopy = completion;
  v10 = [errorsCopy count];
  v11 = sub_47FC();
  v12 = v11;
  if (v10)
  {
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v18 = 134218242;
      v19 = [resourcesCopy count];
      v20 = 2114;
      v21 = errorsCopy;
      v13 = "Fetched %lu resources, encountered errors: %{public}@,";
      v14 = v12;
      v15 = OS_LOG_TYPE_ERROR;
      v16 = 22;
LABEL_6:
      _os_log_impl(&dword_0, v14, v15, v13, &v18, v16);
    }
  }

  else if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v18 = 134217984;
    v19 = [resourcesCopy count];
    v13 = "Fetched %lu resources";
    v14 = v12;
    v15 = OS_LOG_TYPE_INFO;
    v16 = 12;
    goto LABEL_6;
  }

  firstObject = [errorsCopy firstObject];
  completionCopy[2](completionCopy, resourcesCopy, firstObject);
}

- (void)stopSharing:(id)sharing withCompletion:(id)completion
{
  sharingCopy = sharing;
  completionCopy = completion;
  if (!self->_mapsIsInstalled)
  {
    v9 = sub_47FC();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 138477827;
      v19 = sharingCopy;
      _os_log_impl(&dword_0, v9, OS_LOG_TYPE_ERROR, "Cannot stop sharing resource %{private}@, Maps is not installed", buf, 0xCu);
    }

    goto LABEL_8;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = sub_47FC();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_0, v8, OS_LOG_TYPE_INFO, "Will stop active trip sharing...", buf, 2u);
    }

    [(__CFString *)sharingCopy _ds_stopSharingWithCompletion:completionCopy];
    goto LABEL_9;
  }

  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v11 = sub_47FC();
  v9 = v11;
  if ((isKindOfClass & 1) == 0)
  {
    if (!os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
LABEL_8:

      goto LABEL_9;
    }

    v12 = sharingCopy;
    if (!v12)
    {
      v17 = @"<nil>";
      goto LABEL_23;
    }

    v13 = objc_opt_class();
    v14 = NSStringFromClass(v13);
    if (objc_opt_respondsToSelector())
    {
      v15 = [(__CFString *)v12 performSelector:"accessibilityIdentifier"];
      v16 = v15;
      if (v15 && ![v15 isEqualToString:v14])
      {
        v17 = [NSString stringWithFormat:@"%@<%p, %@>", v14, v12, v16];

        goto LABEL_21;
      }
    }

    v17 = [NSString stringWithFormat:@"%@<%p>", v14, v12];
LABEL_21:

LABEL_23:
    *buf = 138412290;
    v19 = v17;
    _os_log_impl(&dword_0, v9, OS_LOG_TYPE_ERROR, "Asked to stop sharing with resource we don't recognise: %@", buf, 0xCu);

    goto LABEL_8;
  }

  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    *buf = 138477827;
    v19 = sharingCopy;
    _os_log_impl(&dword_0, v9, OS_LOG_TYPE_INFO, "Will stop sharing in Favorite %{private}@...", buf, 0xCu);
  }

  [(__CFString *)sharingCopy _ds_stopSharing];
LABEL_9:
}

- (void)stopSharingWithParticipant:(id)participant completion:(id)completion
{
  participantCopy = participant;
  completionCopy = completion;
  mapsIsInstalled = self->_mapsIsInstalled;
  v9 = sub_47FC();
  v10 = v9;
  if (mapsIsInstalled)
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      *buf = 138477827;
      v19 = participantCopy;
      _os_log_impl(&dword_0, v10, OS_LOG_TYPE_INFO, "Will stop sharing with participant '%{private}@'...", buf, 0xCu);
    }

    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_50FC;
    v16[3] = &unk_CE70;
    v17 = participantCopy;
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_5264;
    v14[3] = &unk_CE98;
    v15 = v17;
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_542C;
    v12[3] = &unk_CEC0;
    v13 = completionCopy;
    [(MapsDigitalSeparationSource *)self _performOperationsInParallelForSharing:v16 favorites:v14 completion:v12];

    v11 = v17;
  }

  else
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 138477827;
      v19 = participantCopy;
      _os_log_impl(&dword_0, v10, OS_LOG_TYPE_ERROR, "Cannot stop sharing with participant %{private}@, Maps is not installed", buf, 0xCu);
    }

    v11 = [NSError errorWithDomain:DSSourceNameMaps code:0 userInfo:0];
    (*(completionCopy + 2))(completionCopy, v11);
  }
}

- (void)stopAllSharingWithCompletion:(id)completion
{
  completionCopy = completion;
  mapsIsInstalled = self->_mapsIsInstalled;
  v6 = sub_47FC();
  v7 = v6;
  if (mapsIsInstalled)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_0, v7, OS_LOG_TYPE_INFO, "Will stop all sharing...", buf, 2u);
    }

    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_5A4C;
    v9[3] = &unk_CEC0;
    v10 = completionCopy;
    [(MapsDigitalSeparationSource *)self _performOperationsInParallelForSharing:&stru_CF00 favorites:&stru_CF40 completion:v9];
    v8 = v10;
  }

  else
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_0, v7, OS_LOG_TYPE_ERROR, "Cannot stop all sharing, Maps is not installed", buf, 2u);
    }

    v8 = [NSError errorWithDomain:DSSourceNameMaps code:0 userInfo:0];
    (*(completionCopy + 2))(completionCopy, v8);
  }
}

- (void)_fetchFavoritesWithCompletion:(id)completion
{
  completionCopy = completion;
  store = self->_store;
  v6 = sub_47FC();
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_INFO);
  if (store)
  {
    if (v7)
    {
      *buf = 0;
      _os_log_impl(&dword_0, v6, OS_LOG_TYPE_INFO, "Will fetch favorites from sync...", buf, 2u);
    }

    [(MapsDigitalSeparationSource *)self _fetchFavoritesWithStore:self->_store withCompletion:completionCopy];
  }

  else
  {
    if (v7)
    {
      *buf = 0;
      _os_log_impl(&dword_0, v6, OS_LOG_TYPE_INFO, "Preparing sync store for first use...", buf, 2u);
    }

    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_5C14;
    v8[3] = &unk_CF90;
    v8[4] = self;
    v9 = completionCopy;
    [_TtC8MapsSync13MapsSyncStore withDefaultStoreWithBlock:v8];
  }
}

- (void)_fetchActiveSharedTripWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = sub_47FC();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_INFO, "Will check-in with shared trip service for active sharing...", buf, 2u);
  }

  v6 = +[MSPSharedTripService sharedInstance];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_5EDC;
  v8[3] = &unk_CFB8;
  v8[4] = self;
  v9 = completionCopy;
  v7 = completionCopy;
  [v6 performBlockAfterInitialConnection:v8];
}

- (BOOL)_shouldReportSharedTripServiceError:(id)error
{
  errorCopy = error;
  v4 = [errorCopy code] == &dword_0 + 1 || objc_msgSend(errorCopy, "code") == &dword_14 + 2 || objc_msgSend(errorCopy, "code") == &dword_0 + 3;

  return v4;
}

- (void)_fetchFavoritesWithStore:(id)store withCompletion:(id)completion
{
  completionCopy = completion;
  storeCopy = store;
  v7 = [_TtC8MapsSync20MapsSyncQueryOptions alloc];
  v8 = [_TtC8MapsSync22MapsSyncQueryPredicate queryPredicateWithFormat:@"contactHandles.@count != 0" argumentArray:0];
  v9 = [v7 initWithPredicate:v8 sortDescriptors:0 range:0];

  v10 = [[MSFavoriteItemRequest alloc] initWithStore:storeCopy];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_62B4;
  v12[3] = &unk_CFE0;
  v13 = completionCopy;
  v11 = completionCopy;
  [v10 fetchWithOptions:v9 completionHandler:v12];
}

- (void)_performOperationsInParallelForSharing:(id)sharing favorites:(id)favorites completion:(id)completion
{
  sharingCopy = sharing;
  favoritesCopy = favorites;
  completionCopy = completion;
  v11 = dispatch_group_create();
  v12 = [[NSMutableArray alloc] initWithCapacity:2];
  dispatch_group_enter(v11);
  v29[0] = _NSConcreteStackBlock;
  v29[1] = 3221225472;
  v29[2] = sub_6604;
  v29[3] = &unk_D008;
  v13 = v12;
  v30 = v13;
  v14 = v11;
  v31 = v14;
  v32 = sharingCopy;
  v15 = sharingCopy;
  [(MapsDigitalSeparationSource *)self _fetchActiveSharedTripWithCompletion:v29];
  dispatch_group_enter(v14);
  v24[0] = _NSConcreteStackBlock;
  v24[1] = 3221225472;
  v24[2] = sub_6690;
  v24[3] = &unk_D030;
  v16 = v13;
  v25 = v16;
  v26 = v14;
  selfCopy = self;
  v28 = favoritesCopy;
  v17 = favoritesCopy;
  v18 = v14;
  [(MapsDigitalSeparationSource *)self _fetchFavoritesWithCompletion:v24];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_6700;
  block[3] = &unk_D058;
  v22 = v16;
  v23 = completionCopy;
  v19 = completionCopy;
  v20 = v16;
  dispatch_group_notify(v18, &_dispatch_main_q, block);
}

@end