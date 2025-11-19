@interface INCalendarEventDomainLoadIntentDescriptionIfNeeded
@end

@implementation INCalendarEventDomainLoadIntentDescriptionIfNeeded

void ___INCalendarEventDomainLoadIntentDescriptionIfNeeded_block_invoke()
{
  v69[4] = *MEMORY[0x1E69E9840];
  v52 = [INIntentDescription alloc];
  v0 = objc_opt_class();
  v1 = objc_opt_class();
  v59 = [[INIntentSlotDescription alloc] initWithName:@"title" tag:2 facadePropertyName:@"title" dataPropertyName:@"title" isExtended:0 isPrivate:0 valueType:7 valueStyle:1 defaultValueSelectorStrings:&unk_1F02D8718 provideOptionsSelectorStrings:&unk_1F02D8730 resolutionResultClass:objc_opt_class() resolveSelectors:sel_resolveTitleForCreateEvent_withCompletion_, sel_resolveTitleForCreateEvent_completion_, 0];
  v68[0] = v59;
  v58 = [[INIntentSlotDescription alloc] initWithName:@"dateTimeRange" tag:3 facadePropertyName:@"dateTimeRange" dataPropertyName:@"dateTimeRange" isExtended:0 isPrivate:0 valueType:16 valueStyle:1 defaultValueSelectorStrings:&unk_1F02D8748 provideOptionsSelectorStrings:&unk_1F02D8760 resolutionResultClass:objc_opt_class() resolveSelectors:sel_resolveDateTimeRangeForCreateEvent_withCompletion_, sel_resolveDateTimeRangeForCreateEvent_completion_, 0];
  v68[1] = v58;
  v57 = [[INIntentSlotDescription alloc] initWithName:@"participants" tag:4 facadePropertyName:@"participants" dataPropertyName:@"participants" isExtended:0 isPrivate:0 valueType:10 valueStyle:3 defaultValueSelectorStrings:&unk_1F02D8778 provideOptionsSelectorStrings:&unk_1F02D8790 resolutionResultClass:objc_opt_class() resolveSelectors:sel_resolveParticipantsForCreateEvent_withCompletion_, sel_resolveParticipantsForCreateEvent_completion_, 0];
  v68[2] = v57;
  v56 = [[INIntentSlotDescription alloc] initWithName:@"location" tag:5 facadePropertyName:@"location" dataPropertyName:@"location" isExtended:0 isPrivate:0 valueType:27 valueStyle:1 defaultValueSelectorStrings:&unk_1F02D87A8 provideOptionsSelectorStrings:&unk_1F02D87C0 resolutionResultClass:objc_opt_class() resolveSelectors:sel_resolveLocationForCreateEvent_withCompletion_, sel_resolveLocationForCreateEvent_completion_, 0];
  v68[3] = v56;
  v55 = [MEMORY[0x1E695DEC8] arrayWithObjects:v68 count:4];
  v54 = _INIntentSchemaBuildIntentSlotDescriptionMap(v55);
  v53 = [(INIntentDescription *)v52 initWithName:@"CreateEventIntent" responseName:@"CreateEventIntentResponse" facadeClass:v0 dataClass:v1 type:@"sirikit.intent.calendar.CreateEventIntent" isPrivate:0 handleSelector:sel_handleCreateEvent_completion_ confirmSelector:sel_confirmCreateEvent_completion_ slotsByName:v54];
  v69[0] = v53;
  v2 = [INIntentDescription alloc];
  v3 = objc_opt_class();
  v4 = objc_opt_class();
  v51 = [[INIntentSlotDescription alloc] initWithName:@"targetEventIdentifier" tag:2 facadePropertyName:@"targetEventIdentifier" dataPropertyName:@"targetEventIdentifier" isExtended:0 isPrivate:0 valueType:7 valueStyle:1 defaultValueSelectorStrings:&unk_1F02D87D8 provideOptionsSelectorStrings:&unk_1F02D87F0 resolutionResultClass:objc_opt_class() resolveSelectors:sel_resolveTargetEventIdentifierForDeleteEvent_withCompletion_, sel_resolveTargetEventIdentifierForDeleteEvent_completion_, 0];
  v67[0] = v51;
  v50 = [[INIntentSlotDescription alloc] initWithName:@"deleteAllOccurrences" tag:3 facadePropertyName:@"deleteAllOccurrences" dataPropertyName:@"deleteAllOccurrences" isExtended:0 isPrivate:0 valueType:1 valueStyle:1 defaultValueSelectorStrings:&unk_1F02D8808 provideOptionsSelectorStrings:&unk_1F02D8820 resolutionResultClass:objc_opt_class() resolveSelectors:sel_resolveDeleteAllOccurrencesForDeleteEvent_withCompletion_, sel_resolveDeleteAllOccurrencesForDeleteEvent_completion_, 0];
  v67[1] = v50;
  v49 = [MEMORY[0x1E695DEC8] arrayWithObjects:v67 count:2];
  v48 = _INIntentSchemaBuildIntentSlotDescriptionMap(v49);
  v47 = [(INIntentDescription *)v2 initWithName:@"DeleteEventIntent" responseName:@"DeleteEventIntentResponse" facadeClass:v3 dataClass:v4 type:@"sirikit.intent.calendar.DeleteEventIntent" isPrivate:0 handleSelector:sel_handleDeleteEvent_completion_ confirmSelector:sel_confirmDeleteEvent_completion_ slotsByName:v48];
  v69[1] = v47;
  v38 = [INIntentDescription alloc];
  v36 = objc_opt_class();
  v5 = objc_opt_class();
  v46 = [[INIntentSlotDescription alloc] initWithName:@"searchQuery" tag:2 facadePropertyName:@"searchQuery" dataPropertyName:@"searchQuery" isExtended:0 isPrivate:0 valueType:7 valueStyle:1 defaultValueSelectorStrings:&unk_1F02D8838 provideOptionsSelectorStrings:&unk_1F02D8850 resolutionResultClass:objc_opt_class() resolveSelectors:sel_resolveSearchQueryForFindEvents_withCompletion_, sel_resolveSearchQueryForFindEvents_completion_, 0];
  v66[0] = v46;
  v45 = [[INIntentSlotDescription alloc] initWithName:@"dateTimeRange" tag:3 facadePropertyName:@"dateTimeRange" dataPropertyName:@"dateTimeRange" isExtended:0 isPrivate:0 valueType:16 valueStyle:1 defaultValueSelectorStrings:&unk_1F02D8868 provideOptionsSelectorStrings:&unk_1F02D8880 resolutionResultClass:objc_opt_class() resolveSelectors:sel_resolveDateTimeRangeForFindEvents_withCompletion_, sel_resolveDateTimeRangeForFindEvents_completion_, 0];
  v66[1] = v45;
  v44 = [[INIntentSlotDescription alloc] initWithName:@"participants" tag:4 facadePropertyName:@"participants" dataPropertyName:@"participants" isExtended:0 isPrivate:0 valueType:10 valueStyle:3 defaultValueSelectorStrings:&unk_1F02D8898 provideOptionsSelectorStrings:&unk_1F02D88B0 resolutionResultClass:objc_opt_class() resolveSelectors:sel_resolveParticipantsForFindEvents_withCompletion_, sel_resolveParticipantsForFindEvents_completion_, 0];
  v66[2] = v44;
  v43 = [[INIntentSlotDescription alloc] initWithName:@"location" tag:5 facadePropertyName:@"location" dataPropertyName:@"location" isExtended:0 isPrivate:0 valueType:27 valueStyle:1 defaultValueSelectorStrings:&unk_1F02D88C8 provideOptionsSelectorStrings:&unk_1F02D88E0 resolutionResultClass:objc_opt_class() resolveSelectors:sel_resolveLocationForFindEvents_withCompletion_, sel_resolveLocationForFindEvents_completion_, 0];
  v66[3] = v43;
  v42 = [[INIntentSlotDescription alloc] initWithName:@"requestedEventAttribute" tag:6 facadePropertyName:@"requestedEventAttribute" dataPropertyName:@"requestedEventAttribute" isExtended:0 isPrivate:0 valueType:241 valueStyle:1 defaultValueSelectorStrings:&unk_1F02D88F8 provideOptionsSelectorStrings:&unk_1F02D8910 resolutionResultClass:objc_opt_class() resolveSelectors:sel_resolveRequestedEventAttributeForFindEvents_withCompletion_, sel_resolveRequestedEventAttributeForFindEvents_completion_, 0];
  v66[4] = v42;
  v41 = [MEMORY[0x1E695DEC8] arrayWithObjects:v66 count:5];
  v40 = _INIntentSchemaBuildIntentSlotDescriptionMap(v41);
  v39 = [(INIntentDescription *)v38 initWithName:@"FindEventsIntent" responseName:@"FindEventsIntentResponse" facadeClass:v36 dataClass:v5 type:@"sirikit.intent.calendar.FindEventsIntent" isPrivate:0 handleSelector:sel_handleFindEvents_completion_ confirmSelector:sel_confirmFindEvents_completion_ slotsByName:v40];
  v69[2] = v39;
  v35 = [INIntentDescription alloc];
  v34 = objc_opt_class();
  v33 = objc_opt_class();
  v37 = [[INIntentSlotDescription alloc] initWithName:@"targetEventIdentifier" tag:2 facadePropertyName:@"targetEventIdentifier" dataPropertyName:@"targetEventIdentifier" isExtended:0 isPrivate:0 valueType:7 valueStyle:1 defaultValueSelectorStrings:&unk_1F02D8928 provideOptionsSelectorStrings:&unk_1F02D8940 resolutionResultClass:objc_opt_class() resolveSelectors:sel_resolveTargetEventIdentifierForUpdateEvent_withCompletion_, sel_resolveTargetEventIdentifierForUpdateEvent_completion_, 0];
  v65[0] = v37;
  v32 = [[INIntentSlotDescription alloc] initWithName:@"setTitle" tag:3 facadePropertyName:@"setTitle" dataPropertyName:@"setTitle" isExtended:0 isPrivate:0 valueType:7 valueStyle:1 defaultValueSelectorStrings:&unk_1F02D8958 provideOptionsSelectorStrings:&unk_1F02D8970 resolutionResultClass:objc_opt_class() resolveSelectors:sel_resolveSetTitleForUpdateEvent_withCompletion_, sel_resolveSetTitleForUpdateEvent_completion_, 0];
  v65[1] = v32;
  v6 = [[INIntentSlotDescription alloc] initWithName:@"setDateTimeRange" tag:4 facadePropertyName:@"setDateTimeRange" dataPropertyName:@"setDateTimeRange" isExtended:0 isPrivate:0 valueType:16 valueStyle:1 defaultValueSelectorStrings:&unk_1F02D8988 provideOptionsSelectorStrings:&unk_1F02D89A0 resolutionResultClass:objc_opt_class() resolveSelectors:sel_resolveSetDateTimeRangeForUpdateEvent_withCompletion_, sel_resolveSetDateTimeRangeForUpdateEvent_completion_, 0];
  v65[2] = v6;
  v7 = [[INIntentSlotDescription alloc] initWithName:@"setLocation" tag:5 facadePropertyName:@"setLocation" dataPropertyName:@"setLocation" isExtended:0 isPrivate:0 valueType:27 valueStyle:1 defaultValueSelectorStrings:&unk_1F02D89B8 provideOptionsSelectorStrings:&unk_1F02D89D0 resolutionResultClass:objc_opt_class() resolveSelectors:sel_resolveSetLocationForUpdateEvent_withCompletion_, sel_resolveSetLocationForUpdateEvent_completion_, 0];
  v65[3] = v7;
  v8 = [[INIntentSlotDescription alloc] initWithName:@"addParticipants" tag:6 facadePropertyName:@"addParticipants" dataPropertyName:@"addParticipants" isExtended:0 isPrivate:0 valueType:10 valueStyle:3 defaultValueSelectorStrings:&unk_1F02D89E8 provideOptionsSelectorStrings:&unk_1F02D8A00 resolutionResultClass:objc_opt_class() resolveSelectors:sel_resolveAddParticipantsForUpdateEvent_withCompletion_, sel_resolveAddParticipantsForUpdateEvent_completion_, 0];
  v65[4] = v8;
  v9 = [[INIntentSlotDescription alloc] initWithName:@"removeParticipants" tag:7 facadePropertyName:@"removeParticipants" dataPropertyName:@"removeParticipants" isExtended:0 isPrivate:0 valueType:10 valueStyle:3 defaultValueSelectorStrings:&unk_1F02D8A18 provideOptionsSelectorStrings:&unk_1F02D8A30 resolutionResultClass:objc_opt_class() resolveSelectors:sel_resolveRemoveParticipantsForUpdateEvent_withCompletion_, sel_resolveRemoveParticipantsForUpdateEvent_completion_, 0];
  v65[5] = v9;
  v10 = [[INIntentSlotDescription alloc] initWithName:@"updateAllOccurrences" tag:8 facadePropertyName:@"updateAllOccurrences" dataPropertyName:@"updateAllOccurrences" isExtended:0 isPrivate:0 valueType:1 valueStyle:1 defaultValueSelectorStrings:&unk_1F02D8A48 provideOptionsSelectorStrings:&unk_1F02D8A60 resolutionResultClass:objc_opt_class() resolveSelectors:sel_resolveUpdateAllOccurrencesForUpdateEvent_withCompletion_, sel_resolveUpdateAllOccurrencesForUpdateEvent_completion_, 0];
  v65[6] = v10;
  v11 = [[INIntentSlotDescription alloc] initWithName:@"removeLocation" tag:9 facadePropertyName:@"removeLocation" dataPropertyName:@"removeLocation" isExtended:0 isPrivate:0 valueType:1 valueStyle:1 defaultValueSelectorStrings:&unk_1F02D8A78 provideOptionsSelectorStrings:&unk_1F02D8A90 resolutionResultClass:objc_opt_class() resolveSelectors:sel_resolveRemoveLocationForUpdateEvent_withCompletion_, sel_resolveRemoveLocationForUpdateEvent_completion_, 0];
  v65[7] = v11;
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v65 count:8];
  v13 = _INIntentSchemaBuildIntentSlotDescriptionMap(v12);
  v14 = [(INIntentDescription *)v35 initWithName:@"UpdateEventIntent" responseName:@"UpdateEventIntentResponse" facadeClass:v34 dataClass:v33 type:@"sirikit.intent.calendar.UpdateEventIntent" isPrivate:0 handleSelector:sel_handleUpdateEvent_completion_ confirmSelector:sel_confirmUpdateEvent_completion_ slotsByName:v13];
  v69[3] = v14;
  v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v69 count:4];

  v16 = [v15 count];
  v17 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:v16];
  v18 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:v16];
  v60 = 0u;
  v61 = 0u;
  v62 = 0u;
  v63 = 0u;
  v19 = v15;
  v20 = [v19 countByEnumeratingWithState:&v60 objects:v64 count:16];
  if (v20)
  {
    v21 = v20;
    v22 = *v61;
    do
    {
      for (i = 0; i != v21; ++i)
      {
        if (*v61 != v22)
        {
          objc_enumerationMutation(v19);
        }

        v24 = *(*(&v60 + 1) + 8 * i);
        v25 = [v24 name];
        [v17 setObject:v24 forKey:v25];

        v26 = [v24 type];
        [v18 setObject:v24 forKey:v26];
      }

      v21 = [v19 countByEnumeratingWithState:&v60 objects:v64 count:16];
    }

    while (v21);
  }

  v27 = [v17 copy];
  v28 = sCalendarEventDomain_intentDescsByName;
  sCalendarEventDomain_intentDescsByName = v27;

  v29 = [v18 copy];
  v30 = sCalendarEventDomain_intentDescsByType;
  sCalendarEventDomain_intentDescsByType = v29;

  v31 = *MEMORY[0x1E69E9840];
}

@end