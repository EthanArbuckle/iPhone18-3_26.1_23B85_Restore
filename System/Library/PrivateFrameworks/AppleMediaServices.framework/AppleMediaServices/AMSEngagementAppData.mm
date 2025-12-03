@interface AMSEngagementAppData
- (AMSEngagementAppData)initWithIdentifier:(id)identifier cacheObject:(id)object;
- (id)copyWithZone:(_NSZone *)zone;
- (id)exportObject;
@end

@implementation AMSEngagementAppData

- (AMSEngagementAppData)initWithIdentifier:(id)identifier cacheObject:(id)object
{
  v48 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  objectCopy = object;
  v46.receiver = self;
  v46.super_class = AMSEngagementAppData;
  v9 = [(AMSEngagementAppData *)&v46 init];
  v10 = v9;
  if (!v9)
  {
    goto LABEL_29;
  }

  objc_storeStrong(&v9->_identifier, identifier);
  v11 = [objectCopy objectForKeyedSubscript:@"eventFilters"];
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
    v15 = [objectCopy objectForKeyedSubscript:{@"whitelist", v10}];
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
  v30 = [objectCopy objectForKeyedSubscript:@"cachedResponses"];
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

  v35 = [objectCopy objectForKeyedSubscript:@"lastSyncedBuild"];
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
  selfCopy = self;
  cachedResponses = [(AMSEngagementAppData *)self cachedResponses];
  v5 = [cachedResponses countByEnumeratingWithState:&v34 objects:v41 count:16];
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
          objc_enumerationMutation(cachedResponses);
        }

        v9 = *(*(&v34 + 1) + 8 * i);
        exportObject = [v9 exportObject];
        cacheKey = [v9 cacheKey];
        if (cacheKey)
        {
          [v3 setObject:exportObject forKeyedSubscript:cacheKey];
        }

        else
        {
          uUID = [MEMORY[0x1E696AFB0] UUID];
          uUIDString = [uUID UUIDString];
          [v3 setObject:exportObject forKeyedSubscript:uUIDString];
        }
      }

      v6 = [cachedResponses countByEnumeratingWithState:&v34 objects:v41 count:16];
    }

    while (v6);
  }

  v14 = objc_alloc(MEMORY[0x1E695DF70]);
  eventFilters = [(AMSEngagementAppData *)selfCopy eventFilters];
  v16 = [v14 initWithCapacity:{objc_msgSend(eventFilters, "count")}];

  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  eventFilters2 = [(AMSEngagementAppData *)selfCopy eventFilters];
  v18 = [eventFilters2 countByEnumeratingWithState:&v30 objects:v40 count:16];
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
          objc_enumerationMutation(eventFilters2);
        }

        exportObject2 = [*(*(&v30 + 1) + 8 * j) exportObject];
        [v16 addObject:exportObject2];
      }

      v19 = [eventFilters2 countByEnumeratingWithState:&v30 objects:v40 count:16];
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

  lastSyncedBuild = [(AMSEngagementAppData *)selfCopy lastSyncedBuild];

  if (lastSyncedBuild)
  {
    lastSyncedBuild2 = [(AMSEngagementAppData *)selfCopy lastSyncedBuild];
    [v25 setObject:lastSyncedBuild2 forKeyedSubscript:@"lastSyncedBuild"];
  }

  return v25;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];
  identifier = [(AMSEngagementAppData *)self identifier];
  exportObject = [(AMSEngagementAppData *)self exportObject];
  v7 = [v4 initWithIdentifier:identifier cacheObject:exportObject];

  return v7;
}

@end