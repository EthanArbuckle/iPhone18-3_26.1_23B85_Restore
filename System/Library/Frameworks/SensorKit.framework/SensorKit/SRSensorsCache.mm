@interface SRSensorsCache
+ (uint64_t)defaultCache;
+ (void)initialize;
+ (void)setDefaultCache:(id)cache;
- (SRSensorDescription)descriptionForSensor:(uint64_t)sensor;
- (SRSensorsCache)init;
- (SRSensorsCache)initWithDirectories:(id)directories;
- (void)allSensorDescriptions;
- (void)dealloc;
@end

@implementation SRSensorsCache

- (SRSensorDescription)descriptionForSensor:(uint64_t)sensor
{
  v39 = *MEMORY[0x1E69E9840];
  if (!sensor)
  {
    v6 = 0;
LABEL_29:
    v22 = *MEMORY[0x1E69E9840];
    return v6;
  }

  sr_sensorByDeletingDeletionRecord = [a2 sr_sensorByDeletingDeletionRecord];
  v5 = [sr_sensorByDeletingDeletionRecord isEqualToString:a2];
  v6 = [*(sensor + 8) objectForKey:sr_sensorByDeletingDeletionRecord];
  if (!v6)
  {
    v27 = v5;
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v7 = *(sensor + 16);
    v8 = [v7 countByEnumeratingWithState:&v29 objects:v34 count:16];
    if (v8)
    {
      v10 = v8;
      v11 = *v30;
      v28 = *MEMORY[0x1E696A250];
      *&v9 = 138543362;
      v26 = v9;
LABEL_5:
      v12 = 0;
      while (1)
      {
        if (*v30 != v11)
        {
          objc_enumerationMutation(v7);
        }

        v13 = *(*(&v29 + 1) + 8 * v12);
        v14 = [sr_sensorByDeletingDeletionRecord stringByAppendingPathExtension:{@"plist", v26}];
        if (!v14)
        {
          break;
        }

        v15 = [MEMORY[0x1E695DFF8] fileURLWithPath:v14 isDirectory:0 relativeToURL:v13];
        v33 = 0;
        v16 = [MEMORY[0x1E695DF20] dictionaryWithContentsOfURL:v15 error:&v33];
        if (v16)
        {
          v6 = [[SRSensorDescription alloc] initWithDictionary:v16];
          name = [(SRSensorDescription *)v6 name];
          [*(sensor + 8) setObject:v6 forKey:name];
          if ([(SRSensorDescription *)v6 legacyName])
          {
            [*(sensor + 8) setObject:v6 forKey:{-[SRSensorDescription legacyName](v6, "legacyName")}];
          }

          v18 = SRLogSensorsCache;
          if (os_log_type_enabled(SRLogSensorsCache, OS_LOG_TYPE_INFO))
          {
            *buf = 138543618;
            v36 = name;
            v37 = 2114;
            v38 = v6;
            _os_log_impl(&dword_1C914D000, v18, OS_LOG_TYPE_INFO, "Cached description for %{public}@, %{public}@", buf, 0x16u);
          }

          if (v6)
          {
            goto LABEL_27;
          }
        }

        else if ([-[SRSensorDescription domain](v33 "domain")] && -[SRSensorDescription code](v33, "code") == 260)
        {
          v19 = SRLogSensorsCache;
          if (os_log_type_enabled(SRLogSensorsCache, OS_LOG_TYPE_INFO))
          {
            *buf = v26;
            v36 = v15;
            _os_log_impl(&dword_1C914D000, v19, OS_LOG_TYPE_INFO, "%{public}@ not found", buf, 0xCu);
          }
        }

        else
        {
          v20 = SRLogSensorsCache;
          if (os_log_type_enabled(SRLogSensorsCache, OS_LOG_TYPE_ERROR))
          {
            *buf = 138543618;
            v36 = v15;
            v37 = 2114;
            v38 = v33;
            _os_log_error_impl(&dword_1C914D000, v20, OS_LOG_TYPE_ERROR, "Failed to parse %{public}@ because %{public}@", buf, 0x16u);
          }
        }

        if (v10 == ++v12)
        {
          v10 = [v7 countByEnumeratingWithState:&v29 objects:v34 count:16];
          if (v10)
          {
            goto LABEL_5;
          }

          goto LABEL_24;
        }
      }
    }

    else
    {
LABEL_24:
      v21 = SRLogSensorsCache;
      if (os_log_type_enabled(SRLogSensorsCache, OS_LOG_TYPE_ERROR))
      {
        v25 = *(sensor + 16);
        *buf = 138543618;
        v36 = sr_sensorByDeletingDeletionRecord;
        v37 = 2114;
        v38 = v25;
        _os_log_error_impl(&dword_1C914D000, v21, OS_LOG_TYPE_ERROR, "Failed to find description for %{public}@ in %{public}@", buf, 0x16u);
      }
    }

    v6 = 0;
LABEL_27:
    v5 = v27;
  }

  if ((v6 == 0) | v5 & 1)
  {
    goto LABEL_29;
  }

  v24 = *MEMORY[0x1E69E9840];

  return [SRSensorDescription sensorDescriptionForDeletionRecordFromDescription:v6];
}

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    SRLogSensorsCache = os_log_create("com.apple.SensorKit", "SensorsCache");
  }
}

+ (uint64_t)defaultCache
{
  objc_opt_self();
  result = _MergedGlobals_1;
  if (!_MergedGlobals_1)
  {
    objc_opt_self();
    if (qword_1EE02AAB0 != -1)
    {
      dispatch_once(&qword_1EE02AAB0, &__block_literal_global_0);
    }

    return qword_1EE02AAA8;
  }

  return result;
}

+ (void)setDefaultCache:(id)cache
{
  if (_MergedGlobals_1 != cache)
  {

    _MergedGlobals_1 = cache;
  }
}

SRSensorsCache *__29__SRSensorsCache_sharedCache__block_invoke()
{
  result = objc_alloc_init(SRSensorsCache);
  qword_1EE02AAA8 = result;
  return result;
}

- (SRSensorsCache)init
{
  v22 = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E695DFF8];
  v4 = NSClassFromString(&cfstr_Srsensorreader.isa);
  if (!v4 || (v5 = [objc_msgSend(MEMORY[0x1E696AAE8] bundleForClass:{v4), "bundleURL"}]) == 0)
  {
    defaultManager = [objc_msgSend(MEMORY[0x1E696AC08] defaultManager];
    if (!defaultManager)
    {
      v7 = SRLogSensorsCache;
      if (os_log_type_enabled(SRLogSensorsCache, OS_LOG_TYPE_FAULT))
      {
        *buf = 138543362;
        v21 = v17;
        _os_log_fault_impl(&dword_1C914D000, v7, OS_LOG_TYPE_FAULT, "Failed to locate the /System/Library directory because %{public}@", buf, 0xCu);
      }

      defaultManager = [MEMORY[0x1E695DFF8] fileURLWithPath:@"/System/Library"];
    }

    v5 = [MEMORY[0x1E695DFF8] fileURLWithPath:objc_msgSend(MEMORY[0x1E696AEC0] isDirectory:"pathWithComponents:" relativeToURL:{&unk_1F48CA3D0), 1, defaultManager}];
  }

  v8 = [v3 fileURLWithPath:@"SensorDescriptions" isDirectory:1 relativeToURL:v5];
  v9 = [MEMORY[0x1E695DFF8] fileURLWithPath:@"/var/mobile/Library" isDirectory:1];
  v10 = [MEMORY[0x1E695DFF8] fileURLWithPath:@"SensorKit" isDirectory:1 relativeToURL:v9];
  if (v10)
  {
    v11 = [MEMORY[0x1E695DFF8] fileURLWithPath:@"SensorDescriptions" isDirectory:1 relativeToURL:v10];
    v19[0] = v8;
    v19[1] = v11;
    v12 = MEMORY[0x1E695DEC8];
    v13 = v19;
    v14 = 2;
  }

  else
  {
    v18 = v8;
    v12 = MEMORY[0x1E695DEC8];
    v13 = &v18;
    v14 = 1;
  }

  result = -[SRSensorsCache initWithDirectories:](self, "initWithDirectories:", [v12 arrayWithObjects:v13 count:v14]);
  v16 = *MEMORY[0x1E69E9840];
  return result;
}

- (SRSensorsCache)initWithDirectories:(id)directories
{
  v6.receiver = self;
  v6.super_class = SRSensorsCache;
  v4 = [(SRSensorsCache *)&v6 init];
  if (v4)
  {
    v4->_sensorsCache = objc_alloc_init(MEMORY[0x1E695DEE0]);
    v4->_sensorDescriptionsDirs = directories;
  }

  return v4;
}

- (void)dealloc
{
  self->_sensorDescriptionsDirs = 0;

  self->_sensorsCache = 0;
  v3.receiver = self;
  v3.super_class = SRSensorsCache;
  [(SRSensorsCache *)&v3 dealloc];
}

- (void)allSensorDescriptions
{
  if (result)
  {
    v1 = result;
    v2 = [SRSensorDescriptionEnumerator alloc];
    if (v2)
    {
      v4.receiver = v2;
      v4.super_class = SRSensorDescriptionEnumerator;
      v3 = objc_msgSendSuper2(&v4, sel_init);
      if (v3)
      {
        v3[1] = v1;
      }
    }

    else
    {
      v3 = 0;
    }

    return v3;
  }

  return result;
}

@end