@interface CNWallpaper(UIAdditions)
+ (double)fontWeightFromFont:()UIAdditions;
+ (id)backgroundColorDescriptionFromConfiguration:()UIAdditions;
+ (id)colorDescriptionFromColor:()UIAdditions;
+ (id)colorFromDescription:()UIAdditions;
+ (id)fontDescriptionFromFont:()UIAdditions;
+ (id)fontFromDescription:()UIAdditions;
+ (id)reducedSizePosterArchiveDataFromData:()UIAdditions posterConfiguration:;
+ (id)wallpaperTypeFromConfiguration:()UIAdditions;
+ (id)wallpaperTypeFromExtensionBundleID:()UIAdditions;
+ (id)wallpaperWithPosterArchiveData:()UIAdditions metadataFromConfiguration:visualFingerprint:contentIsSensitive:;
- (id)backgroundColor;
- (id)font;
- (id)fontColor;
- (id)posterAttributes;
- (id)wallpaperType;
@end

@implementation CNWallpaper(UIAdditions)

- (id)wallpaperType
{
  v2 = objc_opt_class();
  v3 = [a1 extensionBundleID];
  v4 = [v2 wallpaperTypeFromExtensionBundleID:v3];

  return v4;
}

- (id)backgroundColor
{
  v2 = objc_opt_class();
  v3 = [a1 backgroundColorDescription];
  v4 = [v2 colorFromDescription:v3];

  return v4;
}

- (id)fontColor
{
  v2 = *MEMORY[0x1E6996548];
  v3 = [a1 fontColorDescription];
  LOBYTE(v2) = (*(v2 + 16))(v2, v3);

  if (v2)
  {
    v4 = [a1 posterAttributes];
    [v4 titleColor];
  }

  else
  {
    v5 = objc_opt_class();
    v4 = [a1 fontColorDescription];
    [v5 colorFromDescription:v4];
  }
  v6 = ;

  return v6;
}

- (id)font
{
  v2 = *MEMORY[0x1E6996548];
  v3 = [a1 fontDescription];
  LOBYTE(v2) = (*(v2 + 16))(v2, v3);

  if (v2)
  {
    v4 = [a1 posterAttributes];
    [v4 titleFont];
  }

  else
  {
    v5 = objc_opt_class();
    v4 = [a1 fontDescription];
    [v5 fontFromDescription:v4];
  }
  v6 = ;

  return v6;
}

- (id)posterAttributes
{
  v12 = *MEMORY[0x1E69E9840];
  v2 = *MEMORY[0x1E6996540];
  v3 = [a1 posterArchiveData];
  LOBYTE(v2) = (*(v2 + 16))(v2, v3);

  if (v2)
  {
    v4 = 0;
  }

  else
  {
    v5 = [a1 posterArchiveData];
    v9 = 0;
    v4 = [CNPRUISPosterTitleStyleAttributes attributesFromData:v5 error:&v9];
    v6 = v9;

    if (!v4)
    {
      v7 = CNUILogPosters();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v11 = v6;
        _os_log_error_impl(&dword_199A75000, v7, OS_LOG_TYPE_ERROR, "Error getting title style attributes from poster data: %@", buf, 0xCu);
      }
    }
  }

  return v4;
}

+ (id)colorDescriptionFromColor:()UIAdditions
{
  v14[4] = *MEMORY[0x1E69E9840];
  if (a3)
  {
    v11 = 0.0;
    v12 = 0.0;
    v9 = 0.0;
    v10 = 0.0;
    [a3 getRed:&v12 green:&v11 blue:&v10 alpha:&v9];
    v13[0] = *MEMORY[0x1E695CCB0];
    v3 = [MEMORY[0x1E696AD98] numberWithDouble:v12];
    v14[0] = v3;
    v13[1] = *MEMORY[0x1E695CCA0];
    v4 = [MEMORY[0x1E696AD98] numberWithDouble:v11];
    v14[1] = v4;
    v13[2] = *MEMORY[0x1E695CC90];
    v5 = [MEMORY[0x1E696AD98] numberWithDouble:v10];
    v14[2] = v5;
    v13[3] = *MEMORY[0x1E695CC88];
    v6 = [MEMORY[0x1E696AD98] numberWithDouble:v9];
    v14[3] = v6;
    v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:v13 count:4];
  }

  else
  {
    v7 = MEMORY[0x1E695E0F8];
  }

  return v7;
}

+ (id)wallpaperTypeFromExtensionBundleID:()UIAdditions
{
  v3 = a3;
  if ([v3 isEqualToString:@"com.apple.AvatarUI.AvatarPosterExtension"])
  {
    v4 = MEMORY[0x1E695CCE0];
  }

  else if ([v3 isEqualToString:@"com.apple.ContactsUI.MonogramPosterExtension"])
  {
    v4 = MEMORY[0x1E695CCE8];
  }

  else
  {
    [v3 isEqualToString:@"com.apple.PhotosUIPrivate.PhotosPosterProvider"];
    v4 = MEMORY[0x1E695CCF0];
  }

  v5 = *v4;
  v6 = *v4;

  return v5;
}

+ (id)wallpaperTypeFromConfiguration:()UIAdditions
{
  v3 = a3;
  v4 = [[CNPRSPosterConfigurationAttributes alloc] initWithCNConfiguration:v3];

  v5 = [(CNPRSPosterConfigurationAttributes *)v4 extensionIdentifier];
  v6 = [objc_opt_class() wallpaperTypeFromExtensionBundleID:v5];

  return v6;
}

+ (id)fontDescriptionFromFont:()UIAdditions
{
  v14[3] = *MEMORY[0x1E69E9840];
  if (a3)
  {
    v13[0] = *MEMORY[0x1E695CCC8];
    v3 = a3;
    v4 = [v3 fontName];
    v14[0] = v4;
    v13[1] = *MEMORY[0x1E695CCD0];
    v5 = MEMORY[0x1E696AD98];
    [v3 pointSize];
    v6 = [v5 numberWithDouble:?];
    v14[1] = v6;
    v13[2] = *MEMORY[0x1E695CCD8];
    v7 = MEMORY[0x1E696AD98];
    [objc_opt_class() fontWeightFromFont:v3];
    v9 = v8;

    v10 = [v7 numberWithDouble:v9];
    v14[2] = v10;
    v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:v13 count:3];
  }

  else
  {
    v11 = MEMORY[0x1E695E0F8];
  }

  return v11;
}

+ (id)backgroundColorDescriptionFromConfiguration:()UIAdditions
{
  v17 = *MEMORY[0x1E69E9840];
  v14 = 0;
  v3 = a3;
  v4 = [v3 loadUserInfoWithError:&v14];
  v5 = v14;
  if ((*(*MEMORY[0x1E6996548] + 16))())
  {
    v6 = CNUILogPosters();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v13 = [v5 localizedDescription];
      *buf = 138412290;
      v16 = v13;
      _os_log_error_impl(&dword_199A75000, v6, OS_LOG_TYPE_ERROR, "Unable to read background color, failed to load user info from configuration: %@", buf, 0xCu);
    }
  }

  v7 = [objc_opt_class() wallpaperTypeFromConfiguration:v3];

  if (([v7 isEqualToString:*MEMORY[0x1E695CCE8]] && (v8 = &off_1E74DEF10, +[CNMonogramPosterConfigurationReader canReadConfiguration](_TtC10ContactsUI35CNMonogramPosterConfigurationReader, "canReadConfiguration")) || objc_msgSend(v7, "isEqualToString:", *MEMORY[0x1E695CCE0]) && (v8 = off_1E74DEF08, +[CNMemojiPosterConfigurationReader canReadConfiguration](_TtC10ContactsUI33CNMemojiPosterConfigurationReader, "canReadConfiguration"))) && (v9 = objc_msgSend(objc_alloc(*v8), "initWithPosterConfigurationUserInfo:", v4), objc_msgSend(v9, "backgroundColor"), v10 = objc_claimAutoreleasedReturnValue(), v9, v10))
  {
    v11 = [objc_opt_class() colorDescriptionFromColor:v10];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

+ (id)wallpaperWithPosterArchiveData:()UIAdditions metadataFromConfiguration:visualFingerprint:contentIsSensitive:
{
  v7 = a4;
  v8 = a3;
  v9 = [[CNPRSPosterConfigurationAttributes alloc] initWithCNConfiguration:v7];
  v10 = [CNPRUISPosterTitleStyleAttributes attributesForCNConfiguration:v7];
  v11 = objc_alloc(MEMORY[0x1E695CFC8]);
  v12 = objc_opt_class();
  v13 = [v10 titleFont];
  v14 = [v12 fontDescriptionFromFont:v13];
  v15 = objc_opt_class();
  v16 = [v10 titleColor];
  v17 = [v15 colorDescriptionFromColor:v16];
  v18 = [objc_opt_class() backgroundColorDescriptionFromConfiguration:v7];

  v19 = [(CNPRSPosterConfigurationAttributes *)v9 extensionIdentifier];
  LOBYTE(v22) = a6;
  v20 = [v11 initWithPosterArchiveData:v8 fontDescription:v14 fontColorDescription:v17 backgroundColorDescription:v18 extensionBundleID:v19 vertical:objc_msgSend(v10 contentIsSensitive:{"preferredTitleLayout") == 1, v22}];

  return v20;
}

+ (id)colorFromDescription:()UIAdditions
{
  v3 = a3;
  v4 = [v3 objectForKeyedSubscript:*MEMORY[0x1E695CC88]];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = &unk_1F0D4B3D8;
  }

  v7 = v6;

  v8 = [v3 objectForKeyedSubscript:*MEMORY[0x1E695CCC0]];
  v9 = v8;
  if (v8)
  {
    v10 = MEMORY[0x1E69DC888];
    [v8 floatValue];
    v12 = v11;
    [v7 floatValue];
    v14 = [v10 colorWithWhite:v12 alpha:v13];
  }

  else
  {
    v15 = [v3 objectForKeyedSubscript:*MEMORY[0x1E695CCA8]];
    if (v15)
    {
      v16 = [v3 objectForKeyedSubscript:*MEMORY[0x1E695CCB8]];
      v17 = v16;
      if (v16)
      {
        v18 = v16;
      }

      else
      {
        v18 = &unk_1F0D4B3D8;
      }

      v19 = v18;

      v20 = [v3 objectForKeyedSubscript:*MEMORY[0x1E695CC98]];
      v21 = v20;
      if (v20)
      {
        v22 = v20;
      }

      else
      {
        v22 = &unk_1F0D4B3D8;
      }

      v23 = v22;

      v24 = MEMORY[0x1E69DC888];
      [v15 floatValue];
      v26 = v25;
      [v19 floatValue];
      v28 = v27;
      [v23 floatValue];
      v30 = v29;
      [v7 floatValue];
      v32 = v31;

      v14 = [v24 colorWithHue:v26 saturation:v28 brightness:v30 alpha:v32];
    }

    else
    {
      v33 = [v3 objectForKeyedSubscript:*MEMORY[0x1E695CCB0]];
      v34 = v33;
      if (v33)
      {
        v35 = v33;
      }

      else
      {
        v35 = &unk_1F0D4B3D8;
      }

      v19 = v35;

      v36 = [v3 objectForKeyedSubscript:*MEMORY[0x1E695CCA0]];
      v37 = v36;
      if (v36)
      {
        v38 = v36;
      }

      else
      {
        v38 = &unk_1F0D4B3D8;
      }

      v39 = v38;

      v40 = [v3 objectForKeyedSubscript:*MEMORY[0x1E695CC90]];
      v41 = v40;
      if (v40)
      {
        v42 = v40;
      }

      else
      {
        v42 = &unk_1F0D4B3D8;
      }

      v43 = v42;

      v44 = MEMORY[0x1E69DC888];
      [v19 floatValue];
      v46 = v45;
      [v39 floatValue];
      v48 = v47;
      [v43 floatValue];
      v50 = v49;
      [v7 floatValue];
      v52 = v51;

      v14 = [v44 colorWithRed:v46 green:v48 blue:v50 alpha:v52];
    }
  }

  return v14;
}

+ (double)fontWeightFromFont:()UIAdditions
{
  v3 = [a3 fontDescriptor];
  v4 = [v3 objectForKey:*MEMORY[0x1E69658F8]];

  v5 = [MEMORY[0x1E696AD98] numberWithDouble:2003265650.0];
  v6 = [v4 objectForKey:v5];

  [v6 floatValue];
  v8 = v7;

  return v8;
}

+ (id)fontFromDescription:()UIAdditions
{
  v28[1] = *MEMORY[0x1E69E9840];
  v3 = *MEMORY[0x1E695CCD0];
  v4 = a3;
  v5 = [v4 objectForKeyedSubscript:v3];
  v6 = v5;
  v7 = &unk_1F0D4B4A8;
  if (v5)
  {
    v7 = v5;
  }

  v8 = v7;

  v9 = [v4 objectForKeyedSubscript:*MEMORY[0x1E695CCC8]];
  v10 = [v4 objectForKeyedSubscript:*MEMORY[0x1E695CCD8]];

  if (v9 && [(__CFString *)v9 length])
  {
    v11 = CTFontCreateWithNameAndOptions(v9, 12.0, 0, 0x20400uLL);
    v27 = *MEMORY[0x1E69658F8];
    v12 = [MEMORY[0x1E696AD98] numberWithDouble:2003265650.0];
    v25 = v12;
    v26 = v10;
    v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v26 forKeys:&v25 count:1];
    v28[0] = v13;
    v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v28 forKeys:&v27 count:1];

    v15 = [(__CTFont *)v11 fontDescriptor];
    v16 = [v15 fontDescriptorByAddingAttributes:v14];

    v17 = MEMORY[0x1E69DB878];
    [v8 floatValue];
    v19 = [v17 fontWithDescriptor:v16 size:v18];
  }

  else
  {
    v20 = MEMORY[0x1E69DB878];
    [v8 floatValue];
    v22 = v21;
    [v10 floatValue];
    v19 = [v20 systemFontOfSize:v22 weight:v23];
  }

  return v19;
}

+ (id)reducedSizePosterArchiveDataFromData:()UIAdditions posterConfiguration:
{
  v52 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  if (!(*(*MEMORY[0x1E6996540] + 16))())
  {
    v9 = v6;
    v10 = v9;
    if (v9)
    {
      v7 = 0;
      v11 = v9;
    }

    else
    {
      v47 = 0;
      v11 = [CNPRSPosterArchiver unarchiveCNConfigurationFromData:v5 error:&v47];
      v7 = v47;
      if (!v11)
      {
        v11 = CNUILogPosters();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v51 = v7;
          _os_log_error_impl(&dword_199A75000, v11, OS_LOG_TYPE_ERROR, "Failed to reduce posterArchiveDataSize: failed to unarchive configuration, %@", buf, 0xCu);
        }

        v8 = 0;
LABEL_30:

        goto LABEL_31;
      }
    }

    v12 = [v11 providerBundleIdentifier];
    v13 = [v12 isEqualToString:@"com.apple.PhotosUIPrivate.PhotosPosterProvider"];

    if (v13)
    {
      v33 = v10;
      v34 = v11;
      v35 = v7;
      v36 = v6;
      v37 = v5;
      v14 = [v11 assetDirectory];
      v15 = [MEMORY[0x1E696AC08] defaultManager];
      v38 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v16 = *MEMORY[0x1E695DC30];
      v17 = *MEMORY[0x1E695DB78];
      v49[0] = *MEMORY[0x1E695DC30];
      v49[1] = v17;
      v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:v49 count:2];
      v31 = v15;
      v32 = v14;
      v19 = [v15 enumeratorAtURL:v14 includingPropertiesForKeys:v18 options:4 errorHandler:0];

      v45 = 0u;
      v46 = 0u;
      v43 = 0u;
      v44 = 0u;
      v20 = v19;
      v21 = [v20 countByEnumeratingWithState:&v43 objects:v48 count:16];
      if (v21)
      {
        v22 = v21;
        v23 = *v44;
        while (2)
        {
          for (i = 0; i != v22; ++i)
          {
            if (*v44 != v23)
            {
              objc_enumerationMutation(v20);
            }

            v25 = *(*(&v43 + 1) + 8 * i);
            v42 = 0;
            [v25 getResourceValue:&v42 forKey:v17 error:0];
            v26 = v42;
            if ([v26 BOOLValue])
            {
              v41 = 0;
              [v25 getResourceValue:&v41 forKey:v16 error:0];
              v27 = v41;
              if ([v27 isEqualToString:@"input.segmentation"])
              {
                [v38 addObject:v25];

                goto LABEL_24;
              }

              if ([v27 isEqualToString:@"supplements"])
              {
                [v20 skipDescendants];
              }
            }
          }

          v22 = [v20 countByEnumeratingWithState:&v43 objects:v48 count:16];
          if (v22)
          {
            continue;
          }

          break;
        }
      }

LABEL_24:

      v39[0] = MEMORY[0x1E69E9820];
      v39[1] = 3221225472;
      v39[2] = __85__CNWallpaper_UIAdditions__reducedSizePosterArchiveDataFromData_posterConfiguration___block_invoke;
      v39[3] = &unk_1E74E29A0;
      v28 = v31;
      v40 = v28;
      [v38 enumerateObjectsUsingBlock:v39];
      v11 = v34;
      v29 = [CNPRSPosterArchiver archiveCNConfiguration:v34 error:0];
      v8 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithContentsOfURL:v29];
      [v28 removeItemAtURL:v29 error:0];
      v7 = v35;
      if (!v33)
      {
        [v28 removeItemAtURL:v32 error:0];
      }

      v6 = v36;
      v5 = v37;
    }

    else
    {
      v8 = v5;
    }

    goto LABEL_30;
  }

  v7 = CNUILogPosters();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&dword_199A75000, v7, OS_LOG_TYPE_ERROR, "Failed to reduce posterArchiveDataSize: posterArchiveData is empty.", buf, 2u);
  }

  v8 = 0;
LABEL_31:

  return v8;
}

@end