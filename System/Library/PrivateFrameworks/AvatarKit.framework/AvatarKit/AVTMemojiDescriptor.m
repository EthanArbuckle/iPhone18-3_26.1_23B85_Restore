@interface AVTMemojiDescriptor
+ (id)colorPresetFromColorData:(id)a3 forCategory:(int64_t)a4 colorIndex:(unint64_t)a5 version:(unsigned __int16)a6 didFail:(BOOL *)a7 error:(id *)a8;
+ (id)presetsDictionaryFromRecipe:(id)a3 didFail:(BOOL *)a4 error:(id *)a5;
+ (id)randomDescriptor;
- (AVTMemojiDescriptor)initWithCoder:(id)a3;
- (AVTMemojiDescriptor)initWithMemoji:(id)a3;
- (id)colorPresetForCategory:(int64_t)a3 colorIndex:(unint64_t)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (id)debugDescription;
- (id)description;
- (id)presetIdentifierForCategory:(int64_t)a3;
- (void)_decode:(id)a3 isResettingToDefault:(BOOL)a4 error:(id *)a5;
- (void)applyToMemoji:(id)a3;
- (void)encodeInDictionaryRepresentation:(id)a3;
- (void)encodeWithCoder:(id)a3;
- (void)setColorPreset:(id)a3 forCategory:(int64_t)a4 colorIndex:(unint64_t)a5;
- (void)setPresetIdentifier:(id)a3 forCategory:(int64_t)a4;
@end

@implementation AVTMemojiDescriptor

- (AVTMemojiDescriptor)initWithMemoji:(id)a3
{
  v4 = a3;
  v16.receiver = self;
  v16.super_class = AVTMemojiDescriptor;
  v5 = [(AVTMemojiDescriptor *)&v16 init];
  v6 = v5;
  if (v5)
  {
    v7 = 0;
    v8 = v5;
    do
    {
      v9 = [v4 presetForCategory:v7];
      v10 = [v9 identifier];
      v11 = v6->_presetIdentifiers[v7];
      v6->_presetIdentifiers[v7] = v10;

      for (i = 0; i != 3; ++i)
      {
        v13 = [v4 colorPresetForCategory:v7 colorIndex:i];
        v14 = v8->_colorPresets[0][i];
        v8->_colorPresets[0][i] = v13;
      }

      ++v7;
      v8 = (v8 + 24);
    }

    while (v7 != 40);
  }

  return v6;
}

+ (id)randomDescriptor
{
  v2 = objc_alloc_init(a1);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __39__AVTMemojiDescriptor_randomDescriptor__block_invoke;
  v9[3] = &unk_1E7F49AB0;
  v10 = v2;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __39__AVTMemojiDescriptor_randomDescriptor__block_invoke_2;
  v7[3] = &unk_1E7F49AD8;
  v3 = v10;
  v8 = v3;
  _AVTMemojiRandomize(v9, v7);
  v4 = v8;
  v5 = v3;

  return v3;
}

void __39__AVTMemojiDescriptor_randomDescriptor__block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  v5 = [a2 identifier];
  [v4 setPresetIdentifier:v5 forCategory:a3];
}

- (void)applyToMemoji:(id)a3
{
  v10 = a3;
  v4 = 0;
  presetIdentifiers = self->_presetIdentifiers;
  do
  {
    v6 = presetIdentifiers[v4];
    if (v6)
    {
      v7 = [AVTPreset presetWithCategory:v4 identifier:v6];
      [v10 setPreset:v7 forCategory:v4 animated:0];
    }

    else
    {
      [v10 setPreset:0 forCategory:v4 animated:0];
    }

    for (i = 0; i != 3; ++i)
    {
      v9 = self->_colorPresets[0][i];
      if (v9)
      {
        [v10 setColorPreset:v9 forCategory:v4 colorIndex:i];
      }
    }

    ++v4;
    self = (self + 24);
  }

  while (v4 != 40);
}

- (id)presetIdentifierForCategory:(int64_t)a3
{
  if (a3 < 40)
  {
    v4 = self->_presetIdentifiers[a3];
  }

  else
  {
    v3 = avt_default_log();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      [AVTMemojiDescriptor presetIdentifierForCategory:];
    }

    v4 = 0;
  }

  return v4;
}

- (void)setPresetIdentifier:(id)a3 forCategory:(int64_t)a4
{
  v6 = a3;
  v7 = v6;
  if (a4 < 40)
  {
    if (v6)
    {
      v9 = [AVTPreset presetWithCategory:a4 identifier:v6];
      if (!v9)
      {
        v10 = avt_default_log();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
        {
          [AVTMemojiDescriptor setPresetIdentifier:forCategory:];
        }
      }
    }

    presetIdentifiers = self->_presetIdentifiers;
    v12 = v7;
    v8 = self->_presetIdentifiers[a4];
    presetIdentifiers[a4] = v12;
  }

  else
  {
    v8 = avt_default_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [AVTMemojiDescriptor presetIdentifierForCategory:];
    }
  }
}

- (void)setColorPreset:(id)a3 forCategory:(int64_t)a4 colorIndex:(unint64_t)a5
{
  v8 = a3;
  v9 = v8;
  if (a4 < 40)
  {
    if (v8 && [v8 category] != a4)
    {
      v11 = avt_default_log();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        [AVTMemojiDescriptor setColorPreset:forCategory:colorIndex:];
      }
    }

    if (a5 >= 3)
    {
      [AVTMemojiDescriptor setColorPreset:forCategory:colorIndex:];
    }

    v12 = self->_colorPresets[a4];
    v13 = v9;
    p_super = &v12[a5]->super;
    v12[a5] = v13;
  }

  else
  {
    p_super = avt_default_log();
    if (os_log_type_enabled(p_super, OS_LOG_TYPE_ERROR))
    {
      [AVTMemojiDescriptor presetIdentifierForCategory:];
    }
  }
}

- (id)colorPresetForCategory:(int64_t)a3 colorIndex:(unint64_t)a4
{
  if (a3 < 40)
  {
    if (a4 >= 3)
    {
      [AVTMemojiDescriptor colorPresetForCategory:colorIndex:];
    }

    v5 = self->_colorPresets[a3][a4];
  }

  else
  {
    v4 = avt_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      [AVTMemojiDescriptor presetIdentifierForCategory:];
    }

    v5 = 0;
  }

  return v5;
}

+ (id)presetsDictionaryFromRecipe:(id)a3 didFail:(BOOL *)a4 error:(id *)a5
{
  v7 = a3;
  v8 = [v7 avt_objectForKey:@"presets" ofClass:objc_opt_class() didFail:a4 error:a5];

  if (*a4)
  {
    v9 = 0;
  }

  else
  {
    v10 = AVTUpgradePairedPresetCategoriesIfNeeded(v8);

    v9 = v10;
    v8 = v9;
  }

  return v9;
}

+ (id)colorPresetFromColorData:(id)a3 forCategory:(int64_t)a4 colorIndex:(unint64_t)a5 version:(unsigned __int16)a6 didFail:(BOOL *)a7 error:(id *)a8
{
  v10 = a6;
  v13 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v14 = AVTUpgradeColorPresetIdentifierIfNeeded(a4, v13, v10);
    v15 = [AVTColorPreset colorPresetWithName:v14 category:a4 colorIndex:a5 variation:0.0];
LABEL_3:

    goto LABEL_8;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v16 = [v13 avt_objectForKey:@"variation" ofClass:objc_opt_class() didFail:a7 error:a8];
    v14 = v16;
    if (*a7)
    {
      v15 = 0;
    }

    else
    {
      [v16 floatValue];
      v19 = v18;
      v20 = [v13 avt_objectForKey:@"name" ofClass:objc_opt_class() didFail:a7 error:a8];
      if (*a7)
      {
        v15 = 0;
      }

      else
      {
        if (v10 < 8 && a4 == 10)
        {
          v19 = -v19;
        }

        v22 = AVTUpgradeColorPresetIdentifierIfNeeded(a4, v20, v10);

        *&v23 = v19;
        v15 = [AVTColorPreset colorPresetWithName:v22 category:a4 colorIndex:a5 variation:v23];
        v20 = v22;
      }
    }

    goto LABEL_3;
  }

  v15 = 0;
LABEL_8:

  return v15;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v36.receiver = self;
  v36.super_class = AVTMemojiDescriptor;
  [(AVTAvatarDescriptor *)&v36 encodeWithCoder:v4];
  v5 = 0;
  v6 = 0x1E696A000uLL;
  v35 = self;
  do
  {
    v7 = AVTPresetCategoryToString(v5);
    v8 = [(AVTMemojiDescriptor *)self presetIdentifierForCategory:v5];
    if (v8)
    {
      v9 = [*(v6 + 3776) stringWithFormat:@"%@-presetIdentifier", v7];
      [v4 encodeObject:v8 forKey:v9];
    }

    v10 = [(AVTMemojiDescriptor *)self colorPresetForCategory:v5 colorIndex:0];
    v11 = v10;
    if (v10)
    {
      v12 = [v10 name];
      v13 = [*(v6 + 3776) stringWithFormat:@"%@-primaryColorName", v7];
      [v4 encodeObject:v12 forKey:v13];

      [v11 variation];
      v15 = v14;
      v16 = [*(v6 + 3776) stringWithFormat:@"%@-primaryColorVariation", v7];
      LODWORD(v17) = v15;
      [v4 encodeFloat:v16 forKey:v17];
    }

    v18 = [(AVTMemojiDescriptor *)self colorPresetForCategory:v5 colorIndex:1];
    v19 = v18;
    if (v18)
    {
      v20 = [v18 name];
      v21 = [*(v6 + 3776) stringWithFormat:@"%@-secondaryColorName", v7];
      [v4 encodeObject:v20 forKey:v21];

      [v19 variation];
      v23 = v22;
      v24 = [*(v6 + 3776) stringWithFormat:@"%@-secondaryColorVariation", v7];
      LODWORD(v25) = v23;
      [v4 encodeFloat:v24 forKey:v25];
    }

    v26 = [(AVTMemojiDescriptor *)self colorPresetForCategory:v5 colorIndex:2];
    v27 = v26;
    if (v26)
    {
      v28 = [v26 name];
      [*(v6 + 3776) stringWithFormat:@"%@-tertiaryColorName", v7];
      v30 = v29 = v6;
      [v4 encodeObject:v28 forKey:v30];

      v6 = v29;
      self = v35;

      [v27 variation];
      v32 = v31;
      v33 = [*(v6 + 3776) stringWithFormat:@"%@-tertiaryColorVariation", v7];
      LODWORD(v34) = v32;
      [v4 encodeFloat:v33 forKey:v34];
    }

    ++v5;
  }

  while (v5 != 40);
}

- (AVTMemojiDescriptor)initWithCoder:(id)a3
{
  v70[2] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v64.receiver = self;
  v64.super_class = AVTMemojiDescriptor;
  v5 = [(AVTAvatarDescriptor *)&v64 initWithCoder:v4];
  v6 = v5;
  if (v5)
  {
    v58 = v5;
    v7 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v8 = [v4 decodeIntegerForKey:@"version"];
    v9 = 0x1E696A000uLL;
    v10 = [MEMORY[0x1E696AD98] numberWithInteger:v8];
    v57 = v7;
    [v7 setValue:v10 forKey:@"version"];

    v61 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v60 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v11 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v59 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v12 = 0;
    v13 = 0x1E696A000uLL;
    do
    {
      v14 = AVTPresetCategoryToString(v12);
      v15 = *(v13 + 3776);
      v16 = objc_opt_class();
      v17 = [*(v13 + 3776) stringWithFormat:@"%@-presetIdentifier", v14];
      v18 = [v4 decodeObjectOfClass:v16 forKey:v17];

      if (v18)
      {
        [v61 setObject:v18 forKeyedSubscript:v14];
      }

      v63 = v18;
      v19 = *(v13 + 3776);
      v20 = objc_opt_class();
      v21 = [*(v13 + 3776) stringWithFormat:@"%@-primaryColorName", v14];
      v22 = [v4 decodeObjectOfClass:v20 forKey:v21];

      if (v22)
      {
        v23 = [*(v13 + 3776) stringWithFormat:@"%@-primaryColorVariation", v14];
        [v4 decodeFloatForKey:v23];
        v25 = v24;

        v70[0] = v22;
        v69[0] = @"name";
        v69[1] = @"variation";
        LODWORD(v26) = v25;
        v27 = [*(v9 + 3480) numberWithFloat:v26];
        v70[1] = v27;
        v28 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v70 forKeys:v69 count:2];
        [v60 setObject:v28 forKeyedSubscript:v14];
      }

      v29 = *(v13 + 3776);
      v30 = objc_opt_class();
      v31 = [*(v13 + 3776) stringWithFormat:@"%@-secondaryColorName", v14];
      v32 = [v4 decodeObjectOfClass:v30 forKey:v31];

      if (v32)
      {
        v33 = [*(v13 + 3776) stringWithFormat:@"%@-secondaryColorVariation", v14];
        [v4 decodeFloatForKey:v33];
        v35 = v34;

        v67[0] = @"name";
        v67[1] = @"variation";
        v68[0] = v32;
        LODWORD(v36) = v35;
        v37 = [*(v9 + 3480) numberWithFloat:v36];
        v68[1] = v37;
        v38 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v68 forKeys:v67 count:2];
        [v11 setObject:v38 forKeyedSubscript:v14];
      }

      v39 = *(v13 + 3776);
      v40 = objc_opt_class();
      v41 = [*(v13 + 3776) stringWithFormat:@"%@-tertiaryColorName", v14];
      v42 = [v4 decodeObjectOfClass:v40 forKey:v41];

      if (v42)
      {
        v43 = [*(v13 + 3776) stringWithFormat:@"%@-tertiaryColorVariation", v14];
        [v4 decodeFloatForKey:v43];
        v45 = v44;

        v65[0] = @"name";
        v65[1] = @"variation";
        v66[0] = v42;
        LODWORD(v46) = v45;
        v47 = [*(v9 + 3480) numberWithFloat:v46];
        v66[1] = v47;
        [MEMORY[0x1E695DF20] dictionaryWithObjects:v66 forKeys:v65 count:2];
        v62 = v12;
        v48 = v32;
        v49 = v13;
        v50 = v22;
        v51 = v9;
        v52 = v4;
        v54 = v53 = v11;
        [v59 setObject:v54 forKeyedSubscript:v14];

        v11 = v53;
        v4 = v52;
        v9 = v51;
        v22 = v50;
        v13 = v49;
        v32 = v48;
        v12 = v62;
      }

      ++v12;
    }

    while (v12 != 40);
    [v57 setObject:v61 forKeyedSubscript:@"presets"];
    [v57 setObject:v60 forKeyedSubscript:@"colors"];
    if ([v11 count])
    {
      [v57 setObject:v11 forKeyedSubscript:@"secondaryColors"];
    }

    v6 = v58;
    if ([v59 count])
    {
      [v57 setObject:v59 forKeyedSubscript:@"tertiaryColors"];
    }

    [(AVTMemojiDescriptor *)v58 _decode:v57 isResettingToDefault:0 error:0];
  }

  v55 = *MEMORY[0x1E69E9840];
  return v6;
}

- (void)encodeInDictionaryRepresentation:(id)a3
{
  v47[2] = *MEMORY[0x1E69E9840];
  v34 = a3;
  v37 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v36 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v38 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v35 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v4 = 0;
  v5 = @"name";
  v6 = 0x1E696A000uLL;
  v7 = 0x1E695D000uLL;
  do
  {
    v8 = AVTPresetCategoryToString(v4);
    v9 = [(AVTMemojiDescriptor *)self presetIdentifierForCategory:v4];
    if (v9)
    {
      [v37 setObject:v9 forKeyedSubscript:v8];
    }

    v41 = v9;
    v10 = [(AVTMemojiDescriptor *)self colorPresetForCategory:v4 colorIndex:0, v34];
    v11 = v10;
    if (v10)
    {
      v46[0] = v5;
      v12 = [v10 name];
      v47[0] = v12;
      v46[1] = @"variation";
      v13 = *(v6 + 3480);
      [v11 variation];
      v14 = [v13 numberWithFloat:?];
      v47[1] = v14;
      v15 = [*(v7 + 3872) dictionaryWithObjects:v47 forKeys:v46 count:2];
      [v36 setObject:v15 forKeyedSubscript:v8];
    }

    v40 = v11;
    v16 = v8;
    v17 = [(AVTMemojiDescriptor *)self colorPresetForCategory:v4 colorIndex:1];
    v18 = v17;
    if (v17)
    {
      v44[0] = v5;
      v19 = [v17 name];
      v44[1] = @"variation";
      v45[0] = v19;
      v20 = *(v6 + 3480);
      [v18 variation];
      v21 = [v20 numberWithFloat:?];
      v45[1] = v21;
      v22 = [*(v7 + 3872) dictionaryWithObjects:v45 forKeys:v44 count:2];
      [v38 setObject:v22 forKeyedSubscript:v16];
    }

    v23 = [(AVTMemojiDescriptor *)self colorPresetForCategory:v4 colorIndex:2];
    v24 = v23;
    if (v23)
    {
      v42[0] = v5;
      v39 = [v23 name];
      v42[1] = @"variation";
      v43[0] = v39;
      v25 = *(v6 + 3480);
      [v24 variation];
      v26 = [v25 numberWithFloat:?];
      v43[1] = v26;
      [*(v7 + 3872) dictionaryWithObjects:v43 forKeys:v42 count:2];
      v27 = v7;
      v28 = v6;
      v29 = v5;
      v30 = self;
      v32 = v31 = v16;
      [v35 setObject:v32 forKeyedSubscript:v31];

      v16 = v31;
      self = v30;
      v5 = v29;
      v6 = v28;
      v7 = v27;
    }

    ++v4;
  }

  while (v4 != 40);
  [v34 setObject:v37 forKeyedSubscript:@"presets"];
  [v34 setObject:v36 forKeyedSubscript:@"colors"];
  if ([v38 count])
  {
    [v34 setObject:v38 forKeyedSubscript:@"secondaryColors"];
  }

  if ([v35 count])
  {
    [v34 setObject:v35 forKeyedSubscript:@"tertiaryColors"];
  }

  v33 = *MEMORY[0x1E69E9840];
}

- (void)_decode:(id)a3 isResettingToDefault:(BOOL)a4 error:(id *)a5
{
  v71 = a4;
  v87 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v85 = 0;
  v8 = [v7 avt_objectForKey:@"version" ofClass:objc_opt_class() didFail:&v85 error:a5];
  v75 = self;
  v76 = [objc_opt_class() presetsDictionaryFromRecipe:v7 didFail:&v85 error:a5];
  v9 = [v7 avt_objectForKey:@"colors" ofClass:objc_opt_class() didFail:&v85 error:a5];
  v10 = [v7 avt_objectForKey:@"secondaryColors" ofClass:objc_opt_class() didFail:&v85 error:a5];
  v11 = [v7 avt_objectForKey:@"tertiaryColors" ofClass:objc_opt_class() didFail:&v85 error:a5];
  if (v85)
  {
    goto LABEL_76;
  }

  v68 = v11;
  v69 = v10;
  v66 = v8;
  v67 = v7;
  v74 = [v8 intValue];
  v12 = MEMORY[0x1E695DFD8];
  v13 = objc_opt_class();
  v72 = [v12 setWithObjects:{v13, objc_opt_class(), 0}];
  v14 = 0;
  v70 = v9;
  while (1)
  {
    v73 = AVTPresetCategoryToString(v14);
    v15 = [v76 avt_objectForKey:v73 ofClass:objc_opt_class() didFail:&v85 error:a5];
    v16 = v15;
    if (v85)
    {
      v17 = v15;
      goto LABEL_74;
    }

    if (v15)
    {
LABEL_5:
      v17 = AVTUpgradePresetIdentifierIfNeeded(v14, v16, v74);
      if (v17 == v16)
      {
        v18 = 0;
      }

      else
      {
        v18 = [v16 isEqualToString:@"none"];
      }

      [(AVTMemojiDescriptor *)v75 setPresetIdentifier:v17 forCategory:v14];
      goto LABEL_20;
    }

    v19 = AVTUpgradesForPresetCategory(v14, v74);
    v81 = 0u;
    v82 = 0u;
    v83 = 0u;
    v84 = 0u;
    v20 = v19;
    v21 = [v20 countByEnumeratingWithState:&v81 objects:v86 count:16];
    if (v21)
    {
      v22 = v21;
      v23 = *v82;
      while (2)
      {
        for (i = 0; i != v22; ++i)
        {
          if (*v82 != v23)
          {
            objc_enumerationMutation(v20);
          }

          v25 = [v76 avt_objectForKey:*(*(&v81 + 1) + 8 * i) ofClass:objc_opt_class() didFail:&v85 error:a5];
          v16 = v25;
          if (v85)
          {

            v17 = v16;
            goto LABEL_73;
          }

          if (v25)
          {

            v9 = v70;
            goto LABEL_5;
          }
        }

        v22 = [v20 countByEnumeratingWithState:&v81 objects:v86 count:16];
        v9 = v70;
        if (v22)
        {
          continue;
        }

        break;
      }
    }

    if (v71)
    {
      v26 = [AVTPreset availablePresetsForCategory:v14];
      v16 = [v26 firstObject];

      v27 = [v16 identifier];
      [(AVTMemojiDescriptor *)v75 setPresetIdentifier:v27 forCategory:v14];

      v17 = 0;
      v18 = 0;
LABEL_20:

      goto LABEL_21;
    }

    v17 = 0;
    v18 = 0;
LABEL_21:
    v80 = 0;
    v28 = AVTIdentifierOfUpgradedColorPresetForAssetPresetIdentifier(v14, v17, 0, &v80, v74);
    if (v28)
    {
      LODWORD(v29) = v80;
      v30 = [AVTColorPreset colorPresetWithName:v28 category:v14 colorIndex:0 variation:v29];
LABEL_23:
      [(AVTMemojiDescriptor *)v75 setColorPreset:v30 forCategory:v14 colorIndex:0];
      goto LABEL_37;
    }

    v31 = [v9 avt_objectForKey:v73 ofClasses:v72 didFail:&v85 error:a5];
    v30 = v31;
    if (v85)
    {
      v32 = v9;
LABEL_79:

      v9 = v32;
      goto LABEL_74;
    }

    v32 = v9;
    if (v14 == 34 && !v31 && !v71)
    {
      v33 = AVTPresetCategoryToColorCategoryString(4uLL);
      v30 = [v9 avt_objectForKey:v33 ofClasses:v72 didFail:&v85 error:a5];
      v34 = v85;

      v28 = 0;
      if (v34)
      {
        goto LABEL_79;
      }
    }

    if (v30)
    {
      v35 = v18;
    }

    else
    {
      v35 = 1;
    }

    if ((v35 & 1) == 0)
    {
      v36 = [objc_opt_class() colorPresetFromColorData:v30 forCategory:v14 colorIndex:0 version:v74 didFail:&v85 error:a5];
      [(AVTMemojiDescriptor *)v75 setColorPreset:v36 forCategory:v14 colorIndex:0];

      goto LABEL_37;
    }

    if (!v71)
    {
      goto LABEL_38;
    }

    v30 = [AVTColorPreset fallbackColorPresetForNilPresetAndCategory:v14 colorIndex:0];
    if (v30)
    {
      goto LABEL_23;
    }

LABEL_37:

LABEL_38:
    v37 = [(AVTMemojiDescriptor *)v75 colorPresetForCategory:v14 colorIndex:0];
    v79[0] = MEMORY[0x1E69E9820];
    v79[1] = 3221225472;
    v79[2] = __58__AVTMemojiDescriptor__decode_isResettingToDefault_error___block_invoke;
    v79[3] = &unk_1E7F49B00;
    v79[4] = v75;
    [v37 enumerateDerivedColorPresetsUsingBlock:v79];

    v78 = 0;
    v38 = AVTIdentifierOfUpgradedColorPresetForAssetPresetIdentifier(v14, v17, 1uLL, &v78, v74);
    v39 = v38;
    if (v38)
    {
      if ([v38 isEqualToString:@"$archived-primary"])
      {
        v41 = [v9 avt_objectForKey:v73 ofClasses:v72 didFail:&v85 error:a5];
        v42 = v41;
        if (v85)
        {

LABEL_81:
          goto LABEL_74;
        }

        v43 = [objc_opt_class() colorPresetFromColorData:v41 forCategory:v14 colorIndex:0 version:v74 didFail:&v85 error:a5];
      }

      else
      {
        LODWORD(v40) = v78;
        v43 = [AVTColorPreset colorPresetWithName:v39 category:v14 colorIndex:1 variation:v40];
      }

LABEL_51:
      [(AVTMemojiDescriptor *)v75 setColorPreset:v43 forCategory:v14 colorIndex:1];
LABEL_52:

      goto LABEL_53;
    }

    v44 = [v69 avt_objectForKey:v73 ofClasses:v72 didFail:&v85 error:a5];
    v45 = v44;
    v46 = v85;
    if ((v85 & 1) == 0 && v44)
    {
      [objc_opt_class() colorPresetFromColorData:v44 forCategory:v14 colorIndex:1 version:v74 didFail:&v85 error:a5];
      v47 = v9;
      v49 = v48 = v28;
      [(AVTMemojiDescriptor *)v75 setColorPreset:v49 forCategory:v14 colorIndex:1];

      v28 = v48;
      v9 = v47;
    }

    if (v46)
    {
      goto LABEL_81;
    }

    if (!v45 && v71)
    {
      v43 = [AVTColorPreset fallbackColorPresetForNilPresetAndCategory:v14 colorIndex:1];
      if (!v43)
      {
        goto LABEL_52;
      }

      goto LABEL_51;
    }

LABEL_53:
    v77 = 0;
    v50 = AVTIdentifierOfUpgradedColorPresetForAssetPresetIdentifier(v14, v17, 2uLL, &v77, v74);
    v51 = v50;
    if (v50)
    {
      break;
    }

    v59 = [v68 avt_objectForKey:v73 ofClasses:v72 didFail:&v85 error:a5];
    v60 = v59;
    v61 = v85;
    if ((v85 & 1) == 0 && v59)
    {
      [objc_opt_class() colorPresetFromColorData:v59 forCategory:v14 colorIndex:2 version:v74 didFail:&v85 error:a5];
      v62 = v39;
      v64 = v63 = v28;
      [(AVTMemojiDescriptor *)v75 setColorPreset:v64 forCategory:v14 colorIndex:2];

      v28 = v63;
      v39 = v62;
    }

    if (v61)
    {
      goto LABEL_83;
    }

    v9 = v70;
    if (!v60 && v71)
    {
      v58 = [AVTColorPreset fallbackColorPresetForNilPresetAndCategory:v14 colorIndex:2];
      if (!v58)
      {
        goto LABEL_67;
      }

      goto LABEL_66;
    }

LABEL_68:

    if (++v14 == 40)
    {
      goto LABEL_75;
    }
  }

  if (![v50 isEqualToString:@"$archived-primary"])
  {
    LODWORD(v52) = v77;
    v58 = [AVTColorPreset colorPresetWithName:v51 category:v14 colorIndex:2 variation:v52];
    goto LABEL_66;
  }

  v53 = v9;
  v54 = v28;
  v55 = v53;
  v56 = [v53 avt_objectForKey:v73 ofClasses:v72 didFail:&v85 error:a5];
  v57 = v56;
  if ((v85 & 1) == 0)
  {
    v58 = [objc_opt_class() colorPresetFromColorData:v56 forCategory:v14 colorIndex:0 version:v74 didFail:&v85 error:a5];

    v28 = v54;
    v9 = v55;
LABEL_66:
    [(AVTMemojiDescriptor *)v75 setColorPreset:v58 forCategory:v14 colorIndex:2];
LABEL_67:

    goto LABEL_68;
  }

  v28 = v54;
LABEL_83:

LABEL_73:
  v9 = v70;
LABEL_74:

LABEL_75:
  v8 = v66;
  v7 = v67;
  v11 = v68;
  v10 = v69;
LABEL_76:

  v65 = *MEMORY[0x1E69E9840];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(AVTMemojiDescriptor);
  v5 = 0;
  presetIdentifiers = self->_presetIdentifiers;
  v7 = v4;
  do
  {
    objc_storeStrong(&v4->_presetIdentifiers[v5], presetIdentifiers[v5]);
    v8 = 0;
    v9 = v7->_colorPresets[0];
    do
    {
      objc_storeStrong(v9++, self->_colorPresets[0][v8++]);
    }

    while (v8 != 3);
    ++v5;
    self = (self + 24);
    v7 = (v7 + 24);
  }

  while (v5 != 40);
  return v4;
}

- (id)description
{
  v4.receiver = self;
  v4.super_class = AVTMemojiDescriptor;
  v2 = [(AVTMemojiDescriptor *)&v4 description];

  return v2;
}

- (id)debugDescription
{
  v3 = objc_alloc_init(MEMORY[0x1E696AD60]);
  for (i = 0; i != 40; ++i)
  {
    v5 = self->_presetIdentifiers[i];
    v6 = v5;
    if (v5 && ![(NSString *)v5 isEqualToString:@"none"])
    {
      if ([v3 length])
      {
        v7 = @", ";
      }

      else
      {
        v7 = &stru_1F39AEE78;
      }

      v8 = v7;
      v9 = AVTPresetCategoryToString(i);
      [v3 appendFormat:@"%@%@=%@", v8, v9, v6];
    }
  }

  v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"<%@ %p | %@>", objc_opt_class(), self, v3];

  return v10;
}

- (void)presetIdentifierForCategory:.cold.1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_3_3();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)setPresetIdentifier:forCategory:.cold.1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)setColorPreset:forCategory:colorIndex:.cold.1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

@end