@interface INCalendarEventDomainLoadIntentResponseDescriptionIfNeeded
@end

@implementation INCalendarEventDomainLoadIntentResponseDescriptionIfNeeded

void ___INCalendarEventDomainLoadIntentResponseDescriptionIfNeeded_block_invoke()
{
  v58[4] = *MEMORY[0x1E69E9840];
  v0 = [INIntentResponseDescription alloc];
  v1 = objc_opt_class();
  v2 = objc_opt_class();
  v48 = [[INIntentSlotDescription alloc] initWithName:@"createdEvent" tag:1 facadePropertyName:@"createdEvent" dataPropertyName:@"createdEvent" isExtended:0 isPrivate:0 valueType:239 valueStyle:1 defaultValueSelectorStrings:0 provideOptionsSelectorStrings:0 resolutionResultClass:0 resolveSelectors:0];
  v57[0] = v48;
  v47 = [[INIntentSlotDescription alloc] initWithName:@"conflictingEventIdentifiers" tag:2 facadePropertyName:@"conflictingEventIdentifiers" dataPropertyName:@"conflictingEventIdentifiers" isExtended:0 isPrivate:0 valueType:7 valueStyle:3 defaultValueSelectorStrings:0 provideOptionsSelectorStrings:0 resolutionResultClass:0 resolveSelectors:0];
  v57[1] = v47;
  v46 = [[INIntentSlotDescription alloc] initWithName:@"confirmationReason" tag:3 facadePropertyName:@"confirmationReason" dataPropertyName:@"confirmationReason" isExtended:0 isPrivate:0 valueType:242 valueStyle:1 defaultValueSelectorStrings:0 provideOptionsSelectorStrings:0 resolutionResultClass:0 resolveSelectors:0];
  v57[2] = v46;
  v45 = [MEMORY[0x1E695DEC8] arrayWithObjects:v57 count:3];
  v44 = _INIntentSchemaBuildIntentSlotDescriptionMap(v45);
  v43 = [(INIntentResponseDescription *)v0 initWithName:@"CreateEventIntentResponse" facadeClass:v1 dataClass:v2 type:@"sirikit.intent.calendar.CreateEventIntentResponse" isPrivate:0 slotsByName:v44];
  v58[0] = v43;
  v3 = [INIntentResponseDescription alloc];
  v4 = objc_opt_class();
  v5 = objc_opt_class();
  v42 = [[INIntentSlotDescription alloc] initWithName:@"confirmationReason" tag:3 facadePropertyName:@"confirmationReason" dataPropertyName:@"confirmationReason" isExtended:0 isPrivate:0 valueType:244 valueStyle:1 defaultValueSelectorStrings:0 provideOptionsSelectorStrings:0 resolutionResultClass:0 resolveSelectors:0];
  v56 = v42;
  v41 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v56 count:1];
  v40 = _INIntentSchemaBuildIntentSlotDescriptionMap(v41);
  v39 = [(INIntentResponseDescription *)v3 initWithName:@"DeleteEventIntentResponse" facadeClass:v4 dataClass:v5 type:@"sirikit.intent.calendar.DeleteEventIntentResponse" isPrivate:0 slotsByName:v40];
  v58[1] = v39;
  v6 = [INIntentResponseDescription alloc];
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v38 = [[INIntentSlotDescription alloc] initWithName:@"events" tag:1 facadePropertyName:@"events" dataPropertyName:@"events" isExtended:0 isPrivate:0 valueType:239 valueStyle:3 defaultValueSelectorStrings:0 provideOptionsSelectorStrings:0 resolutionResultClass:0 resolveSelectors:0];
  v55 = v38;
  v37 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v55 count:1];
  v36 = _INIntentSchemaBuildIntentSlotDescriptionMap(v37);
  v9 = [(INIntentResponseDescription *)v6 initWithName:@"FindEventsIntentResponse" facadeClass:v7 dataClass:v8 type:@"sirikit.intent.calendar.FindEventsIntentResponse" isPrivate:0 slotsByName:v36];
  v58[2] = v9;
  v10 = [INIntentResponseDescription alloc];
  v11 = objc_opt_class();
  v12 = objc_opt_class();
  v13 = [[INIntentSlotDescription alloc] initWithName:@"updatedEvent" tag:1 facadePropertyName:@"updatedEvent" dataPropertyName:@"updatedEvent" isExtended:0 isPrivate:0 valueType:239 valueStyle:1 defaultValueSelectorStrings:0 provideOptionsSelectorStrings:0 resolutionResultClass:0 resolveSelectors:0];
  v54[0] = v13;
  v14 = [[INIntentSlotDescription alloc] initWithName:@"conflictingEventIdentifiers" tag:2 facadePropertyName:@"conflictingEventIdentifiers" dataPropertyName:@"conflictingEventIdentifiers" isExtended:0 isPrivate:0 valueType:7 valueStyle:3 defaultValueSelectorStrings:0 provideOptionsSelectorStrings:0 resolutionResultClass:0 resolveSelectors:0];
  v54[1] = v14;
  v15 = [[INIntentSlotDescription alloc] initWithName:@"confirmationReason" tag:3 facadePropertyName:@"confirmationReason" dataPropertyName:@"confirmationReason" isExtended:0 isPrivate:0 valueType:243 valueStyle:1 defaultValueSelectorStrings:0 provideOptionsSelectorStrings:0 resolutionResultClass:0 resolveSelectors:0];
  v54[2] = v15;
  v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v54 count:3];
  v17 = _INIntentSchemaBuildIntentSlotDescriptionMap(v16);
  v18 = [(INIntentResponseDescription *)v10 initWithName:@"UpdateEventIntentResponse" facadeClass:v11 dataClass:v12 type:@"sirikit.intent.calendar.UpdateEventIntentResponse" isPrivate:0 slotsByName:v17];
  v58[3] = v18;
  v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:v58 count:4];

  v20 = [v19 count];
  v21 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:v20];
  v22 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:v20];
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  v23 = v19;
  v24 = [v23 countByEnumeratingWithState:&v49 objects:v53 count:16];
  if (v24)
  {
    v25 = v24;
    v26 = *v50;
    do
    {
      for (i = 0; i != v25; ++i)
      {
        if (*v50 != v26)
        {
          objc_enumerationMutation(v23);
        }

        v28 = *(*(&v49 + 1) + 8 * i);
        v29 = [v28 name];
        [v21 setObject:v28 forKey:v29];

        v30 = [v28 type];
        [v22 setObject:v28 forKey:v30];
      }

      v25 = [v23 countByEnumeratingWithState:&v49 objects:v53 count:16];
    }

    while (v25);
  }

  v31 = [v21 copy];
  v32 = sCalendarEventDomain_intentResponseDescsByName;
  sCalendarEventDomain_intentResponseDescsByName = v31;

  v33 = [v22 copy];
  v34 = sCalendarEventDomain_intentResponseDescsByType;
  sCalendarEventDomain_intentResponseDescsByType = v33;

  v35 = *MEMORY[0x1E69E9840];
}

@end