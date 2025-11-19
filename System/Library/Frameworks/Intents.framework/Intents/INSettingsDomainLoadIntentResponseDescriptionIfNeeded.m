@interface INSettingsDomainLoadIntentResponseDescriptionIfNeeded
@end

@implementation INSettingsDomainLoadIntentResponseDescriptionIfNeeded

void ___INSettingsDomainLoadIntentResponseDescriptionIfNeeded_block_invoke()
{
  v82[6] = *MEMORY[0x1E69E9840];
  v0 = [INIntentResponseDescription alloc];
  v1 = objc_opt_class();
  v2 = objc_opt_class();
  v70 = [[INIntentSlotDescription alloc] initWithName:@"settingResponseData" tag:1 facadePropertyName:@"settingResponseDatas" dataPropertyName:@"settingResponseDatas" isExtended:0 isPrivate:0 valueType:232 valueStyle:3 defaultValueSelectorStrings:0 provideOptionsSelectorStrings:0 resolutionResultClass:0 resolveSelectors:0];
  v81[0] = v70;
  v69 = [[INIntentSlotDescription alloc] initWithName:@"errorDetail" tag:2 facadePropertyName:@"errorDetail" dataPropertyName:@"errorDetail" isExtended:0 isPrivate:0 valueType:7 valueStyle:1 defaultValueSelectorStrings:0 provideOptionsSelectorStrings:0 resolutionResultClass:0 resolveSelectors:0];
  v81[1] = v69;
  v68 = [MEMORY[0x1E695DEC8] arrayWithObjects:v81 count:2];
  v67 = _INIntentSchemaBuildIntentSlotDescriptionMap(v68);
  v66 = [(INIntentResponseDescription *)v0 initWithName:@"GetSettingIntentResponse" facadeClass:v1 dataClass:v2 type:@"sirikit.intent.settings.GetSettingIntentResponse" isPrivate:0 slotsByName:v67];
  v82[0] = v66;
  v3 = [INIntentResponseDescription alloc];
  v4 = objc_opt_class();
  v5 = objc_opt_class();
  v65 = [[INIntentSlotDescription alloc] initWithName:@"punchoutUrl" tag:1 facadePropertyName:@"punchoutUrl" dataPropertyName:@"punchoutUrl" isExtended:0 isPrivate:0 valueType:7 valueStyle:1 defaultValueSelectorStrings:0 provideOptionsSelectorStrings:0 resolutionResultClass:0 resolveSelectors:0];
  v80[0] = v65;
  v64 = [[INIntentSlotDescription alloc] initWithName:@"errorDetail" tag:2 facadePropertyName:@"errorDetail" dataPropertyName:@"errorDetail" isExtended:0 isPrivate:0 valueType:7 valueStyle:1 defaultValueSelectorStrings:0 provideOptionsSelectorStrings:0 resolutionResultClass:0 resolveSelectors:0];
  v80[1] = v64;
  v63 = [MEMORY[0x1E695DEC8] arrayWithObjects:v80 count:2];
  v62 = _INIntentSchemaBuildIntentSlotDescriptionMap(v63);
  v61 = [(INIntentResponseDescription *)v3 initWithName:@"OpenSettingIntentResponse" facadeClass:v4 dataClass:v5 type:@"sirikit.intent.settings.OpenSettingIntentResponse" isPrivate:0 slotsByName:v62];
  v82[1] = v61;
  v6 = [INIntentResponseDescription alloc];
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v60 = [[INIntentSlotDescription alloc] initWithName:@"oldValue" tag:1 facadePropertyName:@"oldValue" dataPropertyName:@"oldValue" isExtended:0 isPrivate:0 valueType:234 valueStyle:1 defaultValueSelectorStrings:0 provideOptionsSelectorStrings:0 resolutionResultClass:0 resolveSelectors:0];
  v79[0] = v60;
  v59 = [[INIntentSlotDescription alloc] initWithName:@"updatedValue" tag:2 facadePropertyName:@"updatedValue" dataPropertyName:@"updatedValue" isExtended:0 isPrivate:0 valueType:234 valueStyle:1 defaultValueSelectorStrings:0 provideOptionsSelectorStrings:0 resolutionResultClass:0 resolveSelectors:0];
  v79[1] = v59;
  v58 = [[INIntentSlotDescription alloc] initWithName:@"errorDetail" tag:3 facadePropertyName:@"errorDetail" dataPropertyName:@"errorDetail" isExtended:0 isPrivate:0 valueType:7 valueStyle:1 defaultValueSelectorStrings:0 provideOptionsSelectorStrings:0 resolutionResultClass:0 resolveSelectors:0];
  v79[2] = v58;
  v57 = [MEMORY[0x1E695DEC8] arrayWithObjects:v79 count:3];
  v56 = _INIntentSchemaBuildIntentSlotDescriptionMap(v57);
  v55 = [(INIntentResponseDescription *)v6 initWithName:@"SetBinarySettingIntentResponse" facadeClass:v7 dataClass:v8 type:@"sirikit.intent.settings.SetBinarySettingIntentResponse" isPrivate:0 slotsByName:v56];
  v82[2] = v55;
  v9 = [INIntentResponseDescription alloc];
  v10 = objc_opt_class();
  v11 = objc_opt_class();
  v54 = [[INIntentSlotDescription alloc] initWithName:@"oldValue" tag:1 facadePropertyName:@"oldValue" dataPropertyName:@"oldValue" isExtended:0 isPrivate:0 valueType:7 valueStyle:1 defaultValueSelectorStrings:0 provideOptionsSelectorStrings:0 resolutionResultClass:0 resolveSelectors:0];
  v78[0] = v54;
  v53 = [[INIntentSlotDescription alloc] initWithName:@"updatedValue" tag:2 facadePropertyName:@"updatedValue" dataPropertyName:@"updatedValue" isExtended:0 isPrivate:0 valueType:7 valueStyle:1 defaultValueSelectorStrings:0 provideOptionsSelectorStrings:0 resolutionResultClass:0 resolveSelectors:0];
  v78[1] = v53;
  v52 = [[INIntentSlotDescription alloc] initWithName:@"errorDetail" tag:3 facadePropertyName:@"errorDetail" dataPropertyName:@"errorDetail" isExtended:0 isPrivate:0 valueType:7 valueStyle:1 defaultValueSelectorStrings:0 provideOptionsSelectorStrings:0 resolutionResultClass:0 resolveSelectors:0];
  v78[2] = v52;
  v51 = [MEMORY[0x1E695DEC8] arrayWithObjects:v78 count:3];
  v50 = _INIntentSchemaBuildIntentSlotDescriptionMap(v51);
  v49 = [(INIntentResponseDescription *)v9 initWithName:@"SetLabeledSettingIntentResponse" facadeClass:v10 dataClass:v11 type:@"sirikit.intent.settings.SetLabeledSettingIntentResponse" isPrivate:0 slotsByName:v50];
  v82[3] = v49;
  v12 = [INIntentResponseDescription alloc];
  v13 = objc_opt_class();
  v14 = objc_opt_class();
  v48 = [[INIntentSlotDescription alloc] initWithName:@"oldValue" tag:1 facadePropertyName:@"oldValue" dataPropertyName:@"oldValue" isExtended:0 isPrivate:0 valueType:233 valueStyle:1 defaultValueSelectorStrings:0 provideOptionsSelectorStrings:0 resolutionResultClass:0 resolveSelectors:0];
  v77[0] = v48;
  v47 = [[INIntentSlotDescription alloc] initWithName:@"updatedValue" tag:2 facadePropertyName:@"updatedValue" dataPropertyName:@"updatedValue" isExtended:0 isPrivate:0 valueType:233 valueStyle:1 defaultValueSelectorStrings:0 provideOptionsSelectorStrings:0 resolutionResultClass:0 resolveSelectors:0];
  v77[1] = v47;
  v46 = [[INIntentSlotDescription alloc] initWithName:@"minValue" tag:3 facadePropertyName:@"minValue" dataPropertyName:@"minValue" isExtended:0 isPrivate:0 valueType:233 valueStyle:1 defaultValueSelectorStrings:0 provideOptionsSelectorStrings:0 resolutionResultClass:0 resolveSelectors:0];
  v77[2] = v46;
  v45 = [[INIntentSlotDescription alloc] initWithName:@"maxValue" tag:4 facadePropertyName:@"maxValue" dataPropertyName:@"maxValue" isExtended:0 isPrivate:0 valueType:233 valueStyle:1 defaultValueSelectorStrings:0 provideOptionsSelectorStrings:0 resolutionResultClass:0 resolveSelectors:0];
  v77[3] = v45;
  v44 = [[INIntentSlotDescription alloc] initWithName:@"errorDetail" tag:5 facadePropertyName:@"errorDetail" dataPropertyName:@"errorDetail" isExtended:0 isPrivate:0 valueType:7 valueStyle:1 defaultValueSelectorStrings:0 provideOptionsSelectorStrings:0 resolutionResultClass:0 resolveSelectors:0];
  v77[4] = v44;
  v43 = [MEMORY[0x1E695DEC8] arrayWithObjects:v77 count:5];
  v42 = _INIntentSchemaBuildIntentSlotDescriptionMap(v43);
  v15 = [(INIntentResponseDescription *)v12 initWithName:@"SetNumericSettingIntentResponse" facadeClass:v13 dataClass:v14 type:@"sirikit.intent.settings.SetNumericSettingIntentResponse" isPrivate:0 slotsByName:v42];
  v82[4] = v15;
  v16 = [INIntentResponseDescription alloc];
  v17 = objc_opt_class();
  v18 = objc_opt_class();
  v19 = [[INIntentSlotDescription alloc] initWithName:@"oldValue" tag:1 facadePropertyName:@"oldValue" dataPropertyName:@"oldValue" isExtended:0 isPrivate:0 valueType:16 valueStyle:1 defaultValueSelectorStrings:0 provideOptionsSelectorStrings:0 resolutionResultClass:0 resolveSelectors:0];
  v76[0] = v19;
  v20 = [[INIntentSlotDescription alloc] initWithName:@"updatedValue" tag:2 facadePropertyName:@"updatedValue" dataPropertyName:@"updatedValue" isExtended:0 isPrivate:0 valueType:16 valueStyle:1 defaultValueSelectorStrings:0 provideOptionsSelectorStrings:0 resolutionResultClass:0 resolveSelectors:0];
  v76[1] = v20;
  v21 = [[INIntentSlotDescription alloc] initWithName:@"errorDetail" tag:3 facadePropertyName:@"errorDetail" dataPropertyName:@"errorDetail" isExtended:0 isPrivate:0 valueType:7 valueStyle:1 defaultValueSelectorStrings:0 provideOptionsSelectorStrings:0 resolutionResultClass:0 resolveSelectors:0];
  v76[2] = v21;
  v22 = [MEMORY[0x1E695DEC8] arrayWithObjects:v76 count:3];
  v23 = _INIntentSchemaBuildIntentSlotDescriptionMap(v22);
  v24 = [(INIntentResponseDescription *)v16 initWithName:@"SetTemporalSettingIntentResponse" facadeClass:v17 dataClass:v18 type:@"sirikit.intent.settings.SetTemporalSettingIntentResponse" isPrivate:0 slotsByName:v23];
  v82[5] = v24;
  v25 = [MEMORY[0x1E695DEC8] arrayWithObjects:v82 count:6];

  v26 = [v25 count];
  v27 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:v26];
  v28 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:v26];
  v71 = 0u;
  v72 = 0u;
  v73 = 0u;
  v74 = 0u;
  v29 = v25;
  v30 = [v29 countByEnumeratingWithState:&v71 objects:v75 count:16];
  if (v30)
  {
    v31 = v30;
    v32 = *v72;
    do
    {
      for (i = 0; i != v31; ++i)
      {
        if (*v72 != v32)
        {
          objc_enumerationMutation(v29);
        }

        v34 = *(*(&v71 + 1) + 8 * i);
        v35 = [v34 name];
        [v27 setObject:v34 forKey:v35];

        v36 = [v34 type];
        [v28 setObject:v34 forKey:v36];
      }

      v31 = [v29 countByEnumeratingWithState:&v71 objects:v75 count:16];
    }

    while (v31);
  }

  v37 = [v27 copy];
  v38 = sSettingsDomain_intentResponseDescsByName;
  sSettingsDomain_intentResponseDescsByName = v37;

  v39 = [v28 copy];
  v40 = sSettingsDomain_intentResponseDescsByType;
  sSettingsDomain_intentResponseDescsByType = v39;

  v41 = *MEMORY[0x1E69E9840];
}

@end