@interface AVTAvatarAttributeEditorCategory
- (AVTAvatarAttributeEditorCategory)initWithSectionProviders:(id)a3 localizedName:(id)a4 previewMode:(id)a5 modelGroup:(id)a6 symbolNames:(id)a7;
- (NSString)description;
- (id)representedAVTPresetResources;
- (id)symbolNameProvider;
@end

@implementation AVTAvatarAttributeEditorCategory

- (AVTAvatarAttributeEditorCategory)initWithSectionProviders:(id)a3 localizedName:(id)a4 previewMode:(id)a5 modelGroup:(id)a6 symbolNames:(id)a7
{
  v43 = *MEMORY[0x1E69E9840];
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v41.receiver = self;
  v41.super_class = AVTAvatarAttributeEditorCategory;
  v17 = [(AVTAvatarAttributeEditorCategory *)&v41 init];
  if (v17)
  {
    v32 = v16;
    v33 = v15;
    v34 = v14;
    obj = a7;
    v36 = v13;
    v18 = [v12 copy];
    sectionProviders = v17->_sectionProviders;
    v17->_sectionProviders = v18;

    v20 = [MEMORY[0x1E695DF70] array];
    v37 = 0u;
    v38 = 0u;
    v39 = 0u;
    v40 = 0u;
    v21 = v12;
    v22 = [v21 countByEnumeratingWithState:&v37 objects:v42 count:16];
    if (v22)
    {
      v23 = v22;
      v24 = *v38;
      do
      {
        v25 = 0;
        do
        {
          if (*v38 != v24)
          {
            objc_enumerationMutation(v21);
          }

          v26 = [*(*(&v37 + 1) + 8 * v25) sections];
          [v20 addObjectsFromArray:v26];

          ++v25;
        }

        while (v23 != v25);
        v23 = [v21 countByEnumeratingWithState:&v37 objects:v42 count:16];
      }

      while (v23);
    }

    v27 = [v20 copy];
    sections = v17->_sections;
    v17->_sections = v27;

    v13 = v36;
    v29 = [v36 copy];
    localizedName = v17->_localizedName;
    v17->_localizedName = v29;

    objc_storeStrong(&v17->_previewMode, a5);
    objc_storeStrong(&v17->_modelGroup, a6);
    objc_storeStrong(&v17->_symbolNames, obj);

    v15 = v33;
    v14 = v34;
    v16 = v32;
  }

  return v17;
}

- (id)symbolNameProvider
{
  v2 = [(AVTAvatarAttributeEditorCategory *)self symbolNames];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __54__AVTAvatarAttributeEditorCategory_symbolNameProvider__block_invoke;
  v6[3] = &unk_1E7F3A680;
  v7 = v2;
  v3 = v2;
  v4 = [v6 copy];

  return v4;
}

id __54__AVTAvatarAttributeEditorCategory_symbolNameProvider__block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  v4 = [MEMORY[0x1E69DD1B8] traitCollectionWithUserInterfaceStyle:a2];
  v5 = [v3 objectForKey:v4];

  if (!v5)
  {
    v6 = *(a1 + 32);
    v7 = [MEMORY[0x1E69DD1B8] traitCollectionWithUserInterfaceStyle:1];
    v5 = [v6 objectForKey:v7];
  }

  return v5;
}

- (NSString)description
{
  v12.receiver = self;
  v12.super_class = AVTAvatarAttributeEditorCategory;
  v3 = [(AVTAvatarAttributeEditorCategory *)&v12 description];
  v4 = [v3 mutableCopy];

  v5 = [(AVTAvatarAttributeEditorCategory *)self localizedName];
  v6 = [(AVTAvatarAttributeEditorCategory *)self sections];
  v7 = [v6 avt_description];
  v8 = [(AVTAvatarAttributeEditorCategory *)self symbolNames];
  v9 = [v8 allValues];
  [v4 appendFormat:@" name: %@, sections: %@, symbols: %@", v5, v7, v9];

  v10 = [v4 copy];

  return v10;
}

- (id)representedAVTPresetResources
{
  v33 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF70] array];
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v4 = [(AVTAvatarAttributeEditorCategory *)self modelGroup];
  v5 = [v4 categories];

  obj = v5;
  v6 = [v5 countByEnumeratingWithState:&v27 objects:v32 count:16];
  if (v6)
  {
    v7 = v6;
    v22 = *v28;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v28 != v22)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v27 + 1) + 8 * i);
        v23 = 0u;
        v24 = 0u;
        v25 = 0u;
        v26 = 0u;
        v10 = [v9 presets];
        v11 = [v10 countByEnumeratingWithState:&v23 objects:v31 count:16];
        if (v11)
        {
          v12 = v11;
          v13 = *v24;
          do
          {
            for (j = 0; j != v12; ++j)
            {
              if (*v24 != v13)
              {
                objc_enumerationMutation(v10);
              }

              v15 = *(*(&v23 + 1) + 8 * j);
              v16 = [AVTPresetResources alloc];
              v17 = [v15 preset];
              v18 = [(AVTPresetResources *)v16 initWithPreset:v17];

              [v3 addObject:v18];
            }

            v12 = [v10 countByEnumeratingWithState:&v23 objects:v31 count:16];
          }

          while (v12);
        }
      }

      v7 = [obj countByEnumeratingWithState:&v27 objects:v32 count:16];
    }

    while (v7);
  }

  v19 = [v3 copy];

  return v19;
}

@end