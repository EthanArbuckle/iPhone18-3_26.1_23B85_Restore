@interface INVoiceCommandsDomainLoadIntentDescriptionIfNeeded
@end

@implementation INVoiceCommandsDomainLoadIntentDescriptionIfNeeded

void ___INVoiceCommandsDomainLoadIntentDescriptionIfNeeded_block_invoke()
{
  v42[2] = *MEMORY[0x1E69E9840];
  v0 = [INIntentDescription alloc];
  v1 = objc_opt_class();
  v2 = objc_opt_class();
  v34 = [[INIntentSlotDescription alloc] initWithName:@"originDevice" tag:2 facadePropertyName:@"originDevice" dataPropertyName:@"originDevice" isExtended:0 isPrivate:0 valueType:203 valueStyle:1 defaultValueSelectorStrings:0 provideOptionsSelectorStrings:0 resolutionResultClass:0 resolveSelectors:0];
  v41[0] = v34;
  v33 = [[INIntentSlotDescription alloc] initWithName:@"appTitle" tag:3 facadePropertyName:@"appTitles" dataPropertyName:@"appTitles" isExtended:0 isPrivate:0 valueType:202 valueStyle:3 defaultValueSelectorStrings:&unk_1F02DB4A8 provideOptionsSelectorStrings:&unk_1F02DB4C0 resolutionResultClass:objc_opt_class() resolveSelectors:sel_resolveAppTitlesForListShortcuts_withCompletion_, sel_resolveAppTitlesForListShortcuts_completion_, 0];
  v41[1] = v33;
  v32 = [MEMORY[0x1E695DEC8] arrayWithObjects:v41 count:2];
  v31 = _INIntentSchemaBuildIntentSlotDescriptionMap(v32);
  v3 = [(INIntentDescription *)v0 initWithName:@"ListShortcutsIntent" responseName:@"ListShortcutsIntentResponse" facadeClass:v1 dataClass:v2 type:@"sirikit.intent.voice_commands.ListShortcutsIntent" isPrivate:0 handleSelector:sel_handleListShortcuts_completion_ confirmSelector:sel_confirmListShortcuts_completion_ slotsByName:v31];
  v42[0] = v3;
  v30 = [INIntentDescription alloc];
  v29 = objc_opt_class();
  v28 = objc_opt_class();
  v4 = [[INIntentSlotDescription alloc] initWithName:@"voiceCommand" tag:2 facadePropertyName:@"voiceCommand" dataPropertyName:@"voiceCommand" isExtended:0 isPrivate:0 valueType:12 valueStyle:1 defaultValueSelectorStrings:&unk_1F02DB4D8 provideOptionsSelectorStrings:&unk_1F02DB4F0 resolutionResultClass:objc_opt_class() resolveSelectors:sel_resolveVoiceCommandForRunVoiceCommand_withCompletion_, sel_resolveVoiceCommandForRunVoiceCommand_completion_, 0];
  v40[0] = v4;
  v5 = [[INIntentSlotDescription alloc] initWithName:@"originDevice" tag:3 facadePropertyName:@"originDevice" dataPropertyName:@"originDevice" isExtended:0 isPrivate:0 valueType:198 valueStyle:1 defaultValueSelectorStrings:0 provideOptionsSelectorStrings:0 resolutionResultClass:0 resolveSelectors:0];
  v40[1] = v5;
  v6 = [[INIntentSlotDescription alloc] initWithName:@"executionResult" tag:4 facadePropertyName:@"executionResult" dataPropertyName:@"executionResult" isExtended:0 isPrivate:0 valueType:200 valueStyle:1 defaultValueSelectorStrings:&unk_1F02DB508 provideOptionsSelectorStrings:&unk_1F02DB520 resolutionResultClass:objc_opt_class() resolveSelectors:sel_resolveExecutionResultForRunVoiceCommand_withCompletion_, sel_resolveExecutionResultForRunVoiceCommand_completion_, 0];
  v40[2] = v6;
  v7 = [[INIntentSlotDescription alloc] initWithName:@"previousIntentIdentifier" tag:5 facadePropertyName:@"previousIntentIdentifier" dataPropertyName:@"previousIntentIdentifier" isExtended:0 isPrivate:0 valueType:7 valueStyle:1 defaultValueSelectorStrings:0 provideOptionsSelectorStrings:0 resolutionResultClass:0 resolveSelectors:0];
  v40[3] = v7;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v40 count:4];
  v9 = _INIntentSchemaBuildIntentSlotDescriptionMap(v8);
  v10 = [(INIntentDescription *)v30 initWithName:@"RunVoiceCommandIntent" responseName:@"RunVoiceCommandIntentResponse" facadeClass:v29 dataClass:v28 type:@"sirikit.intent.voice_commands.RunVoiceCommandIntent" isPrivate:0 handleSelector:sel_handleRunVoiceCommand_completion_ confirmSelector:sel_confirmRunVoiceCommand_completion_ slotsByName:v9];
  v42[1] = v10;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v42 count:2];

  v12 = [v11 count];
  v13 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:v12];
  v14 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:v12];
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v15 = v11;
  v16 = [v15 countByEnumeratingWithState:&v35 objects:v39 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v36;
    do
    {
      for (i = 0; i != v17; ++i)
      {
        if (*v36 != v18)
        {
          objc_enumerationMutation(v15);
        }

        v20 = *(*(&v35 + 1) + 8 * i);
        v21 = [v20 name];
        [v13 setObject:v20 forKey:v21];

        v22 = [v20 type];
        [v14 setObject:v20 forKey:v22];
      }

      v17 = [v15 countByEnumeratingWithState:&v35 objects:v39 count:16];
    }

    while (v17);
  }

  v23 = [v13 copy];
  v24 = sVoiceCommandsDomain_intentDescsByName;
  sVoiceCommandsDomain_intentDescsByName = v23;

  v25 = [v14 copy];
  v26 = sVoiceCommandsDomain_intentDescsByType;
  sVoiceCommandsDomain_intentDescsByType = v25;

  v27 = *MEMORY[0x1E69E9840];
}

@end