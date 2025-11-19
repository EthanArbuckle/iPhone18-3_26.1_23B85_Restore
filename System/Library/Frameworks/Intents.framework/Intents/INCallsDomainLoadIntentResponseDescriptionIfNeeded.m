@interface INCallsDomainLoadIntentResponseDescriptionIfNeeded
@end

@implementation INCallsDomainLoadIntentResponseDescriptionIfNeeded

void ___INCallsDomainLoadIntentResponseDescriptionIfNeeded_block_invoke()
{
  v103[10] = *MEMORY[0x1E69E9840];
  v0 = [INIntentResponseDescription alloc];
  v1 = objc_opt_class();
  v2 = objc_opt_class();
  v89 = [[INIntentSlotDescription alloc] initWithName:@"invites" tag:1 facadePropertyName:@"invites" dataPropertyName:@"invites" isExtended:0 isPrivate:0 valueType:82 valueStyle:3 defaultValueSelectorStrings:0 provideOptionsSelectorStrings:0 resolutionResultClass:0 resolveSelectors:0];
  v102 = v89;
  v88 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v102 count:1];
  v87 = _INIntentSchemaBuildIntentSlotDescriptionMap(v88);
  v86 = [(INIntentResponseDescription *)v0 initWithName:@"AddCallParticipantIntentResponse" facadeClass:v1 dataClass:v2 type:@"sirikit.intent.call.AddCallParticipantIntentResponse" isPrivate:0 slotsByName:v87];
  v103[0] = v86;
  v3 = [INIntentResponseDescription alloc];
  v4 = objc_opt_class();
  v5 = objc_opt_class();
  v85 = [[INIntentSlotDescription alloc] initWithName:@"statusCode" tag:1 facadePropertyName:@"statusCode" dataPropertyName:@"statusCode" isExtended:0 isPrivate:1 valueType:75 valueStyle:1 defaultValueSelectorStrings:0 provideOptionsSelectorStrings:0 resolutionResultClass:0 resolveSelectors:0];
  v101[0] = v85;
  v84 = [[INIntentSlotDescription alloc] initWithName:@"callRecords" tag:2 facadePropertyName:@"callRecords" dataPropertyName:@"callRecords" isExtended:0 isPrivate:0 valueType:74 valueStyle:3 defaultValueSelectorStrings:0 provideOptionsSelectorStrings:0 resolutionResultClass:0 resolveSelectors:0];
  v101[1] = v84;
  v83 = [[INIntentSlotDescription alloc] initWithName:@"answeredCall" tag:3 facadePropertyName:@"answeredCall" dataPropertyName:@"answeredCall" isExtended:0 isPrivate:1 valueType:77 valueStyle:1 defaultValueSelectorStrings:0 provideOptionsSelectorStrings:0 resolutionResultClass:0 resolveSelectors:0];
  v101[2] = v83;
  v82 = [MEMORY[0x1E695DEC8] arrayWithObjects:v101 count:3];
  v81 = _INIntentSchemaBuildIntentSlotDescriptionMap(v82);
  v80 = [(INIntentResponseDescription *)v3 initWithName:@"AnswerCallIntentResponse" facadeClass:v4 dataClass:v5 type:@"sirikit.intent.call.AnswerCallIntentResponse" isPrivate:0 slotsByName:v81];
  v103[1] = v80;
  v6 = [INIntentResponseDescription alloc];
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v79 = [[INIntentSlotDescription alloc] initWithName:@"hungUpCallType" tag:1 facadePropertyName:@"hungUpCallType" dataPropertyName:@"hungUpCallType" isExtended:0 isPrivate:1 valueType:71 valueStyle:1 defaultValueSelectorStrings:0 provideOptionsSelectorStrings:0 resolutionResultClass:0 resolveSelectors:0];
  v100 = v79;
  v78 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v100 count:1];
  v77 = _INIntentSchemaBuildIntentSlotDescriptionMap(v78);
  v76 = [(INIntentResponseDescription *)v6 initWithName:@"HangUpCallIntentResponse" facadeClass:v7 dataClass:v8 type:@"sirikit.intent.call.HangUpCallIntentResponse" isPrivate:0 slotsByName:v77];
  v103[2] = v76;
  v9 = [INIntentResponseDescription alloc];
  v10 = objc_opt_class();
  v11 = objc_opt_class();
  v75 = [[INIntentSlotDescription alloc] initWithName:@"statusCode" tag:1 facadePropertyName:@"statusCode" dataPropertyName:@"statusCode" isExtended:0 isPrivate:0 valueType:75 valueStyle:1 defaultValueSelectorStrings:0 provideOptionsSelectorStrings:0 resolutionResultClass:0 resolveSelectors:0];
  v99[0] = v75;
  v74 = [[INIntentSlotDescription alloc] initWithName:@"callRecords" tag:2 facadePropertyName:@"callRecords" dataPropertyName:@"callRecords" isExtended:0 isPrivate:0 valueType:74 valueStyle:3 defaultValueSelectorStrings:0 provideOptionsSelectorStrings:0 resolutionResultClass:0 resolveSelectors:0];
  v99[1] = v74;
  v73 = [MEMORY[0x1E695DEC8] arrayWithObjects:v99 count:2];
  v72 = _INIntentSchemaBuildIntentSlotDescriptionMap(v73);
  v71 = [(INIntentResponseDescription *)v9 initWithName:@"IdentifyIncomingCallerIntentResponse" facadeClass:v10 dataClass:v11 type:@"sirikit.intent.call.IdentifyIncomingCallerIntentResponse" isPrivate:0 slotsByName:v72];
  v103[3] = v71;
  v12 = [INIntentResponseDescription alloc];
  v13 = objc_opt_class();
  v14 = objc_opt_class();
  v15 = MEMORY[0x1E695E0F0];
  v70 = _INIntentSchemaBuildIntentSlotDescriptionMap(MEMORY[0x1E695E0F0]);
  v69 = [(INIntentResponseDescription *)v12 initWithName:@"JoinCallIntentResponse" facadeClass:v13 dataClass:v14 type:@"sirikit.intent.call.JoinCallIntentResponse" isPrivate:0 slotsByName:v70];
  v103[4] = v69;
  v16 = [INIntentResponseDescription alloc];
  v17 = objc_opt_class();
  v18 = objc_opt_class();
  v68 = _INIntentSchemaBuildIntentSlotDescriptionMap(v15);
  v67 = [(INIntentResponseDescription *)v16 initWithName:@"PlayVoicemailIntentResponse" facadeClass:v17 dataClass:v18 type:@"sirikit.intent.call.PlayVoicemailIntentResponse" isPrivate:0 slotsByName:v68];
  v103[5] = v67;
  v19 = [INIntentResponseDescription alloc];
  v20 = objc_opt_class();
  v21 = objc_opt_class();
  v66 = [[INIntentSlotDescription alloc] initWithName:@"callRecords" tag:6 facadePropertyName:@"callRecords" dataPropertyName:@"callRecords" isExtended:0 isPrivate:0 valueType:74 valueStyle:3 defaultValueSelectorStrings:0 provideOptionsSelectorStrings:0 resolutionResultClass:0 resolveSelectors:0];
  v98 = v66;
  v65 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v98 count:1];
  v64 = _INIntentSchemaBuildIntentSlotDescriptionMap(v65);
  v63 = [(INIntentResponseDescription *)v19 initWithName:@"SearchCallHistoryIntentResponse" facadeClass:v20 dataClass:v21 type:@"sirikit.intent.call.SearchCallHistoryIntentResponse" isPrivate:0 slotsByName:v64];
  v103[6] = v63;
  v22 = [INIntentResponseDescription alloc];
  v23 = objc_opt_class();
  v24 = objc_opt_class();
  v62 = [[INIntentSlotDescription alloc] initWithName:@"metrics" tag:1000 facadePropertyName:@"timeToEstablishCall" dataPropertyName:@"metrics" isExtended:0 isPrivate:1 valueType:3 valueStyle:1 defaultValueSelectorStrings:0 provideOptionsSelectorStrings:0 resolutionResultClass:0 resolveSelectors:0];
  v97 = v62;
  v61 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v97 count:1];
  v60 = _INIntentSchemaBuildIntentSlotDescriptionMap(v61);
  v59 = [(INIntentResponseDescription *)v22 initWithName:@"StartAudioCallIntentResponse" facadeClass:v23 dataClass:v24 type:@"sirikit.intent.call.StartAudioCallIntentResponse" isPrivate:0 slotsByName:v60];
  v103[7] = v59;
  v25 = [INIntentResponseDescription alloc];
  v26 = objc_opt_class();
  v27 = objc_opt_class();
  v58 = [[INIntentSlotDescription alloc] initWithName:@"shouldDoEmergencyCountdown" tag:1 facadePropertyName:@"shouldDoEmergencyCountdown" dataPropertyName:@"shouldDoEmergencyCountdown" isExtended:0 isPrivate:1 valueType:1 valueStyle:1 defaultValueSelectorStrings:0 provideOptionsSelectorStrings:0 resolutionResultClass:0 resolveSelectors:0];
  v96[0] = v58;
  v57 = [[INIntentSlotDescription alloc] initWithName:@"confirmationReason" tag:2 facadePropertyName:@"confirmationReason" dataPropertyName:@"confirmationReason" isExtended:0 isPrivate:1 valueType:76 valueStyle:1 defaultValueSelectorStrings:0 provideOptionsSelectorStrings:0 resolutionResultClass:0 resolveSelectors:0];
  v96[1] = v57;
  v56 = [[INIntentSlotDescription alloc] initWithName:@"startedCall" tag:3 facadePropertyName:@"startedCall" dataPropertyName:@"startedCall" isExtended:0 isPrivate:1 valueType:77 valueStyle:1 defaultValueSelectorStrings:0 provideOptionsSelectorStrings:0 resolutionResultClass:0 resolveSelectors:0];
  v96[2] = v56;
  v55 = [[INIntentSlotDescription alloc] initWithName:@"restrictedContacts" tag:4 facadePropertyName:@"restrictedContacts" dataPropertyName:@"restrictedContacts" isExtended:0 isPrivate:1 valueType:10 valueStyle:3 defaultValueSelectorStrings:0 provideOptionsSelectorStrings:0 resolutionResultClass:0 resolveSelectors:0];
  v96[3] = v55;
  v28 = [MEMORY[0x1E695DEC8] arrayWithObjects:v96 count:4];
  v29 = _INIntentSchemaBuildIntentSlotDescriptionMap(v28);
  v30 = [(INIntentResponseDescription *)v25 initWithName:@"StartCallIntentResponse" facadeClass:v26 dataClass:v27 type:@"sirikit.intent.call.StartCallIntentResponse" isPrivate:0 slotsByName:v29];
  v103[8] = v30;
  v31 = [INIntentResponseDescription alloc];
  v32 = objc_opt_class();
  v33 = objc_opt_class();
  v34 = [[INIntentSlotDescription alloc] initWithName:@"metrics" tag:1000 facadePropertyName:@"timeToEstablishCall" dataPropertyName:@"metrics" isExtended:0 isPrivate:1 valueType:3 valueStyle:1 defaultValueSelectorStrings:0 provideOptionsSelectorStrings:0 resolutionResultClass:0 resolveSelectors:0];
  v95 = v34;
  v35 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v95 count:1];
  v36 = _INIntentSchemaBuildIntentSlotDescriptionMap(v35);
  v37 = [(INIntentResponseDescription *)v31 initWithName:@"StartVideoCallIntentResponse" facadeClass:v32 dataClass:v33 type:@"sirikit.intent.call.StartVideoCallIntentResponse" isPrivate:0 slotsByName:v36];
  v103[9] = v37;
  v38 = [MEMORY[0x1E695DEC8] arrayWithObjects:v103 count:10];

  v39 = [v38 count];
  v40 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:v39];
  v41 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:v39];
  v90 = 0u;
  v91 = 0u;
  v92 = 0u;
  v93 = 0u;
  v42 = v38;
  v43 = [v42 countByEnumeratingWithState:&v90 objects:v94 count:16];
  if (v43)
  {
    v44 = v43;
    v45 = *v91;
    do
    {
      for (i = 0; i != v44; ++i)
      {
        if (*v91 != v45)
        {
          objc_enumerationMutation(v42);
        }

        v47 = *(*(&v90 + 1) + 8 * i);
        v48 = [v47 name];
        [v40 setObject:v47 forKey:v48];

        v49 = [v47 type];
        [v41 setObject:v47 forKey:v49];
      }

      v44 = [v42 countByEnumeratingWithState:&v90 objects:v94 count:16];
    }

    while (v44);
  }

  v50 = [v40 copy];
  v51 = sCallsDomain_intentResponseDescsByName;
  sCallsDomain_intentResponseDescsByName = v50;

  v52 = [v41 copy];
  v53 = sCallsDomain_intentResponseDescsByType;
  sCallsDomain_intentResponseDescsByType = v52;

  v54 = *MEMORY[0x1E69E9840];
}

@end