@interface INRRaaSDomainLoadIntentResponseDescriptionIfNeeded
@end

@implementation INRRaaSDomainLoadIntentResponseDescriptionIfNeeded

void ___INRRaaSDomainLoadIntentResponseDescriptionIfNeeded_block_invoke()
{
  v30[1] = *MEMORY[0x1E69E9840];
  v0 = [INIntentResponseDescription alloc];
  v1 = objc_opt_class();
  v2 = objc_opt_class();
  v3 = [[INIntentSlotDescription alloc] initWithName:@"resolvedReferences" tag:1 facadePropertyName:@"resolvedReferences" dataPropertyName:@"resolvedReferences" isExtended:0 isPrivate:0 valueType:2 valueStyle:1 defaultValueSelectorStrings:0 provideOptionsSelectorStrings:0 resolutionResultClass:0 resolveSelectors:0];
  v29 = v3;
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v29 count:1];
  v5 = _INIntentSchemaBuildIntentSlotDescriptionMap(v4);
  v6 = [(INIntentResponseDescription *)v0 initWithName:@"ResolveObjectReferenceIntentResponse" facadeClass:v1 dataClass:v2 type:@"sirikit.intent.workflow.ResolveObjectReferenceIntentResponse" isPrivate:0 slotsByName:v5];
  v30[0] = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v30 count:1];

  v8 = [v7 count];
  v9 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:v8];
  v10 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:v8];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v11 = v7;
  v12 = [v11 countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v25;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v25 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v24 + 1) + 8 * i);
        v17 = [v16 name];
        [v9 setObject:v16 forKey:v17];

        v18 = [v16 type];
        [v10 setObject:v16 forKey:v18];
      }

      v13 = [v11 countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v13);
  }

  v19 = [v9 copy];
  v20 = sRRaaSDomain_intentResponseDescsByName;
  sRRaaSDomain_intentResponseDescsByName = v19;

  v21 = [v10 copy];
  v22 = sRRaaSDomain_intentResponseDescsByType;
  sRRaaSDomain_intentResponseDescsByType = v21;

  v23 = *MEMORY[0x1E69E9840];
}

@end