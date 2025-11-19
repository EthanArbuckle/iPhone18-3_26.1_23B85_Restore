@interface INHomeCommunicationDomainLoadIntentResponseDescriptionIfNeeded
@end

@implementation INHomeCommunicationDomainLoadIntentResponseDescriptionIfNeeded

void ___INHomeCommunicationDomainLoadIntentResponseDescriptionIfNeeded_block_invoke()
{
  v57[5] = *MEMORY[0x1E69E9840];
  v0 = [INIntentResponseDescription alloc];
  v1 = objc_opt_class();
  v2 = objc_opt_class();
  v3 = MEMORY[0x1E695E0F0];
  v48 = _INIntentSchemaBuildIntentSlotDescriptionMap(MEMORY[0x1E695E0F0]);
  v47 = [(INIntentResponseDescription *)v0 initWithName:@"PlayAnnouncementSoundIntentResponse" facadeClass:v1 dataClass:v2 type:@"sirikit.intent.home.communication.PlayAnnouncementSoundIntentResponse" isPrivate:0 slotsByName:v48];
  v57[0] = v47;
  v4 = [INIntentResponseDescription alloc];
  v5 = objc_opt_class();
  v6 = objc_opt_class();
  v46 = [[INIntentSlotDescription alloc] initWithName:@"announcementRecords" tag:1 facadePropertyName:@"announcementRecords" dataPropertyName:@"announcementRecords" isExtended:0 isPrivate:0 valueType:94 valueStyle:3 defaultValueSelectorStrings:0 provideOptionsSelectorStrings:0 resolutionResultClass:0 resolveSelectors:0];
  v56 = v46;
  v45 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v56 count:1];
  v44 = _INIntentSchemaBuildIntentSlotDescriptionMap(v45);
  v43 = [(INIntentResponseDescription *)v4 initWithName:@"ReadAnnouncementIntentResponse" facadeClass:v5 dataClass:v6 type:@"sirikit.intent.home.communication.ReadAnnouncementIntentResponse" isPrivate:0 slotsByName:v44];
  v57[1] = v43;
  v7 = [INIntentResponseDescription alloc];
  v8 = objc_opt_class();
  v9 = objc_opt_class();
  v42 = [[INIntentSlotDescription alloc] initWithName:@"sentAnnouncements" tag:1 facadePropertyName:@"sentAnnouncements" dataPropertyName:@"sentAnnouncements" isExtended:0 isPrivate:0 valueType:94 valueStyle:3 defaultValueSelectorStrings:0 provideOptionsSelectorStrings:0 resolutionResultClass:0 resolveSelectors:0];
  v55 = v42;
  v41 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v55 count:1];
  v40 = _INIntentSchemaBuildIntentSlotDescriptionMap(v41);
  v10 = [(INIntentResponseDescription *)v7 initWithName:@"SendAnnouncementIntentResponse" facadeClass:v8 dataClass:v9 type:@"sirikit.intent.home.communication.SendAnnouncementIntentResponse" isPrivate:0 slotsByName:v40];
  v57[2] = v10;
  v11 = [INIntentResponseDescription alloc];
  v12 = objc_opt_class();
  v13 = objc_opt_class();
  v14 = _INIntentSchemaBuildIntentSlotDescriptionMap(v3);
  v15 = [(INIntentResponseDescription *)v11 initWithName:@"SkipAnnouncementIntentResponse" facadeClass:v12 dataClass:v13 type:@"sirikit.intent.home.communication.SkipAnnouncementIntentResponse" isPrivate:0 slotsByName:v14];
  v57[3] = v15;
  v16 = [INIntentResponseDescription alloc];
  v17 = objc_opt_class();
  v18 = objc_opt_class();
  v19 = [[INIntentSlotDescription alloc] initWithName:@"stoppedAnnouncementRecords" tag:1 facadePropertyName:@"stoppedAnnouncementRecords" dataPropertyName:@"stoppedAnnouncementRecords" isExtended:0 isPrivate:0 valueType:94 valueStyle:3 defaultValueSelectorStrings:0 provideOptionsSelectorStrings:0 resolutionResultClass:0 resolveSelectors:0];
  v54 = v19;
  v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v54 count:1];
  v21 = _INIntentSchemaBuildIntentSlotDescriptionMap(v20);
  v22 = [(INIntentResponseDescription *)v16 initWithName:@"StopAnnouncementIntentResponse" facadeClass:v17 dataClass:v18 type:@"sirikit.intent.home.communication.StopAnnouncementIntentResponse" isPrivate:0 slotsByName:v21];
  v57[4] = v22;
  v23 = [MEMORY[0x1E695DEC8] arrayWithObjects:v57 count:5];

  v24 = [v23 count];
  v25 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:v24];
  v26 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:v24];
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  v27 = v23;
  v28 = [v27 countByEnumeratingWithState:&v49 objects:v53 count:16];
  if (v28)
  {
    v29 = v28;
    v30 = *v50;
    do
    {
      for (i = 0; i != v29; ++i)
      {
        if (*v50 != v30)
        {
          objc_enumerationMutation(v27);
        }

        v32 = *(*(&v49 + 1) + 8 * i);
        v33 = [v32 name];
        [v25 setObject:v32 forKey:v33];

        v34 = [v32 type];
        [v26 setObject:v32 forKey:v34];
      }

      v29 = [v27 countByEnumeratingWithState:&v49 objects:v53 count:16];
    }

    while (v29);
  }

  v35 = [v25 copy];
  v36 = sHomeCommunicationDomain_intentResponseDescsByName;
  sHomeCommunicationDomain_intentResponseDescsByName = v35;

  v37 = [v26 copy];
  v38 = sHomeCommunicationDomain_intentResponseDescsByType;
  sHomeCommunicationDomain_intentResponseDescsByType = v37;

  v39 = *MEMORY[0x1E69E9840];
}

@end