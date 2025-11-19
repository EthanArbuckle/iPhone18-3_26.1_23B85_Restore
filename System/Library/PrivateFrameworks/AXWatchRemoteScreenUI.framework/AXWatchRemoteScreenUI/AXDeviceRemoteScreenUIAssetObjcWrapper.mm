@interface AXDeviceRemoteScreenUIAssetObjcWrapper
+ (id)watchView;
+ (uint64_t)watchView;
@end

@implementation AXDeviceRemoteScreenUIAssetObjcWrapper

+ (id)watchView
{
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v2 = getAXWatchRemoteScreenIsPairedGizmoHasStingSupportSymbolLoc_ptr;
  v15 = getAXWatchRemoteScreenIsPairedGizmoHasStingSupportSymbolLoc_ptr;
  if (!getAXWatchRemoteScreenIsPairedGizmoHasStingSupportSymbolLoc_ptr)
  {
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __getAXWatchRemoteScreenIsPairedGizmoHasStingSupportSymbolLoc_block_invoke;
    v11[3] = &unk_278BE1400;
    v11[4] = &v12;
    __getAXWatchRemoteScreenIsPairedGizmoHasStingSupportSymbolLoc_block_invoke(v11);
    v2 = v13[3];
  }

  _Block_object_dispose(&v12, 8);
  if (!v2)
  {
    v10 = +[AXDeviceRemoteScreenUIAssetObjcWrapper watchView];
    _Block_object_dispose(&v12, 8);
    _Unwind_Resume(v10);
  }

  v3 = v2();
  v4 = MEMORY[0x277D755B8];
  v5 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  if (v3)
  {
    v6 = @"AXAppleWatchRemoteChrome-sting";
  }

  else
  {
    v6 = @"AXAppleWatchRemoteChrome";
  }

  v7 = [v4 imageNamed:v6 inBundle:v5];

  v8 = [objc_alloc(MEMORY[0x277D755E8]) initWithImage:v7];

  return v8;
}

+ (uint64_t)watchView
{
  dlerror();
  v0 = abort_report_np();
  return __getAXUIBannerPresenterClass_block_invoke_cold_1(v0);
}

@end