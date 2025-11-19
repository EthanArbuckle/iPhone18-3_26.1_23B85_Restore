@interface AXBuddyDataPackage
+ (id)dataBlobForBuddy;
+ (id)dataPackageForCurrentSettings;
+ (void)dataBlobForBuddy;
+ (void)restoreDataBlobForBuddy:(id)a3;
+ (void)setTestData:(id)a3 forModel:(id)a4 hasHomeButton:(BOOL)a5 largeTextUsesExtendedRange:(BOOL)a6;
- (AXBuddyDataPackage)initWithCoder:(id)a3;
- (void)applySavedSettings;
- (void)encodeWithCoder:(id)a3;
- (void)processDomainDictionary:(id)a3;
@end

@implementation AXBuddyDataPackage

- (AXBuddyDataPackage)initWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = AXBuddyDataPackage;
  v5 = [(AXBuddyDataPackage *)&v11 init];
  if (v5)
  {
    v6 = [v4 decodePropertyListForKey:@"accessibilityOptions"];
    [(AXBuddyDataPackage *)v5 setAccessibilityOptions:v6];

    v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"preferredContentSizeCategoryName"];
    [(AXBuddyDataPackage *)v5 setAxPreferredContentSizeCategoryName:v7];

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"axOSVersion"];
    [(AXBuddyDataPackage *)v5 setAxOSVersion:v8];

    v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"axModel"];
    [(AXBuddyDataPackage *)v5 setAxModel:v9];

    -[AXBuddyDataPackage setUsesExtendedSlider:](v5, "setUsesExtendedSlider:", [v4 decodeBoolForKey:@"usesExtendedSlider"]);
    -[AXBuddyDataPackage setHasHomeButton:](v5, "setHasHomeButton:", [v4 decodeBoolForKey:@"AXSHasHomeButton"]);
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v8 = a3;
  v4 = [(AXBuddyDataPackage *)self accessibilityOptions];
  [v8 encodeObject:v4 forKey:@"accessibilityOptions"];

  v5 = [(AXBuddyDataPackage *)self axPreferredContentSizeCategoryName];
  [v8 encodeObject:v5 forKey:@"preferredContentSizeCategoryName"];

  v6 = [(AXBuddyDataPackage *)self axOSVersion];
  [v8 encodeObject:v6 forKey:@"axOSVersion"];

  v7 = [(AXBuddyDataPackage *)self axModel];
  [v8 encodeObject:v7 forKey:@"axModel"];

  [v8 encodeBool:-[AXBuddyDataPackage usesExtendedSlider](self forKey:{"usesExtendedSlider"), @"usesExtendedSlider"}];
  [v8 encodeBool:-[AXBuddyDataPackage hasHomeButton](self forKey:{"hasHomeButton"), @"AXSHasHomeButton"}];
}

+ (id)dataPackageForCurrentSettings
{
  v43 = *MEMORY[0x1E69E9840];
  v32 = objc_alloc_init(a1);
  v34 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v2 = +[AXSettings sharedInstance];
  v3 = [v2 keysToIgnoreDuringBuddyTransfer];

  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v4 = objc_alloc(MEMORY[0x1E695DEC8]);
  obj = [v4 initWithObjects:{*MEMORY[0x1E69E4BB0], *MEMORY[0x1E69E4F30], *MEMORY[0x1E69E4C70], *MEMORY[0x1E69E4D78], *MEMORY[0x1E69E4F78], *MEMORY[0x1E69E4F60], *MEMORY[0x1E69E4FA8], *MEMORY[0x1E69E4E90], *MEMORY[0x1E69E4F20], *MEMORY[0x1E69E4F10], *MEMORY[0x1E69E4E18], 0}];
  v5 = [obj countByEnumeratingWithState:&v36 objects:v42 count:16];
  v33 = v3;
  if (v5)
  {
    v6 = v5;
    v7 = *v37;
    v8 = *MEMORY[0x1E695E8B8];
    v9 = *MEMORY[0x1E695E8B0];
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v37 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v36 + 1) + 8 * i);
        v12 = CFPreferencesCopyKeyList(v11, v8, v9);
        if (v12)
        {
          v13 = v12;
          v14 = CFPreferencesCopyMultiple(v12, v11, v8, v9);
          v15 = [(__CFDictionary *)v14 objectForKey:@"AXSIgnoreTrackpad"];

          if (v15)
          {
            v16 = AXLogCommon();
            if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
            {
              v17 = [(__CFDictionary *)v14 objectForKey:@"AXSIgnoreTrackpad"];
              *buf = 138412290;
              v41 = v17;
              _os_log_impl(&dword_18B15E000, v16, OS_LOG_TYPE_DEFAULT, "Transferring ignore trackpad setting: %@", buf, 0xCu);

              v3 = v33;
            }
          }

          [(__CFDictionary *)v14 removeObjectsForKeys:v3];
          if (v14)
          {
            [v34 setObject:v14 forKey:v11];
          }

          CFRelease(v13);
        }
      }

      v6 = [obj countByEnumeratingWithState:&v36 objects:v42 count:16];
    }

    while (v6);
  }

  [v32 setAccessibilityOptions:v34];
  v18 = _AXSCopyPreferredContentSizeCategoryName();
  [v32 setAxPreferredContentSizeCategoryName:v18];

  [v32 setUsesExtendedSlider:_AXSLargeTextUsesExtendedRange() != 0];
  v19 = [objc_opt_class() testData];

  if (v19)
  {
    v20 = AXLogSettings();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
    {
      v21 = [objc_opt_class() testData];
      *buf = 138412290;
      v41 = v21;
      _os_log_impl(&dword_18B15E000, v20, OS_LOG_TYPE_INFO, "Using test data mode settings: %@", buf, 0xCu);
    }

    v22 = [objc_opt_class() testData];
    v23 = [v22 objectForKey:@"AXSOSVersion"];
    [v32 setAxOSVersion:v23];

    v24 = [objc_opt_class() testData];
    v25 = [v24 objectForKey:@"AXSModel"];
    [v32 setAxModel:v25];

    v26 = [objc_opt_class() testData];
    v27 = [v26 objectForKey:@"AXSUsesExtendedRange"];
    [v32 setUsesExtendedSlider:{objc_msgSend(v27, "BOOLValue")}];
  }

  else
  {
    v28 = [a1 productVersionForBuddy];
    [v32 setAxOSVersion:v28];

    v29 = [a1 deviceClassForBuddy];
    [v32 setAxModel:v29];

    [v32 setHasHomeButton:AXDeviceHasHomeButton()];
  }

  return v32;
}

+ (void)setTestData:(id)a3 forModel:(id)a4 hasHomeButton:(BOOL)a5 largeTextUsesExtendedRange:(BOOL)a6
{
  v6 = a6;
  v7 = a5;
  v20[4] = *MEMORY[0x1E69E9840];
  v19[0] = @"AXSOSVersion";
  v19[1] = @"AXSModel";
  v20[0] = a3;
  v20[1] = a4;
  v19[2] = @"AXSHasHomeButton";
  v9 = MEMORY[0x1E696AD98];
  v10 = a4;
  v11 = a3;
  v12 = [v9 numberWithBool:v7];
  v20[2] = v12;
  v19[3] = @"AXSOSVersion";
  v13 = [MEMORY[0x1E696AD98] numberWithBool:v6];
  v20[3] = v13;
  v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v20 forKeys:v19 count:4];

  [objc_opt_class() setTestData:v14];
  v15 = AXLogSettings();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
  {
    v16 = [objc_opt_class() testData];
    v17 = 138412290;
    v18 = v16;
    _os_log_impl(&dword_18B15E000, v15, OS_LOG_TYPE_INFO, "Setting test data mode settings: %@", &v17, 0xCu);
  }
}

- (void)applySavedSettings
{
  v32 = *MEMORY[0x1E69E9840];
  v3 = AXLogSettings();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_18B15E000, v3, OS_LOG_TYPE_DEFAULT, "Applying saved settings", buf, 2u);
  }

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  obj = [(AXBuddyDataPackage *)self accessibilityOptions];
  v4 = [obj countByEnumeratingWithState:&v25 objects:v31 count:16];
  if (v4)
  {
    v5 = v4;
    v24 = *v26;
    v6 = *MEMORY[0x1E695E8B8];
    v7 = *MEMORY[0x1E695E8B0];
    v8 = *MEMORY[0x1E695E898];
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v26 != v24)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v25 + 1) + 8 * i);
        v11 = [(AXBuddyDataPackage *)self accessibilityOptions];
        v12 = [v11 objectForKeyedSubscript:v10];

        [(AXBuddyDataPackage *)self processDomainDictionary:v12];
        v13 = AXLogSettings();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v30 = v10;
          _os_log_impl(&dword_18B15E000, v13, OS_LOG_TYPE_DEFAULT, "Applying saved settings domain: %@", buf, 0xCu);
        }

        v14 = AXLogSettings();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v30 = v12;
          _os_log_impl(&dword_18B15E000, v14, OS_LOG_TYPE_DEFAULT, "Applying saved settings: %@", buf, 0xCu);
        }

        v15 = [(AXBuddyDataPackage *)self accessibilityOptions];
        v16 = [v15 objectForKeyedSubscript:v10];
        CFPreferencesSetMultiple(v16, 0, v10, v6, v7);

        CFPreferencesSynchronize(v10, v6, v8);
      }

      v5 = [obj countByEnumeratingWithState:&v25 objects:v31 count:16];
    }

    while (v5);
  }

  v17 = [(AXBuddyDataPackage *)self axPreferredContentSizeCategoryName];
  if (v17)
  {
    v18 = [(AXBuddyDataPackage *)self axPreferredContentSizeCategoryName];
    _AXSSetPreferredContentSizeCategoryName();
  }

  v19 = AXLogSettings();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    v20 = [(AXBuddyDataPackage *)self usesExtendedSlider];
    *buf = 67109120;
    LODWORD(v30) = v20;
    _os_log_impl(&dword_18B15E000, v19, OS_LOG_TYPE_DEFAULT, "Uses extended slider: %d", buf, 8u);
  }

  [(AXBuddyDataPackage *)self usesExtendedSlider];
  _AXSSetLargeTextUsesExtendedRange();
  v21 = AXLogSettings();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    v22 = _AXSLargeTextUsesExtendedRange();
    *buf = 67109120;
    LODWORD(v30) = v22;
    _os_log_impl(&dword_18B15E000, v21, OS_LOG_TYPE_DEFAULT, "Saved extended range: %d", buf, 8u);
  }
}

- (void)processDomainDictionary:(id)a3
{
  v27 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = +[AXBuddyDataPackage deviceClassForBuddy];
  v6 = +[AXBuddyDataPackage productVersionForBuddy];
  v7 = [MEMORY[0x1E696AD98] numberWithBool:AXDeviceHasHomeButton()];
  v8 = [objc_opt_class() testData];
  if (v8)
  {
    v9 = v8;
    v10 = _AXSInUnitTestMode();

    if (v10)
    {
      v11 = [objc_opt_class() testData];
      v12 = [v11 objectForKey:@"AXSOSVersion"];

      v13 = [objc_opt_class() testData];
      v14 = [v13 objectForKey:@"AXSModel"];

      v15 = [objc_opt_class() testData];
      v16 = [v15 objectForKey:@"AXSHasHomeButton"];

      v7 = v16;
      v6 = v12;
      v5 = v14;
    }
  }

  v17 = [(AXBuddyDataPackage *)self axModel];
  if (v17)
  {
    v18 = v17;
    v19 = [(AXBuddyDataPackage *)self axModel];
    v20 = [v5 isEqualToString:v19];

    if ((v20 & 1) == 0)
    {
      [v4 removeObjectForKey:*MEMORY[0x1E6988708]];
    }
  }

  v21 = MEMORY[0x1E69E4F40];
  v22 = [v4 objectForKey:*MEMORY[0x1E69E4F40]];
  if (!v22 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && (![v22 count] || objc_msgSend(v22, "count") == 1 && objc_msgSend(v22, "containsObject:", &unk_1EFE96BF8)))
  {
    v23 = AXLogSettings();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      v25 = 138412290;
      v26 = v22;
      _os_log_impl(&dword_18B15E000, v23, OS_LOG_TYPE_DEFAULT, "Removing TC options because its empty or only has buddy settings: %@", &v25, 0xCu);
    }

    [v4 removeObjectForKey:*v21];
  }

  if (([v7 BOOLValue] & 1) == 0 && -[AXBuddyDataPackage hasHomeButton](self, "hasHomeButton") || objc_msgSend(v7, "BOOLValue") && !-[AXBuddyDataPackage hasHomeButton](self, "hasHomeButton"))
  {
    v24 = AXLogSettings();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v25) = 0;
      _os_log_impl(&dword_18B15E000, v24, OS_LOG_TYPE_DEFAULT, "Removing Reduce motion preference from domain dict because home button changed", &v25, 2u);
    }

    [v4 removeObjectForKey:*MEMORY[0x1E69E4EC0]];
  }

  [v4 removeObjectForKey:*MEMORY[0x1E69E4F90]];
}

+ (id)dataBlobForBuddy
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = +[AXBuddyDataPackage dataPackageForCurrentSettings];
  v10 = 0;
  v3 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:v2 requiringSecureCoding:1 error:&v10];
  v4 = v10;
  v5 = AXLogSettings();
  v6 = v5;
  if (v4)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      +[(AXBuddyDataPackage *)v4];
    }

    v7 = 0;
  }

  else
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v8 = [v3 length];
      *buf = 134217984;
      v12 = v8;
      _os_log_impl(&dword_18B15E000, v6, OS_LOG_TYPE_INFO, "Archived data blob for buddy with size %lu", buf, 0xCu);
    }

    v7 = v3;
  }

  return v7;
}

+ (void)restoreDataBlobForBuddy:(id)a3
{
  v3 = MEMORY[0x1E696ACD0];
  v4 = a3;
  v10 = 0;
  v5 = [v3 unarchivedObjectOfClass:objc_opt_class() fromData:v4 error:&v10];

  v6 = v10;
  v7 = AXLogSettings();
  v8 = v7;
  if (v6)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [(AXBuddyDataPackage *)v6 restoreDataBlobForBuddy:v8];
    }
  }

  else
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *v9 = 0;
      _os_log_impl(&dword_18B15E000, v8, OS_LOG_TYPE_INFO, "Unarchived data blob for buddy", v9, 2u);
    }

    [v5 applySavedSettings];
  }
}

+ (void)dataBlobForBuddy
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_18B15E000, a2, OS_LOG_TYPE_ERROR, "Error archiving data blob for buddy: %@", &v2, 0xCu);
}

+ (void)restoreDataBlobForBuddy:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_18B15E000, a2, OS_LOG_TYPE_ERROR, "Error unarchiving data blob from buddy: %@", &v2, 0xCu);
}

@end