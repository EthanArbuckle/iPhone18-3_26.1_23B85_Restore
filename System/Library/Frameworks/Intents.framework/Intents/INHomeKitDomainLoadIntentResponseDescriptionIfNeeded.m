@interface INHomeKitDomainLoadIntentResponseDescriptionIfNeeded
@end

@implementation INHomeKitDomainLoadIntentResponseDescriptionIfNeeded

void ___INHomeKitDomainLoadIntentResponseDescriptionIfNeeded_block_invoke()
{
  v46[4] = *MEMORY[0x1E69E9840];
  v0 = [INIntentResponseDescription alloc];
  v1 = objc_opt_class();
  v2 = objc_opt_class();
  v39 = _INIntentSchemaBuildIntentSlotDescriptionMap(MEMORY[0x1E695E0F0]);
  v38 = [(INIntentResponseDescription *)v0 initWithName:@"ConfigureHomeIntentResponse" facadeClass:v1 dataClass:v2 type:@"sirikit.intent.home.ConfigureHomeIntentResponse" isPrivate:0 slotsByName:v39];
  v46[0] = v38;
  v3 = [INIntentResponseDescription alloc];
  v4 = objc_opt_class();
  v5 = objc_opt_class();
  v6 = [[INIntentSlotDescription alloc] initWithName:@"entityResponses" tag:2 facadePropertyName:@"entityResponses" dataPropertyName:@"entityResponses" isExtended:0 isPrivate:0 valueType:50 valueStyle:3 defaultValueSelectorStrings:0 provideOptionsSelectorStrings:0 resolutionResultClass:0 resolveSelectors:0];
  v45 = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v45 count:1];
  v8 = _INIntentSchemaBuildIntentSlotDescriptionMap(v7);
  v9 = [(INIntentResponseDescription *)v3 initWithName:@"ControlHomeIntentResponse" facadeClass:v4 dataClass:v5 type:@"sirikit.intent.home.ControlHomeIntentResponse" isPrivate:0 slotsByName:v8];
  v46[1] = v9;
  v10 = [INIntentResponseDescription alloc];
  v11 = objc_opt_class();
  v12 = objc_opt_class();
  v13 = MEMORY[0x1E695E0F0];
  v14 = _INIntentSchemaBuildIntentSlotDescriptionMap(MEMORY[0x1E695E0F0]);
  v15 = [(INIntentResponseDescription *)v10 initWithName:@"QueryHomeIntentResponse" facadeClass:v11 dataClass:v12 type:@"sirikit.intent.home.QueryHomeIntentResponse" isPrivate:0 slotsByName:v14];
  v46[2] = v15;
  v16 = [INIntentResponseDescription alloc];
  v17 = objc_opt_class();
  v18 = objc_opt_class();
  v19 = _INIntentSchemaBuildIntentSlotDescriptionMap(v13);
  v20 = [(INIntentResponseDescription *)v16 initWithName:@"ShowHomeIntentResponse" facadeClass:v17 dataClass:v18 type:@"sirikit.intent.home.ShowHomeIntentResponse" isPrivate:0 slotsByName:v19];
  v46[3] = v20;
  v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:v46 count:4];

  v22 = [v21 count];
  v23 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:v22];
  v24 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:v22];
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v25 = v21;
  v26 = [v25 countByEnumeratingWithState:&v40 objects:v44 count:16];
  if (v26)
  {
    v27 = v26;
    v28 = *v41;
    do
    {
      for (i = 0; i != v27; ++i)
      {
        if (*v41 != v28)
        {
          objc_enumerationMutation(v25);
        }

        v30 = *(*(&v40 + 1) + 8 * i);
        v31 = [v30 name];
        [v23 setObject:v30 forKey:v31];

        v32 = [v30 type];
        [v24 setObject:v30 forKey:v32];
      }

      v27 = [v25 countByEnumeratingWithState:&v40 objects:v44 count:16];
    }

    while (v27);
  }

  v33 = [v23 copy];
  v34 = sHomeKitDomain_intentResponseDescsByName;
  sHomeKitDomain_intentResponseDescsByName = v33;

  v35 = [v24 copy];
  v36 = sHomeKitDomain_intentResponseDescsByType;
  sHomeKitDomain_intentResponseDescsByType = v35;

  v37 = *MEMORY[0x1E69E9840];
}

@end