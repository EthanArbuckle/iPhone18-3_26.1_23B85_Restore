@interface RegisterCacheManagementAssetsService
@end

@implementation RegisterCacheManagementAssetsService

void __RegisterCacheManagementAssetsService_block_invoke(id a1)
{
  v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v1 = dispatch_queue_create("com.apple.CacheDeleteManagedAssets", v3);
  v2 = _MergedGlobals_0;
  _MergedGlobals_0 = v1;
}

CacheDeleteManagedAssets *__cdecl __RegisterCacheManagementAssetsService_block_invoke_2(id a1, NSDictionary *a2, int a3, BOOL a4, BOOL a5)
{
  v8 = a2;
  v9 = _MergedGlobals_0;
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = __RegisterCacheManagementAssetsService_block_invoke_3;
  v14[3] = &unk_10000C7B0;
  v17 = a4;
  v15 = v8;
  v16 = a3;
  v18 = a5;
  v10 = v8;
  dispatch_sync(v9, v14);
  v11 = qword_100010618;
  v12 = qword_100010618;

  return v11;
}

@end