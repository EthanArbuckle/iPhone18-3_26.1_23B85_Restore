@interface AVTAvatarAttributeEditorModel
- (AVTAvatarAttributeEditorModel)initWithCategories:(id)categories;
- (id)differenceFromModel:(id)model;
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

- (AVTAvatarAttributeEditorModel)initWithCategories:(id)categories
{
  categoriesCopy = categories;
  v9.receiver = self;
  v9.super_class = AVTAvatarAttributeEditorModel;
  v6 = [(AVTAvatarAttributeEditorModel *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_categories, categories);
  }

  return v7;
}

- (id)differenceFromModel:(id)model
{
  v50 = *MEMORY[0x1E69E9840];
  modelCopy = model;
  array = [MEMORY[0x1E695DF70] array];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  categories = [modelCopy categories];
  v5 = [categories count];

  if (v5)
  {
    v6 = 0;
    v35 = modelCopy;
    do
    {
      categories2 = [modelCopy categories];
      v8 = [categories2 objectAtIndexedSubscript:v6];

      categories3 = [(AVTAvatarAttributeEditorModel *)self categories];
      v40 = v6;
      v10 = [categories3 objectAtIndexedSubscript:v6];

      v11 = objc_opt_class();
      sections = [v10 sections];
      sections2 = [v8 sections];
      v14 = [v11 diffOfSections:sections fromSections:sections2];

      v37 = v14;
      [array addObject:v14];
      v15 = MEMORY[0x1E695DF20];
      v39 = v8;
      sections3 = [v8 sections];
      v44 = [v15 _avtui_dictionaryByIndexingObjectsInArray:sections3 by:&__block_literal_global_8];

      v17 = MEMORY[0x1E695DF20];
      v38 = v10;
      sections4 = [v10 sections];
      v19 = [v17 _avtui_dictionaryByIndexingObjectsInArray:sections4 by:&__block_literal_global_10];

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
              sectionItems = [v25 sectionItems];
              sectionItems2 = [v26 sectionItems];
              v30 = [v27 diffOfSectionItems:sectionItems fromSectionItems:sectionItems2];

              if ([v30 hasChanges])
              {
                [dictionary setObject:v30 forKeyedSubscript:v24];
              }
            }
          }

          v21 = [obj countByEnumeratingWithState:&v45 objects:v49 count:16];
        }

        while (v21);
      }

      v6 = v40 + 1;
      modelCopy = v35;
      categories4 = [v35 categories];
      v32 = [categories4 count];
    }

    while (v40 + 1 < v32);
  }

  v33 = [[AVTAvatarAttributeEditorModelDiff alloc] initWithSectionDiffs:array sectionItemDiffs:dictionary];

  return v33;
}

@end