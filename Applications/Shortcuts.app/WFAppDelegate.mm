@interface WFAppDelegate
- (BOOL)application:(id)application didFinishLaunchingWithOptions:(id)options;
- (BOOL)application:(id)application willFinishLaunchingWithOptions:(id)options;
- (id)application:(id)application configurationForConnectingSceneSession:(id)session options:(id)options;
- (void)applicationDidEnterBackground:(id)background;
- (void)applicationShouldRequestHealthAuthorization:(id)authorization;
- (void)applicationWillEnterForeground:(id)foreground;
- (void)buildMenuWithBuilder:(id)builder;
- (void)userNotificationCenter:(id)center didReceiveNotificationResponse:(id)response withCompletionHandler:(id)handler;
@end

@implementation WFAppDelegate

- (void)userNotificationCenter:(id)center didReceiveNotificationResponse:(id)response withCompletionHandler:(id)handler
{
  notification = [response notification];
  request = [notification request];
  content = [request content];
  userInfo = [content userInfo];
  v15 = WFTriggerIDFromNotificationUserInfo();

  v9 = v15;
  if (v15)
  {
    v10 = +[WFWindowSceneManager mainScene];
    delegate = [v10 delegate];

    if (delegate)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v12 = delegate;
      }

      else
      {
        v12 = 0;
      }
    }

    else
    {
      v12 = 0;
    }

    v13 = v12;

    rootViewController = [v13 rootViewController];

    [rootViewController highlightAutomationWithTriggerID:v15];
    v9 = v15;
  }
}

- (void)applicationShouldRequestHealthAuthorization:(id)authorization
{
  v3 = +[HKHealthStore wf_shortcutsAppHealthStore];
  [v3 handleAuthorizationForExtensionWithCompletion:&stru_1000F4320];
}

- (void)applicationDidEnterBackground:(id)background
{
  lastForegroundDate = [(WFAppDelegate *)self lastForegroundDate];

  if (lastForegroundDate)
  {
    v5 = objc_opt_new();
    lastForegroundDate2 = [(WFAppDelegate *)self lastForegroundDate];
    [v5 timeIntervalSinceDate:lastForegroundDate2];
    v8 = v7;

    v9 = objc_opt_new();
    [v9 setSource:WFWorkflowRunSourceMyWorkflows];
    [v9 setDuration:v8];
    [v9 track];
  }
}

- (void)applicationWillEnterForeground:(id)foreground
{
  v4 = objc_opt_new();
  [(WFAppDelegate *)self setLastForegroundDate:v4];
}

- (id)application:(id)application configurationForConnectingSceneSession:(id)session options:(id)options
{
  optionsCopy = options;
  sessionCopy = session;
  configuration = [sessionCopy configuration];
  role = [sessionCopy role];

  if (role == UIWindowSceneSessionRoleApplication)
  {
    userActivities = [optionsCopy userActivities];
    anyObject = [userActivities anyObject];

    v12 = @"Main";
    if (anyObject)
    {
      v13 = [WFWindowSceneManager workflowIdentifierFromUserActivity:anyObject];

      if (v13)
      {
        v12 = @"Workflow";
      }
    }

    v14 = [UISceneConfiguration configurationWithName:v12 sessionRole:UIWindowSceneSessionRoleApplication];

    configuration = v14;
  }

  return configuration;
}

- (BOOL)application:(id)application didFinishLaunchingWithOptions:(id)options
{
  [application setShortcutItems:{0, options}];
  v5 = +[UNUserNotificationCenter currentNotificationCenter];
  [v5 setDelegate:self];

  +[WFFileStorageUtilities createDocumentsDirectoryIfNecessary];
  if (+[CSSearchableIndex isIndexingAvailable])
  {
    v6 = +[CSSearchableIndex defaultSearchableIndex];
    [v6 deleteSearchableItemsWithDomainIdentifiers:&off_1000F5450 completionHandler:0];
  }

  +[_TtC9Shortcuts13WFLinkActions register];
  +[_TtC9Shortcuts26IntelligencePlatformHelper initializeIntelligencePlatform];
  return 1;
}

- (BOOL)application:(id)application willFinishLaunchingWithOptions:(id)options
{
  applicationCopy = application;
  v6 = +[WFApplicationContext sharedContext];
  [v6 setProvider:applicationCopy];

  LODWORD(v6) = [applicationCopy launchedToTest];
  if (v6 && (+[NSUserDefaults standardUserDefaults](NSUserDefaults, "standardUserDefaults"), v7 = objc_claimAutoreleasedReturnValue(), v8 = [v7 BOOLForKey:@"WFUsePPTPerformanceContent"], v7, (v8 & 1) == 0))
  {
    self->_initializationResult = [WFInitialization initializeProcessWithDatabase:0];
    +[WFPPTDispatcher setupDatabaseForTesting];
  }

  else
  {
    self->_initializationResult = [WFInitialization initializeProcessWithDatabase:1];
  }

  if (sub_100002DA4())
  {
    v9 = objc_opt_class();
    InstanceMethod = class_getInstanceMethod(v9, "initWithNibName:bundle:");
    v22[0] = _NSConcreteStackBlock;
    v22[1] = 3221225472;
    v22[2] = sub_1000B4F04;
    v22[3] = &unk_1000F41A0;
    v22[4] = method_getImplementation(InstanceMethod);
    v11 = objc_retainBlock(v22);
    v12 = imp_implementationWithBlock(v11);

    method_setImplementation(InstanceMethod, v12);
    v13 = objc_opt_class();
    v14 = class_getInstanceMethod(v13, "initWithFrame:");
    v21[0] = _NSConcreteStackBlock;
    v21[1] = 3221225472;
    v21[2] = sub_1000B4F60;
    v21[3] = &unk_1000F41C0;
    v21[4] = method_getImplementation(v14);
    v15 = objc_retainBlock(v21);
    v16 = imp_implementationWithBlock(v15);

    method_setImplementation(v14, v16);
    sub_1000B4AD4();
  }

  [WFHandoffSimulator registerHandoffURLRequestHandler:&stru_1000F42A0];
  v17 = +[NSUserDefaults workflowUserDefaults];
  [v17 wf_loadValuesFromCloudKitWithCompletion:&stru_1000F42E0];

  v18 = +[WFHomeManager sharedManager];
  [v18 reloadData];

  +[WFKeyboard beginObservingKeyboardNotifications];
  WFWorkflowIconDrawerGloballyCacheDrawerContext();
  v19 = +[WFHomeScreenController sharedInstance];
  [v19 startListeningForDatabaseChanges];

  +[WFDebugUtilities startLogStream];
  return 1;
}

- (void)buildMenuWithBuilder:(id)builder
{
  builderCopy = builder;
  v102.receiver = self;
  v102.super_class = WFAppDelegate;
  [(WFAppDelegate *)&v102 buildMenuWithBuilder:builderCopy];
  system = [builderCopy system];
  v6 = +[UIMenuSystem mainSystem];

  if (system == v6)
  {
    v7 = sub_100005D9C(@"New Shortcut");
    v8 = [UIImage systemImageNamed:@"plus"];
    v97 = [UIKeyCommand commandWithTitle:v7 image:v8 action:"createWorkflowFromKeyboard" input:@"n" modifierFlags:0x100000 propertyList:0];

    v9 = sub_100005D9C(@"New Folder");
    v10 = [UIImage systemImageNamed:@"folder.badge.plus"];
    v96 = [UIKeyCommand commandWithTitle:v9 image:v10 action:"createFolderFromKeyboard" input:@"n" modifierFlags:1179648 propertyList:0];

    v11 = sub_100005D9C(@"New Automation");
    v12 = [UIImage systemImageNamed:@"deskclock"];
    v95 = [UIKeyCommand commandWithTitle:v11 image:v12 action:"createNewAutomation" input:@"n" modifierFlags:1572864 propertyList:0];

    v13 = sub_100005D9C(@"Rename");
    v14 = [UIImage systemImageNamed:@"pencil"];
    v100 = [UIKeyCommand commandWithTitle:v13 image:v14 action:"renameWorkflow" input:@"r" modifierFlags:1310720 propertyList:0];

    v15 = sub_100005D9C(@"Duplicate");
    v16 = [UIImage systemImageNamed:@"plus.square.on.square"];
    v99 = [UIKeyCommand commandWithTitle:v15 image:v16 action:"duplicateSelectedWorkflowsFromKeyboard" input:@"d" modifierFlags:0x100000 propertyList:0];

    v17 = sub_100005D9C(@"Close Shortcut");
    v18 = [UIImage systemImageNamed:@"xmark"];
    v98 = [UIKeyCommand commandWithTitle:v17 image:v18 action:"requestDismissal" input:@"w" modifierFlags:0x100000 propertyList:0];

    v109[0] = v100;
    v109[1] = v99;
    v109[2] = v98;
    v19 = [NSArray arrayWithObjects:v109 count:3];
    v94 = [UIMenu menuWithTitle:&stru_1000F49E8 image:0 identifier:0 options:1 children:v19];

    v108[0] = v97;
    v108[1] = v96;
    v108[2] = v95;
    v108[3] = v94;
    v20 = [NSArray arrayWithObjects:v108 count:4];
    v93 = [UIMenu menuWithTitle:&stru_1000F49E8 image:0 identifier:0 options:1 children:v20];

    [builderCopy insertChildMenu:v93 atStartOfMenuForIdentifier:UIMenuFile];
    v21 = sub_100005D9C(@"Choose From Menu");
    v22 = [UIImage systemImageNamed:@"filemenu.and.selection"];
    v92 = [UIKeyCommand commandWithTitle:v21 image:v22 action:"addChooseFromMenuActionFromKeyPress" input:@"m" modifierFlags:1179648 propertyList:0];

    v23 = sub_100005D9C(@"If");
    v24 = [UIImage systemImageNamed:@"arrow.trianglehead.branch"];
    v91 = [UIKeyCommand commandWithTitle:v23 image:v24 action:"addConditionalActionFromKeyPress" input:@"i" modifierFlags:1179648 propertyList:0];

    v25 = sub_100005D9C(@"Repeat Count");
    v26 = [UIImage systemImageNamed:@"repeat"];
    v90 = [UIKeyCommand commandWithTitle:v25 image:v26 action:"addRepeatCountActionFromKeyPress" input:@"r" modifierFlags:1179648 propertyList:0];

    v27 = sub_100005D9C(@"Repeat Each");
    v28 = [UIImage systemImageNamed:@"repeat"];
    v89 = [UIKeyCommand commandWithTitle:v27 image:v28 action:"addRepeatEachActionFromKeyPress" input:@"e" modifierFlags:1179648 propertyList:0];

    v29 = sub_100005D9C(@"Control Flow");
    v30 = [UIImage systemImageNamed:@"arrow.trianglehead.swap"];
    v107[0] = v92;
    v107[1] = v91;
    v107[2] = v90;
    v107[3] = v89;
    v31 = [NSArray arrayWithObjects:v107 count:4];
    v87 = [UIMenu menuWithTitle:v29 image:v30 identifier:0 options:0 children:v31];

    v32 = sub_100005D9C(@"Comment");
    v33 = [UIImage systemImageNamed:@"text.justify.leading"];
    v86 = [UIKeyCommand commandWithTitle:v32 image:v33 action:"addCommentActionFromKeyPress" input:@"c" modifierFlags:1179648 propertyList:0];

    v34 = [WFImage workflowKitImageNamed:@"VariableSymbol"];
    platformImage = [v34 platformImage];

    v88 = [platformImage imageWithRenderingMode:2];

    v36 = sub_100005D9C(@"Set Variable");
    v85 = [UIKeyCommand commandWithTitle:v36 image:v88 action:"addSetVariableActionFromKeyPress" input:@"v" modifierFlags:1179648 propertyList:0];

    v37 = sub_100005D9C(@"Ask For Input");
    v38 = [UIImage systemImageNamed:@"plus.bubble"];
    v84 = [UIKeyCommand commandWithTitle:v37 image:v38 action:"addAskForInputActionFromKeyPress" input:@"a" modifierFlags:1179648 propertyList:0];

    v39 = sub_100005D9C(@"Show Content");
    v40 = [UIImage systemImageNamed:@"rectangle.and.text.magnifyingglass"];
    v83 = [UIKeyCommand commandWithTitle:v39 image:v40 action:"addShowResultActionFromKeyPress" input:@"s" modifierFlags:1179648 propertyList:0];

    v106[0] = v87;
    v106[1] = v86;
    v106[2] = v85;
    v106[3] = v84;
    v106[4] = v83;
    v41 = [NSArray arrayWithObjects:v106 count:5];
    v82 = [UIMenu menuWithTitle:&stru_1000F49E8 image:0 identifier:0 options:1 children:v41];

    [builderCopy insertChildMenu:v82 atEndOfMenuForIdentifier:UIMenuEdit];
    [builderCopy removeMenuForIdentifier:UIMenuFormat];
    v42 = sub_100005D9C(@"Run Shortcut");
    v43 = [UIImage systemImageNamed:@"play"];
    v81 = [UIKeyCommand commandWithTitle:v42 image:v43 action:"runWorkflowFromKeyPress" input:@"r" modifierFlags:0x100000 propertyList:0];

    v44 = sub_100005D9C(@"Stop Shortcut");
    v45 = [UIImage systemImageNamed:@"stop"];
    v80 = [UIKeyCommand commandWithTitle:v44 image:v45 action:"stopWorkflow" input:@"." modifierFlags:0x100000 propertyList:0];

    v46 = sub_100005D9C(@"Shortcut");
    v105[0] = v81;
    v105[1] = v80;
    v47 = [NSArray arrayWithObjects:v105 count:2];
    v79 = [UIMenu menuWithTitle:v46 image:0 identifier:0 options:1 children:v47];

    [builderCopy insertSiblingMenu:v79 afterMenuForIdentifier:UIMenuEdit];
    v48 = sub_100005D9C(@"Show All Shortcuts");
    v49 = [UIImage systemImageNamed:@"rectangle.stack"];
    v101 = [UIKeyCommand commandWithTitle:v48 image:v49 action:"switchToShortcutsViewController" input:@"s" modifierFlags:1703936 propertyList:0];

    v50 = sub_100005D9C(@"Show Automations");
    v51 = [UIImage systemImageNamed:@"deskclock"];
    v78 = [UIKeyCommand commandWithTitle:v50 image:v51 action:"switchToAutomationsViewController" input:@"a" modifierFlags:1703936 propertyList:0];

    v52 = sub_100005D9C(@"Show Gallery");
    v53 = [UIImage systemImageNamed:@"square.grid.2x2"];
    v77 = [UIKeyCommand commandWithTitle:v52 image:v53 action:"switchToGalleryViewController" input:@"g" modifierFlags:1703936 propertyList:0];

    v54 = sub_100005D9C(@"Show Next Tab");
    v55 = [UIImage systemImageNamed:@"arrow.down.square"];
    v56 = [UIKeyCommand commandWithTitle:v54 image:v55 action:"switchToNextViewController" input:@"\t" modifierFlags:0x40000 propertyList:0];

    v75 = v56;
    [v56 setWantsPriorityOverSystemBehavior:1];
    v57 = sub_100005D9C(@"Show Previous Tab");
    v58 = [UIImage systemImageNamed:@"arrow.up.square"];
    v76 = [UIKeyCommand commandWithTitle:v57 image:v58 action:"switchToPreviousViewController" input:@"\t" modifierFlags:393216 propertyList:0];

    [v56 setWantsPriorityOverSystemBehavior:1];
    v59 = sub_100005D9C(@"Show First Folder");
    v60 = [UIImage systemImageNamed:@"text.line.first.and.arrowtriangle.forward"];
    v74 = [UIKeyCommand commandWithTitle:v59 image:v60 action:"switchToFirstFolderWithSender:" input:@"1" modifierFlags:0x100000 propertyList:0];

    v61 = sub_100005D9C(@"Show Last Folder");
    v62 = [UIImage systemImageNamed:@"text.line.last.and.arrowtriangle.forward"];
    v73 = [UIKeyCommand commandWithTitle:v61 image:v62 action:"switchToLastFolder" input:@"9" modifierFlags:0x100000 propertyList:0];

    v63 = sub_100005D9C(@"Show Action Library");
    v64 = [UIImage systemImageNamed:@"sparkles.rectangle.stack"];
    v72 = [UIKeyCommand commandWithTitle:v63 image:v64 action:"showActionDrawer" input:@"1" modifierFlags:1572864 propertyList:0];

    v65 = sub_100005D9C(@"Show Details");
    v66 = [UIImage systemImageNamed:@"info.circle"];
    v71 = [UIKeyCommand commandWithTitle:v65 image:v66 action:"showShortcutDetails" input:@"2" modifierFlags:1572864 propertyList:0];

    v104[0] = v72;
    v104[1] = v71;
    v67 = [NSArray arrayWithObjects:v104 count:2];
    v68 = [UIMenu menuWithTitle:&stru_1000F49E8 image:0 identifier:0 options:1 children:v67];

    v103[0] = v101;
    v103[1] = v78;
    v103[2] = v77;
    v103[3] = v75;
    v103[4] = v76;
    v103[5] = v74;
    v103[6] = v73;
    v103[7] = v68;
    v69 = [NSArray arrayWithObjects:v103 count:8];
    v70 = [UIMenu menuWithTitle:&stru_1000F49E8 image:0 identifier:0 options:1 children:v69];

    [builderCopy insertChildMenu:v70 atEndOfMenuForIdentifier:UIMenuView];
  }
}

@end