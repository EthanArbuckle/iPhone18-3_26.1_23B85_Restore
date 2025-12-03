@interface PKHandwritingEducationPaneSettings
+ (id)sharedInstance;
- (BOOL)isCurrentSystemVersionEqualToLastUserDrawn;
- (uint64_t)canShowResetPaneInPalette;
- (uint64_t)seenFeatures;
- (void)setSeenFeatures:(uint64_t)features;
- (void)userHasDrawn;
@end

@implementation PKHandwritingEducationPaneSettings

+ (id)sharedInstance
{
  objc_opt_self();
  if (_MergedGlobals_170 != -1)
  {
    dispatch_once(&_MergedGlobals_170, &__block_literal_global_90);
  }

  v0 = qword_1ED6A5558;

  return v0;
}

void __52__PKHandwritingEducationPaneSettings_sharedInstance__block_invoke()
{
  v0 = objc_alloc_init(PKHandwritingEducationPaneSettings);
  v1 = qword_1ED6A5558;
  qword_1ED6A5558 = v0;
}

- (BOOL)isCurrentSystemVersionEqualToLastUserDrawn
{
  v24 = *MEMORY[0x1E69E9840];
  if (!self)
  {
    return 0;
  }

  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  v2 = [standardUserDefaults objectForKey:@"internalSettings.drawing.hasDrawnInNotes"];

  v3 = objc_opt_class();
  v4 = PKDynamicCast(v3, v2);
  if ([v4 count] == 3)
  {
    v5 = objc_opt_class();
    v6 = [v4 objectAtIndexedSubscript:0];
    v7 = PKDynamicCast(v5, v6);
    integerValue = [v7 integerValue];

    v9 = objc_opt_class();
    v10 = [v4 objectAtIndexedSubscript:1];
    v11 = PKDynamicCast(v9, v10);
    integerValue2 = [v11 integerValue];

    v13 = objc_opt_class();
    v14 = [v4 objectAtIndexedSubscript:2];
    v15 = PKDynamicCast(v13, v14);
    integerValue3 = [v15 integerValue];
  }

  else
  {
    integerValue = 0;
    integerValue2 = 0;
    integerValue3 = 0;
  }

  processInfo = [MEMORY[0x1E696AE30] processInfo];
  v18 = processInfo;
  if (processInfo)
  {
    [processInfo operatingSystemVersion];
  }

  v19 = 0;
  if (!integerValue && !integerValue2)
  {
    v19 = integerValue3 == 0;
  }

  v20 = os_log_create("com.apple.pencilkit", "PKHandwritingEducationPaneSettings");
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    v23 = v19;
    _os_log_impl(&dword_1C7CCA000, v20, OS_LOG_TYPE_DEFAULT, "isCurrentSystemVersionNewerThanLastDrawnIn=%d", buf, 8u);
  }

  return v19;
}

- (void)userHasDrawn
{
  v9[3] = *MEMORY[0x1E69E9840];
  if (self)
  {
    if (([self hasSetUserHasDrawn] & 1) != 0 || (PKCurrentAppShowsHandwritingEducation() & 1) == 0)
    {

      [self setHasSetUserHasDrawn:1];
    }

    else
    {
      processInfo = [MEMORY[0x1E696AE30] processInfo];
      v3 = processInfo;
      if (processInfo)
      {
        [processInfo operatingSystemVersion];
      }

      v4 = [MEMORY[0x1E696AD98] numberWithInteger:0];
      v9[0] = v4;
      v5 = [MEMORY[0x1E696AD98] numberWithInteger:0];
      v9[1] = v5;
      v6 = [MEMORY[0x1E696AD98] numberWithInteger:0];
      v9[2] = v6;
      v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:3];

      standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
      [standardUserDefaults setObject:v7 forKey:@"internalSettings.drawing.hasDrawnInNotes"];

      [self setHasSetUserHasDrawn:1];
    }
  }
}

- (uint64_t)seenFeatures
{
  if (!self)
  {
    return 0;
  }

  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  if ([standardUserDefaults BOOLForKey:@"internalSettings.drawing.hasSeenHandwritingEducationPane"])
  {
    v2 = 3;
  }

  else
  {
    v2 = [standardUserDefaults integerForKey:@"internalSettings.drawing.hasSeenHandwritingEducationPaneOptions"];
  }

  return v2;
}

- (void)setSeenFeatures:(uint64_t)features
{
  v12 = *MEMORY[0x1E69E9840];
  if (features)
  {
    v4 = os_log_create("com.apple.pencilkit", "PKHandwritingEducationPaneSettings");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 134217984;
      v11 = a2;
      _os_log_impl(&dword_1C7CCA000, v4, OS_LOG_TYPE_DEFAULT, "set has seen handwriting education pane: %lu", &v10, 0xCu);
    }

    standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter postNotificationName:@"PKHandwritingEducationPaneSettingsDidChangeNotification" object:features userInfo:0];

    if (a2)
    {
      [standardUserDefaults setInteger:a2 forKey:@"internalSettings.drawing.hasSeenHandwritingEducationPaneOptions"];
    }

    else
    {
      [standardUserDefaults removeObjectForKey:@"internalSettings.drawing.hasSeenHandwritingEducationPaneOptions"];
    }

    v7 = [standardUserDefaults objectForKey:@"internalSettings.drawing.hasSeenHandwritingEducationPane"];
    if (v7)
    {
      null = [MEMORY[0x1E695DFB0] null];
      v9 = [null isEqual:v7];

      if ((v9 & 1) == 0)
      {
        [standardUserDefaults removeObjectForKey:@"internalSettings.drawing.hasSeenHandwritingEducationPane"];
      }
    }

    [standardUserDefaults synchronize];
  }
}

- (uint64_t)canShowResetPaneInPalette
{
  if (result)
  {
    v1 = result;
    if (os_variant_has_internal_diagnostics())
    {
      standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
      v2 = [standardUserDefaults BOOLForKey:@"internalSettings.drawing.showResetHandwritingEducationPaneInPalette"];
    }

    else
    {
      v2 = 0;
    }

    if ([(PKHandwritingEducationPaneSettings *)v1 seenFeatures])
    {
      return v2;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

@end