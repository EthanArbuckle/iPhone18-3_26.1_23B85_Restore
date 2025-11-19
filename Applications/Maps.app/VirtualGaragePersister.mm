@interface VirtualGaragePersister
- (NSString)selectedVehicleIdentifier;
- (VGVirtualGaragePersistingDelegate)delegate;
- (VirtualGaragePersister)init;
- (id)_processUpdatedSyncVehicles:(id)a3;
- (id)persistedVehicleForVehicle:(id)a3;
- (void)_addOrEditVehicle:(id)a3;
- (void)_removeSyncVehicle:(id)a3;
- (void)addVehicle:(id)a3;
- (void)loadVehiclesWithCompletion:(id)a3;
- (void)removeVehicle:(id)a3;
- (void)saveVehicle:(id)a3 syncAcrossDevices:(BOOL)a4;
- (void)setSelectedVehicleIdentifier:(id)a3;
- (void)storeDidChange:(id)a3;
@end

@implementation VirtualGaragePersister

- (VGVirtualGaragePersistingDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)storeDidChange:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100690590;
  v5[3] = &unk_10165F290;
  objc_copyWeak(&v6, &location);
  [(VirtualGaragePersister *)self loadVehiclesWithCompletion:v5];
  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);
}

- (id)_processUpdatedSyncVehicles:(id)a3
{
  v4 = a3;
  v17 = objc_opt_new();
  v5 = objc_opt_new();
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v18 objects:v24 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v19;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v19 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v18 + 1) + 8 * i);
        v12 = [v11 vehicleIdentifier];
        if (v12 && ([v5 containsObject:v12] & 1) == 0)
        {
          [v5 addObject:v12];
          v14 = [[VGVehicle alloc] initWithMapsSyncVehicle:v11];
          [v17 addObject:v14];
        }

        else
        {
          v13 = GEOFindOrCreateLog();
          if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v23 = v11;
            _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "Discard duplicate vehicle: %@", buf, 0xCu);
          }

          [(VirtualGaragePersister *)self _removeSyncVehicle:v11];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v18 objects:v24 count:16];
    }

    while (v8);
  }

  v15 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v23 = v17;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "Loaded vehicles: %@", buf, 0xCu);
  }

  return v17;
}

- (void)_addOrEditVehicle:(id)a3
{
  v4 = a3;
  v5 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v19 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Trying to add or edit vehicle: %@", buf, 0xCu);
  }

  objc_initWeak(buf, self);
  objc_initWeak(&location, v4);
  v6 = [v4 identifier];
  v17 = v6;
  v7 = [NSArray arrayWithObjects:&v17 count:1];
  v8 = [_TtC8MapsSync22MapsSyncQueryPredicate queryPredicateWithFormat:@"vehicleIdentifier == %@" argumentArray:v7];

  v9 = [[_TtC8MapsSync20MapsSyncQueryOptions alloc] initWithPredicate:v8 sortDescriptors:0 range:0];
  v10 = objc_alloc_init(MSVehicleRequest);
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100690AE0;
  v12[3] = &unk_101625C60;
  objc_copyWeak(&v14, buf);
  objc_copyWeak(&v15, &location);
  v11 = v4;
  v13 = v11;
  [v10 fetchWithOptions:v9 completionHandler:v12];

  objc_destroyWeak(&v15);
  objc_destroyWeak(&v14);

  objc_destroyWeak(&location);
  objc_destroyWeak(buf);
}

- (NSString)selectedVehicleIdentifier
{
  v2 = +[NSUserDefaults standardUserDefaults];
  v3 = [v2 objectForKey:@"VGVirtualGarageSelectedVehicleStorageKey"];

  return v3;
}

- (void)setSelectedVehicleIdentifier:(id)a3
{
  v3 = a3;
  v4 = +[NSUserDefaults standardUserDefaults];
  [v4 setObject:v3 forKey:@"VGVirtualGarageSelectedVehicleStorageKey"];
}

- (id)persistedVehicleForVehicle:(id)a3
{
  v4 = a3;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = self->_lastPersistedVehicles;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = *v15;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        v10 = [v9 identifier];
        v11 = [v4 identifier];
        v12 = [v10 isEqual:v11];

        if (v12)
        {
          v6 = v9;
          goto LABEL_11;
        }
      }

      v6 = [(NSArray *)v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v6;
}

- (void)saveVehicle:(id)a3 syncAcrossDevices:(BOOL)a4
{
  v6 = a3;
  v7 = GEOFindOrCreateLog();
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_INFO);
  if (a4)
  {
    if (v8)
    {
      *buf = 138412290;
      v15 = v6;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "Trying to save vehicle: %@", buf, 0xCu);
    }

    v9 = [v6 copy];
    objc_initWeak(buf, self);
    queue = self->_queue;
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_100691A90;
    v11[3] = &unk_101661340;
    objc_copyWeak(&v13, buf);
    v6 = v9;
    v12 = v6;
    dispatch_async(queue, v11);

    objc_destroyWeak(&v13);
    objc_destroyWeak(buf);
  }

  else
  {
    if (v8)
    {
      *buf = 138412290;
      v15 = v6;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "Persister won't save vehicle, as we don't want it to sync: %@", buf, 0xCu);
    }
  }
}

- (void)_removeSyncVehicle:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    queue = self->_queue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100691C28;
    block[3] = &unk_101661B18;
    v10 = v4;
    dispatch_async(queue, block);
    v7 = v10;
  }

  else
  {
    v7 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = [0 identifier];
      *buf = 138412290;
      v12 = v8;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "Vehicle: %@ not found in MapsSync storage. Ignoring the call.", buf, 0xCu);
    }
  }
}

- (void)removeVehicle:(id)a3
{
  v4 = a3;
  v5 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v13 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Trying to remove vehicle: %@", buf, 0xCu);
  }

  v6 = [v4 copy];
  objc_initWeak(buf, self);
  queue = self->_queue;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100691FD8;
  v9[3] = &unk_101661340;
  v10 = v6;
  v8 = v6;
  objc_copyWeak(&v11, buf);
  dispatch_async(queue, v9);
  objc_destroyWeak(&v11);

  objc_destroyWeak(buf);
}

- (void)addVehicle:(id)a3
{
  v4 = a3;
  v5 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v13 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Trying to add vehicle: %@", buf, 0xCu);
  }

  v6 = [v4 copy];
  objc_initWeak(buf, self);
  queue = self->_queue;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1006923D4;
  v9[3] = &unk_101661340;
  objc_copyWeak(&v11, buf);
  v10 = v6;
  v8 = v6;
  dispatch_async(queue, v9);

  objc_destroyWeak(&v11);
  objc_destroyWeak(buf);
}

- (void)loadVehiclesWithCompletion:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  v5 = objc_alloc_init(MSVehicleRequest);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100692524;
  v7[3] = &unk_10165E308;
  objc_copyWeak(&v9, &location);
  v6 = v4;
  v8 = v6;
  [v5 fetchWithCompletionHandler:v7];

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

- (VirtualGaragePersister)init
{
  v12.receiver = self;
  v12.super_class = VirtualGaragePersister;
  v2 = [(VirtualGaragePersister *)&v12 init];
  if (v2)
  {
    v3 = [NSString stringWithFormat:@"com.apple.Navigation.persister.%@.%p", objc_opt_class(), v2];
    v4 = [v3 UTF8String];
    v5 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v6 = dispatch_queue_create(v4, v5);
    queue = v2->_queue;
    v2->_queue = v6;

    v8 = +[_TtC8MapsSync13MapsSyncStore sharedStore];
    [v8 subscribe:v2];

    v13 = objc_opt_class();
    v9 = [NSArray arrayWithObjects:&v13 count:1];
    storeSubscriptionTypes = v2->storeSubscriptionTypes;
    v2->storeSubscriptionTypes = v9;
  }

  return v2;
}

@end