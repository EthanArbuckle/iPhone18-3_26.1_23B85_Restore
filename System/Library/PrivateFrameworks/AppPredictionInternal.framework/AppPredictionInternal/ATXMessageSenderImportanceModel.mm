@interface ATXMessageSenderImportanceModel
- (id)calculateSenderImportanceForMessageWithContextRequest:(id)request contactStore:(id)store contactRelationships:(id)relationships;
@end

@implementation ATXMessageSenderImportanceModel

- (id)calculateSenderImportanceForMessageWithContextRequest:(id)request contactStore:(id)store contactRelationships:(id)relationships
{
  v86 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  storeCopy = store;
  relationshipsCopy = relationships;
  v10 = objc_opt_new();
  textMessage = [requestCopy textMessage];
  sender = [textMessage sender];
  v12 = [ATXSenderImportanceUtils contactFromHandle:"contactFromHandle:contactStore:" contactStore:?];
  v13 = 0.0;
  v14 = 0.0;
  v15 = 0.0;
  v16 = 0.0;
  v17 = 0.0;
  v79 = v12;
  v80 = textMessage;
  if (v12)
  {
    v18 = v12;
    cnContactIdsOfFavoriteContacts = [relationshipsCopy cnContactIdsOfFavoriteContacts];
    identifier = [v18 identifier];
    v21 = [cnContactIdsOfFavoriteContacts containsObject:identifier];

    v15 = 1.0;
    if (v21)
    {
      v17 = 1.0;
    }

    else
    {
      v17 = 0.0;
    }

    cnContactIdsOfEmergencyContacts = [relationshipsCopy cnContactIdsOfEmergencyContacts];
    identifier2 = [v18 identifier];
    v24 = [cnContactIdsOfEmergencyContacts containsObject:identifier2];

    if (v24)
    {
      v16 = 1.0;
    }

    else
    {
      v16 = 0.0;
    }

    cnContactIdsOfICloudFamilyMembers = [relationshipsCopy cnContactIdsOfICloudFamilyMembers];
    identifier3 = [v18 identifier];
    v27 = [cnContactIdsOfICloudFamilyMembers containsObject:identifier3];

    if (!v27)
    {
      v15 = 0.0;
    }

    v83 = 0u;
    v84 = 0u;
    v81 = 0u;
    v82 = 0u;
    emailAddresses = [v18 emailAddresses];
    v29 = [emailAddresses countByEnumeratingWithState:&v81 objects:v85 count:16];
    if (v29)
    {
      v30 = v29;
      v76 = storeCopy;
      v77 = requestCopy;
      v31 = 0;
      v32 = *v82;
      do
      {
        for (i = 0; i != v30; ++i)
        {
          if (*v82 != v32)
          {
            objc_enumerationMutation(emailAddresses);
          }

          v34 = *(*(&v81 + 1) + 8 * i);
          vipContactEmailAddresses = [relationshipsCopy vipContactEmailAddresses];
          value = [v34 value];
          v37 = [vipContactEmailAddresses containsObject:value];

          v31 |= v37;
        }

        v30 = [emailAddresses countByEnumeratingWithState:&v81 objects:v85 count:16];
      }

      while (v30);
      v14 = (v31 & 1);
      storeCopy = v76;
      requestCopy = v77;
      textMessage = v80;
    }
  }

  contextRequestSignals = [requestCopy contextRequestSignals];
  entityID = [contextRequestSignals entityID];
  messageID = [textMessage messageID];
  v41 = [entityID isEqualToString:messageID];

  if (v41)
  {
    isFromPinnedMessage = [contextRequestSignals isFromPinnedMessage];
    if ([isFromPinnedMessage BOOLValue])
    {
      v41 = 1;
    }

    else
    {
      identifier4 = [v79 identifier];
      if (identifier4)
      {
        cnContactIdsOfPinnedChatsInMessage = [relationshipsCopy cnContactIdsOfPinnedChatsInMessage];
        identifier5 = [v79 identifier];
        v41 = [cnContactIdsOfPinnedChatsInMessage containsObject:identifier5];
      }

      else
      {
        v41 = 0;
      }
    }

    isAudioMessage = [contextRequestSignals isAudioMessage];
    bOOLValue = [isAudioMessage BOOLValue];

    isFromGroupMessage = [contextRequestSignals isFromGroupMessage];
    if ([isFromGroupMessage BOOLValue])
    {
      isMentionedInGroup = [contextRequestSignals isMentionedInGroup];
      bOOLValue2 = [isMentionedInGroup BOOLValue];

      if (bOOLValue2)
      {
        v13 = 1.0;
      }

      else
      {
        v13 = 0.0;
      }
    }

    else
    {
    }
  }

  else
  {
    bOOLValue = 0;
  }

  [v10 isFavoriteContact];
  v52 = v17 * v51;
  [v10 isEmergencyContact];
  v54 = v16 * v53;
  [v10 isiCloudFamilyMember];
  v56 = v15 * v55;
  [v10 isVIP];
  v58 = v14 * v57;
  [v10 isContactChatPinnedInMessage];
  v60 = v59 * v41;
  [v10 isAudioMessage];
  v62 = v61 * bOOLValue;
  [v10 isMentionedInGroupMessage];
  v64 = v13 * v63;
  v65 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v66 = [MEMORY[0x277CCABB0] numberWithDouble:v52];
  [v65 setObject:v66 forKeyedSubscript:@"isFavorite"];

  v67 = [MEMORY[0x277CCABB0] numberWithDouble:v54];
  [v65 setObject:v67 forKeyedSubscript:@"isEmergency"];

  v68 = [MEMORY[0x277CCABB0] numberWithDouble:v56];
  [v65 setObject:v68 forKeyedSubscript:@"isFamily"];

  v69 = [MEMORY[0x277CCABB0] numberWithDouble:v58];
  [v65 setObject:v69 forKeyedSubscript:@"isVIP"];

  v70 = [MEMORY[0x277CCABB0] numberWithDouble:v60];
  [v65 setObject:v70 forKeyedSubscript:@"isFromPinnedContactInMessage"];

  v71 = [MEMORY[0x277CCABB0] numberWithDouble:v62];
  [v65 setObject:v71 forKeyedSubscript:@"isAudioMessage"];

  v72 = [MEMORY[0x277CCABB0] numberWithDouble:v64];
  [v65 setObject:v72 forKeyedSubscript:@"isMentionedInGroupMessage"];

  v73 = [[ATXSenderImportance alloc] initWithSenderImportanceScore:v65 featureDictionary:fmin(fmax(v52 + v54 + v56 + v58 + v60 + v62 + v64 + 0.0, 0.0), 1.0)];
  v74 = *MEMORY[0x277D85DE8];

  return v73;
}

@end