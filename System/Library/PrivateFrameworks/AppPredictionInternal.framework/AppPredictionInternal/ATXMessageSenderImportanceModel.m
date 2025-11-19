@interface ATXMessageSenderImportanceModel
- (id)calculateSenderImportanceForMessageWithContextRequest:(id)a3 contactStore:(id)a4 contactRelationships:(id)a5;
@end

@implementation ATXMessageSenderImportanceModel

- (id)calculateSenderImportanceForMessageWithContextRequest:(id)a3 contactStore:(id)a4 contactRelationships:(id)a5
{
  v86 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = objc_opt_new();
  v11 = [v7 textMessage];
  v78 = [v11 sender];
  v12 = [ATXSenderImportanceUtils contactFromHandle:"contactFromHandle:contactStore:" contactStore:?];
  v13 = 0.0;
  v14 = 0.0;
  v15 = 0.0;
  v16 = 0.0;
  v17 = 0.0;
  v79 = v12;
  v80 = v11;
  if (v12)
  {
    v18 = v12;
    v19 = [v9 cnContactIdsOfFavoriteContacts];
    v20 = [v18 identifier];
    v21 = [v19 containsObject:v20];

    v15 = 1.0;
    if (v21)
    {
      v17 = 1.0;
    }

    else
    {
      v17 = 0.0;
    }

    v22 = [v9 cnContactIdsOfEmergencyContacts];
    v23 = [v18 identifier];
    v24 = [v22 containsObject:v23];

    if (v24)
    {
      v16 = 1.0;
    }

    else
    {
      v16 = 0.0;
    }

    v25 = [v9 cnContactIdsOfICloudFamilyMembers];
    v26 = [v18 identifier];
    v27 = [v25 containsObject:v26];

    if (!v27)
    {
      v15 = 0.0;
    }

    v83 = 0u;
    v84 = 0u;
    v81 = 0u;
    v82 = 0u;
    v28 = [v18 emailAddresses];
    v29 = [v28 countByEnumeratingWithState:&v81 objects:v85 count:16];
    if (v29)
    {
      v30 = v29;
      v76 = v8;
      v77 = v7;
      v31 = 0;
      v32 = *v82;
      do
      {
        for (i = 0; i != v30; ++i)
        {
          if (*v82 != v32)
          {
            objc_enumerationMutation(v28);
          }

          v34 = *(*(&v81 + 1) + 8 * i);
          v35 = [v9 vipContactEmailAddresses];
          v36 = [v34 value];
          v37 = [v35 containsObject:v36];

          v31 |= v37;
        }

        v30 = [v28 countByEnumeratingWithState:&v81 objects:v85 count:16];
      }

      while (v30);
      v14 = (v31 & 1);
      v8 = v76;
      v7 = v77;
      v11 = v80;
    }
  }

  v38 = [v7 contextRequestSignals];
  v39 = [v38 entityID];
  v40 = [v11 messageID];
  v41 = [v39 isEqualToString:v40];

  if (v41)
  {
    v42 = [v38 isFromPinnedMessage];
    if ([v42 BOOLValue])
    {
      v41 = 1;
    }

    else
    {
      v44 = [v79 identifier];
      if (v44)
      {
        v45 = [v9 cnContactIdsOfPinnedChatsInMessage];
        v46 = [v79 identifier];
        v41 = [v45 containsObject:v46];
      }

      else
      {
        v41 = 0;
      }
    }

    v47 = [v38 isAudioMessage];
    v43 = [v47 BOOLValue];

    v48 = [v38 isFromGroupMessage];
    if ([v48 BOOLValue])
    {
      v49 = [v38 isMentionedInGroup];
      v50 = [v49 BOOLValue];

      if (v50)
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
    v43 = 0;
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
  v62 = v61 * v43;
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