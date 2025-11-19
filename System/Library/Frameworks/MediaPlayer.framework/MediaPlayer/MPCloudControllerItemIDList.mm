@interface MPCloudControllerItemIDList
+ (id)cloudItemIDListForPlaylist:(id)a3;
- (MPCloudControllerItemIDList)init;
@end

@implementation MPCloudControllerItemIDList

- (MPCloudControllerItemIDList)init
{
  v6.receiver = self;
  v6.super_class = MPCloudControllerItemIDList;
  v2 = [(MPCloudControllerItemIDList *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E69E43E0]);
    cloudItemIDList = v2->_cloudItemIDList;
    v2->_cloudItemIDList = v3;
  }

  return v2;
}

+ (id)cloudItemIDListForPlaylist:(id)a3
{
  v30 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v24 = objc_alloc_init(MPCloudControllerItemIDList);
  v22 = v3;
  v4 = [v3 itemsQuery];
  v5 = [v4 copy];

  [v5 setIgnoreRestrictionsPredicates:1];
  [v5 setIgnoreSystemFilterPredicates:1];
  v21 = v5;
  v6 = [v5 items];
  v7 = [MEMORY[0x1E695DFD8] setWithObjects:{@"storeSagaID", @"subscriptionStoreItemAdamID", @"cloudIsInMyLibrary", 0}];
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  obj = v6;
  v8 = [obj countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v26;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v26 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v12 = [*(*(&v25 + 1) + 8 * i) valuesForProperties:v7];
        v13 = [v12 objectForKey:@"storeSagaID"];
        v14 = [v13 longLongValue];

        v15 = [v12 objectForKey:@"subscriptionStoreItemAdamID"];
        v16 = [v15 longLongValue];

        if (v14 < 1)
        {
          if (v16 < 1)
          {
            goto LABEL_11;
          }

          v17 = v24;
          v18 = v16;
          v19 = 1;
        }

        else
        {
          v17 = v24;
          v18 = v14;
          v19 = 0;
        }

        [(MPCloudControllerItemIDList *)v17 addCloudItemID:v18 idType:v19];
LABEL_11:
      }

      v9 = [obj countByEnumeratingWithState:&v25 objects:v29 count:16];
    }

    while (v9);
  }

  return v24;
}

@end