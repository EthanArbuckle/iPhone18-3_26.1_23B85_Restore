@interface NEKeychainItem
- (NEKeychainItem)initWithCoder:(id)coder;
- (NEKeychainItem)initWithData:(id)data domain:(int64_t)domain accessGroup:(id)group;
- (NEKeychainItem)initWithIdentifier:(id)identifier domain:(int64_t)domain accessGroup:(id)group;
- (NEKeychainItem)initWithLegacyIdentifier:(id)identifier domain:(int64_t)domain accessGroup:(id)group;
- (NEKeychainItem)initWithPassword:(id)password domain:(int64_t)domain accessGroup:(id)group;
- (NEKeychainItem)initWithPersistentReference:(id)reference domain:(int64_t)domain accessGroup:(id)group;
- (NEKeychainItem)initWithPersistentReference:(id)reference keyReference:(id)keyReference isModernSystem:(BOOL)system domain:(int64_t)domain accessGroup:(id)group;
- (NSData)data;
- (NSData)persistentReference;
- (NSString)identifier;
- (NSString)password;
- (id)copyData;
- (id)copyPassword;
- (id)copyQueryWithReturnTypes:(id)types;
- (id)copyWithZone:(_NSZone *)zone;
- (uint64_t)copyDataFromKeychainItem:(void *)item outData:(const __CFData *)data outIdentifier:(void *)identifier outPersistentReference:(void *)reference;
- (void)encodeWithCoder:(id)coder;
- (void)migrateFromPreferences:(__SCPreferences *)preferences;
- (void)remove;
- (void)setData:(id)data;
- (void)setIdentifier:(id)identifier;
- (void)setPassword:(id)password;
- (void)setPersistentReference:(id)reference;
- (void)syncUsingConfiguration:(id)configuration accountName:(id)name passwordType:(int64_t)type identifierSuffix:(id)suffix;
@end

@implementation NEKeychainItem

- (void)migrateFromPreferences:(__SCPreferences *)preferences
{
  v16 = *MEMORY[0x1E69E9840];
  copyData = [(NEKeychainItem *)self copyData];
  if (!copyData)
  {
    identifier = [(NEKeychainItem *)self identifier];
    copyData = _SCPreferencesSystemKeychainPasswordItemCopy();

    if (copyData)
    {
      identifier2 = [(NEKeychainItem *)self identifier];
      v8 = _SCPreferencesSystemKeychainPasswordItemRemove();

      if (v8)
      {
        [(NEKeychainItem *)self setData:copyData];
      }

      else
      {
        v9 = ne_log_obj();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
        {
          identifier3 = [(NEKeychainItem *)self identifier];
          v11 = SCError();
          v12 = 138412546;
          v13 = identifier3;
          v14 = 2080;
          v15 = SCErrorString(v11);
          _os_log_error_impl(&dword_1BA83C000, v9, OS_LOG_TYPE_ERROR, "%@: _SCPreferencesSystemKeychainPasswordItemRemove failed: %s", &v12, 0x16u);
        }
      }
    }
  }

  v5 = *MEMORY[0x1E69E9840];
}

- (void)syncUsingConfiguration:(id)configuration accountName:(id)name passwordType:(int64_t)type identifierSuffix:(id)suffix
{
  v98 = *MEMORY[0x1E69E9840];
  configurationCopy = configuration;
  nameCopy = name;
  suffixCopy = suffix;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (!selfCopy || !selfCopy->_legacy)
  {
    identifier = [(NEKeychainItem *)selfCopy identifier];
    if (identifier)
    {
      identifier2 = [(NEKeychainItem *)selfCopy identifier];
      identifier3 = [configurationCopy identifier];
      uUIDString = [identifier3 UUIDString];
      v15 = [identifier2 hasPrefix:uUIDString];

      if ((v15 & 1) == 0)
      {
        if (!selfCopy->_data)
        {
          copyData = [(NEKeychainItem *)selfCopy copyData];
          data = selfCopy->_data;
          selfCopy->_data = copyData;
        }

        identifier = selfCopy->_identifier;
        selfCopy->_identifier = 0;

        persistentReference = selfCopy->_persistentReference;
        selfCopy->_persistentReference = 0;
      }
    }
  }

  if (!selfCopy->_data)
  {
    identifier4 = [(NEKeychainItem *)selfCopy identifier];
    if (identifier4)
    {
    }

    else
    {
      persistentReference = [(NEKeychainItem *)selfCopy persistentReference];

      if (!persistentReference)
      {
        goto LABEL_63;
      }
    }
  }

  v23 = ne_log_obj();
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
  {
    identifier5 = [(NEKeychainItem *)selfCopy identifier];
    persistentReference2 = [(NEKeychainItem *)selfCopy persistentReference];
    v26 = selfCopy->_data;
    *buf = 138412802;
    *&buf[4] = identifier5;
    *&buf[12] = 2112;
    *&buf[14] = persistentReference2;
    *&buf[22] = 2048;
    v91 = v26;
    _os_log_impl(&dword_1BA83C000, v23, OS_LOG_TYPE_DEFAULT, "Adding/Updating keychain item with identifier %@, persistentReference %@, data %p", buf, 0x20u);
  }

  v84 = configurationCopy;
  v27 = nameCopy;
  v83 = suffixCopy;
  v28 = selfCopy;
  objc_sync_enter(v28);
  if (NEInitCFTypes_onceToken != -1)
  {
    dispatch_once(&NEInitCFTypes_onceToken, &__block_literal_global_25529);
  }

  v88 = 0;
  v89 = 0;
  v29 = [NEKeychainItem copyDataFromKeychainItem:v28 outData:0 outIdentifier:&v89 outPersistentReference:&v88];
  v30 = v89;
  v31 = v89;
  v32 = v88;
  if (!v29)
  {
    p_super = ne_log_obj();
    if (os_log_type_enabled(p_super, OS_LOG_TYPE_ERROR))
    {
      identifier6 = [(NEKeychainItem *)v28 identifier];
      *buf = 138412290;
      *&buf[4] = identifier6;
      _os_log_error_impl(&dword_1BA83C000, p_super, OS_LOG_TYPE_ERROR, "%@: Failed to retrieve keychain item from the keychain", buf, 0xCu);
    }

    goto LABEL_61;
  }

  if (selfCopy->_data)
  {
    v33 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v34 = @"VPN Password";
    if (type == 1)
    {
      v34 = @"IPSec XAuth Password";
    }

    if (type == 2)
    {
      v34 = @"IPSec Shared Secret";
    }

    query = v34;
    identifier7 = [(NEKeychainItem *)v28 identifier];
    v36 = identifier7 == 0;

    if (v36)
    {
      if ([v83 length])
      {
        v37 = objc_alloc(MEMORY[0x1E696AEC0]);
        identifier8 = [v84 identifier];
        uUIDString2 = [identifier8 UUIDString];
        v40 = [v37 initWithFormat:@"%@.%@", uUIDString2, v83];
        v41 = v28->_identifier;
        v28->_identifier = v40;
      }

      else
      {
        identifier8 = [v84 identifier];
        uUIDString3 = [identifier8 UUIDString];
        uUIDString2 = v28->_identifier;
        v28->_identifier = uUIDString3;
      }
    }

    identifier9 = [(NEKeychainItem *)v28 identifier];
    v55 = *MEMORY[0x1E697AE88];
    [v33 setObject:identifier9 forKeyedSubscript:*MEMORY[0x1E697AE88]];

    name = [v84 name];
    [v33 setObject:name forKeyedSubscript:*MEMORY[0x1E697ADC8]];

    [v33 setObject:query forKeyedSubscript:*MEMORY[0x1E697ACE0]];
    if (v27)
    {
      [v33 setObject:v27 forKeyedSubscript:*MEMORY[0x1E697AC30]];
    }

    [v33 setObject:selfCopy->_data forKeyedSubscript:*MEMORY[0x1E697B3C0]];
    [v33 setObject:*MEMORY[0x1E697ABE0] forKeyedSubscript:*MEMORY[0x1E697ABD8]];
    accessGroup = [(NEKeychainItem *)v28 accessGroup];
    v58 = accessGroup == 0;

    if (!v58)
    {
      accessGroup2 = [(NEKeychainItem *)v28 accessGroup];
      [v33 setObject:accessGroup2 forKeyedSubscript:*MEMORY[0x1E697ABD0]];
    }

    if (v31)
    {
      v60 = *MEMORY[0x1E697B008];
      result = *MEMORY[0x1E697AFF8];
      v96 = v55;
      *buf = v60;
      *&buf[8] = v31;
      v97 = *MEMORY[0x1E697B3A8];
      *&buf[16] = *MEMORY[0x1E695E4D0];
      v61 = [MEMORY[0x1E695DF20] dictionaryWithObjects:buf forKeys:&result count:3];
      v62 = SecItemUpdate(v61, v33);
      if (v62)
      {
        v63 = ne_log_obj();
        if (os_log_type_enabled(v63, OS_LOG_TYPE_ERROR))
        {
          identifier10 = [(NEKeychainItem *)v28 identifier];
          *v94 = 138412546;
          *&v94[4] = identifier10;
          *&v94[12] = 1024;
          *&v94[14] = v62;
          v76 = identifier10;
          _os_log_error_impl(&dword_1BA83C000, v63, OS_LOG_TYPE_ERROR, "%@: SecItemUpdate failed: %d", v94, 0x12u);
        }
      }

      else
      {
        [(NEKeychainItem *)v28 setData:0];
      }
    }

    else
    {
      result = 0;

      [v33 setObject:*MEMORY[0x1E697B008] forKeyedSubscript:*MEMORY[0x1E697AFF8]];
      [v33 setObject:MEMORY[0x1E695E118] forKeyedSubscript:*MEMORY[0x1E697B320]];
      [v33 setObject:*MEMORY[0x1E695E4D0] forKeyedSubscript:*MEMORY[0x1E697B3A8]];
      v64 = SecItemAdd(v33, &result);
      if (v64)
      {
        v65 = ne_log_obj();
        if (os_log_type_enabled(v65, OS_LOG_TYPE_ERROR))
        {
          identifier11 = [(NEKeychainItem *)v28 identifier];
          *buf = 138412546;
          *&buf[4] = identifier11;
          *&buf[12] = 1024;
          *&buf[14] = v64;
          _os_log_error_impl(&dword_1BA83C000, v65, OS_LOG_TYPE_ERROR, "%@: SecItemAdd failed: %d", buf, 0x12u);
        }

        v32 = 0;
      }

      else
      {
        if (result && (v74 = CFDATA_TYPE, CFGetTypeID(result) == v74))
        {
          if (CFDataGetLength(result) <= 0)
          {
            v32 = 0;
          }

          else
          {
            v32 = result;
          }
        }

        else
        {
          v32 = 0;
        }

        [(NEKeychainItem *)v28 setData:0];
      }
    }

LABEL_57:
    if (!v31)
    {
      goto LABEL_59;
    }

    goto LABEL_58;
  }

  accessGroup3 = [(NEKeychainItem *)v28 accessGroup];
  if (accessGroup3)
  {
    v45 = v31 == 0;
  }

  else
  {
    v45 = 1;
  }

  v46 = !v45;

  if (!v46)
  {
    goto LABEL_57;
  }

  v47 = *MEMORY[0x1E697B008];
  v48 = *MEMORY[0x1E697AE88];
  *v94 = *MEMORY[0x1E697AFF8];
  *&v94[8] = v48;
  result = v47;
  v96 = v31;
  *&v94[16] = *MEMORY[0x1E697B3A8];
  v97 = *MEMORY[0x1E695E4D0];
  querya = [MEMORY[0x1E695DF20] dictionaryWithObjects:&result forKeys:v94 count:3];
  v92 = *MEMORY[0x1E697ABD0];
  accessGroup4 = [(NEKeychainItem *)v28 accessGroup];
  v93 = accessGroup4;
  v50 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v93 forKeys:&v92 count:1];

  v51 = SecItemUpdate(querya, v50);
  if (v51)
  {
    v52 = ne_log_obj();
    if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
    {
      identifier12 = [(NEKeychainItem *)v28 identifier];
      accessGroup5 = [(NEKeychainItem *)v28 accessGroup];
      *buf = 138412802;
      *&buf[4] = identifier12;
      *&buf[12] = 2112;
      *&buf[14] = accessGroup5;
      *&buf[22] = 1024;
      LODWORD(v91) = v51;
      v79 = accessGroup5;
      _os_log_error_impl(&dword_1BA83C000, v52, OS_LOG_TYPE_ERROR, "%@: SecItemUpdate failed while updating the keychain access group to %@: %d", buf, 0x1Cu);
    }
  }

  [(NEKeychainItem *)v28 setAccessGroup:0];

LABEL_58:
  objc_storeStrong(&v28->_identifier, v30);
LABEL_59:
  if (v32)
  {
    p_super = &v28->_persistentReference->super;
    v28->_persistentReference = v32;
    v32 = v32;
LABEL_61:
  }

  objc_sync_exit(v28);
LABEL_63:
  if (objc_getProperty(selfCopy, v22, 72, 1))
  {
    v66 = ne_log_obj();
    if (os_log_type_enabled(v66, OS_LOG_TYPE_DEFAULT))
    {
      v68 = objc_getProperty(selfCopy, v67, 72, 1);
      identifier13 = [v68 identifier];
      *buf = 138412290;
      *&buf[4] = identifier13;
      _os_log_impl(&dword_1BA83C000, v66, OS_LOG_TYPE_DEFAULT, "%@: Removing keychain item", buf, 0xCu);
    }

    v71 = objc_getProperty(selfCopy, v70, 72, 1);
    [v71 remove];
  }

  [(NEKeychainItem *)selfCopy setData:0];
  objc_setProperty_atomic_copy(selfCopy, v72, 0, 72);
  objc_sync_exit(selfCopy);

  v73 = *MEMORY[0x1E69E9840];
}

- (uint64_t)copyDataFromKeychainItem:(void *)item outData:(const __CFData *)data outIdentifier:(void *)identifier outPersistentReference:(void *)reference
{
  v33 = *MEMORY[0x1E69E9840];
  if (!item)
  {
    v20 = 0;
    goto LABEL_66;
  }

  v8 = objc_alloc_init(MEMORY[0x1E695DF70]);
  result = 0;
  identifier = [item identifier];
  if (identifier)
  {

    goto LABEL_5;
  }

  persistentReference = [item persistentReference];

  if (persistentReference)
  {
LABEL_5:
    if (data)
    {
      [v8 addObject:*MEMORY[0x1E697B318]];
    }

    if (identifier)
    {
      [v8 addObject:*MEMORY[0x1E697B310]];
    }

    if (reference)
    {
      [v8 addObject:*MEMORY[0x1E697B320]];
    }

    v11 = [item copyQueryWithReturnTypes:v8];
    [v11 setObject:*MEMORY[0x1E697B270] forKeyedSubscript:*MEMORY[0x1E697B260]];
    v12 = SecItemCopyMatching(v11, &result);
    v13 = v12;
    if (v12)
    {
      if (v12 == -25300)
      {
LABEL_56:
        if (result)
        {
          CFRelease(result);
        }

        if (v13)
        {
          v25 = v13 == -25300;
        }

        else
        {
          v25 = 1;
        }

        v20 = v25;

        goto LABEL_65;
      }

      v14 = ne_log_obj();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        identifier2 = [item identifier];
        *buf = 138412546;
        v30 = identifier2;
        v31 = 1024;
        v32 = v13;
        _os_log_error_impl(&dword_1BA83C000, v14, OS_LOG_TYPE_ERROR, "%@: SecItemCopyMatching failed: %d", buf, 0x12u);
      }
    }

    else if ([v8 count] == 1)
    {
      if (data)
      {
        v16 = result;
        if (isa_nsdata(v16))
        {
          if ([(NSData *)MEMORY[0x1E695DEF0] isSensitiveDataInstance:v16])
          {
            v17 = v16;
          }

          else
          {
            v17 = [(NSData *)MEMORY[0x1E695DEF0] sensitiveDataWithData:v16];
          }

          *data = v17;
        }
      }

      if (identifier)
      {
        v21 = result;
        if (isa_nsdictionary(v21))
        {
          v22 = [v21 objectForKeyedSubscript:*MEMORY[0x1E697AE88]];
          if (isa_nsstring(v22) && [v22 length])
          {
            *identifier = [objc_alloc(MEMORY[0x1E696AEC0]) initWithString:v22];
          }
        }
      }

      if (!reference)
      {
        goto LABEL_56;
      }

      v14 = result;
      if (isa_nsdata(v14) && [v14 length])
      {
        *reference = [objc_alloc(MEMORY[0x1E695DEF0]) initWithData:v14];
      }
    }

    else
    {
      v14 = result;
      if (isa_nsdictionary(v14))
      {
        if (data)
        {
          v18 = [v14 objectForKeyedSubscript:*MEMORY[0x1E697B3C0]];
          if (isa_nsdata(v18) && [v18 length] && isa_nsdata(v18))
          {
            if ([(NSData *)MEMORY[0x1E695DEF0] isSensitiveDataInstance:v18])
            {
              v19 = v18;
            }

            else
            {
              v19 = [(NSData *)MEMORY[0x1E695DEF0] sensitiveDataWithData:v18];
            }

            *data = v19;
          }
        }

        if (identifier)
        {
          v23 = [v14 objectForKeyedSubscript:*MEMORY[0x1E697AE88]];
          if (isa_nsstring(v23) && [v23 length])
          {
            *identifier = [objc_alloc(MEMORY[0x1E696AEC0]) initWithString:v23];
          }
        }

        if (reference)
        {
          v24 = [v14 objectForKeyedSubscript:*MEMORY[0x1E697B3C8]];
          if (isa_nsdata(v24) && [v24 length])
          {
            *reference = [objc_alloc(MEMORY[0x1E695DEF0]) initWithData:v24];
          }
        }
      }
    }

    goto LABEL_56;
  }

  v20 = 1;
LABEL_65:

LABEL_66:
  v26 = *MEMORY[0x1E69E9840];
  return v20;
}

- (void)remove
{
  v15 = *MEMORY[0x1E69E9840];
  identifier = [(NEKeychainItem *)self identifier];
  if (identifier)
  {
  }

  else
  {
    persistentReference = [(NEKeychainItem *)self persistentReference];

    if (!persistentReference)
    {
      goto LABEL_9;
    }
  }

  v5 = [(NEKeychainItem *)self copyQueryWithReturnTypes:0];
  v6 = SecItemDelete(v5);
  if (v6)
  {
    v7 = v6;
    v8 = ne_log_obj();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      identifier2 = [(NEKeychainItem *)self identifier];
      v11 = 138412546;
      v12 = identifier2;
      v13 = 1024;
      v14 = v7;
      _os_log_error_impl(&dword_1BA83C000, v8, OS_LOG_TYPE_ERROR, "%@: SecItemDelete failed: %d", &v11, 0x12u);
    }
  }

  [(NEKeychainItem *)self setIdentifier:0];
  [(NEKeychainItem *)self setPersistentReference:0];

LABEL_9:
  v9 = *MEMORY[0x1E69E9840];
}

- (id)copyData
{
  v4 = 0;
  [NEKeychainItem copyDataFromKeychainItem:&v4 outData:0 outIdentifier:0 outPersistentReference:?];
  v2 = v4;

  return v2;
}

- (id)copyPassword
{
  copyData = [(NEKeychainItem *)self copyData];
  if (copyData)
  {
    v3 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithData:copyData encoding:4];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)copyQueryWithReturnTypes:(id)types
{
  v23 = *MEMORY[0x1E69E9840];
  typesCopy = types;
  v5 = objc_alloc_init(MEMORY[0x1E695DF90]);
  [v5 setObject:*MEMORY[0x1E697B008] forKeyedSubscript:*MEMORY[0x1E697AFF8]];
  identifier = [(NEKeychainItem *)self identifier];

  if (identifier)
  {
    identifier2 = [(NEKeychainItem *)self identifier];
    v8 = MEMORY[0x1E697AE88];
  }

  else
  {
    persistentReference = [(NEKeychainItem *)self persistentReference];

    if (!persistentReference)
    {
      goto LABEL_6;
    }

    identifier2 = [(NEKeychainItem *)self persistentReference];
    v8 = MEMORY[0x1E697B3C8];
  }

  [v5 setObject:identifier2 forKeyedSubscript:*v8];

LABEL_6:
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v10 = typesCopy;
  v11 = [v10 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v19;
    v14 = MEMORY[0x1E695E118];
    do
    {
      v15 = 0;
      do
      {
        if (*v19 != v13)
        {
          objc_enumerationMutation(v10);
        }

        [v5 setObject:v14 forKeyedSubscript:{*(*(&v18 + 1) + 8 * v15++), v18}];
      }

      while (v12 != v15);
      v12 = [v10 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v12);
  }

  [v5 setObject:MEMORY[0x1E695E118] forKeyedSubscript:*MEMORY[0x1E697B3A8]];
  v16 = *MEMORY[0x1E69E9840];
  return v5;
}

- (NSData)data
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = selfCopy->_data;
  objc_sync_exit(selfCopy);

  return v3;
}

- (void)setData:(id)data
{
  dataCopy = data;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v5 = [(NSData *)MEMORY[0x1E695DEF0] sensitiveDataWithData:dataCopy];
  data = selfCopy->_data;
  selfCopy->_data = v5;

  password = selfCopy->_password;
  selfCopy->_password = 0;

  objc_sync_exit(selfCopy);
}

- (NSString)password
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  password = selfCopy->_password;
  if (!password)
  {
    password = selfCopy->_data;
    if (password)
    {
      v4 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithData:selfCopy->_data encoding:4];
      v5 = selfCopy->_password;
      selfCopy->_password = v4;

      password = selfCopy->_password;
    }
  }

  v6 = password;
  objc_sync_exit(selfCopy);

  return v6;
}

- (void)setPassword:(id)password
{
  passwordCopy = password;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if ([passwordCopy length])
  {
    v5 = [passwordCopy dataUsingEncoding:4];
    v6 = [(NSData *)MEMORY[0x1E695DEF0] sensitiveDataWithData:v5];
    data = selfCopy->_data;
    selfCopy->_data = v6;

    v8 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithString:passwordCopy];
    password = selfCopy->_password;
    selfCopy->_password = v8;
  }

  else
  {
    v10 = selfCopy->_data;
    selfCopy->_data = 0;

    v5 = selfCopy->_password;
    selfCopy->_password = 0;
  }

  objc_sync_exit(selfCopy);
}

- (void)setPersistentReference:(id)reference
{
  referenceCopy = reference;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  persistentReference = selfCopy->_persistentReference;
  if (referenceCopy && !persistentReference)
  {
LABEL_3:
    v6 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithData:referenceCopy];
LABEL_4:
    v7 = selfCopy->_persistentReference;
    selfCopy->_persistentReference = v6;

    identifier = selfCopy->_identifier;
    selfCopy->_identifier = 0;

    data = selfCopy->_data;
    selfCopy->_data = 0;

    password = selfCopy->_password;
    selfCopy->_password = 0;

    goto LABEL_7;
  }

  if (persistentReference && ([(NSData *)persistentReference isEqual:referenceCopy]& 1) == 0)
  {
    if (selfCopy->_persistentReference)
    {
      v11 = [(NEKeychainItem *)selfCopy copy];
      oldItem = selfCopy->_oldItem;
      selfCopy->_oldItem = v11;
    }

    v6 = referenceCopy;
    if (!referenceCopy)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

LABEL_7:
  objc_sync_exit(selfCopy);
}

- (NSData)persistentReference
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = selfCopy->_persistentReference;
  objc_sync_exit(selfCopy);

  return v3;
}

- (void)setIdentifier:(id)identifier
{
  v21 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  identifier = selfCopy->_identifier;
  if (identifierCopy && !identifier || identifier && ![(NSString *)identifier isEqualToString:identifierCopy])
  {
    v7 = ne_log_obj();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      v16 = selfCopy->_identifier;
      v17 = 138412546;
      v18 = v16;
      v19 = 2112;
      v20 = identifierCopy;
      _os_log_debug_impl(&dword_1BA83C000, v7, OS_LOG_TYPE_DEBUG, "setIdentifier: old %@, new %@", &v17, 0x16u);
    }

    if (selfCopy->_identifier)
    {
      v8 = [(NEKeychainItem *)selfCopy copy];
      oldItem = selfCopy->_oldItem;
      selfCopy->_oldItem = v8;
    }

    if (identifierCopy)
    {
      v10 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithString:identifierCopy];
    }

    else
    {
      v10 = 0;
    }

    v11 = selfCopy->_identifier;
    selfCopy->_identifier = v10;

    persistentReference = selfCopy->_persistentReference;
    selfCopy->_persistentReference = 0;

    data = selfCopy->_data;
    selfCopy->_data = 0;

    password = selfCopy->_password;
    selfCopy->_password = 0;
  }

  objc_sync_exit(selfCopy);

  v15 = *MEMORY[0x1E69E9840];
}

- (NSString)identifier
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = selfCopy->_identifier;
  objc_sync_exit(selfCopy);

  return v3;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];
  identifier = [(NEKeychainItem *)self identifier];
  domain = [(NEKeychainItem *)self domain];
  accessGroup = [(NEKeychainItem *)self accessGroup];
  v8 = [v4 initWithIdentifier:identifier domain:domain accessGroup:accessGroup];

  persistentReference = [(NEKeychainItem *)self persistentReference];
  v10 = [persistentReference copy];
  v11 = *(v8 + 32);
  *(v8 + 32) = v10;

  keyPersistentReference = [(NEKeychainItem *)self keyPersistentReference];
  v13 = [keyPersistentReference copy];
  v14 = *(v8 + 40);
  *(v8 + 40) = v13;

  *(v8 + 48) = [(NEKeychainItem *)self isModernSystem];
  v15 = [(NSData *)MEMORY[0x1E695DEF0] sensitiveDataWithData:?];
  v16 = *(v8 + 8);
  *(v8 + 8) = v15;

  *(v8 + 49) = self->_legacy;
  return v8;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  identifier = [(NEKeychainItem *)self identifier];
  [coderCopy encodeObject:identifier forKey:@"Identifier"];

  persistentReference = [(NEKeychainItem *)self persistentReference];
  [coderCopy encodeObject:persistentReference forKey:@"PersistentReference"];

  keyPersistentReference = [(NEKeychainItem *)self keyPersistentReference];
  [coderCopy encodeObject:keyPersistentReference forKey:@"KeyPersistentReference"];

  [coderCopy encodeBool:-[NEKeychainItem isModernSystem](self forKey:{"isModernSystem"), @"IsModernSystem"}];
  [coderCopy encodeInt32:-[NEKeychainItem domain](self forKey:{"domain"), @"Domain"}];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [coderCopy encodeObject:self->_data forKey:@"Data"];
  }

  [coderCopy encodeObject:self->_oldItem forKey:@"OldItem"];
  accessGroup = [(NEKeychainItem *)self accessGroup];
  [coderCopy encodeObject:accessGroup forKey:@"AccessGroup"];
}

- (NEKeychainItem)initWithCoder:(id)coder
{
  coderCopy = coder;
  v23.receiver = self;
  v23.super_class = NEKeychainItem;
  v5 = [(NEKeychainItem *)&v23 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"Identifier"];
    identifier = v5->_identifier;
    v5->_identifier = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"PersistentReference"];
    persistentReference = v5->_persistentReference;
    v5->_persistentReference = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"KeyPersistentReference"];
    keyPersistentReference = v5->_keyPersistentReference;
    v5->_keyPersistentReference = v10;

    v5->_isModernSystem = [coderCopy decodeBoolForKey:@"IsModernSystem"];
    v5->_domain = [coderCopy decodeInt32ForKey:@"Domain"];
    if ([coderCopy containsValueForKey:@"Password"])
    {
      v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"Password"];
      v13 = [v12 dataUsingEncoding:4];
      v14 = [(NSData *)MEMORY[0x1E695DEF0] sensitiveDataWithData:v13];
      data = v5->_data;
      v5->_data = v14;

      v16 = 16;
    }

    else
    {
      v13 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"Data"];
      v12 = [(NSData *)MEMORY[0x1E695DEF0] sensitiveDataWithData:v13];
      v16 = 8;
    }

    v17 = *(&v5->super.isa + v16);
    *(&v5->super.isa + v16) = v12;

    v18 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"OldItem"];
    oldItem = v5->_oldItem;
    v5->_oldItem = v18;

    v20 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"AccessGroup"];
    accessGroup = v5->_accessGroup;
    v5->_accessGroup = v20;
  }

  return v5;
}

- (NEKeychainItem)initWithLegacyIdentifier:(id)identifier domain:(int64_t)domain accessGroup:(id)group
{
  result = [(NEKeychainItem *)self initWithIdentifier:identifier domain:domain accessGroup:group];
  if (result)
  {
    result->_legacy = 1;
  }

  return result;
}

- (NEKeychainItem)initWithPersistentReference:(id)reference keyReference:(id)keyReference isModernSystem:(BOOL)system domain:(int64_t)domain accessGroup:(id)group
{
  referenceCopy = reference;
  keyReferenceCopy = keyReference;
  groupCopy = group;
  v23.receiver = self;
  v23.super_class = NEKeychainItem;
  v15 = [(NEKeychainItem *)&v23 init];
  if (v15)
  {
    v16 = [referenceCopy copy];
    persistentReference = v15->_persistentReference;
    v15->_persistentReference = v16;

    v18 = [keyReferenceCopy copy];
    keyPersistentReference = v15->_keyPersistentReference;
    v15->_keyPersistentReference = v18;

    v15->_isModernSystem = system;
    v15->_domain = domain;
    v20 = [groupCopy copy];
    accessGroup = v15->_accessGroup;
    v15->_accessGroup = v20;
  }

  return v15;
}

- (NEKeychainItem)initWithPersistentReference:(id)reference domain:(int64_t)domain accessGroup:(id)group
{
  referenceCopy = reference;
  groupCopy = group;
  v16.receiver = self;
  v16.super_class = NEKeychainItem;
  v10 = [(NEKeychainItem *)&v16 init];
  if (v10)
  {
    v11 = [referenceCopy copy];
    persistentReference = v10->_persistentReference;
    v10->_persistentReference = v11;

    v10->_domain = domain;
    v13 = [groupCopy copy];
    accessGroup = v10->_accessGroup;
    v10->_accessGroup = v13;
  }

  return v10;
}

- (NEKeychainItem)initWithIdentifier:(id)identifier domain:(int64_t)domain accessGroup:(id)group
{
  identifierCopy = identifier;
  groupCopy = group;
  v16.receiver = self;
  v16.super_class = NEKeychainItem;
  v10 = [(NEKeychainItem *)&v16 init];
  if (v10)
  {
    v11 = [identifierCopy copy];
    identifier = v10->_identifier;
    v10->_identifier = v11;

    v10->_domain = domain;
    v13 = [groupCopy copy];
    accessGroup = v10->_accessGroup;
    v10->_accessGroup = v13;
  }

  return v10;
}

- (NEKeychainItem)initWithData:(id)data domain:(int64_t)domain accessGroup:(id)group
{
  dataCopy = data;
  groupCopy = group;
  v16.receiver = self;
  v16.super_class = NEKeychainItem;
  v10 = [(NEKeychainItem *)&v16 init];
  if (v10)
  {
    v11 = [(NSData *)MEMORY[0x1E695DEF0] sensitiveDataWithData:dataCopy];
    data = v10->_data;
    v10->_data = v11;

    v10->_domain = domain;
    v13 = [groupCopy copy];
    accessGroup = v10->_accessGroup;
    v10->_accessGroup = v13;
  }

  return v10;
}

- (NEKeychainItem)initWithPassword:(id)password domain:(int64_t)domain accessGroup:(id)group
{
  passwordCopy = password;
  groupCopy = group;
  v11 = [passwordCopy dataUsingEncoding:4];
  v12 = [(NEKeychainItem *)self initWithData:v11 domain:domain accessGroup:groupCopy];

  if (v12)
  {
    objc_storeStrong(&v12->_password, password);
  }

  return v12;
}

@end