@interface InstallCoordinationUninstaller
- (void)uninstallApp:(id)a3 requestUserConfirmation:(BOOL)a4 withResultHandler:(id)a5;
@end

@implementation InstallCoordinationUninstaller

- (void)uninstallApp:(id)a3 requestUserConfirmation:(BOOL)a4 withResultHandler:(id)a5
{
  v6 = a4;
  v7 = a3;
  v8 = a5;
  v9 = [v7 bundleID];
  if (v9)
  {
    v10 = [v7 bundleID];
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_10023FA14;
    v14[3] = &unk_10051B548;
    v15 = v8;
    [IXAppInstallCoordinator uninstallAppWithBundleID:v10 requestUserConfirmation:v6 completion:v14];

    v11 = v15;
  }

  else
  {
    v12 = ASDErrorDomain;
    v16 = NSDebugDescriptionErrorKey;
    v17 = @"No bundle ID was specified";
    v11 = [NSDictionary dictionaryWithObjects:&v17 forKeys:&v16 count:1];
    v13 = [NSError errorWithDomain:v12 code:650 userInfo:v11];
    (*(v8 + 2))(v8, v13);
  }
}

@end