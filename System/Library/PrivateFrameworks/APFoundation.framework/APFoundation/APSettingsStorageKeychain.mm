@interface APSettingsStorageKeychain
- (APSettingsStorageKeychain)initWithDefaultValues:(id)a3;
- (id)valueForKey:(id)a3 settings:(id)a4 error:(id *)a5;
- (void)setValue:(id)a3 forKey:(id)a4 settings:(id)a5 error:(id *)a6;
@end

@implementation APSettingsStorageKeychain

- (APSettingsStorageKeychain)initWithDefaultValues:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = APSettingsStorageKeychain;
  v8 = [(APSettingsStorageKeychain *)&v12 init];
  if (v8)
  {
    v9 = objc_msgSend_copy(v4, v5, v6, v7);
    defaults = v8->_defaults;
    v8->_defaults = v9;
  }

  return v8;
}

- (id)valueForKey:(id)a3 settings:(id)a4 error:(id *)a5
{
  v8 = a3;
  v10 = a4;
  if (v10)
  {
    v33 = 0;
    v11 = &v33;
    v12 = objc_msgSend_objectForKey_settings_error_(APKeychainServices, v9, v8, v10, &v33);
  }

  else
  {
    v32 = 0;
    v11 = &v32;
    v12 = objc_msgSend_objectForKey_error_(APKeychainServices, v9, v8, &v32);
  }

  v13 = v12;
  v14 = *v11;
  v18 = objc_msgSend_defaults(self, v15, v16, v17);
  v22 = objc_msgSend_lastNamespacedComponent(v8, v19, v20, v21);
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
    if (a5 && v14)
    {
      v28 = v14;
      v29 = 0;
      *a5 = v14;
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

- (void)setValue:(id)a3 forKey:(id)a4 settings:(id)a5 error:(id *)a6
{
  v27 = a3;
  v10 = a4;
  v11 = a5;
  v15 = objc_msgSend_defaults(self, v12, v13, v14);
  v19 = objc_msgSend_lastNamespacedComponent(v10, v16, v17, v18);
  v22 = objc_msgSend_objectForKey_(v15, v20, v19, v21);

  if (objc_msgSend_isEqual_(v22, v23, v27, v24))
  {
    v26 = 0;
    if (!v11)
    {
      goto LABEL_8;
    }

LABEL_6:
    objc_msgSend_setObject_forKey_settings_error_(APKeychainServices, v25, v26, v10, v11, a6);
    goto LABEL_9;
  }

  if (v11)
  {
    v26 = v27;
    goto LABEL_6;
  }

  v26 = v27;
LABEL_8:
  objc_msgSend_setObject_forKey_error_(APKeychainServices, v25, v26, v10, a6);
LABEL_9:
}

@end