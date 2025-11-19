@interface INWellnessDomainLoadIntentResponseDescriptionIfNeeded
@end

@implementation INWellnessDomainLoadIntentResponseDescriptionIfNeeded

void ___INWellnessDomainLoadIntentResponseDescriptionIfNeeded_block_invoke()
{
  v49[3] = *MEMORY[0x1E69E9840];
  v0 = [INIntentResponseDescription alloc];
  v1 = objc_opt_class();
  v2 = objc_opt_class();
  v41 = _INIntentSchemaBuildIntentSlotDescriptionMap(MEMORY[0x1E695E0F0]);
  v40 = [(INIntentResponseDescription *)v0 initWithName:@"DeleteHealthSampleIntentResponse" facadeClass:v1 dataClass:v2 type:@"sirikit.intent.wellness.DeleteHealthSampleIntentResponse" isPrivate:0 slotsByName:v41];
  v49[0] = v40;
  v3 = [INIntentResponseDescription alloc];
  v4 = objc_opt_class();
  v5 = objc_opt_class();
  v39 = [[INIntentSlotDescription alloc] initWithName:@"resultValues" tag:1 facadePropertyName:@"resultValues" dataPropertyName:@"resultValues" isExtended:0 isPrivate:0 valueType:176 valueStyle:3 defaultValueSelectorStrings:0 provideOptionsSelectorStrings:0 resolutionResultClass:0 resolveSelectors:0];
  v48 = v39;
  v38 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v48 count:1];
  v37 = _INIntentSchemaBuildIntentSlotDescriptionMap(v38);
  v36 = [(INIntentResponseDescription *)v3 initWithName:@"QueryHealthSampleIntentResponse" facadeClass:v4 dataClass:v5 type:@"sirikit.intent.wellness.QueryHealthSampleIntentResponse" isPrivate:0 slotsByName:v37];
  v49[1] = v36;
  v34 = [INIntentResponseDescription alloc];
  v33 = objc_opt_class();
  v32 = objc_opt_class();
  v35 = [[INIntentSlotDescription alloc] initWithName:@"sampleUuids" tag:1 facadePropertyName:@"sampleUuids" dataPropertyName:@"sampleUuids" isExtended:0 isPrivate:0 valueType:30 valueStyle:3 defaultValueSelectorStrings:0 provideOptionsSelectorStrings:0 resolutionResultClass:0 resolveSelectors:0];
  v47[0] = v35;
  v6 = [[INIntentSlotDescription alloc] initWithName:@"recordDate" tag:2 facadePropertyName:@"recordDate" dataPropertyName:@"recordDate" isExtended:0 isPrivate:0 valueType:16 valueStyle:1 defaultValueSelectorStrings:0 provideOptionsSelectorStrings:0 resolutionResultClass:0 resolveSelectors:0];
  v47[1] = v6;
  v7 = [[INIntentSlotDescription alloc] initWithName:@"defaultUnit" tag:3 facadePropertyName:@"defaultUnit" dataPropertyName:@"defaultUnit" isExtended:0 isPrivate:0 valueType:30 valueStyle:1 defaultValueSelectorStrings:0 provideOptionsSelectorStrings:0 resolutionResultClass:0 resolveSelectors:0];
  v47[2] = v7;
  v8 = [[INIntentSlotDescription alloc] initWithName:@"valuesDefaultUnit" tag:4 facadePropertyName:@"valuesDefaultUnits" dataPropertyName:@"valuesDefaultUnits" isExtended:0 isPrivate:0 valueType:173 valueStyle:3 defaultValueSelectorStrings:0 provideOptionsSelectorStrings:0 resolutionResultClass:0 resolveSelectors:0];
  v47[3] = v8;
  v9 = [[INIntentSlotDescription alloc] initWithName:@"userProvidedUnit" tag:5 facadePropertyName:@"userProvidedUnit" dataPropertyName:@"userProvidedUnit" isExtended:0 isPrivate:0 valueType:30 valueStyle:1 defaultValueSelectorStrings:0 provideOptionsSelectorStrings:0 resolutionResultClass:0 resolveSelectors:0];
  v47[4] = v9;
  v10 = [[INIntentSlotDescription alloc] initWithName:@"valuesUserProvidedUnit" tag:6 facadePropertyName:@"valuesUserProvidedUnits" dataPropertyName:@"valuesUserProvidedUnits" isExtended:0 isPrivate:0 valueType:173 valueStyle:3 defaultValueSelectorStrings:0 provideOptionsSelectorStrings:0 resolutionResultClass:0 resolveSelectors:0];
  v47[5] = v10;
  v11 = [[INIntentSlotDescription alloc] initWithName:@"punchoutUrl" tag:7 facadePropertyName:@"punchoutUrl" dataPropertyName:@"punchoutUrl" isExtended:0 isPrivate:0 valueType:30 valueStyle:1 defaultValueSelectorStrings:0 provideOptionsSelectorStrings:0 resolutionResultClass:0 resolveSelectors:0];
  v47[6] = v11;
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v47 count:7];
  v13 = _INIntentSchemaBuildIntentSlotDescriptionMap(v12);
  v14 = [(INIntentResponseDescription *)v34 initWithName:@"SaveHealthSampleIntentResponse" facadeClass:v33 dataClass:v32 type:@"sirikit.intent.wellness.SaveHealthSampleIntentResponse" isPrivate:0 slotsByName:v13];
  v49[2] = v14;
  v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v49 count:3];

  v16 = [v15 count];
  v17 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:v16];
  v18 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:v16];
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v19 = v15;
  v20 = [v19 countByEnumeratingWithState:&v42 objects:v46 count:16];
  if (v20)
  {
    v21 = v20;
    v22 = *v43;
    do
    {
      for (i = 0; i != v21; ++i)
      {
        if (*v43 != v22)
        {
          objc_enumerationMutation(v19);
        }

        v24 = *(*(&v42 + 1) + 8 * i);
        v25 = [v24 name];
        [v17 setObject:v24 forKey:v25];

        v26 = [v24 type];
        [v18 setObject:v24 forKey:v26];
      }

      v21 = [v19 countByEnumeratingWithState:&v42 objects:v46 count:16];
    }

    while (v21);
  }

  v27 = [v17 copy];
  v28 = sWellnessDomain_intentResponseDescsByName;
  sWellnessDomain_intentResponseDescsByName = v27;

  v29 = [v18 copy];
  v30 = sWellnessDomain_intentResponseDescsByType;
  sWellnessDomain_intentResponseDescsByType = v29;

  v31 = *MEMORY[0x1E69E9840];
}

@end