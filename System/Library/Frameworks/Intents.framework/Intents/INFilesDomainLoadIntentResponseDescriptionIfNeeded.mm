@interface INFilesDomainLoadIntentResponseDescriptionIfNeeded
@end

@implementation INFilesDomainLoadIntentResponseDescriptionIfNeeded

void ___INFilesDomainLoadIntentResponseDescriptionIfNeeded_block_invoke()
{
  v21 = *MEMORY[0x1E69E9840];
  v0 = MEMORY[0x1E695E0F0];
  v1 = [MEMORY[0x1E695E0F0] count];
  v2 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:v1];
  v3 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:v1];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v4 = [v0 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v17;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v17 != v6)
        {
          objc_enumerationMutation(v0);
        }

        v8 = *(*(&v16 + 1) + 8 * i);
        v9 = [v8 name];
        [v2 setObject:v8 forKey:v9];

        v10 = [v8 type];
        [v3 setObject:v8 forKey:v10];
      }

      v5 = [v0 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v5);
  }

  v11 = [v2 copy];
  v12 = sFilesDomain_intentResponseDescsByName;
  sFilesDomain_intentResponseDescsByName = v11;

  v13 = [v3 copy];
  v14 = sFilesDomain_intentResponseDescsByType;
  sFilesDomain_intentResponseDescsByType = v13;

  v15 = *MEMORY[0x1E69E9840];
}

@end