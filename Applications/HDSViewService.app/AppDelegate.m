@interface AppDelegate
- (void)applicationWillTerminate:(id)a3;
@end

@implementation AppDelegate

- (void)applicationWillTerminate:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (dword_100100FE0 <= 30)
  {
    v5 = v3;
    if (dword_100100FE0 != -1 || (v3 = _LogCategory_Initialize(), v4 = v5, v3))
    {
      v3 = sub_1000B4D7C();
      v4 = v5;
    }
  }

  _objc_release_x1(v3, v4);
}

@end