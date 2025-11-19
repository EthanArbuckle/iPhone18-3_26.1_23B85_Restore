@interface VCShortcutsMigrator
- (BOOL)performMigration;
@end

@implementation VCShortcutsMigrator

- (BOOL)performMigration
{
  if (([(VCShortcutsMigrator *)self userDataDisposition]& 1) != 0)
  {
    return 1;
  }

  v10 = 0;
  v2 = [IXAppInstallCoordinator uninstallAppWithBundleID:VCBundleIdentifierShortcutsiOSAppStore requestUserConfirmation:0 waitForDeletion:0 error:&v10];
  v3 = v10;
  _DMLogFunc();
  if (v2)
  {
    v4 = +[VCVoiceShortcutClient standardClient];
    v9 = v3;
    v5 = [v4 requestDataMigration:&v9];
    v6 = v9;

    _DMLogFunc();
    v7 = (v5 & 1) != 0;
    v3 = v6;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

@end