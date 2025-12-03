@interface AVTMemojiDescriptor
+ (id)colorPresetFromColorData:(id)data forCategory:(int64_t)category colorIndex:(unint64_t)index version:(unsigned __int16)version didFail:(BOOL *)fail error:(id *)error;
+ (id)presetsDictionaryFromRecipe:(id)recipe didFail:(BOOL *)fail error:(id *)error;
+ (id)randomDescriptor;
- (AVTMemojiDescriptor)initWithCoder:(id)coder;
- (AVTMemojiDescriptor)initWithMemoji:(id)memoji;
- (id)colorPresetForCategory:(int64_t)category colorIndex:(unint64_t)index;
- (id)copyWithZone:(_NSZone *)zone;
- (id)debugDescription;
- (id)description;
- (id)presetIdentifierForCategory:(int64_t)category;
- (void)_decode:(id)_decode isResettingToDefault:(BOOL)default error:(id *)error;
- (void)applyToMemoji:(id)memoji;
- (void)encodeInDictionaryRepresentation:(id)representation;
- (void)encodeWithCoder:(id)coder;
- (void)setColorPreset:(id)preset forCategory:(int64_t)category colorIndex:(unint64_t)index;
- (void)setPresetIdentifier:(id)identifier forCategory:(int64_t)category;
@end

@implementation AVTMemojiDescriptor

- (AVTMemojiDescriptor)initWithMemoji:(id)memoji
{
  memojiCopy = memoji;
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
      v9 = [memojiCopy presetForCategory:v7];
      identifier = [v9 identifier];
      v11 = v6->_presetIdentifiers[v7];
      v6->_presetIdentifiers[v7] = identifier;

      for (i = 0; i != 3; ++i)
      {
        v13 = [memojiCopy colorPresetForCategory:v7 colorIndex:i];
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
  v2 = objc_alloc_init(self);
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

- (void)applyToMemoji:(id)memoji
{
  memojiCopy = memoji;
  v4 = 0;
  presetIdentifiers = self->_presetIdentifiers;
  do
  {
    v6 = presetIdentifiers[v4];
    if (v6)
    {
      v7 = [AVTPreset presetWithCategory:v4 identifier:v6];
      [memojiCopy setPreset:v7 forCategory:v4 animated:0];
    }

    else
    {
      [memojiCopy setPreset:0 forCategory:v4 animated:0];
    }

    for (i = 0; i != 3; ++i)
    {
      v9 = self->_colorPresets[0][i];
      if (v9)
      {
        [memojiCopy setColorPreset:v9 forCategory:v4 colorIndex:i];
      }
    }

    ++v4;
    self = (self + 24);
  }

  while (v4 != 40);
}

- (id)presetIdentifierForCategory:(int64_t)category
{
  if (category < 40)
  {
    v4 = self->_presetIdentifiers[category];
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

- (void)setPresetIdentifier:(id)identifier forCategory:(int64_t)category
{
  identifierCopy = identifier;
  v7 = identifierCopy;
  if (category < 40)
  {
    if (identifierCopy)
    {
      v9 = [AVTPreset presetWithCategory:category identifier:identifierCopy];
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
    v8 = self->_presetIdentifiers[category];
    presetIdentifiers[category] = v12;
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

- (void)setColorPreset:(id)preset forCategory:(int64_t)category colorIndex:(unint64_t)index
{
  presetCopy = preset;
  v9 = presetCopy;
  if (category < 40)
  {
    if (presetCopy && [presetCopy category] != category)
    {
      v11 = avt_default_log();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        [AVTMemojiDescriptor setColorPreset:forCategory:colorIndex:];
      }
    }

    if (index >= 3)
    {
      [AVTMemojiDescriptor setColorPreset:forCategory:colorIndex:];
    }

    v12 = self->_colorPresets[category];
    v13 = v9;
    p_super = &v12[index]->super;
    v12[index] = v13;
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

- (id)colorPresetForCategory:(int64_t)category colorIndex:(unint64_t)index
{
  if (category < 40)
  {
    if (index >= 3)
    {
      [AVTMemojiDescriptor colorPresetForCategory:colorIndex:];
    }

    v5 = self->_colorPresets[category][index];
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

+ (id)presetsDictionaryFromRecipe:(id)recipe didFail:(BOOL *)fail error:(id *)error
{
  recipeCopy = recipe;
  v8 = [recipeCopy avt_objectForKey:@"presets" ofClass:objc_opt_class() didFail:fail error:error];

  if (*fail)
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

+ (id)colorPresetFromColorData:(id)data forCategory:(int64_t)category colorIndex:(unint64_t)index version:(unsigned __int16)version didFail:(BOOL *)fail error:(id *)error
{
  versionCopy = version;
  dataCopy = data;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v14 = AVTUpgradeColorPresetIdentifierIfNeeded(category, dataCopy, versionCopy);
    v15 = [AVTColorPreset colorPresetWithName:v14 category:category colorIndex:index variation:0.0];
LABEL_3:

    goto LABEL_8;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v16 = [dataCopy avt_objectForKey:@"variation" ofClass:objc_opt_class() didFail:fail error:error];
    v14 = v16;
    if (*fail)
    {
      v15 = 0;
    }

    else
    {
      [v16 floatValue];
      v19 = v18;
      v20 = [dataCopy avt_objectForKey:@"name" ofClass:objc_opt_class() didFail:fail error:error];
      if (*fail)
      {
        v15 = 0;
      }

      else
      {
        if (versionCopy < 8 && category == 10)
        {
          v19 = -v19;
        }

        v22 = AVTUpgradeColorPresetIdentifierIfNeeded(category, v20, versionCopy);

        *&v23 = v19;
        v15 = [AVTColorPreset colorPresetWithName:v22 category:category colorIndex:index variation:v23];
        v20 = v22;
      }
    }

    goto LABEL_3;
  }

  v15 = 0;
LABEL_8:

  return v15;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v36.receiver = self;
  v36.super_class = AVTMemojiDescriptor;
  [(AVTAvatarDescriptor *)&v36 encodeWithCoder:coderCopy];
  v5 = 0;
  v6 = 0x1E696A000uLL;
  selfCopy = self;
  do
  {
    v7 = AVTPresetCategoryToString(v5);
    v8 = [(AVTMemojiDescriptor *)self presetIdentifierForCategory:v5];
    if (v8)
    {
      v9 = [*(v6 + 3776) stringWithFormat:@"%@-presetIdentifier", v7];
      [coderCopy encodeObject:v8 forKey:v9];
    }

    v10 = [(AVTMemojiDescriptor *)self colorPresetForCategory:v5 colorIndex:0];
    v11 = v10;
    if (v10)
    {
      name = [v10 name];
      v13 = [*(v6 + 3776) stringWithFormat:@"%@-primaryColorName", v7];
      [coderCopy encodeObject:name forKey:v13];

      [v11 variation];
      v15 = v14;
      v16 = [*(v6 + 3776) stringWithFormat:@"%@-primaryColorVariation", v7];
      LODWORD(v17) = v15;
      [coderCopy encodeFloat:v16 forKey:v17];
    }

    v18 = [(AVTMemojiDescriptor *)self colorPresetForCategory:v5 colorIndex:1];
    v19 = v18;
    if (v18)
    {
      name2 = [v18 name];
      v21 = [*(v6 + 3776) stringWithFormat:@"%@-secondaryColorName", v7];
      [coderCopy encodeObject:name2 forKey:v21];

      [v19 variation];
      v23 = v22;
      v24 = [*(v6 + 3776) stringWithFormat:@"%@-secondaryColorVariation", v7];
      LODWORD(v25) = v23;
      [coderCopy encodeFloat:v24 forKey:v25];
    }

    v26 = [(AVTMemojiDescriptor *)self colorPresetForCategory:v5 colorIndex:2];
    v27 = v26;
    if (v26)
    {
      name3 = [v26 name];
      [*(v6 + 3776) stringWithFormat:@"%@-tertiaryColorName", v7];
      v30 = v29 = v6;
      [coderCopy encodeObject:name3 forKey:v30];

      v6 = v29;
      self = selfCopy;

      [v27 variation];
      v32 = v31;
      v33 = [*(v6 + 3776) stringWithFormat:@"%@-tertiaryColorVariation", v7];
      LODWORD(v34) = v32;
      [coderCopy encodeFloat:v33 forKey:v34];
    }

    ++v5;
  }

  while (v5 != 40);
}

- (AVTMemojiDescriptor)initWithCoder:(id)coder
{
  v70[2] = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  v64.receiver = self;
  v64.super_class = AVTMemojiDescriptor;
  v5 = [(AVTAvatarDescriptor *)&v64 initWithCoder:coderCopy];
  v6 = v5;
  if (v5)
  {
    v58 = v5;
    v7 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v8 = [coderCopy decodeIntegerForKey:@"version"];
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
      v18 = [coderCopy decodeObjectOfClass:v16 forKey:v17];

      if (v18)
      {
        [v61 setObject:v18 forKeyedSubscript:v14];
      }

      v63 = v18;
      v19 = *(v13 + 3776);
      v20 = objc_opt_class();
      v21 = [*(v13 + 3776) stringWithFormat:@"%@-primaryColorName", v14];
      v22 = [coderCopy decodeObjectOfClass:v20 forKey:v21];

      if (v22)
      {
        v23 = [*(v13 + 3776) stringWithFormat:@"%@-primaryColorVariation", v14];
        [coderCopy decodeFloatForKey:v23];
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
      v32 = [coderCopy decodeObjectOfClass:v30 forKey:v31];

      if (v32)
      {
        v33 = [*(v13 + 3776) stringWithFormat:@"%@-secondaryColorVariation", v14];
        [coderCopy decodeFloatForKey:v33];
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
      v42 = [coderCopy decodeObjectOfClass:v40 forKey:v41];

      if (v42)
      {
        v43 = [*(v13 + 3776) stringWithFormat:@"%@-tertiaryColorVariation", v14];
        [coderCopy decodeFloatForKey:v43];
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
        v52 = coderCopy;
        v54 = v53 = v11;
        [v59 setObject:v54 forKeyedSubscript:v14];

        v11 = v53;
        coderCopy = v52;
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

- (void)encodeInDictionaryRepresentation:(id)representation
{
  v47[2] = *MEMORY[0x1E69E9840];
  representationCopy = representation;
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
    representationCopy = [(AVTMemojiDescriptor *)self colorPresetForCategory:v4 colorIndex:0, representationCopy];
    v11 = representationCopy;
    if (representationCopy)
    {
      v46[0] = v5;
      name = [representationCopy name];
      v47[0] = name;
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
      name2 = [v17 name];
      v44[1] = @"variation";
      v45[0] = name2;
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
      name3 = [v23 name];
      v42[1] = @"variation";
      v43[0] = name3;
      v25 = *(v6 + 3480);
      [v24 variation];
      v26 = [v25 numberWithFloat:?];
      v43[1] = v26;
      [*(v7 + 3872) dictionaryWithObjects:v43 forKeys:v42 count:2];
      v27 = v7;
      v28 = v6;
      v29 = v5;
      selfCopy = self;
      v32 = v31 = v16;
      [v35 setObject:v32 forKeyedSubscript:v31];

      v16 = v31;
      self = selfCopy;
      v5 = v29;
      v6 = v28;
      v7 = v27;
    }

    ++v4;
  }

  while (v4 != 40);
  [representationCopy setObject:v37 forKeyedSubscript:@"presets"];
  [representationCopy setObject:v36 forKeyedSubscript:@"colors"];
  if ([v38 count])
  {
    [representationCopy setObject:v38 forKeyedSubscript:@"secondaryColors"];
  }

  if ([v35 count])
  {
    [representationCopy setObject:v35 forKeyedSubscript:@"tertiaryColors"];
  }

  v33 = *MEMORY[0x1E69E9840];
}

- (void)_decode:(id)_decode isResettingToDefault:(BOOL)default error:(id *)error
{
  defaultCopy = default;
  v87 = *MEMORY[0x1E69E9840];
  _decodeCopy = _decode;
  v85 = 0;
  v8 = [_decodeCopy avt_objectForKey:@"version" ofClass:objc_opt_class() didFail:&v85 error:error];
  selfCopy = self;
  v76 = [objc_opt_class() presetsDictionaryFromRecipe:_decodeCopy didFail:&v85 error:error];
  v9 = [_decodeCopy avt_objectForKey:@"colors" ofClass:objc_opt_class() didFail:&v85 error:error];
  v10 = [_decodeCopy avt_objectForKey:@"secondaryColors" ofClass:objc_opt_class() didFail:&v85 error:error];
  v11 = [_decodeCopy avt_objectForKey:@"tertiaryColors" ofClass:objc_opt_class() didFail:&v85 error:error];
  if (v85)
  {
    goto LABEL_76;
  }

  v68 = v11;
  v69 = v10;
  v66 = v8;
  v67 = _decodeCopy;
  intValue = [v8 intValue];
  v12 = MEMORY[0x1E695DFD8];
  v13 = objc_opt_class();
  v72 = [v12 setWithObjects:{v13, objc_opt_class(), 0}];
  v14 = 0;
  v70 = v9;
  while (1)
  {
    v73 = AVTPresetCategoryToString(v14);
    v15 = [v76 avt_objectForKey:v73 ofClass:objc_opt_class() didFail:&v85 error:error];
    firstObject = v15;
    if (v85)
    {
      v17 = v15;
      goto LABEL_74;
    }

    if (v15)
    {
LABEL_5:
      v17 = AVTUpgradePresetIdentifierIfNeeded(v14, firstObject, intValue);
      if (v17 == firstObject)
      {
        v18 = 0;
      }

      else
      {
        v18 = [firstObject isEqualToString:@"none"];
      }

      [(AVTMemojiDescriptor *)selfCopy setPresetIdentifier:v17 forCategory:v14];
      goto LABEL_20;
    }

    v19 = AVTUpgradesForPresetCategory(v14, intValue);
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

          v25 = [v76 avt_objectForKey:*(*(&v81 + 1) + 8 * i) ofClass:objc_opt_class() didFail:&v85 error:error];
          firstObject = v25;
          if (v85)
          {

            v17 = firstObject;
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

    if (defaultCopy)
    {
      v26 = [AVTPreset availablePresetsForCategory:v14];
      firstObject = [v26 firstObject];

      identifier = [firstObject identifier];
      [(AVTMemojiDescriptor *)selfCopy setPresetIdentifier:identifier forCategory:v14];

      v17 = 0;
      v18 = 0;
LABEL_20:

      goto LABEL_21;
    }

    v17 = 0;
    v18 = 0;
LABEL_21:
    v80 = 0;
    v28 = AVTIdentifierOfUpgradedColorPresetForAssetPresetIdentifier(v14, v17, 0, &v80, intValue);
    if (v28)
    {
      LODWORD(v29) = v80;
      v30 = [AVTColorPreset colorPresetWithName:v28 category:v14 colorIndex:0 variation:v29];
LABEL_23:
      [(AVTMemojiDescriptor *)selfCopy setColorPreset:v30 forCategory:v14 colorIndex:0];
      goto LABEL_37;
    }

    v31 = [v9 avt_objectForKey:v73 ofClasses:v72 didFail:&v85 error:error];
    v30 = v31;
    if (v85)
    {
      v32 = v9;
LABEL_79:

      v9 = v32;
      goto LABEL_74;
    }

    v32 = v9;
    if (v14 == 34 && !v31 && !defaultCopy)
    {
      v33 = AVTPresetCategoryToColorCategoryString(4uLL);
      v30 = [v9 avt_objectForKey:v33 ofClasses:v72 didFail:&v85 error:error];
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
      v36 = [objc_opt_class() colorPresetFromColorData:v30 forCategory:v14 colorIndex:0 version:intValue didFail:&v85 error:error];
      [(AVTMemojiDescriptor *)selfCopy setColorPreset:v36 forCategory:v14 colorIndex:0];

      goto LABEL_37;
    }

    if (!defaultCopy)
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
    v37 = [(AVTMemojiDescriptor *)selfCopy colorPresetForCategory:v14 colorIndex:0];
    v79[0] = MEMORY[0x1E69E9820];
    v79[1] = 3221225472;
    v79[2] = __58__AVTMemojiDescriptor__decode_isResettingToDefault_error___block_invoke;
    v79[3] = &unk_1E7F49B00;
    v79[4] = selfCopy;
    [v37 enumerateDerivedColorPresetsUsingBlock:v79];

    v78 = 0;
    v38 = AVTIdentifierOfUpgradedColorPresetForAssetPresetIdentifier(v14, v17, 1uLL, &v78, intValue);
    v39 = v38;
    if (v38)
    {
      if ([v38 isEqualToString:@"$archived-primary"])
      {
        v41 = [v9 avt_objectForKey:v73 ofClasses:v72 didFail:&v85 error:error];
        v42 = v41;
        if (v85)
        {

LABEL_81:
          goto LABEL_74;
        }

        v43 = [objc_opt_class() colorPresetFromColorData:v41 forCategory:v14 colorIndex:0 version:intValue didFail:&v85 error:error];
      }

      else
      {
        LODWORD(v40) = v78;
        v43 = [AVTColorPreset colorPresetWithName:v39 category:v14 colorIndex:1 variation:v40];
      }

LABEL_51:
      [(AVTMemojiDescriptor *)selfCopy setColorPreset:v43 forCategory:v14 colorIndex:1];
LABEL_52:

      goto LABEL_53;
    }

    v44 = [v69 avt_objectForKey:v73 ofClasses:v72 didFail:&v85 error:error];
    v45 = v44;
    v46 = v85;
    if ((v85 & 1) == 0 && v44)
    {
      [objc_opt_class() colorPresetFromColorData:v44 forCategory:v14 colorIndex:1 version:intValue didFail:&v85 error:error];
      v47 = v9;
      v49 = v48 = v28;
      [(AVTMemojiDescriptor *)selfCopy setColorPreset:v49 forCategory:v14 colorIndex:1];

      v28 = v48;
      v9 = v47;
    }

    if (v46)
    {
      goto LABEL_81;
    }

    if (!v45 && defaultCopy)
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
    v50 = AVTIdentifierOfUpgradedColorPresetForAssetPresetIdentifier(v14, v17, 2uLL, &v77, intValue);
    v51 = v50;
    if (v50)
    {
      break;
    }

    v59 = [v68 avt_objectForKey:v73 ofClasses:v72 didFail:&v85 error:error];
    v60 = v59;
    v61 = v85;
    if ((v85 & 1) == 0 && v59)
    {
      [objc_opt_class() colorPresetFromColorData:v59 forCategory:v14 colorIndex:2 version:intValue didFail:&v85 error:error];
      v62 = v39;
      v64 = v63 = v28;
      [(AVTMemojiDescriptor *)selfCopy setColorPreset:v64 forCategory:v14 colorIndex:2];

      v28 = v63;
      v39 = v62;
    }

    if (v61)
    {
      goto LABEL_83;
    }

    v9 = v70;
    if (!v60 && defaultCopy)
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
  v56 = [v53 avt_objectForKey:v73 ofClasses:v72 didFail:&v85 error:error];
  v57 = v56;
  if ((v85 & 1) == 0)
  {
    v58 = [objc_opt_class() colorPresetFromColorData:v56 forCategory:v14 colorIndex:0 version:intValue didFail:&v85 error:error];

    v28 = v54;
    v9 = v55;
LABEL_66:
    [(AVTMemojiDescriptor *)selfCopy setColorPreset:v58 forCategory:v14 colorIndex:2];
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
  _decodeCopy = v67;
  v11 = v68;
  v10 = v69;
LABEL_76:

  v65 = *MEMORY[0x1E69E9840];
}

- (id)copyWithZone:(_NSZone *)zone
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