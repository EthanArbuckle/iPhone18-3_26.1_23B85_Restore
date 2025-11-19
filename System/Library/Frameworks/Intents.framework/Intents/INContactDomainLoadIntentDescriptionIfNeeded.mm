@interface INContactDomainLoadIntentDescriptionIfNeeded
@end

@implementation INContactDomainLoadIntentDescriptionIfNeeded

void ___INContactDomainLoadIntentDescriptionIfNeeded_block_invoke()
{
  v52[4] = *MEMORY[0x1E69E9840];
  v0 = [INIntentDescription alloc];
  v1 = objc_opt_class();
  v2 = objc_opt_class();
  v43 = [[INIntentSlotDescription alloc] initWithName:@"contactIdentifiers" tag:2 facadePropertyName:@"contactIdentifiers" dataPropertyName:@"contactIdentifiers" isExtended:0 isPrivate:0 valueType:30 valueStyle:3 defaultValueSelectorStrings:&unk_1F02D9408 provideOptionsSelectorStrings:&unk_1F02D9420 resolutionResultClass:objc_opt_class() resolveSelectors:sel_resolveContactIdentifiersForSearchForContact_withCompletion_, sel_resolveContactIdentifiersForSearchForContact_completion_, 0];
  v51 = v43;
  v42 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v51 count:1];
  v41 = _INIntentSchemaBuildIntentSlotDescriptionMap(v42);
  v40 = [(INIntentDescription *)v0 initWithName:@"SearchForContactIntent" responseName:@"SearchForContactIntentResponse" facadeClass:v1 dataClass:v2 type:@"sirikit.intent.contact.SearchForContactIntent" isPrivate:0 handleSelector:sel_handleSearchForContact_completion_ confirmSelector:sel_confirmSearchForContact_completion_ slotsByName:v41];
  v52[0] = v40;
  v3 = [INIntentDescription alloc];
  v4 = objc_opt_class();
  v5 = objc_opt_class();
  v39 = _INIntentSchemaBuildIntentSlotDescriptionMap(MEMORY[0x1E695E0F0]);
  v38 = [(INIntentDescription *)v3 initWithName:@"SearchForMeCardIntent" responseName:@"SearchForMeCardIntentResponse" facadeClass:v4 dataClass:v5 type:@"sirikit.intent.contact.SearchForMeCardIntent" isPrivate:0 handleSelector:sel_handleSearchForMeCard_completion_ confirmSelector:sel_confirmSearchForMeCard_completion_ slotsByName:v39];
  v52[1] = v38;
  v6 = [INIntentDescription alloc];
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v37 = [[INIntentSlotDescription alloc] initWithName:@"targetNickname" tag:2 facadePropertyName:@"targetNickname" dataPropertyName:@"targetNickname" isExtended:0 isPrivate:0 valueType:194 valueStyle:1 defaultValueSelectorStrings:&unk_1F02D9438 provideOptionsSelectorStrings:&unk_1F02D9450 resolutionResultClass:objc_opt_class() resolveSelectors:sel_resolveTargetNicknameForSetNickname_withCompletion_, sel_resolveTargetNicknameForSetNickname_completion_, 0];
  v50 = v37;
  v36 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v50 count:1];
  v35 = _INIntentSchemaBuildIntentSlotDescriptionMap(v36);
  v9 = [(INIntentDescription *)v6 initWithName:@"SetNicknameIntent" responseName:@"SetNicknameIntentResponse" facadeClass:v7 dataClass:v8 type:@"sirikit.intent.contact.SetNicknameIntent" isPrivate:0 handleSelector:sel_handleSetNickname_completion_ confirmSelector:sel_confirmSetNickname_completion_ slotsByName:v35];
  v52[2] = v9;
  v34 = [INIntentDescription alloc];
  v10 = objc_opt_class();
  v11 = objc_opt_class();
  v12 = [[INIntentSlotDescription alloc] initWithName:@"contactIdentifiers" tag:2 facadePropertyName:@"contactIdentifiers" dataPropertyName:@"contactIdentifiers" isExtended:0 isPrivate:0 valueType:30 valueStyle:3 defaultValueSelectorStrings:&unk_1F02D9468 provideOptionsSelectorStrings:&unk_1F02D9480 resolutionResultClass:objc_opt_class() resolveSelectors:sel_resolveContactIdentifiersForSetRelationship_withCompletion_, sel_resolveContactIdentifiersForSetRelationship_completion_, 0];
  v49[0] = v12;
  v13 = [[INIntentSlotDescription alloc] initWithName:@"targetRelationship" tag:3 facadePropertyName:@"targetRelationship" dataPropertyName:@"targetRelationship" isExtended:0 isPrivate:0 valueType:193 valueStyle:1 defaultValueSelectorStrings:&unk_1F02D9498 provideOptionsSelectorStrings:&unk_1F02D94B0 resolutionResultClass:objc_opt_class() resolveSelectors:sel_resolveTargetRelationshipForSetRelationship_withCompletion_, sel_resolveTargetRelationshipForSetRelationship_completion_, 0];
  v49[1] = v13;
  v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v49 count:2];
  v15 = _INIntentSchemaBuildIntentSlotDescriptionMap(v14);
  v16 = [(INIntentDescription *)v34 initWithName:@"SetRelationshipIntent" responseName:@"SetRelationshipIntentResponse" facadeClass:v10 dataClass:v11 type:@"sirikit.intent.contact.SetRelationshipIntent" isPrivate:0 handleSelector:sel_handleSetRelationship_completion_ confirmSelector:sel_confirmSetRelationship_completion_ slotsByName:v15];
  v52[3] = v16;
  v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v52 count:4];

  v18 = [v17 count];
  v19 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:v18];
  v20 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:v18];
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  v21 = v17;
  v22 = [v21 countByEnumeratingWithState:&v44 objects:v48 count:16];
  if (v22)
  {
    v23 = v22;
    v24 = *v45;
    do
    {
      for (i = 0; i != v23; ++i)
      {
        if (*v45 != v24)
        {
          objc_enumerationMutation(v21);
        }

        v26 = *(*(&v44 + 1) + 8 * i);
        v27 = [v26 name];
        [v19 setObject:v26 forKey:v27];

        v28 = [v26 type];
        [v20 setObject:v26 forKey:v28];
      }

      v23 = [v21 countByEnumeratingWithState:&v44 objects:v48 count:16];
    }

    while (v23);
  }

  v29 = [v19 copy];
  v30 = sContactDomain_intentDescsByName;
  sContactDomain_intentDescsByName = v29;

  v31 = [v20 copy];
  v32 = sContactDomain_intentDescsByType;
  sContactDomain_intentDescsByType = v31;

  v33 = *MEMORY[0x1E69E9840];
}

@end