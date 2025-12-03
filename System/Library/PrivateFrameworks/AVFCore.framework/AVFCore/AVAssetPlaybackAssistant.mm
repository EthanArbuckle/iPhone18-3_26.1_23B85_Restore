@interface AVAssetPlaybackAssistant
+ (AVAssetPlaybackAssistant)assetPlaybackAssistantWithAsset:(AVAsset *)asset;
- (AVAssetPlaybackAssistant)initWithAsset:(id)asset;
- (id)_playbackConfigurationOptions;
- (void)dealloc;
- (void)loadPlaybackConfigurationOptionsWithCompletionHandler:(void *)completionHandler;
@end

@implementation AVAssetPlaybackAssistant

- (AVAssetPlaybackAssistant)initWithAsset:(id)asset
{
  v6.receiver = self;
  v6.super_class = AVAssetPlaybackAssistant;
  v4 = [(AVAssetPlaybackAssistant *)&v6 init];
  if (v4)
  {
    v4->_asset = asset;
  }

  return v4;
}

+ (AVAssetPlaybackAssistant)assetPlaybackAssistantWithAsset:(AVAsset *)asset
{
  v3 = [[AVAssetPlaybackAssistant alloc] initWithAsset:asset];

  return v3;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = AVAssetPlaybackAssistant;
  [(AVAssetPlaybackAssistant *)&v3 dealloc];
}

- (id)_playbackConfigurationOptions
{
  v115 = *MEMORY[0x1E69E9840];
  objc_opt_class();
  selfCopy = self;
  if ((objc_opt_isKindOfClass() & 1) != 0 && (v107 = 0u, v108 = 0u, v105 = 0u, v106 = 0u, obj = -[AVAsset variants](self->_asset, "variants"), (v81 = [obj countByEnumeratingWithState:&v105 objects:v114 count:16]) != 0))
  {
    v3 = 0;
    v4 = 0;
    v5 = 0;
    v79 = *v106;
    do
    {
      for (i = 0; i != v81; ++i)
      {
        v7 = v5;
        if (*v106 != v79)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v105 + 1) + 8 * i);
        v101 = 0u;
        v102 = 0u;
        v103 = 0u;
        v104 = 0u;
        v9 = [-[__CFString videoAttributes](v8 "videoAttributes")];
        v10 = [v9 countByEnumeratingWithState:&v101 objects:v113 count:16];
        if (v10)
        {
          v11 = v10;
          extensionKey = v8;
          v83 = i;
          v12 = v4;
          v13 = 0;
          v14 = 0;
          v15 = *v102;
          do
          {
            for (j = 0; j != v11; ++j)
            {
              if (*v102 != v15)
              {
                objc_enumerationMutation(v9);
              }

              v17 = *(*(&v101 + 1) + 8 * j);
              v13 |= [v17 stereoViewComponents] == 3;
              v14 |= [v17 packingType] == 1852796517;
              v3 |= [v17 projectionType] != 1919247220;
            }

            v11 = [v9 countByEnumeratingWithState:&v101 objects:v113 count:16];
          }

          while (v11);
          if (v13 & v14)
          {
            v99 = 0u;
            v100 = 0u;
            v97 = 0u;
            v98 = 0u;
            v18 = [-[__CFString videoAttributes](extensionKey "videoAttributes")];
            v19 = [v18 countByEnumeratingWithState:&v97 objects:v112 count:16];
            if (v19)
            {
              v20 = v19;
              v21 = *v98;
              do
              {
                for (k = 0; k != v20; ++k)
                {
                  if (*v98 != v21)
                  {
                    objc_enumerationMutation(v18);
                  }

                  v23 = isSupportedStereoMultiviewCodec([*(*(&v97 + 1) + 8 * k) unsignedIntValue]);
                  v12 = v23 | v12;
                  v7 = v23 | v7;
                }

                v20 = [v18 countByEnumeratingWithState:&v97 objects:v112 count:16];
              }

              while (v20);
            }
          }

          v4 = v12;
          if ((v12 | v13 ^ 1))
          {
            v5 = v7;
          }

          else
          {
            v5 = v14 ^ 1 | v7;
          }

          i = v83;
        }
      }

      v81 = [obj countByEnumeratingWithState:&v105 objects:v114 count:16];
    }

    while (v81);
  }

  else
  {
    v3 = 0;
    v4 = 0;
    v5 = 0;
  }

  v95 = 0u;
  v96 = 0u;
  v93 = 0u;
  v94 = 0u;
  v62 = [(AVAsset *)selfCopy->_asset tracksWithMediaType:@"vide"];
  v64 = [(NSArray *)v62 countByEnumeratingWithState:&v93 objects:v111 count:16];
  v24 = 0;
  if (v64)
  {
    v63 = *v94;
    v25 = *MEMORY[0x1E6962788];
    v26 = *MEMORY[0x1E695E4D0];
    extensionKeya = *MEMORY[0x1E6962790];
    obja = *MEMORY[0x1E69627D0];
    v71 = *MEMORY[0x1E69627F0];
    v66 = *MEMORY[0x1E69627F8];
    v74 = *MEMORY[0x1E69627B0];
    v70 = *MEMORY[0x1E69627E8];
    v69 = *MEMORY[0x1E6960068];
    v68 = *MEMORY[0x1E69600B0];
    v67 = *MEMORY[0x1E6960060];
    do
    {
      v27 = 0;
      do
      {
        if (*v94 != v63)
        {
          objc_enumerationMutation(v62);
        }

        v65 = v27;
        formatDescriptions = [*(*(&v93 + 1) + 8 * v27) formatDescriptions];
        v89 = 0u;
        v90 = 0u;
        v91 = 0u;
        v92 = 0u;
        v72 = formatDescriptions;
        v82 = [formatDescriptions countByEnumeratingWithState:&v89 objects:v110 count:16];
        if (v82)
        {
          v80 = *v90;
          do
          {
            v29 = 0;
            do
            {
              if (*v90 != v80)
              {
                objc_enumerationMutation(v72);
              }

              v30 = *(*(&v89 + 1) + 8 * v29);
              if (v30)
              {
                Extension = CMFormatDescriptionGetExtension(*(*(&v89 + 1) + 8 * v29), v25);
                v32 = CMFormatDescriptionGetExtension(v30, extensionKeya);
                v33 = Extension == v26 && v32 == v26;
                v34 = v33;
                v84 = v34;
                MediaSubType = CMFormatDescriptionGetMediaSubType(v30);
                v36 = CMFormatDescriptionGetExtension(v30, obja);
                if (v36)
                {
                  v37 = v36;
                  if ([v36 isEqual:v71] || (objc_msgSend(v37, "isEqual:", v66) & 1) != 0)
                  {
                    v38 = v84;
                    goto LABEL_54;
                  }
                }

                if (isSupportedStereoMultiviewCodec(MediaSubType))
                {
                  v38 = FigVideoFormatDescriptionContainsStereoMultiviewVideo() != 0;
                  v4 = v38 | v4;
LABEL_54:
                  v5 = v38 | v5;
                }

                v39 = CMFormatDescriptionGetExtension(v30, v74);
                v40 = v39;
                if (v39)
                {
                  v41 = [v39 isEqual:v70];
                  if (v4)
                  {
                    goto LABEL_57;
                  }
                }

                else
                {
                  v41 = 1;
                  if (v4)
                  {
LABEL_57:
                    v73 = CMFormatDescriptionGetExtension(v30, v69);
                    v42 = v26;
                    v43 = v25;
                    v44 = v3;
                    v45 = v5;
                    v46 = v4;
                    v47 = CMFormatDescriptionGetExtension(v30, v68);
                    v48 = (CMFormatDescriptionGetExtension(v30, v67) != 0) & v41;
                    v33 = v47 == 0;
                    v4 = v46;
                    v5 = v45;
                    v3 = v44;
                    v25 = v43;
                    v26 = v42;
                    if (v33)
                    {
                      v48 = 0;
                    }

                    if (!v73)
                    {
                      v48 = 0;
                    }

                    if (v84)
                    {
                      v24 = v48;
                    }

                    else
                    {
                      v24 = 0;
                    }
                  }
                }

                if (v40)
                {
                  v3 = v41 ^ 1;
                }
              }

              ++v29;
            }

            while (v82 != v29);
            v49 = [v72 countByEnumeratingWithState:&v89 objects:v110 count:16];
            v82 = v49;
          }

          while (v49);
        }

        v27 = v65 + 1;
      }

      while (v65 + 1 != v64);
      v64 = [(NSArray *)v62 countByEnumeratingWithState:&v93 objects:v111 count:16];
    }

    while (v64);
  }

  metadata = [(AVAsset *)selfCopy->_asset metadata];
  if ([(NSArray *)metadata count])
  {
    v51 = [AVMetadataItem metadataItemsFromArray:metadata filteredByIdentifier:@"mdta/com.apple.private.content-type"];
    if ([(NSArray *)v51 count]&& (v87 = 0u, v88 = 0u, v85 = 0u, v86 = 0u, (v52 = [(NSArray *)v51 countByEnumeratingWithState:&v85 objects:v109 count:16]) != 0))
    {
      v53 = v52;
      v54 = *v86;
      while (2)
      {
        for (m = 0; m != v53; ++m)
        {
          if (*v86 != v54)
          {
            objc_enumerationMutation(v51);
          }

          if ([objc_msgSend(*(*(&v85 + 1) + 8 * m) "stringValue")])
          {
            v56 = 1;
            goto LABEL_87;
          }
        }

        v53 = [(NSArray *)v51 countByEnumeratingWithState:&v85 objects:v109 count:16];
        v56 = 0;
        if (v53)
        {
          continue;
        }

        break;
      }
    }

    else
    {
      v56 = 0;
    }

LABEL_87:
    if ([(NSArray *)[AVMetadataItem metadataItemsFromArray:? filteredByIdentifier:?]
    {
      v57 = 1;
    }

    else
    {
      v57 = v56;
    }
  }

  else
  {
    v57 = 0;
  }

  array = [MEMORY[0x1E695DF70] array];
  v59 = array;
  if (v5)
  {
    [array addObject:@"AVAssetPlaybackConfigurationOptionStereoVideo"];
    if ((v4 & 1) == 0)
    {
LABEL_92:
      if (!v57)
      {
        goto LABEL_93;
      }

      goto LABEL_100;
    }
  }

  else if ((v4 & 1) == 0)
  {
    goto LABEL_92;
  }

  [v59 addObject:@"AVAssetPlaybackConfigurationOptionStereoMultiviewVideo"];
  if (!v57)
  {
LABEL_93:
    if ((v24 & 1) == 0)
    {
      goto LABEL_95;
    }

    goto LABEL_94;
  }

LABEL_100:
  [v59 addObject:@"AVAssetPlaybackConfigurationOptionAppleImmersiveVideo"];
  if (v24)
  {
LABEL_94:
    [v59 addObject:@"AVAssetPlaybackConfigurationOptionSpatialVideo"];
  }

LABEL_95:
  if (v3 & _os_feature_enabled_impl())
  {
    [v59 addObject:@"AVAssetPlaybackConfigurationOptionNonRectilinearProjection"];
  }

  return v59;
}

- (void)loadPlaybackConfigurationOptionsWithCompletionHandler:(void *)completionHandler
{
  asset = self->_asset;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __82__AVAssetPlaybackAssistant_loadPlaybackConfigurationOptionsWithCompletionHandler___block_invoke;
  v4[3] = &unk_1E7462650;
  v4[4] = self;
  v4[5] = completionHandler;
  [(AVAsset *)asset loadValuesAsynchronouslyForKeys:&unk_1F0AD36D0 completionHandler:v4];
}

uint64_t __82__AVAssetPlaybackAssistant_loadPlaybackConfigurationOptionsWithCompletionHandler___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) _playbackConfigurationOptions];
  v3 = *(v1 + 16);

  return v3(v1, v2);
}

@end