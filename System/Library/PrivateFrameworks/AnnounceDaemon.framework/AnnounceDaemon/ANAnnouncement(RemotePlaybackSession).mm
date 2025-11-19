@interface ANAnnouncement(RemotePlaybackSession)
- (id)remoteSessionDictionary;
- (id)sendFailureDictionary;
@end

@implementation ANAnnouncement(RemotePlaybackSession)

- (id)remoteSessionDictionary
{
  v97 = *MEMORY[0x277D85DE8];
  v2 = objc_opt_new();
  v3 = [a1 identifier];
  [v2 setObject:v3 forKeyedSubscript:*MEMORY[0x277CEA760]];

  v4 = [a1 groupID];
  [v2 setObject:v4 forKeyedSubscript:*MEMORY[0x277CEA9F0]];

  v5 = [a1 location];
  v6 = [v5 homeUUID];

  v84 = v6;
  if (v6)
  {
    v7 = +[ANHomeManager shared];
    v8 = [v7 homeForID:v6];

    v9 = [v6 UUIDString];
    [v2 setObject:v9 forKeyedSubscript:*MEMORY[0x277CEAA00]];

    v10 = [v8 name];
    [v2 setObject:v10 forKeyedSubscript:*MEMORY[0x277CEAA08]];
  }

  else
  {
    v8 = 0;
  }

  v11 = MEMORY[0x277CCABB0];
  v12 = [a1 announcer];
  v13 = [v11 numberWithBool:{objc_msgSend(v12, "isAccessory")}];
  [v2 setObject:v13 forKeyedSubscript:*MEMORY[0x277CEA7B8]];

  v14 = [a1 announcer];
  v15 = [v14 homeKitID];
  [v2 setObject:v15 forKeyedSubscript:*MEMORY[0x277CEA7B0]];

  v16 = [a1 announcer];
  v17 = [v16 homeKitUserID];
  [v2 setObject:v17 forKeyedSubscript:*MEMORY[0x277CEA7E0]];

  v86 = a1;
  if (v8)
  {
    v18 = [a1 announcer];
    v19 = [v18 name];

    if (!v19 || [v19 isEqualToString:&stru_2851BDB18])
    {
      v20 = [a1 announcerNameInHome:v8];

      v19 = v20;
    }

    [v2 setObject:v19 forKeyedSubscript:*MEMORY[0x277CEA7C8]];
    v21 = objc_alloc(MEMORY[0x277CCAD78]);
    v22 = [a1 announcer];
    v23 = [v22 homeKitID];
    v24 = [v21 initWithUUIDString:v23];
    v25 = a1;
    v26 = v24;

    v27 = [v25 announcer];
    v28 = [v27 userID];

    if (!v28)
    {
      v29 = [v8 hmu_userWithUniqueIdentifier:v26];
      v30 = [v29 userID];

      if (v30)
      {
        v28 = v30;
      }

      else
      {
        v28 = &stru_2851BDB18;
      }
    }

    [v2 setObject:v28 forKeyedSubscript:*MEMORY[0x277CEA7D8]];

    a1 = v86;
  }

  v85 = v2;
  v31 = objc_opt_new();
  v32 = [a1 location];
  v33 = [v32 roomUUIDs];

  v93 = 0u;
  v94 = 0u;
  v91 = 0u;
  v92 = 0u;
  v34 = v33;
  v35 = [v34 countByEnumeratingWithState:&v91 objects:v96 count:16];
  if (v35)
  {
    v36 = v35;
    v37 = *v92;
    do
    {
      for (i = 0; i != v36; ++i)
      {
        if (*v92 != v37)
        {
          objc_enumerationMutation(v34);
        }

        v39 = *(*(&v91 + 1) + 8 * i);
        v40 = [v8 hmu_roomWithUniqueIdentifier:v39];
        v41 = v40;
        if (v40)
        {
          v42 = [v40 name];
          v43 = [v39 UUIDString];
          [v31 setObject:v42 forKeyedSubscript:v43];
        }
      }

      v36 = [v34 countByEnumeratingWithState:&v91 objects:v96 count:16];
    }

    while (v36);
  }

  v83 = v34;

  [v85 setObject:v31 forKeyedSubscript:*MEMORY[0x277CEAA88]];
  v44 = objc_opt_new();
  v45 = [v86 location];
  v46 = [v45 zoneUUIDs];

  v89 = 0u;
  v90 = 0u;
  v87 = 0u;
  v88 = 0u;
  v47 = v46;
  v48 = [v47 countByEnumeratingWithState:&v87 objects:v95 count:16];
  if (v48)
  {
    v49 = v48;
    v50 = *v88;
    do
    {
      for (j = 0; j != v49; ++j)
      {
        if (*v88 != v50)
        {
          objc_enumerationMutation(v47);
        }

        v52 = *(*(&v87 + 1) + 8 * j);
        v53 = [v8 hmu_zoneWithUniqueIdentifier:v52];
        v54 = v53;
        if (v53)
        {
          v55 = [v53 name];
          v56 = [v52 UUIDString];
          [v44 setObject:v55 forKeyedSubscript:v56];
        }
      }

      v49 = [v47 countByEnumeratingWithState:&v87 objects:v95 count:16];
    }

    while (v49);
  }

  [v85 setObject:v44 forKeyedSubscript:*MEMORY[0x277CEAB20]];
  v57 = [v86 filePath];
  [v85 setObject:v57 forKeyedSubscript:*MEMORY[0x277CEA7E8]];

  v58 = [v86 announcer];
  v59 = [v58 homeKitID];
  v60 = [v8 hmu_accessoryWithUniqueIdentifierUUIDString:v59];

  if (v8)
  {
    v61 = [v86 announcer];
    if ([v61 isAccessory])
    {
      v62 = v60;
      v63 = [v86 announcer];
      v64 = [v63 homeKitUserID];
      if (v64)
      {
        v65 = v64;
        v82 = v62;
        v66 = [v62 room];

        v60 = v82;
        if (v66)
        {
          v67 = [v82 room];
          v81 = [v67 name];
          v68 = ANLocalizedStringWithFormat();

LABEL_39:
          [v85 setObject:v68 forKeyedSubscript:{*MEMORY[0x277CEAAA8], v81}];

          goto LABEL_40;
        }

LABEL_38:
        v67 = [v8 name];
        v81 = v67;
        v68 = ANLocalizedStringWithFormat();
        goto LABEL_39;
      }
    }

    goto LABEL_38;
  }

LABEL_40:
  v69 = [v60 services];
  v70 = [v69 na_firstObjectPassingTest:&__block_literal_global_4];

  v71 = [MEMORY[0x277CCABB0] numberWithLong:{objc_msgSend(v86, "productType")}];
  [v85 setObject:v71 forKeyedSubscript:*MEMORY[0x277CEAA68]];

  v72 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v86, "productTypeOverride")}];
  [v85 setObject:v72 forKeyedSubscript:*MEMORY[0x277CEAA78]];

  v73 = [v70 serviceType];
  [v85 setObject:v73 forKeyedSubscript:*MEMORY[0x277CEAA98]];

  v74 = +[ANMGProductTypeUtility productTypeToSystemImageName:](_TtC14AnnounceDaemon22ANMGProductTypeUtility, "productTypeToSystemImageName:", [v86 productType]);
  [v85 setObject:v74 forKeyedSubscript:*MEMORY[0x277CEAAB8]];

  v75 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(v86, "deviceClass")}];
  [v85 setObject:v75 forKeyedSubscript:*MEMORY[0x277CEA998]];

  v76 = [v86 transcriptionText];
  [v85 setObject:v76 forKeyedSubscript:*MEMORY[0x277CEAAC0]];

  v77 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v86, "hasPlayed")}];
  [v85 setObject:v77 forKeyedSubscript:*MEMORY[0x277CEAA58]];

  v78 = [v85 copy];
  v79 = *MEMORY[0x277D85DE8];

  return v78;
}

- (id)sendFailureDictionary
{
  v1 = MEMORY[0x277CBEB38];
  v2 = [a1 remoteSessionDictionary];
  v3 = [v1 dictionaryWithDictionary:v2];

  [v3 setObject:0 forKeyedSubscript:*MEMORY[0x277CEA998]];
  [v3 setObject:0 forKeyedSubscript:*MEMORY[0x277CEAA58]];
  [v3 setObject:0 forKeyedSubscript:*MEMORY[0x277CEA7B8]];
  [v3 setObject:0 forKeyedSubscript:*MEMORY[0x277CEAA68]];
  v4 = ANLocalizedString();
  [v3 setObject:v4 forKeyedSubscript:*MEMORY[0x277CEAAA8]];

  v5 = [v3 copy];

  return v5;
}

@end