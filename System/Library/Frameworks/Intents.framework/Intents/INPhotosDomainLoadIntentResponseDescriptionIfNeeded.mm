@interface INPhotosDomainLoadIntentResponseDescriptionIfNeeded
@end

@implementation INPhotosDomainLoadIntentResponseDescriptionIfNeeded

void ___INPhotosDomainLoadIntentResponseDescriptionIfNeeded_block_invoke()
{
  v38[2] = *MEMORY[0x1E69E9840];
  v0 = [INIntentResponseDescription alloc];
  v1 = objc_opt_class();
  v2 = objc_opt_class();
  v30 = [[INIntentSlotDescription alloc] initWithName:@"searchResultsCount" tag:7 facadePropertyName:@"searchResultsCount" dataPropertyName:@"searchResultsCount" isExtended:0 isPrivate:0 valueType:5 valueStyle:1 defaultValueSelectorStrings:0 provideOptionsSelectorStrings:0 resolutionResultClass:0 resolveSelectors:0];
  v37 = v30;
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v37 count:1];
  v4 = _INIntentSchemaBuildIntentSlotDescriptionMap(v3);
  v5 = [(INIntentResponseDescription *)v0 initWithName:@"SearchForPhotosIntentResponse" facadeClass:v1 dataClass:v2 type:@"sirikit.intent.photos.SearchForPhotosIntentResponse" isPrivate:0 slotsByName:v4];
  v38[0] = v5;
  v6 = [INIntentResponseDescription alloc];
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v9 = [[INIntentSlotDescription alloc] initWithName:@"searchResultsCount" tag:7 facadePropertyName:@"searchResultsCount" dataPropertyName:@"searchResultsCount" isExtended:0 isPrivate:0 valueType:5 valueStyle:1 defaultValueSelectorStrings:0 provideOptionsSelectorStrings:0 resolutionResultClass:0 resolveSelectors:0];
  v36 = v9;
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v36 count:1];
  v11 = _INIntentSchemaBuildIntentSlotDescriptionMap(v10);
  v12 = [(INIntentResponseDescription *)v6 initWithName:@"StartPhotoPlaybackIntentResponse" facadeClass:v7 dataClass:v8 type:@"sirikit.intent.photos.StartPhotoPlaybackIntentResponse" isPrivate:0 slotsByName:v11];
  v38[1] = v12;
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v38 count:2];

  v14 = [v13 count];
  v15 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:v14];
  v16 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:v14];
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v17 = v13;
  v18 = [v17 countByEnumeratingWithState:&v31 objects:v35 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v32;
    do
    {
      for (i = 0; i != v19; ++i)
      {
        if (*v32 != v20)
        {
          objc_enumerationMutation(v17);
        }

        v22 = *(*(&v31 + 1) + 8 * i);
        v23 = [v22 name];
        [v15 setObject:v22 forKey:v23];

        v24 = [v22 type];
        [v16 setObject:v22 forKey:v24];
      }

      v19 = [v17 countByEnumeratingWithState:&v31 objects:v35 count:16];
    }

    while (v19);
  }

  v25 = [v15 copy];
  v26 = sPhotosDomain_intentResponseDescsByName;
  sPhotosDomain_intentResponseDescsByName = v25;

  v27 = [v16 copy];
  v28 = sPhotosDomain_intentResponseDescsByType;
  sPhotosDomain_intentResponseDescsByType = v27;

  v29 = *MEMORY[0x1E69E9840];
}

@end