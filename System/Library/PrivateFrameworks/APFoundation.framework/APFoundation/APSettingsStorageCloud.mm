@interface APSettingsStorageCloud
- (APSettingsStorageCloud)initWithDefaultValues:(id)values;
- (APSettingsStorageCloud)initWithDefaultValues:(id)values shouldUseLocalPersistance:(BOOL)persistance forSubclass:(Class)subclass;
- (id)valueForKey:(id)key error:(id *)error;
- (void)dealloc;
- (void)persistLocallyIfNeeded;
- (void)setValue:(id)value forKey:(id)key error:(id *)error;
- (void)synchronize;
- (void)updateCloudStore:(id)store;
@end

@implementation APSettingsStorageCloud

- (APSettingsStorageCloud)initWithDefaultValues:(id)values
{
  v11 = *MEMORY[0x1E69E9840];
  v5 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], a2, @"initWithDefaultValues: is not available on APSettingsStorageCloud. Please use initWithDefaultValues:shouldUseLocalPersistance:forSubclass: instead.", v3);
  v6 = APLogForCategory(0x2FuLL);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    v9 = 138543362;
    v10 = v5;
    _os_log_impl(&dword_1BADC1000, v6, OS_LOG_TYPE_ERROR, "Error: %{public}@", &v9, 0xCu);
  }

  v7 = *MEMORY[0x1E69E9840];
  return 0;
}

- (APSettingsStorageCloud)initWithDefaultValues:(id)values shouldUseLocalPersistance:(BOOL)persistance forSubclass:(Class)subclass
{
  v78 = *MEMORY[0x1E69E9840];
  valuesCopy = values;
  v75.receiver = self;
  v75.super_class = APSettingsStorageCloud;
  v11 = [(APSettingsStorageCloud *)&v75 init];
  if (v11)
  {
    v12 = objc_msgSend_copy(valuesCopy, v8, v9, v10);
    defaults = v11->_defaults;
    v11->_defaults = v12;

    v11->_useLocalPersistance = persistance;
    v14 = objc_opt_class();
    v15 = NSStringFromClass(v14);
    v19 = objc_msgSend_sha256hash(v15, v16, v17, v18);
    if (objc_msgSend_length(v19, v20, v21, v22) >= 9)
    {
      v25 = objc_msgSend_substringToIndex_(v19, v23, 8, v24);

      v19 = v25;
    }

    v26 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v23, @"cloud/%@", v24, v19);
    settingsClassNameForEFS = v11->_settingsClassNameForEFS;
    v11->_settingsClassNameForEFS = v26;

    v30 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v28, @"%@", v29, v19);
    settingsClassNameForCloud = v11->_settingsClassNameForCloud;
    v11->_settingsClassNameForCloud = v30;

    v35 = objc_msgSend_defaultStore(MEMORY[0x1E696AFB8], v32, v33, v34);
    v39 = objc_msgSend_defaultCenter(MEMORY[0x1E696AD88], v36, v37, v38);
    objc_msgSend_addObserver_selector_name_object_(v39, v40, v11, sel_updateCloudStore_, *MEMORY[0x1E696A9E8], v35);

    v41 = objc_alloc(MEMORY[0x1E695DF90]);
    v44 = objc_msgSend_initWithCapacity_(v41, v42, 1, v43);
    cloudStore = v11->_cloudStore;
    v11->_cloudStore = v44;

    if (!v11->_useLocalPersistance)
    {
      goto LABEL_19;
    }

    v49 = objc_alloc_init(APStorageManager);
    v50 = v11->_settingsClassNameForEFS;
    v74 = 0;
    v52 = objc_msgSend_fileExistsAtPath_error_(v49, v51, v50, &v74);
    v53 = v74;
    if (v53)
    {
      v54 = APLogForCategory(0x2FuLL);
      if (os_log_type_enabled(v54, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v77 = v53;
        _os_log_impl(&dword_1BADC1000, v54, OS_LOG_TYPE_ERROR, "Error finding local cloud object: %{public}@", buf, 0xCu);
      }
    }

    if (v52)
    {
      v58 = v11->_settingsClassNameForEFS;
      v72 = 0;
      v59 = objc_msgSend_objectStoredAtPath_error_(v49, v55, v58, &v72);
      v60 = v72;
      v64 = objc_msgSend_mutableCopy(v59, v61, v62, v63);
      v65 = v11->_cloudStore;
      v11->_cloudStore = v64;

      if (v60)
      {
        v66 = APLogForCategory(0x2FuLL);
        if (os_log_type_enabled(v66, OS_LOG_TYPE_ERROR))
        {
          *buf = 138543362;
          v77 = v60;
          _os_log_impl(&dword_1BADC1000, v66, OS_LOG_TYPE_ERROR, "Error finding EFS Settings object: %{public}@", buf, 0xCu);
        }
      }
    }

    else
    {
      v67 = objc_msgSend_copy(v11->_cloudStore, v55, v56, v57);
      v68 = v11->_settingsClassNameForEFS;
      v73 = 0;
      objc_msgSend_storeObject_atPath_error_(v49, v69, v67, v68, &v73);
      v60 = v73;

      if (!v60)
      {
LABEL_18:

LABEL_19:
        objc_msgSend_synchronize(v35, v46, v47, v48);

        goto LABEL_20;
      }

      v59 = APLogForCategory(0x2FuLL);
      if (os_log_type_enabled(v59, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v77 = v60;
        _os_log_impl(&dword_1BADC1000, v59, OS_LOG_TYPE_ERROR, "Error storing local cloud object: %{public}@", buf, 0xCu);
      }
    }

    goto LABEL_18;
  }

LABEL_20:

  v70 = *MEMORY[0x1E69E9840];
  return v11;
}

- (void)dealloc
{
  v5 = objc_msgSend_defaultCenter(MEMORY[0x1E696AD88], a2, v2, v3);
  v6 = *MEMORY[0x1E696A9E8];
  v10 = objc_msgSend_defaultStore(MEMORY[0x1E696AFB8], v7, v8, v9);
  objc_msgSend_removeObserver_name_object_(v5, v11, self, v6, v10);

  v12.receiver = self;
  v12.super_class = APSettingsStorageCloud;
  [(APSettingsStorageCloud *)&v12 dealloc];
}

- (void)persistLocallyIfNeeded
{
  v21 = *MEMORY[0x1E69E9840];
  if (objc_msgSend_useLocalPersistance(self, a2, v2, v3))
  {
    v5 = objc_alloc_init(APStorageManager);
    v9 = objc_msgSend_cloudStore(self, v6, v7, v8);
    v13 = objc_msgSend_settingsClassNameForEFS(self, v10, v11, v12);
    v18 = 0;
    objc_msgSend_storeObject_atPath_error_(v5, v14, v9, v13, &v18);
    v15 = v18;

    if (v15)
    {
      v16 = APLogForCategory(0x2FuLL);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v20 = v15;
        _os_log_impl(&dword_1BADC1000, v16, OS_LOG_TYPE_ERROR, "Error storing local cloud object: %{public}@", buf, 0xCu);
      }
    }
  }

  v17 = *MEMORY[0x1E69E9840];
}

- (void)updateCloudStore:(id)store
{
  v53 = *MEMORY[0x1E69E9840];
  v5 = objc_msgSend_userInfo(store, a2, store, v3);
  v8 = objc_msgSend_objectForKey_(v5, v6, *MEMORY[0x1E696A9D8], v7);
  v12 = v8;
  if (v8)
  {
    v13 = objc_msgSend_integerValue(v8, v9, v10, v11);
    if (v13 > 1)
    {
      if (v13 != 2)
      {
        goto LABEL_17;
      }

      v21 = APLogForCategory(0x2FuLL);
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_1BADC1000, v21, OS_LOG_TYPE_ERROR, "Received quota violation for iCloud Key Value store", buf, 2u);
      }
    }

    else
    {
      v46 = v12;
      v16 = objc_msgSend_objectForKey_(v5, v14, *MEMORY[0x1E696A9E0], v15);
      v20 = objc_msgSend_defaultStore(MEMORY[0x1E696AFB8], v17, v18, v19);
      v48 = 0u;
      v49 = 0u;
      v50 = 0u;
      v51 = 0u;
      v21 = v16;
      v23 = objc_msgSend_countByEnumeratingWithState_objects_count_(v21, v22, &v48, v52, 16);
      if (v23)
      {
        v27 = v23;
        v28 = *v49;
        do
        {
          for (i = 0; i != v27; ++i)
          {
            if (*v49 != v28)
            {
              objc_enumerationMutation(v21);
            }

            v30 = *(*(&v48 + 1) + 8 * i);
            v31 = objc_msgSend_settingsClassNameForCloud(self, v24, v25, v26);
            isEqualToString = objc_msgSend_isEqualToString_(v30, v32, v31, v33);

            if (isEqualToString)
            {
              v35 = MEMORY[0x1E695DF90];
              v36 = objc_msgSend_objectForKey_(v20, v24, v30, v26);
              v39 = objc_msgSend_dictionaryWithDictionary_(v35, v37, v36, v38);
              objc_msgSend_setCloudStore_(self, v40, v39, v41);

              objc_msgSend_persistLocallyIfNeeded(self, v42, v43, v44);
            }
          }

          v27 = objc_msgSend_countByEnumeratingWithState_objects_count_(v21, v24, &v48, v52, 16);
        }

        while (v27);
      }

      v12 = v46;
    }
  }

LABEL_17:

  v45 = *MEMORY[0x1E69E9840];
}

- (id)valueForKey:(id)key error:(id *)error
{
  keyCopy = key;
  v9 = objc_msgSend_cloudStore(self, v6, v7, v8);
  v12 = objc_msgSend_objectForKey_(v9, v10, keyCopy, v11);

  if (v12)
  {
    v16 = v12;
  }

  else
  {
    v17 = objc_msgSend_defaults(self, v13, v14, v15);
    v21 = objc_msgSend_lastNamespacedComponent(keyCopy, v18, v19, v20);
    v16 = objc_msgSend_objectForKey_(v17, v22, v21, v23);
  }

  return v16;
}

- (void)setValue:(id)value forKey:(id)key error:(id *)error
{
  valueCopy = value;
  keyCopy = key;
  v11 = objc_msgSend_defaults(self, v8, v9, v10);
  v15 = objc_msgSend_lastNamespacedComponent(keyCopy, v12, v13, v14);
  v18 = objc_msgSend_objectForKey_(v11, v16, v15, v17);

  v22 = objc_msgSend_settingsClassNameForCloud(self, v19, v20, v21);
  v26 = objc_msgSend_cloudStore(self, v23, v24, v25);
  v30 = objc_msgSend_defaultStore(MEMORY[0x1E696AFB8], v27, v28, v29);
  isEqual = objc_msgSend_isEqual_(v18, v31, valueCopy, v32);
  if (!valueCopy || isEqual)
  {
    objc_msgSend_setValue_forKey_(v26, valueCopy, 0, keyCopy);
  }

  else
  {
    objc_msgSend_setObject_forKey_(v26, valueCopy, valueCopy, keyCopy);
  }

  objc_msgSend_persistLocallyIfNeeded(self, v34, v35, v36);
  objc_msgSend_setObject_forKey_(v30, v37, v26, v22);
  objc_msgSend_synchronize(self, v38, v39, v40);
}

- (void)synchronize
{
  v7 = objc_msgSend_defaultStore(MEMORY[0x1E696AFB8], a2, v2, v3);
  objc_msgSend_synchronize(v7, v4, v5, v6);
}

@end