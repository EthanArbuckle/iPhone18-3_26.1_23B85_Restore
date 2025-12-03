@interface HMLocalization
+ (id)sharedManager;
- (HMLocalization)init;
- (NSArray)stringTable;
- (id)getLocalizedOrCustomString:(id)string;
- (id)getLocalizedString:(id)string;
- (void)_updateLocalizedStrings;
- (void)handleLocaleDidChange:(id)change;
@end

@implementation HMLocalization

- (id)getLocalizedOrCustomString:(id)string
{
  stringCopy = string;
  v5 = [(HMLocalization *)self getLocalizedString:stringCopy];
  v6 = v5;
  if (!v5 || [v5 isEqualToString:stringCopy])
  {
    v7 = [(HMLocalization *)self getLocalizedString:@"CUSTOM"];

    v6 = v7;
  }

  return v6;
}

- (id)getLocalizedString:(id)string
{
  v18 = *MEMORY[0x1E69E9840];
  stringCopy = string;
  if (stringCopy)
  {
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    stringTable = [(HMLocalization *)self stringTable];
    v6 = [stringTable countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v14;
      while (2)
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v14 != v8)
          {
            objc_enumerationMutation(stringTable);
          }

          v10 = [(NSBundle *)self->_bundle localizedStringForKey:stringCopy value:&stru_1F0E92498 table:*(*(&v13 + 1) + 8 * i)];
          if (![stringCopy isEqualToString:v10])
          {

            goto LABEL_13;
          }
        }

        v7 = [stringTable countByEnumeratingWithState:&v13 objects:v17 count:16];
        if (v7)
        {
          continue;
        }

        break;
      }
    }

    v10 = stringCopy;
  }

  else
  {
    v10 = 0;
  }

LABEL_13:

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

- (void)_updateLocalizedStrings
{
  selfCopy = self;
  v39 = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E696AAE8];
  if (self)
  {
    self = objc_getProperty(self, a2, 24, 1);
  }

  localizations = [(HMLocalization *)self localizations];
  preferredLanguages = [MEMORY[0x1E695DF58] preferredLanguages];
  v6 = [v3 preferredLocalizationsFromArray:localizations forPreferences:preferredLanguages];

  v7 = [MEMORY[0x1E695DF70] arrayWithArray:&unk_1F0EFE0C8];
  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  obj = v6;
  v9 = [obj countByEnumeratingWithState:&v33 objects:v38 count:16];
  if (v9)
  {
    v10 = *v34;
    while (2)
    {
      v11 = 0;
      do
      {
        if (*v34 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v33 + 1) + 8 * v11);
        if (selfCopy)
        {
          Property = objc_getProperty(selfCopy, v8, 24, 1);
        }

        else
        {
          Property = 0;
        }

        v15 = [Property pathsForResourcesOfType:@"strings" inDirectory:0 forLocalization:v12];
        if (selfCopy)
        {
          v16 = objc_getProperty(selfCopy, v14, 24, 1);
        }

        else
        {
          v16 = 0;
        }

        v17 = [v16 pathsForResourcesOfType:@"loctable" inDirectory:0 forLocalization:v12];
        if ([v15 count] || objc_msgSend(v17, "count"))
        {
          v19 = [v15 arrayByAddingObjectsFromArray:v17];
          v31 = 0u;
          v32 = 0u;
          v29 = 0u;
          v30 = 0u;
          v20 = [v19 countByEnumeratingWithState:&v29 objects:v37 count:16];
          if (v20)
          {
            v21 = *v30;
            do
            {
              for (i = 0; i != v20; ++i)
              {
                if (*v30 != v21)
                {
                  objc_enumerationMutation(v19);
                }

                lastPathComponent = [*(*(&v29 + 1) + 8 * i) lastPathComponent];
                stringByDeletingPathExtension = [lastPathComponent stringByDeletingPathExtension];

                if (([v7 containsObject:stringByDeletingPathExtension] & 1) == 0)
                {
                  [v7 addObject:stringByDeletingPathExtension];
                }
              }

              v20 = [v19 countByEnumeratingWithState:&v29 objects:v37 count:16];
            }

            while (v20);
          }

          goto LABEL_30;
        }

        ++v11;
      }

      while (v9 != v11);
      v18 = [obj countByEnumeratingWithState:&v33 objects:v38 count:16];
      v9 = v18;
      if (v18)
      {
        continue;
      }

      break;
    }
  }

LABEL_30:

  os_unfair_lock_lock_with_options();
  v25 = [v7 copy];
  stringTable = selfCopy->_stringTable;
  selfCopy->_stringTable = v25;

  os_unfair_lock_unlock(&selfCopy->_lock);
  v27 = *MEMORY[0x1E69E9840];
}

- (void)handleLocaleDidChange:(id)change
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __40__HMLocalization_handleLocaleDidChange___block_invoke;
  block[3] = &unk_1E754E2A8;
  block[4] = self;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

- (NSArray)stringTable
{
  os_unfair_lock_lock_with_options();
  v3 = self->_stringTable;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (HMLocalization)init
{
  v7.receiver = self;
  v7.super_class = HMLocalization;
  v2 = [(HMLocalization *)&v7 init];
  if (v2)
  {
    v3 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HomeKit"];
    bundle = v2->_bundle;
    v2->_bundle = v3;

    [(HMLocalization *)v2 _updateLocalizedStrings];
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:v2 selector:sel_handleLocaleDidChange_ name:*MEMORY[0x1E695D8F0] object:0];
  }

  return v2;
}

+ (id)sharedManager
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __31__HMLocalization_sharedManager__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (sharedManager_onceToken_62275 != -1)
  {
    dispatch_once(&sharedManager_onceToken_62275, block);
  }

  v2 = sharedManager_sharedObj;

  return v2;
}

uint64_t __31__HMLocalization_sharedManager__block_invoke(uint64_t a1)
{
  v1 = objc_alloc_init(*(a1 + 32));
  v2 = sharedManager_sharedObj;
  sharedManager_sharedObj = v1;

  return MEMORY[0x1EEE66BB8](v1, v2);
}

@end