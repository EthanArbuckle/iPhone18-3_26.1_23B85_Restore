@interface ICCommonWindowSceneDelegate
- (BOOL)_appropriateToSetupSBSceneWithManagedObjectContext:(id)a3;
- (ICViewControllerManager)viewControllerManager;
- (void)scene:(id)a3 willConnectToSession:(id)a4 options:(id)a5;
- (void)sceneDidBecomeActive:(id)a3;
- (void)sceneDidDisconnect:(id)a3;
- (void)sceneDidEnterBackground:(id)a3;
- (void)sceneWillEnterForeground:(id)a3;
- (void)sceneWillResignActive:(id)a3;
- (void)sharedDisconnectWithSessionManager:(id)a3;
@end

@implementation ICCommonWindowSceneDelegate

- (ICViewControllerManager)viewControllerManager
{
  v2 = [(ICCommonWindowSceneDelegate *)self icWindow];
  v3 = [v2 viewControllerManager];

  return v3;
}

- (void)scene:(id)a3 willConnectToSession:(id)a4 options:(id)a5
{
  v7 = a5;
  v8 = a3;
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

  [(ICCommonWindowSceneDelegate *)self ic_setupWithScene:v10 options:v7];
}

- (void)sceneDidBecomeActive:(id)a3
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

- (void)sceneWillResignActive:(id)a3
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

- (BOOL)_appropriateToSetupSBSceneWithManagedObjectContext:(id)a3
{
  v3 = a3;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  if (!v3)
  {
    v4 = +[ICNoteContext sharedContext];
    v3 = [v4 managedObjectContext];
  }

  v5 = [ICAccount accountsWithAccountType:1 context:v3];
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
    v7 = [ICAccount accountsWithAccountType:3 context:v3];
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

- (void)sceneWillEnterForeground:(id)a3
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
  v6 = [v5 managedObjectContext];

  if ([(ICCommonWindowSceneDelegate *)self _appropriateToSetupSBSceneWithManagedObjectContext:v6])
  {
    v7 = [(ICCommonWindowSceneDelegate *)self viewControllerManager];

    if (!v7)
    {
      [ICAssert handleFailedAssertWithCondition:"((self.viewControllerManager) != nil)" functionName:"[ICCommonWindowSceneDelegate sceneWillEnterForeground:]" simulateCrash:1 showAlert:0 format:@"Expected non-nil value for '%s'", "self.viewControllerManager"];
    }

    v8 = [(ICCommonWindowSceneDelegate *)self viewControllerManager];
    [v8 dismissAnyPresentedViewControllerAnimated:0 completion:0];
  }

  v9 = [(ICCommonWindowSceneDelegate *)self icWindow];
  [v9 setHidden:0];

  v10 = [(ICCommonWindowSceneDelegate *)self icWindow];
  [v10 makeKeyWindow];
}

- (void)sceneDidEnterBackground:(id)a3
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

- (void)sharedDisconnectWithSessionManager:(id)a3
{
  v14 = a3;
  v4 = [(ICCommonWindowSceneDelegate *)self viewControllerManager];
  v5 = [v4 noteEditorViewController];

  if (!v5)
  {
    [ICAssert handleFailedAssertWithCondition:"((noteEditorVC) != nil)" functionName:"[ICCommonWindowSceneDelegate sharedDisconnectWithSessionManager:]" simulateCrash:1 showAlert:0 format:@"Expected non-nil value for '%s'", "noteEditorVC"];
  }

  v6 = [v5 note];
  if (v14 && [v14 isSessionActive])
  {
    v7 = [v5 presentedViewController];
    v8 = objc_opt_respondsToSelector();

    if (v8)
    {
      v9 = [v5 presentedViewController];
      [v9 prepareForDismissal];
    }

    [v14 endSession];
  }

  if ([v6 isEmpty])
  {
    [ICNote deleteEmptyNote:v6];
    v10 = [v6 managedObjectContext];
    [v10 ic_save];
  }

  else
  {
    [v5 saveNote];
    v11 = +[ICNoteContext sharedContext];
    [v11 saveImmediately];

    [v5 updateInlineDrawings];
    [v5 resetTextViewUndoManager];
    v10 = [(ICCommonWindowSceneDelegate *)self viewControllerManager];
    v12 = [v10 currentAttachmentPresenter];
    [v12 dismissAnimated:0 completion:0];
  }

  v13 = [(ICCommonWindowSceneDelegate *)self viewControllerManager];
  [v13 dismissAnyPresentedViewControllerAnimated:0 completion:0];

  [(ICCommonWindowSceneDelegate *)self setIcWindow:0];
}

- (void)sceneDidDisconnect:(id)a3
{
  v4 = a3;
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
  v8 = v4;
  v6 = v4;
  [UIView performWithoutAnimation:v7];
}

@end