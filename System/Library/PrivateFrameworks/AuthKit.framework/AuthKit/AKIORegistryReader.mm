@interface AKIORegistryReader
+ (id)sharedInstance;
- (id)copyDeviceTreeInt:(id)int key:(id)key defaultValue:(int)value;
- (id)copyDeviceTreeProperty:(id)property key:(id)key;
- (id)sfrManifest;
@end

@implementation AKIORegistryReader

+ (id)sharedInstance
{
  v5 = &sharedInstance_onceToken_3;
  location = 0;
  objc_storeStrong(&location, &__block_literal_global_58);
  if (*v5 != -1)
  {
    dispatch_once(v5, location);
  }

  objc_storeStrong(&location, 0);
  v2 = sharedInstance_reader;

  return v2;
}

uint64_t __36__AKIORegistryReader_sharedInstance__block_invoke()
{
  v0 = objc_alloc_init(AKIORegistryReader);
  v1 = sharedInstance_reader;
  sharedInstance_reader = v0;
  return MEMORY[0x1E69E5920](v1);
}

- (id)copyDeviceTreeProperty:(id)property key:(id)key
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, property);
  v12 = 0;
  objc_storeStrong(&v12, key);
  if (location[0] && v12)
  {
    mainPort = *MEMORY[0x1E696CD60];
    v6 = location[0];
    v4 = location[0];
    v10 = IORegistryEntryFromPath(mainPort, [v6 fileSystemRepresentation]);
    if (v10)
    {
      CFProperty = IORegistryEntryCreateCFProperty(v10, v12, 0, 0);
      IOObjectRelease(v10);
      v14 = MEMORY[0x1E69E5928](CFProperty);
      v11 = 1;
      objc_storeStrong(&CFProperty, 0);
    }

    else
    {
      v14 = 0;
      v11 = 1;
    }
  }

  else
  {
    v14 = 0;
    v11 = 1;
  }

  objc_storeStrong(&v12, 0);
  objc_storeStrong(location, 0);
  return v14;
}

- (id)copyDeviceTreeInt:(id)int key:(id)key defaultValue:(int)value
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, int);
  v15 = 0;
  objc_storeStrong(&v15, key);
  valueCopy = value;
  v13 = [MEMORY[0x1E696AD98] numberWithInt:value];
  valueCopy2 = value;
  if (location[0] && v15)
  {
    v10 = [(AKIORegistryReader *)selfCopy copyDeviceTreeProperty:location[0] key:v15];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        goto LABEL_6;
      }
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      if ([v10 length] != 4)
      {
LABEL_6:
        v18 = MEMORY[0x1E69E5928](v13);
        v11 = 1;
LABEL_12:
        objc_storeStrong(&v10, 0);
        goto LABEL_13;
      }

      [v10 getBytes:&valueCopy2 length:4];
      v5 = [MEMORY[0x1E696AD98] numberWithInt:valueCopy2];
      v6 = v13;
      v13 = v5;
      MEMORY[0x1E69E5920](v6);
    }

    else
    {
      objc_storeStrong(&v13, v10);
    }

    v18 = MEMORY[0x1E69E5928](v13);
    v11 = 1;
    goto LABEL_12;
  }

  v18 = MEMORY[0x1E69E5928](v13);
  v11 = 1;
LABEL_13:
  objc_storeStrong(&v13, 0);
  objc_storeStrong(&v15, 0);
  objc_storeStrong(location, 0);
  return v18;
}

- (id)sfrManifest
{
  v9[2] = self;
  v9[1] = a2;
  v4 = MEMORY[0x1E69E9820];
  v5 = -1073741824;
  v6 = 0;
  v7 = __33__AKIORegistryReader_sfrManifest__block_invoke;
  v8 = &unk_1E73D34C0;
  v9[0] = MEMORY[0x1E69E5928](self);
  v11 = &sfrManifest_onceToken;
  location = 0;
  objc_storeStrong(&location, &v4);
  if (*v11 != -1)
  {
    dispatch_once(v11, location);
  }

  objc_storeStrong(&location, 0);
  v3 = MEMORY[0x1E69E5928](sfrManifest_sfrManifest);
  objc_storeStrong(v9, 0);

  return v3;
}

void __33__AKIORegistryReader_sfrManifest__block_invoke(void *a1)
{
  v29[2] = a1;
  v29[1] = a1;
  v29[0] = 0;
  v16 = a1[4];
  v18 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"IODeviceTree"];
  v17 = [v18 stringByAppendingString:@":/chosen/iBoot"];
  v29[0] = [v16 copyDeviceTreeInt:? key:? defaultValue:?];
  MEMORY[0x1E69E5920](0);
  MEMORY[0x1E69E5920](v17);
  MEMORY[0x1E69E5920](v18);
  if (v29[0] && [v29[0] unsignedIntValue])
  {
    v10 = a1[4];
    v12 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"IODeviceTree"];
    v11 = [v12 stringByAppendingString:@":/chosen/iBoot"];
    v1 = [v10 copyDeviceTreeProperty:? key:?];
    v2 = sfrManifest_sfrManifest;
    sfrManifest_sfrManifest = v1;
    MEMORY[0x1E69E5920](v2);
    MEMORY[0x1E69E5920](v11);
    MEMORY[0x1E69E5920](v12);
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && [sfrManifest_sfrManifest length])
    {
      v7 = sfrManifest_sfrManifest;
      v31 = 0;
      v30 = [v29[0] unsignedIntValue];
      v32 = 0;
      v33 = v30;
      v21[1] = 0;
      v21[2] = v30;
      v3 = [v7 subdataWithRange:{0, v30}];
      v4 = sfrManifest_sfrManifest;
      sfrManifest_sfrManifest = v3;
      MEMORY[0x1E69E5920](v4);
      if (sfrManifest_sfrManifest)
      {
        v25 = 0;
      }

      else
      {
        v21[0] = _AKLogSystem();
        v20 = 16;
        if (os_log_type_enabled(v21[0], OS_LOG_TYPE_ERROR))
        {
          v5 = v21[0];
          v6 = v20;
          __os_log_helper_16_0_0(v19);
          _os_log_error_impl(&dword_193225000, v5, v6, "Retrieved SFRManifest is nil", v19, 2u);
        }

        objc_storeStrong(v21, 0);
        v25 = 1;
      }
    }

    else
    {
      v24 = _AKLogSystem();
      v23 = 16;
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        v8 = v24;
        v9 = v23;
        __os_log_helper_16_0_0(v22);
        _os_log_error_impl(&dword_193225000, v8, v9, "Either SFRManifest is not NSData type or its length is 0", v22, 2u);
      }

      objc_storeStrong(&v24, 0);
      v25 = 1;
    }
  }

  else
  {
    location = _AKLogSystem();
    v27 = 16;
    if (os_log_type_enabled(location, OS_LOG_TYPE_ERROR))
    {
      log = location;
      type = v27;
      __os_log_helper_16_0_0(v26);
      _os_log_error_impl(&dword_193225000, log, type, "SFRManifest length is 0", v26, 2u);
    }

    objc_storeStrong(&location, 0);
    v25 = 1;
  }

  objc_storeStrong(v29, 0);
}

@end