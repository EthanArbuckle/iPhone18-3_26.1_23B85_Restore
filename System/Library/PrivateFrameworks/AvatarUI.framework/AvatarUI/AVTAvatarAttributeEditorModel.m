@interface AVTAvatarAttributeEditorModel
- (AVTAvatarAttributeEditorModel)initWithCategories:(id)a3;
- (id)differenceFromModel:(id)a3;
@end

@implementation AVTAvatarAttributeEditorModel

uint64_t __69__AVTAvatarAttributeEditorModel_diffOfSectionItems_fromSectionItems___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 identifier];
  v6 = [v4 identifier];

  v7 = [v5 isEqualToString:v6];
  return v7;
}

uint64_t __61__AVTAvatarAttributeEditorModel_diffOfSections_fromSections___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 identifier];
  v6 = [v4 identifier];

  v7 = [v5 isEqualToString:v6];
  return v7;
}

- (AVTAvatarAttributeEditorModel)initWithCategories:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = AVTAvatarAttributeEditorModel;
  v6 = [(AVTAvatarAttributeEditorModel *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_categories, a3);
  }

  return v7;
}

- (id)differenceFromModel:(id)a3
{
  v50 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v36 = [MEMORY[0x1E695DF70] array];
  v41 = [MEMORY[0x1E695DF90] dictionary];
  v4 = [v3 categories];
  v5 = [v4 count];

  if (v5)
  {
    v6 = 0;
    v35 = v3;
    do
    {
      v7 = [v3 categories];
      v8 = [v7 objectAtIndexedSubscript:v6];

      v9 = [(AVTAvatarAttributeEditorModel *)self categories];
      v40 = v6;
      v10 = [v9 objectAtIndexedSubscript:v6];

      v11 = objc_opt_class();
      v12 = [v10 sections];
      v13 = [v8 sections];
      v14 = [v11 diffOfSections:v12 fromSections:v13];

      v37 = v14;
      [v36 addObject:v14];
      v15 = MEMORY[0x1E695DF20];
      v39 = v8;
      v16 = [v8 sections];
      v44 = [v15 _avtui_dictionaryByIndexingObjectsInArray:v16 by:&__block_literal_global_8];

      v17 = MEMORY[0x1E695DF20];
      v38 = v10;
      v18 = [v10 sections];
      v19 = [v17 _avtui_dictionaryByIndexingObjectsInArray:v18 by:&__block_literal_global_10];

      v47 = 0u;
      v48 = 0u;
      v45 = 0u;
      v46 = 0u;
      obj = [v19 allKeys];
      v20 = [obj countByEnumeratingWithState:&v45 objects:v49 count:16];
      if (v20)
      {
        v21 = v20;
        v22 = *v46;
        do
        {
          for (i = 0; i != v21; ++i)
          {
            if (*v46 != v22)
            {
              objc_enumerationMutation(obj);
            }

            v24 = *(*(&v45 + 1) + 8 * i);
            v25 = [v19 objectForKeyedSubscript:v24];
            v26 = [v44 objectForKeyedSubscript:v24];
            if (v26)
            {
              v27 = objc_opt_class();
              v28 = [v25 sectionItems];
              v29 = [v26 sectionItems];
              v30 = [v27 diffOfSectionItems:v28 fromSectionItems:v29];

              if ([v30 hasChanges])
              {
                [v41 setObject:v30 forKeyedSubscript:v24];
              }
            }
          }

          v21 = [obj countByEnumeratingWithState:&v45 objects:v49 count:16];
        }

        while (v21);
      }

      v6 = v40 + 1;
      v3 = v35;
      v31 = [v35 categories];
      v32 = [v31 count];
    }

    while (v40 + 1 < v32);
  }

  v33 = [[AVTAvatarAttributeEditorModelDiff alloc] initWithSectionDiffs:v36 sectionItemDiffs:v41];

  return v33;
}

@end