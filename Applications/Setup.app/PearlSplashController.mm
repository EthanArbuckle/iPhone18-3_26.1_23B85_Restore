@interface PearlSplashController
- (BFFFlowItemDelegate)delegate;
- (PearlSplashController)init;
- (id)passcodeForFaceIDViewController:(id)controller;
- (void)controllerWasPopped;
- (void)faceIDViewController:(id)controller didCompleteWithResult:(unint64_t)result pushedViewControllers:(id)controllers;
- (void)performExtendedInitializationWithCompletion:(id)completion;
- (void)viewWillAppear:(BOOL)appear;
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

- (void)viewWillAppear:(BOOL)appear
{
  selfCopy = self;
  v6 = a2;
  appearCopy = appear;
  v4.receiver = self;
  v4.super_class = PearlSplashController;
  [(PearlSplashController *)&v4 viewWillAppear:appear];
  paneFeatureAnalyticsManager = [(PearlSplashController *)selfCopy paneFeatureAnalyticsManager];
  [(BYPaneFeatureAnalyticsManager *)paneFeatureAnalyticsManager clearActionForFeature:13];
}

- (void)performExtendedInitializationWithCompletion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, completion);
  capabilities = [(PearlSplashController *)selfCopy capabilities];
  supportsPearl = [capabilities supportsPearl];

  v20 = supportsPearl & 1;
  if (supportsPearl)
  {
    v7 = dispatch_get_global_queue(25, 0);
    block = _NSConcreteStackBlock;
    v9 = -1073741824;
    v10 = 0;
    v11 = sub_10016F4A4;
    v12 = &unk_10032B9C8;
    v13 = selfCopy;
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
  selfCopy = self;
  v3 = a2;
  v2.receiver = self;
  v2.super_class = PearlSplashController;
  [(PearlSplashController *)&v2 controllerWasPopped];
}

- (id)passcodeForFaceIDViewController:(id)controller
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, controller);
  passcodeCacheManager = [(PearlSplashController *)selfCopy passcodeCacheManager];
  cachedPasscode = [passcodeCacheManager cachedPasscode];

  objc_storeStrong(location, 0);

  return cachedPasscode;
}

- (void)faceIDViewController:(id)controller didCompleteWithResult:(unint64_t)result pushedViewControllers:(id)controllers
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, controller);
  resultCopy = result;
  v26 = 0;
  objc_storeStrong(&v26, controllers);
  if ([(PearlSplashController *)selfCopy enrollmentConfiguration]== 3 || [(PearlSplashController *)selfCopy enrollmentConfiguration]== 1)
  {
    buddyPreferences = [(PearlSplashController *)selfCopy buddyPreferences];
    [buddyPreferences setObject:&__kCFBooleanTrue forKey:@"FaceIDPeriocularPresented"];
  }

  v25 = [v26 mutableCopy];
  if (resultCopy && resultCopy != 3)
  {
    if (resultCopy == 1)
    {
      if ([(PearlSplashController *)selfCopy enrollmentConfiguration]!= 3)
      {
        flowSkipController = [(PearlSplashController *)selfCopy flowSkipController];
        [(BYFlowSkipController *)flowSkipController didSkipFlow:BYFlowSkipIdentifierFaceID];
      }

      [v25 removeObject:selfCopy];
      delegate = [(PearlSplashController *)selfCopy delegate];
      [(BFFFlowItemDelegate *)delegate removeViewControllersOnNextPush:v25];
    }

    else
    {
      oslog = _BYLoggingFacility();
      v22 = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
      {
        sub_100077E48(buf, resultCopy);
        _os_log_impl(&_mh_execute_header, oslog, v22, "PearlSplashController got unexpected BFFFaceIDViewController completion result %lu", buf, 0xCu);
      }

      objc_storeStrong(&oslog, 0);
    }
  }

  else
  {
    flowSkipController2 = [(PearlSplashController *)selfCopy flowSkipController];
    [(BYFlowSkipController *)flowSkipController2 didCompleteFlow:BYFlowSkipIdentifierFaceID];

    navigationController = [(PearlSplashController *)selfCopy navigationController];
    viewControllers = [navigationController viewControllers];
    v11 = [NSPredicate predicateWithBlock:&stru_10032DD18];
    v12 = [viewControllers filteredArrayUsingPredicate:v11];
    firstObject = [v12 firstObject];

    if (firstObject)
    {
      [v25 addObject:firstObject];
    }

    delegate2 = [(PearlSplashController *)selfCopy delegate];
    [(BFFFlowItemDelegate *)delegate2 removeViewControllersOnNextPush:v25];

    objc_storeStrong(&firstObject, 0);
  }

  v21 = &off_10033D328;
  if ([(PearlSplashController *)selfCopy enrollmentConfiguration]== 3)
  {
    objc_storeStrong(&v21, &off_10033D340);
  }

  v20 = v21;
  if (!resultCopy)
  {
    1000 = [NSNumber numberWithUnsignedInteger:[(PearlSplashController *)selfCopy enrollmentConfiguration]+ 1000];
    v17 = v20;
    v20 = 1000;
  }

  paneFeatureAnalyticsManager = [(PearlSplashController *)selfCopy paneFeatureAnalyticsManager];
  [(BYPaneFeatureAnalyticsManager *)paneFeatureAnalyticsManager recordActionWithValue:v20 previousValue:v21 forFeature:13];

  delegate3 = [(PearlSplashController *)selfCopy delegate];
  [(BFFFlowItemDelegate *)delegate3 flowItemDone:selfCopy];

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