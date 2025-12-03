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
- (id)_createDescriptorWithSortDescriptors:(id)descriptors;
- (id)_enumerationSettingsPredicate;
- (id)createDataSourceWithSortDescriptors:(id)descriptors;
- (id)description;
- (id)scopedSearchQuery;
- (id)underlyingQueryStringForMountPoint:(id)point;
- (void)dataSource:(id)source didChangeItemsOrigin:(unint64_t)origin;
- (void)setAllowedFileTypes:(id)types;
- (void)setAllowedProviderIdentifiers:(id)identifiers;
- (void)setDesiredNumberOfItems:(id)items;
- (void)setExcludedFileTypes:(id)types;
- (void)setExcludedParentOIDs:(id)ds;
- (void)setTagIdentifier:(id)identifier;
@end

@implementation FPQueryCollection

+ (void)enableMountPointQueries
{
  v2 = +[FPSpotlightCollectorManager sharedInstance];
  [v2 enableMountPointQueries];
}

- (id)_enumerationSettingsPredicate
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = selfCopy->_settings;
  v4 = selfCopy->_predicate;
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

  objc_sync_exit(selfCopy);

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
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  descriptionName = selfCopy->_descriptionName;
  v6 = [v3 stringWithFormat:@"<%@:%p %@ %@>", v4, selfCopy, descriptionName, selfCopy->_settings];
  objc_sync_exit(selfCopy);

  return v6;
}

- (id)createDataSourceWithSortDescriptors:(id)descriptors
{
  descriptorsCopy = descriptors;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  _enumerationSettingsPredicate = [(FPQueryCollection *)selfCopy _enumerationSettingsPredicate];
  [(FPItemCollection *)selfCopy setAdditionalItemFilteringPredicate:_enumerationSettingsPredicate];

  v7 = [(FPQueryCollection *)selfCopy _createDescriptorWithSortDescriptors:descriptorsCopy];
  v8 = [[FPSpotlightDataSource alloc] initWithQueryDescriptor:v7 predicate:selfCopy->_predicate];

  objc_sync_exit(selfCopy);

  return v8;
}

- (void)dataSource:(id)source didChangeItemsOrigin:(unint64_t)origin
{
  sourceCopy = source;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (selfCopy->_itemsOrigin != origin)
  {
    [(FPQueryCollection *)selfCopy willChangeValueForKey:@"itemsOrigin"];
    selfCopy->_itemsOrigin = origin;
    [(FPQueryCollection *)selfCopy didChangeValueForKey:@"itemsOrigin"];
  }

  objc_sync_exit(selfCopy);
}

- (id)scopedSearchQuery
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = [(FPQueryCollection *)selfCopy _createDescriptorWithSortDescriptors:0];
  v4 = [[NSFileProviderSearchQuery alloc] initWithSearchScope:0];
  v5 = [NSFileProviderDomain alloc];
  domainIdentifier = [(FPItemCollection *)selfCopy domainIdentifier];
  v7 = [(NSFileProviderDomain *)v5 initWithIdentifier:domainIdentifier displayName:&stru_1F1F94B20 pathRelativeToDocumentStorage:&stru_1F1F94B20];

  v8 = [FPProviderDomain alloc];
  providerIdentifier = [(FPItemCollection *)selfCopy providerIdentifier];
  v10 = [(FPProviderDomain *)v8 initWithProviderID:providerIdentifier domain:v7];

  spotlightMountPoint = [(FPProviderDomain *)v10 spotlightMountPoint];
  v12 = [v3 queryStringForMountPoint:spotlightMountPoint];
  [(NSFileProviderSearchQuery *)v4 setScopeFragment:v12];

  objc_sync_exit(selfCopy);

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

- (void)setDesiredNumberOfItems:(id)items
{
  itemsCopy = items;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  [(FPQueryEnumerationSettings *)selfCopy->_settings setDesiredNumberOfItems:itemsCopy];
  objc_sync_exit(selfCopy);
}

- (NSNumber)desiredNumberOfItems
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  desiredNumberOfItems = [(FPQueryEnumerationSettings *)selfCopy->_settings desiredNumberOfItems];
  objc_sync_exit(selfCopy);

  return desiredNumberOfItems;
}

- (void)setAllowedFileTypes:(id)types
{
  typesCopy = types;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v5 = [typesCopy copy];
  [(FPQueryEnumerationSettings *)selfCopy->_settings setAllowedFileTypes:v5];

  objc_sync_exit(selfCopy);
}

- (NSArray)allowedFileTypes
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  allowedFileTypes = [(FPQueryEnumerationSettings *)selfCopy->_settings allowedFileTypes];
  objc_sync_exit(selfCopy);

  return allowedFileTypes;
}

- (void)setExcludedFileTypes:(id)types
{
  typesCopy = types;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v5 = [typesCopy copy];
  [(FPQueryEnumerationSettings *)selfCopy->_settings setExcludedFileTypes:v5];

  objc_sync_exit(selfCopy);
}

- (NSArray)excludedFileTypes
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  excludedFileTypes = [(FPQueryEnumerationSettings *)selfCopy->_settings excludedFileTypes];
  objc_sync_exit(selfCopy);

  return excludedFileTypes;
}

- (void)setExcludedParentOIDs:(id)ds
{
  dsCopy = ds;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v5 = [dsCopy copy];
  [(FPQueryEnumerationSettings *)selfCopy->_settings setExcludedParentOIDs:v5];

  objc_sync_exit(selfCopy);
}

- (NSArray)excludedParentOIDs
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  excludedParentOIDs = [(FPQueryEnumerationSettings *)selfCopy->_settings excludedParentOIDs];
  objc_sync_exit(selfCopy);

  return excludedParentOIDs;
}

- (void)setAllowedProviderIdentifiers:(id)identifiers
{
  identifiersCopy = identifiers;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v5 = [identifiersCopy copy];
  [(FPQueryEnumerationSettings *)selfCopy->_settings setAllowedProviders:v5];

  objc_sync_exit(selfCopy);
}

- (NSArray)allowedProviderIdentifiers
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  allowedProviders = [(FPQueryEnumerationSettings *)selfCopy->_settings allowedProviders];
  objc_sync_exit(selfCopy);

  return allowedProviders;
}

- (id)underlyingQueryStringForMountPoint:(id)point
{
  pointCopy = point;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v6 = [(FPQueryCollection *)selfCopy _createDescriptorWithSortDescriptors:0];
  v7 = [v6 queryStringForMountPoint:pointCopy];

  objc_sync_exit(selfCopy);

  return v7;
}

- (id)_createDescriptorWithSortDescriptors:(id)descriptors
{
  descriptorsCopy = descriptors;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v6 = [(FPQueryEnumerationSettings *)selfCopy->_settings copy];
  [v6 setSortDescriptors:descriptorsCopy];
  v7 = [objc_alloc(selfCopy->_descriptorClass) initWithSettings:v6];

  objc_sync_exit(selfCopy);

  return v7;
}

- (void)setTagIdentifier:(id)identifier
{
  identifierCopy = identifier;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v5 = [identifierCopy copy];
  settings = [(FPQueryCollection *)selfCopy settings];
  [settings setTagIdentifier:v5];

  objc_sync_exit(selfCopy);
}

- (NSString)tagIdentifier
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  settings = [(FPQueryCollection *)selfCopy settings];
  tagIdentifier = [settings tagIdentifier];

  objc_sync_exit(selfCopy);

  return tagIdentifier;
}

void __50__FPQueryCollection__enumerationSettingsPredicate__block_invoke_cold_1()
{
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  v0 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[FPQueryCollection _enumerationSettingsPredicate]_block_invoke"];
  [v1 handleFailureInFunction:v0 file:@"FPQueryCollection.m" lineNumber:246 description:@"Only items are allowed to be evaluated."];
}

@end