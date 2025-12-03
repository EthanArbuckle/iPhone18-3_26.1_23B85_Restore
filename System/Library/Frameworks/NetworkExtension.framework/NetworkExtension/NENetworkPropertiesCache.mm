@interface NENetworkPropertiesCache
+ (NENetworkPropertiesCache)sharedCache;
- (BOOL)loadCache;
- (NENetworkPropertiesCache)init;
- (id)copyPropertiesForNetworkPath:(id)path;
- (id)createCacheKeyFromSignature:(void *)signature;
- (id)encryptData:(void *)data withKey:(void *)key;
- (uint64_t)copyNetworkSignatureForPath:(uint64_t)path;
- (uint64_t)fetchKey:(void *)key;
- (void)clear;
- (void)rotateEncryptionKey;
- (void)saveCacheToDisk:(void *)disk;
- (void)setProperties:(id)properties forNetworkPath:(id)path;
- (void)updateKeyWithCurrentKey:(void *)key currentCache:;
@end

@implementation NENetworkPropertiesCache

- (void)rotateEncryptionKey
{
  os_unfair_lock_lock(&self->lock);
  if ([(NENetworkPropertiesCache *)self loadCache])
  {
    if (self)
    {
      v3 = self->_cache;
      objc_storeStrong(&self->_cache, 0);
      if (v3)
      {
        v7 = 0;
        v4 = [(NENetworkPropertiesCache *)self fetchKey:?];
        v5 = v7;
        v6 = v5;
        if (!v4 && v5)
        {
          [(NENetworkPropertiesCache *)self updateKeyWithCurrentKey:v5 currentCache:v3];
        }
      }
    }

    else
    {
      v3 = 0;
    }
  }

  os_unfair_lock_unlock(&self->lock);
}

- (BOOL)loadCache
{
  v40 = *MEMORY[0x1E69E9840];
  if (!self)
  {
    v5 = 0;
    goto LABEL_7;
  }

  check = 0;
  v2 = notify_check(*(self + 12), &check);
  if (!v2)
  {
    if (!check && *(self + 40))
    {
      goto LABEL_6;
    }

    v8 = objc_alloc(MEMORY[0x1E696AEC0]);
    cacheFileURL = [self cacheFileURL];
    v4 = [v8 initWithCString:objc_msgSend(cacheFileURL encoding:{"fileSystemRepresentation"), 4}];

    defaultManager = [MEMORY[0x1E696AC08] defaultManager];
    v11 = [defaultManager fileExistsAtPath:v4];

    if ((v11 & 1) == 0)
    {
      v17 = ne_log_obj();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1BA83C000, v17, OS_LOG_TYPE_DEFAULT, "No network properties cache exists", buf, 2u);
      }

      v18 = *(self + 40);
      *(self + 40) = 0;

      goto LABEL_5;
    }

    defaultManager2 = [MEMORY[0x1E696AC08] defaultManager];
    v34 = 0;
    v13 = [defaultManager2 attributesOfItemAtPath:v4 error:&v34];
    v14 = v34;

    if (!v13 || v14)
    {
      v16 = ne_log_obj();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412546;
        v37 = v4;
        v38 = 2112;
        v39 = v14;
        _os_log_error_impl(&dword_1BA83C000, v16, OS_LOG_TYPE_ERROR, "Failed to read the attributes for %@: %@", buf, 0x16u);
      }

      goto LABEL_22;
    }

    fileSize = [v13 fileSize];
    if (fileSize > [self cacheMaxSizeBytes])
    {
      v16 = ne_log_obj();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134217984;
        v37 = fileSize;
        _os_log_impl(&dword_1BA83C000, v16, OS_LOG_TYPE_DEFAULT, "Cache file is too large (%llu), re-setting", buf, 0xCu);
      }

LABEL_22:

      v19 = 0;
      v20 = 0;
      v21 = *(self + 40);
      *(self + 40) = 0;
      v5 = 1;
      goto LABEL_43;
    }

    v22 = MEMORY[0x1E695DEF0];
    cacheFileURL2 = [self cacheFileURL];
    v33 = 0;
    v21 = [v22 dataWithContentsOfURL:cacheFileURL2 options:0 error:&v33];
    v19 = v33;

    if (!v21)
    {
      v28 = ne_log_obj();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v37 = v19;
        _os_log_impl(&dword_1BA83C000, v28, OS_LOG_TYPE_DEFAULT, "Got an error while reading the cache from disk: %@", buf, 0xCu);
      }

      if (v19)
      {
        domain = [v19 domain];
        if ([domain isEqualToString:*MEMORY[0x1E696A250]])
        {
          v5 = [v19 code] != 257;
        }

        else
        {
          v5 = 1;
        }
      }

      else
      {
        v5 = 1;
      }

      v31 = *(self + 40);
      *(self + 40) = 0;
      goto LABEL_42;
    }

    v32 = 0;
    v24 = [MEMORY[0x1E696AE40] propertyListWithData:v21 options:0 format:0 error:&v32];
    v25 = v32;
    if (v25)
    {
      v26 = ne_log_obj();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v37 = v25;
        v27 = "Failed to de-serialize the network properties cache: %@";
LABEL_35:
        _os_log_error_impl(&dword_1BA83C000, v26, OS_LOG_TYPE_ERROR, v27, buf, 0xCu);
      }
    }

    else
    {
      if (isa_nsdictionary(v24))
      {
LABEL_37:
        v30 = *(self + 40);
        *(self + 40) = v24;
        v31 = v24;

        v5 = 1;
LABEL_42:

        v20 = 1;
LABEL_43:

        if (v20)
        {
          goto LABEL_7;
        }

        goto LABEL_6;
      }

      v26 = ne_log_obj();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v37 = v24;
        v27 = "De-serialized cache is not a dictionary: %@";
        goto LABEL_35;
      }
    }

    v24 = 0;
    goto LABEL_37;
  }

  v3 = v2;
  v4 = ne_log_obj();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    *buf = 67109120;
    LODWORD(v37) = v3;
    _os_log_error_impl(&dword_1BA83C000, v4, OS_LOG_TYPE_ERROR, "notify_check failed: %u", buf, 8u);
  }

LABEL_5:

LABEL_6:
  v5 = 1;
LABEL_7:
  v6 = *MEMORY[0x1E69E9840];
  return v5;
}

- (uint64_t)fetchKey:(void *)key
{
  v23[4] = *MEMORY[0x1E69E9840];
  if (!key)
  {
    v12 = 0;
    goto LABEL_13;
  }

  result = 0;
  v4 = *MEMORY[0x1E697AFF8];
  v23[0] = *MEMORY[0x1E697B008];
  v5 = *MEMORY[0x1E697AE88];
  v22[0] = v4;
  v22[1] = v5;
  keychainIdentifier = [key keychainIdentifier];
  v7 = *MEMORY[0x1E697B260];
  v8 = *MEMORY[0x1E697B270];
  v23[1] = keychainIdentifier;
  v23[2] = v8;
  v9 = *MEMORY[0x1E697B318];
  v22[2] = v7;
  v22[3] = v9;
  v23[3] = MEMORY[0x1E695E118];
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v23 forKeys:v22 count:4];

  *a2 = 0;
  v11 = SecItemCopyMatching(v10, &result);
  v12 = v11;
  if (v11 == -25300)
  {
    v14 = ne_log_obj();
    if (!os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      goto LABEL_11;
    }

    keychainIdentifier2 = [key keychainIdentifier];
    *buf = 138412290;
    v21 = keychainIdentifier2;
    _os_log_impl(&dword_1BA83C000, v14, OS_LOG_TYPE_INFO, "No %@ item was found", buf, 0xCu);
LABEL_9:

    goto LABEL_11;
  }

  if (!v11)
  {
    if (result && (v13 = CFDATA_TYPE, CFGetTypeID(result) == v13))
    {
      *a2 = result;
    }

    else
    {
      v18 = ne_log_obj();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v21 = result;
        _os_log_error_impl(&dword_1BA83C000, v18, OS_LOG_TYPE_ERROR, "Result from keychain is not a data blob: %@", buf, 0xCu);
      }

      if (result)
      {
        CFRelease(result);
      }
    }

    goto LABEL_12;
  }

  v14 = ne_log_obj();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
  {
    keychainIdentifier2 = SecCopyErrorMessageString(v12, 0);
    *buf = 138412290;
    v21 = keychainIdentifier2;
    _os_log_error_impl(&dword_1BA83C000, v14, OS_LOG_TYPE_ERROR, "SecItemCopyMatching failed: %@", buf, 0xCu);
    goto LABEL_9;
  }

LABEL_11:

LABEL_12:
LABEL_13:
  v16 = *MEMORY[0x1E69E9840];
  return v12;
}

- (void)updateKeyWithCurrentKey:(void *)key currentCache:
{
  v63[2] = *MEMORY[0x1E69E9840];
  v5 = a2;
  keyCopy = key;
  if (self)
  {
    arc4random_buf(__buf, 0x20uLL);
    v7 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytes:__buf length:32];
    v8 = v7;
    if (!v7)
    {
      goto LABEL_29;
    }

    v9 = v7;
    v10 = *MEMORY[0x1E697AFF8];
    v11 = *MEMORY[0x1E697B008];
    if (v5)
    {
      v63[0] = *MEMORY[0x1E697B008];
      v12 = *MEMORY[0x1E697AE88];
      v62[0] = v10;
      v62[1] = v12;
      keychainIdentifier = [self keychainIdentifier];
      v63[1] = keychainIdentifier;
      v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v63 forKeys:v62 count:2];

      v60 = *MEMORY[0x1E697B3C0];
      v61 = v9;
      v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v61 forKeys:&v60 count:1];
      v16 = SecItemUpdate(v14, v15);
    }

    else
    {
      v17 = *MEMORY[0x1E697B3A8];
      *buf = *MEMORY[0x1E697AFF8];
      *&buf[8] = v17;
      v18 = *MEMORY[0x1E695E4D0];
      __buf[0] = v11;
      __buf[1] = v18;
      *&buf[16] = *MEMORY[0x1E697AE88];
      keychainIdentifier2 = [self keychainIdentifier];
      v20 = *MEMORY[0x1E697B3C0];
      __buf[2] = keychainIdentifier2;
      __buf[3] = v9;
      v21 = *MEMORY[0x1E697ABD8];
      v57 = v20;
      v58 = v21;
      __buf[4] = *MEMORY[0x1E697ABE0];
      v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:__buf forKeys:buf count:5];

      v16 = SecItemAdd(v14, 0);
    }

    if (v16)
    {
      v22 = ne_log_obj();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        if (v5)
        {
          v41 = @"update";
        }

        else
        {
          v41 = @"add";
        }

        v42 = SecCopyErrorMessageString(v16, 0);
        *dataOutMoved = 138412546;
        *&dataOutMoved[4] = v41;
        v54 = 2112;
        v55 = v42;
        _os_log_error_impl(&dword_1BA83C000, v22, OS_LOG_TYPE_ERROR, "Failed to %@ the signature key: %@", dataOutMoved, 0x16u);
      }

      goto LABEL_29;
    }

    if (!v5 || !keyCopy)
    {
LABEL_29:

      goto LABEL_30;
    }

    selfCopy = self;
    v44 = v8;
    v47 = v9;
    v46 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v48 = 0u;
    v49 = 0u;
    v50 = 0u;
    v51 = 0u;
    v45 = keyCopy;
    v23 = keyCopy;
    v24 = [v23 countByEnumeratingWithState:&v48 objects:v52 count:16];
    if (!v24)
    {
      goto LABEL_28;
    }

    v25 = v24;
    v26 = *v49;
LABEL_13:
    v27 = 0;
    while (1)
    {
      if (*v49 != v26)
      {
        objc_enumerationMutation(v23);
      }

      v28 = *(*(&v48 + 1) + 8 * v27);
      *dataOutMoved = 0;
      v29 = [v23 objectForKeyedSubscript:v28];
      v30 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBase64EncodedString:v28 options:0];
      v31 = CCCrypt(1u, 0, 0, [v5 bytes], objc_msgSend(v5, "length"), 0, objc_msgSend(v30, "bytes"), objc_msgSend(v30, "length"), __buf, 0x20uLL, dataOutMoved);
      if (v31)
      {
        v32 = v31;
        v33 = ne_log_obj();
        if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
        {
          *buf = 67109120;
          *&buf[4] = v32;
          v34 = v33;
          v35 = "CCCrypt failed: %d";
          v36 = 8;
LABEL_25:
          _os_log_error_impl(&dword_1BA83C000, v34, OS_LOG_TYPE_ERROR, v35, buf, v36);
        }
      }

      else
      {
        if (*dataOutMoved == 32)
        {
          v33 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytesNoCopy:__buf length:32 freeWhenDone:0];
          v37 = [NENetworkPropertiesCache encryptData:v33 withKey:v47];
          v38 = v37;
          if (v37)
          {
            v39 = [v37 base64EncodedStringWithOptions:0];
            [v46 setObject:v29 forKeyedSubscript:v39];
          }

          goto LABEL_26;
        }

        v33 = ne_log_obj();
        if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
        {
          *buf = 134218240;
          *&buf[4] = *dataOutMoved;
          *&buf[12] = 2048;
          *&buf[14] = 32;
          v34 = v33;
          v35 = "Decrypted data size (%lu) does not match expected size (%lu)";
          v36 = 22;
          goto LABEL_25;
        }
      }

LABEL_26:

      if (v25 == ++v27)
      {
        v25 = [v23 countByEnumeratingWithState:&v48 objects:v52 count:16];
        if (!v25)
        {
LABEL_28:

          [(NENetworkPropertiesCache *)selfCopy saveCacheToDisk:v46];
          v8 = v44;
          keyCopy = v45;
          goto LABEL_29;
        }

        goto LABEL_13;
      }
    }
  }

LABEL_30:

  v40 = *MEMORY[0x1E69E9840];
}

- (id)encryptData:(void *)data withKey:(void *)key
{
  v31 = *MEMORY[0x1E69E9840];
  dataCopy = data;
  keyCopy = key;
  size = 0;
  v5 = CCCrypt(0, 0, 0, [keyCopy bytes], objc_msgSend(keyCopy, "length"), 0, objc_msgSend(dataCopy, "bytes"), objc_msgSend(dataCopy, "length"), 0, 0, &size);
  if (v5 != -4301)
  {
    v15 = v5;
    v16 = ne_log_obj();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      v30 = v15;
      _os_log_error_impl(&dword_1BA83C000, v16, OS_LOG_TYPE_ERROR, "CCCrypt failed without buffer: %d", buf, 8u);
    }

    goto LABEL_13;
  }

  v6 = malloc_type_malloc(size, 0x100004077774924uLL);
  if (!v6)
  {
    v17 = *__error();
    if (strerror_r(v17, buf, 0x80uLL))
    {
      buf[0] = 0;
    }

    v16 = ne_log_obj();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
    {
      *v23 = 134218498;
      v24 = size;
      v25 = 1024;
      v26 = v17;
      v27 = 2080;
      v28 = buf;
      _os_log_fault_impl(&dword_1BA83C000, v16, OS_LOG_TYPE_FAULT, "Failed to allocate %lu bytes of data: [%d] %s", v23, 0x1Cu);
    }

LABEL_13:

LABEL_14:
    v18 = 0;
    goto LABEL_15;
  }

  dataOut = v6;
  bytes = [keyCopy bytes];
  v9 = [keyCopy length];
  bytes2 = [dataCopy bytes];
  v11 = [dataCopy length];
  v12 = CCCrypt(0, 0, 0, bytes, v9, 0, bytes2, v11, dataOut, size, &size);
  if (v12)
  {
    v13 = v12;
    v14 = ne_log_obj();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      v30 = v13;
      _os_log_error_impl(&dword_1BA83C000, v14, OS_LOG_TYPE_ERROR, "CCCrypt failed with buffer: %d", buf, 8u);
    }

    free(dataOut);
    goto LABEL_14;
  }

  v21 = objc_alloc(MEMORY[0x1E695DEF0]);
  v18 = [v21 initWithBytesNoCopy:dataOut length:size];
LABEL_15:

  v19 = *MEMORY[0x1E69E9840];

  return v18;
}

- (void)saveCacheToDisk:(void *)disk
{
  v17 = *MEMORY[0x1E69E9840];
  if (disk)
  {
    v12 = 0;
    v3 = [MEMORY[0x1E696AE40] dataWithPropertyList:a2 format:200 options:0 error:&v12];
    v4 = v12;
    if (v4)
    {
      v5 = ne_log_obj();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v14 = v4;
        v6 = "Failed to serialize the network properties: %@";
LABEL_12:
        _os_log_error_impl(&dword_1BA83C000, v5, OS_LOG_TYPE_ERROR, v6, buf, 0xCu);
      }
    }

    else
    {
      if (isa_nsdata(v3))
      {
        cacheFileURL = [disk cacheFileURL];
        v11 = 0;
        [v3 writeToURL:cacheFileURL options:1073741825 error:&v11];
        v5 = v11;

        if (v5)
        {
          v8 = ne_log_obj();
          if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
          {
            cacheFileURL2 = [disk cacheFileURL];
            *buf = 138412546;
            v14 = cacheFileURL2;
            v15 = 2112;
            v16 = v5;
            _os_log_error_impl(&dword_1BA83C000, v8, OS_LOG_TYPE_ERROR, "Failed to write the serialized plist to %@: %@", buf, 0x16u);
          }
        }

        else
        {
          notify_post("com.apple.networkextension.net-properties-changed");
        }

        goto LABEL_14;
      }

      v5 = ne_log_obj();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v14 = v3;
        v6 = "Serialized plist is not a valid data object: %@";
        goto LABEL_12;
      }
    }

LABEL_14:
  }

  v9 = *MEMORY[0x1E69E9840];
}

- (void)clear
{
  v25[3] = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock(&self->lock);
  v3 = *MEMORY[0x1E697B008];
  v4 = *MEMORY[0x1E697B3A8];
  v24[0] = *MEMORY[0x1E697AFF8];
  v24[1] = v4;
  v5 = *MEMORY[0x1E695E4D0];
  v25[0] = v3;
  v25[1] = v5;
  v24[2] = *MEMORY[0x1E697AE88];
  keychainIdentifier = [(NENetworkPropertiesCache *)self keychainIdentifier];
  v25[2] = keychainIdentifier;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v25 forKeys:v24 count:3];

  v8 = SecItemDelete(v7);
  if (v8 != -25300 && v8)
  {
    v9 = ne_log_obj();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      keychainIdentifier2 = [(NENetworkPropertiesCache *)self keychainIdentifier];
      *buf = 138412290;
      v23 = keychainIdentifier2;
      _os_log_error_impl(&dword_1BA83C000, v9, OS_LOG_TYPE_ERROR, "Failed to remove the %@ keychain item", buf, 0xCu);
    }
  }

  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  cacheFileURL = [(NENetworkPropertiesCache *)self cacheFileURL];
  path = [cacheFileURL path];
  v13 = [defaultManager fileExistsAtPath:path];

  if (v13)
  {
    defaultManager2 = [MEMORY[0x1E696AC08] defaultManager];
    cacheFileURL2 = [(NENetworkPropertiesCache *)self cacheFileURL];
    v21 = 0;
    [defaultManager2 removeItemAtURL:cacheFileURL2 error:&v21];
    v16 = v21;

    if (v16)
    {
      v17 = ne_log_obj();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        cacheFileURL3 = [(NENetworkPropertiesCache *)self cacheFileURL];
        *buf = 138412290;
        v23 = cacheFileURL3;
        _os_log_error_impl(&dword_1BA83C000, v17, OS_LOG_TYPE_ERROR, "Failed to remove %@", buf, 0xCu);
      }
    }

    else
    {
      notify_post("com.apple.networkextension.net-properties-changed");
    }
  }

  os_unfair_lock_unlock(&self->lock);

  v18 = *MEMORY[0x1E69E9840];
}

- (void)setProperties:(id)properties forNetworkPath:(id)path
{
  propertiesCopy = properties;
  v7 = [(NENetworkPropertiesCache *)self copyNetworkSignatureForPath:path];
  if (v7)
  {
    os_unfair_lock_lock(&self->lock);
    if ([(NENetworkPropertiesCache *)self loadCache])
    {
      if (self && (v8 = self->_cache, objc_storeStrong(&self->_cache, 0), v8))
      {
        v9 = [(NSDictionary *)v8 mutableCopy];
      }

      else
      {
        v9 = objc_alloc_init(MEMORY[0x1E695DF90]);
        v8 = 0;
      }

      v11 = [(NENetworkPropertiesCache *)self createCacheKeyFromSignature:v7];
      if (v11)
      {
        [v9 setObject:propertiesCopy forKeyedSubscript:v11];
        [(NENetworkPropertiesCache *)self saveCacheToDisk:v9];
      }
    }

    os_unfair_lock_unlock(&self->lock);
  }

  else
  {
    v10 = ne_log_obj();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *v12 = 0;
      _os_log_error_impl(&dword_1BA83C000, v10, OS_LOG_TYPE_ERROR, "Network characteristics has no signature, cannot set characteristics", v12, 2u);
    }
  }
}

- (uint64_t)copyNetworkSignatureForPath:(uint64_t)path
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = v3;
  v5 = 0;
  if (path && v3)
  {
    v6 = nw_path_copy_interface();
    v7 = v6;
    if (!v6)
    {
      v9 = ne_log_obj();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_1BA83C000, v9, OS_LOG_TYPE_ERROR, "Path does not have an interface, cannot get network signature", buf, 2u);
      }

      v5 = 0;
      goto LABEL_17;
    }

    type = nw_interface_get_type(v6);
    v9 = objc_alloc_init(MEMORY[0x1E695DF88]);
    ipv4_network_signature = nw_path_get_ipv4_network_signature();
    v11 = ipv4_network_signature;
    if (ipv4_network_signature)
    {
      [v9 appendBytes:buf length:20];
    }

    *buf = 0;
    v18 = 0;
    v19 = 0;
    if (nw_path_get_ipv6_network_signature())
    {
      if (type == nw_interface_type_cellular)
      {
        v12 = &dummyIPv6NetworkSignature;
        v13 = v9;
        v14 = 20;
      }

      else
      {
        v14 = 20;
        v12 = buf;
        v13 = v9;
      }
    }

    else
    {
      if (v11)
      {
LABEL_16:
        v5 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithData:v9];
LABEL_17:

        goto LABEL_18;
      }

      v12 = "default_signature";
      v13 = v9;
      v14 = 18;
    }

    [v13 appendBytes:v12 length:v14];
    goto LABEL_16;
  }

LABEL_18:

  v15 = *MEMORY[0x1E69E9840];
  return v5;
}

- (id)createCacheKeyFromSignature:(void *)signature
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (signature)
  {
    v13 = 0;
    v4 = [(NENetworkPropertiesCache *)signature fetchKey:?];
    v5 = v13;
    if (v4 == -25300)
    {
      [(NENetworkPropertiesCache *)signature updateKeyWithCurrentKey:0 currentCache:?];
      v12 = v5;
      v4 = [(NENetworkPropertiesCache *)signature fetchKey:?];
      v6 = v12;

      v5 = v6;
    }

    if (v4)
    {
      signature = 0;
    }

    else
    {
      CC_SHA256([v3 bytes], objc_msgSend(v3, "length"), md);
      v7 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytesNoCopy:md length:32 freeWhenDone:0];
      v8 = [NENetworkPropertiesCache encryptData:v7 withKey:v5];
      v9 = v8;
      if (v8)
      {
        signature = [v8 base64EncodedStringWithOptions:0];
      }

      else
      {
        signature = 0;
      }
    }
  }

  v10 = *MEMORY[0x1E69E9840];

  return signature;
}

- (id)copyPropertiesForNetworkPath:(id)path
{
  v4 = [(NENetworkPropertiesCache *)self copyNetworkSignatureForPath:path];
  if (v4)
  {
    os_unfair_lock_lock(&self->lock);
    if (![(NENetworkPropertiesCache *)self loadCache])
    {
      v8 = 0;
LABEL_18:
      os_unfair_lock_unlock(&self->lock);
      goto LABEL_19;
    }

    if (self)
    {
      v5 = self->_cache;
      objc_storeStrong(&self->_cache, 0);
      if (v5)
      {
        v6 = [(NENetworkPropertiesCache *)self createCacheKeyFromSignature:v4];
        if (v6)
        {
          v7 = [(NSDictionary *)v5 objectForKeyedSubscript:v6];
          v8 = [v7 copy];
        }

        else
        {
          v10 = ne_log_obj();
          if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
          {
            *v12 = 0;
            _os_log_error_impl(&dword_1BA83C000, v10, OS_LOG_TYPE_ERROR, "Failed to create a cacheKey for the network signature", v12, 2u);
          }

          v8 = 0;
        }

        goto LABEL_17;
      }
    }

    else
    {
      v5 = 0;
    }

    v8 = 0;
LABEL_17:

    goto LABEL_18;
  }

  v9 = ne_log_obj();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&dword_1BA83C000, v9, OS_LOG_TYPE_ERROR, "No network signature is available", buf, 2u);
  }

  v8 = 0;
LABEL_19:

  return v8;
}

- (NENetworkPropertiesCache)init
{
  v19 = *MEMORY[0x1E69E9840];
  v14.receiver = self;
  v14.super_class = NENetworkPropertiesCache;
  v2 = [(NENetworkPropertiesCache *)&v14 init];
  v3 = v2;
  if (!v2)
  {
    goto LABEL_7;
  }

  v2->lock._os_unfair_lock_opaque = 0;
  out_token = -1;
  v4 = notify_register_check("com.apple.networkextension.net-properties-changed", &out_token);
  if (!v4)
  {
    v3->_notifyToken = out_token;
    v8 = [objc_alloc(MEMORY[0x1E695DFF8]) initFileURLWithFileSystemRepresentation:"/Library/Preferences/com.apple.networkextension.netprops.plist" isDirectory:0 relativeToURL:0];
    cacheFileURL = v3->_cacheFileURL;
    v3->_cacheFileURL = v8;

    keychainIdentifier = v3->_keychainIdentifier;
    v3->_keychainIdentifier = @"com.apple.networkextension.netpropskey";

    v3->_cacheMaxSizeBytes = 256000;
LABEL_7:
    v7 = v3;
    goto LABEL_8;
  }

  v5 = v4;
  v6 = ne_log_obj();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
  {
    *buf = 136315394;
    v16 = "com.apple.networkextension.net-properties-changed";
    v17 = 1024;
    v18 = v5;
    _os_log_fault_impl(&dword_1BA83C000, v6, OS_LOG_TYPE_FAULT, "Failed to register for %s notifications: %u", buf, 0x12u);
  }

  v7 = 0;
LABEL_8:

  v11 = *MEMORY[0x1E69E9840];
  return v7;
}

+ (NENetworkPropertiesCache)sharedCache
{
  if (sharedCache_onceToken != -1)
  {
    dispatch_once(&sharedCache_onceToken, &__block_literal_global_24379);
  }

  v3 = sharedCache_g_cache;

  return v3;
}

uint64_t __39__NENetworkPropertiesCache_sharedCache__block_invoke()
{
  if (NEInitCFTypes_onceToken != -1)
  {
    dispatch_once(&NEInitCFTypes_onceToken, &__block_literal_global_25529);
  }

  v0 = objc_alloc_init(NENetworkPropertiesCache);
  v1 = sharedCache_g_cache;
  sharedCache_g_cache = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

@end