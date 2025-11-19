@interface ICQuicknoteWindowSceneDelegate
- (ICViewControllerManager)viewControllerManager;
- (void)scene:(id)a3 willConnectToSession:(id)a4 options:(id)a5;
- (void)sceneDidDisconnect:(id)a3;
- (void)sceneWillEnterForeground:(id)a3;
- (void)setupQuickNoteWithWindowScene:(id)a3;
@end

@implementation ICQuicknoteWindowSceneDelegate

- (ICViewControllerManager)viewControllerManager
{
  v2 = [(ICQuicknoteWindowSceneDelegate *)self icWindow];
  v3 = [v2 viewControllerManager];

  return v3;
}

- (void)scene:(id)a3 willConnectToSession:(id)a4 options:(id)a5
{
  v6 = a3;
  v7 = os_log_create("com.apple.notes", "UI");
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 136315394;
    v13 = "[ICQuicknoteWindowSceneDelegate scene:willConnectToSession:options:]";
    v14 = 1024;
    v15 = 45;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%s:%d", &v12, 0x12u);
  }

  objc_opt_class();
  v8 = ICDynamicCast();

  v9 = [v8 screen];
  v10 = [v9 displayIdentity];
  v11 = [v10 expectsSecureRendering];

  if (v11)
  {
    [(ICQuicknoteWindowSceneDelegate *)self setupQuickNoteWithWindowScene:v8];
  }

  else
  {
    [ICAssert handleFailedAssertWithCondition:"__objc_no" functionName:"[ICQuicknoteWindowSceneDelegate scene:willConnectToSession:options:]" simulateCrash:1 showAlert:0 format:@"Trying to show non secure screen with secure window scene delegate"];
  }
}

- (void)sceneWillEnterForeground:(id)a3
{
  v4 = a3;
  v5 = os_log_create("com.apple.notes", "UI");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    *&buf[4] = "[ICQuicknoteWindowSceneDelegate sceneWillEnterForeground:]";
    *&buf[12] = 1024;
    *&buf[14] = 61;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s:%d", buf, 0x12u);
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x2020000000;
  v17 = 0;
  v6 = +[ICNoteContext sharedContext];
  v7 = [v6 managedObjectContext];

  [UIView setAnimationsEnabled:0];
  v8 = [ICAccount accountsWithAccountType:1 context:v7];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100148990;
  v15[3] = &unk_100649518;
  v15[4] = buf;
  [v8 enumerateObjectsUsingBlock:v15];

  if (*(*&buf[8] + 24))
  {
    goto LABEL_7;
  }

  v9 = [ICAccount accountsWithAccountType:3 context:v7];
  v10 = [v9 count];
  if (v10)
  {
    LOBYTE(v10) = +[ICMigrationController didChooseToMigrateLocalAccount];
  }

  *(*&buf[8] + 24) = v10;

  if (*(*&buf[8] + 24))
  {
LABEL_7:
    v11 = [(ICQuicknoteWindowSceneDelegate *)self viewControllerManager];
    [v11 dismissAnyPresentedViewControllerAnimated:0 completion:0];

    v12 = +[ICQuickNoteSessionManager sharedManager];
    [v12 setSecureScreenShowing:1];
  }

  v13 = [(ICQuicknoteWindowSceneDelegate *)self icWindow];
  [v13 setHidden:0];

  v14 = [(ICQuicknoteWindowSceneDelegate *)self icWindow];
  [v14 makeKeyWindow];

  _Block_object_dispose(buf, 8);
}

- (void)sceneDidDisconnect:(id)a3
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_100148A4C;
  v3[3] = &unk_100645E30;
  v3[4] = self;
  [UIView performWithoutAnimation:v3];
}

- (void)setupQuickNoteWithWindowScene:(id)a3
{
  v4 = a3;
  v5 = os_log_create("com.apple.notes", "QuickNote");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v27 = "[ICQuicknoteWindowSceneDelegate setupQuickNoteWithWindowScene:]";
    v28 = 1024;
    v29 = 133;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s:%d", buf, 0x12u);
  }

  v6 = +[ICNoteContext sharedContext];
  v7 = [v6 managedObjectContext];

  v8 = +[ICQuickNoteSessionManager sharedManager];
  [v8 setHasClearedInitialSelectedTextIfSecure:0];
  [v8 setHasClearedInitialSearchTextIfSecure:0];
  [v8 setHasClearedInitialReplaceTextIfSecure:0];
  v9 = [[ICSecureWindow alloc] initWithWindowScene:v4 behavior:0];

  v10 = objc_alloc_init(ICViewControllerManager);
  [v9 setViewControllerManager:v10];
  v11 = +[ICQuickNoteSessionSettings showOnLockScreen];
  v12 = +[ICAppDelegate sharedInstance];
  v13 = v12;
  if (v11 == 3)
  {
    [v12 quicknoteArchiveState];
  }

  else
  {
    [v12 lastBackgroundedArchiveState];
  }
  v14 = ;

  [ICQuickNoteSessionManager requirePasscodeInContext:v7 stateArchive:v14];
  [(ICViewControllerManager *)v10 setupWithWindow:v9 stateRestoreArchive:0 completion:0];
  [(ICQuicknoteWindowSceneDelegate *)self setIcWindow:v9];
  v15 = +[_UIRemoteKeyboards sharedRemoteKeyboards];
  [v15 setEnableMultiscreenHack:1];

  v16 = [(ICViewControllerManager *)v10 noteEditorViewController];
  [v8 saveSession];
  v22 = v8;
  v23 = v7;
  v24 = v14;
  v25 = v10;
  v17 = v10;
  v18 = v14;
  v19 = v7;
  v20 = v8;
  v21 = v16;
  dispatchMainAfterDelay();
}

@end