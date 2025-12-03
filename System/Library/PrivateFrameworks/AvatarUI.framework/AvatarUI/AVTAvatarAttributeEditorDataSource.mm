@interface AVTAvatarAttributeEditorDataSource
+ (id)sectionControllerForSection:(id)section renderingScheduler:(id)scheduler environment:(id)environment;
+ (unint64_t)indexForCurrentCategoryGivenPreferredIdentifier:(id)identifier categories:(id)categories;
- (AVTAvatarAttributeEditorDataSource)initWithCategories:(id)categories currentCategoryIdentifier:(id)identifier renderingScheduler:(id)scheduler;
- (AVTAvatarAttributeEditorDataSource)initWithCategories:(id)categories currentCategoryIdentifier:(id)identifier renderingScheduler:(id)scheduler environment:(id)environment;
- (BOOL)shouldDisplaySectionWithDisplayCondition:(id)condition inCategoryAtIndex:(unint64_t)index;
- (id)categoryAtIndex:(int64_t)index;
- (id)currentCategoryIdentifier;
- (id)groupPickerItemsForCategories;
- (id)indexesForSectionsExcludingSectionsWithIdentifiers:(id)identifiers inCategoryAtIndex:(int64_t)index;
- (id)indexesForSectionsPresentIn:(id)in butNotIn:(id)notIn;
- (id)sectionControllerForSection:(id)section;
- (id)sectionControllerForSectionIndex:(int64_t)index inCategoryAtIndex:(int64_t)atIndex;
- (id)sectionCoordinatorForSectionAtIndex:(int64_t)index inCategoryAtIndex:(int64_t)atIndex;
- (id)sectionForIndex:(int64_t)index inCategoryAtIndex:(int64_t)atIndex;
- (id)sectionProviderForSectionAtIndex:(int64_t)index inCategoryAtIndex:(int64_t)atIndex;
- (int64_t)indexForSection:(id)section inCategoryAtIndex:(int64_t)index;
- (int64_t)numberOfCategories;
- (int64_t)numberOfSectionsForCategoryAtIndex:(int64_t)index;
- (void)discardControllersForNonCurrentCategory;
- (void)reloadWithCategories:(id)categories currentCategoryIndex:(unint64_t)index;
- (void)updateCoordinatorsFromCategory:(id)category currentCoordinators:(id)coordinators;
@end

@implementation AVTAvatarAttributeEditorDataSource

+ (id)sectionControllerForSection:(id)section renderingScheduler:(id)scheduler environment:(id)environment
{
  sectionCopy = section;
  schedulerCopy = scheduler;
  environmentCopy = environment;
  if ([sectionCopy conformsToProtocol:&unk_1F39D2D00])
  {
    v10 = [[AVTAvatarAttributeEditorSectionColorController alloc] initWithEnvironment:environmentCopy];
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
  coreEnvironment = [environmentCopy coreEnvironment];
  v14 = [(AVTOrderedIndexBasedTaskScheduler *)v12 initWithEnvironment:coreEnvironment];

  v11 = [[AVTAvatarAttributeEditorSectionController alloc] initWithThumbnailScheduler:v14 renderingScheduler:schedulerCopy environment:environmentCopy];
LABEL_7:

  return v11;
}

+ (unint64_t)indexForCurrentCategoryGivenPreferredIdentifier:(id)identifier categories:(id)categories
{
  identifierCopy = identifier;
  categoriesCopy = categories;
  if ([categoriesCopy count])
  {
    if (identifierCopy)
    {
      v10[0] = MEMORY[0x1E69E9820];
      v10[1] = 3221225472;
      v10[2] = __97__AVTAvatarAttributeEditorDataSource_indexForCurrentCategoryGivenPreferredIdentifier_categories___block_invoke;
      v10[3] = &unk_1E7F3B070;
      v11 = identifierCopy;
      v7 = [categoriesCopy indexOfObjectPassingTest:v10];
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

- (AVTAvatarAttributeEditorDataSource)initWithCategories:(id)categories currentCategoryIdentifier:(id)identifier renderingScheduler:(id)scheduler
{
  schedulerCopy = scheduler;
  identifierCopy = identifier;
  categoriesCopy = categories;
  v11 = +[AVTUIEnvironment defaultEnvironment];
  v12 = [(AVTAvatarAttributeEditorDataSource *)self initWithCategories:categoriesCopy currentCategoryIdentifier:identifierCopy renderingScheduler:schedulerCopy environment:v11];

  return v12;
}

- (AVTAvatarAttributeEditorDataSource)initWithCategories:(id)categories currentCategoryIdentifier:(id)identifier renderingScheduler:(id)scheduler environment:(id)environment
{
  categoriesCopy = categories;
  identifierCopy = identifier;
  schedulerCopy = scheduler;
  environmentCopy = environment;
  v22.receiver = self;
  v22.super_class = AVTAvatarAttributeEditorDataSource;
  v15 = [(AVTAvatarAttributeEditorDataSource *)&v22 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_categories, categories);
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    sectionControllers = v16->_sectionControllers;
    v16->_sectionControllers = dictionary;

    dictionary2 = [MEMORY[0x1E695DF90] dictionary];
    sectionCoordinatorsByProvider = v16->_sectionCoordinatorsByProvider;
    v16->_sectionCoordinatorsByProvider = dictionary2;

    objc_storeStrong(&v16->_environment, environment);
    objc_storeStrong(&v16->_renderingScheduler, scheduler);
    v16->_currentCategoryIndex = [objc_opt_class() indexForCurrentCategoryGivenPreferredIdentifier:identifierCopy categories:categoriesCopy];
  }

  return v16;
}

- (void)reloadWithCategories:(id)categories currentCategoryIndex:(unint64_t)index
{
  categoriesCopy = categories;
  if ([categoriesCopy count])
  {
    v6 = [categoriesCopy objectAtIndexedSubscript:index];
    sectionCoordinatorsByProvider = [(AVTAvatarAttributeEditorDataSource *)self sectionCoordinatorsByProvider];
    [(AVTAvatarAttributeEditorDataSource *)self updateCoordinatorsFromCategory:v6 currentCoordinators:sectionCoordinatorsByProvider];
  }

  [(AVTAvatarAttributeEditorDataSource *)self setCategories:categoriesCopy];
  [(AVTAvatarAttributeEditorDataSource *)self setCurrentCategoryIndex:index];
  [(AVTAvatarAttributeEditorDataSource *)self discardControllersForNonCurrentCategory];
}

- (void)updateCoordinatorsFromCategory:(id)category currentCoordinators:(id)coordinators
{
  v54 = *MEMORY[0x1E69E9840];
  categoryCopy = category;
  coordinatorsCopy = coordinators;
  v7 = coordinatorsCopy;
  if (categoryCopy)
  {
    allKeys = [coordinatorsCopy allKeys];
    v9 = [allKeys mutableCopy];

    sectionProviders = [categoryCopy sectionProviders];
    v11 = [sectionProviders avt_map:&__block_literal_global_6];

    v12 = [v11 differenceFromArray:v9];
    removals = [v12 removals];

    if (removals)
    {
      removals2 = [v12 removals];
      v15 = [removals2 avt_map:&__block_literal_global_101];

      [v7 removeObjectsForKeys:v15];
    }

    insertions = [v12 insertions];

    if (insertions)
    {
      v41 = v11;
      v42 = v9;
      insertions2 = [v12 insertions];
      v18 = [insertions2 avt_map:&__block_literal_global_103];

      v19 = MEMORY[0x1E695DF90];
      sectionProviders2 = [categoryCopy sectionProviders];
      v21 = [v19 dictionaryWithCapacity:{objc_msgSend(sectionProviders2, "count")}];

      v50 = 0u;
      v51 = 0u;
      v48 = 0u;
      v49 = 0u;
      v43 = categoryCopy;
      sectionProviders3 = [categoryCopy sectionProviders];
      v23 = [sectionProviders3 countByEnumeratingWithState:&v48 objects:v53 count:16];
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
              objc_enumerationMutation(sectionProviders3);
            }

            v27 = *(*(&v48 + 1) + 8 * i);
            identifier = [v27 identifier];
            [v21 setObject:v27 forKeyedSubscript:identifier];
          }

          v24 = [sectionProviders3 countByEnumeratingWithState:&v48 objects:v53 count:16];
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
              sections = [v34 sections];
              v37 = [sections count];

              if (v37 >= 2)
              {
                v38 = objc_alloc_init(AVTAvatarAttributeEditorSectionCoordinator);
                identifier2 = [v35 identifier];
                [v7 setObject:v38 forKeyedSubscript:identifier2];
              }
            }
          }

          v31 = [v29 countByEnumeratingWithState:&v44 objects:v52 count:16];
        }

        while (v31);
      }

      v9 = v42;
      categoryCopy = v43;
      v12 = v40;
      v11 = v41;
    }
  }
}

- (void)discardControllersForNonCurrentCategory
{
  v23 = *MEMORY[0x1E69E9840];
  categories = [(AVTAvatarAttributeEditorDataSource *)self categories];
  v4 = [categories count];

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
        categories2 = [(AVTAvatarAttributeEditorDataSource *)self categories];
        v7 = [categories2 objectAtIndexedSubscript:v5];
        sections = [v7 sections];

        v9 = [sections countByEnumeratingWithState:&v18 objects:v22 count:16];
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
                objc_enumerationMutation(sections);
              }

              v13 = *(*(&v18 + 1) + 8 * v12);
              sectionControllers = [(AVTAvatarAttributeEditorDataSource *)self sectionControllers];
              identifier = [v13 identifier];
              [sectionControllers setObject:0 forKeyedSubscript:identifier];

              ++v12;
            }

            while (v10 != v12);
            v10 = [sections countByEnumeratingWithState:&v18 objects:v22 count:16];
          }

          while (v10);
        }
      }

      ++v5;
      categories3 = [(AVTAvatarAttributeEditorDataSource *)self categories];
      v17 = [categories3 count];
    }

    while (v5 < v17);
  }
}

- (int64_t)numberOfCategories
{
  categories = [(AVTAvatarAttributeEditorDataSource *)self categories];
  v3 = [categories count];

  return v3;
}

- (id)groupPickerItemsForCategories
{
  v22 = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E695DF70];
  categories = [(AVTAvatarAttributeEditorDataSource *)self categories];
  v5 = [v3 arrayWithCapacity:{objc_msgSend(categories, "count")}];

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  categories2 = [(AVTAvatarAttributeEditorDataSource *)self categories];
  v7 = [categories2 countByEnumeratingWithState:&v17 objects:v21 count:16];
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
          objc_enumerationMutation(categories2);
        }

        v11 = *(*(&v17 + 1) + 8 * i);
        v12 = [AVTGroupPickerItem alloc];
        localizedName = [v11 localizedName];
        symbolNameProvider = [v11 symbolNameProvider];
        v15 = [(AVTGroupPickerItem *)v12 initWithLocalizedName:localizedName symbolNameProvider:symbolNameProvider];

        [v5 addObject:v15];
      }

      v8 = [categories2 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v8);
  }

  return v5;
}

- (id)categoryAtIndex:(int64_t)index
{
  categories = [(AVTAvatarAttributeEditorDataSource *)self categories];
  v5 = [categories objectAtIndexedSubscript:index];

  return v5;
}

- (id)sectionProviderForSectionAtIndex:(int64_t)index inCategoryAtIndex:(int64_t)atIndex
{
  v23 = *MEMORY[0x1E69E9840];
  v5 = [(AVTAvatarAttributeEditorDataSource *)self categoryAtIndex:atIndex];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  sectionProviders = [v5 sectionProviders];
  v7 = [sectionProviders countByEnumeratingWithState:&v18 objects:v22 count:16];
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
          objc_enumerationMutation(sectionProviders);
        }

        v12 = *(*(&v18 + 1) + 8 * i);
        sections = [v12 sections];
        v14 = [sections count] + v9;

        if (v14 >= index)
        {
          v16 = v12;
          goto LABEL_11;
        }

        sections2 = [v12 sections];
        v9 += [sections2 count];
      }

      v8 = [sectionProviders countByEnumeratingWithState:&v18 objects:v22 count:16];
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

- (int64_t)numberOfSectionsForCategoryAtIndex:(int64_t)index
{
  categories = [(AVTAvatarAttributeEditorDataSource *)self categories];
  v5 = [categories objectAtIndexedSubscript:index];
  sections = [v5 sections];
  v7 = [sections count];

  return v7;
}

- (id)sectionControllerForSectionIndex:(int64_t)index inCategoryAtIndex:(int64_t)atIndex
{
  v7 = [AVTAvatarAttributeEditorDataSource sectionForIndex:"sectionForIndex:inCategoryAtIndex:" inCategoryAtIndex:?];
  v8 = [(AVTAvatarAttributeEditorDataSource *)self sectionControllerForSection:v7];
  v9 = [(AVTAvatarAttributeEditorDataSource *)self sectionProviderForSectionAtIndex:index inCategoryAtIndex:atIndex];
  sectionCoordinatorsByProvider = [(AVTAvatarAttributeEditorDataSource *)self sectionCoordinatorsByProvider];
  identifier = [v9 identifier];
  v12 = [sectionCoordinatorsByProvider objectForKeyedSubscript:identifier];

  if (v12)
  {
    [v12 addSectionController:v8];
  }

  return v8;
}

- (id)sectionCoordinatorForSectionAtIndex:(int64_t)index inCategoryAtIndex:(int64_t)atIndex
{
  v5 = [(AVTAvatarAttributeEditorDataSource *)self sectionProviderForSectionAtIndex:index inCategoryAtIndex:atIndex];
  sectionCoordinatorsByProvider = [(AVTAvatarAttributeEditorDataSource *)self sectionCoordinatorsByProvider];
  identifier = [v5 identifier];
  v8 = [sectionCoordinatorsByProvider objectForKeyedSubscript:identifier];

  return v8;
}

- (id)sectionControllerForSection:(id)section
{
  sectionCopy = section;
  sectionControllers = [(AVTAvatarAttributeEditorDataSource *)self sectionControllers];
  identifier = [sectionCopy identifier];
  v7 = [sectionControllers objectForKeyedSubscript:identifier];

  if (!v7)
  {
    v8 = objc_opt_class();
    renderingScheduler = [(AVTAvatarAttributeEditorDataSource *)self renderingScheduler];
    environment = [(AVTAvatarAttributeEditorDataSource *)self environment];
    v7 = [v8 sectionControllerForSection:sectionCopy renderingScheduler:renderingScheduler environment:environment];
  }

  [v7 updateWithSection:sectionCopy];
  sectionControllers2 = [(AVTAvatarAttributeEditorDataSource *)self sectionControllers];
  identifier2 = [sectionCopy identifier];
  [sectionControllers2 setObject:v7 forKeyedSubscript:identifier2];

  return v7;
}

- (id)sectionForIndex:(int64_t)index inCategoryAtIndex:(int64_t)atIndex
{
  categories = [(AVTAvatarAttributeEditorDataSource *)self categories];
  if ([categories count] <= atIndex)
  {
    v14 = 0;
    goto LABEL_5;
  }

  categories2 = [(AVTAvatarAttributeEditorDataSource *)self categories];
  v9 = [categories2 objectAtIndexedSubscript:atIndex];
  sections = [v9 sections];
  v11 = [sections count];

  if (v11 > index)
  {
    categories = [(AVTAvatarAttributeEditorDataSource *)self categories];
    v12 = [categories objectAtIndexedSubscript:atIndex];
    sections2 = [v12 sections];
    v14 = [sections2 objectAtIndexedSubscript:index];

LABEL_5:
    goto LABEL_7;
  }

  v14 = 0;
LABEL_7:

  return v14;
}

- (int64_t)indexForSection:(id)section inCategoryAtIndex:(int64_t)index
{
  sectionCopy = section;
  categories = [(AVTAvatarAttributeEditorDataSource *)self categories];
  v8 = [categories objectAtIndexedSubscript:index];
  sections = [v8 sections];
  v10 = [sections indexOfObject:sectionCopy];

  return v10;
}

- (id)indexesForSectionsExcludingSectionsWithIdentifiers:(id)identifiers inCategoryAtIndex:(int64_t)index
{
  identifiersCopy = identifiers;
  categories = [(AVTAvatarAttributeEditorDataSource *)self categories];
  v8 = [categories objectAtIndexedSubscript:index];
  sections = [v8 sections];

  if ([sections count])
  {
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __107__AVTAvatarAttributeEditorDataSource_indexesForSectionsExcludingSectionsWithIdentifiers_inCategoryAtIndex___block_invoke;
    v12[3] = &unk_1E7F3B0D8;
    v13 = identifiersCopy;
    indexSet = [sections indexesOfObjectsPassingTest:v12];
  }

  else
  {
    indexSet = [MEMORY[0x1E696AC90] indexSet];
  }

  return indexSet;
}

uint64_t __107__AVTAvatarAttributeEditorDataSource_indexesForSectionsExcludingSectionsWithIdentifiers_inCategoryAtIndex___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 identifier];
  LODWORD(v2) = [v2 containsObject:v3];

  return v2 ^ 1;
}

- (id)indexesForSectionsPresentIn:(id)in butNotIn:(id)notIn
{
  inCopy = in;
  notInCopy = notIn;
  sections = [inCopy sections];
  v8 = [sections count];

  if (v8)
  {
    sections2 = [notInCopy sections];
    v10 = [sections2 avt_map:&__block_literal_global_111];

    sections3 = [inCopy sections];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __75__AVTAvatarAttributeEditorDataSource_indexesForSectionsPresentIn_butNotIn___block_invoke_2;
    v15[3] = &unk_1E7F3B120;
    v16 = v10;
    v12 = v10;
    indexSet = [sections3 indexesOfObjectsPassingTest:v15];
  }

  else
  {
    indexSet = [MEMORY[0x1E696AC90] indexSet];
  }

  return indexSet;
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
  modelGroup = [v2 modelGroup];
  name = [modelGroup name];

  return name;
}

- (BOOL)shouldDisplaySectionWithDisplayCondition:(id)condition inCategoryAtIndex:(unint64_t)index
{
  conditionCopy = condition;
  v7 = -[AVTAvatarAttributeEditorDataSource sectionForIndex:inCategoryAtIndex:](self, "sectionForIndex:inCategoryAtIndex:", [conditionCopy targetSectionIndex], index);
  if (v7)
  {
    v8 = [(AVTAvatarAttributeEditorDataSource *)self sectionControllerForSection:v7];
    v9 = v8;
    if (v8)
    {
      v10 = [v8 evaluateDisplayCondition:conditionCopy];
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