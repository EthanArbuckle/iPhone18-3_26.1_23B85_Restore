@interface INGeoDomainLoadIntentDescriptionIfNeeded
@end

@implementation INGeoDomainLoadIntentDescriptionIfNeeded

void ___INGeoDomainLoadIntentDescriptionIfNeeded_block_invoke()
{
  v70[6] = *MEMORY[0x1E69E9840];
  v0 = [INIntentDescription alloc];
  v1 = objc_opt_class();
  v2 = objc_opt_class();
  v3 = MEMORY[0x1E695E0F0];
  v60 = _INIntentSchemaBuildIntentSlotDescriptionMap(MEMORY[0x1E695E0F0]);
  v59 = [(INIntentDescription *)v0 initWithName:@"DeleteParkingLocationIntent" responseName:@"DeleteParkingLocationIntentResponse" facadeClass:v1 dataClass:v2 type:@"sirikit.intent.geo.DeleteParkingLocationIntent" isPrivate:0 handleSelector:sel_handleDeleteParkingLocation_completion_ confirmSelector:sel_confirmDeleteParkingLocation_completion_ slotsByName:v60];
  v70[0] = v59;
  v4 = [INIntentDescription alloc];
  v5 = objc_opt_class();
  v6 = objc_opt_class();
  v58 = [[INIntentSlotDescription alloc] initWithName:@"incidentType" tag:2 facadePropertyName:@"incidentType" dataPropertyName:@"incidentType" isExtended:0 isPrivate:0 valueType:229 valueStyle:1 defaultValueSelectorStrings:&unk_1F02D94F8 provideOptionsSelectorStrings:&unk_1F02D9510 resolutionResultClass:objc_opt_class() resolveSelectors:sel_resolveIncidentTypeForReportIncident_withCompletion_, sel_resolveIncidentTypeForReportIncident_completion_, 0];
  v69[0] = v58;
  v57 = [[INIntentSlotDescription alloc] initWithName:@"startTime" tag:3 facadePropertyName:@"startTime" dataPropertyName:@"startTime" isExtended:0 isPrivate:0 valueType:3 valueStyle:1 defaultValueSelectorStrings:&unk_1F02D9528 provideOptionsSelectorStrings:&unk_1F02D9540 resolutionResultClass:objc_opt_class() resolveSelectors:sel_resolveStartTimeForReportIncident_withCompletion_, sel_resolveStartTimeForReportIncident_completion_, 0];
  v69[1] = v57;
  v56 = [[INIntentSlotDescription alloc] initWithName:@"isClear" tag:4 facadePropertyName:@"isClear" dataPropertyName:@"isClear" isExtended:0 isPrivate:0 valueType:1 valueStyle:1 defaultValueSelectorStrings:&unk_1F02D9558 provideOptionsSelectorStrings:&unk_1F02D9570 resolutionResultClass:objc_opt_class() resolveSelectors:sel_resolveIsClearForReportIncident_withCompletion_, sel_resolveIsClearForReportIncident_completion_, 0];
  v69[2] = v56;
  v55 = [[INIntentSlotDescription alloc] initWithName:@"userLocation" tag:5 facadePropertyName:@"userLocation" dataPropertyName:@"userLocation" isExtended:0 isPrivate:0 valueType:27 valueStyle:1 defaultValueSelectorStrings:&unk_1F02D9588 provideOptionsSelectorStrings:&unk_1F02D95A0 resolutionResultClass:objc_opt_class() resolveSelectors:sel_resolveUserLocationForReportIncident_withCompletion_, sel_resolveUserLocationForReportIncident_completion_, 0];
  v69[3] = v55;
  v54 = [[INIntentSlotDescription alloc] initWithName:@"additionalDetails" tag:6 facadePropertyName:@"additionalDetails" dataPropertyName:@"additionalDetails" isExtended:0 isPrivate:0 valueType:30 valueStyle:1 defaultValueSelectorStrings:&unk_1F02D95B8 provideOptionsSelectorStrings:&unk_1F02D95D0 resolutionResultClass:objc_opt_class() resolveSelectors:sel_resolveAdditionalDetailsForReportIncident_withCompletion_, sel_resolveAdditionalDetailsForReportIncident_completion_, 0];
  v69[4] = v54;
  v53 = [MEMORY[0x1E695DEC8] arrayWithObjects:v69 count:5];
  v52 = _INIntentSchemaBuildIntentSlotDescriptionMap(v53);
  v51 = [(INIntentDescription *)v4 initWithName:@"ReportIncidentIntent" responseName:@"ReportIncidentIntentResponse" facadeClass:v5 dataClass:v6 type:@"sirikit.intent.geo.ReportIncidentIntent" isPrivate:0 handleSelector:sel_handleReportIncident_completion_ confirmSelector:sel_confirmReportIncident_completion_ slotsByName:v52];
  v70[1] = v51;
  v7 = [INIntentDescription alloc];
  v8 = objc_opt_class();
  v9 = objc_opt_class();
  v50 = _INIntentSchemaBuildIntentSlotDescriptionMap(v3);
  v49 = [(INIntentDescription *)v7 initWithName:@"RetrieveParkingLocationIntent" responseName:@"RetrieveParkingLocationIntentResponse" facadeClass:v8 dataClass:v9 type:@"sirikit.intent.geo.RetrieveParkingLocationIntent" isPrivate:0 handleSelector:sel_handleRetrieveParkingLocation_completion_ confirmSelector:sel_confirmRetrieveParkingLocation_completion_ slotsByName:v50];
  v70[2] = v49;
  v10 = [INIntentDescription alloc];
  v11 = objc_opt_class();
  v12 = objc_opt_class();
  v48 = [[INIntentSlotDescription alloc] initWithName:@"parkingLocation" tag:2 facadePropertyName:@"parkingLocation" dataPropertyName:@"parkingLocation" isExtended:0 isPrivate:0 valueType:27 valueStyle:1 defaultValueSelectorStrings:&unk_1F02D95E8 provideOptionsSelectorStrings:&unk_1F02D9600 resolutionResultClass:objc_opt_class() resolveSelectors:sel_resolveParkingLocationForSaveParkingLocation_withCompletion_, sel_resolveParkingLocationForSaveParkingLocation_completion_, 0];
  v68[0] = v48;
  v47 = [[INIntentSlotDescription alloc] initWithName:@"parkingNote" tag:3 facadePropertyName:@"parkingNote" dataPropertyName:@"parkingNote" isExtended:0 isPrivate:0 valueType:30 valueStyle:1 defaultValueSelectorStrings:&unk_1F02D9618 provideOptionsSelectorStrings:&unk_1F02D9630 resolutionResultClass:objc_opt_class() resolveSelectors:sel_resolveParkingNoteForSaveParkingLocation_withCompletion_, sel_resolveParkingNoteForSaveParkingLocation_completion_, 0];
  v68[1] = v47;
  v46 = [MEMORY[0x1E695DEC8] arrayWithObjects:v68 count:2];
  v45 = _INIntentSchemaBuildIntentSlotDescriptionMap(v46);
  v44 = [(INIntentDescription *)v10 initWithName:@"SaveParkingLocationIntent" responseName:@"SaveParkingLocationIntentResponse" facadeClass:v11 dataClass:v12 type:@"sirikit.intent.geo.SaveParkingLocationIntent" isPrivate:0 handleSelector:sel_handleSaveParkingLocation_completion_ confirmSelector:sel_confirmSaveParkingLocation_completion_ slotsByName:v45];
  v70[3] = v44;
  v13 = [INIntentDescription alloc];
  v14 = objc_opt_class();
  v15 = objc_opt_class();
  v43 = [[INIntentSlotDescription alloc] initWithName:@"recipient" tag:2 facadePropertyName:@"recipients" dataPropertyName:@"recipients" isExtended:0 isPrivate:0 valueType:10 valueStyle:3 defaultValueSelectorStrings:&unk_1F02D9648 provideOptionsSelectorStrings:&unk_1F02D9660 resolutionResultClass:objc_opt_class() resolveSelectors:sel_resolveRecipientsForShareETA_withCompletion_, sel_resolveRecipientsForShareETA_completion_, 0];
  v67 = v43;
  v42 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v67 count:1];
  v41 = _INIntentSchemaBuildIntentSlotDescriptionMap(v42);
  v16 = [(INIntentDescription *)v13 initWithName:@"ShareETAIntent" responseName:@"ShareETAIntentResponse" facadeClass:v14 dataClass:v15 type:@"sirikit.intent.geo.ShareETAIntent" isPrivate:0 handleSelector:sel_handleShareETA_completion_ confirmSelector:sel_confirmShareETA_completion_ slotsByName:v41];
  v70[4] = v16;
  v17 = [INIntentDescription alloc];
  v18 = objc_opt_class();
  v19 = objc_opt_class();
  v20 = [[INIntentSlotDescription alloc] initWithName:@"recipient" tag:2 facadePropertyName:@"recipients" dataPropertyName:@"recipients" isExtended:0 isPrivate:0 valueType:10 valueStyle:3 defaultValueSelectorStrings:&unk_1F02D9678 provideOptionsSelectorStrings:&unk_1F02D9690 resolutionResultClass:objc_opt_class() resolveSelectors:sel_resolveRecipientsForStopShareETA_withCompletion_, sel_resolveRecipientsForStopShareETA_completion_, 0];
  v66 = v20;
  v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v66 count:1];
  v22 = _INIntentSchemaBuildIntentSlotDescriptionMap(v21);
  v23 = [(INIntentDescription *)v17 initWithName:@"StopShareETAIntent" responseName:@"StopShareETAIntentResponse" facadeClass:v18 dataClass:v19 type:@"sirikit.intent.geo.StopShareETAIntent" isPrivate:0 handleSelector:sel_handleStopShareETA_completion_ confirmSelector:sel_confirmStopShareETA_completion_ slotsByName:v22];
  v70[5] = v23;
  v24 = [MEMORY[0x1E695DEC8] arrayWithObjects:v70 count:6];

  v25 = [v24 count];
  v26 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:v25];
  v27 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:v25];
  v61 = 0u;
  v62 = 0u;
  v63 = 0u;
  v64 = 0u;
  v28 = v24;
  v29 = [v28 countByEnumeratingWithState:&v61 objects:v65 count:16];
  if (v29)
  {
    v30 = v29;
    v31 = *v62;
    do
    {
      for (i = 0; i != v30; ++i)
      {
        if (*v62 != v31)
        {
          objc_enumerationMutation(v28);
        }

        v33 = *(*(&v61 + 1) + 8 * i);
        v34 = [v33 name];
        [v26 setObject:v33 forKey:v34];

        v35 = [v33 type];
        [v27 setObject:v33 forKey:v35];
      }

      v30 = [v28 countByEnumeratingWithState:&v61 objects:v65 count:16];
    }

    while (v30);
  }

  v36 = [v26 copy];
  v37 = sGeoDomain_intentDescsByName;
  sGeoDomain_intentDescsByName = v36;

  v38 = [v27 copy];
  v39 = sGeoDomain_intentDescsByType;
  sGeoDomain_intentDescsByType = v38;

  v40 = *MEMORY[0x1E69E9840];
}

@end