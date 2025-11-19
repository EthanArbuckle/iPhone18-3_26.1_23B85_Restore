@interface AMSDeviceState
+ (int)ams_deviceUnlockedSinceBoot;
@end

@implementation AMSDeviceState

+ (int)ams_deviceUnlockedSinceBoot
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v2 = _MergedGlobals_103;
  v9 = _MergedGlobals_103;
  if (!_MergedGlobals_103)
  {
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __getMKBDeviceUnlockedSinceBootSymbolLoc_block_invoke;
    v5[3] = &unk_1E73B3880;
    v5[4] = &v6;
    __getMKBDeviceUnlockedSinceBootSymbolLoc_block_invoke(v5);
    v2 = v7[3];
  }

  _Block_object_dispose(&v6, 8);
  if (!v2)
  {
    dlerror();
    v4 = abort_report_np();
    _Block_object_dispose(&v6, 8);
    _Unwind_Resume(v4);
  }

  return v2();
}

@end