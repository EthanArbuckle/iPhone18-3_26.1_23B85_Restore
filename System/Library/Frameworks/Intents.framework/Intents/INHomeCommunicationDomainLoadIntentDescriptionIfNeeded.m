@interface INHomeCommunicationDomainLoadIntentDescriptionIfNeeded
@end

@implementation INHomeCommunicationDomainLoadIntentDescriptionIfNeeded

void ___INHomeCommunicationDomainLoadIntentDescriptionIfNeeded_block_invoke()
{
  v62[5] = *MEMORY[0x1E69E9840];
  v0 = [INIntentDescription alloc];
  v1 = objc_opt_class();
  v2 = objc_opt_class();
  v53 = [[INIntentSlotDescription alloc] initWithName:@"soundType" tag:2 facadePropertyName:@"soundType" dataPropertyName:@"soundType" isExtended:0 isPrivate:0 valueType:95 valueStyle:1 defaultValueSelectorStrings:0 provideOptionsSelectorStrings:0 resolutionResultClass:0 resolveSelectors:0];
  v61 = v53;
  v52 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v61 count:1];
  v51 = _INIntentSchemaBuildIntentSlotDescriptionMap(v52);
  v50 = [(INIntentDescription *)v0 initWithName:@"PlayAnnouncementSoundIntent" responseName:@"PlayAnnouncementSoundIntentResponse" facadeClass:v1 dataClass:v2 type:@"sirikit.intent.home.communication.PlayAnnouncementSoundIntent" isPrivate:0 handleSelector:sel_handlePlayAnnouncementSound_completion_ confirmSelector:sel_confirmPlayAnnouncementSound_completion_ slotsByName:v51];
  v62[0] = v50;
  v3 = [INIntentDescription alloc];
  v4 = objc_opt_class();
  v5 = objc_opt_class();
  v49 = [[INIntentSlotDescription alloc] initWithName:@"readType" tag:2 facadePropertyName:@"readType" dataPropertyName:@"readType" isExtended:0 isPrivate:0 valueType:96 valueStyle:1 defaultValueSelectorStrings:0 provideOptionsSelectorStrings:0 resolutionResultClass:0 resolveSelectors:0];
  v60[0] = v49;
  v48 = [[INIntentSlotDescription alloc] initWithName:@"startAnnouncementIdentifier" tag:3 facadePropertyName:@"startAnnouncementIdentifier" dataPropertyName:@"startAnnouncementIdentifier" isExtended:0 isPrivate:0 valueType:7 valueStyle:1 defaultValueSelectorStrings:0 provideOptionsSelectorStrings:0 resolutionResultClass:0 resolveSelectors:0];
  v60[1] = v48;
  v47 = [[INIntentSlotDescription alloc] initWithName:@"userNotificationType" tag:4 facadePropertyName:@"userNotificationType" dataPropertyName:@"userNotificationType" isExtended:0 isPrivate:0 valueType:97 valueStyle:1 defaultValueSelectorStrings:0 provideOptionsSelectorStrings:0 resolutionResultClass:0 resolveSelectors:0];
  v60[2] = v47;
  v46 = [MEMORY[0x1E695DEC8] arrayWithObjects:v60 count:3];
  v45 = _INIntentSchemaBuildIntentSlotDescriptionMap(v46);
  v44 = [(INIntentDescription *)v3 initWithName:@"ReadAnnouncementIntent" responseName:@"ReadAnnouncementIntentResponse" facadeClass:v4 dataClass:v5 type:@"sirikit.intent.home.communication.ReadAnnouncementIntent" isPrivate:0 handleSelector:sel_handleReadAnnouncement_completion_ confirmSelector:sel_confirmReadAnnouncement_completion_ slotsByName:v45];
  v62[1] = v44;
  v6 = [INIntentDescription alloc];
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v43 = [[INIntentSlotDescription alloc] initWithName:@"announcement" tag:2 facadePropertyName:@"announcement" dataPropertyName:@"announcement" isExtended:0 isPrivate:0 valueType:93 valueStyle:1 defaultValueSelectorStrings:&unk_1F02D96A8 provideOptionsSelectorStrings:&unk_1F02D96C0 resolutionResultClass:objc_opt_class() resolveSelectors:sel_resolveAnnouncementForSendAnnouncement_withCompletion_, sel_resolveAnnouncementForSendAnnouncement_completion_, 0];
  v59[0] = v43;
  v42 = [[INIntentSlotDescription alloc] initWithName:@"recipients" tag:3 facadePropertyName:@"recipients" dataPropertyName:@"recipients" isExtended:0 isPrivate:0 valueType:49 valueStyle:3 defaultValueSelectorStrings:&unk_1F02D96D8 provideOptionsSelectorStrings:&unk_1F02D96F0 resolutionResultClass:objc_opt_class() resolveSelectors:sel_resolveRecipientsForSendAnnouncement_withCompletion_, sel_resolveRecipientsForSendAnnouncement_completion_, 0];
  v59[1] = v42;
  v41 = [[INIntentSlotDescription alloc] initWithName:@"isReply" tag:4 facadePropertyName:@"isReply" dataPropertyName:@"isReply" isExtended:0 isPrivate:0 valueType:1 valueStyle:1 defaultValueSelectorStrings:0 provideOptionsSelectorStrings:0 resolutionResultClass:0 resolveSelectors:0];
  v59[2] = v41;
  v40 = [[INIntentSlotDescription alloc] initWithName:@"sharedUserID" tag:5 facadePropertyName:@"sharedUserID" dataPropertyName:@"sharedUserID" isExtended:0 isPrivate:1 valueType:7 valueStyle:1 defaultValueSelectorStrings:0 provideOptionsSelectorStrings:0 resolutionResultClass:0 resolveSelectors:0];
  v59[3] = v40;
  v39 = [MEMORY[0x1E695DEC8] arrayWithObjects:v59 count:4];
  v9 = _INIntentSchemaBuildIntentSlotDescriptionMap(v39);
  v10 = [(INIntentDescription *)v6 initWithName:@"SendAnnouncementIntent" responseName:@"SendAnnouncementIntentResponse" facadeClass:v7 dataClass:v8 type:@"sirikit.intent.home.communication.SendAnnouncementIntent" isPrivate:0 handleSelector:sel_handleSendAnnouncement_completion_ confirmSelector:sel_confirmSendAnnouncement_completion_ slotsByName:v9];
  v62[2] = v10;
  v11 = [INIntentDescription alloc];
  v12 = objc_opt_class();
  v13 = objc_opt_class();
  v14 = MEMORY[0x1E695E0F0];
  v15 = _INIntentSchemaBuildIntentSlotDescriptionMap(MEMORY[0x1E695E0F0]);
  v16 = [(INIntentDescription *)v11 initWithName:@"SkipAnnouncementIntent" responseName:@"SkipAnnouncementIntentResponse" facadeClass:v12 dataClass:v13 type:@"sirikit.intent.home.communication.SkipAnnouncementIntent" isPrivate:0 handleSelector:sel_handleSkipAnnouncement_completion_ confirmSelector:sel_confirmSkipAnnouncement_completion_ slotsByName:v15];
  v62[3] = v16;
  v17 = [INIntentDescription alloc];
  v18 = objc_opt_class();
  v19 = objc_opt_class();
  v20 = _INIntentSchemaBuildIntentSlotDescriptionMap(v14);
  v21 = [(INIntentDescription *)v17 initWithName:@"StopAnnouncementIntent" responseName:@"StopAnnouncementIntentResponse" facadeClass:v18 dataClass:v19 type:@"sirikit.intent.home.communication.StopAnnouncementIntent" isPrivate:0 handleSelector:sel_handleStopAnnouncement_completion_ confirmSelector:sel_confirmStopAnnouncement_completion_ slotsByName:v20];
  v62[4] = v21;
  v22 = [MEMORY[0x1E695DEC8] arrayWithObjects:v62 count:5];

  v23 = [v22 count];
  v24 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:v23];
  v25 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:v23];
  v54 = 0u;
  v55 = 0u;
  v56 = 0u;
  v57 = 0u;
  v26 = v22;
  v27 = [v26 countByEnumeratingWithState:&v54 objects:v58 count:16];
  if (v27)
  {
    v28 = v27;
    v29 = *v55;
    do
    {
      for (i = 0; i != v28; ++i)
      {
        if (*v55 != v29)
        {
          objc_enumerationMutation(v26);
        }

        v31 = *(*(&v54 + 1) + 8 * i);
        v32 = [v31 name];
        [v24 setObject:v31 forKey:v32];

        v33 = [v31 type];
        [v25 setObject:v31 forKey:v33];
      }

      v28 = [v26 countByEnumeratingWithState:&v54 objects:v58 count:16];
    }

    while (v28);
  }

  v34 = [v24 copy];
  v35 = sHomeCommunicationDomain_intentDescsByName;
  sHomeCommunicationDomain_intentDescsByName = v34;

  v36 = [v25 copy];
  v37 = sHomeCommunicationDomain_intentDescsByType;
  sHomeCommunicationDomain_intentDescsByType = v36;

  v38 = *MEMORY[0x1E69E9840];
}

@end