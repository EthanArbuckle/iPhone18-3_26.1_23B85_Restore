@interface AXUIAvatarUtilities
+ (BOOL)avatarFrameworksArePresent;
+ (id)_axStringForPresetCategory:(int64_t)category;
+ (id)customContentForAvatarWithRecord:(id)record;
+ (id)customContentForMemoji:(id)memoji;
+ (id)descriptionForAnimoji:(id)animoji;
+ (id)descriptionForAvatarWithRecord:(id)record includeVideoPrefix:(BOOL)prefix;
+ (id)descriptionForMemoji:(id)memoji;
+ (void)performValidations;
@end

@implementation AXUIAvatarUtilities

+ (BOOL)avatarFrameworksArePresent
{
  mainBundle = [MEMORY[0x1E696AAE8] mainBundle];
  bundleIdentifier = [mainBundle bundleIdentifier];
  v4 = [bundleIdentifier hasPrefix:*MEMORY[0x1E6988740]];

  if (v4)
  {
    LOBYTE(v5) = 0;
  }

  else
  {
    v5 = AvatarKitLibraryCore();
    if (v5)
    {
      LOBYTE(v5) = AvatarUILibraryCore() != 0;
    }
  }

  return v5;
}

+ (void)performValidations
{
  if (AXPerformValidationChecks() && [self avatarFrameworksArePresent])
  {
    getAVTAnimojiClass();
    objc_opt_class();
    getAVTPresetClass();
    objc_opt_class();
    getAVTColorPresetClass();
    objc_opt_class();
    v8 = 0;
    v9 = &v8;
    v10 = 0x2050000000;
    v3 = getAVTAvatarPuppetRecordClass_softClass;
    v11 = getAVTAvatarPuppetRecordClass_softClass;
    if (!getAVTAvatarPuppetRecordClass_softClass)
    {
      v7[0] = MEMORY[0x1E69E9820];
      v7[1] = 3221225472;
      v7[2] = __getAVTAvatarPuppetRecordClass_block_invoke;
      v7[3] = &unk_1E812DCD0;
      v7[4] = &v8;
      __getAVTAvatarPuppetRecordClass_block_invoke(v7);
      v3 = v9[3];
    }

    v4 = v3;
    _Block_object_dispose(&v8, 8);
    objc_opt_class();
  }

  mEMORY[0x1E6988808] = [MEMORY[0x1E6988808] sharedInstance];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __41__AXUIAvatarUtilities_performValidations__block_invoke;
  v6[3] = &__block_descriptor_40_e29_B16__0__AXValidationManager_8l;
  v6[4] = self;
  [mEMORY[0x1E6988808] performValidations:v6 withPreValidationHandler:&__block_literal_global_6 postValidationHandler:0];
}

uint64_t __41__AXUIAvatarUtilities_performValidations__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([*(a1 + 32) avatarFrameworksArePresent])
  {
    [v3 validateClass:@"AVTAnimoji"];
    [v3 validateClass:@"AVTPreset"];
    [v3 validateClass:@"AVTColorPreset"];
    [v3 validateClass:@"AVTAvatarPuppetRecord"];
    [v3 validateClass:@"AVTAvatarPuppetRecord" conformsToProtocol:@"AVTAvatarRecord"];
    [v3 validateClass:@"AVTAvatarPuppetRecord" hasInstanceMethod:@"puppetName" withFullSignature:{"@", 0}];
    [v3 validateClass:@"AVTAvatarRecord" hasInstanceMethod:@"avatarData" withFullSignature:{"@", 0}];
    [v3 validateProtocol:@"AVTAvatarRecord" hasRequiredInstanceMethod:@"isEditable"];
    [v3 validateClass:@"AVTStickerConfiguration" hasInstanceMethod:@"localizedName" withFullSignature:{"@", 0}];
  }

  return 1;
}

uint64_t __41__AXUIAvatarUtilities_performValidations__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 setValidationTargetName:@"AXUIAvatarUtilities"];
  [v2 setOverrideProcessName:@"AXUIAvatarUtilities"];
  [v2 setDebugBuild:0];

  return AXPerformValidationChecks();
}

+ (id)descriptionForAvatarWithRecord:(id)record includeVideoPrefix:(BOOL)prefix
{
  prefixCopy = prefix;
  recordCopy = record;
  if (![self avatarFrameworksArePresent])
  {
    v10 = 0;
    goto LABEL_18;
  }

  if ([recordCopy safeBoolForKey:@"isEditable"])
  {
    v7 = [recordCopy safeValueForKey:@"avatarData"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v18 = 0;
      v8 = [getAVTMemojiClass() avatarWithDataRepresentation:v7 error:&v18];
      v9 = v18;
      if (v9)
      {
        _AXLogWithFacility();
      }

      else
      {
        getAVTMemojiClass();
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v14 = [self descriptionForMemoji:v8];
          if (prefixCopy)
          {
            v15 = @"memoji.video.description";
          }

          else
          {
            v15 = @"starfish.avatar";
          }

          v17 = AXUILocalizedStringForKey(v15);
          v10 = __AXStringForVariables();

          goto LABEL_16;
        }
      }

      v10 = 0;
LABEL_16:

      goto LABEL_17;
    }
  }

  else
  {
    v7 = [recordCopy safeStringForKey:@"puppetName"];
    if (v7)
    {
      v11 = [getAVTAnimojiClass() animojiNamed:v7];
      v10 = [self descriptionForAnimoji:v11];
      if (prefixCopy)
      {
        v12 = AXUILocalizedStringForKey(@"animoji.video.description");
        v13 = __AXStringForVariables();

        v10 = v13;
      }

      goto LABEL_17;
    }
  }

  v10 = 0;
LABEL_17:

LABEL_18:

  return v10;
}

+ (id)descriptionForAnimoji:(id)animoji
{
  animojiCopy = animoji;
  if (getAVTAnimojiClass())
  {
    v4 = MEMORY[0x1E696AEC0];
    name = [animojiCopy name];
    v6 = [v4 stringWithFormat:@"animoji.name.%@", name];
    v7 = AXUILocalizedStringForKey(v6);
  }

  else
  {
    _AXLogWithFacility();
    v7 = 0;
  }

  return v7;
}

+ (id)descriptionForMemoji:(id)memoji
{
  memojiCopy = memoji;
  if (getAVTColorPresetClass() && getAVTPresetClass() && getAVTMemojiClass() && getAVTAnimojiClass())
  {
    v40 = [memojiCopy colorPresetForCategory:0];
    localizedName = [v40 localizedName];
    v39 = [memojiCopy colorPresetForCategory:1];
    localizedName2 = [v39 localizedName];
    v6 = [memojiCopy presetForCategory:1];
    localizedName3 = [v6 localizedName];
    v37 = v6;
    identifier = [v6 identifier];
    v9 = [identifier isEqualToString:@"none"];

    v36 = [memojiCopy colorPresetForCategory:7];
    localizedName4 = [v36 localizedName];
    v35 = [memojiCopy colorPresetForCategory:2];
    localizedName5 = [v35 localizedName];
    v46 = [memojiCopy presetForCategory:2];
    localizedName6 = [v46 localizedName];
    v34 = [memojiCopy colorPresetForCategory:4];
    localizedName7 = [v34 localizedName];
    v45 = [memojiCopy presetForCategory:4];
    localizedName8 = [v45 localizedName];
    v11 = [memojiCopy presetForCategory:32];
    localizedName9 = [v11 localizedName];
    v33 = [memojiCopy colorPresetForCategory:32];
    localizedName10 = [v33 localizedName];
    v13 = MEMORY[0x1E696AEC0];
    if (v9)
    {
      v14 = AXUILocalizedStringForKey(@"memoji.description.no.hair");
      [v13 stringWithFormat:v14, localizedName, localizedName3, localizedName2, localizedName4];
    }

    else
    {
      v14 = AXUILocalizedStringForKey(@"memoji.description.basic");
      [v13 stringWithFormat:v14, localizedName, localizedName2, localizedName3, localizedName4];
    }
    v15 = ;
    v38 = localizedName2;

    v17 = localizedName;
    if ([v46 hasComponent])
    {
      v18 = MEMORY[0x1E696AEC0];
      v19 = AXUILocalizedStringForKey(@"memoji.description.facialhair");
      v28 = [v18 stringWithFormat:v19, localizedName5, localizedName6];
      v31 = @"__AXStringForVariablesSentinel";
      v20 = __AXStringForVariables();

      v15 = v20;
    }

    if ([v45 hasComponent])
    {
      v21 = MEMORY[0x1E696AEC0];
      v22 = AXUILocalizedStringForKey(@"memoji.description.headwear");
      v29 = [v21 stringWithFormat:v22, localizedName7, localizedName8];
      v32 = @"__AXStringForVariablesSentinel";
      v23 = __AXStringForVariables();

      v15 = v23;
    }

    v24 = localizedName9;
    if ([v11 hasComponent])
    {
      v25 = MEMORY[0x1E696AEC0];
      v26 = AXUILocalizedStringForKey(@"memoji.description.facewear");
      v30 = [v25 stringWithFormat:v26, localizedName10, localizedName9];
      v27 = __AXStringForVariables();

      v15 = v27;
      v24 = localizedName9;
    }
  }

  else
  {
    _AXLogWithFacility();
    v15 = 0;
  }

  return v15;
}

+ (id)customContentForAvatarWithRecord:(id)record
{
  recordCopy = record;
  if (![self avatarFrameworksArePresent] || !objc_msgSend(recordCopy, "safeBoolForKey:", @"isEditable"))
  {
    v8 = 0;
    goto LABEL_13;
  }

  v5 = [recordCopy safeValueForKey:@"avatarData"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = 0;
    v6 = [getAVTMemojiClass() avatarWithDataRepresentation:v5 error:&v10];
    v7 = v10;
    if (v7)
    {
      _AXLogWithFacility();
    }

    else
    {
      getAVTMemojiClass();
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v8 = [self customContentForMemoji:v6];
LABEL_11:

        goto LABEL_12;
      }
    }

    v8 = 0;
    goto LABEL_11;
  }

  v8 = 0;
LABEL_12:

LABEL_13:

  return v8;
}

+ (id)customContentForMemoji:(id)memoji
{
  memojiCopy = memoji;
  v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
  if (getAVTColorPresetClass() && getAVTPresetClass() && getAVTMemojiClass() && getAVTAnimojiClass())
  {
    for (i = 0; i != 40; ++i)
    {
      if (([self _shouldSkipPresetCategory:{i, v17, v18}] & 1) == 0)
      {
        v7 = [memojiCopy presetForCategory:i];
        if ([v7 hasComponent])
        {
          v8 = [self _axStringForPresetCategory:i];
          localizedName = [v7 localizedName];
          v10 = [memojiCopy colorPresetForCategory:i];
          localizedName2 = [v10 localizedName];

          if (localizedName2)
          {
            v17 = localizedName2;
            v18 = @"__AXStringForVariablesSentinel";
            v12 = __AXStringForVariables();

            localizedName = v12;
          }

          if (v8 && localizedName)
          {
            v13 = MEMORY[0x1E6959560];
            v14 = AXUILocalizedStringForKey(v8);
            v15 = [v13 customContentWithLabel:v14 value:localizedName];

            [v5 addObject:v15];
          }
        }
      }
    }
  }

  else
  {
    _AXLogWithFacility();
  }

  return v5;
}

+ (id)_axStringForPresetCategory:(int64_t)category
{
  v4 = [self _shouldSkipPresetCategory:?];
  result = 0;
  if (category <= 0x23 && (v4 & 1) == 0)
  {
    return off_1E812E280[category];
  }

  return result;
}

@end