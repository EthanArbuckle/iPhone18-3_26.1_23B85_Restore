@interface APSettingsStorageUserDefaults
- (APSettingsStorageUserDefaults)initWithDefaultValues:(id)values;
- (id)valueForKey:(id)key error:(id *)error;
- (void)setValue:(id)value forKey:(id)key error:(id *)error;
@end

@implementation APSettingsStorageUserDefaults

- (APSettingsStorageUserDefaults)initWithDefaultValues:(id)values
{
  valuesCopy = values;
  v22.receiver = self;
  v22.super_class = APSettingsStorageUserDefaults;
  v8 = [(APSettingsStorageUserDefaults *)&v22 init];
  if (!v8)
  {
    goto LABEL_4;
  }

  if (objc_msgSend_isAppleInternalInstall(APSystemInternal, v5, v6, v7))
  {
    v9 = objc_alloc(MEMORY[0x1E695E000]);
    v12 = objc_msgSend_initWithSuiteName_(v9, v10, @"com.apple.AdPlatforms", v11);
    v16 = objc_msgSend_copy(valuesCopy, v13, v14, v15);
    defaults = v8->_defaults;
    v8->_defaults = v16;

LABEL_4:
    v18 = v8;
    goto LABEL_8;
  }

  v19 = APLogForCategory(0x2FuLL);
  if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
  {
    *v21 = 0;
    _os_log_impl(&dword_1BADC1000, v19, OS_LOG_TYPE_ERROR, "Support for user defaults storage is not supported for this case, please utilize another storage type.", v21, 2u);
  }

  v18 = 0;
LABEL_8:

  return v18;
}

- (id)valueForKey:(id)key error:(id *)error
{
  keyCopy = key;
  if (objc_msgSend_isAppleInternalInstall(APSystemInternal, v6, v7, v8))
  {
    v9 = objc_alloc(MEMORY[0x1E695E000]);
    v12 = objc_msgSend_initWithSuiteName_(v9, v10, @"com.apple.AdPlatforms", v11);
    v15 = objc_msgSend_objectForKey_(v12, v13, keyCopy, v14);
    v19 = v15;
    if (v15)
    {
      v20 = v15;
    }

    else
    {
      v21 = objc_msgSend_defaults(self, v16, v17, v18);
      v25 = objc_msgSend_lastNamespacedComponent(keyCopy, v22, v23, v24);
      v20 = objc_msgSend_objectForKey_(v21, v26, v25, v27);
    }
  }

  else
  {
    v20 = 0;
  }

  return v20;
}

- (void)setValue:(id)value forKey:(id)key error:(id *)error
{
  v39[1] = *MEMORY[0x1E69E9840];
  valueCopy = value;
  keyCopy = key;
  if (objc_msgSend_isAppleInternalInstall(APSystemInternal, v9, v10, v11))
  {
    v12 = objc_alloc(MEMORY[0x1E695E000]);
    v15 = objc_msgSend_initWithSuiteName_(v12, v13, @"com.apple.AdPlatforms", v14);
    v19 = objc_msgSend_defaults(self, v16, v17, v18);
    v23 = objc_msgSend_lastNamespacedComponent(keyCopy, v20, v21, v22);
    v26 = objc_msgSend_objectForKey_(v19, v24, v23, v25);

    if (objc_msgSend_isEqual_(v26, v27, valueCopy, v28))
    {
      objc_msgSend_setObject_forKey_(v15, v29, 0, keyCopy);
    }

    else
    {
      objc_msgSend_setObject_forKey_(v15, v29, valueCopy, keyCopy);
      v38 = @"Key";
      v39[0] = keyCopy;
      v31 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v30, v39, &v38, 1);
      v35 = objc_msgSend_defaultCenter(MEMORY[0x1E696AD88], v32, v33, v34);
      objc_msgSend_postNotificationName_object_userInfo_(v35, v36, @"com.apple.AdPlatforms.defaultsDidChange", self, v31);
    }
  }

  v37 = *MEMORY[0x1E69E9840];
}

@end