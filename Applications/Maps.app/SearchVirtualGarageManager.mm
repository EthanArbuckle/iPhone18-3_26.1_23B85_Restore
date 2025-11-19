@interface SearchVirtualGarageManager
+ (id)sharedSearchVirtualGarageManager;
- (SearchVirtualGarageManager)init;
- (VGVirtualGarage)virtualGarage;
- (id)updatedTraitsForCurrentGarageState:(id)a3;
- (void)dealloc;
- (void)setVirtualGarage:(id)a3;
- (void)virtualGarageDidBecomeAvailable;
@end

@implementation SearchVirtualGarageManager

+ (id)sharedSearchVirtualGarageManager
{
  if (qword_10195E8F0 != -1)
  {
    dispatch_once(&qword_10195E8F0, &stru_10163BF50);
  }

  v3 = qword_10195E8E8;

  return v3;
}

- (SearchVirtualGarageManager)init
{
  v9.receiver = self;
  v9.super_class = SearchVirtualGarageManager;
  v2 = [(SearchVirtualGarageManager *)&v9 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_create("SearchVirtualGarageManager.isolationQueue", v3);
    isolationQueue = v2->_isolationQueue;
    v2->_isolationQueue = v4;

    v6 = +[VGVirtualGarageService sharedService];
    [v6 registerObserver:v2];

    v7 = +[NSNotificationCenter defaultCenter];
    [v7 addObserver:v2 selector:"virtualGarageDidBecomeAvailable" name:@"VirtualGarageAvailableNotification" object:0];
  }

  return v2;
}

- (void)virtualGarageDidBecomeAvailable
{
  v3 = [(SearchVirtualGarageManager *)self virtualGarage];
  if (v3)
  {
  }

  else if (MapsFeature_IsEnabled_EVRouting() & 1) != 0 || (MapsFeature_IsEnabled_Alberta())
  {
    v4 = sub_100022C48();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      LOWORD(buf[0]) = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "[SearchVirtualGarageManager] fetching garage", buf, 2u);
    }

    objc_initWeak(buf, self);
    v5 = +[VGVirtualGarageService sharedService];
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_100035368;
    v6[3] = &unk_101655840;
    objc_copyWeak(&v7, buf);
    [v5 virtualGarageGetGarageWithReply:v6];

    objc_destroyWeak(&v7);
    objc_destroyWeak(buf);
  }
}

- (VGVirtualGarage)virtualGarage
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = sub_100B9D704;
  v12 = sub_100B9D714;
  v13 = 0;
  isolationQueue = self->_isolationQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100024C54;
  block[3] = &unk_101661600;
  block[4] = self;
  block[5] = &v8;
  dispatch_sync(isolationQueue, block);
  if (!v9[5] && ((MapsFeature_IsEnabled_EVRouting() & 1) != 0 || MapsFeature_IsEnabled_Alberta()))
  {
    v3 = sub_100022C48();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "[SearchVirtualGarageManager] using nil garage", v6, 2u);
    }
  }

  v4 = v9[5];
  _Block_object_dispose(&v8, 8);

  return v4;
}

- (id)updatedTraitsForCurrentGarageState:(id)a3
{
  v3 = a3;
  [v3 clearEvChargingPorts];
  [v3 clearPreferredBrands];
  v4 = +[SearchVirtualGarageManager sharedSearchVirtualGarageManager];
  v5 = [v4 virtualGarage];

  v6 = [v5 selectedVehicle];
  v7 = ([v3 navigating] & 1) != 0 || objc_msgSend(v3, "searchOriginationType") == 1 || objc_msgSend(v3, "searchOriginationType") == 2;
  v8 = +[MapsExternalDevice sharedInstance];
  v9 = [v8 isConnected];

  if (v6 && ((v7 | v9) & 1) != 0)
  {
    v10 = [v6 updatedTraitsFrom:v3];

    v3 = v10;
  }

  else
  {
    v11 = [v5 vehicles];

    if (v11)
    {
      v24 = +[NSMutableSet set];
      v31 = 0u;
      v32 = 0u;
      v33 = 0u;
      v34 = 0u;
      obj = [v5 vehicles];
      v12 = [obj countByEnumeratingWithState:&v31 objects:v35 count:16];
      if (v12)
      {
        v13 = v12;
        v14 = 0;
        v15 = *v32;
        do
        {
          for (i = 0; i != v13; i = i + 1)
          {
            if (*v32 != v15)
            {
              objc_enumerationMutation(obj);
            }

            v17 = *(*(&v31 + 1) + 8 * i);
            v18 = [v17 evChargingPorts];
            v29[0] = _NSConcreteStackBlock;
            v29[1] = 3221225472;
            v29[2] = sub_10088CBF4;
            v29[3] = &unk_10162CAC8;
            v19 = v3;
            v20 = v3;
            v30 = v20;
            [v18 enumerateObjectsUsingBlock:v29];

            v21 = [v17 preferredChargingNetworks];
            v27[0] = _NSConcreteStackBlock;
            v27[1] = 3221225472;
            v27[2] = sub_10088CC00;
            v27[3] = &unk_10162CAF0;
            v28 = v24;
            [v21 enumerateObjectsUsingBlock:v27];

            if (!(v14 & 1 | (([v17 isLPRWithElectricEngine] & 1) == 0)))
            {
              [v20 addEngineType:3];
              v14 = 1;
            }

            v3 = v19;
          }

          v13 = [obj countByEnumeratingWithState:&v31 objects:v35 count:16];
        }

        while (v13);
      }

      v25[0] = _NSConcreteStackBlock;
      v25[1] = 3221225472;
      v25[2] = sub_10088CC6C;
      v25[3] = &unk_10162CB18;
      v3 = v3;
      v26 = v3;
      [v24 enumerateObjectsUsingBlock:v25];
    }
  }

  return v3;
}

- (void)dealloc
{
  v3 = +[VGVirtualGarageService sharedService];
  [v3 unregisterObserver:self];

  v4.receiver = self;
  v4.super_class = SearchVirtualGarageManager;
  [(SearchVirtualGarageManager *)&v4 dealloc];
}

- (void)setVirtualGarage:(id)a3
{
  v4 = a3;
  isolationQueue = self->_isolationQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100B9D6F8;
  v7[3] = &unk_101661A90;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(isolationQueue, v7);
}

@end