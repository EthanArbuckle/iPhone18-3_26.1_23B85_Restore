@interface INGenericDomainLoadIntentDescriptionIfNeeded
@end

@implementation INGenericDomainLoadIntentDescriptionIfNeeded

void ___INGenericDomainLoadIntentDescriptionIfNeeded_block_invoke()
{
  v27[1] = *MEMORY[0x1E69E9840];
  v0 = [INIntentDescription alloc];
  v1 = objc_opt_class();
  v2 = objc_opt_class();
  v3 = _INIntentSchemaBuildIntentSlotDescriptionMap(MEMORY[0x1E695E0F0]);
  v4 = [(INIntentDescription *)v0 initWithName:@"GenericIntent" responseName:@"GenericIntentResponse" facadeClass:v1 dataClass:v2 type:@"sirikit.intent.GenericIntent" isPrivate:1 handleSelector:0 confirmSelector:0 slotsByName:v3];
  v27[0] = v4;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v27 count:1];

  v6 = [v5 count];
  v7 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:v6];
  v8 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:v6];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v9 = v5;
  v10 = [v9 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v23;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v23 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v22 + 1) + 8 * i);
        v15 = [v14 name];
        [v7 setObject:v14 forKey:v15];

        v16 = [v14 type];
        [v8 setObject:v14 forKey:v16];
      }

      v11 = [v9 countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v11);
  }

  v17 = [v7 copy];
  v18 = sGenericDomain_intentDescsByName;
  sGenericDomain_intentDescsByName = v17;

  v19 = [v8 copy];
  v20 = sGenericDomain_intentDescsByType;
  sGenericDomain_intentDescsByType = v19;

  v21 = *MEMORY[0x1E69E9840];
}

@end