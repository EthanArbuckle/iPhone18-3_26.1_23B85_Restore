@interface ICCommonWindowSceneDelegate
- (BOOL)_appropriateToSetupSBSceneWithManagedObjectContext:(id)context;
- (ICViewControllerManager)viewControllerManager;
- (void)scene:(id)scene willConnectToSession:(id)session options:(id)options;
- (void)sceneDidBecomeActive:(id)active;
- (void)sceneDidDisconnect:(id)disconnect;
- (void)sceneDidEnterBackground:(id)background;
- (void)sceneWillEnterForeground:(id)foreground;
- (void)sceneWillResignActive:(id)active;
- (void)sharedDisconnectWithSessionManager:(id)manager;
@end

@implementation ICCommonWindowSceneDelegate

- (ICViewControllerManager)viewControllerManager
{
  icWindow = [(ICCommonWindowSceneDelegate *)self icWindow];
  viewControllerManager = [icWindow viewControllerManager];

  return viewControllerManager;
}

- (void)scene:(id)scene willConnectToSession:(id)session options:(id)options
{
  optionsCopy = options;
  sceneCopy = scene;
  v9 = os_log_create("com.apple.notes", "UI");
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 136315394;
    v12 = "[ICCommonWindowSceneDelegate scene:willConnectToSession:options:]";
    v13 = 1024;
    v14 = 36;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%s:%d", &v11, 0x12u);
  }

  objc_opt_class();
  v10 = ICDynamicCast();

  [(ICCommonWindowSceneDelegate *)self ic_setupWithScene:v10 options:optionsCopy];
}

- (void)sceneDidBecomeActive:(id)active
{
  v3 = os_log_create("com.apple.notes", "UI");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 136315394;
    v5 = "[ICCommonWindowSceneDelegate sceneDidBecomeActive:]";
    v6 = 1024;
    v7 = 48;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%s:%d", &v4, 0x12u);
  }
}

- (void)sceneWillResignActive:(id)active
{
  v3 = os_log_create("com.apple.notes", "UI");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 136315394;
    v5 = "[ICCommonWindowSceneDelegate sceneWillResignActive:]";
    v6 = 1024;
    v7 = 53;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%s:%d", &v4, 0x12u);
  }
}

- (BOOL)_appropriateToSetupSBSceneWithManagedObjectContext:(id)context
{
  contextCopy = context;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  if (!contextCopy)
  {
    v4 = +[ICNoteContext sharedContext];
    contextCopy = [v4 managedObjectContext];
  }

  v5 = [ICAccount accountsWithAccountType:1 context:contextCopy];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1000E2A9C;
  v10[3] = &unk_100649518;
  v10[4] = &v11;
  [v5 enumerateObjectsUsingBlock:v10];

  if (v12[3])
  {
    v6 = 1;
  }

  else
  {
    v7 = [ICAccount accountsWithAccountType:3 context:contextCopy];
    v8 = [v7 count];
    if (v8)
    {
      LOBYTE(v8) = +[ICMigrationController didChooseToMigrateLocalAccount];
    }

    *(v12 + 24) = v8;

    v6 = *(v12 + 24);
  }

  _Block_object_dispose(&v11, 8);

  return v6 & 1;
}

- (void)sceneWillEnterForeground:(id)foreground
{
  v4 = os_log_create("com.apple.notes", "UI");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v12 = "[ICCommonWindowSceneDelegate sceneWillEnterForeground:]";
    v13 = 1024;
    v14 = 83;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%s:%d", buf, 0x12u);
  }

  v5 = +[ICNoteContext sharedContext];
  managedObjectContext = [v5 managedObjectContext];

  if ([(ICCommonWindowSceneDelegate *)self _appropriateToSetupSBSceneWithManagedObjectContext:managedObjectContext])
  {
    viewControllerManager = [(ICCommonWindowSceneDelegate *)self viewControllerManager];

    if (!viewControllerManager)
    {
      [ICAssert handleFailedAssertWithCondition:"((self.viewControllerManager) != nil)" functionName:"[ICCommonWindowSceneDelegate sceneWillEnterForeground:]" simulateCrash:1 showAlert:0 format:@"Expected non-nil value for '%s'", "self.viewControllerManager"];
    }

    viewControllerManager2 = [(ICCommonWindowSceneDelegate *)self viewControllerManager];
    [viewControllerManager2 dismissAnyPresentedViewControllerAnimated:0 completion:0];
  }

  icWindow = [(ICCommonWindowSceneDelegate *)self icWindow];
  [icWindow setHidden:0];

  icWindow2 = [(ICCommonWindowSceneDelegate *)self icWindow];
  [icWindow2 makeKeyWindow];
}

- (void)sceneDidEnterBackground:(id)background
{
  v3 = os_log_create("com.apple.notes", "UI");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 136315394;
    v5 = "[ICCommonWindowSceneDelegate sceneDidEnterBackground:]";
    v6 = 1024;
    v7 = 99;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%s:%d", &v4, 0x12u);
  }
}

- (void)sharedDisconnectWithSessionManager:(id)manager
{
  managerCopy = manager;
  viewControllerManager = [(ICCommonWindowSceneDelegate *)self viewControllerManager];
  noteEditorViewController = [viewControllerManager noteEditorViewController];

  if (!noteEditorViewController)
  {
    [ICAssert handleFailedAssertWithCondition:"((noteEditorVC) != nil)" functionName:"[ICCommonWindowSceneDelegate sharedDisconnectWithSessionManager:]" simulateCrash:1 showAlert:0 format:@"Expected non-nil value for '%s'", "noteEditorVC"];
  }

  note = [noteEditorViewController note];
  if (managerCopy && [managerCopy isSessionActive])
  {
    presentedViewController = [noteEditorViewController presentedViewController];
    v8 = objc_opt_respondsToSelector();

    if (v8)
    {
      presentedViewController2 = [noteEditorViewController presentedViewController];
      [presentedViewController2 prepareForDismissal];
    }

    [managerCopy endSession];
  }

  if ([note isEmpty])
  {
    [ICNote deleteEmptyNote:note];
    managedObjectContext = [note managedObjectContext];
    [managedObjectContext ic_save];
  }

  else
  {
    [noteEditorViewController saveNote];
    v11 = +[ICNoteContext sharedContext];
    [v11 saveImmediately];

    [noteEditorViewController updateInlineDrawings];
    [noteEditorViewController resetTextViewUndoManager];
    managedObjectContext = [(ICCommonWindowSceneDelegate *)self viewControllerManager];
    currentAttachmentPresenter = [managedObjectContext currentAttachmentPresenter];
    [currentAttachmentPresenter dismissAnimated:0 completion:0];
  }

  viewControllerManager2 = [(ICCommonWindowSceneDelegate *)self viewControllerManager];
  [viewControllerManager2 dismissAnyPresentedViewControllerAnimated:0 completion:0];

  [(ICCommonWindowSceneDelegate *)self setIcWindow:0];
}

- (void)sceneDidDisconnect:(id)disconnect
{
  disconnectCopy = disconnect;
  v5 = os_log_create("com.apple.notes", "UI");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v10 = "[ICCommonWindowSceneDelegate sceneDidDisconnect:]";
    v11 = 1024;
    v12 = 145;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s:%d", buf, 0x12u);
  }

  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000E3088;
  v7[3] = &unk_100645BA0;
  v7[4] = self;
  v8 = disconnectCopy;
  v6 = disconnectCopy;
  [UIView performWithoutAnimation:v7];
}

@end