@interface INMediaDomainLoadIntentResponseDescriptionIfNeeded
@end

@implementation INMediaDomainLoadIntentResponseDescriptionIfNeeded

void ___INMediaDomainLoadIntentResponseDescriptionIfNeeded_block_invoke()
{
  v48[4] = *MEMORY[0x1E69E9840];
  v0 = [INIntentResponseDescription alloc];
  v1 = objc_opt_class();
  v2 = objc_opt_class();
  v40 = _INIntentSchemaBuildIntentSlotDescriptionMap(MEMORY[0x1E695E0F0]);
  v39 = [(INIntentResponseDescription *)v0 initWithName:@"AddMediaIntentResponse" facadeClass:v1 dataClass:v2 type:@"sirikit.intent.media.AddMediaIntentResponse" isPrivate:0 slotsByName:v40];
  v48[0] = v39;
  v3 = [INIntentResponseDescription alloc];
  v4 = objc_opt_class();
  v5 = objc_opt_class();
  v38 = [[INIntentSlotDescription alloc] initWithName:@"nowPlayingInfo" tag:1 facadePropertyName:@"nowPlayingInfo" dataPropertyName:@"nowPlayingInfo" isExtended:0 isPrivate:0 valueType:35 valueStyle:1 defaultValueSelectorStrings:0 provideOptionsSelectorStrings:0 resolutionResultClass:0 resolveSelectors:0];
  v47 = v38;
  v37 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v47 count:1];
  v6 = _INIntentSchemaBuildIntentSlotDescriptionMap(v37);
  v7 = [(INIntentResponseDescription *)v3 initWithName:@"PlayMediaIntentResponse" facadeClass:v4 dataClass:v5 type:@"sirikit.intent.media.PlayMediaIntentResponse" isPrivate:0 slotsByName:v6];
  v48[1] = v7;
  v8 = [INIntentResponseDescription alloc];
  v9 = objc_opt_class();
  v10 = objc_opt_class();
  v11 = [[INIntentSlotDescription alloc] initWithName:@"mediaItems" tag:1 facadePropertyName:@"mediaItems" dataPropertyName:@"mediaItems" isExtended:0 isPrivate:0 valueType:153 valueStyle:3 defaultValueSelectorStrings:0 provideOptionsSelectorStrings:0 resolutionResultClass:0 resolveSelectors:0];
  v46 = v11;
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v46 count:1];
  v13 = _INIntentSchemaBuildIntentSlotDescriptionMap(v12);
  v14 = [(INIntentResponseDescription *)v8 initWithName:@"SearchForMediaIntentResponse" facadeClass:v9 dataClass:v10 type:@"sirikit.intent.media.SearchForMediaIntentResponse" isPrivate:0 slotsByName:v13];
  v48[2] = v14;
  v15 = [INIntentResponseDescription alloc];
  v16 = objc_opt_class();
  v17 = objc_opt_class();
  v18 = _INIntentSchemaBuildIntentSlotDescriptionMap(MEMORY[0x1E695E0F0]);
  v19 = [(INIntentResponseDescription *)v15 initWithName:@"UpdateMediaAffinityIntentResponse" facadeClass:v16 dataClass:v17 type:@"sirikit.intent.media.UpdateMediaAffinityIntentResponse" isPrivate:0 slotsByName:v18];
  v48[3] = v19;
  v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:v48 count:4];

  v21 = [v20 count];
  v22 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:v21];
  v23 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:v21];
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v24 = v20;
  v25 = [v24 countByEnumeratingWithState:&v41 objects:v45 count:16];
  if (v25)
  {
    v26 = v25;
    v27 = *v42;
    do
    {
      for (i = 0; i != v26; ++i)
      {
        if (*v42 != v27)
        {
          objc_enumerationMutation(v24);
        }

        v29 = *(*(&v41 + 1) + 8 * i);
        v30 = [v29 name];
        [v22 setObject:v29 forKey:v30];

        v31 = [v29 type];
        [v23 setObject:v29 forKey:v31];
      }

      v26 = [v24 countByEnumeratingWithState:&v41 objects:v45 count:16];
    }

    while (v26);
  }

  v32 = [v22 copy];
  v33 = sMediaDomain_intentResponseDescsByName;
  sMediaDomain_intentResponseDescsByName = v32;

  v34 = [v23 copy];
  v35 = sMediaDomain_intentResponseDescsByType;
  sMediaDomain_intentResponseDescsByType = v34;

  v36 = *MEMORY[0x1E69E9840];
}

@end