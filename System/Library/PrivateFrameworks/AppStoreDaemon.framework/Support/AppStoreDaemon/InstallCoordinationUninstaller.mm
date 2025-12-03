@interface InstallCoordinationUninstaller
- (void)uninstallApp:(id)app requestUserConfirmation:(BOOL)confirmation withResultHandler:(id)handler;
@end

@implementation InstallCoordinationUninstaller

- (void)uninstallApp:(id)app requestUserConfirmation:(BOOL)confirmation withResultHandler:(id)handler
{
  confirmationCopy = confirmation;
  appCopy = app;
  handlerCopy = handler;
  bundleID = [appCopy bundleID];
  if (bundleID)
  {
    bundleID2 = [appCopy bundleID];
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_10023FA14;
    v14[3] = &unk_10051B548;
    v15 = handlerCopy;
    [IXAppInstallCoordinator uninstallAppWithBundleID:bundleID2 requestUserConfirmation:confirmationCopy completion:v14];

    v11 = v15;
  }

  else
  {
    v12 = ASDErrorDomain;
    v16 = NSDebugDescriptionErrorKey;
    v17 = @"No bundle ID was specified";
    v11 = [NSDictionary dictionaryWithObjects:&v17 forKeys:&v16 count:1];
    v13 = [NSError errorWithDomain:v12 code:650 userInfo:v11];
    (*(handlerCopy + 2))(handlerCopy, v13);
  }
}

@end