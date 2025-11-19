@interface _LSDeviceIdentifierCache
- (_LSDeviceIdentifierCache)initWithPersona:(id)a3;
- (id)allIdentifiersNotDispatched;
- (id)applyPerUserEntropyNotDispatched:(id)a3 type:(int64_t)a4;
- (id)deviceIdentifierVendorSeed;
- (id)extractUUIDForKey:(id)a3;
- (id)generateSomePerUserEntropyNotDispatched;
- (id)identifiersOfTypeNotDispatched:(int64_t)a3;
- (void)clearAllIdentifiersOfType:(int64_t)a3;
- (void)clearIdentifiersForUninstallationWithVendorName:(id)a3 bundleIdentifier:(id)a4;
- (void)generatePerUserEntropyIfNeededNotDispatched;
- (void)getIdentifierOfType:(int64_t)a3 vendorName:(id)a4 bundleIdentifier:(id)a5 completionHandler:(id)a6;
- (void)save;
@end

@implementation _LSDeviceIdentifierCache

- (id)allIdentifiersNotDispatched
{
  v35 = *MEMORY[0x1E69E9840];
  if (![(_LSDeviceIdentifierCache *)self deviceUnlockedSinceBoot])
  {
    v4 = _LSDefaultLog();
    if (os_log_type_enabled(&v4->super, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_18162D000, &v4->super, OS_LOG_TYPE_DEFAULT, "Identifiers file unavailable (not yet unlocked)", buf, 2u);
    }

    v3 = 0;
    goto LABEL_26;
  }

  v3 = self->_identifiers;
  if (v3)
  {
    goto LABEL_27;
  }

  v4 = self->_identifiersFileURL;
  if (v4)
  {
    v5 = [MEMORY[0x1E695DEF0] dataWithContentsOfURL:v4];
    if (v5)
    {
LABEL_5:
      v6 = [MEMORY[0x1E696AE40] propertyListWithData:v5 options:1 format:0 error:0];
      identifiers = self->_identifiers;
      self->_identifiers = v6;

      v8 = [(NSDictionary *)self->_identifiers objectForKeyedSubscript:@"LSVendors"];
      v9 = v8 == 0;

      if (v9)
      {
        v10 = [MEMORY[0x1E695DF90] dictionary];
        [(NSDictionary *)self->_identifiers setObject:v10 forKeyedSubscript:@"LSVendors"];

        [(_LSDeviceIdentifierCache *)self save];
      }

      v11 = [(_LSDeviceIdentifierCache *)self extractUUIDForKey:@"LSAdvertiserIdentifier"];
      advertiserIdentifier = self->_advertiserIdentifier;
      self->_advertiserIdentifier = v11;

      v13 = [(_LSDeviceIdentifierCache *)self extractUUIDForKey:@"LSVendorSeed"];
      vendorIdentifierSeed = self->_vendorIdentifierSeed;
      self->_vendorIdentifierSeed = v13;

      goto LABEL_21;
    }

    v15 = [objc_alloc(MEMORY[0x1E695DFF8]) initFileURLWithPath:@"/var/db/lsd/com.apple.lsdidentifiers.plist" isDirectory:0];
    v16 = [MEMORY[0x1E696AC08] defaultManager];
    v17 = [v15 path];
    v18 = [v16 fileExistsAtPath:v17];

    if (v18)
    {
      v19 = _LSDefaultLog();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v34 = v15;
        _os_log_impl(&dword_18162D000, v19, OS_LOG_TYPE_DEFAULT, "Identifiers file does not exist, attempting to read file from old location in %@", buf, 0xCu);
      }

      v20 = [MEMORY[0x1E695DEF0] dataWithContentsOfURL:v15];
      v5 = v20;
      if (!v20)
      {
        v21 = _LSDefaultLog();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v34 = v15;
          _os_log_impl(&dword_18162D000, v21, OS_LOG_TYPE_DEFAULT, "Invalid data found at %@", buf, 0xCu);
        }
      }

      v22 = [MEMORY[0x1E696AC08] defaultManager];
      [v22 removeItemAtURL:v15 error:0];

      if (!v20)
      {
        goto LABEL_21;
      }

      goto LABEL_5;
    }
  }

LABEL_21:
  v23 = self->_identifiers;
  if (!v23)
  {
    v24 = _LSDefaultLog();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_18162D000, v24, OS_LOG_TYPE_DEFAULT, "Creating identifiers table for the first time.", buf, 2u);
    }

    v25 = [MEMORY[0x1E695DF90] dictionary];
    v32 = v25;
    v26 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v32 forKeys:&v31 count:1];
    v27 = [v26 copy];
    v28 = self->_identifiers;
    self->_identifiers = v27;

    [(_LSDeviceIdentifierCache *)self save];
    v23 = self->_identifiers;
  }

  v3 = v23;
LABEL_26:

LABEL_27:
  v29 = *MEMORY[0x1E69E9840];

  return v3;
}

- (void)generatePerUserEntropyIfNeededNotDispatched
{
  v24[3] = *MEMORY[0x1E69E9840];
  if (self->_perUserEntropy || ![(_LSDeviceIdentifierCache *)self deviceUnlockedSinceBoot])
  {
LABEL_21:
    v21 = *MEMORY[0x1E69E9840];
    return;
  }

  if ([__LSDefaultsGetSharedInstance() isInEducationMode])
  {
    v3 = _LSPerUserEntropyURL();
    if (v3)
    {
      v4 = [MEMORY[0x1E695DEF0] dataWithContentsOfURL:v3];
      if (v4)
      {
        v5 = MEMORY[0x1E696ACD0];
        v6 = MEMORY[0x1E695DFD8];
        v7 = objc_opt_class();
        v8 = objc_opt_class();
        v9 = [v6 setWithObjects:{v7, v8, objc_opt_class(), 0}];
        v10 = [v5 unarchivedObjectOfClasses:v9 fromData:v4 error:0];
        perUserEntropy = self->_perUserEntropy;
        self->_perUserEntropy = v10;
      }

      if (!self->_perUserEntropy)
      {
        v12 = [(_LSDeviceIdentifierCache *)self generateSomePerUserEntropyNotDispatched];
        v13 = [(_LSDeviceIdentifierCache *)self generateSomePerUserEntropyNotDispatched];
        v14 = [(_LSDeviceIdentifierCache *)self generateSomePerUserEntropyNotDispatched];
        v15 = v14;
        if (v12 && v14)
        {
          v23[0] = &unk_1EEF8EF60;
          v23[1] = &unk_1EEF8EF78;
          v24[0] = v12;
          v24[1] = v14;
          v23[2] = &unk_1EEF8EF90;
          v24[2] = v13;
          v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v24 forKeys:v23 count:3];
          v17 = self->_perUserEntropy;
          self->_perUserEntropy = v16;

          [(_LSDeviceIdentifierCache *)self save];
        }

        else
        {
          v20 = _LSDefaultLog();
          if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_18162D000, v20, OS_LOG_TYPE_DEFAULT, "Failed to get per-user entropy for device identifiers. Will only have per-device identifiers.", buf, 2u);
          }
        }
      }
    }

    else
    {
      v4 = _LSDefaultLog();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_18162D000, v4, OS_LOG_TYPE_DEFAULT, "Failed to get per-user entropy URL for device identifiers. Will only have per-device identifiers.", buf, 2u);
      }
    }

    goto LABEL_21;
  }

  v18 = self->_perUserEntropy;
  self->_perUserEntropy = MEMORY[0x1E695E0F8];
  v19 = *MEMORY[0x1E69E9840];
}

- (_LSDeviceIdentifierCache)initWithPersona:(id)a3
{
  v5 = a3;
  v20.receiver = self;
  v20.super_class = _LSDeviceIdentifierCache;
  v6 = [(_LSDeviceIdentifierCache *)&v20 init];
  v7 = v6;
  _LSAssertRunningInServer("[_LSDeviceIdentifierCache initWithPersona:]");
  if (v6)
  {
    objc_storeStrong(&v6->_personaUniqueString, a3);
    identifiers = v6->_identifiers;
    v6->_identifiers = 0;

    advertiserIdentifier = v6->_advertiserIdentifier;
    v6->_advertiserIdentifier = 0;

    v10 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v11 = dispatch_queue_create("com.apple.launchservices.deviceidentifiers", v10);
    queue = v6->_queue;
    v6->_queue = v11;

    if (v5 && [v5 length])
    {
      v13 = [__LSDefaultsGetSharedInstance() identifiersFileURL];
      v14 = [v13 URLByDeletingPathExtension];
      v15 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.plist", v5];
      v16 = [v14 URLByAppendingPathExtension:v15];
      identifiersFileURL = v7->_identifiersFileURL;
      v7->_identifiersFileURL = v16;
    }

    else
    {
      v18 = [__LSDefaultsGetSharedInstance() identifiersFileURL];
      v13 = v6->_identifiersFileURL;
      v6->_identifiersFileURL = v18;
    }
  }

  return v7;
}

- (void)getIdentifierOfType:(int64_t)a3 vendorName:(id)a4 bundleIdentifier:(id)a5 completionHandler:(id)a6
{
  v10 = a4;
  v11 = a5;
  v12 = a6;
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __94___LSDeviceIdentifierCache_getIdentifierOfType_vendorName_bundleIdentifier_completionHandler___block_invoke;
  block[3] = &unk_1E6A1BD10;
  v18 = v10;
  v19 = v11;
  v21 = v12;
  v22 = a3;
  v20 = self;
  v14 = v12;
  v15 = v11;
  v16 = v10;
  dispatch_async(queue, block);
}

- (void)clearIdentifiersForUninstallationWithVendorName:(id)a3 bundleIdentifier:(id)a4
{
  v6 = a3;
  v7 = a4;
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __93___LSDeviceIdentifierCache_clearIdentifiersForUninstallationWithVendorName_bundleIdentifier___block_invoke;
  block[3] = &unk_1E6A1B140;
  v12 = v6;
  v13 = v7;
  v14 = self;
  v9 = v7;
  v10 = v6;
  dispatch_async(queue, block);
}

- (void)clearAllIdentifiersOfType:(int64_t)a3
{
  queue = self->_queue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __54___LSDeviceIdentifierCache_clearAllIdentifiersOfType___block_invoke;
  v4[3] = &unk_1E6A18D78;
  v4[4] = self;
  v4[5] = a3;
  dispatch_async(queue, v4);
}

- (void)save
{
  queue = self->_queue;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __32___LSDeviceIdentifierCache_save__block_invoke;
  v3[3] = &unk_1E6A1A830;
  v3[4] = self;
  _LSDispatchCoalescedAfterDelay(&self->_saveFlag, queue, v3, 3.0);
}

- (id)generateSomePerUserEntropyNotDispatched
{
  v6 = *MEMORY[0x1E69E9840];
  if (SecRandomCopyBytes(*MEMORY[0x1E697B308], 0x10uLL, bytes))
  {
    v2 = 0;
  }

  else
  {
    v2 = [MEMORY[0x1E695DEF0] dataWithBytes:bytes length:16];
  }

  v3 = *MEMORY[0x1E69E9840];

  return v2;
}

- (id)applyPerUserEntropyNotDispatched:(id)a3 type:(int64_t)a4
{
  v22[2] = *MEMORY[0x1E69E9840];
  v6 = a3;
  [(_LSDeviceIdentifierCache *)self generatePerUserEntropyIfNeededNotDispatched];
  if (v6)
  {
    perUserEntropy = self->_perUserEntropy;
    v8 = v6;
    if (perUserEntropy)
    {
      v9 = [MEMORY[0x1E696AD98] numberWithInteger:a4];
      v10 = [(NSDictionary *)perUserEntropy objectForKeyedSubscript:v9];
      v11 = [v10 length];

      v8 = v6;
      if (v11)
      {
        v22[0] = 0;
        v22[1] = 0;
        [v6 getUUIDBytes:v22];
        v12 = MEMORY[0x1E695DF88];
        v13 = self->_perUserEntropy;
        v14 = [MEMORY[0x1E696AD98] numberWithInteger:a4];
        v15 = [(NSDictionary *)v13 objectForKeyedSubscript:v14];
        v16 = [v12 dataWithCapacity:{objc_msgSend(v15, "length") + 16}];

        v8 = v6;
        if (v16)
        {
          [v16 appendBytes:v22 length:16];
          v17 = self->_perUserEntropy;
          v18 = [MEMORY[0x1E696AD98] numberWithInteger:a4];
          v19 = [(NSDictionary *)v17 objectForKeyedSubscript:v18];
          [v16 appendData:v19];

          v8 = [MEMORY[0x1E696AFB0] _LS_UUIDWithData:v16 digestType:1];
        }
      }
    }
  }

  else
  {
    v8 = 0;
  }

  v20 = *MEMORY[0x1E69E9840];

  return v8;
}

- (id)extractUUIDForKey:(id)a3
{
  v4 = a3;
  v5 = [(NSDictionary *)self->_identifiers objectForKeyedSubscript:v4];
  if (v5)
  {
    v6 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:v5];
    [(NSDictionary *)self->_identifiers removeObjectForKey:v4];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)identifiersOfTypeNotDispatched:(int64_t)a3
{
  v11 = *MEMORY[0x1E69E9840];
  v4 = [(_LSDeviceIdentifierCache *)self allIdentifiersNotDispatched];
  v5 = v4;
  if (v4 && (a3 - 1) >= 2)
  {
    if (!a3)
    {
      v6 = [v4 objectForKeyedSubscript:@"LSVendors"];
      goto LABEL_9;
    }

    v7 = _LSDefaultLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v10[0] = 67109120;
      v10[1] = a3;
      _os_log_impl(&dword_18162D000, v7, OS_LOG_TYPE_DEFAULT, "Failed to figure out string representation of identifier type %i", v10, 8u);
    }
  }

  v6 = 0;
LABEL_9:

  v8 = *MEMORY[0x1E69E9840];

  return v6;
}

- (id)deviceIdentifierVendorSeed
{
  v12 = *MEMORY[0x1E69E9840];
  vendorIdentifierSeed = self->_vendorIdentifierSeed;
  if (!vendorIdentifierSeed)
  {
    v4 = [MEMORY[0x1E696AFB0] UUID];
    v5 = self->_vendorIdentifierSeed;
    self->_vendorIdentifierSeed = v4;

    v6 = _LSDefaultLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = self->_vendorIdentifierSeed;
      v10 = 138412290;
      v11 = v7;
      _os_log_impl(&dword_18162D000, v6, OS_LOG_TYPE_INFO, "Generated vendor seed %@", &v10, 0xCu);
    }

    [(_LSDeviceIdentifierCache *)self save];
    vendorIdentifierSeed = self->_vendorIdentifierSeed;
  }

  v8 = *MEMORY[0x1E69E9840];

  return vendorIdentifierSeed;
}

@end