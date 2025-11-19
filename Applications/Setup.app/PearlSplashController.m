@interface PearlSplashController
- (BFFFlowItemDelegate)delegate;
- (PearlSplashController)init;
- (id)passcodeForFaceIDViewController:(id)a3;
- (void)controllerWasPopped;
- (void)faceIDViewController:(id)a3 didCompleteWithResult:(unint64_t)a4 pushedViewControllers:(id)a5;
- (void)performExtendedInitializationWithCompletion:(id)a3;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation PearlSplashController

- (PearlSplashController)init
{
  v5 = a2;
  location = 0;
  v4.receiver = self;
  v4.super_class = PearlSplashController;
  location = [(PearlSplashController *)&v4 init];
  objc_storeStrong(&location, location);
  if (location)
  {
    [location setFaceIDViewControllerDelegate:location];
  }

  v2 = location;
  objc_storeStrong(&location, 0);
  return v2;
}

- (void)viewWillAppear:(BOOL)a3
{
  v7 = self;
  v6 = a2;
  v5 = a3;
  v4.receiver = self;
  v4.super_class = PearlSplashController;
  [(PearlSplashController *)&v4 viewWillAppear:a3];
  v3 = [(PearlSplashController *)v7 paneFeatureAnalyticsManager];
  [(BYPaneFeatureAnalyticsManager *)v3 clearActionForFeature:13];
}

- (void)performExtendedInitializationWithCompletion:(id)a3
{
  v22 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = [(PearlSplashController *)v22 capabilities];
  v4 = [v3 supportsPearl];

  v20 = v4 & 1;
  if (v4)
  {
    v7 = dispatch_get_global_queue(25, 0);
    block = _NSConcreteStackBlock;
    v9 = -1073741824;
    v10 = 0;
    v11 = sub_10016F4A4;
    v12 = &unk_10032B9C8;
    v13 = v22;
    v15 = v20 & 1;
    v14 = location[0];
    dispatch_async(v7, &block);

    objc_storeStrong(&v14, 0);
    objc_storeStrong(&v13, 0);
    v16 = 0;
  }

  else
  {
    if (location[0])
    {
      (*(location[0] + 2))(location[0], 0);
    }

    oslog = _BYLoggingFacility();
    v18 = 2;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEBUG))
    {
      v5 = oslog;
      v6 = v18;
      sub_10006AA68(buf);
      _os_log_debug_impl(&_mh_execute_header, v5, v6, "PearlSplashController: Hardware does not support Face ID", buf, 2u);
    }

    objc_storeStrong(&oslog, 0);
    v16 = 1;
  }

  objc_storeStrong(location, 0);
}

- (void)controllerWasPopped
{
  v4 = self;
  v3 = a2;
  v2.receiver = self;
  v2.super_class = PearlSplashController;
  [(PearlSplashController *)&v2 controllerWasPopped];
}

- (id)passcodeForFaceIDViewController:(id)a3
{
  v7 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = [(PearlSplashController *)v7 passcodeCacheManager];
  v4 = [v3 cachedPasscode];

  objc_storeStrong(location, 0);

  return v4;
}

- (void)faceIDViewController:(id)a3 didCompleteWithResult:(unint64_t)a4 pushedViewControllers:(id)a5
{
  v29 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v27 = a4;
  v26 = 0;
  objc_storeStrong(&v26, a5);
  if ([(PearlSplashController *)v29 enrollmentConfiguration]== 3 || [(PearlSplashController *)v29 enrollmentConfiguration]== 1)
  {
    v7 = [(PearlSplashController *)v29 buddyPreferences];
    [v7 setObject:&__kCFBooleanTrue forKey:@"FaceIDPeriocularPresented"];
  }

  v25 = [v26 mutableCopy];
  if (v27 && v27 != 3)
  {
    if (v27 == 1)
    {
      if ([(PearlSplashController *)v29 enrollmentConfiguration]!= 3)
      {
        v14 = [(PearlSplashController *)v29 flowSkipController];
        [(BYFlowSkipController *)v14 didSkipFlow:BYFlowSkipIdentifierFaceID];
      }

      [v25 removeObject:v29];
      v15 = [(PearlSplashController *)v29 delegate];
      [(BFFFlowItemDelegate *)v15 removeViewControllersOnNextPush:v25];
    }

    else
    {
      oslog = _BYLoggingFacility();
      v22 = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
      {
        sub_100077E48(buf, v27);
        _os_log_impl(&_mh_execute_header, oslog, v22, "PearlSplashController got unexpected BFFFaceIDViewController completion result %lu", buf, 0xCu);
      }

      objc_storeStrong(&oslog, 0);
    }
  }

  else
  {
    v8 = [(PearlSplashController *)v29 flowSkipController];
    [(BYFlowSkipController *)v8 didCompleteFlow:BYFlowSkipIdentifierFaceID];

    v9 = [(PearlSplashController *)v29 navigationController];
    v10 = [v9 viewControllers];
    v11 = [NSPredicate predicateWithBlock:&stru_10032DD18];
    v12 = [v10 filteredArrayUsingPredicate:v11];
    v24 = [v12 firstObject];

    if (v24)
    {
      [v25 addObject:v24];
    }

    v13 = [(PearlSplashController *)v29 delegate];
    [(BFFFlowItemDelegate *)v13 removeViewControllersOnNextPush:v25];

    objc_storeStrong(&v24, 0);
  }

  v21 = &off_10033D328;
  if ([(PearlSplashController *)v29 enrollmentConfiguration]== 3)
  {
    objc_storeStrong(&v21, &off_10033D340);
  }

  v20 = v21;
  if (!v27)
  {
    v16 = [NSNumber numberWithUnsignedInteger:[(PearlSplashController *)v29 enrollmentConfiguration]+ 1000];
    v17 = v20;
    v20 = v16;
  }

  v18 = [(PearlSplashController *)v29 paneFeatureAnalyticsManager];
  [(BYPaneFeatureAnalyticsManager *)v18 recordActionWithValue:v20 previousValue:v21 forFeature:13];

  v19 = [(PearlSplashController *)v29 delegate];
  [(BFFFlowItemDelegate *)v19 flowItemDone:v29];

  objc_storeStrong(&v20, 0);
  objc_storeStrong(&v21, 0);
  objc_storeStrong(&v25, 0);
  objc_storeStrong(&v26, 0);
  objc_storeStrong(location, 0);
}

- (BFFFlowItemDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end