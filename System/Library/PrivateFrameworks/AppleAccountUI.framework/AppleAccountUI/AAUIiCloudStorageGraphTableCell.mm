@interface AAUIiCloudStorageGraphTableCell
- (id)_catagoriesForSpecifer:(id)specifer;
- (id)_loadingStringForSpecifier:(id)specifier;
- (id)_psCapacityBarDataForSpecifier:(id)specifier;
- (void)_setConditionalSpecifier:(id)specifier property:(id)property forKey:(id)key;
- (void)refreshCellContentsWithSpecifier:(id)specifier;
@end

@implementation AAUIiCloudStorageGraphTableCell

- (void)refreshCellContentsWithSpecifier:(id)specifier
{
  specifierCopy = specifier;
  v5 = _AAUILogSystem();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1C5355000, v5, OS_LOG_TYPE_DEFAULT, "Refreshing AAUIiCloudStorageGraphTableCell", buf, 2u);
  }

  v6 = [(AAUIiCloudStorageGraphTableCell *)self _loadingStringForSpecifier:specifierCopy];
  [specifierCopy setProperty:v6 forKey:*MEMORY[0x1E69C5840]];

  v7 = [(AAUIiCloudStorageGraphTableCell *)self _psCapacityBarDataForSpecifier:specifierCopy];
  [specifierCopy setProperty:v7 forKey:*MEMORY[0x1E69C5830]];

  [specifierCopy setProperty:MEMORY[0x1E695E118] forKey:*MEMORY[0x1E69C5850]];
  name = [specifierCopy name];
  [specifierCopy setProperty:name forKey:*MEMORY[0x1E69C59A8]];

  v9 = [specifierCopy propertyForKey:@"AAUIiCloudGraphBarBackgroundColor"];
  if (v9)
  {
    [(AAUIiCloudStorageGraphTableCell *)self _setConditionalSpecifier:specifierCopy property:v9 forKey:*MEMORY[0x1E69C5828]];
    systemMidGrayColor = [MEMORY[0x1E69DC888] systemMidGrayColor];
    [(AAUIiCloudStorageGraphTableCell *)self _setConditionalSpecifier:specifierCopy property:systemMidGrayColor forKey:*MEMORY[0x1E69C5838]];

    whiteColor = [MEMORY[0x1E69DC888] whiteColor];
    [(AAUIiCloudStorageGraphTableCell *)self _setConditionalSpecifier:specifierCopy property:whiteColor forKey:*MEMORY[0x1E69C5858]];

    [(AAUIiCloudStorageGraphTableCell *)self _setConditionalSpecifier:specifierCopy property:v9 forKey:*MEMORY[0x1E69C5848]];
  }

  v12.receiver = self;
  v12.super_class = AAUIiCloudStorageGraphTableCell;
  [(PSCapacityBarCell *)&v12 refreshCellContentsWithSpecifier:specifierCopy];
}

- (id)_loadingStringForSpecifier:(id)specifier
{
  specifierCopy = specifier;
  v4 = [specifierCopy propertyForKey:@"AAUIiCloudLoadingRequest"];
  bOOLValue = [v4 BOOLValue];

  if (bOOLValue)
  {
    v6 = @"LOADING";
LABEL_5:
    v9 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    v10 = [v9 localizedStringForKey:v6 value:&stru_1F447F790 table:@"Localizable"];

    goto LABEL_7;
  }

  v7 = [specifierCopy propertyForKey:@"AAUIiCloudQuotaFailedToLoad"];
  bOOLValue2 = [v7 BOOLValue];

  if (bOOLValue2)
  {
    v6 = @"UNABLE_TO_LOAD_CLOUD_STORAGE";
    goto LABEL_5;
  }

  v10 = @" ";
LABEL_7:

  return v10;
}

- (void)_setConditionalSpecifier:(id)specifier property:(id)property forKey:(id)key
{
  specifierCopy = specifier;
  propertyCopy = property;
  keyCopy = key;
  v9 = [specifierCopy propertyForKey:keyCopy];

  if (!v9)
  {
    [specifierCopy setProperty:propertyCopy forKey:keyCopy];
  }
}

- (id)_psCapacityBarDataForSpecifier:(id)specifier
{
  v17 = *MEMORY[0x1E69E9840];
  specifierCopy = specifier;
  v5 = objc_alloc_init(MEMORY[0x1E69C56D8]);
  v6 = _AAUILogSystem();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [specifierCopy propertyForKey:@"AAUIiCloudUsedBytes"];
    v8 = [specifierCopy propertyForKey:@"AAUIiCloudGraphQuotaTotal"];
    v13 = 138412546;
    v14 = v7;
    v15 = 2112;
    v16 = v8;
    _os_log_impl(&dword_1C5355000, v6, OS_LOG_TYPE_DEFAULT, "iCloud Storage - bytes used: %@ of total: %@", &v13, 0x16u);
  }

  v9 = [specifierCopy propertyForKey:@"AAUIiCloudGraphQuotaTotal"];
  [v5 setCapacity:{objc_msgSend(v9, "longLongValue")}];

  v10 = [specifierCopy propertyForKey:@"AAUIiCloudUsedBytes"];
  [v5 setBytesUsed:{objc_msgSend(v10, "longLongValue")}];

  v11 = [(AAUIiCloudStorageGraphTableCell *)self _catagoriesForSpecifer:specifierCopy];
  [v5 setCategories:v11];

  return v5;
}

- (id)_catagoriesForSpecifer:(id)specifer
{
  v18 = *MEMORY[0x1E69E9840];
  speciferCopy = specifer;
  v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v5 = [speciferCopy propertyForKey:@"AAUIiCloudGraphUsage"];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v5);
        }

        capacityBarCatagory = [*(*(&v13 + 1) + 8 * i) capacityBarCatagory];
        [v4 addObject:capacityBarCatagory];
      }

      v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  v11 = [v4 copy];

  return v11;
}

@end