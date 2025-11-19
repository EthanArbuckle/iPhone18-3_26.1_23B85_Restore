@interface ASDMediaClipTaskURLBuilder
- (id)build;
- (id)initWithBundleID:(void *)a3 bag:;
- (void)setExternalVersionID:(uint64_t)a1;
@end

@implementation ASDMediaClipTaskURLBuilder

- (id)initWithBundleID:(void *)a3 bag:
{
  v6 = a2;
  v7 = a3;
  if (a1)
  {
    v10.receiver = a1;
    v10.super_class = ASDMediaClipTaskURLBuilder;
    v8 = objc_msgSendSuper2(&v10, sel_init);
    a1 = v8;
    if (v8)
    {
      objc_storeStrong(v8 + 1, a2);
      objc_storeStrong(a1 + 2, a3);
    }
  }

  return a1;
}

- (id)build
{
  v1 = a1;
  v20[3] = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v2 = [a1[2] URLForKey:0x1F301A770];
    v3 = [v2 valuePromise];

    v4 = [v1[2] stringForKey:0x1F301A7B0];
    v5 = [v4 valuePromise];

    v15 = MEMORY[0x1E69E9820];
    v16 = 3221225472;
    v17 = __42__ASDMediaClipTaskURLBuilder__pathPromise__block_invoke;
    v18 = &unk_1E7CDC478;
    v19 = v1;
    v6 = [v5 thenWithBlock:&v15];

    v7 = [v1[2] stringForKey:0x1F301A790];
    v8 = [v7 valuePromise];

    v15 = MEMORY[0x1E69E9820];
    v16 = 3221225472;
    v17 = __43__ASDMediaClipTaskURLBuilder__queryPromise__block_invoke;
    v18 = &unk_1E7CDC478;
    v19 = v1;
    v9 = [v8 thenWithBlock:&v15];

    v10 = MEMORY[0x1E698CAD0];
    v20[0] = v3;
    v20[1] = v6;
    v20[2] = v9;
    v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v20 count:3];
    v12 = [v10 promiseWithAll:v11];

    v1 = [v12 thenWithBlock:&__block_literal_global_7];
  }

  v13 = *MEMORY[0x1E69E9840];

  return v1;
}

id __35__ASDMediaClipTaskURLBuilder_build__block_invoke(uint64_t a1, void *a2)
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
  v8 = [MEMORY[0x1E698CAD0] promiseWithResult:v6];

  return v8;
}

id __42__ASDMediaClipTaskURLBuilder__pathPromise__block_invoke(uint64_t a1, void *a2)
{
  v28[2] = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = *(*(a1 + 32) + 8);
  v27[0] = @"{bundleId}";
  v27[1] = v4;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v27 count:2];
  v28[0] = v5;
  v26[0] = @"{storefront}";
  v26[1] = v3;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v26 count:2];
  v28[1] = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v28 count:2];

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v8 = v7;
  v9 = [v8 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v22;
    v12 = @"/v1/catalog/{storefront}/app-clips/{bundleId}";
    do
    {
      v13 = 0;
      v14 = v12;
      do
      {
        if (*v22 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v15 = *(*(&v21 + 1) + 8 * v13);
        v16 = [v15 objectAtIndexedSubscript:{0, v21}];
        v17 = [v15 objectAtIndexedSubscript:1];
        v12 = [(__CFString *)v14 stringByReplacingOccurrencesOfString:v16 withString:v17];

        ++v13;
        v14 = v12;
      }

      while (v10 != v13);
      v10 = [v8 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v10);
  }

  else
  {
    v12 = @"/v1/catalog/{storefront}/app-clips/{bundleId}";
  }

  v18 = [MEMORY[0x1E698CAD0] promiseWithResult:v12];

  v19 = *MEMORY[0x1E69E9840];

  return v18;
}

id __43__ASDMediaClipTaskURLBuilder__queryPromise__block_invoke(uint64_t a1, void *a2)
{
  v24[2] = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E695DF70];
  v4 = a2;
  v5 = objc_alloc_init(v3);
  v6 = [MEMORY[0x1E696AF60] queryItemWithName:@"l" value:v4];

  [v5 addObject:v6];
  if (*(a1 + 32))
  {
    v7 = [MEMORY[0x1E698C8A8] deviceIsiPad];
    v8 = MEMORY[0x1E698C6B8];
    if (!v7)
    {
      v8 = MEMORY[0x1E698C6C0];
    }

    v9 = *v8;
    if (v9)
    {
      v10 = [MEMORY[0x1E696AF60] queryItemWithName:@"platform" value:v9];
      [v5 addObject:v10];
    }
  }

  else
  {
    v9 = 0;
  }

  v24[0] = @"variantsInfo";
  v24[1] = @"verifiedAssociatedDomains";
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v24 count:2];
  v12 = [v11 componentsJoinedByString:{@", "}];
  v13 = [MEMORY[0x1E696AF60] queryItemWithName:@"extend" value:v12];
  [v5 addObject:v13];

  v14 = *(*(a1 + 32) + 24);
  if (v14)
  {
    v15 = MEMORY[0x1E696AF60];
    v16 = [v14 stringValue];
    v17 = [v15 queryItemWithName:@"externalVersionId" value:v16];
    [v5 addObject:v17];

    v18 = [MEMORY[0x1E696AF60] queryItemWithName:@"fields" value:@"variantsInfo"];
    [v5 addObject:v18];
  }

  v19 = [MEMORY[0x1E696AF60] queryItemWithName:@"relate[app-clips]" value:@"app"];
  [v5 addObject:v19];

  v20 = [MEMORY[0x1E696AF60] queryItemWithName:@"include[app-clips]" value:@"app-genres"];
  [v5 addObject:v20];

  v21 = [MEMORY[0x1E698CAD0] promiseWithResult:v5];

  v22 = *MEMORY[0x1E69E9840];

  return v21;
}

- (void)setExternalVersionID:(uint64_t)a1
{
  if (a1)
  {
    objc_storeStrong((a1 + 24), a2);
  }
}

@end