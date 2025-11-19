@interface AMSClipMediaURLBuilder
- (AMSClipMediaURLBuilder)initWithBundleID:(id)a3 bag:(id)a4;
- (id)_devicePlatform;
- (id)_hostPromise;
- (id)_pathPromise;
- (id)_queryPromise;
- (id)build;
@end

@implementation AMSClipMediaURLBuilder

- (AMSClipMediaURLBuilder)initWithBundleID:(id)a3 bag:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = AMSClipMediaURLBuilder;
  v9 = [(AMSClipMediaURLBuilder *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_bundleID, a3);
    objc_storeStrong(&v10->_bag, a4);
  }

  return v10;
}

- (id)build
{
  v10[3] = *MEMORY[0x1E69E9840];
  v3 = [(AMSClipMediaURLBuilder *)self _hostPromise];
  v4 = [(AMSClipMediaURLBuilder *)self _pathPromise];
  v5 = [(AMSClipMediaURLBuilder *)self _queryPromise];
  v10[0] = v3;
  v10[1] = v4;
  v10[2] = v5;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:3];
  v7 = [AMSPromise promiseWithAll:v6];

  v8 = [v7 thenWithBlock:&__block_literal_global_30];

  return v8;
}

id __31__AMSClipMediaURLBuilder_build__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 objectAtIndexedSubscript:0];
  v4 = [v2 objectAtIndexedSubscript:1];
  v5 = [v2 objectAtIndexedSubscript:2];

  v6 = objc_alloc_init(MEMORY[0x1E696AF20]);
  v7 = [v3 absoluteString];
  [v6 setHost:v7];

  [v6 setPath:v4];
  [v6 setQueryItems:v5];
  [v6 setScheme:@"https"];
  v8 = [AMSPromise promiseWithResult:v6];

  return v8;
}

- (id)_devicePlatform
{
  v2 = +[AMSDevice deviceIsiPad];
  v3 = AMSMediaTaskPlatformiPad;
  if (!v2)
  {
    v3 = AMSMediaTaskPlatformiPhone;
  }

  v4 = *v3;

  return v4;
}

- (id)_hostPromise
{
  v2 = [(AMSClipMediaURLBuilder *)self bag];
  v3 = [v2 URLForKey:@"apps-media-api-host"];

  v4 = [v3 valuePromise];

  return v4;
}

- (id)_pathPromise
{
  v3 = [(AMSClipMediaURLBuilder *)self bag];
  v4 = [v3 stringForKey:@"countryCode"];
  v5 = [v4 valuePromise];

  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __38__AMSClipMediaURLBuilder__pathPromise__block_invoke;
  v8[3] = &unk_1E73B4E20;
  v8[4] = self;
  v6 = [v5 thenWithBlock:v8];

  return v6;
}

id __38__AMSClipMediaURLBuilder__pathPromise__block_invoke(uint64_t a1, void *a2)
{
  v27[2] = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = *(*(a1 + 32) + 16);
  v26[0] = @"{bundleId}";
  v26[1] = v4;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v26 count:2];
  v27[0] = v5;
  v25[0] = @"{storefront}";
  v25[1] = v3;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v25 count:2];
  v27[1] = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v27 count:2];

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v8 = v7;
  v9 = [v8 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v21;
    v12 = @"/v1/catalog/{storefront}/app-clips/{bundleId}";
    do
    {
      v13 = 0;
      v14 = v12;
      do
      {
        if (*v21 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v15 = *(*(&v20 + 1) + 8 * v13);
        v16 = [v15 objectAtIndexedSubscript:{0, v20}];
        v17 = [v15 objectAtIndexedSubscript:1];
        v12 = [(__CFString *)v14 stringByReplacingOccurrencesOfString:v16 withString:v17];

        ++v13;
        v14 = v12;
      }

      while (v10 != v13);
      v10 = [v8 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v10);
  }

  else
  {
    v12 = @"/v1/catalog/{storefront}/app-clips/{bundleId}";
  }

  v18 = [AMSPromise promiseWithResult:v12];

  return v18;
}

- (id)_queryPromise
{
  v3 = [(AMSClipMediaURLBuilder *)self bag];
  v4 = [v3 stringForKey:@"language-tag"];
  v5 = [v4 valuePromise];

  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __39__AMSClipMediaURLBuilder__queryPromise__block_invoke;
  v8[3] = &unk_1E73B4E20;
  v8[4] = self;
  v6 = [v5 thenWithBlock:v8];

  return v6;
}

id __39__AMSClipMediaURLBuilder__queryPromise__block_invoke(uint64_t a1, void *a2)
{
  v23[3] = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E695DF70];
  v4 = a2;
  v5 = objc_alloc_init(v3);
  v6 = [MEMORY[0x1E696AF60] queryItemWithName:@"l" value:v4];

  [v5 addObject:v6];
  v7 = [MEMORY[0x1E696AF60] queryItemWithName:@"extend" value:@"ageRating"];
  [v5 addObject:v7];

  v8 = [MEMORY[0x1E696AF60] queryItemWithName:@"include" value:@"app"];
  [v5 addObject:v8];

  v9 = [MEMORY[0x1E696AF60] queryItemWithName:@"include[app-clips]" value:@"app-genres"];
  [v5 addObject:v9];

  v10 = [MEMORY[0x1E696AF60] queryItemWithName:@"relate[app-clips]" value:@"app"];
  [v5 addObject:v10];

  v11 = [*(a1 + 32) _devicePlatform];
  if (v11)
  {
    v12 = [MEMORY[0x1E696AF60] queryItemWithName:@"platform" value:v11];
    [v5 addObject:v12];
  }

  v23[0] = @"variantsInfo";
  v23[1] = @"verifiedAssociatedDomains";
  v23[2] = @"backgroundAssetsInfo";
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v23 count:3];
  v14 = [v13 componentsJoinedByString:{@", "}];
  v15 = [MEMORY[0x1E696AF60] queryItemWithName:@"extend" value:v14];
  [v5 addObject:v15];

  v16 = *(*(a1 + 32) + 24);
  if (v16)
  {
    v17 = MEMORY[0x1E696AF60];
    v18 = [v16 stringValue];
    v19 = [v17 queryItemWithName:@"externalVersionId" value:v18];
    [v5 addObject:v19];

    v20 = [MEMORY[0x1E696AF60] queryItemWithName:@"fields" value:@"variantsInfo"];
    [v5 addObject:v20];
  }

  v21 = [AMSPromise promiseWithResult:v5];

  return v21;
}

@end