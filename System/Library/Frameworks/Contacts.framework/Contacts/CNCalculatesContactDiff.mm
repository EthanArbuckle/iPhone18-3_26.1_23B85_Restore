@interface CNCalculatesContactDiff
+ (BOOL)shouldSaveDuplicateProperty:(id)property value1:(id)value1 value2:(id)value2;
+ (id)backgroundColorRelatedKeys;
+ (id)diffContact:(id)contact to:(id)to options:(id)options error:(id *)error;
+ (id)imageMetadataLog;
+ (void)addMultiValueUpdateTo:(id)to forProperty:(id)property contact1:(id)contact1 contact2:(id)contact2;
+ (void)addSingleValueUpdateTo:(id)to forProperty:(id)property contact1:(id)contact1 contact2:(id)contact2;
+ (void)cleanOrphanedCropUpdates:(id)updates withContact1:(id)contact1 contact2:(id)contact2;
+ (void)clearBackgroundColorInUpdates:(id)updates forContact:(id)contact;
@end

@implementation CNCalculatesContactDiff

+ (id)imageMetadataLog
{
  if (imageMetadataLog_cn_once_token_0 != -1)
  {
    +[CNCalculatesContactDiff imageMetadataLog];
  }

  v3 = imageMetadataLog_cn_once_object_0;

  return v3;
}

uint64_t __43__CNCalculatesContactDiff_imageMetadataLog__block_invoke()
{
  v0 = os_log_create("com.apple.contacts", "image-metadata");
  v1 = imageMetadataLog_cn_once_object_0;
  imageMetadataLog_cn_once_object_0 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

+ (id)diffContact:(id)contact to:(id)to options:(id)options error:(id *)error
{
  v60 = *MEMORY[0x1E69E9840];
  contactCopy = contact;
  toCopy = to;
  optionsCopy = options;
  if (contactCopy == toCopy)
  {
    array = [MEMORY[0x1E695DEC8] array];
  }

  else
  {
    errorCopy = error;
    selfCopy = self;
    array2 = [MEMORY[0x1E695DF70] array];
    v49 = 0u;
    v50 = 0u;
    v51 = 0u;
    v52 = 0u;
    obj = +[CN writableContactProperties];
    v12 = [obj countByEnumeratingWithState:&v49 objects:v59 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v50;
LABEL_4:
      v15 = 0;
      while (1)
      {
        if (*v50 != v14)
        {
          objc_enumerationMutation(obj);
        }

        v16 = *(*(&v49 + 1) + 8 * v15);
        if (contactCopy)
        {
          v17 = [*(*(&v49 + 1) + 8 * v15) key];
          v58 = v17;
          v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v58 count:1];
          v19 = [contactCopy areKeysAvailable:v18];

          if (!toCopy)
          {
            goto LABEL_14;
          }
        }

        else
        {
          v19 = 1;
          if (!toCopy)
          {
LABEL_14:
            v22 = 1;
            goto LABEL_15;
          }
        }

        v20 = [v16 key];
        v57 = v20;
        v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v57 count:1];
        v22 = [toCopy areKeysAvailable:v21];

        if (contactCopy && v19 != v22)
        {
          if (([optionsCopy ignoreUnavailableKeys] & 1) == 0)
          {
            if (v22)
            {
              v31 = contactCopy;
            }

            else
            {
              v31 = toCopy;
            }

            v32 = v31;
            v33 = v32;
            if (errorCopy)
            {
              if (v32 == contactCopy)
              {
                v34 = toCopy;
              }

              else
              {
                v34 = contactCopy;
              }

              v54[1] = v34;
              v55[0] = @"CNInvalidRecords";
              v54[0] = v32;
              v35 = MEMORY[0x1E695DEC8];
              v36 = v34;
              v37 = [v35 arrayWithObjects:v54 count:2];
              v56[0] = v37;
              v55[1] = @"CNKeyPaths";
              v38 = [v16 key];
              v53 = v38;
              v39 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v53 count:1];
              v56[1] = v39;
              v40 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v56 forKeys:v55 count:2];

              v41 = [CNErrorFactory errorWithCode:1000 userInfo:v40];

              v42 = v41;
              *errorCopy = v41;
            }

            array = 0;
            v26 = array2;
            goto LABEL_35;
          }

          goto LABEL_20;
        }

LABEL_15:
        if ((v19 & v22) == 1)
        {
          ignoredKeys = [optionsCopy ignoredKeys];
          v24 = [v16 key];
          v25 = [ignoredKeys containsObject:v24];

          if ((v25 & 1) == 0)
          {
            if ([v16 isMultiValue])
            {
              [selfCopy addMultiValueUpdateTo:array2 forProperty:v16 contact1:contactCopy contact2:toCopy];
            }

            else
            {
              [selfCopy addSingleValueUpdateTo:array2 forProperty:v16 contact1:contactCopy contact2:toCopy];
            }
          }
        }

LABEL_20:
        if (v13 == ++v15)
        {
          v13 = [obj countByEnumeratingWithState:&v49 objects:v59 count:16];
          if (v13)
          {
            goto LABEL_4;
          }

          break;
        }
      }
    }

    v26 = array2;
    [selfCopy cleanOrphanedCropUpdates:array2 withContact1:contactCopy contact2:toCopy];
    currentEnvironment = [MEMORY[0x1E69966E8] currentEnvironment];
    featureFlags = [currentEnvironment featureFlags];
    v29 = [featureFlags isFeatureEnabled:8];

    if (v29)
    {
      [selfCopy clearBackgroundColorInUpdates:array2 forContact:toCopy];
    }

    array = array2;
LABEL_35:
  }

  return array;
}

+ (void)addSingleValueUpdateTo:(id)to forProperty:(id)property contact1:(id)contact1 contact2:(id)contact2
{
  toCopy = to;
  propertyCopy = property;
  contact2Copy = contact2;
  v12 = [propertyCopy CNValueForContact:contact1];
  v13 = [propertyCopy CNValueForContact:contact2Copy];

  if (![propertyCopy isValue:v12 equalToEmptyEquivalentOrValue:v13] || objc_msgSend(self, "shouldSaveDuplicateProperty:value1:value2:", propertyCopy, v12, v13))
  {
    v14 = [CNContactUpdate updateWithValue:v13 property:propertyCopy];
    [toCopy addObject:v14];
  }
}

+ (BOOL)shouldSaveDuplicateProperty:(id)property value1:(id)value1 value2:(id)value2
{
  value2Copy = value2;
  v7 = [property key];

  if (v7 == @"cropRect")
  {
    [value2Copy rectValue];
    v8 = !CGRectIsEmpty(v10);
  }

  else
  {
    LOBYTE(v8) = 0;
  }

  return v8;
}

+ (void)addMultiValueUpdateTo:(id)to forProperty:(id)property contact1:(id)contact1 contact2:(id)contact2
{
  v34 = *MEMORY[0x1E69E9840];
  toCopy = to;
  propertyCopy = property;
  contact1Copy = contact1;
  contact2Copy = contact2;
  v13 = [propertyCopy key];
  v14 = [contact1Copy valueForKey:v13];

  v15 = [propertyCopy key];
  v16 = [contact2Copy valueForKey:v15];

  v17 = [CNMultiValueDiff diffMultiValue:v14 toMultiValue:v16];
  if (([v17 isEmpty] & 1) == 0)
  {
    v18 = [CNContactUpdate updateMultiValueWithDiff:v17 property:propertyCopy];
    isUnified = [contact1Copy isUnified];
    isUnified2 = [contact2Copy isUnified];
    if (isUnified)
    {
      v28 = toCopy;
      if ((isUnified2 & 1) == 0)
      {
        [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:@"A contact and its snapshot should both be unified."];
      }

      v27 = v18;
      [v18 diff];
      v29 = 0u;
      v30 = 0u;
      v31 = 0u;
      v26 = v32 = 0u;
      updates = [v26 updates];
      v22 = [updates countByEnumeratingWithState:&v29 objects:v33 count:16];
      if (v22)
      {
        v23 = v22;
        v24 = *v30;
        do
        {
          v25 = 0;
          do
          {
            if (*v30 != v24)
            {
              objc_enumerationMutation(updates);
            }

            [*(*(&v29 + 1) + 8 * v25++) setIgnoreIdentifiers:1];
          }

          while (v23 != v25);
          v23 = [updates countByEnumeratingWithState:&v29 objects:v33 count:16];
        }

        while (v23);
      }

      v18 = v27;
      toCopy = v28;
    }

    else if (isUnified2)
    {
      [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:@"A contact and its snapshot should both be non-unified."];
    }

    [toCopy addObject:v18];
  }
}

+ (void)cleanOrphanedCropUpdates:(id)updates withContact1:(id)contact1 contact2:(id)contact2
{
  updatesCopy = updates;
  contact1Copy = contact1;
  contact2Copy = contact2;
  v9 = [updatesCopy _cn_firstObjectPassingTest:&__block_literal_global_17_1];
  if (v9)
  {
    if (([updatesCopy _cn_any:&__block_literal_global_19] & 1) == 0)
    {
      property = [v9 property];
      property2 = [v9 property];
      v12 = [property2 CNValueForContact:contact1Copy];
      property3 = [v9 property];
      v14 = [property3 CNValueForContact:contact2Copy];
      v15 = [property isValue:v12 equalToEmptyEquivalentOrValue:v14];

      if (v15)
      {
        [updatesCopy removeObject:v9];
      }
    }
  }
}

BOOL __74__CNCalculatesContactDiff_cleanOrphanedCropUpdates_withContact1_contact2___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 property];
  v3 = [v2 key];
  v4 = v3 == @"cropRect";

  return v4;
}

BOOL __74__CNCalculatesContactDiff_cleanOrphanedCropUpdates_withContact1_contact2___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = [a2 property];
  v3 = [v2 key];
  v4 = v3 == @"imageData";

  return v4;
}

+ (void)clearBackgroundColorInUpdates:(id)updates forContact:(id)contact
{
  v16 = *MEMORY[0x1E69E9840];
  updatesCopy = updates;
  contactCopy = contact;
  v8 = [updatesCopy _cn_firstObjectPassingTest:&__block_literal_global_21];
  if (!v8)
  {
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __68__CNCalculatesContactDiff_clearBackgroundColorInUpdates_forContact___block_invoke_2;
    v13[3] = &__block_descriptor_40_e8_B16__0_8l;
    v13[4] = self;
    if ([updatesCopy _cn_any:v13])
    {
      v9 = +[CN imageBackgroundColorsDataDescription];
      v10 = [CNContactUpdate updateWithValue:0 property:v9];

      [updatesCopy addObject:v10];
      imageMetadataLog = [objc_opt_class() imageMetadataLog];
      if (os_log_type_enabled(imageMetadataLog, OS_LOG_TYPE_DEFAULT))
      {
        identifier = [contactCopy identifier];
        *buf = 138543362;
        v15 = identifier;
        _os_log_impl(&dword_1954A0000, imageMetadataLog, OS_LOG_TYPE_DEFAULT, "Cleared image background colors for contact identifier %{public}@", buf, 0xCu);
      }
    }
  }
}

BOOL __68__CNCalculatesContactDiff_clearBackgroundColorInUpdates_forContact___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 property];
  v3 = [v2 key];
  v4 = v3 == @"imageBackgroundColorsData";

  return v4;
}

uint64_t __68__CNCalculatesContactDiff_clearBackgroundColorInUpdates_forContact___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 property];
  v4 = [v3 key];

  v5 = [*(a1 + 32) backgroundColorRelatedKeys];
  v6 = [v5 containsObject:v4];

  return v6;
}

+ (id)backgroundColorRelatedKeys
{
  if (backgroundColorRelatedKeys_cn_once_token_2 != -1)
  {
    +[CNCalculatesContactDiff backgroundColorRelatedKeys];
  }

  v3 = backgroundColorRelatedKeys_cn_once_object_2;

  return v3;
}

void __53__CNCalculatesContactDiff_backgroundColorRelatedKeys__block_invoke()
{
  v3[6] = *MEMORY[0x1E69E9840];
  v3[0] = @"imageType";
  v3[1] = @"imageData";
  v3[2] = @"thumbnailImageData";
  v3[3] = @"cropRect";
  v3[4] = @"wallpaper";
  v3[5] = @"wallpaperMetadata";
  v0 = [MEMORY[0x1E695DEC8] arrayWithObjects:v3 count:6];
  v1 = [v0 copy];
  v2 = backgroundColorRelatedKeys_cn_once_object_2;
  backgroundColorRelatedKeys_cn_once_object_2 = v1;
}

@end