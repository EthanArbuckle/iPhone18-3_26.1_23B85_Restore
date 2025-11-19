@interface CloudSettingsSyncEngineAccessProvider
+ (id)cloudSettingsSyncEngineAccessor;
@end

@implementation CloudSettingsSyncEngineAccessProvider

+ (id)cloudSettingsSyncEngineAccessor
{
  v2 = objc_alloc_init(WBSettingsSyncEngineAccess);

  return v2;
}

@end