@interface AMSEngagementAppData
- (AMSEngagementAppData)initWithIdentifier:(id)a3 cacheObject:(id)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (id)exportObject;
@end

@implementation AMSEngagementAppData

- (AMSEngagementAppData)initWithIdentifier:(id)a3 cacheObject:(id)a4
{
  v48 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v46.receiver = self;
  v46.super_class = AMSEngagementAppData;
  v9 = [(AMSEngagementAppData *)&v46 init];
  v10 = v9;
  if (!v9)
  {
    goto LABEL_29;
  }

  objc_storeStrong(&v9->_identifier, a3);
  v11 = [v8 objectForKeyedSubscript:@"eventFilters"];
  objc_opt_class();
  v39 = v10;
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {

    goto LABEL_6;
  }

  v12 = v11;

  if (!v12)
  {
LABEL_6:
    v15 = [v8 objectForKeyedSubscript:{@"whitelist", v10}];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v14 = v15;
    }

    else
    {
      v14 = 0;
    }

    v13 = 0;
    goto LABEL_10;
  }

  v13 = v12;
  v14 = v13;
LABEL_10:

  v16 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v14, "count")}];
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v17 = v14;
  v18 = [v17 countByEnumeratingWithState:&v42 objects:v47 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v43;
    do
    {
      for (i = 0; i != v19; ++i)
      {
        if (*v43 != v20)
        {
          objc_enumerationMutation(v17);
        }

        v22 = *(*(&v42 + 1) + 8 * i);
        v23 = [AMSEngagementAppEventFilterModel alloc];
        v24 = v22;
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v25 = v24;
        }

        else
        {
          v25 = 0;
        }

        v26 = [(AMSEngagementAppEventFilterModel *)v23 initWithCacheObject:v25];
        if (v26)
        {
          [v16 addObject:v26];
        }
      }

      v19 = [v17 countByEnumeratingWithState:&v42 objects:v47 count:16];
    }

    while (v19);
  }

  v27 = [v16 copy];
  v10 = v39;
  eventFilters = v39->_eventFilters;
  v39->_eventFilters = v27;

  v29 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v30 = [v8 objectForKeyedSubscript:@"cachedResponses"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v31 = v30;
  }

  else
  {
    v31 = 0;
  }

  v40[0] = MEMORY[0x1E69E9820];
  v40[1] = 3221225472;
  v40[2] = __55__AMSEngagementAppData_initWithIdentifier_cacheObject___block_invoke;
  v40[3] = &unk_1E73B4560;
  v32 = v29;
  v41 = v32;
  [v31 enumerateKeysAndObjectsUsingBlock:v40];
  v33 = [v32 copy];
  cachedResponses = v39->_cachedResponses;
  v39->_cachedResponses = v33;

  v35 = [v8 objectForKeyedSubscript:@"lastSyncedBuild"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v36 = v35;
  }

  else
  {
    v36 = 0;
  }

  lastSyncedBuild = v39->_lastSyncedBuild;
  v39->_lastSyncedBuild = v36;

LABEL_29:
  return v10;
}

void __55__AMSEngagementAppData_initWithIdentifier_cacheObject___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v6;
  }

  else
  {
    v4 = 0;
  }

  v5 = [[AMSEngagementAppResponseModel alloc] initWithCacheObject:v4];
  if (v5)
  {
    [*(a1 + 32) addObject:v5];
  }
}

- (id)exportObject
{
  v42 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v29 = self;
  v4 = [(AMSEngagementAppData *)self cachedResponses];
  v5 = [v4 countByEnumeratingWithState:&v34 objects:v41 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v35;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v35 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v34 + 1) + 8 * i);
        v10 = [v9 exportObject];
        v11 = [v9 cacheKey];
        if (v11)
        {
          [v3 setObject:v10 forKeyedSubscript:v11];
        }

        else
        {
          v12 = [MEMORY[0x1E696AFB0] UUID];
          v13 = [v12 UUIDString];
          [v3 setObject:v10 forKeyedSubscript:v13];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v34 objects:v41 count:16];
    }

    while (v6);
  }

  v14 = objc_alloc(MEMORY[0x1E695DF70]);
  v15 = [(AMSEngagementAppData *)v29 eventFilters];
  v16 = [v14 initWithCapacity:{objc_msgSend(v15, "count")}];

  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v17 = [(AMSEngagementAppData *)v29 eventFilters];
  v18 = [v17 countByEnumeratingWithState:&v30 objects:v40 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v31;
    do
    {
      for (j = 0; j != v19; ++j)
      {
        if (*v31 != v20)
        {
          objc_enumerationMutation(v17);
        }

        v22 = [*(*(&v30 + 1) + 8 * j) exportObject];
        [v16 addObject:v22];
      }

      v19 = [v17 countByEnumeratingWithState:&v30 objects:v40 count:16];
    }

    while (v19);
  }

  v23 = MEMORY[0x1E695DF90];
  v38[0] = @"cachedResponses";
  v38[1] = @"eventFilters";
  v39[0] = v3;
  v39[1] = v16;
  v24 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v39 forKeys:v38 count:2];
  v25 = [v23 dictionaryWithDictionary:v24];

  v26 = [(AMSEngagementAppData *)v29 lastSyncedBuild];

  if (v26)
  {
    v27 = [(AMSEngagementAppData *)v29 lastSyncedBuild];
    [v25 setObject:v27 forKeyedSubscript:@"lastSyncedBuild"];
  }

  return v25;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_opt_class() allocWithZone:a3];
  v5 = [(AMSEngagementAppData *)self identifier];
  v6 = [(AMSEngagementAppData *)self exportObject];
  v7 = [v4 initWithIdentifier:v5 cacheObject:v6];

  return v7;
}

@end