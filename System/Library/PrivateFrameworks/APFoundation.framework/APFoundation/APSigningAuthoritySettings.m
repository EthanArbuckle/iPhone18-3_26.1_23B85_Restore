@interface APSigningAuthoritySettings
+ (id)storageWithDefaultValues:(id)a3;
@end

@implementation APSigningAuthoritySettings

+ (id)storageWithDefaultValues:(id)a3
{
  v3 = a3;
  v4 = [APSettingsStorageUserDefaults alloc];
  v7 = objc_msgSend_initWithDefaultValues_(v4, v5, v3, v6);

  return v7;
}

@end