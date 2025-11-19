@interface AVTPresetLoadPresets
@end

@implementation AVTPresetLoadPresets

void ____AVTPresetLoadPresets_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = AVTPresetCategoryFromString(a2);
  v6 = AVTPresetCategoryToComponentType(v5);
  if (!gPresets[v5])
  {
    v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v8 = gPresets[v5];
    gPresets[v5] = v7;
  }

  if (v5 != 40)
  {
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = ____AVTPresetLoadPresets_block_invoke_2;
    v9[3] = &__block_descriptor_48_e29_v32__0__NSDictionary_8Q16_B24l;
    v9[4] = v5;
    v9[5] = v6;
    [v4 enumerateObjectsUsingBlock:v9];
  }
}

void ____AVTPresetLoadPresets_block_invoke_2(uint64_t a1, void *a2, uint64_t a3)
{
  v61[1] = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = objc_alloc_init(AVTPreset);
  v7 = [v5 objectForKeyedSubscript:@"identifier"];
  identifier = v6->_identifier;
  v6->_identifier = v7;

  if (!v6->_identifier)
  {
    v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"preset %d", a3];
    v10 = v6->_identifier;
    v6->_identifier = v9;
  }

  v6->_category = *(a1 + 32);
  v52 = [v5 objectForKeyedSubscript:@"asset"];
  if (v52 && ([v52 isEqualToString:@"none"] & 1) == 0)
  {
    v11 = +[AVTAssetLibrary sharedAssetLibrary];
    v12 = [v11 assetWithType:*(a1 + 40) identifier:v52];

    if (v12)
    {
      v61[0] = v12;
      v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v61 count:1];
      assets = v6->_assets;
      v6->_assets = v13;

      v6->_editableColorCount = [v12 editableColorCount];
      [(AVTPreset *)v6 rebuildSpecializationSettings];
    }

    else
    {
      v15 = avt_default_log();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v60 = v52;
        _os_log_impl(&dword_1BB472000, v15, OS_LOG_TYPE_DEFAULT, "failed to find asset named %@", buf, 0xCu);
      }
    }
  }

  v16 = [v5 objectForKeyedSubscript:@"assets"];
  v17 = v16;
  if (v16 && [v16 count])
  {
    v53 = v6;
    v51 = v5;
    v18 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v17, "count")}];
    v54 = 0u;
    v55 = 0u;
    v56 = 0u;
    v57 = 0u;
    v50 = v17;
    v19 = v17;
    v20 = [v19 countByEnumeratingWithState:&v54 objects:v58 count:16];
    if (v20)
    {
      v21 = v20;
      v22 = *v55;
      do
      {
        for (i = 0; i != v21; ++i)
        {
          if (*v55 != v22)
          {
            objc_enumerationMutation(v19);
          }

          v24 = *(*(&v54 + 1) + 8 * i);
          v25 = +[AVTAssetLibrary sharedAssetLibrary];
          v26 = [v25 assetWithType:*(a1 + 40) identifier:v24];

          if (v26)
          {
            editableColorCount = v53->_editableColorCount;
            v28 = [v26 editableColorCount];
            if (editableColorCount <= v28)
            {
              v29 = v28;
            }

            else
            {
              v29 = editableColorCount;
            }

            v53->_editableColorCount = v29;
            [(NSArray *)v18 addObject:v26];
          }

          else
          {
            v30 = avt_default_log();
            if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              v60 = v52;
              _os_log_impl(&dword_1BB472000, v30, OS_LOG_TYPE_DEFAULT, "failed to find asset named %@", buf, 0xCu);
            }
          }
        }

        v21 = [v19 countByEnumeratingWithState:&v54 objects:v58 count:16];
      }

      while (v21);
    }

    v6 = v53;
    v31 = v53->_assets;
    v53->_assets = v18;

    [(AVTPreset *)v53 rebuildSpecializationSettings];
    v17 = v50;
    v5 = v51;
  }

  v32 = [v5 objectForKeyedSubscript:@"morphVariant"];
  morphVariant = v6->_morphVariant;
  v6->_morphVariant = v32;

  v34 = [v5 objectForKeyedSubscript:@"imageVariant"];
  imageVariant = v6->_imageVariant;
  v6->_imageVariant = v34;

  v36 = [v5 objectForKeyedSubscript:@"materialVariant"];
  materialVariant = v6->_materialVariant;
  v6->_materialVariant = v36;

  v38 = [v5 objectForKeyedSubscript:@"morphVariantIntensity"];
  v39 = v38;
  if (v38)
  {
    [v38 floatValue];
  }

  else
  {
    v40 = 1.0;
  }

  v6->_morphVariantIntensity = v40;
  v41 = [v5 objectForKeyedSubscript:@"bodyPoseVariantIntensity"];
  v42 = v41;
  if (v41)
  {
    [v41 floatValue];
  }

  else
  {
    v43 = 0.0;
  }

  v6->_bodyPoseVariantIntensity = v43;
  v44 = [v5 objectForKeyedSubscript:@"textureAssetPresence"];
  v45 = v44;
  if (v44)
  {
    [v44 floatValue];
  }

  else
  {
    v46 = 1.0;
  }

  v6->_textureAssetPresence = v46;
  v47 = [v5 objectForKeyedSubscript:@"tags"];
  tags = v6->_tags;
  v6->_tags = v47;

  [gPresets[*(a1 + 32)] addObject:v6];
  v49 = *MEMORY[0x1E69E9840];
}

void ____AVTPresetLoadPresets_block_invoke_358(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = AVTPresetCategoryFromString(a2);
  if (v5 != 40)
  {
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = ____AVTPresetLoadPresets_block_invoke_2_361;
    v6[3] = &__block_descriptor_40_e29_v32__0__NSDictionary_8Q16_B24l;
    v6[4] = v5;
    [v4 enumerateObjectsUsingBlock:v6];
  }
}

void ____AVTPresetLoadPresets_block_invoke_2_361(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = gPresets[*(a1 + 32)];
  v5 = a2;
  v6 = [v4 objectAtIndex:a3];
  v7 = [v5 objectForKeyedSubscript:@"variantDependencies-morph"];
  v8 = v6[11];
  v6[11] = v7;

  v9 = [v5 objectForKeyedSubscript:@"variantDependencies-image"];
  v10 = v6[12];
  v6[12] = v9;

  v11 = [v5 objectForKeyedSubscript:@"variantDependencies-material"];
  v12 = v6[13];
  v6[13] = v11;

  v13 = [v5 objectForKeyedSubscript:@"dependencies"];

  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = ____AVTPresetLoadPresets_block_invoke_3;
  v15[3] = &unk_1E7F490D8;
  v16 = v6;
  v14 = v6;
  [v13 enumerateKeysAndObjectsUsingBlock:v15];
}

void ____AVTPresetLoadPresets_block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v40 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = AVTPresetCategoryFromString(v5);
  if (v7 == 40)
  {
    v8 = avt_default_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      ____AVTPresetLoadPresets_block_invoke_3_cold_2(v5, v8, v9, v10, v11, v12, v13, v14);
    }
  }

  else
  {
    v33[0] = MEMORY[0x1E69E9820];
    v33[1] = 3221225472;
    v34 = ____AVTPresetLoadPresets_block_invoke_374;
    v35 = &unk_1E7F497B0;
    v38 = v7;
    v36 = *(a1 + 32);
    v15 = v5;
    v37 = v15;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v34(v33, v6);
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v16 = v6;
        v29 = 0u;
        v30 = 0u;
        v31 = 0u;
        v32 = 0u;
        v17 = [v16 countByEnumeratingWithState:&v29 objects:v39 count:16];
        if (v17)
        {
          v18 = v17;
          v19 = *v30;
          do
          {
            v20 = 0;
            do
            {
              if (*v30 != v19)
              {
                objc_enumerationMutation(v16);
              }

              v34(v33, *(*(&v29 + 1) + 8 * v20++));
            }

            while (v18 != v20);
            v18 = [v16 countByEnumeratingWithState:&v29 objects:v39 count:16];
          }

          while (v18);
        }
      }

      else
      {
        v21 = avt_default_log();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
        {
          ____AVTPresetLoadPresets_block_invoke_3_cold_1(v15, v21, v22, v23, v24, v25, v26, v27);
        }
      }
    }

    v8 = v36;
  }

  v28 = *MEMORY[0x1E69E9840];
}

void ____AVTPresetLoadPresets_block_invoke_374(void *a1, void *a2)
{
  v47 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [v3 objectForKeyedSubscript:@"preset"];
  if (v4)
  {
    v44 = 0u;
    v45 = 0u;
    v42 = 0u;
    v43 = 0u;
    v5 = gPresets[a1[6]];
    v6 = [v5 countByEnumeratingWithState:&v42 objects:v46 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v43;
LABEL_4:
      v9 = 0;
      while (1)
      {
        if (*v43 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v42 + 1) + 8 * v9);
        v11 = [v10 identifier];
        v12 = [v11 isEqualToString:v4];

        if (v12)
        {
          break;
        }

        if (v7 == ++v9)
        {
          v7 = [v5 countByEnumeratingWithState:&v42 objects:v46 count:16];
          if (v7)
          {
            goto LABEL_4;
          }

          goto LABEL_10;
        }
      }

      v13 = v10;

      if (v13)
      {
        goto LABEL_16;
      }
    }

    else
    {
LABEL_10:
    }

    v14 = avt_default_log();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      ____AVTPresetLoadPresets_block_invoke_374_cold_1(v14, v15, v16, v17, v18, v19, v20, v21);
    }
  }

  v13 = 0;
LABEL_16:
  v22 = [v3 objectForKeyedSubscript:{@"morphVariant", v42}];
  v23 = [v3 objectForKeyedSubscript:@"imageVariant"];
  v24 = [v3 objectForKeyedSubscript:@"materialVariant"];
  v25 = [v3 objectForKeyedSubscript:@"visibilityVariant"];
  v26 = [v3 objectForKeyedSubscript:@"morphVariantIntensity"];
  v27 = v26;
  if (v26)
  {
    [v26 floatValue];
    v29 = v28;
    if (v13)
    {
      goto LABEL_30;
    }

LABEL_20:
    if (!v22 && !v23 && !v24 && !v25)
    {
      goto LABEL_24;
    }

    goto LABEL_30;
  }

  v29 = 1.0;
  if (!v13)
  {
    goto LABEL_20;
  }

LABEL_30:
  v36 = objc_alloc_init(AVTPresetDependency);
  v37 = v36;
  if (v36)
  {
    v36->_category = a1[6];
    [(AVTPhysicsRig *)v36 setChainRoot:v13];
    [(AVTPhysicsRig *)v37 setPhysicsBody:v22];
    v37[2] = v29;
  }

  else
  {
    [(AVTPhysicsRig *)0 setChainRoot:v13];
    [(AVTPhysicsRig *)0 setPhysicsBody:v22];
  }

  [(AVTPhysicsRig *)v37 setPhysicsBehavior:v23];
  [(AVTPresetDependency *)v37 setMaterialVariant:v24];
  [(AVTPresetDependency *)v37 setVisibilityRules:v25];
  v38 = *(a1[4] + 80);
  if (!v38)
  {
    v39 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v40 = a1[4];
    v41 = *(v40 + 80);
    *(v40 + 80) = v39;

    v38 = *(a1[4] + 80);
  }

  [v38 addObject:v37];

LABEL_24:
  v30 = [v3 objectForKeyedSubscript:@"preset-per-identifier"];
  if (v30)
  {
    v31 = *(a1[4] + 112);
    if (!v31)
    {
      v32 = objc_alloc_init(MEMORY[0x1E695DF90]);
      v33 = a1[4];
      v34 = *(v33 + 112);
      *(v33 + 112) = v32;

      v31 = *(a1[4] + 112);
    }

    [v31 objectForKeyedSubscript:a1[5]];
    if (objc_claimAutoreleasedReturnValue())
    {
      ____AVTPresetLoadPresets_block_invoke_374_cold_2();
    }

    [*(a1[4] + 112) setObject:v30 forKeyedSubscript:a1[5]];
  }

  v35 = *MEMORY[0x1E69E9840];
}

void ____AVTPresetLoadPresets_block_invoke_3_cold_1(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0(&dword_1BB472000, a2, a3, "Error: error in preset dependency: value for %@ is not a dictionary", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x1E69E9840];
}

void ____AVTPresetLoadPresets_block_invoke_3_cold_2(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0(&dword_1BB472000, a2, a3, "Error: error in preset dependency: can't convert %@ to a category", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x1E69E9840];
}

void ____AVTPresetLoadPresets_block_invoke_374_cold_1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x1E69E9840];
  v8 = *MEMORY[0x1E69E9840];
}

@end