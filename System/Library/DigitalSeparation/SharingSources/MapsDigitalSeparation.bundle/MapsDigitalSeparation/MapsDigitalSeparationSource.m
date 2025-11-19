@interface MapsDigitalSeparationSource
- (BOOL)_shouldReportSharedTripServiceError:(id)a3;
- (void)_didFetchSharedResources:(id)a3 withErrors:(id)a4 completion:(id)a5;
- (void)_fetchActiveSharedTripWithCompletion:(id)a3;
- (void)_fetchFavoritesWithCompletion:(id)a3;
- (void)_fetchFavoritesWithStore:(id)a3 withCompletion:(id)a4;
- (void)_performOperationsInParallelForSharing:(id)a3 favorites:(id)a4 completion:(id)a5;
- (void)fetchSharedResourcesWithCompletion:(id)a3;
- (void)stopAllSharingWithCompletion:(id)a3;
- (void)stopSharing:(id)a3 withCompletion:(id)a4;
- (void)stopSharingWithParticipant:(id)a3 completion:(id)a4;
@end

@implementation MapsDigitalSeparationSource

- (void)fetchSharedResourcesWithCompletion:(id)a3
{
  v4 = a3;
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
    v22 = v4;
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
    (*(v4 + 2))(v4, &__NSArray0__struct, v16);
  }
}

- (void)_didFetchSharedResources:(id)a3 withErrors:(id)a4 completion:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [v8 count];
  v11 = sub_47FC();
  v12 = v11;
  if (v10)
  {
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v18 = 134218242;
      v19 = [v7 count];
      v20 = 2114;
      v21 = v8;
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
    v19 = [v7 count];
    v13 = "Fetched %lu resources";
    v14 = v12;
    v15 = OS_LOG_TYPE_INFO;
    v16 = 12;
    goto LABEL_6;
  }

  v17 = [v8 firstObject];
  v9[2](v9, v7, v17);
}

- (void)stopSharing:(id)a3 withCompletion:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (!self->_mapsIsInstalled)
  {
    v9 = sub_47FC();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 138477827;
      v19 = v6;
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

    [(__CFString *)v6 _ds_stopSharingWithCompletion:v7];
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

    v12 = v6;
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
    v19 = v6;
    _os_log_impl(&dword_0, v9, OS_LOG_TYPE_INFO, "Will stop sharing in Favorite %{private}@...", buf, 0xCu);
  }

  [(__CFString *)v6 _ds_stopSharing];
LABEL_9:
}

- (void)stopSharingWithParticipant:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  mapsIsInstalled = self->_mapsIsInstalled;
  v9 = sub_47FC();
  v10 = v9;
  if (mapsIsInstalled)
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      *buf = 138477827;
      v19 = v6;
      _os_log_impl(&dword_0, v10, OS_LOG_TYPE_INFO, "Will stop sharing with participant '%{private}@'...", buf, 0xCu);
    }

    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_50FC;
    v16[3] = &unk_CE70;
    v17 = v6;
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_5264;
    v14[3] = &unk_CE98;
    v15 = v17;
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_542C;
    v12[3] = &unk_CEC0;
    v13 = v7;
    [(MapsDigitalSeparationSource *)self _performOperationsInParallelForSharing:v16 favorites:v14 completion:v12];

    v11 = v17;
  }

  else
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 138477827;
      v19 = v6;
      _os_log_impl(&dword_0, v10, OS_LOG_TYPE_ERROR, "Cannot stop sharing with participant %{private}@, Maps is not installed", buf, 0xCu);
    }

    v11 = [NSError errorWithDomain:DSSourceNameMaps code:0 userInfo:0];
    (*(v7 + 2))(v7, v11);
  }
}

- (void)stopAllSharingWithCompletion:(id)a3
{
  v4 = a3;
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
    v10 = v4;
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
    (*(v4 + 2))(v4, v8);
  }
}

- (void)_fetchFavoritesWithCompletion:(id)a3
{
  v4 = a3;
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

    [(MapsDigitalSeparationSource *)self _fetchFavoritesWithStore:self->_store withCompletion:v4];
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
    v9 = v4;
    [_TtC8MapsSync13MapsSyncStore withDefaultStoreWithBlock:v8];
  }
}

- (void)_fetchActiveSharedTripWithCompletion:(id)a3
{
  v4 = a3;
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
  v9 = v4;
  v7 = v4;
  [v6 performBlockAfterInitialConnection:v8];
}

- (BOOL)_shouldReportSharedTripServiceError:(id)a3
{
  v3 = a3;
  v4 = [v3 code] == &dword_0 + 1 || objc_msgSend(v3, "code") == &dword_14 + 2 || objc_msgSend(v3, "code") == &dword_0 + 3;

  return v4;
}

- (void)_fetchFavoritesWithStore:(id)a3 withCompletion:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [_TtC8MapsSync20MapsSyncQueryOptions alloc];
  v8 = [_TtC8MapsSync22MapsSyncQueryPredicate queryPredicateWithFormat:@"contactHandles.@count != 0" argumentArray:0];
  v9 = [v7 initWithPredicate:v8 sortDescriptors:0 range:0];

  v10 = [[MSFavoriteItemRequest alloc] initWithStore:v6];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_62B4;
  v12[3] = &unk_CFE0;
  v13 = v5;
  v11 = v5;
  [v10 fetchWithOptions:v9 completionHandler:v12];
}

- (void)_performOperationsInParallelForSharing:(id)a3 favorites:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
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
  v32 = v8;
  v15 = v8;
  [(MapsDigitalSeparationSource *)self _fetchActiveSharedTripWithCompletion:v29];
  dispatch_group_enter(v14);
  v24[0] = _NSConcreteStackBlock;
  v24[1] = 3221225472;
  v24[2] = sub_6690;
  v24[3] = &unk_D030;
  v16 = v13;
  v25 = v16;
  v26 = v14;
  v27 = self;
  v28 = v9;
  v17 = v9;
  v18 = v14;
  [(MapsDigitalSeparationSource *)self _fetchFavoritesWithCompletion:v24];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_6700;
  block[3] = &unk_D058;
  v22 = v16;
  v23 = v10;
  v19 = v10;
  v20 = v16;
  dispatch_group_notify(v18, &_dispatch_main_q, block);
}

@end