@interface CNCalculatesContactDiff
+ (BOOL)shouldSaveDuplicateProperty:(id)a3 value1:(id)a4 value2:(id)a5;
+ (id)backgroundColorRelatedKeys;
+ (id)diffContact:(id)a3 to:(id)a4 options:(id)a5 error:(id *)a6;
+ (id)imageMetadataLog;
+ (void)addMultiValueUpdateTo:(id)a3 forProperty:(id)a4 contact1:(id)a5 contact2:(id)a6;
+ (void)addSingleValueUpdateTo:(id)a3 forProperty:(id)a4 contact1:(id)a5 contact2:(id)a6;
+ (void)cleanOrphanedCropUpdates:(id)a3 withContact1:(id)a4 contact2:(id)a5;
+ (void)clearBackgroundColorInUpdates:(id)a3 forContact:(id)a4;
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

+ (id)diffContact:(id)a3 to:(id)a4 options:(id)a5 error:(id *)a6
{
  v60 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v48 = a5;
  if (v10 == v11)
  {
    v30 = [MEMORY[0x1E695DEC8] array];
  }

  else
  {
    v44 = a6;
    v45 = a1;
    v46 = [MEMORY[0x1E695DF70] array];
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
        if (v10)
        {
          v17 = [*(*(&v49 + 1) + 8 * v15) key];
          v58 = v17;
          v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v58 count:1];
          v19 = [v10 areKeysAvailable:v18];

          if (!v11)
          {
            goto LABEL_14;
          }
        }

        else
        {
          v19 = 1;
          if (!v11)
          {
LABEL_14:
            v22 = 1;
            goto LABEL_15;
          }
        }

        v20 = [v16 key];
        v57 = v20;
        v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v57 count:1];
        v22 = [v11 areKeysAvailable:v21];

        if (v10 && v19 != v22)
        {
          if (([v48 ignoreUnavailableKeys] & 1) == 0)
          {
            if (v22)
            {
              v31 = v10;
            }

            else
            {
              v31 = v11;
            }

            v32 = v31;
            v33 = v32;
            if (v44)
            {
              if (v32 == v10)
              {
                v34 = v11;
              }

              else
              {
                v34 = v10;
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
              *v44 = v41;
            }

            v30 = 0;
            v26 = v46;
            goto LABEL_35;
          }

          goto LABEL_20;
        }

LABEL_15:
        if ((v19 & v22) == 1)
        {
          v23 = [v48 ignoredKeys];
          v24 = [v16 key];
          v25 = [v23 containsObject:v24];

          if ((v25 & 1) == 0)
          {
            if ([v16 isMultiValue])
            {
              [v45 addMultiValueUpdateTo:v46 forProperty:v16 contact1:v10 contact2:v11];
            }

            else
            {
              [v45 addSingleValueUpdateTo:v46 forProperty:v16 contact1:v10 contact2:v11];
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

    v26 = v46;
    [v45 cleanOrphanedCropUpdates:v46 withContact1:v10 contact2:v11];
    v27 = [MEMORY[0x1E69966E8] currentEnvironment];
    v28 = [v27 featureFlags];
    v29 = [v28 isFeatureEnabled:8];

    if (v29)
    {
      [v45 clearBackgroundColorInUpdates:v46 forContact:v11];
    }

    v30 = v46;
LABEL_35:
  }

  return v30;
}

+ (void)addSingleValueUpdateTo:(id)a3 forProperty:(id)a4 contact1:(id)a5 contact2:(id)a6
{
  v15 = a3;
  v10 = a4;
  v11 = a6;
  v12 = [v10 CNValueForContact:a5];
  v13 = [v10 CNValueForContact:v11];

  if (![v10 isValue:v12 equalToEmptyEquivalentOrValue:v13] || objc_msgSend(a1, "shouldSaveDuplicateProperty:value1:value2:", v10, v12, v13))
  {
    v14 = [CNContactUpdate updateWithValue:v13 property:v10];
    [v15 addObject:v14];
  }
}

+ (BOOL)shouldSaveDuplicateProperty:(id)a3 value1:(id)a4 value2:(id)a5
{
  v6 = a5;
  v7 = [a3 key];

  if (v7 == @"cropRect")
  {
    [v6 rectValue];
    v8 = !CGRectIsEmpty(v10);
  }

  else
  {
    LOBYTE(v8) = 0;
  }

  return v8;
}

+ (void)addMultiValueUpdateTo:(id)a3 forProperty:(id)a4 contact1:(id)a5 contact2:(id)a6
{
  v34 = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v13 = [v10 key];
  v14 = [v11 valueForKey:v13];

  v15 = [v10 key];
  v16 = [v12 valueForKey:v15];

  v17 = [CNMultiValueDiff diffMultiValue:v14 toMultiValue:v16];
  if (([v17 isEmpty] & 1) == 0)
  {
    v18 = [CNContactUpdate updateMultiValueWithDiff:v17 property:v10];
    v19 = [v11 isUnified];
    v20 = [v12 isUnified];
    if (v19)
    {
      v28 = v9;
      if ((v20 & 1) == 0)
      {
        [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:@"A contact and its snapshot should both be unified."];
      }

      v27 = v18;
      [v18 diff];
      v29 = 0u;
      v30 = 0u;
      v31 = 0u;
      v26 = v32 = 0u;
      v21 = [v26 updates];
      v22 = [v21 countByEnumeratingWithState:&v29 objects:v33 count:16];
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
              objc_enumerationMutation(v21);
            }

            [*(*(&v29 + 1) + 8 * v25++) setIgnoreIdentifiers:1];
          }

          while (v23 != v25);
          v23 = [v21 countByEnumeratingWithState:&v29 objects:v33 count:16];
        }

        while (v23);
      }

      v18 = v27;
      v9 = v28;
    }

    else if (v20)
    {
      [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:@"A contact and its snapshot should both be non-unified."];
    }

    [v9 addObject:v18];
  }
}

+ (void)cleanOrphanedCropUpdates:(id)a3 withContact1:(id)a4 contact2:(id)a5
{
  v16 = a3;
  v7 = a4;
  v8 = a5;
  v9 = [v16 _cn_firstObjectPassingTest:&__block_literal_global_17_1];
  if (v9)
  {
    if (([v16 _cn_any:&__block_literal_global_19] & 1) == 0)
    {
      v10 = [v9 property];
      v11 = [v9 property];
      v12 = [v11 CNValueForContact:v7];
      v13 = [v9 property];
      v14 = [v13 CNValueForContact:v8];
      v15 = [v10 isValue:v12 equalToEmptyEquivalentOrValue:v14];

      if (v15)
      {
        [v16 removeObject:v9];
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

+ (void)clearBackgroundColorInUpdates:(id)a3 forContact:(id)a4
{
  v16 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [v6 _cn_firstObjectPassingTest:&__block_literal_global_21];
  if (!v8)
  {
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __68__CNCalculatesContactDiff_clearBackgroundColorInUpdates_forContact___block_invoke_2;
    v13[3] = &__block_descriptor_40_e8_B16__0_8l;
    v13[4] = a1;
    if ([v6 _cn_any:v13])
    {
      v9 = +[CN imageBackgroundColorsDataDescription];
      v10 = [CNContactUpdate updateWithValue:0 property:v9];

      [v6 addObject:v10];
      v11 = [objc_opt_class() imageMetadataLog];
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v12 = [v7 identifier];
        *buf = 138543362;
        v15 = v12;
        _os_log_impl(&dword_1954A0000, v11, OS_LOG_TYPE_DEFAULT, "Cleared image background colors for contact identifier %{public}@", buf, 0xCu);
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