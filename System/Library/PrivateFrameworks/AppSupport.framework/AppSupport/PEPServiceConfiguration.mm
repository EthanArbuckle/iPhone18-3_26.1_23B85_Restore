@interface PEPServiceConfiguration
+ (id)sharedInstance;
- (BOOL)registerNetworkDefaultsForAppID:(id)d;
- (BOOL)registerNetworkDefaultsForAppIDs:(id)ds forceUpdate:(BOOL)update;
- (PEPServiceConfiguration)init;
- (void)_postNotification;
- (void)_updateDefaults:(id)defaults;
- (void)dealloc;
@end

@implementation PEPServiceConfiguration

+ (id)sharedInstance
{
  result = _sharedInstance;
  if (!_sharedInstance)
  {
    result = objc_alloc_init(PEPServiceConfiguration);
    _sharedInstance = result;
  }

  return result;
}

- (PEPServiceConfiguration)init
{
  v4.receiver = self;
  v4.super_class = PEPServiceConfiguration;
  v2 = [(PEPServiceConfiguration *)&v4 init];
  if (v2)
  {
    v2->_cacheFilePath = [@"~/Library/Caches/com.apple.pep.configuration.plist" stringByExpandingTildeInPath];
  }

  return v2;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = PEPServiceConfiguration;
  [(PEPServiceConfiguration *)&v3 dealloc];
}

- (void)_postNotification
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  v4 = [MEMORY[0x1E696AD80] notificationWithName:@"PEPServiceConfigurationRegistrationComplete" object:self];

  [defaultCenter postNotification:v4];
}

- (void)_updateDefaults:(id)defaults
{
  v37 = *MEMORY[0x1E69E9840];
  v4 = objc_alloc_init(MEMORY[0x1E696AAC8]);
  [MEMORY[0x1E696AF00] setThreadPriority:0.0];
  if (self->_shouldDownloadNetworkConfigFile)
  {
    v5 = downloadDictionary();
    if (!v5)
    {
      goto LABEL_24;
    }

    v6 = v5;
    [v5 writeToFile:self->_cacheFilePath atomically:1];
    [objc_msgSend(MEMORY[0x1E695DF00] "date")];
    self->_cachedFileLastModifyDate = v7;
  }

  else
  {
    v6 = [objc_alloc(MEMORY[0x1E695DF20]) initWithContentsOfFile:self->_cacheFilePath];
    if (!v6)
    {
      goto LABEL_24;
    }
  }

  v19 = v4;
  selfCopy = self;
  value = [objc_alloc(MEMORY[0x1E696AD98]) initWithDouble:self->_cachedFileLastModifyDate];
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v25 = [defaults countByEnumeratingWithState:&v31 objects:v36 count:16];
  if (v25)
  {
    v23 = *v32;
    v8 = *MEMORY[0x1E695E8B8];
    v9 = *MEMORY[0x1E695E898];
    v22 = v6;
    do
    {
      v10 = 0;
      do
      {
        if (*v32 != v23)
        {
          objc_enumerationMutation(defaults);
        }

        v26 = v10;
        v11 = *(*(&v31 + 1) + 8 * v10);
        CFPreferencesSetValue(@"AppTimeInterval", value, v11, v8, v9);
        v12 = [v6 objectForKey:{-[__CFString lastPathComponent](v11, "lastPathComponent")}];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v29 = 0u;
          v30 = 0u;
          v27 = 0u;
          v28 = 0u;
          allKeys = [v12 allKeys];
          v14 = [allKeys countByEnumeratingWithState:&v27 objects:v35 count:16];
          if (v14)
          {
            v15 = v14;
            v16 = *v28;
            while (2)
            {
              for (i = 0; i != v15; ++i)
              {
                if (*v28 != v16)
                {
                  objc_enumerationMutation(allKeys);
                }

                if (([CFPreferencesCopyValue(*(*(&v27 + 1) + 8 * i) v11] & 1) == 0)
                {
                  CFPreferencesSetMultiple(v12, 0, v11, v8, v9);
                  CFPreferencesSynchronize(v11, v8, v9);
                  v6 = v22;
                  goto LABEL_21;
                }
              }

              v15 = [allKeys countByEnumeratingWithState:&v27 objects:v35 count:16];
              v6 = v22;
              if (v15)
              {
                continue;
              }

              break;
            }
          }
        }

LABEL_21:
        v10 = v26 + 1;
      }

      while (v26 + 1 != v25);
      v25 = [defaults countByEnumeratingWithState:&v31 objects:v36 count:16];
    }

    while (v25);
  }

  v4 = v19;
  self = selfCopy;
LABEL_24:
  -[PEPServiceConfiguration performSelector:onThread:withObject:waitUntilDone:](self, "performSelector:onThread:withObject:waitUntilDone:", sel__postNotification, [MEMORY[0x1E696AF00] mainThread], 0, 0);

  v18 = *MEMORY[0x1E69E9840];
}

- (BOOL)registerNetworkDefaultsForAppID:(id)d
{
  v4 = [MEMORY[0x1E695DEC8] arrayWithObject:d];

  return [(PEPServiceConfiguration *)self registerNetworkDefaultsForAppIDs:v4 forceUpdate:0];
}

- (BOOL)registerNetworkDefaultsForAppIDs:(id)ds forceUpdate:(BOOL)update
{
  updateCopy = update;
  v33 = *MEMORY[0x1E69E9840];
  v7 = [objc_msgSend(MEMORY[0x1E696AC08] "defaultManager")];
  [objc_msgSend(v7 objectForKey:{*MEMORY[0x1E696A350]), "timeIntervalSinceReferenceDate"}];
  self->_cachedFileLastModifyDate = v8;
  [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
  v10 = v9 - self->_cachedFileLastModifyDate;
  if (updateCopy)
  {
    v11 = 86400.0;
  }

  else
  {
    v11 = 432000.0;
  }

  self->_shouldDownloadNetworkConfigFile = v10 > v11;
  if (v10 <= v11)
  {
    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    v12 = [ds countByEnumeratingWithState:&v28 objects:v32 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v29;
      v15 = *MEMORY[0x1E695E8B8];
      v16 = *MEMORY[0x1E695E898];
      while (2)
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v29 != v14)
          {
            objc_enumerationMutation(ds);
          }

          v18 = CFPreferencesCopyValue(@"AppTimeInterval", *(*(&v28 + 1) + 8 * i), v15, v16);
          [v18 doubleValue];
          v20 = v19;
          [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
          if (v21 - v20 > 432000.0)
          {

LABEL_17:
            v23 = 1;
            goto LABEL_18;
          }

          cachedFileLastModifyDate = self->_cachedFileLastModifyDate;

          if (v20 < cachedFileLastModifyDate)
          {
            goto LABEL_17;
          }
        }

        v13 = [ds countByEnumeratingWithState:&v28 objects:v32 count:16];
        if (v13)
        {
          continue;
        }

        break;
      }
    }
  }

  v23 = 0;
  v24 = 0;
  if (self->_shouldDownloadNetworkConfigFile)
  {
LABEL_18:
    v25 = [objc_alloc(MEMORY[0x1E696AF00]) initWithTarget:self selector:sel__updateDefaults_ object:ds];
    [v25 start];

    v24 = v23 | self->_shouldDownloadNetworkConfigFile;
  }

  v26 = *MEMORY[0x1E69E9840];
  return v24 & 1;
}

@end