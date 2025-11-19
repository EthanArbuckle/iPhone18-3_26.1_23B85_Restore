@interface MapsActivityController
- (MapsActivityController)init;
- (MapsActivityControllerDelegate)delegate;
- (id)_cleanArray:(id)a3;
- (id)_cleanDictionary:(id)a3;
- (id)_mapsUserActivity;
- (id)mapsUserActivityForStateRestoration;
- (void)_updateUserActivity;
- (void)_updateUserActivityWithMapsActivityAtFullFidelity:(id)a3 atCompactFidelity:(id)a4 title:(id)a5 expirationDate:(id)a6;
- (void)archiveMapsActivity;
- (void)setNeedsUserActivityUpdate;
- (void)userActivityWillSave:(id)a3;
- (void)writeCurrentState:(id)a3;
@end

@implementation MapsActivityController

- (MapsActivityController)init
{
  v12.receiver = self;
  v12.super_class = MapsActivityController;
  v2 = [(MapsActivityController *)&v12 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_attr_make_with_qos_class(v3, QOS_CLASS_USER_INITIATED, 0);

    v5 = dispatch_queue_create("com.apple.MapsActivity", v4);
    accessQueue = v2->_accessQueue;
    v2->_accessQueue = v5;

    v7 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v8 = dispatch_queue_attr_make_with_qos_class(v7, QOS_CLASS_BACKGROUND, 0);

    v9 = dispatch_queue_create("com.apple.MapsActivity.Logging", v8);
    loggingQueue = v2->_loggingQueue;
    v2->_loggingQueue = v9;
  }

  return v2;
}

- (void)setNeedsUserActivityUpdate
{
  if (self->_needToWaitForHandoff)
  {
    v3 = 1;
  }

  else
  {
    [(MapsActivityController *)self _maps_setNeedsUpdateWithSelector:"_updateUserActivity"];
    v3 = 0;
  }

  self->_needToUpdateHandoff = v3;
}

- (void)_updateUserActivity
{
  [(MapsActivityController *)self _maps_setNeedsUpdate:0 withSelector:a2];
  v3 = [(MapsActivityController *)self delegate];
  v4 = [v3 mapsActivityWithFidelity:268435439];

  v5 = [(MapsActivityController *)self delegate];
  v6 = [v5 mapsActivityWithFidelity:268435407];

  if (v4 && v6)
  {
    v7 = [v4 name];
    v8 = [NSDate dateWithTimeIntervalSinceNow:3600.0];
    v23[0] = @"f";
    v23[1] = @"c";
    v24[0] = v4;
    v24[1] = v6;
    v23[2] = @"t";
    v23[3] = @"x";
    v24[2] = v7;
    v24[3] = v8;
    v9 = [NSDictionary dictionaryWithObjects:v24 forKeys:v23 count:4];
    v10 = [(MapsActivityController *)self delegate];
    v11 = [v10 appCoordinator];
    v12 = [v11 baseActionCoordinator];
    v13 = [v12 currentMapItem];

    if (v13)
    {
      v14 = [v9 mutableCopy];
      [v14 setObject:v13 forKeyedSubscript:@"m"];
      v15 = [v14 copy];

      v9 = v15;
    }

    [(MapsActivityController *)self set_cachedMapsActivityDataDictionary:v9];
    accessQueue = self->_accessQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100028624;
    block[3] = &unk_101661A90;
    v17 = v7;
    v21 = v17;
    v22 = self;
    dispatch_async(accessQueue, block);
    v18 = +[NSUserDefaults standardUserDefaults];
    v19 = [v18 BOOLForKey:@"__internal__EnableTestMode"];

    if (v19)
    {
      [(MapsActivityController *)self writeCurrentState:v4];
    }
  }
}

- (MapsActivityControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (id)_mapsUserActivity
{
  mapsUserActivity = self->_mapsUserActivity;
  if (!mapsUserActivity)
  {
    v4 = [[NSUserActivity alloc] initWithActivityType:@"com.apple.Maps"];
    v5 = self->_mapsUserActivity;
    self->_mapsUserActivity = v4;

    [(NSUserActivity *)self->_mapsUserActivity setDelegate:self];
    [(NSUserActivity *)self->_mapsUserActivity setEligibleForHandoff:1];
    [(NSUserActivity *)self->_mapsUserActivity setEligibleForPublicIndexing:0];
    [(NSUserActivity *)self->_mapsUserActivity setEligibleForSearch:0];
    mapsUserActivity = self->_mapsUserActivity;
  }

  return mapsUserActivity;
}

- (void)writeCurrentState:(id)a3
{
  v4 = a3;
  if (qword_10195F0A8 != -1)
  {
    dispatch_once(&qword_10195F0A8, &stru_101651B90);
  }

  if (qword_10195F0A0)
  {
    v5 = [v4 dictionaryRepresentation];
    v6 = [(MapsActivityController *)self _cleanDictionary:v5];

    v16 = 0;
    v7 = [NSJSONSerialization dataWithJSONObject:v6 options:1 error:&v16];
    v8 = v16;
    if (v8)
    {
      v9 = v8;
      v10 = sub_100028730();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        v11 = [v9 description];
        *buf = 138412290;
        v18 = v11;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "_writeCurrentState invalid json %@", buf, 0xCu);
      }
    }

    else
    {
      v10 = [[NSString alloc] initWithData:v7 encoding:4];
      v12 = [NSURL fileURLWithPath:qword_10195F0A0];
      v15 = 0;
      [v10 writeToURL:v12 atomically:1 encoding:4 error:&v15];
      v9 = v15;

      if (v9)
      {
        v13 = sub_100028730();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
        {
          v14 = [v9 description];
          *buf = 138412290;
          v18 = v14;
          _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
        }
      }
    }
  }
}

- (id)_cleanArray:(id)a3
{
  v4 = a3;
  v5 = +[NSMutableArray array];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v17;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v17 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v16 + 1) + 8 * i);
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v12 = [(MapsActivityController *)self _cleanDictionary:v11];
LABEL_11:
            v13 = v12;
            [v5 addObject:{v12, v16}];

            continue;
          }

          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v12 = [(MapsActivityController *)self _cleanArray:v11];
            goto LABEL_11;
          }

          [v5 addObject:{v11, v16}];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v8);
  }

  v14 = [v5 copy];

  return v14;
}

- (id)_cleanDictionary:(id)a3
{
  v4 = [a3 mutableCopy];
  v5 = [v4 allKeys];
  v6 = [v5 copy];

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v7 = v6;
  v8 = [v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v19;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v19 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v18 + 1) + 8 * i);
        v13 = [v4 objectForKeyedSubscript:{v12, v18}];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [v4 removeObjectForKey:v12];
          goto LABEL_13;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v14 = [(MapsActivityController *)self _cleanDictionary:v13];
        }

        else
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            goto LABEL_13;
          }

          v14 = [(MapsActivityController *)self _cleanArray:v13];
        }

        v15 = v14;
        [v4 setObject:v14 forKeyedSubscript:v12];

LABEL_13:
      }

      v9 = [v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v9);
  }

  v16 = [v4 copy];

  return v16;
}

- (void)archiveMapsActivity
{
  v3 = sub_100028730();
  v4 = os_signpost_id_generate(v3);

  v5 = sub_100028730();
  v6 = v5;
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v5))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v6, OS_SIGNPOST_INTERVAL_BEGIN, v4, "Archive", "", buf, 2u);
  }

  v7 = +[NSUUID UUID];
  v8 = [v7 UUIDString];

  v33[0] = _NSConcreteStackBlock;
  v33[1] = 3221225472;
  v33[2] = sub_100D34B64;
  v33[3] = &unk_101661A90;
  v33[4] = self;
  v9 = v8;
  v34 = v9;
  v10 = objc_retainBlock(v33);
  if (+[NSThread isMainThread])
  {
    (v10[2])(v10);
  }

  else
  {
    dispatch_async(&_dispatch_main_q, v10);
  }

  v11 = [(MapsActivityController *)self delegate];
  v12 = [v11 mapsActivity];

  v13 = [v12 displayOptions];
  v14 = [v13 hasCamera];

  if (v14)
  {
    v15 = [v12 displayOptions];
    v16 = [v15 camera];

    v17 = [v16 data];
    if (v17)
    {
      v18 = +[NSUserDefaults __maps_groupUserDefaults];
      [v18 setObject:v17 forKey:@"MapsLastActivityCamera"];
    }
  }

  v19 = [v12 displayOptions];
  v20 = [v19 hasMapType];

  if (v20)
  {
    v21 = [v12 displayOptions];
    v22 = [v21 mapType];

    v23 = +[NSUserDefaults __maps_groupUserDefaults];
    [v23 setInteger:v22 forKey:@"MapsLastActivityMapType"];
  }

  v24 = sub_100028730();
  if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v36 = v9;
    _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_INFO, "Archiving MapsActivity (tag %@)", buf, 0xCu);
  }

  loggingQueue = self->_loggingQueue;
  v30[0] = _NSConcreteStackBlock;
  v30[1] = 3221225472;
  v30[2] = sub_100D34D10;
  v30[3] = &unk_101661A90;
  v31 = v9;
  v32 = v12;
  v26 = v12;
  v27 = v9;
  dispatch_async(loggingQueue, v30);
  v28 = sub_100028730();
  v29 = v28;
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v28))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v29, OS_SIGNPOST_INTERVAL_END, v4, "Archive", "", buf, 2u);
  }
}

- (void)userActivityWillSave:(id)a3
{
  v4 = a3;
  accessQueue = self->_accessQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100D34E5C;
  v7[3] = &unk_101661A90;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_sync(accessQueue, v7);
}

- (void)_updateUserActivityWithMapsActivityAtFullFidelity:(id)a3 atCompactFidelity:(id)a4 title:(id)a5 expirationDate:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = objc_alloc_init(NSMutableDictionary);
  v15 = [(MapsActivityController *)self _mapsUserActivity];
  v16 = [v10 bzip2CompressedData];
  if ([v16 length] >= 0x2329)
  {
    v17 = [v11 bzip2DataByIterativelyReducingIfNeeded];

    v16 = v17;
  }

  if (v16)
  {
    [v14 setObject:v16 forKeyedSubscript:@"bs"];
  }

  [v15 setTitle:v12];
  [v15 setExpirationDate:v13];

  [v15 setRequiredUserInfoKeys:0];
  [v15 setUserInfo:v14];
  [v15 setEligibleForSearch:{objc_msgSend(v10, "shouldIndex")}];
  [v15 setEligibleForPrediction:0];
  v18 = [v10 mapsSiriAction];
  if (v18)
  {
    v34 = v14;
    v36 = v11;
    v19 = sub_100028730();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      v20 = [v18 title];
      *buf = 138477827;
      v39 = v20;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_INFO, "Created Siri Action for '%{private}@'", buf, 0xCu);
    }

    v21 = v12;

    v22 = [v18 userInfo];
    v23 = [v22 mutableCopy];

    if (v16)
    {
      [v23 setObject:v16 forKeyedSubscript:@"bs"];
    }

    v24 = [v18 title];
    [v15 setTitle:v24];

    [v15 setUserInfo:v23];
    v25 = [NSSet alloc];
    v26 = [v18 userInfo];
    v27 = [v26 allKeys];
    v28 = [v25 initWithArray:v27];
    [v15 setRequiredUserInfoKeys:v28];

    [v15 setEligibleForPrediction:1];
    v12 = v21;
    v14 = v35;
    v11 = v37;
  }

  v29 = [(MapsActivityController *)self _cachedMapsActivityDataDictionary];
  v30 = [v29 objectForKeyedSubscript:@"m"];

  [v15 setContentAttributeSet:0];
  if (v30)
  {
    v31 = sub_100028730();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
    {
      v32 = [v30 name];
      *buf = 138477827;
      v39 = v32;
      _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_INFO, "Add App Donation for '%{private}@'", buf, 0xCu);
    }

    [v15 _mapkit_populateFieldsForDonationOfMapItem:v30];
    v33 = [v30 _fullSharingURLIncludingSensitiveFields:1];
    [v15 setWebpageURL:v33];
  }

  else
  {
    [v15 _mapkit_clearMapItemDonationFields];
  }
}

- (id)mapsUserActivityForStateRestoration
{
  v2 = [(MapsActivityController *)self delegate];
  v3 = [v2 mapsActivity];
  v4 = [v3 data];

  v5 = +[NSDate date];
  v6 = [[NSUserActivity alloc] initWithActivityType:@"com.apple.Maps.Restore"];
  v9[0] = @"MapsActivity";
  v9[1] = @"MapsActivityTimestamp";
  v10[0] = v4;
  v10[1] = v5;
  v7 = [NSDictionary dictionaryWithObjects:v10 forKeys:v9 count:2];
  [v6 setUserInfo:v7];

  return v6;
}

@end