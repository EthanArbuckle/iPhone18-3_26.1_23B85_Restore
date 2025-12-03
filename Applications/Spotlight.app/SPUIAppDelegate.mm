@interface SPUIAppDelegate
- (BOOL)application:(id)application didFinishLaunchingWithOptions:(id)options;
- (id)application:(id)application configurationForConnectingSceneSession:(id)session options:(id)options;
- (void)applicationWillTerminate:(id)terminate;
- (void)buildMenuWithBuilder:(id)builder;
@end

@implementation SPUIAppDelegate

- (BOOL)application:(id)application didFinishLaunchingWithOptions:(id)options
{
  applicationCopy = application;
  optionsCopy = options;
  v7 = spuiLogHandles[4];
  if (!v7)
  {
    SPUIInitLogging();
    v7 = spuiLogHandles[4];
  }

  v8 = os_signpost_id_generate(v7);
  v9 = spuiLogHandles[4];
  if (!v9)
  {
    SPUIInitLogging();
    v9 = spuiLogHandles[4];
  }

  v10 = v9;
  v11 = v10;
  if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v11, OS_SIGNPOST_INTERVAL_BEGIN, v8, "searchVCinit", "", buf, 2u);
  }

  v12 = +[SPUISearchViewControllerHolder sharedInstance];
  v13 = spuiLogHandles[4];
  if (!v13)
  {
    SPUIInitLogging();
    v13 = spuiLogHandles[4];
  }

  v14 = v13;
  v15 = v14;
  if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v14))
  {
    *v17 = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v15, OS_SIGNPOST_INTERVAL_END, v8, "searchVCinit", " enableTelemetry=YES ", v17, 2u);
  }

  return 1;
}

- (id)application:(id)application configurationForConnectingSceneSession:(id)session options:(id)options
{
  sessionCopy = session;
  configuration = [sessionCopy configuration];
  persistentIdentifier = [sessionCopy persistentIdentifier];

  LODWORD(sessionCopy) = [persistentIdentifier hasPrefix:@"searchBar"];
  v8 = off_10000C2A8;
  if (!sessionCopy)
  {
    v8 = &off_10000C2B0;
  }

  v9 = *v8;
  [configuration setDelegateClass:objc_opt_class()];

  return configuration;
}

- (void)applicationWillTerminate:(id)terminate
{
  terminateCopy = terminate;
  v4 = spuiLogHandles[0];
  if (!spuiLogHandles[0])
  {
    SPUIInitLogging();
    v4 = spuiLogHandles[0];
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    sub_100005384(v4);
  }

  v5 = +[SPUIFeedbackManager feedbackListener];
  v6 = [[SFSearchViewDisappearFeedback alloc] initWithEvent:1];
  [v5 searchViewDidDisappear:v6];

  [SPUIFeedbackManager flushFeedbackWithCompletion:&stru_10000C438];
}

- (void)buildMenuWithBuilder:(id)builder
{
  v8.receiver = self;
  v8.super_class = SPUIAppDelegate;
  builderCopy = builder;
  [(SPUIAppDelegate *)&v8 buildMenuWithBuilder:builderCopy];
  v4 = [SPUISearchViewControllerHolder sharedInstance:v8.receiver];
  searchViewController = [v4 searchViewController];
  v6 = [UIFocusSystem focusSystemForEnvironment:searchViewController];
  focusedItem = [v6 focusedItem];
  [SPUIHomeScreenIconUtility addMenusToBuilder:builderCopy forFocusEnvironment:focusedItem];
}

@end