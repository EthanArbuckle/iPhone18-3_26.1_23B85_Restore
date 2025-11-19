@interface INWorkflowDomainLoadIntentResponseDescriptionIfNeeded
@end

@implementation INWorkflowDomainLoadIntentResponseDescriptionIfNeeded

void ___INWorkflowDomainLoadIntentResponseDescriptionIfNeeded_block_invoke()
{
  v36[1] = *MEMORY[0x1E69E9840];
  v28 = [INIntentResponseDescription alloc];
  v27 = objc_opt_class();
  v26 = objc_opt_class();
  v29 = [[INIntentSlotDescription alloc] initWithName:@"underlyingIntent" tag:1 facadePropertyName:@"underlyingIntent" dataPropertyName:@"underlyingIntent" isExtended:0 isPrivate:0 valueType:197 valueStyle:1 defaultValueSelectorStrings:0 provideOptionsSelectorStrings:0 resolutionResultClass:0 resolveSelectors:0];
  v35[0] = v29;
  v0 = [[INIntentSlotDescription alloc] initWithName:@"underlyingIntentResponse" tag:2 facadePropertyName:@"underlyingIntentResponse" dataPropertyName:@"underlyingIntentResponse" isExtended:0 isPrivate:0 valueType:197 valueStyle:1 defaultValueSelectorStrings:0 provideOptionsSelectorStrings:0 resolutionResultClass:0 resolveSelectors:0];
  v35[1] = v0;
  v1 = [[INIntentSlotDescription alloc] initWithName:@"utterance" tag:3 facadePropertyName:@"utterance" dataPropertyName:@"utterance" isExtended:0 isPrivate:0 valueType:7 valueStyle:1 defaultValueSelectorStrings:0 provideOptionsSelectorStrings:0 resolutionResultClass:0 resolveSelectors:0];
  v35[2] = v1;
  v2 = [[INIntentSlotDescription alloc] initWithName:@"waitingForResume" tag:4 facadePropertyName:@"waitingForResume" dataPropertyName:@"waitingForResume" isExtended:0 isPrivate:0 valueType:1 valueStyle:1 defaultValueSelectorStrings:0 provideOptionsSelectorStrings:0 resolutionResultClass:0 resolveSelectors:0];
  v35[3] = v2;
  v3 = [[INIntentSlotDescription alloc] initWithName:@"continueRunning" tag:5 facadePropertyName:@"continueRunning" dataPropertyName:@"continueRunning" isExtended:0 isPrivate:0 valueType:1 valueStyle:1 defaultValueSelectorStrings:0 provideOptionsSelectorStrings:0 resolutionResultClass:0 resolveSelectors:0];
  v35[4] = v3;
  v4 = [[INIntentSlotDescription alloc] initWithName:@"step" tag:6 facadePropertyName:@"steps" dataPropertyName:@"steps" isExtended:0 isPrivate:0 valueType:199 valueStyle:3 defaultValueSelectorStrings:0 provideOptionsSelectorStrings:0 resolutionResultClass:0 resolveSelectors:0];
  v35[5] = v4;
  v5 = [[INIntentSlotDescription alloc] initWithName:@"requestsIntentExecution" tag:7 facadePropertyName:@"requestsIntentExecution" dataPropertyName:@"requestsIntentExecution" isExtended:0 isPrivate:0 valueType:1 valueStyle:1 defaultValueSelectorStrings:0 provideOptionsSelectorStrings:0 resolutionResultClass:0 resolveSelectors:0];
  v35[6] = v5;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v35 count:7];
  v7 = _INIntentSchemaBuildIntentSlotDescriptionMap(v6);
  v8 = [(INIntentResponseDescription *)v28 initWithName:@"RunWorkflowIntentResponse" facadeClass:v27 dataClass:v26 type:@"sirikit.intent.workflow.RunWorkflowIntentResponse" isPrivate:0 slotsByName:v7];
  v36[0] = v8;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v36 count:1];

  v10 = [v9 count];
  v11 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:v10];
  v12 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:v10];
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v13 = v9;
  v14 = [v13 countByEnumeratingWithState:&v30 objects:v34 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v31;
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v31 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = *(*(&v30 + 1) + 8 * i);
        v19 = [v18 name];
        [v11 setObject:v18 forKey:v19];

        v20 = [v18 type];
        [v12 setObject:v18 forKey:v20];
      }

      v15 = [v13 countByEnumeratingWithState:&v30 objects:v34 count:16];
    }

    while (v15);
  }

  v21 = [v11 copy];
  v22 = sWorkflowDomain_intentResponseDescsByName;
  sWorkflowDomain_intentResponseDescsByName = v21;

  v23 = [v12 copy];
  v24 = sWorkflowDomain_intentResponseDescsByType;
  sWorkflowDomain_intentResponseDescsByType = v23;

  v25 = *MEMORY[0x1E69E9840];
}

@end