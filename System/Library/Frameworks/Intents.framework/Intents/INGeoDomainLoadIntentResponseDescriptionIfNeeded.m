@interface INGeoDomainLoadIntentResponseDescriptionIfNeeded
@end

@implementation INGeoDomainLoadIntentResponseDescriptionIfNeeded

void ___INGeoDomainLoadIntentResponseDescriptionIfNeeded_block_invoke()
{
  v77[6] = *MEMORY[0x1E69E9840];
  v0 = [INIntentResponseDescription alloc];
  v1 = objc_opt_class();
  v2 = objc_opt_class();
  v65 = [[INIntentSlotDescription alloc] initWithName:@"parkingLocation" tag:1 facadePropertyName:@"parkingLocation" dataPropertyName:@"parkingLocation" isExtended:0 isPrivate:0 valueType:27 valueStyle:1 defaultValueSelectorStrings:0 provideOptionsSelectorStrings:0 resolutionResultClass:0 resolveSelectors:0];
  v76[0] = v65;
  v64 = [[INIntentSlotDescription alloc] initWithName:@"parkingNote" tag:2 facadePropertyName:@"parkingNote" dataPropertyName:@"parkingNote" isExtended:0 isPrivate:0 valueType:30 valueStyle:1 defaultValueSelectorStrings:0 provideOptionsSelectorStrings:0 resolutionResultClass:0 resolveSelectors:0];
  v76[1] = v64;
  v63 = [MEMORY[0x1E695DEC8] arrayWithObjects:v76 count:2];
  v62 = _INIntentSchemaBuildIntentSlotDescriptionMap(v63);
  v61 = [(INIntentResponseDescription *)v0 initWithName:@"DeleteParkingLocationIntentResponse" facadeClass:v1 dataClass:v2 type:@"sirikit.intent.geo.DeleteParkingLocationIntentResponse" isPrivate:0 slotsByName:v62];
  v77[0] = v61;
  v3 = [INIntentResponseDescription alloc];
  v4 = objc_opt_class();
  v5 = objc_opt_class();
  v60 = [[INIntentSlotDescription alloc] initWithName:@"transportType" tag:1 facadePropertyName:@"transportTypes" dataPropertyName:@"transportTypes" isExtended:0 isPrivate:0 valueType:228 valueStyle:3 defaultValueSelectorStrings:0 provideOptionsSelectorStrings:0 resolutionResultClass:0 resolveSelectors:0];
  v75[0] = v60;
  v59 = [[INIntentSlotDescription alloc] initWithName:@"location" tag:2 facadePropertyName:@"location" dataPropertyName:@"location" isExtended:0 isPrivate:0 valueType:27 valueStyle:1 defaultValueSelectorStrings:0 provideOptionsSelectorStrings:0 resolutionResultClass:0 resolveSelectors:0];
  v75[1] = v59;
  v58 = [[INIntentSlotDescription alloc] initWithName:@"supportedType" tag:3 facadePropertyName:@"supportedTypes" dataPropertyName:@"supportedTypes" isExtended:0 isPrivate:0 valueType:229 valueStyle:3 defaultValueSelectorStrings:0 provideOptionsSelectorStrings:0 resolutionResultClass:0 resolveSelectors:0];
  v75[2] = v58;
  v57 = [MEMORY[0x1E695DEC8] arrayWithObjects:v75 count:3];
  v56 = _INIntentSchemaBuildIntentSlotDescriptionMap(v57);
  v55 = [(INIntentResponseDescription *)v3 initWithName:@"ReportIncidentIntentResponse" facadeClass:v4 dataClass:v5 type:@"sirikit.intent.geo.ReportIncidentIntentResponse" isPrivate:0 slotsByName:v56];
  v77[1] = v55;
  v6 = [INIntentResponseDescription alloc];
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v54 = [[INIntentSlotDescription alloc] initWithName:@"parkingLocation" tag:1 facadePropertyName:@"parkingLocation" dataPropertyName:@"parkingLocation" isExtended:0 isPrivate:0 valueType:27 valueStyle:1 defaultValueSelectorStrings:0 provideOptionsSelectorStrings:0 resolutionResultClass:0 resolveSelectors:0];
  v74[0] = v54;
  v53 = [[INIntentSlotDescription alloc] initWithName:@"parkingNote" tag:2 facadePropertyName:@"parkingNote" dataPropertyName:@"parkingNote" isExtended:0 isPrivate:0 valueType:30 valueStyle:1 defaultValueSelectorStrings:0 provideOptionsSelectorStrings:0 resolutionResultClass:0 resolveSelectors:0];
  v74[1] = v53;
  v52 = [MEMORY[0x1E695DEC8] arrayWithObjects:v74 count:2];
  v51 = _INIntentSchemaBuildIntentSlotDescriptionMap(v52);
  v50 = [(INIntentResponseDescription *)v6 initWithName:@"RetrieveParkingLocationIntentResponse" facadeClass:v7 dataClass:v8 type:@"sirikit.intent.geo.RetrieveParkingLocationIntentResponse" isPrivate:0 slotsByName:v51];
  v77[2] = v50;
  v9 = [INIntentResponseDescription alloc];
  v10 = objc_opt_class();
  v11 = objc_opt_class();
  v49 = [[INIntentSlotDescription alloc] initWithName:@"parkingLocation" tag:1 facadePropertyName:@"parkingLocation" dataPropertyName:@"parkingLocation" isExtended:0 isPrivate:0 valueType:27 valueStyle:1 defaultValueSelectorStrings:0 provideOptionsSelectorStrings:0 resolutionResultClass:0 resolveSelectors:0];
  v73[0] = v49;
  v48 = [[INIntentSlotDescription alloc] initWithName:@"parkingNote" tag:2 facadePropertyName:@"parkingNote" dataPropertyName:@"parkingNote" isExtended:0 isPrivate:0 valueType:30 valueStyle:1 defaultValueSelectorStrings:0 provideOptionsSelectorStrings:0 resolutionResultClass:0 resolveSelectors:0];
  v73[1] = v48;
  v47 = [MEMORY[0x1E695DEC8] arrayWithObjects:v73 count:2];
  v46 = _INIntentSchemaBuildIntentSlotDescriptionMap(v47);
  v45 = [(INIntentResponseDescription *)v9 initWithName:@"SaveParkingLocationIntentResponse" facadeClass:v10 dataClass:v11 type:@"sirikit.intent.geo.SaveParkingLocationIntentResponse" isPrivate:0 slotsByName:v46];
  v77[3] = v45;
  v12 = [INIntentResponseDescription alloc];
  v13 = objc_opt_class();
  v14 = objc_opt_class();
  v44 = [[INIntentSlotDescription alloc] initWithName:@"recipient" tag:1 facadePropertyName:@"recipients" dataPropertyName:@"recipients" isExtended:0 isPrivate:0 valueType:10 valueStyle:3 defaultValueSelectorStrings:0 provideOptionsSelectorStrings:0 resolutionResultClass:0 resolveSelectors:0];
  v72[0] = v44;
  v43 = [[INIntentSlotDescription alloc] initWithName:@"medium" tag:2 facadePropertyName:@"mediums" dataPropertyName:@"mediums" isExtended:0 isPrivate:0 valueType:227 valueStyle:3 defaultValueSelectorStrings:0 provideOptionsSelectorStrings:0 resolutionResultClass:0 resolveSelectors:0];
  v72[1] = v43;
  v42 = [MEMORY[0x1E695DEC8] arrayWithObjects:v72 count:2];
  v15 = _INIntentSchemaBuildIntentSlotDescriptionMap(v42);
  v16 = [(INIntentResponseDescription *)v12 initWithName:@"ShareETAIntentResponse" facadeClass:v13 dataClass:v14 type:@"sirikit.intent.geo.ShareETAIntentResponse" isPrivate:0 slotsByName:v15];
  v77[4] = v16;
  v17 = [INIntentResponseDescription alloc];
  v18 = objc_opt_class();
  v19 = objc_opt_class();
  v20 = [[INIntentSlotDescription alloc] initWithName:@"recipient" tag:1 facadePropertyName:@"recipients" dataPropertyName:@"recipients" isExtended:0 isPrivate:0 valueType:10 valueStyle:3 defaultValueSelectorStrings:0 provideOptionsSelectorStrings:0 resolutionResultClass:0 resolveSelectors:0];
  v71[0] = v20;
  v21 = [[INIntentSlotDescription alloc] initWithName:@"medium" tag:2 facadePropertyName:@"mediums" dataPropertyName:@"mediums" isExtended:0 isPrivate:0 valueType:227 valueStyle:3 defaultValueSelectorStrings:0 provideOptionsSelectorStrings:0 resolutionResultClass:0 resolveSelectors:0];
  v71[1] = v21;
  v22 = [MEMORY[0x1E695DEC8] arrayWithObjects:v71 count:2];
  v23 = _INIntentSchemaBuildIntentSlotDescriptionMap(v22);
  v24 = [(INIntentResponseDescription *)v17 initWithName:@"StopShareETAIntentResponse" facadeClass:v18 dataClass:v19 type:@"sirikit.intent.geo.StopShareETAIntentResponse" isPrivate:0 slotsByName:v23];
  v77[5] = v24;
  v25 = [MEMORY[0x1E695DEC8] arrayWithObjects:v77 count:6];

  v26 = [v25 count];
  v27 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:v26];
  v28 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:v26];
  v66 = 0u;
  v67 = 0u;
  v68 = 0u;
  v69 = 0u;
  v29 = v25;
  v30 = [v29 countByEnumeratingWithState:&v66 objects:v70 count:16];
  if (v30)
  {
    v31 = v30;
    v32 = *v67;
    do
    {
      for (i = 0; i != v31; ++i)
      {
        if (*v67 != v32)
        {
          objc_enumerationMutation(v29);
        }

        v34 = *(*(&v66 + 1) + 8 * i);
        v35 = [v34 name];
        [v27 setObject:v34 forKey:v35];

        v36 = [v34 type];
        [v28 setObject:v34 forKey:v36];
      }

      v31 = [v29 countByEnumeratingWithState:&v66 objects:v70 count:16];
    }

    while (v31);
  }

  v37 = [v27 copy];
  v38 = sGeoDomain_intentResponseDescsByName;
  sGeoDomain_intentResponseDescsByName = v37;

  v39 = [v28 copy];
  v40 = sGeoDomain_intentResponseDescsByType;
  sGeoDomain_intentResponseDescsByType = v39;

  v41 = *MEMORY[0x1E69E9840];
}

@end