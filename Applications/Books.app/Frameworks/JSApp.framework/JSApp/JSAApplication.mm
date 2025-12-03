@interface JSAApplication
+ (id)purchaseEventFieldsWithPageId:(id)id pageType:(id)type pageContext:(id)context topic:(id)topic;
+ (void)appendPageHistory:(id)history completion:(id)completion;
+ (void)didFinishLaunchingWithMetrics:(BOOL)metrics;
+ (void)getODPTopGenre:(id)genre;
+ (void)openAccountSummaryPage;
+ (void)openAchievementSheet:(id)sheet;
+ (void)openExternalURL:(id)l;
+ (void)openNotificationSettingsPage;
+ (void)openProductPagesWithIds:(id)ids contentTypes:(id)types focusedIndex:(unint64_t)index options:(id)options;
+ (void)openURL:(id)l referrerURL:(id)rL referrerApplicationName:(id)name options:(id)options;
+ (void)openWriteReviewPageWithURL:(id)l options:(id)options;
+ (void)openYearInReview;
+ (void)recordNativeEvent:(id)event additionalInfo:(id)info;
+ (void)searchForTerm:(id)term;
+ (void)willTerminate;
- (JSAApplication)init;
- (NSDate)lastScriptCacheDate;
- (void)dealloc;
- (void)downloadAndCacheScript:(id)script;
- (void)reloadWithNewCache:(id)cache;
- (void)reloadWithNewCacheIfAvailable:(id)available;
- (void)setOnUnhandledPromiseRejection:(id)rejection;
@end

@implementation JSAApplication

- (JSAApplication)init
{
  v14.receiver = self;
  v14.super_class = JSAApplication;
  v2 = [(JSAApplication *)&v14 init];
  if (v2)
  {
    v3 = +[NSBundle mainBundle];
    infoDictionary = [v3 infoDictionary];

    if (infoDictionary)
    {
      objc_opt_class();
      v5 = [infoDictionary objectForKeyedSubscript:kCFBundleIdentifierKey];
      v6 = BUDynamicCast();
      v7 = v6;
      if (v6)
      {
        v8 = v6;
      }

      else
      {
        v8 = &stru_B7300;
      }

      objc_storeStrong(&v2->_identifier, v8);

      objc_opt_class();
      v9 = [infoDictionary objectForKeyedSubscript:_kCFBundleShortVersionStringKey];
      v10 = BUDynamicCast();
      v11 = v10;
      if (v10)
      {
        v12 = v10;
      }

      else
      {
        v12 = &stru_B7300;
      }

      objc_storeStrong(&v2->_version, v12);
    }
  }

  return v2;
}

- (void)dealloc
{
  value = [(JSManagedValue *)self->_onUnhandledPromiseRejection value];
  context = [value context];
  virtualMachine = [context virtualMachine];
  [virtualMachine removeManagedReference:self->_onUnhandledPromiseRejection withOwner:self];

  v6.receiver = self;
  v6.super_class = JSAApplication;
  [(JSAApplication *)&v6 dealloc];
}

- (NSDate)lastScriptCacheDate
{
  v2 = +[JSABridge sharedInstance];
  lastScriptCacheDate = [v2 lastScriptCacheDate];

  return lastScriptCacheDate;
}

- (void)setOnUnhandledPromiseRejection:(id)rejection
{
  rejectionCopy = rejection;
  v5 = JSALog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v14 = 136446210;
    *&v14[4] = "[JSAApplication setOnUnhandledPromiseRejection:]";
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "%{public}s", v14, 0xCu);
  }

  context = [rejectionCopy context];
  jSGlobalContextRef = [context JSGlobalContextRef];
  *v14 = 0;
  JSValueToObject(jSGlobalContextRef, [rejectionCopy JSValueRef], v14);
  if (*v14)
  {
    onUnhandledPromiseRejection = [JSValue valueWithJSValueRef:*v14 inContext:context];
    v9 = JSALog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_82EA0(onUnhandledPromiseRejection, v9);
    }
  }

  else
  {
    JSGlobalContextSetUnhandledRejectionCallback();
    if (!*v14)
    {
      value = [(JSManagedValue *)self->_onUnhandledPromiseRejection value];
      context2 = [value context];
      virtualMachine = [context2 virtualMachine];
      [virtualMachine removeManagedReference:self->_onUnhandledPromiseRejection withOwner:self];

      v13 = [JSManagedValue managedValueWithValue:rejectionCopy andOwner:self];
      onUnhandledPromiseRejection = self->_onUnhandledPromiseRejection;
      self->_onUnhandledPromiseRejection = v13;
      goto LABEL_10;
    }

    onUnhandledPromiseRejection = [JSValue valueWithJSValueRef:*v14 inContext:context];
    v9 = JSALog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_82F18(onUnhandledPromiseRejection, v9);
    }
  }

LABEL_10:
}

+ (void)openExternalURL:(id)l
{
  lCopy = l;
  v4 = JSALog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446466;
    v19 = "+[JSAApplication openExternalURL:]";
    v20 = 2112;
    v21 = lCopy;
    _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "%{public}s url=%@", buf, 0x16u);
  }

  if (lCopy)
  {
    v5 = [NSURL URLWithString:lCopy];
  }

  else
  {
    v5 = 0;
  }

  if ([v5 jsa_isSafeExternalURL])
  {
    v12 = FBSOpenApplicationOptionKeyPromptUnlockDevice;
    v13 = FBSOpenApplicationOptionKeyUnlockDevice;
    v15 = &__kCFBooleanTrue;
    v16 = &__kCFBooleanTrue;
    v14 = FBSOpenApplicationOptionKeyLaunchOrigin;
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    v17 = v7;
    v8 = [NSDictionary dictionaryWithObjects:&v15 forKeys:&v12 count:3];

    v9 = [LSApplicationWorkspace defaultWorkspace:v12];
    [v9 openSensitiveURL:v5 withOptions:v8];

LABEL_10:
    goto LABEL_11;
  }

  v10 = +[UIApplication jsa_sharedApplicationIfNotExtension];
  v11 = [v10 canOpenURL:v5];

  if (v11)
  {
    v8 = +[UIApplication jsa_sharedApplicationIfNotExtension];
    [v8 jsa_openExternalURL:v5 options:&__NSDictionary0__struct completionHandler:0];
    goto LABEL_10;
  }

LABEL_11:
}

- (void)downloadAndCacheScript:(id)script
{
  scriptCopy = script;
  v4 = JSALog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446210;
    v10 = "[JSAApplication downloadAndCacheScript:]";
    _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "%{public}s", buf, 0xCu);
  }

  v5 = +[JSABridge sharedInstance];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_22688;
  v7[3] = &unk_B3478;
  v8 = scriptCopy;
  v6 = scriptCopy;
  [v5 checkForUpgradeWithCompletion:v7];
}

- (void)reloadWithNewCacheIfAvailable:(id)available
{
  availableCopy = available;
  v4 = JSALog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446210;
    v9 = "[JSAApplication reloadWithNewCacheIfAvailable:]";
    _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "%{public}s", buf, 0xCu);
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_22920;
  block[3] = &unk_B20D8;
  v7 = availableCopy;
  v5 = availableCopy;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)reloadWithNewCache:(id)cache
{
  cacheCopy = cache;
  v4 = JSALog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446210;
    v9 = "[JSAApplication reloadWithNewCache:]";
    _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "%{public}s", buf, 0xCu);
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_22D30;
  block[3] = &unk_B20D8;
  v7 = cacheCopy;
  v5 = cacheCopy;
  dispatch_async(&_dispatch_main_q, block);
}

+ (void)didFinishLaunchingWithMetrics:(BOOL)metrics
{
  metricsCopy = metrics;
  v4 = BUIsRunningTests();
  if (v4)
  {
    v5 = &__NSDictionary0__struct;
  }

  else
  {
    v5 = 0;
  }

  if ((v4 & 1) != 0 || !metricsCopy || (+[JSAMetricsAppLaunchEvent markLaunchEndTime](JSAMetricsAppLaunchEvent, "markLaunchEndTime"), +[JSAMetricsAppLaunchEvent consumePendingLaunchEvent](JSAMetricsAppLaunchEvent, "consumePendingLaunchEvent"), v6 = objc_claimAutoreleasedReturnValue(), [v6 metricsDictionary], v5 = objc_claimAutoreleasedReturnValue(), v6, v5))
  {
    v7 = +[JSABridge sharedInstance];
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_230D8;
    v9[3] = &unk_B27E8;
    v10 = v5;
    v8 = v5;
    [v7 enqueueBlockForInitialLaunch:v9 file:@"/Library/Caches/com.apple.xbs/Sources/Alder/frameworks/JSApp/JSApp/API/Application/JSAApplication.m" line:194];
  }

  else
  {
    v8 = JSALog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446210;
      v12 = "+[JSAApplication didFinishLaunchingWithMetrics:]";
      _os_log_impl(&dword_0, v8, OS_LOG_TYPE_DEFAULT, "%{public}s iBooks probably just loaded a new version of javascript", buf, 0xCu);
    }
  }
}

+ (void)willTerminate
{
  v6 = +[JSABridge sharedInstance];
  environment = [v6 environment];
  context = [environment context];
  v5 = sub_23278(self, @"onTerminate", &__NSArray0__struct, context);
}

+ (void)openProductPagesWithIds:(id)ids contentTypes:(id)types focusedIndex:(unint64_t)index options:(id)options
{
  idsCopy = ids;
  typesCopy = types;
  optionsCopy = options;
  v13 = JSALog();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = [idsCopy componentsJoinedByString:{@", "}];
    v15 = [NSNumber numberWithUnsignedInteger:index];
    *buf = 136446978;
    v29 = "+[JSAApplication openProductPagesWithIds:contentTypes:focusedIndex:options:]";
    v30 = 2112;
    v31 = v14;
    v32 = 2112;
    v33 = v15;
    v34 = 2112;
    v35 = optionsCopy;
    _os_log_impl(&dword_0, v13, OS_LOG_TYPE_DEFAULT, "%{public}s ids=[%@], focusedIndex=%@, options=%@", buf, 0x2Au);
  }

  if ([idsCopy count])
  {
    if ([typesCopy count])
    {
      v16 = [idsCopy count];
      if (v16 == [typesCopy count])
      {
        v17 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [idsCopy count]);
        v21 = _NSConcreteStackBlock;
        v22 = 3221225472;
        v23 = sub_2388C;
        v24 = &unk_B34A0;
        v25 = v17;
        v26 = typesCopy;
        [idsCopy enumerateObjectsUsingBlock:&v21];
        v27[0] = v17;
        v18 = [NSNumber numberWithUnsignedInteger:index, v21, v22, v23, v24, v25];
        v27[1] = v18;
        v19 = [NSArray arrayWithObjects:v27 count:2];
        v20 = sub_2395C(self, v19, optionsCopy);

        sub_23348(self, @"openProductPagesWithInfo", v20, 0);
      }
    }
  }
}

+ (void)openWriteReviewPageWithURL:(id)l options:(id)options
{
  lCopy = l;
  optionsCopy = options;
  v8 = JSALog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446722;
    v14 = "+[JSAApplication openWriteReviewPageWithURL:options:]";
    v15 = 2112;
    v16 = lCopy;
    v17 = 2112;
    v18 = optionsCopy;
    _os_log_impl(&dword_0, v8, OS_LOG_TYPE_DEFAULT, "%{public}s url=%@, options=%@", buf, 0x20u);
  }

  absoluteString = [lCopy absoluteString];
  if ([absoluteString length])
  {
    v12 = absoluteString;
    v10 = [NSArray arrayWithObjects:&v12 count:1];
    v11 = sub_2395C(self, v10, optionsCopy);

    sub_23348(self, @"openWriteReviewPageWithURL", v11, 0);
  }
}

+ (void)openAccountSummaryPage
{
  v3 = JSALog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 136446210;
    v5 = "+[JSAApplication openAccountSummaryPage]";
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "%{public}s", &v4, 0xCu);
  }

  sub_23348(self, @"openAccountSummaryPage", 0, 0);
}

+ (void)openNotificationSettingsPage
{
  v3 = JSALog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 136446210;
    v5 = "+[JSAApplication openNotificationSettingsPage]";
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "%{public}s", &v4, 0xCu);
  }

  sub_23348(self, @"openNotificationSettingsPage", 0, 0);
}

+ (void)openAchievementSheet:(id)sheet
{
  sheetCopy = sheet;
  objc_opt_class();
  v5 = [sheetCopy objectForKeyedSubscript:@"achievementKind"];
  v6 = BUDynamicCast();

  v7 = JSALog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v12 = v6;
    _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEFAULT, "Opening achievement sheet for achievementKind %@", buf, 0xCu);
  }

  if (v6)
  {
    v10 = v6;
    v8 = [NSArray arrayWithObjects:&v10 count:1];
    v9 = sub_2395C(self, v8, sheetCopy);

    sub_23348(self, @"openAchievementSheet", v9, 0);
  }

  else
  {
    v9 = JSALog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446210;
      v12 = "+[JSAApplication openAchievementSheet:]";
      _os_log_impl(&dword_0, v9, OS_LOG_TYPE_DEFAULT, "%{public}s Ignoring achievement notification without achievementKind", buf, 0xCu);
    }
  }
}

+ (void)openYearInReview
{
  v2 = JSALog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136446210;
    v6 = "+[JSAApplication openYearInReview]";
    _os_log_impl(&dword_0, v2, OS_LOG_TYPE_DEFAULT, "%{public}s", &v5, 0xCu);
  }

  v3 = objc_opt_new();
  [v3 setScheme:@"https"];
  [v3 setHost:@"books.apple.com"];
  [v3 setPath:@"/year-in-review"];
  v4 = [v3 URL];
  if (v4)
  {
    [JSAApplication openURL:v4 referrerURL:0 referrerApplicationName:0 options:0];
  }
}

+ (void)openURL:(id)l referrerURL:(id)rL referrerApplicationName:(id)name options:(id)options
{
  lCopy = l;
  rLCopy = rL;
  nameCopy = name;
  optionsCopy = options;
  v14 = JSALog();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v19 = 136447234;
    v20 = "+[JSAApplication openURL:referrerURL:referrerApplicationName:options:]";
    v21 = 2112;
    v22 = lCopy;
    v23 = 2112;
    v24 = rLCopy;
    v25 = 2112;
    v26 = nameCopy;
    v27 = 2112;
    v28 = optionsCopy;
    _os_log_impl(&dword_0, v14, OS_LOG_TYPE_DEFAULT, "%{public}s url=%@, referrer=%@, referrerApplicationName=%@, options=%@", &v19, 0x34u);
  }

  v15 = +[NSMutableArray array];
  absoluteString = [lCopy absoluteString];
  [v15 addObject:absoluteString];

  if (rLCopy)
  {
    [v15 addObject:rLCopy];
    if (nameCopy)
    {
      goto LABEL_5;
    }

LABEL_9:
    v18 = +[NSNull null];
    [v15 addObject:v18];

    if (!optionsCopy)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  v17 = +[NSNull null];
  [v15 addObject:v17];

  if (!nameCopy)
  {
    goto LABEL_9;
  }

LABEL_5:
  [v15 addObject:nameCopy];
  if (optionsCopy)
  {
LABEL_6:
    [v15 addObject:optionsCopy];
  }

LABEL_7:
  sub_23348(self, @"openURL", v15, 0);
}

+ (void)searchForTerm:(id)term
{
  termCopy = term;
  v4 = JSALog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446466;
    v12 = "+[JSAApplication searchForTerm:]";
    v13 = 2112;
    v14 = termCopy;
    _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "%{public}s term=%@", buf, 0x16u);
  }

  v5 = objc_opt_new();
  [v5 setHost:&stru_B7300];
  [v5 setScheme:@"itms-bookss"];
  v6 = [[NSURLQueryItem alloc] initWithName:@"action" value:@"search"];
  v7 = [[NSURLQueryItem alloc] initWithName:@"term" value:{termCopy, v6}];
  v10[1] = v7;
  v8 = [NSArray arrayWithObjects:v10 count:2];
  [v5 setQueryItems:v8];

  v9 = [v5 URL];
  if (v9)
  {
    [JSAApplication openURL:v9 referrerURL:0 referrerApplicationName:0 options:0];
  }
}

+ (void)recordNativeEvent:(id)event additionalInfo:(id)info
{
  eventCopy = event;
  infoCopy = info;
  v10[0] = eventCopy;
  v8 = infoCopy;
  if (!infoCopy)
  {
    v8 = +[NSNull null];
  }

  v10[1] = v8;
  v9 = [NSArray arrayWithObjects:v10 count:2];
  sub_23348(self, @"onRecordNativeEvent", v9, 0);

  if (!infoCopy)
  {
  }
}

+ (id)purchaseEventFieldsWithPageId:(id)id pageType:(id)type pageContext:(id)context topic:(id)topic
{
  idCopy = id;
  typeCopy = type;
  contextCopy = context;
  topicCopy = topic;
  v28 = 0;
  v29 = &v28;
  v30 = 0x3032000000;
  v31 = sub_24604;
  v32 = sub_24614;
  v33 = 0;
  v14 = +[JSABridge sharedInstance];
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_2461C;
  v21[3] = &unk_B34C8;
  selfCopy = self;
  v15 = idCopy;
  v22 = v15;
  v16 = typeCopy;
  v23 = v16;
  v17 = contextCopy;
  v24 = v17;
  v18 = topicCopy;
  v25 = v18;
  v26 = &v28;
  [v14 enqueueBlockPrefersSync:v21 file:@"JSAApplication.m" line:349];

  v19 = v29[5];
  _Block_object_dispose(&v28, 8);

  return v19;
}

+ (void)getODPTopGenre:(id)genre
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_24894;
  v5[3] = &unk_B34F0;
  genreCopy = genre;
  v4 = genreCopy;
  sub_23348(self, @"getTopGenreFromODPRanker", &__NSArray0__struct, v5);
}

+ (void)appendPageHistory:(id)history completion:(id)completion
{
  completionCopy = completion;
  historyCopy = history;
  historyCopy2 = history;
  v8 = [NSArray arrayWithObjects:&historyCopy count:1];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_24A38;
  v10[3] = &unk_B34F0;
  v11 = completionCopy;
  v9 = completionCopy;
  sub_23348(self, @"appendPageHistory", v8, v10);
}

@end