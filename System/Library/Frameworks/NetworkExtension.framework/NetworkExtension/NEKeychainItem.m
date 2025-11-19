@interface NEKeychainItem
- (NEKeychainItem)initWithCoder:(id)a3;
- (NEKeychainItem)initWithData:(id)a3 domain:(int64_t)a4 accessGroup:(id)a5;
- (NEKeychainItem)initWithIdentifier:(id)a3 domain:(int64_t)a4 accessGroup:(id)a5;
- (NEKeychainItem)initWithLegacyIdentifier:(id)a3 domain:(int64_t)a4 accessGroup:(id)a5;
- (NEKeychainItem)initWithPassword:(id)a3 domain:(int64_t)a4 accessGroup:(id)a5;
- (NEKeychainItem)initWithPersistentReference:(id)a3 domain:(int64_t)a4 accessGroup:(id)a5;
- (NEKeychainItem)initWithPersistentReference:(id)a3 keyReference:(id)a4 isModernSystem:(BOOL)a5 domain:(int64_t)a6 accessGroup:(id)a7;
- (NSData)data;
- (NSData)persistentReference;
- (NSString)identifier;
- (NSString)password;
- (id)copyData;
- (id)copyPassword;
- (id)copyQueryWithReturnTypes:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (uint64_t)copyDataFromKeychainItem:(void *)a1 outData:(const __CFData *)a2 outIdentifier:(void *)a3 outPersistentReference:(void *)a4;
- (void)encodeWithCoder:(id)a3;
- (void)migrateFromPreferences:(__SCPreferences *)a3;
- (void)remove;
- (void)setData:(id)a3;
- (void)setIdentifier:(id)a3;
- (void)setPassword:(id)a3;
- (void)setPersistentReference:(id)a3;
- (void)syncUsingConfiguration:(id)a3 accountName:(id)a4 passwordType:(int64_t)a5 identifierSuffix:(id)a6;
@end

@implementation NEKeychainItem

- (void)migrateFromPreferences:(__SCPreferences *)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = [(NEKeychainItem *)self copyData];
  if (!v4)
  {
    v6 = [(NEKeychainItem *)self identifier];
    v4 = _SCPreferencesSystemKeychainPasswordItemCopy();

    if (v4)
    {
      v7 = [(NEKeychainItem *)self identifier];
      v8 = _SCPreferencesSystemKeychainPasswordItemRemove();

      if (v8)
      {
        [(NEKeychainItem *)self setData:v4];
      }

      else
      {
        v9 = ne_log_obj();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
        {
          v10 = [(NEKeychainItem *)self identifier];
          v11 = SCError();
          v12 = 138412546;
          v13 = v10;
          v14 = 2080;
          v15 = SCErrorString(v11);
          _os_log_error_impl(&dword_1BA83C000, v9, OS_LOG_TYPE_ERROR, "%@: _SCPreferencesSystemKeychainPasswordItemRemove failed: %s", &v12, 0x16u);
        }
      }
    }
  }

  v5 = *MEMORY[0x1E69E9840];
}

- (void)syncUsingConfiguration:(id)a3 accountName:(id)a4 passwordType:(int64_t)a5 identifierSuffix:(id)a6
{
  v98 = *MEMORY[0x1E69E9840];
  v87 = a3;
  v85 = a4;
  v86 = a6;
  v10 = self;
  objc_sync_enter(v10);
  if (!v10 || !v10->_legacy)
  {
    v11 = [(NEKeychainItem *)v10 identifier];
    if (v11)
    {
      v12 = [(NEKeychainItem *)v10 identifier];
      v13 = [v87 identifier];
      v14 = [v13 UUIDString];
      v15 = [v12 hasPrefix:v14];

      if ((v15 & 1) == 0)
      {
        if (!v10->_data)
        {
          v16 = [(NEKeychainItem *)v10 copyData];
          data = v10->_data;
          v10->_data = v16;
        }

        identifier = v10->_identifier;
        v10->_identifier = 0;

        persistentReference = v10->_persistentReference;
        v10->_persistentReference = 0;
      }
    }
  }

  if (!v10->_data)
  {
    v20 = [(NEKeychainItem *)v10 identifier];
    if (v20)
    {
    }

    else
    {
      v21 = [(NEKeychainItem *)v10 persistentReference];

      if (!v21)
      {
        goto LABEL_63;
      }
    }
  }

  v23 = ne_log_obj();
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
  {
    v24 = [(NEKeychainItem *)v10 identifier];
    v25 = [(NEKeychainItem *)v10 persistentReference];
    v26 = v10->_data;
    *buf = 138412802;
    *&buf[4] = v24;
    *&buf[12] = 2112;
    *&buf[14] = v25;
    *&buf[22] = 2048;
    v91 = v26;
    _os_log_impl(&dword_1BA83C000, v23, OS_LOG_TYPE_DEFAULT, "Adding/Updating keychain item with identifier %@, persistentReference %@, data %p", buf, 0x20u);
  }

  v84 = v87;
  v27 = v85;
  v83 = v86;
  v28 = v10;
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
      v43 = [(NEKeychainItem *)v28 identifier];
      *buf = 138412290;
      *&buf[4] = v43;
      _os_log_error_impl(&dword_1BA83C000, p_super, OS_LOG_TYPE_ERROR, "%@: Failed to retrieve keychain item from the keychain", buf, 0xCu);
    }

    goto LABEL_61;
  }

  if (v10->_data)
  {
    v33 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v34 = @"VPN Password";
    if (a5 == 1)
    {
      v34 = @"IPSec XAuth Password";
    }

    if (a5 == 2)
    {
      v34 = @"IPSec Shared Secret";
    }

    query = v34;
    v35 = [(NEKeychainItem *)v28 identifier];
    v36 = v35 == 0;

    if (v36)
    {
      if ([v83 length])
      {
        v37 = objc_alloc(MEMORY[0x1E696AEC0]);
        v38 = [v84 identifier];
        v39 = [v38 UUIDString];
        v40 = [v37 initWithFormat:@"%@.%@", v39, v83];
        v41 = v28->_identifier;
        v28->_identifier = v40;
      }

      else
      {
        v38 = [v84 identifier];
        v53 = [v38 UUIDString];
        v39 = v28->_identifier;
        v28->_identifier = v53;
      }
    }

    v54 = [(NEKeychainItem *)v28 identifier];
    v55 = *MEMORY[0x1E697AE88];
    [v33 setObject:v54 forKeyedSubscript:*MEMORY[0x1E697AE88]];

    v56 = [v84 name];
    [v33 setObject:v56 forKeyedSubscript:*MEMORY[0x1E697ADC8]];

    [v33 setObject:query forKeyedSubscript:*MEMORY[0x1E697ACE0]];
    if (v27)
    {
      [v33 setObject:v27 forKeyedSubscript:*MEMORY[0x1E697AC30]];
    }

    [v33 setObject:v10->_data forKeyedSubscript:*MEMORY[0x1E697B3C0]];
    [v33 setObject:*MEMORY[0x1E697ABE0] forKeyedSubscript:*MEMORY[0x1E697ABD8]];
    v57 = [(NEKeychainItem *)v28 accessGroup];
    v58 = v57 == 0;

    if (!v58)
    {
      v59 = [(NEKeychainItem *)v28 accessGroup];
      [v33 setObject:v59 forKeyedSubscript:*MEMORY[0x1E697ABD0]];
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
          v75 = [(NEKeychainItem *)v28 identifier];
          *v94 = 138412546;
          *&v94[4] = v75;
          *&v94[12] = 1024;
          *&v94[14] = v62;
          v76 = v75;
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
          v77 = [(NEKeychainItem *)v28 identifier];
          *buf = 138412546;
          *&buf[4] = v77;
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

  v44 = [(NEKeychainItem *)v28 accessGroup];
  if (v44)
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
  v49 = [(NEKeychainItem *)v28 accessGroup];
  v93 = v49;
  v50 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v93 forKeys:&v92 count:1];

  v51 = SecItemUpdate(querya, v50);
  if (v51)
  {
    v52 = ne_log_obj();
    if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
    {
      v80 = [(NEKeychainItem *)v28 identifier];
      v78 = [(NEKeychainItem *)v28 accessGroup];
      *buf = 138412802;
      *&buf[4] = v80;
      *&buf[12] = 2112;
      *&buf[14] = v78;
      *&buf[22] = 1024;
      LODWORD(v91) = v51;
      v79 = v78;
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
  if (objc_getProperty(v10, v22, 72, 1))
  {
    v66 = ne_log_obj();
    if (os_log_type_enabled(v66, OS_LOG_TYPE_DEFAULT))
    {
      v68 = objc_getProperty(v10, v67, 72, 1);
      v69 = [v68 identifier];
      *buf = 138412290;
      *&buf[4] = v69;
      _os_log_impl(&dword_1BA83C000, v66, OS_LOG_TYPE_DEFAULT, "%@: Removing keychain item", buf, 0xCu);
    }

    v71 = objc_getProperty(v10, v70, 72, 1);
    [v71 remove];
  }

  [(NEKeychainItem *)v10 setData:0];
  objc_setProperty_atomic_copy(v10, v72, 0, 72);
  objc_sync_exit(v10);

  v73 = *MEMORY[0x1E69E9840];
}

- (uint64_t)copyDataFromKeychainItem:(void *)a1 outData:(const __CFData *)a2 outIdentifier:(void *)a3 outPersistentReference:(void *)a4
{
  v33 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    v20 = 0;
    goto LABEL_66;
  }

  v8 = objc_alloc_init(MEMORY[0x1E695DF70]);
  result = 0;
  v9 = [a1 identifier];
  if (v9)
  {

    goto LABEL_5;
  }

  v10 = [a1 persistentReference];

  if (v10)
  {
LABEL_5:
    if (a2)
    {
      [v8 addObject:*MEMORY[0x1E697B318]];
    }

    if (a3)
    {
      [v8 addObject:*MEMORY[0x1E697B310]];
    }

    if (a4)
    {
      [v8 addObject:*MEMORY[0x1E697B320]];
    }

    v11 = [a1 copyQueryWithReturnTypes:v8];
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
        v15 = [a1 identifier];
        *buf = 138412546;
        v30 = v15;
        v31 = 1024;
        v32 = v13;
        _os_log_error_impl(&dword_1BA83C000, v14, OS_LOG_TYPE_ERROR, "%@: SecItemCopyMatching failed: %d", buf, 0x12u);
      }
    }

    else if ([v8 count] == 1)
    {
      if (a2)
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

          *a2 = v17;
        }
      }

      if (a3)
      {
        v21 = result;
        if (isa_nsdictionary(v21))
        {
          v22 = [v21 objectForKeyedSubscript:*MEMORY[0x1E697AE88]];
          if (isa_nsstring(v22) && [v22 length])
          {
            *a3 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithString:v22];
          }
        }
      }

      if (!a4)
      {
        goto LABEL_56;
      }

      v14 = result;
      if (isa_nsdata(v14) && [v14 length])
      {
        *a4 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithData:v14];
      }
    }

    else
    {
      v14 = result;
      if (isa_nsdictionary(v14))
      {
        if (a2)
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

            *a2 = v19;
          }
        }

        if (a3)
        {
          v23 = [v14 objectForKeyedSubscript:*MEMORY[0x1E697AE88]];
          if (isa_nsstring(v23) && [v23 length])
          {
            *a3 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithString:v23];
          }
        }

        if (a4)
        {
          v24 = [v14 objectForKeyedSubscript:*MEMORY[0x1E697B3C8]];
          if (isa_nsdata(v24) && [v24 length])
          {
            *a4 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithData:v24];
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
  v3 = [(NEKeychainItem *)self identifier];
  if (v3)
  {
  }

  else
  {
    v4 = [(NEKeychainItem *)self persistentReference];

    if (!v4)
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
      v10 = [(NEKeychainItem *)self identifier];
      v11 = 138412546;
      v12 = v10;
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
  v2 = [(NEKeychainItem *)self copyData];
  if (v2)
  {
    v3 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithData:v2 encoding:4];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)copyQueryWithReturnTypes:(id)a3
{
  v23 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x1E695DF90]);
  [v5 setObject:*MEMORY[0x1E697B008] forKeyedSubscript:*MEMORY[0x1E697AFF8]];
  v6 = [(NEKeychainItem *)self identifier];

  if (v6)
  {
    v7 = [(NEKeychainItem *)self identifier];
    v8 = MEMORY[0x1E697AE88];
  }

  else
  {
    v9 = [(NEKeychainItem *)self persistentReference];

    if (!v9)
    {
      goto LABEL_6;
    }

    v7 = [(NEKeychainItem *)self persistentReference];
    v8 = MEMORY[0x1E697B3C8];
  }

  [v5 setObject:v7 forKeyedSubscript:*v8];

LABEL_6:
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v10 = v4;
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
  v2 = self;
  objc_sync_enter(v2);
  v3 = v2->_data;
  objc_sync_exit(v2);

  return v3;
}

- (void)setData:(id)a3
{
  v8 = a3;
  v4 = self;
  objc_sync_enter(v4);
  v5 = [(NSData *)MEMORY[0x1E695DEF0] sensitiveDataWithData:v8];
  data = v4->_data;
  v4->_data = v5;

  password = v4->_password;
  v4->_password = 0;

  objc_sync_exit(v4);
}

- (NSString)password
{
  v2 = self;
  objc_sync_enter(v2);
  password = v2->_password;
  if (!password)
  {
    password = v2->_data;
    if (password)
    {
      v4 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithData:v2->_data encoding:4];
      v5 = v2->_password;
      v2->_password = v4;

      password = v2->_password;
    }
  }

  v6 = password;
  objc_sync_exit(v2);

  return v6;
}

- (void)setPassword:(id)a3
{
  v11 = a3;
  v4 = self;
  objc_sync_enter(v4);
  if ([v11 length])
  {
    v5 = [v11 dataUsingEncoding:4];
    v6 = [(NSData *)MEMORY[0x1E695DEF0] sensitiveDataWithData:v5];
    data = v4->_data;
    v4->_data = v6;

    v8 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithString:v11];
    password = v4->_password;
    v4->_password = v8;
  }

  else
  {
    v10 = v4->_data;
    v4->_data = 0;

    v5 = v4->_password;
    v4->_password = 0;
  }

  objc_sync_exit(v4);
}

- (void)setPersistentReference:(id)a3
{
  v13 = a3;
  v4 = self;
  objc_sync_enter(v4);
  persistentReference = v4->_persistentReference;
  if (v13 && !persistentReference)
  {
LABEL_3:
    v6 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithData:v13];
LABEL_4:
    v7 = v4->_persistentReference;
    v4->_persistentReference = v6;

    identifier = v4->_identifier;
    v4->_identifier = 0;

    data = v4->_data;
    v4->_data = 0;

    password = v4->_password;
    v4->_password = 0;

    goto LABEL_7;
  }

  if (persistentReference && ([(NSData *)persistentReference isEqual:v13]& 1) == 0)
  {
    if (v4->_persistentReference)
    {
      v11 = [(NEKeychainItem *)v4 copy];
      oldItem = v4->_oldItem;
      v4->_oldItem = v11;
    }

    v6 = v13;
    if (!v13)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

LABEL_7:
  objc_sync_exit(v4);
}

- (NSData)persistentReference
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = v2->_persistentReference;
  objc_sync_exit(v2);

  return v3;
}

- (void)setIdentifier:(id)a3
{
  v21 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  identifier = v5->_identifier;
  if (v4 && !identifier || identifier && ![(NSString *)identifier isEqualToString:v4])
  {
    v7 = ne_log_obj();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      v16 = v5->_identifier;
      v17 = 138412546;
      v18 = v16;
      v19 = 2112;
      v20 = v4;
      _os_log_debug_impl(&dword_1BA83C000, v7, OS_LOG_TYPE_DEBUG, "setIdentifier: old %@, new %@", &v17, 0x16u);
    }

    if (v5->_identifier)
    {
      v8 = [(NEKeychainItem *)v5 copy];
      oldItem = v5->_oldItem;
      v5->_oldItem = v8;
    }

    if (v4)
    {
      v10 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithString:v4];
    }

    else
    {
      v10 = 0;
    }

    v11 = v5->_identifier;
    v5->_identifier = v10;

    persistentReference = v5->_persistentReference;
    v5->_persistentReference = 0;

    data = v5->_data;
    v5->_data = 0;

    password = v5->_password;
    v5->_password = 0;
  }

  objc_sync_exit(v5);

  v15 = *MEMORY[0x1E69E9840];
}

- (NSString)identifier
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = v2->_identifier;
  objc_sync_exit(v2);

  return v3;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_opt_class() allocWithZone:a3];
  v5 = [(NEKeychainItem *)self identifier];
  v6 = [(NEKeychainItem *)self domain];
  v7 = [(NEKeychainItem *)self accessGroup];
  v8 = [v4 initWithIdentifier:v5 domain:v6 accessGroup:v7];

  v9 = [(NEKeychainItem *)self persistentReference];
  v10 = [v9 copy];
  v11 = *(v8 + 32);
  *(v8 + 32) = v10;

  v12 = [(NEKeychainItem *)self keyPersistentReference];
  v13 = [v12 copy];
  v14 = *(v8 + 40);
  *(v8 + 40) = v13;

  *(v8 + 48) = [(NEKeychainItem *)self isModernSystem];
  v15 = [(NSData *)MEMORY[0x1E695DEF0] sensitiveDataWithData:?];
  v16 = *(v8 + 8);
  *(v8 + 8) = v15;

  *(v8 + 49) = self->_legacy;
  return v8;
}

- (void)encodeWithCoder:(id)a3
{
  v8 = a3;
  v4 = [(NEKeychainItem *)self identifier];
  [v8 encodeObject:v4 forKey:@"Identifier"];

  v5 = [(NEKeychainItem *)self persistentReference];
  [v8 encodeObject:v5 forKey:@"PersistentReference"];

  v6 = [(NEKeychainItem *)self keyPersistentReference];
  [v8 encodeObject:v6 forKey:@"KeyPersistentReference"];

  [v8 encodeBool:-[NEKeychainItem isModernSystem](self forKey:{"isModernSystem"), @"IsModernSystem"}];
  [v8 encodeInt32:-[NEKeychainItem domain](self forKey:{"domain"), @"Domain"}];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [v8 encodeObject:self->_data forKey:@"Data"];
  }

  [v8 encodeObject:self->_oldItem forKey:@"OldItem"];
  v7 = [(NEKeychainItem *)self accessGroup];
  [v8 encodeObject:v7 forKey:@"AccessGroup"];
}

- (NEKeychainItem)initWithCoder:(id)a3
{
  v4 = a3;
  v23.receiver = self;
  v23.super_class = NEKeychainItem;
  v5 = [(NEKeychainItem *)&v23 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"Identifier"];
    identifier = v5->_identifier;
    v5->_identifier = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"PersistentReference"];
    persistentReference = v5->_persistentReference;
    v5->_persistentReference = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"KeyPersistentReference"];
    keyPersistentReference = v5->_keyPersistentReference;
    v5->_keyPersistentReference = v10;

    v5->_isModernSystem = [v4 decodeBoolForKey:@"IsModernSystem"];
    v5->_domain = [v4 decodeInt32ForKey:@"Domain"];
    if ([v4 containsValueForKey:@"Password"])
    {
      v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"Password"];
      v13 = [v12 dataUsingEncoding:4];
      v14 = [(NSData *)MEMORY[0x1E695DEF0] sensitiveDataWithData:v13];
      data = v5->_data;
      v5->_data = v14;

      v16 = 16;
    }

    else
    {
      v13 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"Data"];
      v12 = [(NSData *)MEMORY[0x1E695DEF0] sensitiveDataWithData:v13];
      v16 = 8;
    }

    v17 = *(&v5->super.isa + v16);
    *(&v5->super.isa + v16) = v12;

    v18 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"OldItem"];
    oldItem = v5->_oldItem;
    v5->_oldItem = v18;

    v20 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"AccessGroup"];
    accessGroup = v5->_accessGroup;
    v5->_accessGroup = v20;
  }

  return v5;
}

- (NEKeychainItem)initWithLegacyIdentifier:(id)a3 domain:(int64_t)a4 accessGroup:(id)a5
{
  result = [(NEKeychainItem *)self initWithIdentifier:a3 domain:a4 accessGroup:a5];
  if (result)
  {
    result->_legacy = 1;
  }

  return result;
}

- (NEKeychainItem)initWithPersistentReference:(id)a3 keyReference:(id)a4 isModernSystem:(BOOL)a5 domain:(int64_t)a6 accessGroup:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a7;
  v23.receiver = self;
  v23.super_class = NEKeychainItem;
  v15 = [(NEKeychainItem *)&v23 init];
  if (v15)
  {
    v16 = [v12 copy];
    persistentReference = v15->_persistentReference;
    v15->_persistentReference = v16;

    v18 = [v13 copy];
    keyPersistentReference = v15->_keyPersistentReference;
    v15->_keyPersistentReference = v18;

    v15->_isModernSystem = a5;
    v15->_domain = a6;
    v20 = [v14 copy];
    accessGroup = v15->_accessGroup;
    v15->_accessGroup = v20;
  }

  return v15;
}

- (NEKeychainItem)initWithPersistentReference:(id)a3 domain:(int64_t)a4 accessGroup:(id)a5
{
  v8 = a3;
  v9 = a5;
  v16.receiver = self;
  v16.super_class = NEKeychainItem;
  v10 = [(NEKeychainItem *)&v16 init];
  if (v10)
  {
    v11 = [v8 copy];
    persistentReference = v10->_persistentReference;
    v10->_persistentReference = v11;

    v10->_domain = a4;
    v13 = [v9 copy];
    accessGroup = v10->_accessGroup;
    v10->_accessGroup = v13;
  }

  return v10;
}

- (NEKeychainItem)initWithIdentifier:(id)a3 domain:(int64_t)a4 accessGroup:(id)a5
{
  v8 = a3;
  v9 = a5;
  v16.receiver = self;
  v16.super_class = NEKeychainItem;
  v10 = [(NEKeychainItem *)&v16 init];
  if (v10)
  {
    v11 = [v8 copy];
    identifier = v10->_identifier;
    v10->_identifier = v11;

    v10->_domain = a4;
    v13 = [v9 copy];
    accessGroup = v10->_accessGroup;
    v10->_accessGroup = v13;
  }

  return v10;
}

- (NEKeychainItem)initWithData:(id)a3 domain:(int64_t)a4 accessGroup:(id)a5
{
  v8 = a3;
  v9 = a5;
  v16.receiver = self;
  v16.super_class = NEKeychainItem;
  v10 = [(NEKeychainItem *)&v16 init];
  if (v10)
  {
    v11 = [(NSData *)MEMORY[0x1E695DEF0] sensitiveDataWithData:v8];
    data = v10->_data;
    v10->_data = v11;

    v10->_domain = a4;
    v13 = [v9 copy];
    accessGroup = v10->_accessGroup;
    v10->_accessGroup = v13;
  }

  return v10;
}

- (NEKeychainItem)initWithPassword:(id)a3 domain:(int64_t)a4 accessGroup:(id)a5
{
  v9 = a3;
  v10 = a5;
  v11 = [v9 dataUsingEncoding:4];
  v12 = [(NEKeychainItem *)self initWithData:v11 domain:a4 accessGroup:v10];

  if (v12)
  {
    objc_storeStrong(&v12->_password, a3);
  }

  return v12;
}

@end