@interface _MSMessageMediaPayload
+ (id)objectWithItemProviderData:(id)a3 typeIdentifier:(id)a4 error:(id *)a5;
- (BOOL)uriIsUltraExtension;
- (CGRect)sourceFrame;
- (NSURL)mediaURL;
- (UIImage)image;
- (_MSMessageMediaPayload)init;
- (_MSMessageMediaPayload)initWithCoder:(id)a3;
- (_MSMessageMediaPayload)initWithIMSticker:(id)a3;
- (_MSMessageMediaPayload)initWithSticker:(id)a3;
- (id)convertToStickerWithExtensionIdentifier:(id)a3;
- (id)loadDataWithTypeIdentifier:(id)a3 forItemProviderCompletionHandler:(id)a4;
- (void)encodeWithCoder:(id)a3;
- (void)setImage:(id)a3;
- (void)setMediaURL:(id)a3;
@end

@implementation _MSMessageMediaPayload

- (id)convertToStickerWithExtensionIdentifier:(id)a3
{
  v79 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (![(_MSMessageMediaPayload *)self isSticker])
  {
    v10 = 0;
    goto LABEL_49;
  }

  v5 = [(_MSMessageMediaPayload *)self stickerRepresentations];
  v71 = v4;
  if (!v5 || (v6 = v5, [(_MSMessageMediaPayload *)self stickerStoreIdentifier], v7 = objc_claimAutoreleasedReturnValue(), v7, v6, !v7))
  {
    v11 = MEMORY[0x1E696AEC0];
    v12 = [(_MSMessageMediaPayload *)self mediaURL];
    v13 = [v12 path];
    v14 = IMSharedHelperMD5HashOfFileAtPath();
    v15 = [v11 stringWithFormat:@"%@-sticker", v14];

    v16 = [(_MSMessageMediaPayload *)self mediaURL];
    v17 = [v16 pathExtension];

    v70 = v17;
    if (v17)
    {
      v18 = [v15 stringByAppendingPathExtension:v17];

      v15 = v18;
    }

    v19 = [MEMORY[0x1E696AC08] defaultManager];
    v20 = [v19 im_randomTemporaryFileURLWithFileName:v15];

    v72 = v20;
    if (v20 && ([(_MSMessageMediaPayload *)self mediaURL], v21 = objc_claimAutoreleasedReturnValue(), v21, v21))
    {
      v22 = [MEMORY[0x1E696AC08] defaultManager];
      v23 = [(_MSMessageMediaPayload *)self mediaURL];
      v74 = 0;
      v24 = [v22 copyItemAtURL:v23 toURL:v20 error:&v74];
      v25 = v74;

      if (!v24 || !v25)
      {
        goto LABEL_19;
      }

      v26 = ms_defaultLog();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        [_MSMessageMediaPayload convertToStickerWithExtensionIdentifier:];
      }
    }

    else
    {
      v26 = ms_defaultLog();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
      {
        v27 = [(_MSMessageMediaPayload *)self mediaURL];
        *buf = 138412546;
        v76 = v20;
        v77 = 2112;
        v78 = v27;
        _os_log_impl(&dword_1CADE6000, v26, OS_LOG_TYPE_DEFAULT, "_MSMessageMediaPayload: Cannot copy sticker file: %@ to %@, because either the source or destination file URL is nil. This may be expected if the original sticker did not have a file URL", buf, 0x16u);
      }

      v25 = 0;
    }

LABEL_19:
    v28 = v15;
    v29 = v4;
    v67 = v25;
    if (+[_MSPresentationState isRunningInCameraContext])
    {
      v30 = [(_MSMessageMediaPayload *)self mediaFilename];
      if (!v30)
      {
        v31 = [(_MSMessageMediaPayload *)self mediaURL];
        v30 = [v31 lastPathComponent];
      }
    }

    else
    {
      v30 = 0;
    }

    v32 = objc_alloc(MEMORY[0x1E69A82C0]);
    v33 = [(_MSMessageMediaPayload *)self accessibilityLabel];
    v34 = [(_MSMessageMediaPayload *)self accessibilityName];
    v35 = [(_MSMessageMediaPayload *)self searchText];
    v36 = [(_MSMessageMediaPayload *)self sanitizedPrompt];
    v10 = [v32 initWithStickerID:v28 stickerPackID:v29 fileURL:v72 accessibilityLabel:v33 accessibilityName:v34 searchText:v35 sanitizedPrompt:v36 moodCategory:0 stickerName:v30];

    v37 = [(_MSMessageMediaPayload *)self stickerRepresentations];

    if (v37)
    {
      v38 = [(_MSMessageMediaPayload *)self stickerRepresentations];
      [v10 setRepresentations:v38];
    }

    v39 = [(_MSMessageMediaPayload *)self externalURI];

    if (v39)
    {
      v40 = [(_MSMessageMediaPayload *)self externalURI];
      [v10 setExternalURI:v40];
    }

    v41 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
    v42 = [v41 isStickersAppEnabled];

    if (v42 && [(_MSMessageMediaPayload *)self stickerEffectType])
    {
      [v10 setStickerEffectType:{-[_MSMessageMediaPayload stickerEffectType](self, "stickerEffectType")}];
    }

    v4 = v71;
    goto LABEL_33;
  }

  v8 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  v9 = [v8 isClingEnabled];

  if (v9)
  {
    v69 = [(_MSMessageMediaPayload *)self stickerEffectType];
  }

  else
  {
    v69 = -1;
  }

  v68 = objc_alloc(MEMORY[0x1E69A82C0]);
  v73 = [(_MSMessageMediaPayload *)self stickerStoreIdentifier];
  v65 = [v73 UUIDString];
  v43 = [(_MSMessageMediaPayload *)self stickerRepresentations];
  v66 = [(_MSMessageMediaPayload *)self initialFrameIndex];
  v44 = [(_MSMessageMediaPayload *)self externalURI];
  v45 = [(_MSMessageMediaPayload *)self stickerName];
  v64 = [(_MSMessageMediaPayload *)self accessibilityLabel];
  v46 = [(_MSMessageMediaPayload *)self accessibilityName];
  v47 = [(_MSMessageMediaPayload *)self searchText];
  v48 = [(_MSMessageMediaPayload *)self sanitizedPrompt];
  v49 = [(_MSMessageMediaPayload *)self stickerMetadata];
  v10 = [v68 initWithStickerIdentifier:v65 stickerPackID:v4 representations:v43 effectType:v69 initialFrameIndex:v66 externalURI:v44 stickerName:v45 accessibilityLabel:v64 accessibilityName:v46 searchText:v47 sanitizedPrompt:v48 metadata:v49];

LABEL_33:
  v50 = IMBalloonExtensionIDWithSuffix();
  v51 = [v4 isEqualToString:v50];

  if (v51)
  {
    v52 = [(_MSMessageMediaPayload *)self animatedImageCacheURL];
    [v10 setAnimatedImageCacheURLFromExtension:v52];
  }

  v53 = [MEMORY[0x1E69A5AD0] sharedInstance];
  v54 = [v53 balloonPluginForBundleID:v4];

  if (v54)
  {
    v55 = v54;
  }

  else
  {
    v56 = ms_defaultLog();
    if (os_log_type_enabled(v56, OS_LOG_TYPE_ERROR))
    {
      [_MSMessageMediaPayload convertToStickerWithExtensionIdentifier:];
    }

    v55 = self;
  }

  v57 = [(_MSMessageMediaPayload *)v55 attributionInfo];
  v58 = [v57 mutableCopy];

  if (!v58)
  {
    v59 = ms_defaultLog();
    if (os_log_type_enabled(v59, OS_LOG_TYPE_ERROR))
    {
      [_MSMessageMediaPayload convertToStickerWithExtensionIdentifier:];
    }

    Mutable = [MEMORY[0x1E695DF90] dictionary];
    if (!Mutable)
    {
      Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    }

    v58 = Mutable;
  }

  v61 = [v10 accessibilityLabel];
  if (v61)
  {
    CFDictionarySetValue(v58, *MEMORY[0x1E69A6F98], v61);
  }

  v62 = [(__CFDictionary *)v58 copy];
  [v10 setAttributionInfo:v62];

LABEL_49:

  return v10;
}

- (_MSMessageMediaPayload)initWithSticker:(id)a3
{
  v43 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v40.receiver = self;
  v40.super_class = _MSMessageMediaPayload;
  v5 = [(_MSMessageMediaPayload *)&v40 init];
  if (v5)
  {
    v6 = [v4 imageFileURL];
    mediaURL = v5->_mediaURL;
    v5->_mediaURL = v6;

    v8 = [v4 localizedDescription];
    accessibilityLabel = v5->_accessibilityLabel;
    v5->_accessibilityLabel = v8;

    v5->_isSticker = 1;
    if (objc_opt_respondsToSelector())
    {
      v10 = [v4 data];
      data = v5->_data;
      v5->_data = v10;
    }

    v12 = [v4 stickerPackGUID];
    stickerPackGUID = v5->_stickerPackGUID;
    v5->_stickerPackGUID = v12;

    v14 = [v4 representations];
    stickerRepresentations = v5->_stickerRepresentations;
    v5->_stickerRepresentations = v14;

    v16 = [v4 externalURI];
    externalURI = v5->_externalURI;
    v5->_externalURI = v16;

    v18 = [v4 stickerIdentifier];
    stickerStoreIdentifier = v5->_stickerStoreIdentifier;
    v5->_stickerStoreIdentifier = v18;

    v5->_stickerEffectType = [v4 stickerEffectType];
    v20 = [v4 attributionInfo];
    attributionInfo = v5->_attributionInfo;
    v5->_attributionInfo = v20;

    if (!v5->_attributionInfo)
    {
      v22 = ms_defaultLog();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        [_MSMessageMediaPayload initWithSticker:];
      }
    }

    v23 = [v4 animatedImageCacheURL];
    animatedImageCacheURL = v5->_animatedImageCacheURL;
    v5->_animatedImageCacheURL = v23;

    v25 = *MEMORY[0x1E69A6FB0];
    v26 = [(NSDictionary *)v5->_attributionInfo objectForKey:*MEMORY[0x1E69A6FB0]];

    if (!v26)
    {
      if ([(_MSMessageMediaPayload *)v5 uriIsMemoji])
      {
        v27 = ms_defaultLog();
        if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_1CADE6000, v27, OS_LOG_TYPE_DEFAULT, "_MSMessageMediaPayload: No bundle ID in attribution info, but inferred the bundle ID to be Memoji. This means the extension didn't set a bundle ID on the attribution info.", buf, 2u);
        }

        v28 = MEMORY[0x1E69A6980];
LABEL_13:
        v29 = *v28;
        if (!v29)
        {
          goto LABEL_25;
        }

        goto LABEL_21;
      }

      if (!IMIsRunningIniMessageAppExtension())
      {
        if (![(_MSMessageMediaPayload *)v5 uriIsUltraExtension])
        {
          goto LABEL_25;
        }

        v39 = ms_defaultLog();
        if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_1CADE6000, v39, OS_LOG_TYPE_DEFAULT, "_MSMessageMediaPayload: No bundle ID in attribution info, but inferred the bundle ID to be StickersUltraExtension. This means the extension didn't set a bundle ID on the attribution info.", buf, 2u);
        }

        v28 = MEMORY[0x1E69A68F8];
        goto LABEL_13;
      }

      v30 = [MEMORY[0x1E696AAE8] mainBundle];
      v29 = [v30 bundleIdentifier];
      if (v29)
      {
        v31 = ms_defaultLog();
        if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v42 = v29;
          _os_log_impl(&dword_1CADE6000, v31, OS_LOG_TYPE_DEFAULT, "MSMessageMediaPayload: No bundle ID in attribution info, but inferred the bundle ID from 3rd party extension: %@", buf, 0xCu);
        }

        v32 = v29;
      }

      if (v29)
      {
LABEL_21:
        v33 = v5->_attributionInfo;
        if (v33)
        {
          v34 = [(NSDictionary *)v33 mutableCopy];
        }

        else
        {
          v34 = [MEMORY[0x1E695DF90] dictionary];
        }

        v35 = v34;
        [v34 setObject:v29 forKey:v25];
        v36 = [v35 copy];
        v37 = v5->_attributionInfo;
        v5->_attributionInfo = v36;
      }
    }
  }

LABEL_25:

  return v5;
}

- (_MSMessageMediaPayload)initWithIMSticker:(id)a3
{
  v52 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v49.receiver = self;
  v49.super_class = _MSMessageMediaPayload;
  v5 = [(_MSMessageMediaPayload *)&v49 init];
  if (v5)
  {
    v6 = [v4 fileURL];
    mediaURL = v5->_mediaURL;
    v5->_mediaURL = v6;

    v8 = [v4 accessibilityLabel];
    accessibilityLabel = v5->_accessibilityLabel;
    v5->_accessibilityLabel = v8;

    v10 = [v4 accessibilityName];
    accessibilityName = v5->_accessibilityName;
    v5->_accessibilityName = v10;

    v12 = [v4 searchText];
    searchText = v5->_searchText;
    v5->_searchText = v12;

    v14 = [v4 sanitizedPrompt];
    sanitizedPrompt = v5->_sanitizedPrompt;
    v5->_sanitizedPrompt = v14;

    v5->_isSticker = 1;
    v16 = [v4 stickerPackGUID];
    stickerPackGUID = v5->_stickerPackGUID;
    v5->_stickerPackGUID = v16;

    v18 = [v4 representations];
    stickerRepresentations = v5->_stickerRepresentations;
    v5->_stickerRepresentations = v18;

    v20 = [v4 externalURI];
    externalURI = v5->_externalURI;
    v5->_externalURI = v20;

    v22 = objc_alloc(MEMORY[0x1E696AFB0]);
    v23 = [v4 uniqueID];
    v24 = [v22 initWithUUIDString:v23];
    stickerStoreIdentifier = v5->_stickerStoreIdentifier;
    v5->_stickerStoreIdentifier = v24;

    v5->_stickerEffectType = [v4 stickerEffectType];
    v26 = [v4 attributionInfo];
    v27 = [v26 copy];
    attributionInfo = v5->_attributionInfo;
    v5->_attributionInfo = v27;

    if (!v5->_attributionInfo)
    {
      v29 = ms_defaultLog();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
      {
        [_MSMessageMediaPayload initWithSticker:];
      }
    }

    v30 = [v4 ballonBundleID];
    v31 = [v30 containsString:*MEMORY[0x1E69A69F0]];

    if ((v31 & 1) == 0)
    {
      v32 = [v4 animatedImageCacheURLFromExtension];
      animatedImageCacheURL = v5->_animatedImageCacheURL;
      v5->_animatedImageCacheURL = v32;
    }

    v34 = *MEMORY[0x1E69A6FB0];
    v35 = [(NSDictionary *)v5->_attributionInfo objectForKey:*MEMORY[0x1E69A6FB0]];

    if (!v35)
    {
      if ([(_MSMessageMediaPayload *)v5 uriIsMemoji])
      {
        v36 = ms_defaultLog();
        if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_1CADE6000, v36, OS_LOG_TYPE_DEFAULT, "_MSMessageMediaPayload: No bundle ID in attribution info, but inferred the bundle ID to be Memoji. This means the extension didn't set a bundle ID on the attribution info.", buf, 2u);
        }

        v37 = MEMORY[0x1E69A6980];
LABEL_13:
        v38 = *v37;
        if (!v38)
        {
          goto LABEL_25;
        }

        goto LABEL_21;
      }

      if (!IMIsRunningIniMessageAppExtension())
      {
        if (![(_MSMessageMediaPayload *)v5 uriIsUltraExtension])
        {
          goto LABEL_25;
        }

        v48 = ms_defaultLog();
        if (os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_1CADE6000, v48, OS_LOG_TYPE_DEFAULT, "_MSMessageMediaPayload: No bundle ID in attribution info, but inferred the bundle ID to be StickersUltraExtension. This means the extension didn't set a bundle ID on the attribution info.", buf, 2u);
        }

        v37 = MEMORY[0x1E69A68F8];
        goto LABEL_13;
      }

      v39 = [MEMORY[0x1E696AAE8] mainBundle];
      v38 = [v39 bundleIdentifier];
      if (v38)
      {
        v40 = ms_defaultLog();
        if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v51 = v38;
          _os_log_impl(&dword_1CADE6000, v40, OS_LOG_TYPE_DEFAULT, "MSMessageMediaPayload: No bundle ID in attribution info, but inferred the bundle ID from 3rd party extension: %@", buf, 0xCu);
        }

        v41 = v38;
      }

      if (v38)
      {
LABEL_21:
        v42 = v5->_attributionInfo;
        if (v42)
        {
          v43 = [(NSDictionary *)v42 mutableCopy];
        }

        else
        {
          v43 = [MEMORY[0x1E695DF90] dictionary];
        }

        v44 = v43;
        [v43 setObject:v38 forKey:v34];
        v45 = [v44 copy];
        v46 = v5->_attributionInfo;
        v5->_attributionInfo = v45;
      }
    }
  }

LABEL_25:

  return v5;
}

- (BOOL)uriIsUltraExtension
{
  v13 = *MEMORY[0x1E69E9840];
  if (self->_externalURI)
  {
    v10 = 0u;
    v11 = 0u;
    v8 = 0u;
    v9 = 0u;
    v3 = [&unk_1F4AC70A8 countByEnumeratingWithState:&v8 objects:v12 count:16];
    if (v3)
    {
      v4 = v3;
      v5 = *v9;
      while (2)
      {
        for (i = 0; i != v4; ++i)
        {
          if (*v9 != v5)
          {
            objc_enumerationMutation(&unk_1F4AC70A8);
          }

          if ([(NSString *)self->_externalURI hasPrefix:*(*(&v8 + 1) + 8 * i)])
          {
            LOBYTE(v3) = 1;
            return v3;
          }
        }

        v4 = [&unk_1F4AC70A8 countByEnumeratingWithState:&v8 objects:v12 count:16];
        LOBYTE(v3) = 0;
        if (v4)
        {
          continue;
        }

        break;
      }
    }
  }

  else
  {
    LOBYTE(v3) = 0;
  }

  return v3;
}

- (_MSMessageMediaPayload)initWithCoder:(id)a3
{
  v60[6] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v57.receiver = self;
  v57.super_class = _MSMessageMediaPayload;
  v5 = [(_MSMessageMediaPayload *)&v57 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"mediaType"];
    v7 = *(v5 + 4);
    *(v5 + 4) = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"mediaData"];
    v9 = *(v5 + 7);
    *(v5 + 7) = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"mediaFilename"];
    v11 = *(v5 + 8);
    *(v5 + 8) = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"text"];
    v13 = *(v5 + 6);
    *(v5 + 6) = v12;

    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"data"];
    v15 = *(v5 + 9);
    *(v5 + 9) = v14;

    v16 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"gpRecipeData"];
    v17 = *(v5 + 17);
    *(v5 + 17) = v16;

    v18 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"accessibilityLabel"];
    v19 = *(v5 + 10);
    *(v5 + 10) = v18;

    v20 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"accessibilityName"];
    v21 = *(v5 + 11);
    *(v5 + 11) = v20;

    v22 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"searchText"];
    v23 = *(v5 + 12);
    *(v5 + 12) = v22;

    v24 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"sanitizedPrompt"];
    v25 = *(v5 + 13);
    *(v5 + 13) = v24;

    v26 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"stickerPackGUID"];
    v27 = *(v5 + 15);
    *(v5 + 15) = v26;

    v5[8] = [v4 decodeBoolForKey:@"isSticker"];
    v28 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"sourceFrame"];
    v29 = v28;
    if (v28)
    {
      [v28 CGRectValue];
      *(v5 + 25) = v30;
      *(v5 + 26) = v31;
      *(v5 + 27) = v32;
      *(v5 + 28) = v33;
    }

    else
    {
      v34 = *(MEMORY[0x1E695F058] + 16);
      *(v5 + 200) = *MEMORY[0x1E695F058];
      *(v5 + 216) = v34;
    }

    v35 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"initialFrameIndex"];
    *(v5 + 18) = [v35 unsignedIntegerValue];
    v36 = NSClassFromString(&cfstr_Uistickerrepre.isa);
    if (v36)
    {
      v37 = [v4 decodeArrayOfObjectsOfClass:v36 forKey:@"stickerRepresentations"];
      v38 = *(v5 + 19);
      *(v5 + 19) = v37;
    }

    v39 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"externalURI"];
    v40 = *(v5 + 20);
    *(v5 + 20) = v39;

    v41 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"stickerStoreIdentifier"];
    v42 = *(v5 + 21);
    *(v5 + 21) = v41;

    v43 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"stickerName"];
    v44 = *(v5 + 22);
    *(v5 + 22) = v43;

    v45 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"attributionInfoData"];
    *(v5 + 5) = [v4 decodeIntForKey:@"stickerEffectType"];
    v46 = MEMORY[0x1E695DFD8];
    v60[0] = objc_opt_class();
    v60[1] = objc_opt_class();
    v60[2] = objc_opt_class();
    v60[3] = objc_opt_class();
    v60[4] = objc_opt_class();
    v60[5] = objc_opt_class();
    v47 = [MEMORY[0x1E695DEC8] arrayWithObjects:v60 count:6];
    v48 = [v46 setWithArray:v47];

    if (objc_opt_respondsToSelector())
    {
      v56 = 0;
      v49 = [MEMORY[0x1E696ACD0] _strictlyUnarchivedObjectOfClasses:v48 fromData:v45 error:&v56];
      v50 = v56;
    }

    else
    {
      v49 = [MEMORY[0x1E696ACD0] unarchivedObjectOfClasses:v48 fromData:v45 error:0];
      v50 = 0;
    }

    v51 = *(v5 + 14);
    *(v5 + 14) = v49;

    v52 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"animatedImageCacheURL"];
    v53 = *(v5 + 24);
    *(v5 + 24) = v52;

    if (v50)
    {
      v54 = ms_defaultLog();
      if (os_log_type_enabled(v54, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v59 = v50;
        _os_log_impl(&dword_1CADE6000, v54, OS_LOG_TYPE_DEFAULT, "strict-decoding 011 exception/error after unarchivedObjectOfClasses: [%@]", buf, 0xCu);
      }
    }
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v15 = a3;
  v4 = self->_mediaData;
  v5 = self->_mediaType;
  v6 = self->_mediaFilename;
  if (v4)
  {
    v7 = v5 == 0;
  }

  else
  {
    v7 = 1;
  }

  if (!v7)
  {
    goto LABEL_11;
  }

  image = self->_image;
  if (image)
  {
    v9 = [(UIImage *)image __ms_PNGData];

    v10 = *MEMORY[0x1E6963860];
    goto LABEL_12;
  }

  mediaURL = self->_mediaURL;
  if (mediaURL)
  {
    v9 = [MEMORY[0x1E695DEF0] dataWithContentsOfURL:mediaURL options:8 error:0];

    v10 = [(NSURL *)self->_mediaURL __ms_UTI];

    if (!v6)
    {
      v6 = [(NSURL *)self->_mediaURL lastPathComponent];
    }
  }

  else
  {
LABEL_11:
    v9 = v4;
    v10 = v5;
  }

LABEL_12:
  [v15 encodeObject:v10 forKey:@"mediaType"];
  [v15 encodeObject:v9 forKey:@"mediaData"];
  [v15 encodeObject:v6 forKey:@"mediaFilename"];
  [v15 encodeObject:self->_text forKey:@"text"];
  [v15 encodeObject:self->_data forKey:@"data"];
  [v15 encodeObject:self->_generativePlaygroundRecipeData forKey:@"gpRecipeData"];
  [v15 encodeObject:self->_accessibilityLabel forKey:@"accessibilityLabel"];
  [v15 encodeObject:self->_accessibilityName forKey:@"accessibilityName"];
  [v15 encodeObject:self->_searchText forKey:@"searchText"];
  [v15 encodeObject:self->_sanitizedPrompt forKey:@"sanitizedPrompt"];
  [v15 encodeObject:self->_stickerPackGUID forKey:@"stickerPackGUID"];
  [v15 encodeBool:self->_isSticker forKey:@"isSticker"];
  v12 = [MEMORY[0x1E696B098] valueWithCGRect:{self->_sourceFrame.origin.x, self->_sourceFrame.origin.y, self->_sourceFrame.size.width, self->_sourceFrame.size.height}];
  [v15 encodeObject:v12 forKey:@"sourceFrame"];

  v13 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_initialFrameIndex];
  [v15 encodeObject:v13 forKey:@"initialFrameIndex"];

  [v15 encodeObject:self->_stickerRepresentations forKey:@"stickerRepresentations"];
  [v15 encodeObject:self->_externalURI forKey:@"externalURI"];
  [v15 encodeObject:self->_stickerStoreIdentifier forKey:@"stickerStoreIdentifier"];
  [v15 encodeObject:self->_stickerName forKey:@"stickerName"];
  [v15 encodeObject:self->_animatedImageCacheURL forKey:@"animatedImageCacheURL"];
  v14 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:self->_attributionInfo requiringSecureCoding:1 error:0];
  [v15 encodeObject:v14 forKey:@"attributionInfoData"];

  [v15 encodeInteger:self->_stickerEffectType forKey:@"stickerEffectType"];
}

- (_MSMessageMediaPayload)init
{
  v3.receiver = self;
  v3.super_class = _MSMessageMediaPayload;
  return [(_MSMessageMediaPayload *)&v3 init];
}

- (void)setMediaURL:(id)a3
{
  v4 = a3;
  mediaType = self->_mediaType;
  self->_mediaType = 0;

  mediaData = self->_mediaData;
  self->_mediaData = 0;

  mediaURL = self->_mediaURL;
  self->_mediaURL = v4;
}

- (NSURL)mediaURL
{
  mediaURL = self->_mediaURL;
  if (!mediaURL)
  {
    if (self->_mediaData && self->_mediaType)
    {
      v4 = +[_MSTempFileManager sharedInstance];
      v5 = [v4 writeTemporaryFileWithData:self->_mediaData type:self->_mediaType];
      v6 = self->_mediaURL;
      self->_mediaURL = v5;

      mediaURL = self->_mediaURL;
    }

    else
    {
      mediaURL = 0;
    }
  }

  return mediaURL;
}

- (void)setImage:(id)a3
{
  v4 = a3;
  mediaType = self->_mediaType;
  self->_mediaType = 0;

  mediaData = self->_mediaData;
  self->_mediaData = 0;

  image = self->_image;
  self->_image = v4;
}

- (UIImage)image
{
  if (!self->_image)
  {
    if (self->_mediaData)
    {
      mediaType = self->_mediaType;
      if (mediaType)
      {
        if (UTTypeConformsTo(mediaType, *MEMORY[0x1E69637F8]))
        {
          v6 = [MEMORY[0x1E69DCAB8] imageWithData:self->_mediaData];
          image = self->_image;
          self->_image = v6;
        }
      }
    }
  }

  v3 = self->_image;

  return v3;
}

- (id)loadDataWithTypeIdentifier:(id)a3 forItemProviderCompletionHandler:(id)a4
{
  v6 = a4;
  if ([a3 isEqualToString:@"com.apple.sticker.mediaPayload"])
  {
    v7 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:self requiringSecureCoding:1 error:0];
    v6[2](v6, v7, 0);
  }

  else
  {
    v7 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A250] code:8675309 userInfo:0];
    (v6)[2](v6, 0, v7);
  }

  return 0;
}

+ (id)objectWithItemProviderData:(id)a3 typeIdentifier:(id)a4 error:(id *)a5
{
  v12 = 0;
  v6 = [MEMORY[0x1E696ACD0] unarchivedObjectOfClass:a1 fromData:a3 error:&v12];
  v7 = v12;
  v8 = v7;
  if (a5 && !v6)
  {
    v9 = v7;
    *a5 = v8;
    v10 = ms_defaultLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      +[_MSMessageMediaPayload objectWithItemProviderData:typeIdentifier:error:];
    }
  }

  return v6;
}

- (CGRect)sourceFrame
{
  x = self->_sourceFrame.origin.x;
  y = self->_sourceFrame.origin.y;
  width = self->_sourceFrame.size.width;
  height = self->_sourceFrame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (void)convertToStickerWithExtensionIdentifier:.cold.1()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)convertToStickerWithExtensionIdentifier:.cold.2()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)convertToStickerWithExtensionIdentifier:.cold.3()
{
  v5 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_0();
  v3 = 2112;
  v4 = v0;
  _os_log_error_impl(&dword_1CADE6000, v1, OS_LOG_TYPE_ERROR, "IMStickerFromPayload: could not generate attribution info for '%@' even after attempting to fall back to using the info on the media payload: %@", v2, 0x16u);
}

+ (void)objectWithItemProviderData:typeIdentifier:error:.cold.1()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

@end