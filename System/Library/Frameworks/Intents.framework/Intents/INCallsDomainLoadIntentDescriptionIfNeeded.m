@interface INCallsDomainLoadIntentDescriptionIfNeeded
@end

@implementation INCallsDomainLoadIntentDescriptionIfNeeded

void ___INCallsDomainLoadIntentDescriptionIfNeeded_block_invoke()
{
  v126[10] = *MEMORY[0x1E69E9840];
  v0 = [INIntentDescription alloc];
  v1 = objc_opt_class();
  v2 = objc_opt_class();
  v111 = [[INIntentSlotDescription alloc] initWithName:@"participants" tag:2 facadePropertyName:@"participants" dataPropertyName:@"participants" isExtended:0 isPrivate:0 valueType:10 valueStyle:3 defaultValueSelectorStrings:&unk_1F02D8AA8 provideOptionsSelectorStrings:&unk_1F02D8AC0 resolutionResultClass:objc_opt_class() resolveSelectors:sel_resolveParticipantsForAddCallParticipant_withCompletion_, sel_resolveParticipantsForAddCallParticipant_completion_, 0];
  v125 = v111;
  v110 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v125 count:1];
  v109 = _INIntentSchemaBuildIntentSlotDescriptionMap(v110);
  v108 = [(INIntentDescription *)v0 initWithName:@"AddCallParticipantIntent" responseName:@"AddCallParticipantIntentResponse" facadeClass:v1 dataClass:v2 type:@"sirikit.intent.call.AddCallParticipantIntent" isPrivate:0 handleSelector:sel_handleAddCallParticipant_completion_ confirmSelector:sel_confirmAddCallParticipant_completion_ slotsByName:v109];
  v126[0] = v108;
  v3 = [INIntentDescription alloc];
  v4 = objc_opt_class();
  v5 = objc_opt_class();
  v107 = [[INIntentSlotDescription alloc] initWithName:@"audioRoute" tag:2 facadePropertyName:@"audioRoute" dataPropertyName:@"audioRoute" isExtended:0 isPrivate:0 valueType:67 valueStyle:1 defaultValueSelectorStrings:0 provideOptionsSelectorStrings:0 resolutionResultClass:0 resolveSelectors:0];
  v124[0] = v107;
  v106 = [[INIntentSlotDescription alloc] initWithName:@"callIdentifier" tag:3 facadePropertyName:@"callIdentifier" dataPropertyName:@"callIdentifier" isExtended:0 isPrivate:0 valueType:7 valueStyle:1 defaultValueSelectorStrings:0 provideOptionsSelectorStrings:0 resolutionResultClass:0 resolveSelectors:0];
  v124[1] = v106;
  v105 = [MEMORY[0x1E695DEC8] arrayWithObjects:v124 count:2];
  v104 = _INIntentSchemaBuildIntentSlotDescriptionMap(v105);
  v103 = [(INIntentDescription *)v3 initWithName:@"AnswerCallIntent" responseName:@"AnswerCallIntentResponse" facadeClass:v4 dataClass:v5 type:@"sirikit.intent.call.AnswerCallIntent" isPrivate:0 handleSelector:sel_handleAnswerCall_completion_ confirmSelector:sel_confirmAnswerCall_completion_ slotsByName:v104];
  v126[1] = v103;
  v6 = [INIntentDescription alloc];
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v102 = [[INIntentSlotDescription alloc] initWithName:@"callIdentifier" tag:2 facadePropertyName:@"callIdentifier" dataPropertyName:@"callIdentifier" isExtended:0 isPrivate:0 valueType:7 valueStyle:1 defaultValueSelectorStrings:0 provideOptionsSelectorStrings:0 resolutionResultClass:0 resolveSelectors:0];
  v123 = v102;
  v101 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v123 count:1];
  v100 = _INIntentSchemaBuildIntentSlotDescriptionMap(v101);
  v99 = [(INIntentDescription *)v6 initWithName:@"HangUpCallIntent" responseName:@"HangUpCallIntentResponse" facadeClass:v7 dataClass:v8 type:@"sirikit.intent.call.HangUpCallIntent" isPrivate:0 handleSelector:sel_handleHangUpCall_completion_ confirmSelector:sel_confirmHangUpCall_completion_ slotsByName:v100];
  v126[2] = v99;
  v9 = [INIntentDescription alloc];
  v10 = objc_opt_class();
  v11 = objc_opt_class();
  v98 = _INIntentSchemaBuildIntentSlotDescriptionMap(MEMORY[0x1E695E0F0]);
  v97 = [(INIntentDescription *)v9 initWithName:@"IdentifyIncomingCallerIntent" responseName:@"IdentifyIncomingCallerIntentResponse" facadeClass:v10 dataClass:v11 type:@"sirikit.intent.call.IdentifyIncomingCallerIntent" isPrivate:0 handleSelector:sel_handleIdentifyIncomingCaller_completion_ confirmSelector:sel_confirmIdentifyIncomingCaller_completion_ slotsByName:v98];
  v126[3] = v97;
  v12 = [INIntentDescription alloc];
  v13 = objc_opt_class();
  v14 = objc_opt_class();
  v96 = [[INIntentSlotDescription alloc] initWithName:@"groupConversationFilter" tag:2 facadePropertyName:@"groupConversationFilter" dataPropertyName:@"groupConversationFilter" isExtended:0 isPrivate:0 valueType:81 valueStyle:1 defaultValueSelectorStrings:0 provideOptionsSelectorStrings:0 resolutionResultClass:0 resolveSelectors:0];
  v122[0] = v96;
  v95 = [[INIntentSlotDescription alloc] initWithName:@"groupConversation" tag:10 facadePropertyName:@"groupConversation" dataPropertyName:@"groupConversation" isExtended:0 isPrivate:0 valueType:80 valueStyle:1 defaultValueSelectorStrings:&unk_1F02D8AD8 provideOptionsSelectorStrings:&unk_1F02D8AF0 resolutionResultClass:objc_opt_class() resolveSelectors:sel_resolveGroupConversationForJoinCall_withCompletion_, sel_resolveGroupConversationForJoinCall_completion_, 0];
  v122[1] = v95;
  v94 = [MEMORY[0x1E695DEC8] arrayWithObjects:v122 count:2];
  v93 = _INIntentSchemaBuildIntentSlotDescriptionMap(v94);
  v92 = [(INIntentDescription *)v12 initWithName:@"JoinCallIntent" responseName:@"JoinCallIntentResponse" facadeClass:v13 dataClass:v14 type:@"sirikit.intent.call.JoinCallIntent" isPrivate:0 handleSelector:sel_handleJoinCall_completion_ confirmSelector:sel_confirmJoinCall_completion_ slotsByName:v93];
  v126[4] = v92;
  v15 = [INIntentDescription alloc];
  v16 = objc_opt_class();
  v17 = objc_opt_class();
  v91 = [[INIntentSlotDescription alloc] initWithName:@"callRecordIdentifier" tag:2 facadePropertyName:@"callRecordIdentifier" dataPropertyName:@"callRecordIdentifier" isExtended:0 isPrivate:0 valueType:7 valueStyle:1 defaultValueSelectorStrings:0 provideOptionsSelectorStrings:0 resolutionResultClass:0 resolveSelectors:0];
  v121 = v91;
  v90 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v121 count:1];
  v89 = _INIntentSchemaBuildIntentSlotDescriptionMap(v90);
  v88 = [(INIntentDescription *)v15 initWithName:@"PlayVoicemailIntent" responseName:@"PlayVoicemailIntentResponse" facadeClass:v16 dataClass:v17 type:@"sirikit.intent.call.PlayVoicemailIntent" isPrivate:0 handleSelector:sel_handlePlayVoicemail_completion_ confirmSelector:sel_confirmPlayVoicemail_completion_ slotsByName:v89];
  v126[5] = v88;
  v18 = [INIntentDescription alloc];
  v19 = objc_opt_class();
  v20 = objc_opt_class();
  v87 = [[INIntentSlotDescription alloc] initWithName:@"dateCreated" tag:5 facadePropertyName:@"dateCreated" dataPropertyName:@"dateCreated" isExtended:0 isPrivate:0 valueType:16 valueStyle:1 defaultValueSelectorStrings:&unk_1F02D8B08 provideOptionsSelectorStrings:&unk_1F02D8B20 resolutionResultClass:objc_opt_class() resolveSelectors:sel_resolveDateCreatedForSearchCallHistory_withCompletion_, sel_resolveDateCreatedForSearchCallHistory_completion_, 0];
  v120[0] = v87;
  v86 = [[INIntentSlotDescription alloc] initWithName:@"recipient" tag:6 facadePropertyName:@"recipient" dataPropertyName:@"recipient" isExtended:0 isPrivate:0 valueType:10 valueStyle:1 defaultValueSelectorStrings:&unk_1F02D8B38 provideOptionsSelectorStrings:&unk_1F02D8B50 resolutionResultClass:objc_opt_class() resolveSelectors:sel_resolveRecipientForSearchCallHistory_withCompletion_, sel_resolveRecipientForSearchCallHistory_completion_, 0];
  v120[1] = v86;
  v85 = [[INIntentSlotDescription alloc] initWithName:@"callCapabilities" tag:7 facadePropertyName:@"callCapabilities" dataPropertyName:@"callCapabilities" isExtended:0 isPrivate:0 valueType:68 valueStyle:3 defaultValueSelectorStrings:0 provideOptionsSelectorStrings:0 resolutionResultClass:0 resolveSelectors:0];
  v120[2] = v85;
  v84 = [[INIntentSlotDescription alloc] initWithName:@"callTypes" tag:8 facadePropertyName:@"callTypes" dataPropertyName:@"callTypes" isExtended:0 isPrivate:0 valueType:72 valueStyle:3 defaultValueSelectorStrings:&unk_1F02D8B68 provideOptionsSelectorStrings:&unk_1F02D8B80 resolutionResultClass:objc_opt_class() resolveSelectors:sel_resolveCallTypesForSearchCallHistory_withCompletion_, sel_resolveCallTypeForSearchCallHistory_withCompletion_, sel_resolveCallTypeForSearchCallHistory_completion_, 0];
  v120[3] = v84;
  v83 = [[INIntentSlotDescription alloc] initWithName:@"preferredCallProvider" tag:9 facadePropertyName:@"preferredCallProvider" dataPropertyName:@"preferredCallProvider" isExtended:0 isPrivate:1 valueType:73 valueStyle:1 defaultValueSelectorStrings:0 provideOptionsSelectorStrings:0 resolutionResultClass:0 resolveSelectors:0];
  v120[4] = v83;
  v82 = [[INIntentSlotDescription alloc] initWithName:@"unseen" tag:10 facadePropertyName:@"unseen" dataPropertyName:@"unseen" isExtended:0 isPrivate:0 valueType:1 valueStyle:1 defaultValueSelectorStrings:&unk_1F02D8B98 provideOptionsSelectorStrings:&unk_1F02D8BB0 resolutionResultClass:objc_opt_class() resolveSelectors:sel_resolveUnseenForSearchCallHistory_withCompletion_, sel_resolveUnseenForSearchCallHistory_completion_, 0];
  v120[5] = v82;
  v81 = [MEMORY[0x1E695DEC8] arrayWithObjects:v120 count:6];
  v80 = _INIntentSchemaBuildIntentSlotDescriptionMap(v81);
  v79 = [(INIntentDescription *)v18 initWithName:@"SearchCallHistoryIntent" responseName:@"SearchCallHistoryIntentResponse" facadeClass:v19 dataClass:v20 type:@"sirikit.intent.call.SearchCallHistoryIntent" isPrivate:0 handleSelector:sel_handleSearchCallHistory_completion_ confirmSelector:sel_confirmSearchCallHistory_completion_ slotsByName:v80];
  v126[6] = v79;
  v21 = [INIntentDescription alloc];
  v22 = objc_opt_class();
  v23 = objc_opt_class();
  v78 = [[INIntentSlotDescription alloc] initWithName:@"audioRoute" tag:3 facadePropertyName:@"audioRoute" dataPropertyName:@"audioRoute" isExtended:0 isPrivate:1 valueType:67 valueStyle:1 defaultValueSelectorStrings:0 provideOptionsSelectorStrings:0 resolutionResultClass:0 resolveSelectors:0];
  v119[0] = v78;
  v77 = [[INIntentSlotDescription alloc] initWithName:@"destinationType" tag:4 facadePropertyName:@"destinationType" dataPropertyName:@"destinationType" isExtended:0 isPrivate:0 valueType:70 valueStyle:1 defaultValueSelectorStrings:&unk_1F02D8BC8 provideOptionsSelectorStrings:&unk_1F02D8BE0 resolutionResultClass:objc_opt_class() resolveSelectors:sel_resolveDestinationTypeForStartAudioCall_withCompletion_, sel_resolveDestinationTypeForStartAudioCall_completion_, 0];
  v119[1] = v77;
  v76 = [[INIntentSlotDescription alloc] initWithName:@"preferredCallProvider" tag:5 facadePropertyName:@"preferredCallProvider" dataPropertyName:@"preferredCallProvider" isExtended:0 isPrivate:1 valueType:73 valueStyle:1 defaultValueSelectorStrings:0 provideOptionsSelectorStrings:0 resolutionResultClass:0 resolveSelectors:0];
  v119[2] = v76;
  v75 = [[INIntentSlotDescription alloc] initWithName:@"contact" tag:6 facadePropertyName:@"contacts" dataPropertyName:@"contacts" isExtended:0 isPrivate:0 valueType:18 valueStyle:3 defaultValueSelectorStrings:&unk_1F02D8BF8 provideOptionsSelectorStrings:&unk_1F02D8C10 resolutionResultClass:objc_opt_class() resolveSelectors:sel_resolveContactsForStartAudioCall_withCompletion_, sel_resolveContactsForStartAudioCall_completion_, 0];
  v119[3] = v75;
  v74 = [[INIntentSlotDescription alloc] initWithName:@"recordTypeForRedialing" tag:7 facadePropertyName:@"recordTypeForRedialing" dataPropertyName:@"recordTypeForRedialing" isExtended:0 isPrivate:1 valueType:71 valueStyle:1 defaultValueSelectorStrings:0 provideOptionsSelectorStrings:0 resolutionResultClass:0 resolveSelectors:0];
  v119[4] = v74;
  v73 = [[INIntentSlotDescription alloc] initWithName:@"ttyType" tag:8 facadePropertyName:@"ttyType" dataPropertyName:@"ttyType" isExtended:0 isPrivate:1 valueType:66 valueStyle:1 defaultValueSelectorStrings:0 provideOptionsSelectorStrings:0 resolutionResultClass:0 resolveSelectors:0];
  v119[5] = v73;
  v72 = [[INIntentSlotDescription alloc] initWithName:@"callRequestMetadata" tag:9 facadePropertyName:@"callRequestMetadata" dataPropertyName:@"callRequestMetadata" isExtended:0 isPrivate:1 valueType:83 valueStyle:1 defaultValueSelectorStrings:0 provideOptionsSelectorStrings:0 resolutionResultClass:0 resolveSelectors:0];
  v119[6] = v72;
  v71 = [MEMORY[0x1E695DEC8] arrayWithObjects:v119 count:7];
  v70 = _INIntentSchemaBuildIntentSlotDescriptionMap(v71);
  v69 = [(INIntentDescription *)v21 initWithName:@"StartAudioCallIntent" responseName:@"StartAudioCallIntentResponse" facadeClass:v22 dataClass:v23 type:@"sirikit.intent.call.StartAudioCallIntent" isPrivate:0 handleSelector:sel_handleStartAudioCall_completion_ confirmSelector:sel_confirmStartAudioCall_completion_ slotsByName:v70];
  v126[7] = v69;
  v62 = [INIntentDescription alloc];
  v60 = objc_opt_class();
  v59 = objc_opt_class();
  v68 = [[INIntentSlotDescription alloc] initWithName:@"callRecordFilter" tag:13 facadePropertyName:@"callRecordFilter" dataPropertyName:@"callRecordFilter" isExtended:0 isPrivate:0 valueType:78 valueStyle:1 defaultValueSelectorStrings:0 provideOptionsSelectorStrings:0 resolutionResultClass:0 resolveSelectors:0];
  v118[0] = v68;
  v67 = [[INIntentSlotDescription alloc] initWithName:@"callRecordToCallBack" tag:14 facadePropertyName:@"callRecordToCallBack" dataPropertyName:@"callRecordToCallBack" isExtended:0 isPrivate:0 valueType:74 valueStyle:1 defaultValueSelectorStrings:&unk_1F02D8C28 provideOptionsSelectorStrings:&unk_1F02D8C40 resolutionResultClass:objc_opt_class() resolveSelectors:sel_resolveCallRecordToCallBackForStartCall_withCompletion_, sel_resolveCallRecordToCallBackForStartCall_completion_, 0];
  v118[1] = v67;
  v66 = [INIntentSlotDescription initWithName:"initWithName:tag:facadePropertyName:dataPropertyName:isExtended:isPrivate:valueType:valueStyle:defaultValueSelectorStrings:provideOptionsSelectorStrings:resolutionResultClass:resolveSelectors:" tag:67 facadePropertyName:1 dataPropertyName:0 isExtended:0 isPrivate:0 valueType:0 valueStyle:? defaultValueSelectorStrings:? provideOptionsSelectorStrings:? resolutionResultClass:? resolveSelectors:?];
  v118[2] = v66;
  v65 = [[INIntentSlotDescription alloc] initWithName:@"destinationType" tag:3 facadePropertyName:@"destinationType" dataPropertyName:@"destinationType" isExtended:0 isPrivate:0 valueType:70 valueStyle:1 defaultValueSelectorStrings:&unk_1F02D8C58 provideOptionsSelectorStrings:&unk_1F02D8C70 resolutionResultClass:objc_opt_class() resolveSelectors:sel_resolveDestinationTypeForStartCall_withCompletion_, sel_resolveDestinationTypeForStartCall_completion_, 0];
  v118[3] = v65;
  v64 = [[INIntentSlotDescription alloc] initWithName:@"preferredCallProvider" tag:4 facadePropertyName:@"preferredCallProvider" dataPropertyName:@"preferredCallProvider" isExtended:0 isPrivate:1 valueType:73 valueStyle:1 defaultValueSelectorStrings:&unk_1F02D8C88 provideOptionsSelectorStrings:&unk_1F02D8CA0 resolutionResultClass:objc_opt_class() resolveSelectors:sel_resolvePreferredCallProviderForStartCall_withCompletion_, sel_resolvePreferredCallProviderForStartCall_completion_, 0];
  v118[4] = v64;
  v58 = [[INIntentSlotDescription alloc] initWithName:@"contacts" tag:5 facadePropertyName:@"contacts" dataPropertyName:@"contacts" isExtended:0 isPrivate:0 valueType:10 valueStyle:3 defaultValueSelectorStrings:&unk_1F02D8CB8 provideOptionsSelectorStrings:&unk_1F02D8CD0 resolutionResultClass:objc_opt_class() resolveSelectors:sel_resolveContactsForStartCall_withCompletion_, sel_resolveContactsForStartCall_completion_, 0];
  v118[5] = v58;
  v57 = [[INIntentSlotDescription alloc] initWithName:@"ttyType" tag:7 facadePropertyName:@"ttyType" dataPropertyName:@"ttyType" isExtended:0 isPrivate:1 valueType:66 valueStyle:1 defaultValueSelectorStrings:0 provideOptionsSelectorStrings:0 resolutionResultClass:0 resolveSelectors:0];
  v118[6] = v57;
  v56 = [[INIntentSlotDescription alloc] initWithName:@"callCapability" tag:8 facadePropertyName:@"callCapability" dataPropertyName:@"callCapability" isExtended:0 isPrivate:0 valueType:69 valueStyle:1 defaultValueSelectorStrings:&unk_1F02D8CE8 provideOptionsSelectorStrings:&unk_1F02D8D00 resolutionResultClass:objc_opt_class() resolveSelectors:sel_resolveCallCapabilityForStartCall_withCompletion_, sel_resolveCallCapabilityForStartCall_completion_, 0];
  v118[7] = v56;
  v55 = [[INIntentSlotDescription alloc] initWithName:@"isGroupCall" tag:9 facadePropertyName:@"isGroupCall" dataPropertyName:@"isGroupCall" isExtended:0 isPrivate:1 valueType:1 valueStyle:1 defaultValueSelectorStrings:0 provideOptionsSelectorStrings:0 resolutionResultClass:0 resolveSelectors:0];
  v118[8] = v55;
  v54 = [[INIntentSlotDescription alloc] initWithName:@"callGroups" tag:10 facadePropertyName:@"callGroups" dataPropertyName:@"callGroups" isExtended:0 isPrivate:1 valueType:79 valueStyle:3 defaultValueSelectorStrings:0 provideOptionsSelectorStrings:0 resolutionResultClass:0 resolveSelectors:0];
  v118[9] = v54;
  v53 = [[INIntentSlotDescription alloc] initWithName:@"notificationThreadIdentifier" tag:11 facadePropertyName:@"notificationThreadIdentifier" dataPropertyName:@"notificationThreadIdentifier" isExtended:0 isPrivate:1 valueType:7 valueStyle:1 defaultValueSelectorStrings:0 provideOptionsSelectorStrings:0 resolutionResultClass:0 resolveSelectors:0];
  v118[10] = v53;
  v52 = [[INIntentSlotDescription alloc] initWithName:@"faceTimeLink" tag:12 facadePropertyName:@"faceTimeLink" dataPropertyName:@"faceTimeLink" isExtended:0 isPrivate:1 valueType:7 valueStyle:1 defaultValueSelectorStrings:&unk_1F02D8D18 provideOptionsSelectorStrings:&unk_1F02D8D30 resolutionResultClass:objc_opt_class() resolveSelectors:sel_resolveFaceTimeLinkForStartCall_withCompletion_, sel_resolveFaceTimeLinkForStartCall_completion_, 0];
  v118[11] = v52;
  v51 = [INIntentSlotDescription initWithName:"initWithName:tag:facadePropertyName:dataPropertyName:isExtended:isPrivate:valueType:valueStyle:defaultValueSelectorStrings:provideOptionsSelectorStrings:resolutionResultClass:resolveSelectors:" tag:83 facadePropertyName:1 dataPropertyName:0 isExtended:0 isPrivate:0 valueType:0 valueStyle:? defaultValueSelectorStrings:? provideOptionsSelectorStrings:? resolutionResultClass:? resolveSelectors:?];
  v118[12] = v51;
  v50 = [MEMORY[0x1E695DEC8] arrayWithObjects:v118 count:13];
  v49 = _INIntentSchemaBuildIntentSlotDescriptionMap(v50);
  v24 = [(INIntentDescription *)v62 initWithName:@"StartCallIntent" responseName:@"StartCallIntentResponse" facadeClass:v60 dataClass:v59 type:@"sirikit.intent.call.StartCallIntent" isPrivate:0 handleSelector:sel_handleStartCall_completion_ confirmSelector:sel_confirmStartCall_completion_ slotsByName:v49];
  v126[8] = v24;
  v63 = [INIntentDescription alloc];
  v61 = objc_opt_class();
  v25 = objc_opt_class();
  v26 = [[INIntentSlotDescription alloc] initWithName:@"audioRoute" tag:3 facadePropertyName:@"audioRoute" dataPropertyName:@"audioRoute" isExtended:0 isPrivate:1 valueType:67 valueStyle:1 defaultValueSelectorStrings:0 provideOptionsSelectorStrings:0 resolutionResultClass:0 resolveSelectors:0];
  v117[0] = v26;
  v27 = [[INIntentSlotDescription alloc] initWithName:@"contact" tag:4 facadePropertyName:@"contacts" dataPropertyName:@"contacts" isExtended:0 isPrivate:0 valueType:18 valueStyle:3 defaultValueSelectorStrings:&unk_1F02D8D48 provideOptionsSelectorStrings:&unk_1F02D8D60 resolutionResultClass:objc_opt_class() resolveSelectors:sel_resolveContactsForStartVideoCall_withCompletion_, sel_resolveContactsForStartVideoCall_completion_, 0];
  v117[1] = v27;
  v28 = [[INIntentSlotDescription alloc] initWithName:@"callRequestMetadata" tag:5 facadePropertyName:@"callRequestMetadata" dataPropertyName:@"callRequestMetadata" isExtended:0 isPrivate:1 valueType:83 valueStyle:1 defaultValueSelectorStrings:0 provideOptionsSelectorStrings:0 resolutionResultClass:0 resolveSelectors:0];
  v117[2] = v28;
  v29 = [MEMORY[0x1E695DEC8] arrayWithObjects:v117 count:3];
  v30 = _INIntentSchemaBuildIntentSlotDescriptionMap(v29);
  v31 = [(INIntentDescription *)v63 initWithName:@"StartVideoCallIntent" responseName:@"StartVideoCallIntentResponse" facadeClass:v61 dataClass:v25 type:@"sirikit.intent.call.StartVideoCallIntent" isPrivate:0 handleSelector:sel_handleStartVideoCall_completion_ confirmSelector:sel_confirmStartVideoCall_completion_ slotsByName:v30];
  v126[9] = v31;
  v32 = [MEMORY[0x1E695DEC8] arrayWithObjects:v126 count:10];

  v33 = [v32 count];
  v34 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:v33];
  v35 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:v33];
  v112 = 0u;
  v113 = 0u;
  v114 = 0u;
  v115 = 0u;
  v36 = v32;
  v37 = [v36 countByEnumeratingWithState:&v112 objects:v116 count:16];
  if (v37)
  {
    v38 = v37;
    v39 = *v113;
    do
    {
      for (i = 0; i != v38; ++i)
      {
        if (*v113 != v39)
        {
          objc_enumerationMutation(v36);
        }

        v41 = *(*(&v112 + 1) + 8 * i);
        v42 = [v41 name];
        [v34 setObject:v41 forKey:v42];

        v43 = [v41 type];
        [v35 setObject:v41 forKey:v43];
      }

      v38 = [v36 countByEnumeratingWithState:&v112 objects:v116 count:16];
    }

    while (v38);
  }

  v44 = [v34 copy];
  v45 = sCallsDomain_intentDescsByName;
  sCallsDomain_intentDescsByName = v44;

  v46 = [v35 copy];
  v47 = sCallsDomain_intentDescsByType;
  sCallsDomain_intentDescsByType = v46;

  v48 = *MEMORY[0x1E69E9840];
}

@end