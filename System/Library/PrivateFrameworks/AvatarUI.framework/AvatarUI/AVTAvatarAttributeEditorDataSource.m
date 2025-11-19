@interface AVTAvatarAttributeEditorDataSource
+ (id)sectionControllerForSection:(id)a3 renderingScheduler:(id)a4 environment:(id)a5;
+ (unint64_t)indexForCurrentCategoryGivenPreferredIdentifier:(id)a3 categories:(id)a4;
- (AVTAvatarAttributeEditorDataSource)initWithCategories:(id)a3 currentCategoryIdentifier:(id)a4 renderingScheduler:(id)a5;
- (AVTAvatarAttributeEditorDataSource)initWithCategories:(id)a3 currentCategoryIdentifier:(id)a4 renderingScheduler:(id)a5 environment:(id)a6;
- (BOOL)shouldDisplaySectionWithDisplayCondition:(id)a3 inCategoryAtIndex:(unint64_t)a4;
- (id)categoryAtIndex:(int64_t)a3;
- (id)currentCategoryIdentifier;
- (id)groupPickerItemsForCategories;
- (id)indexesForSectionsExcludingSectionsWithIdentifiers:(id)a3 inCategoryAtIndex:(int64_t)a4;
- (id)indexesForSectionsPresentIn:(id)a3 butNotIn:(id)a4;
- (id)sectionControllerForSection:(id)a3;
- (id)sectionControllerForSectionIndex:(int64_t)a3 inCategoryAtIndex:(int64_t)a4;
- (id)sectionCoordinatorForSectionAtIndex:(int64_t)a3 inCategoryAtIndex:(int64_t)a4;
- (id)sectionForIndex:(int64_t)a3 inCategoryAtIndex:(int64_t)a4;
- (id)sectionProviderForSectionAtIndex:(int64_t)a3 inCategoryAtIndex:(int64_t)a4;
- (int64_t)indexForSection:(id)a3 inCategoryAtIndex:(int64_t)a4;
- (int64_t)numberOfCategories;
- (int64_t)numberOfSectionsForCategoryAtIndex:(int64_t)a3;
- (void)discardControllersForNonCurrentCategory;
- (void)reloadWithCategories:(id)a3 currentCategoryIndex:(unint64_t)a4;
- (void)updateCoordinatorsFromCategory:(id)a3 currentCoordinators:(id)a4;
@end

@implementation AVTAvatarAttributeEditorDataSource

+ (id)sectionControllerForSection:(id)a3 renderingScheduler:(id)a4 environment:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  if ([v7 conformsToProtocol:&unk_1F39D2D00])
  {
    v10 = [[AVTAvatarAttributeEditorSectionColorController alloc] initWithEnvironment:v9];
LABEL_5:
    v11 = v10;
    goto LABEL_7;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = objc_alloc_init(AVTAvatarAttributeEditorMulticolorSectionPickerController);
    goto LABEL_5;
  }

  v12 = [AVTOrderedIndexBasedTaskScheduler alloc];
  v13 = [v9 coreEnvironment];
  v14 = [(AVTOrderedIndexBasedTaskScheduler *)v12 initWithEnvironment:v13];

  v11 = [[AVTAvatarAttributeEditorSectionController alloc] initWithThumbnailScheduler:v14 renderingScheduler:v8 environment:v9];
LABEL_7:

  return v11;
}

+ (unint64_t)indexForCurrentCategoryGivenPreferredIdentifier:(id)a3 categories:(id)a4
{
  v5 = a3;
  v6 = a4;
  if ([v6 count])
  {
    if (v5)
    {
      v10[0] = MEMORY[0x1E69E9820];
      v10[1] = 3221225472;
      v10[2] = __97__AVTAvatarAttributeEditorDataSource_indexForCurrentCategoryGivenPreferredIdentifier_categories___block_invoke;
      v10[3] = &unk_1E7F3B070;
      v11 = v5;
      v7 = [v6 indexOfObjectPassingTest:v10];
      if (v7 == 0x7FFFFFFFFFFFFFFFLL)
      {
        v8 = 0;
      }

      else
      {
        v8 = v7;
      }
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0x7FFFFFFFFFFFFFFFLL;
  }

  return v8;
}

uint64_t __97__AVTAvatarAttributeEditorDataSource_indexForCurrentCategoryGivenPreferredIdentifier_categories___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 modelGroup];
  v4 = [v3 name];
  v5 = [v4 isEqual:*(a1 + 32)];

  return v5;
}

- (AVTAvatarAttributeEditorDataSource)initWithCategories:(id)a3 currentCategoryIdentifier:(id)a4 renderingScheduler:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = +[AVTUIEnvironment defaultEnvironment];
  v12 = [(AVTAvatarAttributeEditorDataSource *)self initWithCategories:v10 currentCategoryIdentifier:v9 renderingScheduler:v8 environment:v11];

  return v12;
}

- (AVTAvatarAttributeEditorDataSource)initWithCategories:(id)a3 currentCategoryIdentifier:(id)a4 renderingScheduler:(id)a5 environment:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v22.receiver = self;
  v22.super_class = AVTAvatarAttributeEditorDataSource;
  v15 = [(AVTAvatarAttributeEditorDataSource *)&v22 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_categories, a3);
    v17 = [MEMORY[0x1E695DF90] dictionary];
    sectionControllers = v16->_sectionControllers;
    v16->_sectionControllers = v17;

    v19 = [MEMORY[0x1E695DF90] dictionary];
    sectionCoordinatorsByProvider = v16->_sectionCoordinatorsByProvider;
    v16->_sectionCoordinatorsByProvider = v19;

    objc_storeStrong(&v16->_environment, a6);
    objc_storeStrong(&v16->_renderingScheduler, a5);
    v16->_currentCategoryIndex = [objc_opt_class() indexForCurrentCategoryGivenPreferredIdentifier:v12 categories:v11];
  }

  return v16;
}

- (void)reloadWithCategories:(id)a3 currentCategoryIndex:(unint64_t)a4
{
  v8 = a3;
  if ([v8 count])
  {
    v6 = [v8 objectAtIndexedSubscript:a4];
    v7 = [(AVTAvatarAttributeEditorDataSource *)self sectionCoordinatorsByProvider];
    [(AVTAvatarAttributeEditorDataSource *)self updateCoordinatorsFromCategory:v6 currentCoordinators:v7];
  }

  [(AVTAvatarAttributeEditorDataSource *)self setCategories:v8];
  [(AVTAvatarAttributeEditorDataSource *)self setCurrentCategoryIndex:a4];
  [(AVTAvatarAttributeEditorDataSource *)self discardControllersForNonCurrentCategory];
}

- (void)updateCoordinatorsFromCategory:(id)a3 currentCoordinators:(id)a4
{
  v54 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v7 = v6;
  if (v5)
  {
    v8 = [v6 allKeys];
    v9 = [v8 mutableCopy];

    v10 = [v5 sectionProviders];
    v11 = [v10 avt_map:&__block_literal_global_6];

    v12 = [v11 differenceFromArray:v9];
    v13 = [v12 removals];

    if (v13)
    {
      v14 = [v12 removals];
      v15 = [v14 avt_map:&__block_literal_global_101];

      [v7 removeObjectsForKeys:v15];
    }

    v16 = [v12 insertions];

    if (v16)
    {
      v41 = v11;
      v42 = v9;
      v17 = [v12 insertions];
      v18 = [v17 avt_map:&__block_literal_global_103];

      v19 = MEMORY[0x1E695DF90];
      v20 = [v5 sectionProviders];
      v21 = [v19 dictionaryWithCapacity:{objc_msgSend(v20, "count")}];

      v50 = 0u;
      v51 = 0u;
      v48 = 0u;
      v49 = 0u;
      v43 = v5;
      v22 = [v5 sectionProviders];
      v23 = [v22 countByEnumeratingWithState:&v48 objects:v53 count:16];
      if (v23)
      {
        v24 = v23;
        v25 = *v49;
        do
        {
          for (i = 0; i != v24; ++i)
          {
            if (*v49 != v25)
            {
              objc_enumerationMutation(v22);
            }

            v27 = *(*(&v48 + 1) + 8 * i);
            v28 = [v27 identifier];
            [v21 setObject:v27 forKeyedSubscript:v28];
          }

          v24 = [v22 countByEnumeratingWithState:&v48 objects:v53 count:16];
        }

        while (v24);
      }

      v40 = v12;

      v46 = 0u;
      v47 = 0u;
      v44 = 0u;
      v45 = 0u;
      v29 = v18;
      v30 = [v29 countByEnumeratingWithState:&v44 objects:v52 count:16];
      if (v30)
      {
        v31 = v30;
        v32 = *v45;
        do
        {
          for (j = 0; j != v31; ++j)
          {
            if (*v45 != v32)
            {
              objc_enumerationMutation(v29);
            }

            v34 = [v21 objectForKeyedSubscript:{*(*(&v44 + 1) + 8 * j), v40}];
            v35 = v34;
            if (v34)
            {
              v36 = [v34 sections];
              v37 = [v36 count];

              if (v37 >= 2)
              {
                v38 = objc_alloc_init(AVTAvatarAttributeEditorSectionCoordinator);
                v39 = [v35 identifier];
                [v7 setObject:v38 forKeyedSubscript:v39];
              }
            }
          }

          v31 = [v29 countByEnumeratingWithState:&v44 objects:v52 count:16];
        }

        while (v31);
      }

      v9 = v42;
      v5 = v43;
      v12 = v40;
      v11 = v41;
    }
  }
}

- (void)discardControllersForNonCurrentCategory
{
  v23 = *MEMORY[0x1E69E9840];
  v3 = [(AVTAvatarAttributeEditorDataSource *)self categories];
  v4 = [v3 count];

  if (v4)
  {
    v5 = 0;
    do
    {
      if (v5 != [(AVTAvatarAttributeEditorDataSource *)self currentCategoryIndex])
      {
        v20 = 0u;
        v21 = 0u;
        v18 = 0u;
        v19 = 0u;
        v6 = [(AVTAvatarAttributeEditorDataSource *)self categories];
        v7 = [v6 objectAtIndexedSubscript:v5];
        v8 = [v7 sections];

        v9 = [v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
        if (v9)
        {
          v10 = v9;
          v11 = *v19;
          do
          {
            v12 = 0;
            do
            {
              if (*v19 != v11)
              {
                objc_enumerationMutation(v8);
              }

              v13 = *(*(&v18 + 1) + 8 * v12);
              v14 = [(AVTAvatarAttributeEditorDataSource *)self sectionControllers];
              v15 = [v13 identifier];
              [v14 setObject:0 forKeyedSubscript:v15];

              ++v12;
            }

            while (v10 != v12);
            v10 = [v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
          }

          while (v10);
        }
      }

      ++v5;
      v16 = [(AVTAvatarAttributeEditorDataSource *)self categories];
      v17 = [v16 count];
    }

    while (v5 < v17);
  }
}

- (int64_t)numberOfCategories
{
  v2 = [(AVTAvatarAttributeEditorDataSource *)self categories];
  v3 = [v2 count];

  return v3;
}

- (id)groupPickerItemsForCategories
{
  v22 = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E695DF70];
  v4 = [(AVTAvatarAttributeEditorDataSource *)self categories];
  v5 = [v3 arrayWithCapacity:{objc_msgSend(v4, "count")}];

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v6 = [(AVTAvatarAttributeEditorDataSource *)self categories];
  v7 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v18;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v18 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v17 + 1) + 8 * i);
        v12 = [AVTGroupPickerItem alloc];
        v13 = [v11 localizedName];
        v14 = [v11 symbolNameProvider];
        v15 = [(AVTGroupPickerItem *)v12 initWithLocalizedName:v13 symbolNameProvider:v14];

        [v5 addObject:v15];
      }

      v8 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v8);
  }

  return v5;
}

- (id)categoryAtIndex:(int64_t)a3
{
  v4 = [(AVTAvatarAttributeEditorDataSource *)self categories];
  v5 = [v4 objectAtIndexedSubscript:a3];

  return v5;
}

- (id)sectionProviderForSectionAtIndex:(int64_t)a3 inCategoryAtIndex:(int64_t)a4
{
  v23 = *MEMORY[0x1E69E9840];
  v5 = [(AVTAvatarAttributeEditorDataSource *)self categoryAtIndex:a4];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v6 = [v5 sectionProviders];
  v7 = [v6 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = 0;
    v10 = *v19;
    while (2)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v19 != v10)
        {
          objc_enumerationMutation(v6);
        }

        v12 = *(*(&v18 + 1) + 8 * i);
        v13 = [v12 sections];
        v14 = [v13 count] + v9;

        if (v14 >= a3)
        {
          v16 = v12;
          goto LABEL_11;
        }

        v15 = [v12 sections];
        v9 += [v15 count];
      }

      v8 = [v6 countByEnumeratingWithState:&v18 objects:v22 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

  v16 = 0;
LABEL_11:

  return v16;
}

- (int64_t)numberOfSectionsForCategoryAtIndex:(int64_t)a3
{
  v4 = [(AVTAvatarAttributeEditorDataSource *)self categories];
  v5 = [v4 objectAtIndexedSubscript:a3];
  v6 = [v5 sections];
  v7 = [v6 count];

  return v7;
}

- (id)sectionControllerForSectionIndex:(int64_t)a3 inCategoryAtIndex:(int64_t)a4
{
  v7 = [AVTAvatarAttributeEditorDataSource sectionForIndex:"sectionForIndex:inCategoryAtIndex:" inCategoryAtIndex:?];
  v8 = [(AVTAvatarAttributeEditorDataSource *)self sectionControllerForSection:v7];
  v9 = [(AVTAvatarAttributeEditorDataSource *)self sectionProviderForSectionAtIndex:a3 inCategoryAtIndex:a4];
  v10 = [(AVTAvatarAttributeEditorDataSource *)self sectionCoordinatorsByProvider];
  v11 = [v9 identifier];
  v12 = [v10 objectForKeyedSubscript:v11];

  if (v12)
  {
    [v12 addSectionController:v8];
  }

  return v8;
}

- (id)sectionCoordinatorForSectionAtIndex:(int64_t)a3 inCategoryAtIndex:(int64_t)a4
{
  v5 = [(AVTAvatarAttributeEditorDataSource *)self sectionProviderForSectionAtIndex:a3 inCategoryAtIndex:a4];
  v6 = [(AVTAvatarAttributeEditorDataSource *)self sectionCoordinatorsByProvider];
  v7 = [v5 identifier];
  v8 = [v6 objectForKeyedSubscript:v7];

  return v8;
}

- (id)sectionControllerForSection:(id)a3
{
  v4 = a3;
  v5 = [(AVTAvatarAttributeEditorDataSource *)self sectionControllers];
  v6 = [v4 identifier];
  v7 = [v5 objectForKeyedSubscript:v6];

  if (!v7)
  {
    v8 = objc_opt_class();
    v9 = [(AVTAvatarAttributeEditorDataSource *)self renderingScheduler];
    v10 = [(AVTAvatarAttributeEditorDataSource *)self environment];
    v7 = [v8 sectionControllerForSection:v4 renderingScheduler:v9 environment:v10];
  }

  [v7 updateWithSection:v4];
  v11 = [(AVTAvatarAttributeEditorDataSource *)self sectionControllers];
  v12 = [v4 identifier];
  [v11 setObject:v7 forKeyedSubscript:v12];

  return v7;
}

- (id)sectionForIndex:(int64_t)a3 inCategoryAtIndex:(int64_t)a4
{
  v7 = [(AVTAvatarAttributeEditorDataSource *)self categories];
  if ([v7 count] <= a4)
  {
    v14 = 0;
    goto LABEL_5;
  }

  v8 = [(AVTAvatarAttributeEditorDataSource *)self categories];
  v9 = [v8 objectAtIndexedSubscript:a4];
  v10 = [v9 sections];
  v11 = [v10 count];

  if (v11 > a3)
  {
    v7 = [(AVTAvatarAttributeEditorDataSource *)self categories];
    v12 = [v7 objectAtIndexedSubscript:a4];
    v13 = [v12 sections];
    v14 = [v13 objectAtIndexedSubscript:a3];

LABEL_5:
    goto LABEL_7;
  }

  v14 = 0;
LABEL_7:

  return v14;
}

- (int64_t)indexForSection:(id)a3 inCategoryAtIndex:(int64_t)a4
{
  v6 = a3;
  v7 = [(AVTAvatarAttributeEditorDataSource *)self categories];
  v8 = [v7 objectAtIndexedSubscript:a4];
  v9 = [v8 sections];
  v10 = [v9 indexOfObject:v6];

  return v10;
}

- (id)indexesForSectionsExcludingSectionsWithIdentifiers:(id)a3 inCategoryAtIndex:(int64_t)a4
{
  v6 = a3;
  v7 = [(AVTAvatarAttributeEditorDataSource *)self categories];
  v8 = [v7 objectAtIndexedSubscript:a4];
  v9 = [v8 sections];

  if ([v9 count])
  {
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __107__AVTAvatarAttributeEditorDataSource_indexesForSectionsExcludingSectionsWithIdentifiers_inCategoryAtIndex___block_invoke;
    v12[3] = &unk_1E7F3B0D8;
    v13 = v6;
    v10 = [v9 indexesOfObjectsPassingTest:v12];
  }

  else
  {
    v10 = [MEMORY[0x1E696AC90] indexSet];
  }

  return v10;
}

uint64_t __107__AVTAvatarAttributeEditorDataSource_indexesForSectionsExcludingSectionsWithIdentifiers_inCategoryAtIndex___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 identifier];
  LODWORD(v2) = [v2 containsObject:v3];

  return v2 ^ 1;
}

- (id)indexesForSectionsPresentIn:(id)a3 butNotIn:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v5 sections];
  v8 = [v7 count];

  if (v8)
  {
    v9 = [v6 sections];
    v10 = [v9 avt_map:&__block_literal_global_111];

    v11 = [v5 sections];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __75__AVTAvatarAttributeEditorDataSource_indexesForSectionsPresentIn_butNotIn___block_invoke_2;
    v15[3] = &unk_1E7F3B120;
    v16 = v10;
    v12 = v10;
    v13 = [v11 indexesOfObjectsPassingTest:v15];
  }

  else
  {
    v13 = [MEMORY[0x1E696AC90] indexSet];
  }

  return v13;
}

uint64_t __75__AVTAvatarAttributeEditorDataSource_indexesForSectionsPresentIn_butNotIn___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 identifier];
  LODWORD(v2) = [v2 containsObject:v3];

  return v2 ^ 1;
}

- (id)currentCategoryIdentifier
{
  v2 = [(AVTAvatarAttributeEditorDataSource *)self categoryAtIndex:[(AVTAvatarAttributeEditorDataSource *)self currentCategoryIndex]];
  v3 = [v2 modelGroup];
  v4 = [v3 name];

  return v4;
}

- (BOOL)shouldDisplaySectionWithDisplayCondition:(id)a3 inCategoryAtIndex:(unint64_t)a4
{
  v6 = a3;
  v7 = -[AVTAvatarAttributeEditorDataSource sectionForIndex:inCategoryAtIndex:](self, "sectionForIndex:inCategoryAtIndex:", [v6 targetSectionIndex], a4);
  if (v7)
  {
    v8 = [(AVTAvatarAttributeEditorDataSource *)self sectionControllerForSection:v7];
    v9 = v8;
    if (v8)
    {
      v10 = [v8 evaluateDisplayCondition:v6];
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

@end