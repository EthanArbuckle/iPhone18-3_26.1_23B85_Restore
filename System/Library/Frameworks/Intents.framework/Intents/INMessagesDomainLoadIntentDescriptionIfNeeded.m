@interface INMessagesDomainLoadIntentDescriptionIfNeeded
@end

@implementation INMessagesDomainLoadIntentDescriptionIfNeeded

void ___INMessagesDomainLoadIntentDescriptionIfNeeded_block_invoke()
{
  v99[7] = *MEMORY[0x1E69E9840];
  v0 = [INIntentDescription alloc];
  v1 = objc_opt_class();
  v2 = objc_opt_class();
  v86 = [[INIntentSlotDescription alloc] initWithName:@"messageIdentifier" tag:2 facadePropertyName:@"messageIdentifier" dataPropertyName:@"messageIdentifier" isExtended:0 isPrivate:0 valueType:7 valueStyle:1 defaultValueSelectorStrings:0 provideOptionsSelectorStrings:0 resolutionResultClass:0 resolveSelectors:0];
  v98[0] = v86;
  v85 = [[INIntentSlotDescription alloc] initWithName:@"editedContent" tag:3 facadePropertyName:@"editedContent" dataPropertyName:@"editedContent" isExtended:0 isPrivate:0 valueType:7 valueStyle:1 defaultValueSelectorStrings:&unk_1F02D9A68 provideOptionsSelectorStrings:&unk_1F02D9A80 resolutionResultClass:objc_opt_class() resolveSelectors:sel_resolveEditedContentForEditMessage_withCompletion_, sel_resolveEditedContentForEditMessage_completion_, 0];
  v98[1] = v85;
  v84 = [MEMORY[0x1E695DEC8] arrayWithObjects:v98 count:2];
  v83 = _INIntentSchemaBuildIntentSlotDescriptionMap(v84);
  v82 = [(INIntentDescription *)v0 initWithName:@"EditMessageIntent" responseName:@"EditMessageIntentResponse" facadeClass:v1 dataClass:v2 type:@"sirikit.intent.messages.EditMessageIntent" isPrivate:0 handleSelector:sel_handleEditMessage_completion_ confirmSelector:sel_confirmEditMessage_completion_ slotsByName:v83];
  v99[0] = v82;
  v3 = [INIntentDescription alloc];
  v4 = objc_opt_class();
  v5 = objc_opt_class();
  v81 = [[INIntentSlotDescription alloc] initWithName:@"messageIdentifier" tag:2 facadePropertyName:@"messageIdentifier" dataPropertyName:@"messageIdentifier" isExtended:0 isPrivate:0 valueType:7 valueStyle:1 defaultValueSelectorStrings:0 provideOptionsSelectorStrings:0 resolutionResultClass:0 resolveSelectors:0];
  v97 = v81;
  v80 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v97 count:1];
  v79 = _INIntentSchemaBuildIntentSlotDescriptionMap(v80);
  v78 = [(INIntentDescription *)v3 initWithName:@"PlayAudioMessageIntent" responseName:@"PlayAudioMessageIntentResponse" facadeClass:v4 dataClass:v5 type:@"sirikit.intent.messages.PlayAudioMessageIntent" isPrivate:0 handleSelector:sel_handlePlayAudioMessage_completion_ confirmSelector:sel_confirmPlayAudioMessage_completion_ slotsByName:v79];
  v99[1] = v78;
  v6 = [INIntentDescription alloc];
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v77 = [[INIntentSlotDescription alloc] initWithName:@"soundType" tag:2 facadePropertyName:@"soundType" dataPropertyName:@"soundType" isExtended:0 isPrivate:0 valueType:91 valueStyle:1 defaultValueSelectorStrings:0 provideOptionsSelectorStrings:0 resolutionResultClass:0 resolveSelectors:0];
  v96[0] = v77;
  v76 = [[INIntentSlotDescription alloc] initWithName:@"messageIdentifier" tag:3 facadePropertyName:@"messageIdentifier" dataPropertyName:@"messageIdentifier" isExtended:0 isPrivate:0 valueType:7 valueStyle:1 defaultValueSelectorStrings:0 provideOptionsSelectorStrings:0 resolutionResultClass:0 resolveSelectors:0];
  v96[1] = v76;
  v75 = [MEMORY[0x1E695DEC8] arrayWithObjects:v96 count:2];
  v74 = _INIntentSchemaBuildIntentSlotDescriptionMap(v75);
  v73 = [(INIntentDescription *)v6 initWithName:@"PlayMessageSoundIntent" responseName:@"PlayMessageSoundIntentResponse" facadeClass:v7 dataClass:v8 type:@"sirikit.intent.messages.PlayMessageSoundIntent" isPrivate:0 handleSelector:sel_handlePlayMessageSound_completion_ confirmSelector:sel_confirmPlayMessageSound_completion_ slotsByName:v74];
  v99[2] = v73;
  v60 = [INIntentDescription alloc];
  v58 = objc_opt_class();
  v9 = objc_opt_class();
  v72 = [[INIntentSlotDescription alloc] initWithName:@"recipient" tag:2 facadePropertyName:@"recipients" dataPropertyName:@"recipients" isExtended:0 isPrivate:0 valueType:11 valueStyle:1 defaultValueSelectorStrings:&unk_1F02D9A98 provideOptionsSelectorStrings:&unk_1F02D9AB0 resolutionResultClass:objc_opt_class() resolveSelectors:sel_resolveRecipientsForSearchForMessages_withCompletion_, sel_resolveRecipientsForSearchForMessages_completion_, 0];
  v95[0] = v72;
  v71 = [[INIntentSlotDescription alloc] initWithName:@"sender" tag:3 facadePropertyName:@"senders" dataPropertyName:@"senders" isExtended:0 isPrivate:0 valueType:11 valueStyle:1 defaultValueSelectorStrings:&unk_1F02D9AC8 provideOptionsSelectorStrings:&unk_1F02D9AE0 resolutionResultClass:objc_opt_class() resolveSelectors:sel_resolveSendersForSearchForMessages_withCompletion_, sel_resolveSendersForSearchForMessages_completion_, 0];
  v95[1] = v71;
  v70 = [[INIntentSlotDescription alloc] initWithName:@"searchTerm" tag:9 facadePropertyName:@"searchTerms" dataPropertyName:@"searchTerms" isExtended:0 isPrivate:0 valueType:31 valueStyle:1 defaultValueSelectorStrings:0 provideOptionsSelectorStrings:0 resolutionResultClass:0 resolveSelectors:0];
  v95[2] = v70;
  v69 = [[INIntentSlotDescription alloc] initWithName:@"attribute" tag:5 facadePropertyName:@"attributes" dataPropertyName:@"attributes" isExtended:0 isPrivate:0 valueType:85 valueStyle:3 defaultValueSelectorStrings:&unk_1F02D9AF8 provideOptionsSelectorStrings:&unk_1F02D9B10 resolutionResultClass:objc_opt_class() resolveSelectors:sel_resolveAttributesForSearchForMessages_withCompletion_, sel_resolveAttributesForSearchForMessages_completion_, 0];
  v95[3] = v69;
  v68 = [[INIntentSlotDescription alloc] initWithName:@"dateTimeRange" tag:6 facadePropertyName:@"dateTimeRange" dataPropertyName:@"dateTimeRange" isExtended:0 isPrivate:0 valueType:16 valueStyle:1 defaultValueSelectorStrings:&unk_1F02D9B28 provideOptionsSelectorStrings:&unk_1F02D9B40 resolutionResultClass:objc_opt_class() resolveSelectors:sel_resolveDateTimeRangeForSearchForMessages_withCompletion_, sel_resolveDateTimeRangeForSearchForMessages_completion_, 0];
  v95[4] = v68;
  v67 = [[INIntentSlotDescription alloc] initWithName:@"identifier" tag:7 facadePropertyName:@"identifiers" dataPropertyName:@"identifiers" isExtended:0 isPrivate:0 valueType:31 valueStyle:1 defaultValueSelectorStrings:0 provideOptionsSelectorStrings:0 resolutionResultClass:0 resolveSelectors:0];
  v95[5] = v67;
  v66 = [[INIntentSlotDescription alloc] initWithName:@"notificationIdentifier" tag:8 facadePropertyName:@"notificationIdentifiers" dataPropertyName:@"notificationIdentifiers" isExtended:0 isPrivate:0 valueType:31 valueStyle:1 defaultValueSelectorStrings:0 provideOptionsSelectorStrings:0 resolutionResultClass:0 resolveSelectors:0];
  v95[6] = v66;
  v65 = [[INIntentSlotDescription alloc] initWithName:@"speakableGroupName" tag:11 facadePropertyName:@"speakableGroupNames" dataPropertyName:@"speakableGroupNames" isExtended:0 isPrivate:0 valueType:13 valueStyle:1 defaultValueSelectorStrings:&unk_1F02D9B58 provideOptionsSelectorStrings:&unk_1F02D9B70 resolutionResultClass:objc_opt_class() resolveSelectors:sel_resolveSpeakableGroupNamesForSearchForMessages_withCompletion_, sel_resolveSpeakableGroupNamesForSearchForMessages_completion_, 0];
  v95[7] = v65;
  v64 = [[INIntentSlotDescription alloc] initWithName:@"conversationIdentifier" tag:12 facadePropertyName:@"conversationIdentifiers" dataPropertyName:@"conversationIdentifiers" isExtended:0 isPrivate:0 valueType:31 valueStyle:1 defaultValueSelectorStrings:0 provideOptionsSelectorStrings:0 resolutionResultClass:0 resolveSelectors:0];
  v95[8] = v64;
  v63 = [MEMORY[0x1E695DEC8] arrayWithObjects:v95 count:9];
  v62 = _INIntentSchemaBuildIntentSlotDescriptionMap(v63);
  v61 = [(INIntentDescription *)v60 initWithName:@"SearchForMessagesIntent" responseName:@"SearchForMessagesIntentResponse" facadeClass:v58 dataClass:v9 type:@"sirikit.intent.messages.SearchForMessagesIntent" isPrivate:0 handleSelector:sel_handleSearchForMessages_completion_ confirmSelector:sel_confirmSearchForMessages_completion_ slotsByName:v62];
  v99[3] = v61;
  v50 = [INIntentDescription alloc];
  v48 = objc_opt_class();
  v46 = objc_opt_class();
  v59 = [[INIntentSlotDescription alloc] initWithName:@"recipient" tag:2 facadePropertyName:@"recipients" dataPropertyName:@"recipients" isExtended:0 isPrivate:0 valueType:10 valueStyle:3 defaultValueSelectorStrings:&unk_1F02D9B88 provideOptionsSelectorStrings:&unk_1F02D9BA0 resolutionResultClass:objc_opt_class() resolveSelectors:sel_resolveRecipientsForSendMessage_completion_, sel_resolveRecipientsForSendMessage_withCompletion_, 0];
  v94[0] = v59;
  v57 = [[INIntentSlotDescription alloc] initWithName:@"outgoingMessageType" tag:14 facadePropertyName:@"outgoingMessageType" dataPropertyName:@"outgoingMessageType" isExtended:0 isPrivate:0 valueType:90 valueStyle:1 defaultValueSelectorStrings:&unk_1F02D9BB8 provideOptionsSelectorStrings:&unk_1F02D9BD0 resolutionResultClass:objc_opt_class() resolveSelectors:sel_resolveOutgoingMessageTypeForSendMessage_withCompletion_, sel_resolveOutgoingMessageTypeForSendMessage_completion_, 0];
  v94[1] = v57;
  v56 = [[INIntentSlotDescription alloc] initWithName:@"content" tag:5 facadePropertyName:@"content" dataPropertyName:@"content" isExtended:0 isPrivate:0 valueType:30 valueStyle:1 defaultValueSelectorStrings:&unk_1F02D9BE8 provideOptionsSelectorStrings:&unk_1F02D9C00 resolutionResultClass:objc_opt_class() resolveSelectors:sel_resolveContentForSendMessage_withCompletion_, sel_resolveContentForSendMessage_completion_, 0];
  v94[2] = v56;
  v55 = [[INIntentSlotDescription alloc] initWithName:@"speakableGroupName" tag:7 facadePropertyName:@"speakableGroupName" dataPropertyName:@"speakableGroupName" isExtended:0 isPrivate:0 valueType:12 valueStyle:1 defaultValueSelectorStrings:&unk_1F02D9C18 provideOptionsSelectorStrings:&unk_1F02D9C30 resolutionResultClass:objc_opt_class() resolveSelectors:sel_resolveSpeakableGroupNameForSendMessage_withCompletion_, sel_resolveGroupNameForSendMessage_withCompletion_, sel_resolveGroupNameForSendMessage_completion_, 0];
  v94[3] = v55;
  v54 = [[INIntentSlotDescription alloc] initWithName:@"conversationIdentifier" tag:8 facadePropertyName:@"conversationIdentifier" dataPropertyName:@"conversationIdentifier" isExtended:0 isPrivate:0 valueType:7 valueStyle:1 defaultValueSelectorStrings:0 provideOptionsSelectorStrings:0 resolutionResultClass:0 resolveSelectors:0];
  v94[4] = v54;
  v53 = [[INIntentSlotDescription alloc] initWithName:@"serviceName" tag:9 facadePropertyName:@"serviceName" dataPropertyName:@"serviceName" isExtended:0 isPrivate:0 valueType:7 valueStyle:1 defaultValueSelectorStrings:0 provideOptionsSelectorStrings:0 resolutionResultClass:0 resolveSelectors:0];
  v94[5] = v53;
  v52 = [[INIntentSlotDescription alloc] initWithName:@"sender" tag:10 facadePropertyName:@"sender" dataPropertyName:@"sender" isExtended:0 isPrivate:0 valueType:10 valueStyle:1 defaultValueSelectorStrings:0 provideOptionsSelectorStrings:0 resolutionResultClass:0 resolveSelectors:0];
  v94[6] = v52;
  v44 = [[INIntentSlotDescription alloc] initWithName:@"effect" tag:12 facadePropertyName:@"effect" dataPropertyName:@"effect" isExtended:0 isPrivate:1 valueType:88 valueStyle:1 defaultValueSelectorStrings:&unk_1F02D9C48 provideOptionsSelectorStrings:&unk_1F02D9C60 resolutionResultClass:objc_opt_class() resolveSelectors:sel_resolveEffectForSendMessage_withCompletion_, sel_resolveEffectForSendMessage_completion_, 0];
  v94[7] = v44;
  v43 = [[INIntentSlotDescription alloc] initWithName:@"attachments" tag:13 facadePropertyName:@"attachments" dataPropertyName:@"attachments" isExtended:0 isPrivate:0 valueType:86 valueStyle:3 defaultValueSelectorStrings:0 provideOptionsSelectorStrings:0 resolutionResultClass:0 resolveSelectors:0];
  v94[8] = v43;
  v42 = [[INIntentSlotDescription alloc] initWithName:@"notificationThreadIdentifier" tag:15 facadePropertyName:@"notificationThreadIdentifier" dataPropertyName:@"notificationThreadIdentifier" isExtended:0 isPrivate:1 valueType:7 valueStyle:1 defaultValueSelectorStrings:0 provideOptionsSelectorStrings:0 resolutionResultClass:0 resolveSelectors:0];
  v94[9] = v42;
  v41 = [[INIntentSlotDescription alloc] initWithName:@"alternativeConversationIdentifier" tag:16 facadePropertyName:@"alternativeConversationIdentifier" dataPropertyName:@"alternativeConversationIdentifier" isExtended:0 isPrivate:1 valueType:7 valueStyle:1 defaultValueSelectorStrings:&unk_1F02D9C78 provideOptionsSelectorStrings:&unk_1F02D9C90 resolutionResultClass:objc_opt_class() resolveSelectors:sel_resolveAlternativeConversationIdentifierForSendMessage_withCompletion_, sel_resolveAlternativeConversationIdentifierForSendMessage_completion_, 0];
  v94[10] = v41;
  v40 = [MEMORY[0x1E695DEC8] arrayWithObjects:v94 count:11];
  v39 = _INIntentSchemaBuildIntentSlotDescriptionMap(v40);
  v51 = [(INIntentDescription *)v50 initWithName:@"SendMessageIntent" responseName:@"SendMessageIntentResponse" facadeClass:v48 dataClass:v46 type:@"sirikit.intent.messages.SendMessageIntent" isPrivate:0 handleSelector:sel_handleSendMessage_completion_ confirmSelector:sel_confirmSendMessage_completion_ slotsByName:v39];
  v99[4] = v51;
  v10 = [INIntentDescription alloc];
  v11 = objc_opt_class();
  v12 = objc_opt_class();
  v49 = [[INIntentSlotDescription alloc] initWithName:@"identifier" tag:2 facadePropertyName:@"identifiers" dataPropertyName:@"identifiers" isExtended:0 isPrivate:0 valueType:7 valueStyle:3 defaultValueSelectorStrings:0 provideOptionsSelectorStrings:0 resolutionResultClass:0 resolveSelectors:0];
  v93[0] = v49;
  v47 = [[INIntentSlotDescription alloc] initWithName:@"attribute" tag:3 facadePropertyName:@"attribute" dataPropertyName:@"attribute" isExtended:0 isPrivate:0 valueType:84 valueStyle:1 defaultValueSelectorStrings:&unk_1F02D9CA8 provideOptionsSelectorStrings:&unk_1F02D9CC0 resolutionResultClass:objc_opt_class() resolveSelectors:sel_resolveAttributeForSetMessageAttribute_withCompletion_, sel_resolveAttributeForSetMessageAttribute_completion_, 0];
  v93[1] = v47;
  v45 = [MEMORY[0x1E695DEC8] arrayWithObjects:v93 count:2];
  v38 = _INIntentSchemaBuildIntentSlotDescriptionMap(v45);
  v13 = [(INIntentDescription *)v10 initWithName:@"SetMessageAttributeIntent" responseName:@"SetMessageAttributeIntentResponse" facadeClass:v11 dataClass:v12 type:@"sirikit.intent.messages.SetMessageAttributeIntent" isPrivate:0 handleSelector:sel_handleSetMessageAttribute_completion_ confirmSelector:sel_confirmSetMessageAttribute_completion_ slotsByName:v38];
  v99[5] = v13;
  v14 = [INIntentDescription alloc];
  v15 = objc_opt_class();
  v16 = objc_opt_class();
  v17 = [[INIntentSlotDescription alloc] initWithName:@"messageIdentifiers" tag:2 facadePropertyName:@"messageIdentifiers" dataPropertyName:@"messageIdentifiers" isExtended:0 isPrivate:0 valueType:7 valueStyle:3 defaultValueSelectorStrings:0 provideOptionsSelectorStrings:0 resolutionResultClass:0 resolveSelectors:0];
  v92 = v17;
  v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v92 count:1];
  v19 = _INIntentSchemaBuildIntentSlotDescriptionMap(v18);
  v20 = [(INIntentDescription *)v14 initWithName:@"UnsendMessagesIntent" responseName:@"UnsendMessagesIntentResponse" facadeClass:v15 dataClass:v16 type:@"sirikit.intent.messages.UnsendMessagesIntent" isPrivate:0 handleSelector:sel_handleUnsendMessages_completion_ confirmSelector:sel_confirmUnsendMessages_completion_ slotsByName:v19];
  v99[6] = v20;
  v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:v99 count:7];

  v22 = [v21 count];
  v23 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:v22];
  v24 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:v22];
  v87 = 0u;
  v88 = 0u;
  v89 = 0u;
  v90 = 0u;
  v25 = v21;
  v26 = [v25 countByEnumeratingWithState:&v87 objects:v91 count:16];
  if (v26)
  {
    v27 = v26;
    v28 = *v88;
    do
    {
      for (i = 0; i != v27; ++i)
      {
        if (*v88 != v28)
        {
          objc_enumerationMutation(v25);
        }

        v30 = *(*(&v87 + 1) + 8 * i);
        v31 = [v30 name];
        [v23 setObject:v30 forKey:v31];

        v32 = [v30 type];
        [v24 setObject:v30 forKey:v32];
      }

      v27 = [v25 countByEnumeratingWithState:&v87 objects:v91 count:16];
    }

    while (v27);
  }

  v33 = [v23 copy];
  v34 = sMessagesDomain_intentDescsByName;
  sMessagesDomain_intentDescsByName = v33;

  v35 = [v24 copy];
  v36 = sMessagesDomain_intentDescsByType;
  sMessagesDomain_intentDescsByType = v35;

  v37 = *MEMORY[0x1E69E9840];
}

@end