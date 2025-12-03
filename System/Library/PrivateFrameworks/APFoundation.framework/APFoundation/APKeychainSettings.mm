@interface APKeychainSettings
+ (id)settingsForThisDeviceOnly:(id)only;
@end

@implementation APKeychainSettings

+ (id)settingsForThisDeviceOnly:(id)only
{
  v3 = MEMORY[0x1E695DF90];
  onlyCopy = only;
  v5 = objc_alloc_init(v3);
  objc_msgSend_setObject_forKeyedSubscript_(v5, v6, @"apple", *MEMORY[0x1E697ABD0]);
  objc_msgSend_setObject_forKeyedSubscript_(v5, v7, *MEMORY[0x1E697B008], *MEMORY[0x1E697AFF8]);
  objc_msgSend_setObject_forKeyedSubscript_(v5, v8, @"com.apple.iAdIDRecords", *MEMORY[0x1E697AE88]);
  objc_msgSend_setObject_forKeyedSubscript_(v5, v9, *MEMORY[0x1E697ABE8], *MEMORY[0x1E697ABD8]);
  v12 = objc_msgSend_dataUsingEncoding_(onlyCopy, v10, 4, v11);

  objc_msgSend_setObject_forKeyedSubscript_(v5, v13, v12, *MEMORY[0x1E697ACF0]);
  objc_msgSend_setObject_forKeyedSubscript_(v5, v14, v12, *MEMORY[0x1E697AC30]);

  return v5;
}

@end