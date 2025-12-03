@interface APSettingsStorageKeychain
- (APSettingsStorageKeychain)initWithDefaultValues:(id)values;
- (id)valueForKey:(id)key settings:(id)settings error:(id *)error;
- (void)setValue:(id)value forKey:(id)key settings:(id)settings error:(id *)error;
@end

@implementation APSettingsStorageKeychain

- (APSettingsStorageKeychain)initWithDefaultValues:(id)values
{
  valuesCopy = values;
  v12.receiver = self;
  v12.super_class = APSettingsStorageKeychain;
  v8 = [(APSettingsStorageKeychain *)&v12 init];
  if (v8)
  {
    v9 = objc_msgSend_copy(valuesCopy, v5, v6, v7);
    defaults = v8->_defaults;
    v8->_defaults = v9;
  }

  return v8;
}

- (id)valueForKey:(id)key settings:(id)settings error:(id *)error
{
  keyCopy = key;
  settingsCopy = settings;
  if (settingsCopy)
  {
    v33 = 0;
    v11 = &v33;
    v12 = objc_msgSend_objectForKey_settings_error_(APKeychainServices, v9, keyCopy, settingsCopy, &v33);
  }

  else
  {
    v32 = 0;
    v11 = &v32;
    v12 = objc_msgSend_objectForKey_error_(APKeychainServices, v9, keyCopy, &v32);
  }

  v13 = v12;
  v14 = *v11;
  v18 = objc_msgSend_defaults(self, v15, v16, v17);
  v22 = objc_msgSend_lastNamespacedComponent(keyCopy, v19, v20, v21);
  v25 = objc_msgSend_objectForKey_(v18, v23, v22, v24);

  if (v14)
  {
    v26 = 1;
  }

  else
  {
    v26 = v13 == 0;
  }

  if (!v26 || v25 == 0)
  {
    if (error && v14)
    {
      v28 = v14;
      v29 = 0;
      *error = v14;
      goto LABEL_17;
    }

    v30 = v13;
  }

  else
  {
    v30 = v25;
  }

  v29 = v30;
LABEL_17:

  return v29;
}

- (void)setValue:(id)value forKey:(id)key settings:(id)settings error:(id *)error
{
  valueCopy = value;
  keyCopy = key;
  settingsCopy = settings;
  v15 = objc_msgSend_defaults(self, v12, v13, v14);
  v19 = objc_msgSend_lastNamespacedComponent(keyCopy, v16, v17, v18);
  v22 = objc_msgSend_objectForKey_(v15, v20, v19, v21);

  if (objc_msgSend_isEqual_(v22, v23, valueCopy, v24))
  {
    v26 = 0;
    if (!settingsCopy)
    {
      goto LABEL_8;
    }

LABEL_6:
    objc_msgSend_setObject_forKey_settings_error_(APKeychainServices, v25, v26, keyCopy, settingsCopy, error);
    goto LABEL_9;
  }

  if (settingsCopy)
  {
    v26 = valueCopy;
    goto LABEL_6;
  }

  v26 = valueCopy;
LABEL_8:
  objc_msgSend_setObject_forKey_error_(APKeychainServices, v25, v26, keyCopy, error);
LABEL_9:
}

@end