@interface INVisualCodeDomainLoadIntentResponseDescriptionIfNeeded
@end

@implementation INVisualCodeDomainLoadIntentResponseDescriptionIfNeeded

void ___INVisualCodeDomainLoadIntentResponseDescriptionIfNeeded_block_invoke()
{
  v35[2] = *MEMORY[0x1E69E9840];
  v0 = [INIntentResponseDescription alloc];
  v1 = objc_opt_class();
  v2 = objc_opt_class();
  v3 = [[INIntentSlotDescription alloc] initWithName:@"visualCodeImage" tag:1 facadePropertyName:@"visualCodeImage" dataPropertyName:@"visualCodeImage" isExtended:0 isPrivate:0 valueType:0 valueStyle:1 defaultValueSelectorStrings:0 provideOptionsSelectorStrings:0 resolutionResultClass:0 resolveSelectors:0];
  v34 = v3;
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v34 count:1];
  v5 = _INIntentSchemaBuildIntentSlotDescriptionMap(v4);
  v6 = [(INIntentResponseDescription *)v0 initWithName:@"GetVisualCodeIntentResponse" facadeClass:v1 dataClass:v2 type:@"sirikit.intent.GetVisualCodeIntentResponse" isPrivate:0 slotsByName:v5];
  v35[0] = v6;
  v7 = [INIntentResponseDescription alloc];
  v8 = objc_opt_class();
  v9 = objc_opt_class();
  v10 = _INIntentSchemaBuildIntentSlotDescriptionMap(MEMORY[0x1E695E0F0]);
  v11 = [(INIntentResponseDescription *)v7 initWithName:@"ScanVisualCodeIntentResponse" facadeClass:v8 dataClass:v9 type:@"sirikit.intent.ScanVisualCodeIntentResponse" isPrivate:0 slotsByName:v10];
  v35[1] = v11;
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v35 count:2];

  v13 = [v12 count];
  v14 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:v13];
  v15 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:v13];
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v16 = v12;
  v17 = [v16 countByEnumeratingWithState:&v29 objects:v33 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v30;
    do
    {
      for (i = 0; i != v18; ++i)
      {
        if (*v30 != v19)
        {
          objc_enumerationMutation(v16);
        }

        v21 = *(*(&v29 + 1) + 8 * i);
        v22 = [v21 name];
        [v14 setObject:v21 forKey:v22];

        v23 = [v21 type];
        [v15 setObject:v21 forKey:v23];
      }

      v18 = [v16 countByEnumeratingWithState:&v29 objects:v33 count:16];
    }

    while (v18);
  }

  v24 = [v14 copy];
  v25 = sVisualCodeDomain_intentResponseDescsByName;
  sVisualCodeDomain_intentResponseDescsByName = v24;

  v26 = [v15 copy];
  v27 = sVisualCodeDomain_intentResponseDescsByType;
  sVisualCodeDomain_intentResponseDescsByType = v26;

  v28 = *MEMORY[0x1E69E9840];
}

@end