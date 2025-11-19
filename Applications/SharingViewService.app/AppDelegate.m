@interface AppDelegate
- (BOOL)application:(id)a3 didFinishLaunchingWithOptions:(id)a4;
- (void)applicationWillTerminate:(id)a3;
@end

@implementation AppDelegate

- (void)applicationWillTerminate:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (dword_1001BE510 <= 30)
  {
    v5 = v3;
    if (dword_1001BE510 != -1 || (v3 = _LogCategory_Initialize(), v4 = v5, v3))
    {
      v3 = LogPrintF();
      v4 = v5;
    }
  }

  _objc_release_x1(v3, v4);
}

- (BOOL)application:(id)a3 didFinishLaunchingWithOptions:(id)a4
{
  v5 = a3;
  v6 = a4;
  if (dword_1001BE510 <= 30 && (dword_1001BE510 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  SFAWDEnsureInitialized();

  return 1;
}

@end