@interface AXUIAvatarUtilities
+ (BOOL)avatarFrameworksArePresent;
+ (id)_axStringForPresetCategory:(int64_t)a3;
+ (id)customContentForAvatarWithRecord:(id)a3;
+ (id)customContentForMemoji:(id)a3;
+ (id)descriptionForAnimoji:(id)a3;
+ (id)descriptionForAvatarWithRecord:(id)a3 includeVideoPrefix:(BOOL)a4;
+ (id)descriptionForMemoji:(id)a3;
+ (void)performValidations;
@end

@implementation AXUIAvatarUtilities

+ (BOOL)avatarFrameworksArePresent
{
  v2 = [MEMORY[0x1E696AAE8] mainBundle];
  v3 = [v2 bundleIdentifier];
  v4 = [v3 hasPrefix:*MEMORY[0x1E6988740]];

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
  if (AXPerformValidationChecks() && [a1 avatarFrameworksArePresent])
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

  v5 = [MEMORY[0x1E6988808] sharedInstance];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __41__AXUIAvatarUtilities_performValidations__block_invoke;
  v6[3] = &__block_descriptor_40_e29_B16__0__AXValidationManager_8l;
  v6[4] = a1;
  [v5 performValidations:v6 withPreValidationHandler:&__block_literal_global_6 postValidationHandler:0];
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

+ (id)descriptionForAvatarWithRecord:(id)a3 includeVideoPrefix:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  if (![a1 avatarFrameworksArePresent])
  {
    v10 = 0;
    goto LABEL_18;
  }

  if ([v6 safeBoolForKey:@"isEditable"])
  {
    v7 = [v6 safeValueForKey:@"avatarData"];
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
          v14 = [a1 descriptionForMemoji:v8];
          if (v4)
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
    v7 = [v6 safeStringForKey:@"puppetName"];
    if (v7)
    {
      v11 = [getAVTAnimojiClass() animojiNamed:v7];
      v10 = [a1 descriptionForAnimoji:v11];
      if (v4)
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

+ (id)descriptionForAnimoji:(id)a3
{
  v3 = a3;
  if (getAVTAnimojiClass())
  {
    v4 = MEMORY[0x1E696AEC0];
    v5 = [v3 name];
    v6 = [v4 stringWithFormat:@"animoji.name.%@", v5];
    v7 = AXUILocalizedStringForKey(v6);
  }

  else
  {
    _AXLogWithFacility();
    v7 = 0;
  }

  return v7;
}

+ (id)descriptionForMemoji:(id)a3
{
  v3 = a3;
  if (getAVTColorPresetClass() && getAVTPresetClass() && getAVTMemojiClass() && getAVTAnimojiClass())
  {
    v40 = [v3 colorPresetForCategory:0];
    v4 = [v40 localizedName];
    v39 = [v3 colorPresetForCategory:1];
    v5 = [v39 localizedName];
    v6 = [v3 presetForCategory:1];
    v7 = [v6 localizedName];
    v37 = v6;
    v8 = [v6 identifier];
    v9 = [v8 isEqualToString:@"none"];

    v36 = [v3 colorPresetForCategory:7];
    v10 = [v36 localizedName];
    v35 = [v3 colorPresetForCategory:2];
    v47 = [v35 localizedName];
    v46 = [v3 presetForCategory:2];
    v44 = [v46 localizedName];
    v34 = [v3 colorPresetForCategory:4];
    v43 = [v34 localizedName];
    v45 = [v3 presetForCategory:4];
    v42 = [v45 localizedName];
    v11 = [v3 presetForCategory:32];
    v41 = [v11 localizedName];
    v33 = [v3 colorPresetForCategory:32];
    v12 = [v33 localizedName];
    v13 = MEMORY[0x1E696AEC0];
    if (v9)
    {
      v14 = AXUILocalizedStringForKey(@"memoji.description.no.hair");
      [v13 stringWithFormat:v14, v4, v7, v5, v10];
    }

    else
    {
      v14 = AXUILocalizedStringForKey(@"memoji.description.basic");
      [v13 stringWithFormat:v14, v4, v5, v7, v10];
    }
    v15 = ;
    v38 = v5;

    v17 = v4;
    if ([v46 hasComponent])
    {
      v18 = MEMORY[0x1E696AEC0];
      v19 = AXUILocalizedStringForKey(@"memoji.description.facialhair");
      v28 = [v18 stringWithFormat:v19, v47, v44];
      v31 = @"__AXStringForVariablesSentinel";
      v20 = __AXStringForVariables();

      v15 = v20;
    }

    if ([v45 hasComponent])
    {
      v21 = MEMORY[0x1E696AEC0];
      v22 = AXUILocalizedStringForKey(@"memoji.description.headwear");
      v29 = [v21 stringWithFormat:v22, v43, v42];
      v32 = @"__AXStringForVariablesSentinel";
      v23 = __AXStringForVariables();

      v15 = v23;
    }

    v24 = v41;
    if ([v11 hasComponent])
    {
      v25 = MEMORY[0x1E696AEC0];
      v26 = AXUILocalizedStringForKey(@"memoji.description.facewear");
      v30 = [v25 stringWithFormat:v26, v12, v41];
      v27 = __AXStringForVariables();

      v15 = v27;
      v24 = v41;
    }
  }

  else
  {
    _AXLogWithFacility();
    v15 = 0;
  }

  return v15;
}

+ (id)customContentForAvatarWithRecord:(id)a3
{
  v4 = a3;
  if (![a1 avatarFrameworksArePresent] || !objc_msgSend(v4, "safeBoolForKey:", @"isEditable"))
  {
    v8 = 0;
    goto LABEL_13;
  }

  v5 = [v4 safeValueForKey:@"avatarData"];
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
        v8 = [a1 customContentForMemoji:v6];
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

+ (id)customContentForMemoji:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
  if (getAVTColorPresetClass() && getAVTPresetClass() && getAVTMemojiClass() && getAVTAnimojiClass())
  {
    for (i = 0; i != 40; ++i)
    {
      if (([a1 _shouldSkipPresetCategory:{i, v17, v18}] & 1) == 0)
      {
        v7 = [v4 presetForCategory:i];
        if ([v7 hasComponent])
        {
          v8 = [a1 _axStringForPresetCategory:i];
          v9 = [v7 localizedName];
          v10 = [v4 colorPresetForCategory:i];
          v11 = [v10 localizedName];

          if (v11)
          {
            v17 = v11;
            v18 = @"__AXStringForVariablesSentinel";
            v12 = __AXStringForVariables();

            v9 = v12;
          }

          if (v8 && v9)
          {
            v13 = MEMORY[0x1E6959560];
            v14 = AXUILocalizedStringForKey(v8);
            v15 = [v13 customContentWithLabel:v14 value:v9];

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

+ (id)_axStringForPresetCategory:(int64_t)a3
{
  v4 = [a1 _shouldSkipPresetCategory:?];
  result = 0;
  if (a3 <= 0x23 && (v4 & 1) == 0)
  {
    return off_1E812E280[a3];
  }

  return result;
}

@end