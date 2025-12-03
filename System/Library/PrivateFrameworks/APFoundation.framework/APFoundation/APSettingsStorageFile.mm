@interface APSettingsStorageFile
- (APSettingsStorageFile)initWithDefaultValues:(id)values;
- (id)_filePathWithName:(id)name;
- (id)valueForKey:(id)key error:(id *)error;
- (void)_readFileIfNecessaryUsingKey:(id)key;
- (void)_writeFileUsingKey:(id)key;
- (void)setValue:(id)value forKey:(id)key error:(id *)error;
@end

@implementation APSettingsStorageFile

- (APSettingsStorageFile)initWithDefaultValues:(id)values
{
  valuesCopy = values;
  v22.receiver = self;
  v22.super_class = APSettingsStorageFile;
  v5 = [(APSettingsStorageFile *)&v22 init];
  if (v5)
  {
    v6 = [APUnfairLock alloc];
    v9 = objc_msgSend_initWithOptions_(v6, v7, 0, v8);
    accessLock = v5->_accessLock;
    v5->_accessLock = v9;

    v14 = objc_msgSend_copy(valuesCopy, v11, v12, v13);
    defaults = v5->_defaults;
    v5->_defaults = v14;

    v16 = objc_alloc(MEMORY[0x1E695DF90]);
    v19 = objc_msgSend_initWithCapacity_(v16, v17, 1, v18);
    storage = v5->_storage;
    v5->_storage = v19;
  }

  return v5;
}

- (id)_filePathWithName:(id)name
{
  v4 = objc_msgSend_sha256hash(name, a2, name, v3);
  v7 = objc_msgSend_stringByAppendingPathComponent_(@"s/f", v5, v4, v6);

  return v7;
}

- (void)_readFileIfNecessaryUsingKey:(id)key
{
  v44 = *MEMORY[0x1E69E9840];
  keyCopy = key;
  v10 = objc_msgSend_storage(self, v5, v6, v7);
  if (!v10)
  {
    v11 = objc_msgSend_componentsSeparatedByString_(keyCopy, v8, @".", v9);
    if (objc_msgSend_count(v11, v12, v13, v14) != 2)
    {
      v18 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v15, @"The key (%@) must have two parts separated by the separator character '%@'", v17, keyCopy, @".");
      APSimulateCrash(5, v18, 0);
    }

    v19 = objc_msgSend_firstObject(v11, v15, v16, v17);
    v22 = objc_msgSend__filePathWithName_(self, v20, v19, v21);

    v23 = objc_alloc_init(APStorageManager);
    v39 = 0;
    v25 = objc_msgSend_fileExistsAtPath_error_(v23, v24, v22, &v39);
    v27 = v39;
    if (v27)
    {
      v28 = APLogForCategory(0x2FuLL);
      if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
        *buf = 138478083;
        v41 = v22;
        v42 = 2114;
        v43 = v27;
        _os_log_impl(&dword_1BADC1000, v28, OS_LOG_TYPE_ERROR, "Error finding EFS Settings object %{private}@: %{public}@", buf, 0x16u);
      }
    }

    if (v25)
    {
      v38 = v27;
      v29 = objc_msgSend_objectStoredAtPath_error_(v23, v26, v22, &v38);
      v30 = v38;

      v34 = objc_msgSend_mutableCopy(v29, v31, v32, v33);
      objc_msgSend_setStorage_(self, v35, v34, v36);

      v27 = v30;
    }
  }

  v37 = *MEMORY[0x1E69E9840];
}

- (void)_writeFileUsingKey:(id)key
{
  v43 = *MEMORY[0x1E69E9840];
  keyCopy = key;
  v7 = objc_msgSend_componentsSeparatedByString_(keyCopy, v5, @".", v6);
  v11 = objc_msgSend_count(v7, v8, v9, v10);
  if (v7)
  {
    v14 = v11 == 0;
  }

  else
  {
    v14 = 1;
  }

  if (v14)
  {
    v15 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v12, @"We didn't get something useable as a filename from the key: '%@'", v13, keyCopy);
    v16 = APLogForCategory(0x2FuLL);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      *buf = 138477827;
      v40 = keyCopy;
      _os_log_impl(&dword_1BADC1000, v16, OS_LOG_TYPE_ERROR, "We didn't get something useable as a filename from the key: '%{private}@'", buf, 0xCu);
    }

    APSimulateCrash(5, v15, 0);
  }

  else
  {
    if (v11 != 2)
    {
      v17 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v12, @"The key (%@) must have two parts separated by the separator character '%@'", v13, keyCopy, @".");
      v18 = APLogForCategory(0x2FuLL);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        *buf = 138478083;
        v40 = keyCopy;
        v41 = 2113;
        v42 = @".";
        _os_log_impl(&dword_1BADC1000, v18, OS_LOG_TYPE_ERROR, "The key (%{private}@) must have two parts separated by the separator character '%{private}@'", buf, 0x16u);
      }

      APSimulateCrash(5, v17, 0);
    }

    v15 = objc_alloc_init(APStorageManager);
    v22 = objc_msgSend_storage(self, v19, v20, v21);
    v26 = objc_msgSend_copy(v22, v23, v24, v25);

    v30 = objc_msgSend_firstObject(v7, v27, v28, v29);
    v33 = objc_msgSend__filePathWithName_(self, v31, v30, v32);

    v38 = 0;
    objc_msgSend_storeObject_atPath_error_(v15, v34, v26, v33, &v38);
    v35 = v38;
    if (v35)
    {
      v36 = APLogForCategory(0x2FuLL);
      if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
      {
        *buf = 138478083;
        v40 = v33;
        v41 = 2114;
        v42 = v35;
        _os_log_impl(&dword_1BADC1000, v36, OS_LOG_TYPE_ERROR, "Error storing EFS Settings object %{private}@: %{public}@", buf, 0x16u);
      }
    }
  }

  v37 = *MEMORY[0x1E69E9840];
}

- (id)valueForKey:(id)key error:(id *)error
{
  keyCopy = key;
  v9 = objc_msgSend_accessLock(self, v6, v7, v8);
  objc_msgSend_lock(v9, v10, v11, v12);
  objc_msgSend__readFileIfNecessaryUsingKey_(self, v13, keyCopy, v14);
  v18 = objc_msgSend_storage(self, v15, v16, v17);
  v22 = v18;
  if (!v18 || (objc_msgSend_objectForKey_(v18, v19, keyCopy, v21), (v23 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v24 = objc_msgSend_defaults(self, v19, v20, v21);
    v28 = objc_msgSend_lastNamespacedComponent(keyCopy, v25, v26, v27);
    v23 = objc_msgSend_objectForKey_(v24, v29, v28, v30);
  }

  objc_msgSend_unlock(v9, v19, v20, v21);

  return v23;
}

- (void)setValue:(id)value forKey:(id)key error:(id *)error
{
  v71 = *MEMORY[0x1E69E9840];
  valueCopy = value;
  keyCopy = key;
  if (valueCopy && (objc_opt_class(), (objc_opt_respondsToSelector() & 1) == 0))
  {
    v47 = MEMORY[0x1E696AEC0];
    v48 = objc_opt_class();
    v49 = NSStringFromClass(v48);
    v50 = NSStringFromSelector(a2);
    v51 = objc_opt_class();
    v52 = NSStringFromClass(v51);
    v55 = objc_msgSend_stringWithFormat_(v47, v53, @"%@ %@ Non storable value type (%@) for property %@", v54, v49, v50, v52, keyCopy);

    v56 = APLogForCategory(0x2FuLL);
    if (os_log_type_enabled(v56, OS_LOG_TYPE_ERROR))
    {
      v57 = objc_opt_class();
      v58 = NSStringFromClass(v57);
      v59 = NSStringFromSelector(a2);
      v60 = objc_opt_class();
      v61 = NSStringFromClass(v60);
      *buf = 138478595;
      v64 = v58;
      v65 = 2112;
      v66 = v59;
      v67 = 2114;
      v68 = v61;
      v69 = 2114;
      v70 = keyCopy;
      _os_log_impl(&dword_1BADC1000, v56, OS_LOG_TYPE_ERROR, "%{private}@ %@ Non storable value type (%{public}@) for property %{public}@", buf, 0x2Au);
    }

    APSimulateCrash(5, v55, 0);
  }

  else
  {
    v13 = objc_msgSend_accessLock(self, v9, v10, v11);
    objc_msgSend_lock(v13, v14, v15, v16);
    objc_msgSend__readFileIfNecessaryUsingKey_(self, v17, keyCopy, v18);
    v25 = objc_msgSend_storage(self, v19, v20, v21);
    if (!v25)
    {
      v26 = objc_msgSend_dictionary(MEMORY[0x1E695DF90], v22, v23, v24);
      objc_msgSend_setStorage_(self, v27, v26, v28);
    }

    v29 = objc_msgSend_defaults(self, v22, v23, v24);
    v33 = objc_msgSend_lastNamespacedComponent(keyCopy, v30, v31, v32);
    v36 = objc_msgSend_objectForKey_(v29, v34, v33, v35);

    isEqual = objc_msgSend_isEqual_(v36, v37, valueCopy, v38);
    if (!valueCopy || isEqual)
    {
      objc_msgSend_removeObjectForKey_(v25, v40, keyCopy, v41);
    }

    else
    {
      objc_msgSend_setObject_forKey_(v25, v40, valueCopy, keyCopy);
    }

    objc_msgSend__writeFileUsingKey_(self, v42, keyCopy, v43);
    objc_msgSend_unlock(v13, v44, v45, v46);
  }

  v62 = *MEMORY[0x1E69E9840];
}

@end