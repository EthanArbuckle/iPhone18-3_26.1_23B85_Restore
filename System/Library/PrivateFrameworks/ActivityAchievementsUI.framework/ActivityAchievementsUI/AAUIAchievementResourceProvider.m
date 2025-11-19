@interface AAUIAchievementResourceProvider
- (AAUIAchievementResourceProvider)init;
- (BOOL)_queue_decompressZipFileAtPath:(id)a3 toDirectory:(id)a4;
- (CGPoint)glyphPositionOffsetScaleForAchievement:(id)a3;
- (id)_assetBundleForAchievement:(id)a3;
- (id)_badgeModelFilenames:(id)a3;
- (id)_cachedModelsPath;
- (id)_compressedBadgeModelPathsForAchievement:(id)a3;
- (id)_modelDirectoryForCompressedModelPaths:(id)a3 andAchievement:(id)a4;
- (id)_modelFilePathsForCompressedModelPaths:(id)a3 andAchievement:(id)a4;
- (id)backSideIconImageForAchievement:(id)a3;
- (id)badgeConfigurationForAchievement:(id)a3;
- (id)badgeModelPathsForAchievement:(id)a3;
- (id)enamelColorForAchievement:(id)a3;
- (id)glyphTexturePathForAchievement:(id)a3;
- (id)metalColorForAchievement:(id)a3;
- (id)stickerURLsForAchievement:(id)a3;
- (id)stickersBundlePathForAchievement:(id)a3;
- (id)texturePathsForAchievement:(id)a3;
@end

@implementation AAUIAchievementResourceProvider

- (AAUIAchievementResourceProvider)init
{
  v6.receiver = self;
  v6.super_class = AAUIAchievementResourceProvider;
  v2 = [(AAUIAchievementResourceProvider *)&v6 init];
  if (v2)
  {
    v3 = HKCreateSerialDispatchQueue();
    queue = v2->_queue;
    v2->_queue = v3;
  }

  return v2;
}

- (id)badgeModelPathsForAchievement:(id)a3
{
  v4 = a3;
  dispatch_assert_queue_not_V2(self->_queue);
  v5 = [(AAUIAchievementResourceProvider *)self _compressedBadgeModelPathsForAchievement:v4];
  v6 = [(AAUIAchievementResourceProvider *)self _modelFilePathsForCompressedModelPaths:v5 andAchievement:v4];
  v7 = [v6 count];
  if (v7 == [v5 count])
  {
    queue = self->_queue;
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __65__AAUIAchievementResourceProvider_badgeModelPathsForAchievement___block_invoke;
    v13[3] = &unk_278C43698;
    v9 = v6;
    v14 = v9;
    v15 = v5;
    v16 = self;
    v17 = v4;
    dispatch_sync(queue, v13);
    v10 = v9;

    v11 = v14;
  }

  else
  {
    v11 = ACHLogAssets();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [(AAUIAchievementResourceProvider *)v4 badgeModelPathsForAchievement:v11];
    }

    v10 = MEMORY[0x277CBEBF8];
  }

  return v10;
}

void __65__AAUIAchievementResourceProvider_badgeModelPathsForAchievement___block_invoke(id *a1)
{
  v29 = *MEMORY[0x277D85DE8];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  obj = a1[4];
  v2 = [obj countByEnumeratingWithState:&v20 objects:v28 count:16];
  if (v2)
  {
    v4 = v2;
    LODWORD(v5) = 0;
    v6 = *v21;
    *&v3 = 138412546;
    v17 = v3;
    do
    {
      v7 = 0;
      v5 = v5;
      do
      {
        if (*v21 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v20 + 1) + 8 * v7);
        v9 = [MEMORY[0x277CCAA00] defaultManager];
        v10 = [v9 fileExistsAtPath:v8];

        if ((v10 & 1) == 0)
        {
          v11 = [a1[5] objectAtIndexedSubscript:v5];
          v12 = [v8 stringByDeletingLastPathComponent];
          if (![a1[6] _queue_decompressZipFileAtPath:v11 toDirectory:v12] || (objc_msgSend(MEMORY[0x277CCAA00], "defaultManager"), v13 = objc_claimAutoreleasedReturnValue(), v14 = objc_msgSend(v13, "fileExistsAtPath:", v8), v13, (v14 & 1) == 0))
          {
            v15 = ACHLogAssets();
            if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
            {
              v18 = [a1[7] template];
              v16 = [v18 uniqueName];
              *buf = v17;
              v25 = v16;
              v26 = 2112;
              v27 = v11;
              _os_log_error_impl(&dword_23E4A3000, v15, OS_LOG_TYPE_ERROR, "Error decompressing model for achievement %@ at path %@", buf, 0x16u);
            }
          }
        }

        ++v5;
        ++v7;
      }

      while (v4 != v7);
      v4 = [obj countByEnumeratingWithState:&v20 objects:v28 count:16];
    }

    while (v4);
  }
}

- (id)texturePathsForAchievement:(id)a3
{
  v38[2] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 textureFilenames];
  v6 = v5;
  v7 = &unk_2850CFBB0;
  if (v5)
  {
    v7 = v5;
  }

  v8 = v7;

  v38[0] = @"png";
  v38[1] = @"png.pvrtc";
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v38 count:2];
  v22 = v4;
  v10 = [(AAUIAchievementResourceProvider *)self _assetBundleForAchievement:v4];
  v11 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  obj = v8;
  v12 = [obj countByEnumeratingWithState:&v29 objects:v37 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v30;
    do
    {
      v15 = 0;
      do
      {
        if (*v30 != v14)
        {
          objc_enumerationMutation(obj);
        }

        v16 = *(*(&v29 + 1) + 8 * v15);
        v26[0] = MEMORY[0x277D85DD0];
        v26[1] = 3221225472;
        v26[2] = __62__AAUIAchievementResourceProvider_texturePathsForAchievement___block_invoke;
        v26[3] = &unk_278C436C0;
        v27 = v10;
        v28 = v16;
        v17 = [v9 hk_map:v26];
        v18 = [v17 hk_firstObjectPassingTest:&__block_literal_global_0];

        if (v18)
        {
          [v11 addObject:v18];
        }

        else
        {
          v19 = ACHLogAssets();
          if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
          {
            v24 = [v22 template];
            v23 = [v24 uniqueName];
            *buf = 138412546;
            v34 = v23;
            v35 = 2112;
            v36 = v16;
            _os_log_error_impl(&dword_23E4A3000, v19, OS_LOG_TYPE_ERROR, "Error loading badge texture for achievement %@ with asset name %@", buf, 0x16u);
          }
        }

        ++v15;
      }

      while (v13 != v15);
      v13 = [obj countByEnumeratingWithState:&v29 objects:v37 count:16];
    }

    while (v13);
  }

  v20 = [v11 copy];

  return v20;
}

uint64_t __62__AAUIAchievementResourceProvider_texturePathsForAchievement___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277CCAA00];
  v3 = a2;
  v4 = [v2 defaultManager];
  v5 = [v4 fileExistsAtPath:v3];

  return v5;
}

- (id)glyphTexturePathForAchievement:(id)a3
{
  v16[2] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 glyphTextureFilename];
  if (v5)
  {
    v16[0] = @"png";
    v16[1] = @"png.pvrtc";
    v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:2];
    v7 = [(AAUIAchievementResourceProvider *)self _assetBundleForAchievement:v4];
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __66__AAUIAchievementResourceProvider_glyphTexturePathForAchievement___block_invoke;
    v13[3] = &unk_278C436C0;
    v14 = v7;
    v15 = v5;
    v8 = v7;
    v9 = [v6 hk_map:v13];
    v10 = [v9 hk_firstObjectPassingTest:&__block_literal_global_313];

    if (!v10)
    {
      v11 = ACHLogAssets();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        [(AAUIAchievementResourceProvider *)v4 glyphTexturePathForAchievement:v11];
      }
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

uint64_t __66__AAUIAchievementResourceProvider_glyphTexturePathForAchievement___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277CCAA00];
  v3 = a2;
  v4 = [v2 defaultManager];
  v5 = [v4 fileExistsAtPath:v3];

  return v5;
}

- (id)stickersBundlePathForAchievement:(id)a3
{
  v3 = a3;
  v4 = [v3 stickerBundleURL];

  if (v4)
  {
    v5 = MEMORY[0x277CCA8D8];
    v6 = [v3 stickerBundleURL];
    v7 = [v5 bundleWithURL:v6];

    v4 = [v7 resourcePath];
  }

  return v4;
}

- (id)stickerURLsForAchievement:(id)a3
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [MEMORY[0x277CBEB98] set];
  v5 = [v3 stickerBundleURL];

  if (v5)
  {
    v6 = MEMORY[0x277CCA8D8];
    v7 = [v3 stickerBundleURL];
    v8 = [v6 bundleWithURL:v7];

    if (v8)
    {
      v19 = 0u;
      v20 = 0u;
      v17 = 0u;
      v18 = 0u;
      v9 = [&unk_2850CFBC8 countByEnumeratingWithState:&v17 objects:v21 count:16];
      if (v9)
      {
        v10 = v9;
        v11 = *v18;
        do
        {
          v12 = 0;
          v13 = v4;
          do
          {
            if (*v18 != v11)
            {
              objc_enumerationMutation(&unk_2850CFBC8);
            }

            v14 = [v8 URLsForResourcesWithExtension:*(*(&v17 + 1) + 8 * v12) subdirectory:0];
            v4 = [v13 setByAddingObjectsFromArray:v14];

            ++v12;
            v13 = v4;
          }

          while (v10 != v12);
          v10 = [&unk_2850CFBC8 countByEnumeratingWithState:&v17 objects:v21 count:16];
        }

        while (v10);
      }
    }

    v15 = v4;
  }

  else
  {
    v15 = v4;
  }

  return v15;
}

- (id)backSideIconImageForAchievement:(id)a3
{
  v4 = a3;
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = __Block_byref_object_copy__0;
  v23 = __Block_byref_object_dispose__0;
  v24 = 0;
  v5 = [(AAUIAchievementResourceProvider *)self _assetBundleForAchievement:v4];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 pathForResource:@"Icon" ofType:@"png"];
    if (v7)
    {
      dispatch_assert_queue_not_V2(self->_queue);
      queue = self->_queue;
      v16[0] = MEMORY[0x277D85DD0];
      v16[1] = 3221225472;
      v16[2] = __67__AAUIAchievementResourceProvider_backSideIconImageForAchievement___block_invoke;
      v16[3] = &unk_278C43708;
      v17 = v7;
      v18 = &v19;
      dispatch_sync(queue, v16);
    }
  }

  v9 = v20[5];
  if (!v9)
  {
    v10 = MEMORY[0x277D755B8];
    v11 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v12 = [v10 imageNamed:@"badge_back_apple_logo" inBundle:v11 compatibleWithTraitCollection:0];
    v13 = v20[5];
    v20[5] = v12;

    v9 = v20[5];
  }

  v14 = v9;

  _Block_object_dispose(&v19, 8);

  return v14;
}

void __67__AAUIAchievementResourceProvider_backSideIconImageForAchievement___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277CCAA00] defaultManager];
  v3 = [v2 fileExistsAtPath:*(a1 + 32)];

  if (v3)
  {
    v5 = [MEMORY[0x277CBEA90] dataWithContentsOfFile:*(a1 + 32)];
    if ([v5 length])
    {
      v4 = [MEMORY[0x277D755B8] imageWithData:v5];
      if (v4)
      {
        objc_storeStrong((*(*(a1 + 40) + 8) + 40), v4);
      }
    }

    MEMORY[0x2821F9730]();
  }
}

- (id)metalColorForAchievement:(id)a3
{
  [a3 badgeMetalColor];
  v3 = MEMORY[0x277D75348];
  v5 = v4;
  v7 = v6;
  v9 = v8;

  return [v3 colorWithRed:v5 green:v7 blue:v9 alpha:1.0];
}

- (id)enamelColorForAchievement:(id)a3
{
  [a3 badgeEnamelColor];
  v3 = MEMORY[0x277D75348];
  v5 = v4;
  v7 = v6;
  v9 = v8;

  return [v3 colorWithRed:v5 green:v7 blue:v9 alpha:1.0];
}

- (CGPoint)glyphPositionOffsetScaleForAchievement:(id)a3
{
  v3 = a3;
  [v3 glyphPositionOffsetX];
  v5 = v4;
  [v3 glyphPositionOffsetY];
  v7 = v6;

  v8 = v5;
  v9 = v7;
  result.y = v9;
  result.x = v8;
  return result;
}

- (id)badgeConfigurationForAchievement:(id)a3
{
  v36[3] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v35 = [(AAUIAchievementResourceProvider *)self badgeModelPathsForAchievement:v4];
  v5 = [(AAUIAchievementResourceProvider *)self texturePathsForAchievement:v4];
  v6 = [(AAUIAchievementResourceProvider *)self glyphTexturePathForAchievement:v4];
  v7 = [(AAUIAchievementResourceProvider *)self metalColorForAchievement:v4];
  v8 = [(AAUIAchievementResourceProvider *)self enamelColorForAchievement:v4];
  [(AAUIAchievementResourceProvider *)self glyphTextureScaleForAchievement:v4];
  v10 = v9;
  [(AAUIAchievementResourceProvider *)self glyphPositionOffsetScaleForAchievement:v4];
  v12 = v11;
  v14 = v13;
  if ([v4 badgeUsesTriColorEnamel])
  {
    [v4 enamelTriColor1];
    v18 = [MEMORY[0x277D75348] colorWithRed:v15 green:v16 blue:v17 alpha:1.0];
    v36[0] = v18;
    [v4 enamelTriColor2];
    v22 = [MEMORY[0x277D75348] colorWithRed:v19 green:v20 blue:v21 alpha:1.0];
    v36[1] = v22;
    [v4 enamelTriColor3];
    v26 = [MEMORY[0x277D75348] colorWithRed:v23 green:v24 blue:v25 alpha:1.0];
    v36[2] = v26;
    v27 = [MEMORY[0x277CBEA60] arrayWithObjects:v36 count:3];
  }

  else
  {
    v27 = 0;
  }

  v28 = [AAUIBadgeModelConfiguration alloc];
  v29 = [v4 badgeShapeName];
  v30 = [v4 badgeUsesFullColorEnamel];
  v31 = [v4 unearnedUsesTwoToneEnamel];
  BYTE1(v34) = [v4 faceHasMetalInlay];
  LOBYTE(v34) = v31;
  v32 = [(AAUIBadgeModelConfiguration *)v28 initWithModelPaths:v35 texturePaths:v5 shapeName:v29 metalColor:v7 useFullColorEnamel:v30 modelEnamelColor:v8 unearnedUsesTwoToneEnamel:v10 faceHasMetalInlay:v12 enamelTricolors:v14 glyphTexturePath:v34 glyphTextureScale:v27 glyphPositionOffset:v6];

  return v32;
}

- (id)_assetBundleForAchievement:(id)a3
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [v3 resourceBundleURL];

  if (v4)
  {
    v5 = MEMORY[0x277CCA8D8];
    v6 = [v3 resourceBundleURL];
    v7 = [v5 bundleWithURL:v6];
  }

  else
  {
    v8 = ACHLogAssets();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 138412290;
      v11 = v3;
      _os_log_impl(&dword_23E4A3000, v8, OS_LOG_TYPE_DEFAULT, "resourceBundleURL is nil for achievement: %@", &v10, 0xCu);
    }

    v7 = 0;
  }

  return v7;
}

- (BOOL)_queue_decompressZipFileAtPath:(id)a3 toDirectory:(id)a4
{
  v16[3] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  dispatch_assert_queue_V2(self->_queue);
  v8 = [MEMORY[0x277CCAA00] defaultManager];
  v9 = [v8 fileExistsAtPath:v6];

  if (v9)
  {
    [v6 fileSystemRepresentation];
    [v7 fileSystemRepresentation];
    v10 = *MEMORY[0x277CBED28];
    v15[0] = @"extractPKZip";
    v15[1] = @"sequesterResources";
    v16[0] = v10;
    v16[1] = v10;
    v15[2] = @"copyResources";
    v16[2] = v10;
    v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:v15 count:3];
    BOMCopierNew();
    v12 = BOMCopierCopyWithOptions();
    BOMCopierFree();
    v13 = v12 == 0;
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (id)_cachedModelsPath
{
  v2 = NSSearchPathForDirectoriesInDomains(NSCachesDirectory, 1uLL, 1);
  v3 = [v2 firstObject];
  v4 = [v3 stringByAppendingPathComponent:@"AchievementBadgeModels"];

  return v4;
}

- (id)_badgeModelFilenames:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = [a3 badgeModelFilenames];
  v4 = v3;
  v5 = &unk_2850CFBE0;
  if (v3)
  {
    v5 = v3;
  }

  v6 = v5;

  v7 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v8 = v6;
  v9 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v17;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v17 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@.bdg", *(*(&v16 + 1) + 8 * i)];
        [v7 addObject:v13];
      }

      v10 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v10);
  }

  v14 = [v7 copy];

  return v14;
}

- (id)_modelDirectoryForCompressedModelPaths:(id)a3 andAchievement:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(AAUIAchievementResourceProvider *)self _cachedModelsPath];
  v9 = [v7 sortedArrayUsingSelector:sel_compare_];

  v10 = [v9 componentsJoinedByString:&stru_2850CB9E8];

  v11 = MEMORY[0x277CCACA8];
  v12 = [v10 hash];
  if (v12 >= 0)
  {
    v13 = v12;
  }

  else
  {
    v13 = -v12;
  }

  v14 = [v11 stringWithFormat:@"%d", v13];
  v15 = MEMORY[0x277CCACA8];
  v16 = [v6 template];
  v17 = [v16 uniqueName];
  v18 = [v6 badgeModelVersion];

  v19 = [v15 stringWithFormat:@"%@_%@_v%ld", v17, v14, v18];

  v20 = [v8 stringByAppendingPathComponent:v19];

  return v20;
}

- (id)_modelFilePathsForCompressedModelPaths:(id)a3 andAchievement:(id)a4
{
  v24 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(AAUIAchievementResourceProvider *)self _badgeModelFilenames:v7];
  v9 = [(AAUIAchievementResourceProvider *)self _modelDirectoryForCompressedModelPaths:v6 andAchievement:v7];
  v10 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v11 = v8;
  v12 = [v11 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v20;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v20 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = [v9 stringByAppendingPathComponent:{*(*(&v19 + 1) + 8 * i), v19}];
        [v10 addObject:v16];
      }

      v13 = [v11 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v13);
  }

  v17 = [v10 copy];

  return v17;
}

- (id)_compressedBadgeModelPathsForAchievement:(id)a3
{
  v35 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 badgeModelFilenames];
  v6 = v5;
  v7 = &unk_2850CFBF8;
  if (v5)
  {
    v7 = v5;
  }

  v8 = v7;

  v23 = v4;
  v9 = [(AAUIAchievementResourceProvider *)self _assetBundleForAchievement:v4];
  v10 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v11 = v8;
  v12 = [v11 countByEnumeratingWithState:&v26 objects:v34 count:16];
  if (v12)
  {
    v14 = v12;
    v15 = *v27;
    *&v13 = 138412546;
    v22 = v13;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v27 != v15)
        {
          objc_enumerationMutation(v11);
        }

        v17 = *(*(&v26 + 1) + 8 * i);
        v18 = [v9 pathForResource:v17 ofType:{@"bdg.zip", v22}];
        if (v18)
        {
          [v10 addObject:v18];
        }

        else
        {
          v19 = ACHLogAssets();
          if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
          {
            v25 = [v23 template];
            v24 = [v25 uniqueName];
            *buf = v22;
            v31 = v24;
            v32 = 2112;
            v33 = v17;
            _os_log_error_impl(&dword_23E4A3000, v19, OS_LOG_TYPE_ERROR, "Could not determined compressedBadgeModelPath for achievement: %@, assetName = %@", buf, 0x16u);
          }
        }
      }

      v14 = [v11 countByEnumeratingWithState:&v26 objects:v34 count:16];
    }

    while (v14);
  }

  v20 = [v10 copy];

  return v20;
}

- (void)badgeModelPathsForAchievement:(void *)a1 .cold.1(void *a1, NSObject *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = [a1 template];
  v4 = [v3 uniqueName];
  v5 = 138412290;
  v6 = v4;
  _os_log_error_impl(&dword_23E4A3000, a2, OS_LOG_TYPE_ERROR, "Error decompressing model for achievement %@: compressed/decompressed model files mismatch", &v5, 0xCu);
}

- (void)glyphTexturePathForAchievement:(void *)a1 .cold.1(void *a1, NSObject *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = [a1 template];
  v4 = [v3 uniqueName];
  v5 = 138412546;
  v6 = v4;
  v7 = 2112;
  v8 = 0;
  _os_log_error_impl(&dword_23E4A3000, a2, OS_LOG_TYPE_ERROR, "Error loading badge texture for achievement %@ at path %@", &v5, 0x16u);
}

@end