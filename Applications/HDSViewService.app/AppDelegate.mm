@interface AppDelegate
- (void)applicationWillTerminate:(id)terminate;
@end

@implementation AppDelegate

- (void)applicationWillTerminate:(id)terminate
{
  terminateCopy = terminate;
  v4 = terminateCopy;
  if (dword_100100FE0 <= 30)
  {
    v5 = terminateCopy;
    if (dword_100100FE0 != -1 || (terminateCopy = _LogCategory_Initialize(), v4 = v5, terminateCopy))
    {
      terminateCopy = sub_1000B4D7C();
      v4 = v5;
    }
  }

  _objc_release_x1(terminateCopy, v4);
}

@end