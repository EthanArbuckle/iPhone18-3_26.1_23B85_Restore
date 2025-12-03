@interface ATXMailSenderImportanceModel
- (id)calculateSenderImportanceForMailWithContextRequest:(id)request contactStore:(id)store contactRelationships:(id)relationships;
@end

@implementation ATXMailSenderImportanceModel

- (id)calculateSenderImportanceForMailWithContextRequest:(id)request contactStore:(id)store contactRelationships:(id)relationships
{
  v82 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  storeCopy = store;
  relationshipsCopy = relationships;
  v10 = objc_opt_new();
  mailMessage = [requestCopy mailMessage];
  sender = [mailMessage sender];
  v12 = [ATXSenderImportanceUtils contactFromHandle:"contactFromHandle:contactStore:" contactStore:?];
  v13 = 0.0;
  v14 = 0.0;
  v15 = 0.0;
  v16 = 0.0;
  v17 = 0.0;
  v75 = v12;
  v76 = requestCopy;
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

    v79 = 0u;
    v80 = 0u;
    v77 = 0u;
    v78 = 0u;
    emailAddresses = [v18 emailAddresses];
    v29 = [emailAddresses countByEnumeratingWithState:&v77 objects:v81 count:16];
    if (v29)
    {
      v30 = v29;
      v71 = mailMessage;
      v72 = storeCopy;
      v31 = 0;
      v32 = *v78;
      do
      {
        for (i = 0; i != v30; ++i)
        {
          if (*v78 != v32)
          {
            objc_enumerationMutation(emailAddresses);
          }

          v34 = *(*(&v77 + 1) + 8 * i);
          vipContactEmailAddresses = [relationshipsCopy vipContactEmailAddresses];
          value = [v34 value];
          v37 = [vipContactEmailAddresses containsObject:value];

          v31 |= v37;
        }

        v30 = [emailAddresses countByEnumeratingWithState:&v77 objects:v81 count:16];
      }

      while (v30);
      v14 = (v31 & 1);
      requestCopy = v76;
      mailMessage = v71;
      storeCopy = v72;
    }
  }

  contextRequestSignals = [requestCopy contextRequestSignals];
  entityID = [contextRequestSignals entityID];
  v40 = mailMessage;
  mailID = [mailMessage mailID];
  bOOLValue = [entityID isEqualToString:mailID];

  if (bOOLValue)
  {
    isFromMailingList = [contextRequestSignals isFromMailingList];
    bOOLValue = [isFromMailingList BOOLValue];

    isFromPinnedMessage = [contextRequestSignals isFromPinnedMessage];
    if ([isFromPinnedMessage BOOLValue])
    {

LABEL_24:
      v13 = 1.0;
      goto LABEL_26;
    }

    identifier4 = [v75 identifier];
    if (identifier4)
    {
      v46 = identifier4;
      cnContactIdsOfPinnedChatsInMessage = [relationshipsCopy cnContactIdsOfPinnedChatsInMessage];
      identifier5 = [v75 identifier];
      v73 = [cnContactIdsOfPinnedChatsInMessage containsObject:identifier5];

      if (!v73)
      {
        goto LABEL_26;
      }

      goto LABEL_24;
    }
  }

LABEL_26:
  [v10 isFavoriteContact];
  v50 = v17 * v49;
  [v10 isEmergencyContact];
  v52 = v16 * v51;
  [v10 isiCloudFamilyMember];
  v54 = v15 * v53;
  [v10 isVIP];
  v56 = v14 * v55;
  [v10 isFromMailingList];
  v58 = v57 * bOOLValue;
  [v10 isContactChatPinnedInMessage];
  v60 = v13 * v59;
  v61 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v62 = [MEMORY[0x277CCABB0] numberWithDouble:v50];
  [v61 setObject:v62 forKeyedSubscript:@"isFavorite"];

  v63 = [MEMORY[0x277CCABB0] numberWithDouble:v52];
  [v61 setObject:v63 forKeyedSubscript:@"isEmergency"];

  v64 = [MEMORY[0x277CCABB0] numberWithDouble:v54];
  [v61 setObject:v64 forKeyedSubscript:@"isFamily"];

  v65 = [MEMORY[0x277CCABB0] numberWithDouble:v56];
  [v61 setObject:v65 forKeyedSubscript:@"isVIP"];

  v66 = [MEMORY[0x277CCABB0] numberWithDouble:v58];
  [v61 setObject:v66 forKeyedSubscript:@"isFromMailingList"];

  v67 = [MEMORY[0x277CCABB0] numberWithDouble:v60];
  [v61 setObject:v67 forKeyedSubscript:@"isFromPinnedContactInMessage"];

  v68 = [[ATXSenderImportance alloc] initWithSenderImportanceScore:v61 featureDictionary:fmin(fmax(v50 + v52 + v54 + v56 + v58 + v60 + 0.0, 0.0), 1.0)];
  v69 = *MEMORY[0x277D85DE8];

  return v68;
}

@end