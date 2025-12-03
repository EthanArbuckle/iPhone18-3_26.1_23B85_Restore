@interface APSigningAuthoritySettings
+ (id)storageWithDefaultValues:(id)values;
@end

@implementation APSigningAuthoritySettings

+ (id)storageWithDefaultValues:(id)values
{
  valuesCopy = values;
  v4 = [APSettingsStorageUserDefaults alloc];
  v7 = objc_msgSend_initWithDefaultValues_(v4, v5, valuesCopy, v6);

  return v7;
}

@end