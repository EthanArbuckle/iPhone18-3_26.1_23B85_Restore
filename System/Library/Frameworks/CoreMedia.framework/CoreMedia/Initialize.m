@interface Initialize
@end

@implementation Initialize

void *__figMobileAsset_Initialize_block_invoke()
{
  fig_note_initialize_category_with_default_work_cf(&gFigMobileAssetTrace[1], @"mobileasset_trace", @"com.apple.coremedia", ", "com.apple.coremedia"", 0, 0, gFigMobileAssetTrace);
  fig_note_initialize_category_with_default_work_cf(&dword_1EAF1CCC8, @"mobileasset_trace", @"com.apple.coremedia", ", "com.apple.coremedia"", 0, 0, &qword_1EAF1CCC0);
  result = dlopen("/System/Library/PrivateFrameworks/MobileAsset.framework/MobileAsset", 4);
  sMobileAssetLib = result;
  if (result)
  {
    qword_1ED4CC448 = objc_getClass("MAAsset");
    sMAAssetQueryClass = objc_getClass("MAAssetQuery");
    result = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], 0);
    _MergedGlobals_7 = result;
  }

  return result;
}

size_t __plugin_Initialize_block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 40);
  DerivedStorage = CMBaseObjectGetDerivedStorage(v2);
  v4 = *(DerivedStorage + 56);
  v5 = CFGetAllocator(v2);
  result = v4(v5, DerivedStorage + 64);
  if (!result)
  {
    DefaultLocalCenter = CMNotificationCenterGetDefaultLocalCenter();
    CMNotificationCenterAddListener(DefaultLocalCenter, v2, ActivatedEndpointsChangedNotificationCallback, @"EndpointManager_ActivatedEndpointsChanged", *(DerivedStorage + 64));
    result = PeruseActivatedEndpoints(v2);
  }

  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

void __endpointCentricPlugin_Initialize_block_invoke(void *a1)
{
  v2 = a1[5];
  if (v2)
  {
    *(a1[6] + 64) = v2;
  }

  v3 = a1[7];
  DerivedStorage = CMBaseObjectGetDerivedStorage(v3);
  v5 = *(DerivedStorage + 32);
  v6 = CFGetAllocator(v3);
  v7 = v5(v6, DerivedStorage + 40);
  if (!v7)
  {
    DefaultLocalCenter = CMNotificationCenterGetDefaultLocalCenter();
    CMNotificationCenterAddListener(DefaultLocalCenter, v3, endpointCentricPlugin_ActivatedEndpointsChangedNotificationCallback, @"EndpointManager_ActivatedEndpointsChanged", *(DerivedStorage + 40));
    endpointCentricPlugin_PeruseActivatedEndpoints(v3);
  }

  *(*(a1[4] + 8) + 24) = v7;
  v9 = a1[7];

  CFRelease(v9);
}

@end