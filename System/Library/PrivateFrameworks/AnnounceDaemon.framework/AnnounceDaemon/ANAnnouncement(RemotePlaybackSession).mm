@interface ANAnnouncement(RemotePlaybackSession)
- (id)remoteSessionDictionary;
- (id)sendFailureDictionary;
@end

@implementation ANAnnouncement(RemotePlaybackSession)

- (id)remoteSessionDictionary
{
  v97 = *MEMORY[0x277D85DE8];
  v2 = objc_opt_new();
  identifier = [self identifier];
  [v2 setObject:identifier forKeyedSubscript:*MEMORY[0x277CEA760]];

  groupID = [self groupID];
  [v2 setObject:groupID forKeyedSubscript:*MEMORY[0x277CEA9F0]];

  location = [self location];
  homeUUID = [location homeUUID];

  v84 = homeUUID;
  if (homeUUID)
  {
    v7 = +[ANHomeManager shared];
    v8 = [v7 homeForID:homeUUID];

    uUIDString = [homeUUID UUIDString];
    [v2 setObject:uUIDString forKeyedSubscript:*MEMORY[0x277CEAA00]];

    name = [v8 name];
    [v2 setObject:name forKeyedSubscript:*MEMORY[0x277CEAA08]];
  }

  else
  {
    v8 = 0;
  }

  v11 = MEMORY[0x277CCABB0];
  announcer = [self announcer];
  v13 = [v11 numberWithBool:{objc_msgSend(announcer, "isAccessory")}];
  [v2 setObject:v13 forKeyedSubscript:*MEMORY[0x277CEA7B8]];

  announcer2 = [self announcer];
  homeKitID = [announcer2 homeKitID];
  [v2 setObject:homeKitID forKeyedSubscript:*MEMORY[0x277CEA7B0]];

  announcer3 = [self announcer];
  homeKitUserID = [announcer3 homeKitUserID];
  [v2 setObject:homeKitUserID forKeyedSubscript:*MEMORY[0x277CEA7E0]];

  selfCopy = self;
  if (v8)
  {
    announcer4 = [self announcer];
    name2 = [announcer4 name];

    if (!name2 || [name2 isEqualToString:&stru_2851BDB18])
    {
      v20 = [self announcerNameInHome:v8];

      name2 = v20;
    }

    [v2 setObject:name2 forKeyedSubscript:*MEMORY[0x277CEA7C8]];
    v21 = objc_alloc(MEMORY[0x277CCAD78]);
    announcer5 = [self announcer];
    homeKitID2 = [announcer5 homeKitID];
    v24 = [v21 initWithUUIDString:homeKitID2];
    selfCopy2 = self;
    v26 = v24;

    announcer6 = [selfCopy2 announcer];
    userID = [announcer6 userID];

    if (!userID)
    {
      v29 = [v8 hmu_userWithUniqueIdentifier:v26];
      userID2 = [v29 userID];

      if (userID2)
      {
        userID = userID2;
      }

      else
      {
        userID = &stru_2851BDB18;
      }
    }

    [v2 setObject:userID forKeyedSubscript:*MEMORY[0x277CEA7D8]];

    self = selfCopy;
  }

  v85 = v2;
  v31 = objc_opt_new();
  location2 = [self location];
  roomUUIDs = [location2 roomUUIDs];

  v93 = 0u;
  v94 = 0u;
  v91 = 0u;
  v92 = 0u;
  v34 = roomUUIDs;
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
          name3 = [v40 name];
          uUIDString2 = [v39 UUIDString];
          [v31 setObject:name3 forKeyedSubscript:uUIDString2];
        }
      }

      v36 = [v34 countByEnumeratingWithState:&v91 objects:v96 count:16];
    }

    while (v36);
  }

  v83 = v34;

  [v85 setObject:v31 forKeyedSubscript:*MEMORY[0x277CEAA88]];
  v44 = objc_opt_new();
  location3 = [selfCopy location];
  zoneUUIDs = [location3 zoneUUIDs];

  v89 = 0u;
  v90 = 0u;
  v87 = 0u;
  v88 = 0u;
  v47 = zoneUUIDs;
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
          name4 = [v53 name];
          uUIDString3 = [v52 UUIDString];
          [v44 setObject:name4 forKeyedSubscript:uUIDString3];
        }
      }

      v49 = [v47 countByEnumeratingWithState:&v87 objects:v95 count:16];
    }

    while (v49);
  }

  [v85 setObject:v44 forKeyedSubscript:*MEMORY[0x277CEAB20]];
  filePath = [selfCopy filePath];
  [v85 setObject:filePath forKeyedSubscript:*MEMORY[0x277CEA7E8]];

  announcer7 = [selfCopy announcer];
  homeKitID3 = [announcer7 homeKitID];
  v60 = [v8 hmu_accessoryWithUniqueIdentifierUUIDString:homeKitID3];

  if (v8)
  {
    announcer8 = [selfCopy announcer];
    if ([announcer8 isAccessory])
    {
      v62 = v60;
      announcer9 = [selfCopy announcer];
      homeKitUserID2 = [announcer9 homeKitUserID];
      if (homeKitUserID2)
      {
        v65 = homeKitUserID2;
        v82 = v62;
        room = [v62 room];

        v60 = v82;
        if (room)
        {
          room2 = [v82 room];
          name5 = [room2 name];
          v68 = ANLocalizedStringWithFormat();

LABEL_39:
          [v85 setObject:v68 forKeyedSubscript:{*MEMORY[0x277CEAAA8], name5}];

          goto LABEL_40;
        }

LABEL_38:
        room2 = [v8 name];
        name5 = room2;
        v68 = ANLocalizedStringWithFormat();
        goto LABEL_39;
      }
    }

    goto LABEL_38;
  }

LABEL_40:
  services = [v60 services];
  v70 = [services na_firstObjectPassingTest:&__block_literal_global_4];

  v71 = [MEMORY[0x277CCABB0] numberWithLong:{objc_msgSend(selfCopy, "productType")}];
  [v85 setObject:v71 forKeyedSubscript:*MEMORY[0x277CEAA68]];

  v72 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(selfCopy, "productTypeOverride")}];
  [v85 setObject:v72 forKeyedSubscript:*MEMORY[0x277CEAA78]];

  serviceType = [v70 serviceType];
  [v85 setObject:serviceType forKeyedSubscript:*MEMORY[0x277CEAA98]];

  v74 = +[ANMGProductTypeUtility productTypeToSystemImageName:](_TtC14AnnounceDaemon22ANMGProductTypeUtility, "productTypeToSystemImageName:", [selfCopy productType]);
  [v85 setObject:v74 forKeyedSubscript:*MEMORY[0x277CEAAB8]];

  v75 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(selfCopy, "deviceClass")}];
  [v85 setObject:v75 forKeyedSubscript:*MEMORY[0x277CEA998]];

  transcriptionText = [selfCopy transcriptionText];
  [v85 setObject:transcriptionText forKeyedSubscript:*MEMORY[0x277CEAAC0]];

  v77 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(selfCopy, "hasPlayed")}];
  [v85 setObject:v77 forKeyedSubscript:*MEMORY[0x277CEAA58]];

  v78 = [v85 copy];
  v79 = *MEMORY[0x277D85DE8];

  return v78;
}

- (id)sendFailureDictionary
{
  v1 = MEMORY[0x277CBEB38];
  remoteSessionDictionary = [self remoteSessionDictionary];
  v3 = [v1 dictionaryWithDictionary:remoteSessionDictionary];

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