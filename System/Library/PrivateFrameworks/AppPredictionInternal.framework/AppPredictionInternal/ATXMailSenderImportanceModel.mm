@interface ATXMailSenderImportanceModel
- (id)calculateSenderImportanceForMailWithContextRequest:(id)a3 contactStore:(id)a4 contactRelationships:(id)a5;
@end

@implementation ATXMailSenderImportanceModel

- (id)calculateSenderImportanceForMailWithContextRequest:(id)a3 contactStore:(id)a4 contactRelationships:(id)a5
{
  v82 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = objc_opt_new();
  v11 = [v7 mailMessage];
  v74 = [v11 sender];
  v12 = [ATXSenderImportanceUtils contactFromHandle:"contactFromHandle:contactStore:" contactStore:?];
  v13 = 0.0;
  v14 = 0.0;
  v15 = 0.0;
  v16 = 0.0;
  v17 = 0.0;
  v75 = v12;
  v76 = v7;
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

    v79 = 0u;
    v80 = 0u;
    v77 = 0u;
    v78 = 0u;
    v28 = [v18 emailAddresses];
    v29 = [v28 countByEnumeratingWithState:&v77 objects:v81 count:16];
    if (v29)
    {
      v30 = v29;
      v71 = v11;
      v72 = v8;
      v31 = 0;
      v32 = *v78;
      do
      {
        for (i = 0; i != v30; ++i)
        {
          if (*v78 != v32)
          {
            objc_enumerationMutation(v28);
          }

          v34 = *(*(&v77 + 1) + 8 * i);
          v35 = [v9 vipContactEmailAddresses];
          v36 = [v34 value];
          v37 = [v35 containsObject:v36];

          v31 |= v37;
        }

        v30 = [v28 countByEnumeratingWithState:&v77 objects:v81 count:16];
      }

      while (v30);
      v14 = (v31 & 1);
      v7 = v76;
      v11 = v71;
      v8 = v72;
    }
  }

  v38 = [v7 contextRequestSignals];
  v39 = [v38 entityID];
  v40 = v11;
  v41 = [v11 mailID];
  v42 = [v39 isEqualToString:v41];

  if (v42)
  {
    v43 = [v38 isFromMailingList];
    v42 = [v43 BOOLValue];

    v44 = [v38 isFromPinnedMessage];
    if ([v44 BOOLValue])
    {

LABEL_24:
      v13 = 1.0;
      goto LABEL_26;
    }

    v45 = [v75 identifier];
    if (v45)
    {
      v46 = v45;
      v47 = [v9 cnContactIdsOfPinnedChatsInMessage];
      v48 = [v75 identifier];
      v73 = [v47 containsObject:v48];

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
  v58 = v57 * v42;
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