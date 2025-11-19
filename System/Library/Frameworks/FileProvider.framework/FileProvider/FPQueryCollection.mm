@interface FPQueryCollection
+ (void)disableMountPointQueries;
+ (void)enableMountPointQueries;
+ (void)resumeAllQueries;
+ (void)suspendAllQueries;
- (NSArray)allowedFileTypes;
- (NSArray)allowedProviderIdentifiers;
- (NSArray)excludedFileTypes;
- (NSArray)excludedParentOIDs;
- (NSNumber)desiredNumberOfItems;
- (NSString)tagIdentifier;
- (id)_createDescriptorWithSortDescriptors:(id)a3;
- (id)_enumerationSettingsPredicate;
- (id)createDataSourceWithSortDescriptors:(id)a3;
- (id)description;
- (id)scopedSearchQuery;
- (id)underlyingQueryStringForMountPoint:(id)a3;
- (void)dataSource:(id)a3 didChangeItemsOrigin:(unint64_t)a4;
- (void)setAllowedFileTypes:(id)a3;
- (void)setAllowedProviderIdentifiers:(id)a3;
- (void)setDesiredNumberOfItems:(id)a3;
- (void)setExcludedFileTypes:(id)a3;
- (void)setExcludedParentOIDs:(id)a3;
- (void)setTagIdentifier:(id)a3;
@end

@implementation FPQueryCollection

+ (void)enableMountPointQueries
{
  v2 = +[FPSpotlightCollectorManager sharedInstance];
  [v2 enableMountPointQueries];
}

- (id)_enumerationSettingsPredicate
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = v2->_settings;
  v4 = v2->_predicate;
  v5 = MEMORY[0x1E696AE18];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __50__FPQueryCollection__enumerationSettingsPredicate__block_invoke;
  v10[3] = &unk_1E793A970;
  v6 = v4;
  v11 = v6;
  v7 = v3;
  v12 = v7;
  v8 = [v5 predicateWithBlock:v10];

  objc_sync_exit(v2);

  return v8;
}

uint64_t __50__FPQueryCollection__enumerationSettingsPredicate__block_invoke(uint64_t a1, void *a2)
{
  v41 = *MEMORY[0x1E69E9840];
  v3 = a2;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      __50__FPQueryCollection__enumerationSettingsPredicate__block_invoke_cold_1();
    }
  }

  v4 = v3;
  v5 = *(a1 + 32);
  if (v5 && ![v5 evaluateWithObject:v4])
  {
    goto LABEL_28;
  }

  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v6 = [*(a1 + 40) excludedFileTypes];
  v7 = [v6 countByEnumeratingWithState:&v35 objects:v40 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v36;
    while (2)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v36 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v35 + 1) + 8 * i);
        v12 = [v4 contentType];
        v13 = [MEMORY[0x1E6982C40] fp_cachedTypeWithIdentifier:v11];
        v14 = [v12 conformsToType:v13];

        if (v14)
        {
          v22 = 0;
          goto LABEL_27;
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v35 objects:v40 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

  v15 = [*(a1 + 40) allowedProviders];
  if (!v15)
  {
    goto LABEL_16;
  }

  v16 = v15;
  v17 = [*(a1 + 40) allowedProviders];
  v18 = [v4 providerID];
  v19 = [v17 containsObject:v18];

  if (!v19)
  {
LABEL_28:
    v22 = 0;
  }

  else
  {
LABEL_16:
    v20 = [*(a1 + 40) allowedFileTypes];
    v21 = [v20 count];

    if (v21)
    {
      v33 = 0u;
      v34 = 0u;
      v31 = 0u;
      v32 = 0u;
      v6 = [*(a1 + 40) allowedFileTypes];
      v22 = [v6 countByEnumeratingWithState:&v31 objects:v39 count:16];
      if (v22)
      {
        v23 = *v32;
        while (2)
        {
          for (j = 0; j != v22; ++j)
          {
            if (*v32 != v23)
            {
              objc_enumerationMutation(v6);
            }

            v25 = *(*(&v31 + 1) + 8 * j);
            v26 = [v4 contentType];
            v27 = [MEMORY[0x1E6982C40] fp_cachedTypeWithIdentifier:v25];
            v28 = [v26 conformsToType:v27];

            if (v28)
            {
              v22 = 1;
              goto LABEL_27;
            }
          }

          v22 = [v6 countByEnumeratingWithState:&v31 objects:v39 count:16];
          if (v22)
          {
            continue;
          }

          break;
        }
      }

LABEL_27:
    }

    else
    {
      v22 = 1;
    }
  }

  v29 = *MEMORY[0x1E69E9840];
  return v22;
}

- (id)description
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  descriptionName = v2->_descriptionName;
  v6 = [v3 stringWithFormat:@"<%@:%p %@ %@>", v4, v2, descriptionName, v2->_settings];
  objc_sync_exit(v2);

  return v6;
}

- (id)createDataSourceWithSortDescriptors:(id)a3
{
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  v6 = [(FPQueryCollection *)v5 _enumerationSettingsPredicate];
  [(FPItemCollection *)v5 setAdditionalItemFilteringPredicate:v6];

  v7 = [(FPQueryCollection *)v5 _createDescriptorWithSortDescriptors:v4];
  v8 = [[FPSpotlightDataSource alloc] initWithQueryDescriptor:v7 predicate:v5->_predicate];

  objc_sync_exit(v5);

  return v8;
}

- (void)dataSource:(id)a3 didChangeItemsOrigin:(unint64_t)a4
{
  v7 = a3;
  v6 = self;
  objc_sync_enter(v6);
  if (v6->_itemsOrigin != a4)
  {
    [(FPQueryCollection *)v6 willChangeValueForKey:@"itemsOrigin"];
    v6->_itemsOrigin = a4;
    [(FPQueryCollection *)v6 didChangeValueForKey:@"itemsOrigin"];
  }

  objc_sync_exit(v6);
}

- (id)scopedSearchQuery
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = [(FPQueryCollection *)v2 _createDescriptorWithSortDescriptors:0];
  v4 = [[NSFileProviderSearchQuery alloc] initWithSearchScope:0];
  v5 = [NSFileProviderDomain alloc];
  v6 = [(FPItemCollection *)v2 domainIdentifier];
  v7 = [(NSFileProviderDomain *)v5 initWithIdentifier:v6 displayName:&stru_1F1F94B20 pathRelativeToDocumentStorage:&stru_1F1F94B20];

  v8 = [FPProviderDomain alloc];
  v9 = [(FPItemCollection *)v2 providerIdentifier];
  v10 = [(FPProviderDomain *)v8 initWithProviderID:v9 domain:v7];

  v11 = [(FPProviderDomain *)v10 spotlightMountPoint];
  v12 = [v3 queryStringForMountPoint:v11];
  [(NSFileProviderSearchQuery *)v4 setScopeFragment:v12];

  objc_sync_exit(v2);

  return v4;
}

+ (void)suspendAllQueries
{
  v2 = +[FPSpotlightCollectorManager sharedInstance];
  [v2 suspendCollectors];
}

+ (void)resumeAllQueries
{
  v2 = +[FPSpotlightCollectorManager sharedInstance];
  [v2 resumeCollectors];
}

+ (void)disableMountPointQueries
{
  v2 = +[FPSpotlightCollectorManager sharedInstance];
  [v2 disableMountPointQueries];
}

- (void)setDesiredNumberOfItems:(id)a3
{
  v5 = a3;
  v4 = self;
  objc_sync_enter(v4);
  [(FPQueryEnumerationSettings *)v4->_settings setDesiredNumberOfItems:v5];
  objc_sync_exit(v4);
}

- (NSNumber)desiredNumberOfItems
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = [(FPQueryEnumerationSettings *)v2->_settings desiredNumberOfItems];
  objc_sync_exit(v2);

  return v3;
}

- (void)setAllowedFileTypes:(id)a3
{
  v6 = a3;
  v4 = self;
  objc_sync_enter(v4);
  v5 = [v6 copy];
  [(FPQueryEnumerationSettings *)v4->_settings setAllowedFileTypes:v5];

  objc_sync_exit(v4);
}

- (NSArray)allowedFileTypes
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = [(FPQueryEnumerationSettings *)v2->_settings allowedFileTypes];
  objc_sync_exit(v2);

  return v3;
}

- (void)setExcludedFileTypes:(id)a3
{
  v6 = a3;
  v4 = self;
  objc_sync_enter(v4);
  v5 = [v6 copy];
  [(FPQueryEnumerationSettings *)v4->_settings setExcludedFileTypes:v5];

  objc_sync_exit(v4);
}

- (NSArray)excludedFileTypes
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = [(FPQueryEnumerationSettings *)v2->_settings excludedFileTypes];
  objc_sync_exit(v2);

  return v3;
}

- (void)setExcludedParentOIDs:(id)a3
{
  v6 = a3;
  v4 = self;
  objc_sync_enter(v4);
  v5 = [v6 copy];
  [(FPQueryEnumerationSettings *)v4->_settings setExcludedParentOIDs:v5];

  objc_sync_exit(v4);
}

- (NSArray)excludedParentOIDs
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = [(FPQueryEnumerationSettings *)v2->_settings excludedParentOIDs];
  objc_sync_exit(v2);

  return v3;
}

- (void)setAllowedProviderIdentifiers:(id)a3
{
  v6 = a3;
  v4 = self;
  objc_sync_enter(v4);
  v5 = [v6 copy];
  [(FPQueryEnumerationSettings *)v4->_settings setAllowedProviders:v5];

  objc_sync_exit(v4);
}

- (NSArray)allowedProviderIdentifiers
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = [(FPQueryEnumerationSettings *)v2->_settings allowedProviders];
  objc_sync_exit(v2);

  return v3;
}

- (id)underlyingQueryStringForMountPoint:(id)a3
{
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  v6 = [(FPQueryCollection *)v5 _createDescriptorWithSortDescriptors:0];
  v7 = [v6 queryStringForMountPoint:v4];

  objc_sync_exit(v5);

  return v7;
}

- (id)_createDescriptorWithSortDescriptors:(id)a3
{
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  v6 = [(FPQueryEnumerationSettings *)v5->_settings copy];
  [v6 setSortDescriptors:v4];
  v7 = [objc_alloc(v5->_descriptorClass) initWithSettings:v6];

  objc_sync_exit(v5);

  return v7;
}

- (void)setTagIdentifier:(id)a3
{
  v7 = a3;
  v4 = self;
  objc_sync_enter(v4);
  v5 = [v7 copy];
  v6 = [(FPQueryCollection *)v4 settings];
  [v6 setTagIdentifier:v5];

  objc_sync_exit(v4);
}

- (NSString)tagIdentifier
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = [(FPQueryCollection *)v2 settings];
  v4 = [v3 tagIdentifier];

  objc_sync_exit(v2);

  return v4;
}

void __50__FPQueryCollection__enumerationSettingsPredicate__block_invoke_cold_1()
{
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  v0 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[FPQueryCollection _enumerationSettingsPredicate]_block_invoke"];
  [v1 handleFailureInFunction:v0 file:@"FPQueryCollection.m" lineNumber:246 description:@"Only items are allowed to be evaluated."];
}

@end