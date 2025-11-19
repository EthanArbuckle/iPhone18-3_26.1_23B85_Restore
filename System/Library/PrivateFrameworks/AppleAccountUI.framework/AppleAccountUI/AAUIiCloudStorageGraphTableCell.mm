@interface AAUIiCloudStorageGraphTableCell
- (id)_catagoriesForSpecifer:(id)a3;
- (id)_loadingStringForSpecifier:(id)a3;
- (id)_psCapacityBarDataForSpecifier:(id)a3;
- (void)_setConditionalSpecifier:(id)a3 property:(id)a4 forKey:(id)a5;
- (void)refreshCellContentsWithSpecifier:(id)a3;
@end

@implementation AAUIiCloudStorageGraphTableCell

- (void)refreshCellContentsWithSpecifier:(id)a3
{
  v4 = a3;
  v5 = _AAUILogSystem();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1C5355000, v5, OS_LOG_TYPE_DEFAULT, "Refreshing AAUIiCloudStorageGraphTableCell", buf, 2u);
  }

  v6 = [(AAUIiCloudStorageGraphTableCell *)self _loadingStringForSpecifier:v4];
  [v4 setProperty:v6 forKey:*MEMORY[0x1E69C5840]];

  v7 = [(AAUIiCloudStorageGraphTableCell *)self _psCapacityBarDataForSpecifier:v4];
  [v4 setProperty:v7 forKey:*MEMORY[0x1E69C5830]];

  [v4 setProperty:MEMORY[0x1E695E118] forKey:*MEMORY[0x1E69C5850]];
  v8 = [v4 name];
  [v4 setProperty:v8 forKey:*MEMORY[0x1E69C59A8]];

  v9 = [v4 propertyForKey:@"AAUIiCloudGraphBarBackgroundColor"];
  if (v9)
  {
    [(AAUIiCloudStorageGraphTableCell *)self _setConditionalSpecifier:v4 property:v9 forKey:*MEMORY[0x1E69C5828]];
    v10 = [MEMORY[0x1E69DC888] systemMidGrayColor];
    [(AAUIiCloudStorageGraphTableCell *)self _setConditionalSpecifier:v4 property:v10 forKey:*MEMORY[0x1E69C5838]];

    v11 = [MEMORY[0x1E69DC888] whiteColor];
    [(AAUIiCloudStorageGraphTableCell *)self _setConditionalSpecifier:v4 property:v11 forKey:*MEMORY[0x1E69C5858]];

    [(AAUIiCloudStorageGraphTableCell *)self _setConditionalSpecifier:v4 property:v9 forKey:*MEMORY[0x1E69C5848]];
  }

  v12.receiver = self;
  v12.super_class = AAUIiCloudStorageGraphTableCell;
  [(PSCapacityBarCell *)&v12 refreshCellContentsWithSpecifier:v4];
}

- (id)_loadingStringForSpecifier:(id)a3
{
  v3 = a3;
  v4 = [v3 propertyForKey:@"AAUIiCloudLoadingRequest"];
  v5 = [v4 BOOLValue];

  if (v5)
  {
    v6 = @"LOADING";
LABEL_5:
    v9 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    v10 = [v9 localizedStringForKey:v6 value:&stru_1F447F790 table:@"Localizable"];

    goto LABEL_7;
  }

  v7 = [v3 propertyForKey:@"AAUIiCloudQuotaFailedToLoad"];
  v8 = [v7 BOOLValue];

  if (v8)
  {
    v6 = @"UNABLE_TO_LOAD_CLOUD_STORAGE";
    goto LABEL_5;
  }

  v10 = @" ";
LABEL_7:

  return v10;
}

- (void)_setConditionalSpecifier:(id)a3 property:(id)a4 forKey:(id)a5
{
  v10 = a3;
  v7 = a4;
  v8 = a5;
  v9 = [v10 propertyForKey:v8];

  if (!v9)
  {
    [v10 setProperty:v7 forKey:v8];
  }
}

- (id)_psCapacityBarDataForSpecifier:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x1E69C56D8]);
  v6 = _AAUILogSystem();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [v4 propertyForKey:@"AAUIiCloudUsedBytes"];
    v8 = [v4 propertyForKey:@"AAUIiCloudGraphQuotaTotal"];
    v13 = 138412546;
    v14 = v7;
    v15 = 2112;
    v16 = v8;
    _os_log_impl(&dword_1C5355000, v6, OS_LOG_TYPE_DEFAULT, "iCloud Storage - bytes used: %@ of total: %@", &v13, 0x16u);
  }

  v9 = [v4 propertyForKey:@"AAUIiCloudGraphQuotaTotal"];
  [v5 setCapacity:{objc_msgSend(v9, "longLongValue")}];

  v10 = [v4 propertyForKey:@"AAUIiCloudUsedBytes"];
  [v5 setBytesUsed:{objc_msgSend(v10, "longLongValue")}];

  v11 = [(AAUIiCloudStorageGraphTableCell *)self _catagoriesForSpecifer:v4];
  [v5 setCategories:v11];

  return v5;
}

- (id)_catagoriesForSpecifer:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v5 = [v3 propertyForKey:@"AAUIiCloudGraphUsage"];
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

        v10 = [*(*(&v13 + 1) + 8 * i) capacityBarCatagory];
        [v4 addObject:v10];
      }

      v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  v11 = [v4 copy];

  return v11;
}

@end