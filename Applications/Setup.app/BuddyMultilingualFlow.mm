@interface BuddyMultilingualFlow
+ (id)allowedFlowItems;
- (id)classList;
- (id)firstItem;
- (void)_writeOutDictationDefaults;
- (void)flowItemDone:(id)a3 nextItem:(id)a4;
- (void)injectItemIfNeeded:(id)a3 forClass:(Class)a4;
- (void)performExtendedInitializationWithCompletion:(id)a3;
@end

@implementation BuddyMultilingualFlow

- (void)performExtendedInitializationWithCompletion:(id)a3
{
  v34 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = [(BuddyMultilingualFlow *)v34 proximitySetupController];
  v4 = [(ProximitySetupController *)v3 hasAppliedSettings];

  v32 = v4 & 1;
  v31 = +[DMCMultiUserModeUtilities shouldSkipLanguageAndLocaleSetupForNewUsers]& 1;
  v5 = 0;
  if ((v4 & 1) == 0)
  {
    v5 = v31 ^ 1;
  }

  v30 = v5 & 1;
  v29 = objc_retainBlock(&stru_10032E990);
  oslog = _BYLoggingFacility();
  v27 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    v26 = (*(v29 + 2))(v29, v30 & 1);
    v25 = (*(v29 + 2))(v29, v32 & 1);
    v24 = (*(v29 + 2))(v29, v31 & 1);
    sub_100075FC0(buf, v26, v25, v24);
    _os_log_impl(&_mh_execute_header, oslog, v27, "BuddyMultilingualFlow needs to run %{public}@ because proximityFlag was %{public}@, shared iPad flag was %{public}@", buf, 0x20u);

    objc_storeStrong(&v24, 0);
    objc_storeStrong(&v25, 0);
    objc_storeStrong(&v26, 0);
  }

  objc_storeStrong(&oslog, 0);
  if (v30)
  {
    v22 = +[BuddyMultilingualDataModelProvider instanceForKeyboardSelector];
    v21 = +[BuddyMultilingualDataModelProvider instanceForDictationSelectorExpress];
    v6 = +[BuddyMultilingualDataModelProvider instanceForDictationSelector];
    [(BuddyMultilingualFlow *)v34 setDictationProvider:v6];

    v7 = [[BuddyMultilingualDataModelProviderCollection alloc] initWithKeyboardProvider:v22 withDictationProvider:v21];
    [(BuddyMultilingualFlow *)v34 setProviderCollection:v7];

    v36[0] = objc_opt_class();
    v36[1] = objc_opt_class();
    v36[2] = objc_opt_class();
    v8 = [NSArray arrayWithObjects:v36 count:3];
    [(BuddyMultilingualFlow *)v34 setClassList:v8];

    v9 = [(BuddyMultilingualFlow *)v34 starter];
    v10 = 0;
    if ([v9 controllerNeedsToRunForClass:objc_opt_class()])
    {
      v10 = +[BuddyKeyboardLanguageOrderSelector needsFullscreenPane];
    }

    v20 = v10 & 1;
    v11 = [(BuddyMultilingualFlow *)v34 starter];
    v12 = 0;
    if ([v11 controllerNeedsToRunForClass:objc_opt_class()])
    {
      v12 = +[BuddyDictationLanguageOrderSelector needsFullscreenPane];
    }

    v19 = v12 & 1;
    v13 = 1;
    if ((v20 & 1) == 0)
    {
      v13 = v19;
    }

    v18 = v13;
    if ((v13 & 1) == 0)
    {
      [(BuddyMultilingualFlow *)v34 _writeOutDictationDefaults];
    }

    v17 = objc_alloc_init(NSMutableArray);
    if (v20)
    {
      [v17 addObject:@"Keyboards"];
    }

    if (v19)
    {
      [v17 addObject:@"Dictation"];
    }

    v16 = _BYLoggingFacility();
    v15 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v14 = [v17 componentsJoinedByString:{@", "}];
      sub_10006AE18(v35, v14);
      _os_log_impl(&_mh_execute_header, v16, v15, "Language settings available for customization: %@", v35, 0xCu);

      objc_storeStrong(&v14, 0);
    }

    objc_storeStrong(&v16, 0);
    if (location[0])
    {
      (*(location[0] + 2))(location[0], v18 & 1);
    }

    objc_storeStrong(&v17, 0);
    objc_storeStrong(&v21, 0);
    objc_storeStrong(&v22, 0);
    v23 = 0;
  }

  else
  {
    (*(location[0] + 2))(location[0], 0);
    v23 = 1;
  }

  objc_storeStrong(&v29, 0);
  objc_storeStrong(location, 0);
}

- (id)classList
{
  location[2] = self;
  location[1] = a2;
  v9.receiver = self;
  v9.super_class = BuddyMultilingualFlow;
  location[0] = [(BuddyMultilingualFlow *)&v9 classList];
  if (![location[0] count])
  {
    oslog = _BYLoggingFacility();
    v7 = 17;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_FAULT))
    {
      v2 = oslog;
      v3 = v7;
      sub_10006AA68(v6);
      _os_log_fault_impl(&_mh_execute_header, v2, v3, "BuddyMultilingualFlow failed to set initial classList", v6, 2u);
    }

    objc_storeStrong(&oslog, 0);
  }

  v4 = location[0];
  objc_storeStrong(location, 0);
  return v4;
}

- (id)firstItem
{
  v6 = self;
  location[1] = a2;
  v4.receiver = self;
  v4.super_class = BuddyMultilingualFlow;
  location[0] = [(BuddyMultilingualFlow *)&v4 firstItem];
  [(BuddyMultilingualFlow *)v6 injectItemIfNeeded:location[0] forClass:objc_opt_class()];
  v2 = location[0];
  objc_storeStrong(location, 0);
  return v2;
}

- (void)flowItemDone:(id)a3 nextItem:(id)a4
{
  v12 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v10 = 0;
  objc_storeStrong(&v10, a4);
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 && (v5 = [(BuddyMultilingualFlow *)v12 providerCollection], v6 = ![(BuddyMultilingualDataModelProviderCollection *)v5 expressFlowDidCustomize], v5, (v6))
  {
    v9.receiver = v12;
    v9.super_class = BuddyMultilingualFlow;
    [(BuddyMultilingualFlow *)&v9 flowItemDone:location[0] nextItem:0];
    v8 = 1;
  }

  else
  {
    [(BuddyMultilingualFlow *)v12 injectItemIfNeeded:v10 forClass:objc_opt_class()];
    v7.receiver = v12;
    v7.super_class = BuddyMultilingualFlow;
    [(BuddyMultilingualFlow *)&v7 flowItemDone:location[0] nextItem:v10];
    v8 = 0;
  }

  objc_storeStrong(&v10, 0);
  objc_storeStrong(location, 0);
}

- (void)injectItemIfNeeded:(id)a3 forClass:(Class)a4
{
  v13 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v11 = a4;
  if ([location[0] conformsToProtocol:&OBJC_PROTOCOL___BuddyMultilingualDataModelInjectable])
  {
    v10 = location[0];
    if (v11 == objc_opt_class())
    {
      v5 = [(BuddyMultilingualFlow *)v13 providerCollection];
      v6 = [(BuddyMultilingualDataModelProviderCollection *)v5 keyboardProvider];
      [v10 setProvider:v6];
    }

    else if (v11 == objc_opt_class())
    {
      v7 = [(BuddyMultilingualFlow *)v13 dictationProvider];
      [v10 setProvider:v7];
    }

    objc_storeStrong(&v10, 0);
  }

  else if ([location[0] conformsToProtocol:&OBJC_PROTOCOL___BuddyMultilingualDataModelCollectionInjectable])
  {
    v9 = location[0];
    v8 = [(BuddyMultilingualFlow *)v13 providerCollection];
    [v9 setProviderCollection:v8];

    objc_storeStrong(&v9, 0);
  }

  objc_storeStrong(location, 0);
}

+ (id)allowedFlowItems
{
  v5[0] = objc_opt_class();
  v5[1] = objc_opt_class();
  v5[2] = objc_opt_class();
  return [NSArray arrayWithObjects:v5 count:3, a2, a1];
}

- (void)_writeOutDictationDefaults
{
  location[2] = self;
  location[1] = a2;
  location[0] = +[BuddyMultilingualDataModelProvider instanceForDictationSelectorExpress];
  v2 = [location[0] createDataSourceForPreselectedItems];
  [BuddyDictationLanguageOrderSelector writePreferredDictationLanguagesToSystem:v2];

  objc_storeStrong(location, 0);
}

@end