@interface INContactDomainLoadIntentResponseDescriptionIfNeeded
@end

@implementation INContactDomainLoadIntentResponseDescriptionIfNeeded

void ___INContactDomainLoadIntentResponseDescriptionIfNeeded_block_invoke()
{
  v54[4] = *MEMORY[0x1E69E9840];
  v0 = [INIntentResponseDescription alloc];
  v1 = objc_opt_class();
  v2 = objc_opt_class();
  v44 = [[INIntentSlotDescription alloc] initWithName:@"matchedContacts" tag:1 facadePropertyName:@"matchedContacts" dataPropertyName:@"matchedContacts" isExtended:0 isPrivate:0 valueType:195 valueStyle:3 defaultValueSelectorStrings:0 provideOptionsSelectorStrings:0 resolutionResultClass:0 resolveSelectors:0];
  v53 = v44;
  v43 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v53 count:1];
  v42 = _INIntentSchemaBuildIntentSlotDescriptionMap(v43);
  v41 = [(INIntentResponseDescription *)v0 initWithName:@"SearchForContactIntentResponse" facadeClass:v1 dataClass:v2 type:@"sirikit.intent.contact.SearchForContactIntentResponse" isPrivate:0 slotsByName:v42];
  v54[0] = v41;
  v3 = [INIntentResponseDescription alloc];
  v4 = objc_opt_class();
  v5 = objc_opt_class();
  v40 = [[INIntentSlotDescription alloc] initWithName:@"meCard" tag:1 facadePropertyName:@"meCard" dataPropertyName:@"meCard" isExtended:0 isPrivate:0 valueType:195 valueStyle:1 defaultValueSelectorStrings:0 provideOptionsSelectorStrings:0 resolutionResultClass:0 resolveSelectors:0];
  v52 = v40;
  v39 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v52 count:1];
  v38 = _INIntentSchemaBuildIntentSlotDescriptionMap(v39);
  v37 = [(INIntentResponseDescription *)v3 initWithName:@"SearchForMeCardIntentResponse" facadeClass:v4 dataClass:v5 type:@"sirikit.intent.contact.SearchForMeCardIntentResponse" isPrivate:0 slotsByName:v38];
  v54[1] = v37;
  v6 = [INIntentResponseDescription alloc];
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v36 = [[INIntentSlotDescription alloc] initWithName:@"meCard" tag:1 facadePropertyName:@"meCard" dataPropertyName:@"meCard" isExtended:0 isPrivate:0 valueType:195 valueStyle:1 defaultValueSelectorStrings:0 provideOptionsSelectorStrings:0 resolutionResultClass:0 resolveSelectors:0];
  v51 = v36;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v51 count:1];
  v10 = _INIntentSchemaBuildIntentSlotDescriptionMap(v9);
  v11 = [(INIntentResponseDescription *)v6 initWithName:@"SetNicknameIntentResponse" facadeClass:v7 dataClass:v8 type:@"sirikit.intent.contact.SetNicknameIntentResponse" isPrivate:0 slotsByName:v10];
  v54[2] = v11;
  v12 = [INIntentResponseDescription alloc];
  v13 = objc_opt_class();
  v14 = objc_opt_class();
  v15 = [[INIntentSlotDescription alloc] initWithName:@"meCard" tag:1 facadePropertyName:@"meCard" dataPropertyName:@"meCard" isExtended:0 isPrivate:0 valueType:195 valueStyle:1 defaultValueSelectorStrings:0 provideOptionsSelectorStrings:0 resolutionResultClass:0 resolveSelectors:0];
  v50 = v15;
  v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v50 count:1];
  v17 = _INIntentSchemaBuildIntentSlotDescriptionMap(v16);
  v18 = [(INIntentResponseDescription *)v12 initWithName:@"SetRelationshipIntentResponse" facadeClass:v13 dataClass:v14 type:@"sirikit.intent.contact.SetRelationshipIntentResponse" isPrivate:0 slotsByName:v17];
  v54[3] = v18;
  v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:v54 count:4];

  v20 = [v19 count];
  v21 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:v20];
  v22 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:v20];
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  v23 = v19;
  v24 = [v23 countByEnumeratingWithState:&v45 objects:v49 count:16];
  if (v24)
  {
    v25 = v24;
    v26 = *v46;
    do
    {
      for (i = 0; i != v25; ++i)
      {
        if (*v46 != v26)
        {
          objc_enumerationMutation(v23);
        }

        v28 = *(*(&v45 + 1) + 8 * i);
        v29 = [v28 name];
        [v21 setObject:v28 forKey:v29];

        v30 = [v28 type];
        [v22 setObject:v28 forKey:v30];
      }

      v25 = [v23 countByEnumeratingWithState:&v45 objects:v49 count:16];
    }

    while (v25);
  }

  v31 = [v21 copy];
  v32 = sContactDomain_intentResponseDescsByName;
  sContactDomain_intentResponseDescsByName = v31;

  v33 = [v22 copy];
  v34 = sContactDomain_intentResponseDescsByType;
  sContactDomain_intentResponseDescsByType = v33;

  v35 = *MEMORY[0x1E69E9840];
}

@end