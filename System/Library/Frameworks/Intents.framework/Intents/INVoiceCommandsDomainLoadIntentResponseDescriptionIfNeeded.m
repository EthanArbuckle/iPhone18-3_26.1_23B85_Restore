@interface INVoiceCommandsDomainLoadIntentResponseDescriptionIfNeeded
@end

@implementation INVoiceCommandsDomainLoadIntentResponseDescriptionIfNeeded

void ___INVoiceCommandsDomainLoadIntentResponseDescriptionIfNeeded_block_invoke()
{
  v52[2] = *MEMORY[0x1E69E9840];
  v0 = [INIntentResponseDescription alloc];
  v1 = objc_opt_class();
  v2 = objc_opt_class();
  v44 = [[INIntentSlotDescription alloc] initWithName:@"shortcuts" tag:1 facadePropertyName:@"shortcuts" dataPropertyName:@"shortcuts" isExtended:0 isPrivate:0 valueType:201 valueStyle:3 defaultValueSelectorStrings:0 provideOptionsSelectorStrings:0 resolutionResultClass:0 resolveSelectors:0];
  v51 = v44;
  v43 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v51 count:1];
  v42 = _INIntentSchemaBuildIntentSlotDescriptionMap(v43);
  v41 = [(INIntentResponseDescription *)v0 initWithName:@"ListShortcutsIntentResponse" facadeClass:v1 dataClass:v2 type:@"sirikit.intent.voice_commands.ListShortcutsIntentResponse" isPrivate:0 slotsByName:v42];
  v52[0] = v41;
  v3 = [INIntentResponseDescription alloc];
  v38 = objc_opt_class();
  v37 = objc_opt_class();
  v40 = [[INIntentSlotDescription alloc] initWithName:@"appBundleId" tag:1 facadePropertyName:@"appBundleId" dataPropertyName:@"appBundleId" isExtended:0 isPrivate:0 valueType:7 valueStyle:1 defaultValueSelectorStrings:0 provideOptionsSelectorStrings:0 resolutionResultClass:0 resolveSelectors:0];
  v50[0] = v40;
  v39 = [[INIntentSlotDescription alloc] initWithName:@"intentCategory" tag:2 facadePropertyName:@"intentCategory" dataPropertyName:@"intentCategory" isExtended:0 isPrivate:0 valueType:196 valueStyle:1 defaultValueSelectorStrings:0 provideOptionsSelectorStrings:0 resolutionResultClass:0 resolveSelectors:0];
  v50[1] = v39;
  v36 = [[INIntentSlotDescription alloc] initWithName:@"customResponsesDisabled" tag:3 facadePropertyName:@"customResponsesDisabled" dataPropertyName:@"customResponsesDisabled" isExtended:0 isPrivate:0 valueType:1 valueStyle:1 defaultValueSelectorStrings:0 provideOptionsSelectorStrings:0 resolutionResultClass:0 resolveSelectors:0];
  v50[2] = v36;
  v35 = [[INIntentSlotDescription alloc] initWithName:@"responseTemplate" tag:4 facadePropertyName:@"responseTemplate" dataPropertyName:@"responseTemplate" isExtended:0 isPrivate:0 valueType:7 valueStyle:1 defaultValueSelectorStrings:0 provideOptionsSelectorStrings:0 resolutionResultClass:0 resolveSelectors:0];
  v50[3] = v35;
  v34 = [[INIntentSlotDescription alloc] initWithName:@"parameters" tag:5 facadePropertyName:@"parameters" dataPropertyName:@"parameters" isExtended:0 isPrivate:0 valueType:35 valueStyle:1 defaultValueSelectorStrings:0 provideOptionsSelectorStrings:0 resolutionResultClass:0 resolveSelectors:0];
  v50[4] = v34;
  v33 = [[INIntentSlotDescription alloc] initWithName:@"verb" tag:6 facadePropertyName:@"verb" dataPropertyName:@"verb" isExtended:0 isPrivate:0 valueType:7 valueStyle:1 defaultValueSelectorStrings:0 provideOptionsSelectorStrings:0 resolutionResultClass:0 resolveSelectors:0];
  v50[5] = v33;
  v32 = [[INIntentSlotDescription alloc] initWithName:@"underlyingIntent" tag:7 facadePropertyName:@"underlyingIntent" dataPropertyName:@"underlyingIntent" isExtended:0 isPrivate:0 valueType:197 valueStyle:1 defaultValueSelectorStrings:0 provideOptionsSelectorStrings:0 resolutionResultClass:0 resolveSelectors:0];
  v50[6] = v32;
  v31 = [[INIntentSlotDescription alloc] initWithName:@"localizedAppName" tag:8 facadePropertyName:@"localizedAppName" dataPropertyName:@"localizedAppName" isExtended:0 isPrivate:0 valueType:7 valueStyle:1 defaultValueSelectorStrings:0 provideOptionsSelectorStrings:0 resolutionResultClass:0 resolveSelectors:0];
  v50[7] = v31;
  v30 = [[INIntentSlotDescription alloc] initWithName:@"underlyingIntentResponse" tag:9 facadePropertyName:@"underlyingIntentResponse" dataPropertyName:@"underlyingIntentResponse" isExtended:0 isPrivate:0 valueType:197 valueStyle:1 defaultValueSelectorStrings:0 provideOptionsSelectorStrings:0 resolutionResultClass:0 resolveSelectors:0];
  v50[8] = v30;
  v4 = [[INIntentSlotDescription alloc] initWithName:@"toggleState" tag:10 facadePropertyName:@"toggleState" dataPropertyName:@"toggleState" isExtended:0 isPrivate:0 valueType:204 valueStyle:1 defaultValueSelectorStrings:0 provideOptionsSelectorStrings:0 resolutionResultClass:0 resolveSelectors:0];
  v50[9] = v4;
  v5 = [[INIntentSlotDescription alloc] initWithName:@"continueRunning" tag:11 facadePropertyName:@"continueRunning" dataPropertyName:@"continueRunning" isExtended:0 isPrivate:0 valueType:1 valueStyle:1 defaultValueSelectorStrings:0 provideOptionsSelectorStrings:0 resolutionResultClass:0 resolveSelectors:0];
  v50[10] = v5;
  v6 = [[INIntentSlotDescription alloc] initWithName:@"interstitialDisabled" tag:12 facadePropertyName:@"interstitialDisabled" dataPropertyName:@"interstitialDisabled" isExtended:0 isPrivate:0 valueType:1 valueStyle:1 defaultValueSelectorStrings:0 provideOptionsSelectorStrings:0 resolutionResultClass:0 resolveSelectors:0];
  v50[11] = v6;
  v7 = [[INIntentSlotDescription alloc] initWithName:@"underlyingIntentTitle" tag:13 facadePropertyName:@"underlyingIntentTitle" dataPropertyName:@"underlyingIntentTitle" isExtended:0 isPrivate:0 valueType:7 valueStyle:1 defaultValueSelectorStrings:0 provideOptionsSelectorStrings:0 resolutionResultClass:0 resolveSelectors:0];
  v50[12] = v7;
  v8 = [[INIntentSlotDescription alloc] initWithName:@"step" tag:14 facadePropertyName:@"steps" dataPropertyName:@"steps" isExtended:0 isPrivate:0 valueType:199 valueStyle:3 defaultValueSelectorStrings:0 provideOptionsSelectorStrings:0 resolutionResultClass:0 resolveSelectors:0];
  v50[13] = v8;
  v9 = [[INIntentSlotDescription alloc] initWithName:@"prefersExecutionOnCompanion" tag:15 facadePropertyName:@"prefersExecutionOnCompanion" dataPropertyName:@"prefersExecutionOnCompanion" isExtended:0 isPrivate:0 valueType:1 valueStyle:1 defaultValueSelectorStrings:0 provideOptionsSelectorStrings:0 resolutionResultClass:0 resolveSelectors:0];
  v50[14] = v9;
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v50 count:15];
  v11 = _INIntentSchemaBuildIntentSlotDescriptionMap(v10);
  v12 = [(INIntentResponseDescription *)v3 initWithName:@"RunVoiceCommandIntentResponse" facadeClass:v38 dataClass:v37 type:@"sirikit.intent.voice_commands.RunVoiceCommandIntentResponse" isPrivate:0 slotsByName:v11];
  v52[1] = v12;
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v52 count:2];

  v14 = [v13 count];
  v15 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:v14];
  v16 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:v14];
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  v17 = v13;
  v18 = [v17 countByEnumeratingWithState:&v45 objects:v49 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v46;
    do
    {
      for (i = 0; i != v19; ++i)
      {
        if (*v46 != v20)
        {
          objc_enumerationMutation(v17);
        }

        v22 = *(*(&v45 + 1) + 8 * i);
        v23 = [v22 name];
        [v15 setObject:v22 forKey:v23];

        v24 = [v22 type];
        [v16 setObject:v22 forKey:v24];
      }

      v19 = [v17 countByEnumeratingWithState:&v45 objects:v49 count:16];
    }

    while (v19);
  }

  v25 = [v15 copy];
  v26 = sVoiceCommandsDomain_intentResponseDescsByName;
  sVoiceCommandsDomain_intentResponseDescsByName = v25;

  v27 = [v16 copy];
  v28 = sVoiceCommandsDomain_intentResponseDescsByType;
  sVoiceCommandsDomain_intentResponseDescsByType = v27;

  v29 = *MEMORY[0x1E69E9840];
}

@end