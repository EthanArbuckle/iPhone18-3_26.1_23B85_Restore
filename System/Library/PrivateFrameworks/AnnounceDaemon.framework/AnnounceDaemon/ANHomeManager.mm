@interface ANHomeManager
+ (id)shared;
+ (unint64_t)defaultHomeOptions;
- (ANHomeManager)initWithCaching:(BOOL)caching homeOptions:(unint64_t)options;
- (BOOL)isEndpointWithUUID:(id)d inRoomWithName:(id)name;
- (BOOL)isLocalDeviceInRoom:(id)room;
- (HMAccessory)currentAccessory;
- (HMHome)currentHome;
- (NSArray)allHomes;
- (NSArray)homesSupportingAnnounce;
- (id)_currentHomesWeAreIn;
- (id)_findBestHomeNames;
- (id)_homeNamesForAccessoryForContext:(id)context;
- (id)_homesForContext:(id)context;
- (id)homeForID:(id)d;
- (id)homeNamesForContext:(id)context;
- (id)homeWithName:(id)name;
- (id)homesWithRoomNames:(id)names;
- (id)homesWithZoneNames:(id)names;
- (id)refreshHomeSynchronous;
- (void)_executeBlockForDelegates:(id)delegates;
- (void)_notifyManagerLoadedHomes:(id)homes;
- (void)accessoryDidUpdateControllable:(id)controllable;
- (void)accessoryDidUpdateName:(id)name;
- (void)accessoryDidUpdateSupportsAudioAnalysis:(id)analysis;
- (void)accessoryDidUpdateSupportsDropIn:(id)in;
- (void)home:(id)home didAddAccessory:(id)accessory;
- (void)home:(id)home didAddUser:(id)user;
- (void)home:(id)home didRemoveAccessory:(id)accessory;
- (void)home:(id)home didRemoveUser:(id)user;
- (void)home:(id)home didUpdateAccessControlForUser:(id)user;
- (void)homeDidUpdateAccessControlForCurrentUser:(id)user;
- (void)homeManager:(id)manager didAddHome:(id)home;
- (void)homeManager:(id)manager didRemoveHome:(id)home;
- (void)homeManagerDidUpdateHomes:(id)homes;
- (void)loadHomeSynchronous;
- (void)loadHomes:(id)homes;
- (void)registerDelegate:(id)delegate queue:(id)queue;
@end

@implementation ANHomeManager

- (id)homeForID:(id)d
{
  v19 = *MEMORY[0x277D85DE8];
  dCopy = d;
  [(ANHomeManager *)self allHomes];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = v17 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = *v15;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        uniqueIdentifier = [v9 uniqueIdentifier];
        v11 = [uniqueIdentifier isEqual:dCopy];

        if (v11)
        {
          v6 = v9;
          goto LABEL_11;
        }
      }

      v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v12 = *MEMORY[0x277D85DE8];

  return v6;
}

- (id)homeWithName:(id)name
{
  v19 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  [(ANHomeManager *)self allHomes];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = v17 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = *v15;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        name = [v9 name];
        v11 = [name caseInsensitiveCompare:nameCopy];

        if (!v11)
        {
          v6 = v9;
          goto LABEL_11;
        }
      }

      v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v12 = *MEMORY[0x277D85DE8];

  return v6;
}

- (id)homesWithRoomNames:(id)names
{
  v4 = MEMORY[0x277CD1A60];
  namesCopy = names;
  allHomes = [(ANHomeManager *)self allHomes];
  v7 = [v4 hmu_homesFromHomes:allHomes withRoomNames:namesCopy];

  return v7;
}

- (id)homesWithZoneNames:(id)names
{
  v4 = MEMORY[0x277CD1A60];
  namesCopy = names;
  allHomes = [(ANHomeManager *)self allHomes];
  v7 = [v4 hmu_homesFromHomes:allHomes withZoneNames:namesCopy];

  return v7;
}

- (NSArray)homesSupportingAnnounce
{
  allHomes = [(ANHomeManager *)self allHomes];
  an_homesSupportingAnnounce = [allHomes an_homesSupportingAnnounce];

  return an_homesSupportingAnnounce;
}

- (BOOL)isLocalDeviceInRoom:(id)room
{
  roomCopy = room;
  if (![(ANHomeManager *)self homesLoaded])
  {
    [(ANHomeManager *)self loadHomeSynchronous];
  }

  currentAccessory = [(ANHomeManager *)self currentAccessory];
  v6 = currentAccessory;
  if (currentAccessory)
  {
    room = [currentAccessory room];

    if (room)
    {
      room2 = [v6 room];
      name = [room2 name];
      LOBYTE(room) = [name isEqualToString:roomCopy];
    }
  }

  else
  {
    LOBYTE(room) = 0;
  }

  return room;
}

- (BOOL)isEndpointWithUUID:(id)d inRoomWithName:(id)name
{
  dCopy = d;
  nameCopy = name;
  if (![(ANHomeManager *)self homesLoaded])
  {
    [(ANHomeManager *)self loadHomeSynchronous];
  }

  currentAccessory = [(ANHomeManager *)self currentAccessory];
  v9 = currentAccessory;
  if (currentAccessory)
  {
    v10 = currentAccessory;
    v11 = v10;
    if (dCopy && ([v10 home], v12 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v12, "accessoryWithUniqueIdentifier:", dCopy), v13 = objc_claimAutoreleasedReturnValue(), v11, v12, (v11 = v13) == 0))
    {
      LOBYTE(room) = 0;
    }

    else
    {
      room = [v11 room];

      if (room)
      {
        room2 = [v11 room];
        name = [room2 name];
        LOBYTE(room) = [name isEqualToString:nameCopy];
      }
    }
  }

  else
  {
    LOBYTE(room) = 0;
  }

  return room;
}

- (id)homeNamesForContext:(id)context
{
  v19 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  if (![(ANHomeManager *)self homesLoaded])
  {
    v5 = ANLogHandleHomeManager_HomeContext();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v15 = 138412546;
      v16 = &stru_2851BDB18;
      v17 = 2112;
      v18 = contextCopy;
      _os_log_impl(&dword_23F525000, v5, OS_LOG_TYPE_DEFAULT, "%@Loading homes to search names for context: %@", &v15, 0x16u);
    }

    [(ANHomeManager *)self loadHomeSynchronous];
  }

  if ([contextCopy isEmpty])
  {
    v6 = ANLogHandleHomeManager_HomeContext();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v15 = 138412290;
      v16 = &stru_2851BDB18;
      _os_log_impl(&dword_23F525000, v6, OS_LOG_TYPE_DEFAULT, "%@Home Context empty. Will find best home names.", &v15, 0xCu);
    }

    _findBestHomeNames = [(ANHomeManager *)self _findBestHomeNames];
LABEL_13:
    v11 = _findBestHomeNames;
    goto LABEL_14;
  }

  currentAccessory = [(ANHomeManager *)self currentAccessory];

  v9 = ANLogHandleHomeManager_HomeContext();
  v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
  if (currentAccessory)
  {
    if (v10)
    {
      v15 = 138412290;
      v16 = &stru_2851BDB18;
      _os_log_impl(&dword_23F525000, v9, OS_LOG_TYPE_DEFAULT, "%@Will find home names for Accessory.", &v15, 0xCu);
    }

    _findBestHomeNames = [(ANHomeManager *)self _homeNamesForAccessoryForContext:contextCopy];
    goto LABEL_13;
  }

  if (v10)
  {
    v15 = 138412290;
    v16 = &stru_2851BDB18;
    _os_log_impl(&dword_23F525000, v9, OS_LOG_TYPE_DEFAULT, "%@Will find home names for personal device.", &v15, 0xCu);
  }

  v14 = [(ANHomeManager *)self _homesForContext:contextCopy];
  v11 = [v14 na_map:&__block_literal_global_12];

LABEL_14:
  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

- (id)_homesForContext:(id)context
{
  v27[1] = *MEMORY[0x277D85DE8];
  contextCopy = context;
  homeName = [contextCopy homeName];
  v6 = [homeName length];

  if (v6)
  {
    homeName2 = [contextCopy homeName];
    an_homesSupportingAnnounce = [(ANHomeManager *)self homeWithName:homeName2];

    if (an_homesSupportingAnnounce)
    {
      v27[0] = an_homesSupportingAnnounce;
      allObjects = [MEMORY[0x277CBEA60] arrayWithObjects:v27 count:1];
    }

    else
    {
      allObjects = MEMORY[0x277CBEBF8];
    }
  }

  else
  {
    currentAccessory = [(ANHomeManager *)self currentAccessory];
    if (currentAccessory)
    {
      _currentHomesWeAreIn = MEMORY[0x277CBEBF8];
    }

    else
    {
      _currentHomesWeAreIn = [(ANHomeManager *)self _currentHomesWeAreIn];
    }

    v12 = [_currentHomesWeAreIn count];
    v13 = ANLogHandleHomeManager_HomeContext();
    v14 = os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT);
    if (v12)
    {
      if (v14)
      {
        v25 = 138412290;
        v26 = &stru_2851BDB18;
        _os_log_impl(&dword_23F525000, v13, OS_LOG_TYPE_DEFAULT, "%@Checking Current Homes we are in for Rooms and Zones", &v25, 0xCu);
      }

      an_homesSupportingAnnounce = _currentHomesWeAreIn;
    }

    else
    {
      if (v14)
      {
        v25 = 138412290;
        v26 = &stru_2851BDB18;
        _os_log_impl(&dword_23F525000, v13, OS_LOG_TYPE_DEFAULT, "%@Checking All Homes Supporting Announce for Rooms and Zones", &v25, 0xCu);
      }

      allHomes = [(ANHomeManager *)self allHomes];
      an_homesSupportingAnnounce = [allHomes an_homesSupportingAnnounce];
    }

    v16 = objc_opt_new();
    v17 = MEMORY[0x277CD1A60];
    roomNames = [contextCopy roomNames];
    v19 = [v17 hmu_homesFromHomes:an_homesSupportingAnnounce withRoomNames:roomNames];
    [v16 addObjectsFromArray:v19];

    v20 = MEMORY[0x277CD1A60];
    zoneNames = [contextCopy zoneNames];
    v22 = [v20 hmu_homesFromHomes:an_homesSupportingAnnounce withZoneNames:zoneNames];
    [v16 addObjectsFromArray:v22];

    allObjects = [v16 allObjects];
  }

  v23 = *MEMORY[0x277D85DE8];

  return allObjects;
}

- (id)_homeNamesForAccessoryForContext:(id)context
{
  v46 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  currentAccessory = [(ANHomeManager *)self currentAccessory];
  home = [currentAccessory home];

  v7 = ANLogHandleHomeManager_HomeContext();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    name = [home name];
    *buf = 138412546;
    v41 = &stru_2851BDB18;
    v42 = 2112;
    v43 = name;
    _os_log_impl(&dword_23F525000, v7, OS_LOG_TYPE_DEFAULT, "%@Acessory Home Name: %@", buf, 0x16u);
  }

  if (!home)
  {
    v13 = ANLogHandleHomeManager_HomeContext();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v41 = &stru_2851BDB18;
      _os_log_impl(&dword_23F525000, v13, OS_LOG_TYPE_ERROR, "%@Accessory does not have a home", buf, 0xCu);
    }

    goto LABEL_24;
  }

  homeName = [contextCopy homeName];
  if ([homeName length])
  {
    homeName2 = [contextCopy homeName];
    name2 = [home name];
    v12 = [homeName2 isEqualToString:name2];

    if ((v12 & 1) == 0)
    {
      v13 = ANLogHandleHomeManager_HomeContext();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        homeName3 = [contextCopy homeName];
        *buf = 138412546;
        v41 = &stru_2851BDB18;
        v42 = 2112;
        v43 = homeName3;
        v15 = "%@Context Home Name mismatch: %@";
LABEL_23:
        _os_log_impl(&dword_23F525000, v13, OS_LOG_TYPE_ERROR, v15, buf, 0x16u);

        goto LABEL_24;
      }

      goto LABEL_24;
    }
  }

  else
  {
  }

  v16 = [(ANHomeManager *)self _homesForContext:contextCopy];
  v17 = ANLogHandleHomeManager_HomeContext();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    v18 = [v16 count];
    uniqueIdentifier = [home uniqueIdentifier];
    *buf = 138412802;
    v41 = &stru_2851BDB18;
    v42 = 2048;
    v43 = v18;
    v44 = 2112;
    v45 = uniqueIdentifier;
    _os_log_impl(&dword_23F525000, v17, OS_LOG_TYPE_DEFAULT, "%@Checking %lu homes for Accessory Home ID %@", buf, 0x20u);
  }

  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v13 = v16;
  v20 = [v13 countByEnumeratingWithState:&v34 objects:v39 count:16];
  if (v20)
  {
    v21 = v20;
    v22 = *v35;
    while (2)
    {
      for (i = 0; i != v21; ++i)
      {
        if (*v35 != v22)
        {
          objc_enumerationMutation(v13);
        }

        v24 = *(*(&v34 + 1) + 8 * i);
        uniqueIdentifier2 = [v24 uniqueIdentifier];
        uniqueIdentifier3 = [home uniqueIdentifier];
        v27 = [uniqueIdentifier2 isEqual:uniqueIdentifier3];

        if (v27)
        {
          v29 = ANLogHandleHomeManager_HomeContext();
          if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
          {
            name3 = [v24 name];
            *buf = 138412546;
            v41 = &stru_2851BDB18;
            v42 = 2112;
            v43 = name3;
            _os_log_impl(&dword_23F525000, v29, OS_LOG_TYPE_DEFAULT, "%@Matched home with Accessory Home ID to Home Name %@", buf, 0x16u);
          }

          name4 = [v24 name];
          v38 = name4;
          v28 = [MEMORY[0x277CBEA60] arrayWithObjects:&v38 count:1];

          goto LABEL_28;
        }
      }

      v21 = [v13 countByEnumeratingWithState:&v34 objects:v39 count:16];
      if (v21)
      {
        continue;
      }

      break;
    }
  }

  v13 = ANLogHandleHomeManager_HomeContext();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
  {
    homeName3 = [home name];
    *buf = 138412546;
    v41 = &stru_2851BDB18;
    v42 = 2112;
    v43 = homeName3;
    v15 = "%@No home found for Accessory Home Name %@";
    goto LABEL_23;
  }

LABEL_24:
  v28 = MEMORY[0x277CBEBF8];
LABEL_28:

  v32 = *MEMORY[0x277D85DE8];

  return v28;
}

- (id)_findBestHomeNames
{
  v28[1] = *MEMORY[0x277D85DE8];
  currentAccessory = [(ANHomeManager *)self currentAccessory];
  v4 = currentAccessory;
  if (currentAccessory)
  {
    home = [currentAccessory home];
    v6 = home;
    if (!home)
    {
      v8 = MEMORY[0x277CBEBF8];
      goto LABEL_21;
    }

    name = [home name];
    v28[0] = name;
    v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v28 count:1];
  }

  else
  {
    v8 = objc_opt_new();
    name = [(ANHomeManager *)self _currentHomesWeAreIn];
    if ([name count])
    {
      v9 = ANLogHandleHomeManager_HomeContext();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        v25 = &stru_2851BDB18;
        v26 = 2112;
        v27 = name;
        _os_log_impl(&dword_23F525000, v9, OS_LOG_TYPE_DEFAULT, "%@Selecting Current Homes: %@", buf, 0x16u);
      }

      homesSupportingAnnounce = name;
    }

    else
    {
      homesSupportingAnnounce = [(ANHomeManager *)self homesSupportingAnnounce];
      v11 = ANLogHandleHomeManager_HomeContext();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        v25 = &stru_2851BDB18;
        v26 = 2112;
        v27 = homesSupportingAnnounce;
        _os_log_impl(&dword_23F525000, v11, OS_LOG_TYPE_DEFAULT, "%@Selecting All Homes Supporting announce: %@", buf, 0x16u);
      }
    }

    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v6 = homesSupportingAnnounce;
    v12 = [v6 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v20;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v20 != v14)
          {
            objc_enumerationMutation(v6);
          }

          name2 = [*(*(&v19 + 1) + 8 * i) name];
          [v8 addObject:name2];
        }

        v13 = [v6 countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v13);
    }
  }

LABEL_21:
  v17 = *MEMORY[0x277D85DE8];

  return v8;
}

- (id)_currentHomesWeAreIn
{
  v40 = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CBEB58];
  v4 = MEMORY[0x277CD1A60];
  allHomes = [(ANHomeManager *)self allHomes];
  v6 = [v4 hmu_homesFromHomes:allHomes withHomeLocationStatus:1];
  v7 = [v3 setWithArray:v6];

  currentHome = [(ANHomeManager *)self currentHome];
  v9 = ANLogHandleHomeManager_HomeContext();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v34 = &stru_2851BDB18;
    v35 = 2112;
    v36 = currentHome;
    _os_log_impl(&dword_23F525000, v9, OS_LOG_TYPE_DEFAULT, "%@Current Home: %@", buf, 0x16u);
  }

  v28 = currentHome;

  v10 = ANLogHandleHomeManager_HomeContext();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v34 = &stru_2851BDB18;
    v35 = 2112;
    v36 = v7;
    _os_log_impl(&dword_23F525000, v10, OS_LOG_TYPE_DEFAULT, "%@Homes with Location Status at Home: %@", buf, 0x16u);
  }

  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  allHomes2 = [(ANHomeManager *)self allHomes];
  v12 = [allHomes2 countByEnumeratingWithState:&v29 objects:v39 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v30;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v30 != v14)
        {
          objc_enumerationMutation(allHomes2);
        }

        v16 = *(*(&v29 + 1) + 8 * i);
        v17 = ANLogHandleHomeManager_HomeContext();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
        {
          homeLocationStatus = [v16 homeLocationStatus];
          *buf = 138412802;
          v34 = &stru_2851BDB18;
          v35 = 2112;
          v36 = v16;
          v37 = 2048;
          v38 = homeLocationStatus;
          _os_log_impl(&dword_23F525000, v17, OS_LOG_TYPE_DEFAULT, "%@HomeKit Location Status: %@: %ld", buf, 0x20u);
        }
      }

      v13 = [allHomes2 countByEnumeratingWithState:&v29 objects:v39 count:16];
    }

    while (v13);
  }

  if (v28 && ![v7 count])
  {
    v25 = ANLogHandleHomeManager_HomeContext();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v34 = &stru_2851BDB18;
      _os_log_impl(&dword_23F525000, v25, OS_LOG_TYPE_DEFAULT, "%@Current Home is set but no Homes with Location Status at Home. Falling back to all Homes.", buf, 0xCu);
    }

    allHomes3 = [(ANHomeManager *)self allHomes];
    goto LABEL_24;
  }

  if ([v7 count] == 1)
  {
    allHomes3 = [v7 allObjects];
LABEL_24:
    allObjects2 = allHomes3;
    goto LABEL_25;
  }

  v20 = MEMORY[0x277CBEB58];
  allObjects = [v7 allObjects];
  an_homesSupportingAnnounce = [allObjects an_homesSupportingAnnounce];
  v23 = [v20 setWithArray:an_homesSupportingAnnounce];

  if (v28)
  {
    [v23 addObject:v28];
  }

  allObjects2 = [v23 allObjects];

LABEL_25:
  v26 = *MEMORY[0x277D85DE8];

  return allObjects2;
}

- (ANHomeManager)initWithCaching:(BOOL)caching homeOptions:(unint64_t)options
{
  cachingCopy = caching;
  v38 = *MEMORY[0x277D85DE8];
  v33.receiver = self;
  v33.super_class = ANHomeManager;
  v6 = [(ANHomeManager *)&v33 init];
  if (v6)
  {
    v7 = dispatch_queue_create("com.apple.announce.homeManager", 0);
    serialQueue = v6->_serialQueue;
    v6->_serialQueue = v7;

    v9 = [MEMORY[0x277CCAB00] mapTableWithKeyOptions:517 valueOptions:0];
    delegatesToQueues = v6->_delegatesToQueues;
    v6->_delegatesToQueues = v9;

    v11 = objc_opt_new();
    homesLoadedCompletionHandlers = v6->_homesLoadedCompletionHandlers;
    v6->_homesLoadedCompletionHandlers = v11;

    if (cachingCopy)
    {
      v13 = 2;
    }

    else
    {
      v13 = 0;
    }

    mEMORY[0x277CEAB80] = [MEMORY[0x277CEAB80] sharedInstance];
    v15 = [mEMORY[0x277CEAB80] BOOLForDefault:*MEMORY[0x277CEA8B0]];

    if (v15)
    {
      v16 = ANLogHandleHomeManager();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        v35 = &stru_2851BDB18;
        v36 = 2048;
        v37 = v13;
        _os_log_impl(&dword_23F525000, v16, OS_LOG_TYPE_DEFAULT, "%@[Override] Setting HomeKit Cache Policy to None. Actual = %lu", buf, 0x16u);
      }

      v13 = 0;
    }

    v17 = [objc_alloc(MEMORY[0x277CD1C60]) initWithOptions:options cachePolicy:v13];
    [v17 setDiscretionary:0];
    v18 = objc_opt_new();
    [v17 setDelegateQueue:v18];

    [v17 setInactiveUpdatingLevel:1];
    v19 = +[ANHomeManager bundleForLocationAuthorization];
    if (v19)
    {
      v20 = [objc_alloc(MEMORY[0x277D0F800]) initWithBundle:v19];
      [v17 setLocationAuthorization:v20];
    }

    else
    {
      v20 = ANLogHandleHomeManager();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v35 = &stru_2851BDB18;
        _os_log_impl(&dword_23F525000, v20, OS_LOG_TYPE_ERROR, "%@No bundle for location authorization", buf, 0xCu);
      }
    }

    v21 = [MEMORY[0x277CBEAA8] now];
    loadHomesStart = v6->_loadHomesStart;
    v6->_loadHomesStart = v21;

    v23 = objc_alloc(MEMORY[0x277CD1A90]);
    v24 = [v17 copy];
    v25 = [v23 initWithConfiguration:v24];
    homeManager = v6->_homeManager;
    v6->_homeManager = v25;

    v27 = [ANAccessorySettingsCache alloc];
    createAccessorySettingsDataSource = [(HMHomeManager *)v6->_homeManager createAccessorySettingsDataSource];
    v29 = [(ANAccessorySettingsCache *)v27 initWithAccessorySettingsDataSource:createAccessorySettingsDataSource];
    accessorySettingsCache = v6->_accessorySettingsCache;
    v6->_accessorySettingsCache = v29;

    [(HMHomeManager *)v6->_homeManager setDelegate:v6];
  }

  v31 = *MEMORY[0x277D85DE8];
  return v6;
}

+ (unint64_t)defaultHomeOptions
{
  mEMORY[0x277CEAB80] = [MEMORY[0x277CEAB80] sharedInstance];
  v3 = [mEMORY[0x277CEAB80] BOOLForDefault:*MEMORY[0x277CEA8A0]];

  if (v3)
  {
    return 34924;
  }

  else
  {
    return 32876;
  }
}

+ (id)shared
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __23__ANHomeManager_shared__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (shared_onceToken != -1)
  {
    dispatch_once(&shared_onceToken, block);
  }

  v2 = shared_manager;

  return v2;
}

uint64_t __23__ANHomeManager_shared__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  shared_manager = objc_opt_new();

  return MEMORY[0x2821F96F8]();
}

- (void)loadHomes:(id)homes
{
  homesCopy = homes;
  objc_initWeak(&location, self);
  serialQueue = self->_serialQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __27__ANHomeManager_loadHomes___block_invoke;
  block[3] = &unk_278C86868;
  objc_copyWeak(&v9, &location);
  v8 = homesCopy;
  v6 = homesCopy;
  dispatch_async(serialQueue, block);

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void __27__ANHomeManager_loadHomes___block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = ANLogHandleHomeManager();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412290;
    v10 = &stru_2851BDB18;
    _os_log_impl(&dword_23F525000, v3, OS_LOG_TYPE_DEFAULT, "%@Loading Homes", &v9, 0xCu);
  }

  if (*(WeakRetained + 8) == 1)
  {
    v4 = ANLogHandleHomeManager();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 138412290;
      v10 = &stru_2851BDB18;
      _os_log_impl(&dword_23F525000, v4, OS_LOG_TYPE_DEFAULT, "%@Homes Already Loaded", &v9, 0xCu);
    }

    v5 = *(a1 + 32);
    v6 = [WeakRetained[5] homes];
    (*(v5 + 16))(v5, v6);
  }

  else
  {
    v6 = [WeakRetained homesLoadedCompletionHandlers];
    v7 = _Block_copy(*(a1 + 32));
    [v6 addObject:v7];
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)loadHomeSynchronous
{
  v9 = *MEMORY[0x277D85DE8];
  allHomes = [(ANHomeManager *)self allHomes];
  v3 = ANLogHandleHomeManager();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138412546;
    v6 = &stru_2851BDB18;
    v7 = 2112;
    v8 = allHomes;
    _os_log_impl(&dword_23F525000, v3, OS_LOG_TYPE_DEFAULT, "%@Loaded Homes Synchronous: %@", &v5, 0x16u);
  }

  v4 = *MEMORY[0x277D85DE8];
}

- (id)refreshHomeSynchronous
{
  v30 = *MEMORY[0x277D85DE8];
  date = [MEMORY[0x277CBEAA8] date];
  mEMORY[0x277CEAB80] = [MEMORY[0x277CEAB80] sharedInstance];
  v5 = [mEMORY[0x277CEAB80] numberForDefault:*MEMORY[0x277CEA8F0]];
  [v5 doubleValue];
  v7 = v6;

  v8 = ANLogHandleHomeManager();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    *&buf[4] = &stru_2851BDB18;
    *&buf[12] = 2048;
    *&buf[14] = v7;
    _os_log_impl(&dword_23F525000, v8, OS_LOG_TYPE_DEFAULT, "%@Home manager refresh start (%.2fs timeout)", buf, 0x16u);
  }

  v9 = [date dateByAddingTimeInterval:v7];
  v10 = dispatch_semaphore_create(0);
  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v27 = __Block_byref_object_copy__3;
  v28 = __Block_byref_object_dispose__3;
  v29 = 0;
  homeManager = self->_homeManager;
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __39__ANHomeManager_refreshHomeSynchronous__block_invoke;
  v19[3] = &unk_278C86AF8;
  v21 = buf;
  v12 = v10;
  v20 = v12;
  v13 = [(HMHomeManager *)homeManager _refreshBeforeDate:v9 completionHandler:v19];
  dispatch_semaphore_wait(v12, (v7 + 0.5));
  v14 = ANLogHandleHomeManager();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    if (*(*&buf[8] + 40))
    {
      v15 = @"failure";
    }

    else
    {
      v15 = @"success";
    }

    *v22 = 138412546;
    v23 = &stru_2851BDB18;
    v24 = 2112;
    v25 = v15;
    _os_log_impl(&dword_23F525000, v14, OS_LOG_TYPE_DEFAULT, "%@Home manager refresh %@", v22, 0x16u);
  }

  v16 = *(*&buf[8] + 40);
  _Block_object_dispose(buf, 8);

  v17 = *MEMORY[0x277D85DE8];

  return v16;
}

void __39__ANHomeManager_refreshHomeSynchronous__block_invoke(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_semaphore_signal(*(a1 + 32));
}

- (void)registerDelegate:(id)delegate queue:(id)queue
{
  delegateCopy = delegate;
  queueCopy = queue;
  serialQueue = [(ANHomeManager *)self serialQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __40__ANHomeManager_registerDelegate_queue___block_invoke;
  block[3] = &unk_278C86668;
  v12 = queueCopy;
  selfCopy = self;
  v14 = delegateCopy;
  v9 = delegateCopy;
  v10 = queueCopy;
  dispatch_async(serialQueue, block);
}

void __40__ANHomeManager_registerDelegate_queue___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = v2;
  }

  else
  {
    v3 = dispatch_get_global_queue(21, 0);
  }

  v5 = v3;
  v4 = [*(a1 + 40) delegatesToQueues];
  [v4 setObject:v5 forKey:*(a1 + 48)];
}

- (NSArray)allHomes
{
  v16 = *MEMORY[0x277D85DE8];
  if (!self->_homesLoaded)
  {
    v3 = dispatch_group_create();
    dispatch_group_enter(v3);
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __25__ANHomeManager_allHomes__block_invoke;
    v10[3] = &unk_278C86B20;
    v4 = v3;
    v11 = v4;
    [(ANHomeManager *)self loadHomes:v10];
    v5 = dispatch_time(0, 3000000000);
    if (dispatch_group_wait(v4, v5))
    {
      v6 = ANLogHandleHomeManager();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
      {
        *buf = 138412546;
        v13 = &stru_2851BDB18;
        v14 = 1024;
        v15 = 3;
        _os_log_impl(&dword_23F525000, v6, OS_LOG_TYPE_FAULT, "%@allHomes timeout waiting for loaded Homes after %d seconds", buf, 0x12u);
      }
    }
  }

  homes = [(HMHomeManager *)self->_homeManager homes];
  v8 = *MEMORY[0x277D85DE8];

  return homes;
}

- (HMHome)currentHome
{
  v13 = *MEMORY[0x277D85DE8];
  allHomes = [(ANHomeManager *)self allHomes];
  v4 = ANLogHandleHomeManager();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v9 = 138412546;
    v10 = &stru_2851BDB18;
    v11 = 2112;
    v12 = allHomes;
    _os_log_impl(&dword_23F525000, v4, OS_LOG_TYPE_DEBUG, "%@Loaded homes %@", &v9, 0x16u);
  }

  homeManager = [(ANHomeManager *)self homeManager];
  currentHome = [homeManager currentHome];

  v7 = *MEMORY[0x277D85DE8];

  return currentHome;
}

- (HMAccessory)currentAccessory
{
  v13 = *MEMORY[0x277D85DE8];
  allHomes = [(ANHomeManager *)self allHomes];
  v4 = ANLogHandleHomeManager();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v9 = 138412546;
    v10 = &stru_2851BDB18;
    v11 = 2112;
    v12 = allHomes;
    _os_log_impl(&dword_23F525000, v4, OS_LOG_TYPE_DEBUG, "%@Loaded homes %@", &v9, 0x16u);
  }

  homeManager = [(ANHomeManager *)self homeManager];
  currentAccessory = [homeManager currentAccessory];

  v7 = *MEMORY[0x277D85DE8];

  return currentAccessory;
}

- (void)_notifyManagerLoadedHomes:(id)homes
{
  v22 = *MEMORY[0x277D85DE8];
  homesCopy = homes;
  v5 = ANLogHandleHomeManager();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v6 = [(NSMutableArray *)self->_homesLoadedCompletionHandlers count];
    *buf = 138412546;
    v19 = &stru_2851BDB18;
    v20 = 1024;
    v21 = v6;
    _os_log_impl(&dword_23F525000, v5, OS_LOG_TYPE_DEBUG, "%@Notifying Homes Loaded to %i handlers", buf, 0x12u);
  }

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v7 = self->_homesLoadedCompletionHandlers;
  v8 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v14;
    do
    {
      v11 = 0;
      do
      {
        if (*v14 != v10)
        {
          objc_enumerationMutation(v7);
        }

        (*(*(*(&v13 + 1) + 8 * v11) + 16))(*(*(&v13 + 1) + 8 * v11));
        ++v11;
      }

      while (v9 != v11);
      v9 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v9);
  }

  [(NSMutableArray *)self->_homesLoadedCompletionHandlers removeAllObjects];
  v12 = *MEMORY[0x277D85DE8];
}

- (void)homeManagerDidUpdateHomes:(id)homes
{
  homesCopy = homes;
  objc_initWeak(&location, self);
  serialQueue = [(ANHomeManager *)self serialQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __43__ANHomeManager_homeManagerDidUpdateHomes___block_invoke;
  v7[3] = &unk_278C86B70;
  objc_copyWeak(&v9, &location);
  v7[4] = self;
  v8 = homesCopy;
  v6 = homesCopy;
  dispatch_async(serialQueue, v7);

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void __43__ANHomeManager_homeManagerDidUpdateHomes___block_invoke(id *a1)
{
  v43 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  v3 = [WeakRetained homesLoaded];

  if ((v3 & 1) == 0)
  {
    v4 = [MEMORY[0x277CBEAA8] date];
    v5 = ANLogHandleHomeManager();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      [v4 timeIntervalSince1970];
      v7 = v6;
      v8 = [a1[4] loadHomesStart];
      [v8 timeIntervalSince1970];
      *buf = 138412546;
      v40 = &stru_2851BDB18;
      v41 = 2048;
      v42 = v7 - v9;
      _os_log_impl(&dword_23F525000, v5, OS_LOG_TYPE_DEFAULT, "%@Load Homes took %f seconds", buf, 0x16u);
    }
  }

  [a1[5] homes];
  v10 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v11 = [*&v10 countByEnumeratingWithState:&v33 objects:v38 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v34;
    do
    {
      v14 = 0;
      do
      {
        if (*v34 != v13)
        {
          objc_enumerationMutation(*&v10);
        }

        v15 = *(*(&v33 + 1) + 8 * v14);
        v29 = 0u;
        v30 = 0u;
        v31 = 0u;
        v32 = 0u;
        v16 = [v15 accessories];
        v17 = [v16 countByEnumeratingWithState:&v29 objects:v37 count:16];
        if (v17)
        {
          v18 = v17;
          v19 = *v30;
          do
          {
            v20 = 0;
            do
            {
              if (*v30 != v19)
              {
                objc_enumerationMutation(v16);
              }

              [*(*(&v29 + 1) + 8 * v20++) setDelegate:a1[4]];
            }

            while (v18 != v20);
            v18 = [v16 countByEnumeratingWithState:&v29 objects:v37 count:16];
          }

          while (v18);
        }

        [v15 setDelegate:a1[4]];
        ++v14;
      }

      while (v14 != v12);
      v12 = [*&v10 countByEnumeratingWithState:&v33 objects:v38 count:16];
    }

    while (v12);
  }

  v21 = objc_loadWeakRetained(a1 + 6);
  [v21 setHomesLoaded:1];

  v22 = ANLogHandleHomeManager();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v40 = &stru_2851BDB18;
    v41 = 2112;
    v42 = v10;
    _os_log_impl(&dword_23F525000, v22, OS_LOG_TYPE_DEFAULT, "%@Homes Loaded: %@", buf, 0x16u);
  }

  v23 = objc_loadWeakRetained(a1 + 6);
  [v23 _notifyManagerLoadedHomes:*&v10];

  v24 = objc_loadWeakRetained(a1 + 6);
  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 3221225472;
  v27[2] = __43__ANHomeManager_homeManagerDidUpdateHomes___block_invoke_24;
  v27[3] = &unk_278C86B48;
  v28 = v10;
  v25 = *&v10;
  [v24 _executeBlockForDelegates:v27];

  v26 = *MEMORY[0x277D85DE8];
}

void __43__ANHomeManager_homeManagerDidUpdateHomes___block_invoke_24(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    v4 = ANLogHandleHomeManager();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v6 = 138412546;
      v7 = &stru_2851BDB18;
      v8 = 2112;
      v9 = v3;
      _os_log_impl(&dword_23F525000, v4, OS_LOG_TYPE_DEFAULT, "%@Notifying delegate homes loaded: %@", &v6, 0x16u);
    }

    [v3 didUpdateHomes:*(a1 + 32)];
  }

  v5 = *MEMORY[0x277D85DE8];
}

- (void)homeManager:(id)manager didAddHome:(id)home
{
  managerCopy = manager;
  homeCopy = home;
  objc_initWeak(&location, self);
  serialQueue = [(ANHomeManager *)self serialQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __40__ANHomeManager_homeManager_didAddHome___block_invoke;
  block[3] = &unk_278C86B98;
  v11 = homeCopy;
  v9 = homeCopy;
  objc_copyWeak(&v12, &location);
  dispatch_async(serialQueue, block);

  objc_destroyWeak(&v12);
  objc_destroyWeak(&location);
}

void __40__ANHomeManager_homeManager_didAddHome___block_invoke(uint64_t a1)
{
  v26 = *MEMORY[0x277D85DE8];
  v2 = ANLogHandleHomeManager();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(a1 + 32) name];
    v4 = [*(a1 + 32) uniqueIdentifier];
    *buf = 138412802;
    v21 = &stru_2851BDB18;
    v22 = 2112;
    v23 = v3;
    v24 = 2112;
    v25 = v4;
    _os_log_impl(&dword_23F525000, v2, OS_LOG_TYPE_DEFAULT, "%@Added Home %@, %@", buf, 0x20u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [*(a1 + 32) setDelegate:WeakRetained];
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = [*(a1 + 32) accessories];
  v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v16;
    do
    {
      v10 = 0;
      do
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(v6);
        }

        [*(*(&v15 + 1) + 8 * v10++) setDelegate:WeakRetained];
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v8);
  }

  v11 = objc_loadWeakRetained((a1 + 40));
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __40__ANHomeManager_homeManager_didAddHome___block_invoke_28;
  v13[3] = &unk_278C86B48;
  v14 = *(a1 + 32);
  [v11 _executeBlockForDelegates:v13];

  v12 = *MEMORY[0x277D85DE8];
}

void __40__ANHomeManager_homeManager_didAddHome___block_invoke_28(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 didAddHome:*(a1 + 32)];
  }
}

- (void)homeManager:(id)manager didRemoveHome:(id)home
{
  managerCopy = manager;
  homeCopy = home;
  objc_initWeak(&location, self);
  serialQueue = [(ANHomeManager *)self serialQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __43__ANHomeManager_homeManager_didRemoveHome___block_invoke;
  block[3] = &unk_278C86B98;
  v11 = homeCopy;
  v9 = homeCopy;
  objc_copyWeak(&v12, &location);
  dispatch_async(serialQueue, block);

  objc_destroyWeak(&v12);
  objc_destroyWeak(&location);
}

void __43__ANHomeManager_homeManager_didRemoveHome___block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  v2 = ANLogHandleHomeManager();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(a1 + 32) name];
    v4 = [*(a1 + 32) uniqueIdentifier];
    *buf = 138412802;
    v10 = &stru_2851BDB18;
    v11 = 2112;
    v12 = v3;
    v13 = 2112;
    v14 = v4;
    _os_log_impl(&dword_23F525000, v2, OS_LOG_TYPE_DEFAULT, "%@Removed Home %@, %@", buf, 0x20u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __43__ANHomeManager_homeManager_didRemoveHome___block_invoke_31;
  v7[3] = &unk_278C86B48;
  v8 = *(a1 + 32);
  [WeakRetained _executeBlockForDelegates:v7];

  v6 = *MEMORY[0x277D85DE8];
}

void __43__ANHomeManager_homeManager_didRemoveHome___block_invoke_31(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 didRemoveHome:*(a1 + 32)];
  }
}

- (void)homeDidUpdateAccessControlForCurrentUser:(id)user
{
  userCopy = user;
  objc_initWeak(&location, self);
  serialQueue = [(ANHomeManager *)self serialQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __58__ANHomeManager_homeDidUpdateAccessControlForCurrentUser___block_invoke;
  block[3] = &unk_278C86B98;
  v8 = userCopy;
  v6 = userCopy;
  objc_copyWeak(&v9, &location);
  dispatch_async(serialQueue, block);

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void __58__ANHomeManager_homeDidUpdateAccessControlForCurrentUser___block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = ANLogHandleHomeManager();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(a1 + 32) name];
    *buf = 138412546;
    v9 = &stru_2851BDB18;
    v10 = 2112;
    v11 = v3;
    _os_log_impl(&dword_23F525000, v2, OS_LOG_TYPE_DEFAULT, "%@Access Control Changed for Current User in Home: %@", buf, 0x16u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __58__ANHomeManager_homeDidUpdateAccessControlForCurrentUser___block_invoke_34;
  v6[3] = &unk_278C86B48;
  v7 = *(a1 + 32);
  [WeakRetained _executeBlockForDelegates:v6];

  v5 = *MEMORY[0x277D85DE8];
}

void __58__ANHomeManager_homeDidUpdateAccessControlForCurrentUser___block_invoke_34(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 homeDidUpdateAccessControlForCurrentUser:*(a1 + 32)];
  }
}

- (void)home:(id)home didUpdateAccessControlForUser:(id)user
{
  homeCopy = home;
  userCopy = user;
  objc_initWeak(&location, self);
  serialQueue = [(ANHomeManager *)self serialQueue];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __52__ANHomeManager_home_didUpdateAccessControlForUser___block_invoke;
  v11[3] = &unk_278C86BE8;
  v12 = userCopy;
  v13 = homeCopy;
  v9 = homeCopy;
  v10 = userCopy;
  objc_copyWeak(&v14, &location);
  dispatch_async(serialQueue, v11);

  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);
}

void __52__ANHomeManager_home_didUpdateAccessControlForUser___block_invoke(id *a1)
{
  v23 = *MEMORY[0x277D85DE8];
  v2 = ANLogHandleHomeManager();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [a1[4] name];
    v4 = [a1[5] name];
    *buf = 138412802;
    v18 = &stru_2851BDB18;
    v19 = 2112;
    v20 = v3;
    v21 = 2112;
    v22 = v4;
    _os_log_impl(&dword_23F525000, v2, OS_LOG_TYPE_DEFAULT, "%@Access Control Changed for User %@ in Home: %@", buf, 0x20u);
  }

  WeakRetained = objc_loadWeakRetained(a1 + 6);
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __52__ANHomeManager_home_didUpdateAccessControlForUser___block_invoke_37;
  v14[3] = &unk_278C86BC0;
  v15 = a1[5];
  v16 = a1[4];
  [WeakRetained _executeBlockForDelegates:v14];

  v6 = [a1[4] uniqueIdentifier];
  v7 = [a1[5] currentUser];
  v8 = [v7 uniqueIdentifier];
  v9 = [v6 isEqual:v8];

  if (v9)
  {
    v10 = objc_loadWeakRetained(a1 + 6);
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __52__ANHomeManager_home_didUpdateAccessControlForUser___block_invoke_2;
    v12[3] = &unk_278C86B48;
    v13 = a1[5];
    [v10 _executeBlockForDelegates:v12];
  }

  v11 = *MEMORY[0x277D85DE8];
}

void __52__ANHomeManager_home_didUpdateAccessControlForUser___block_invoke_37(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 home:*(a1 + 32) didUpdateAccessControlForUser:*(a1 + 40)];
  }
}

void __52__ANHomeManager_home_didUpdateAccessControlForUser___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 homeDidUpdateAccessControlForCurrentUser:*(a1 + 32)];
  }
}

- (void)home:(id)home didAddAccessory:(id)accessory
{
  homeCopy = home;
  accessoryCopy = accessory;
  objc_initWeak(&location, self);
  serialQueue = [(ANHomeManager *)self serialQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __38__ANHomeManager_home_didAddAccessory___block_invoke;
  block[3] = &unk_278C86C10;
  v12 = accessoryCopy;
  selfCopy = self;
  v9 = accessoryCopy;
  objc_copyWeak(&v15, &location);
  v14 = homeCopy;
  v10 = homeCopy;
  dispatch_async(serialQueue, block);

  objc_destroyWeak(&v15);
  objc_destroyWeak(&location);
}

void __38__ANHomeManager_home_didAddAccessory___block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  v2 = ANLogHandleHomeManager();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(a1 + 32) name];
    v4 = [*(a1 + 32) uniqueIdentifier];
    *buf = 138412802;
    v11 = &stru_2851BDB18;
    v12 = 2112;
    v13 = v3;
    v14 = 2112;
    v15 = v4;
    _os_log_impl(&dword_23F525000, v2, OS_LOG_TYPE_DEFAULT, "%@Added Accessory %@, %@", buf, 0x20u);
  }

  [*(a1 + 32) setDelegate:*(a1 + 40)];
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __38__ANHomeManager_home_didAddAccessory___block_invoke_40;
  v7[3] = &unk_278C86BC0;
  v8 = *(a1 + 48);
  v9 = *(a1 + 32);
  [WeakRetained _executeBlockForDelegates:v7];

  v6 = *MEMORY[0x277D85DE8];
}

void __38__ANHomeManager_home_didAddAccessory___block_invoke_40(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 home:*(a1 + 32) didAddAccessory:*(a1 + 40)];
  }
}

- (void)home:(id)home didRemoveAccessory:(id)accessory
{
  homeCopy = home;
  accessoryCopy = accessory;
  objc_initWeak(&location, self);
  serialQueue = [(ANHomeManager *)self serialQueue];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __41__ANHomeManager_home_didRemoveAccessory___block_invoke;
  v11[3] = &unk_278C86C38;
  v12 = accessoryCopy;
  v9 = accessoryCopy;
  objc_copyWeak(&v14, &location);
  v13 = homeCopy;
  v10 = homeCopy;
  dispatch_async(serialQueue, v11);

  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);
}

void __41__ANHomeManager_home_didRemoveAccessory___block_invoke(id *a1)
{
  v16 = *MEMORY[0x277D85DE8];
  v2 = ANLogHandleHomeManager();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [a1[4] name];
    v4 = [a1[4] uniqueIdentifier];
    *buf = 138412802;
    v11 = &stru_2851BDB18;
    v12 = 2112;
    v13 = v3;
    v14 = 2112;
    v15 = v4;
    _os_log_impl(&dword_23F525000, v2, OS_LOG_TYPE_DEFAULT, "%@Removed Accessory %@, %@", buf, 0x20u);
  }

  WeakRetained = objc_loadWeakRetained(a1 + 6);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __41__ANHomeManager_home_didRemoveAccessory___block_invoke_43;
  v7[3] = &unk_278C86BC0;
  v8 = a1[5];
  v9 = a1[4];
  [WeakRetained _executeBlockForDelegates:v7];

  v6 = *MEMORY[0x277D85DE8];
}

void __41__ANHomeManager_home_didRemoveAccessory___block_invoke_43(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 home:*(a1 + 32) didRemoveAccessory:*(a1 + 40)];
  }
}

- (void)home:(id)home didAddUser:(id)user
{
  homeCopy = home;
  userCopy = user;
  objc_initWeak(&location, self);
  serialQueue = [(ANHomeManager *)self serialQueue];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __33__ANHomeManager_home_didAddUser___block_invoke;
  v11[3] = &unk_278C86C38;
  v12 = userCopy;
  v9 = userCopy;
  objc_copyWeak(&v14, &location);
  v13 = homeCopy;
  v10 = homeCopy;
  dispatch_async(serialQueue, v11);

  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);
}

void __33__ANHomeManager_home_didAddUser___block_invoke(id *a1)
{
  v19 = *MEMORY[0x277D85DE8];
  v2 = ANLogHandleHomeManager();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [a1[4] name];
    v4 = [a1[4] uniqueIdentifier];
    v5 = [a1[4] userID];
    *buf = 138413058;
    v12 = &stru_2851BDB18;
    v13 = 2112;
    v14 = v3;
    v15 = 2112;
    v16 = v4;
    v17 = 2112;
    v18 = v5;
    _os_log_impl(&dword_23F525000, v2, OS_LOG_TYPE_DEFAULT, "%@HomeKit Added User %@, %@, %@", buf, 0x2Au);
  }

  WeakRetained = objc_loadWeakRetained(a1 + 6);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __33__ANHomeManager_home_didAddUser___block_invoke_46;
  v8[3] = &unk_278C86BC0;
  v9 = a1[5];
  v10 = a1[4];
  [WeakRetained _executeBlockForDelegates:v8];

  v7 = *MEMORY[0x277D85DE8];
}

void __33__ANHomeManager_home_didAddUser___block_invoke_46(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 home:*(a1 + 32) didAddUser:*(a1 + 40)];
  }
}

- (void)home:(id)home didRemoveUser:(id)user
{
  homeCopy = home;
  userCopy = user;
  objc_initWeak(&location, self);
  serialQueue = [(ANHomeManager *)self serialQueue];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __36__ANHomeManager_home_didRemoveUser___block_invoke;
  v11[3] = &unk_278C86C38;
  v12 = userCopy;
  v9 = userCopy;
  objc_copyWeak(&v14, &location);
  v13 = homeCopy;
  v10 = homeCopy;
  dispatch_async(serialQueue, v11);

  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);
}

void __36__ANHomeManager_home_didRemoveUser___block_invoke(id *a1)
{
  v19 = *MEMORY[0x277D85DE8];
  v2 = ANLogHandleHomeManager();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [a1[4] name];
    v4 = [a1[4] uniqueIdentifier];
    v5 = [a1[4] userID];
    *buf = 138413058;
    v12 = &stru_2851BDB18;
    v13 = 2112;
    v14 = v3;
    v15 = 2112;
    v16 = v4;
    v17 = 2112;
    v18 = v5;
    _os_log_impl(&dword_23F525000, v2, OS_LOG_TYPE_DEFAULT, "%@HomeKit Removed User %@, %@, %@", buf, 0x2Au);
  }

  WeakRetained = objc_loadWeakRetained(a1 + 6);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __36__ANHomeManager_home_didRemoveUser___block_invoke_49;
  v8[3] = &unk_278C86BC0;
  v9 = a1[5];
  v10 = a1[4];
  [WeakRetained _executeBlockForDelegates:v8];

  v7 = *MEMORY[0x277D85DE8];
}

void __36__ANHomeManager_home_didRemoveUser___block_invoke_49(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 home:*(a1 + 32) didRemoveUser:*(a1 + 40)];
  }
}

- (void)accessoryDidUpdateControllable:(id)controllable
{
  controllableCopy = controllable;
  objc_initWeak(&location, self);
  serialQueue = [(ANHomeManager *)self serialQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __48__ANHomeManager_accessoryDidUpdateControllable___block_invoke;
  block[3] = &unk_278C86B98;
  v8 = controllableCopy;
  v6 = controllableCopy;
  objc_copyWeak(&v9, &location);
  dispatch_async(serialQueue, block);

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void __48__ANHomeManager_accessoryDidUpdateControllable___block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  v2 = ANLogHandleHomeManager();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(a1 + 32) name];
    v4 = MEMORY[0x277CCABB0];
    v5 = [*(a1 + 32) settings];
    v6 = [v4 numberWithBool:{objc_msgSend(v5, "isControllable")}];
    *buf = 138412802;
    v12 = &stru_2851BDB18;
    v13 = 2112;
    v14 = v3;
    v15 = 2112;
    v16 = v6;
    _os_log_impl(&dword_23F525000, v2, OS_LOG_TYPE_DEFAULT, "%@Accessory Controllable Updated: %@, %@", buf, 0x20u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __48__ANHomeManager_accessoryDidUpdateControllable___block_invoke_53;
  v9[3] = &unk_278C86B48;
  v10 = *(a1 + 32);
  [WeakRetained _executeBlockForDelegates:v9];

  v8 = *MEMORY[0x277D85DE8];
}

void __48__ANHomeManager_accessoryDidUpdateControllable___block_invoke_53(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 accessoryDidUpdateControllable:*(a1 + 32)];
  }
}

- (void)accessoryDidUpdateName:(id)name
{
  nameCopy = name;
  objc_initWeak(&location, self);
  serialQueue = [(ANHomeManager *)self serialQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __40__ANHomeManager_accessoryDidUpdateName___block_invoke;
  block[3] = &unk_278C86B98;
  v8 = nameCopy;
  v6 = nameCopy;
  objc_copyWeak(&v9, &location);
  dispatch_async(serialQueue, block);

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void __40__ANHomeManager_accessoryDidUpdateName___block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  v2 = ANLogHandleHomeManager();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(a1 + 32) name];
    v4 = [*(a1 + 32) uniqueIdentifier];
    *buf = 138412802;
    v10 = &stru_2851BDB18;
    v11 = 2112;
    v12 = v3;
    v13 = 2112;
    v14 = v4;
    _os_log_impl(&dword_23F525000, v2, OS_LOG_TYPE_DEFAULT, "%@Accessory Name Updated: %@, %@", buf, 0x20u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __40__ANHomeManager_accessoryDidUpdateName___block_invoke_56;
  v7[3] = &unk_278C86B48;
  v8 = *(a1 + 32);
  [WeakRetained _executeBlockForDelegates:v7];

  v6 = *MEMORY[0x277D85DE8];
}

void __40__ANHomeManager_accessoryDidUpdateName___block_invoke_56(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 accessoryDidUpdateName:*(a1 + 32)];
  }
}

- (void)accessoryDidUpdateSupportsAudioAnalysis:(id)analysis
{
  analysisCopy = analysis;
  objc_initWeak(&location, self);
  serialQueue = [(ANHomeManager *)self serialQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __57__ANHomeManager_accessoryDidUpdateSupportsAudioAnalysis___block_invoke;
  block[3] = &unk_278C86B98;
  v8 = analysisCopy;
  v6 = analysisCopy;
  objc_copyWeak(&v9, &location);
  dispatch_async(serialQueue, block);

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void __57__ANHomeManager_accessoryDidUpdateSupportsAudioAnalysis___block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x277D85DE8];
  v2 = ANLogHandleHomeManager();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(a1 + 32) name];
    v4 = [*(a1 + 32) uniqueIdentifier];
    v5 = [*(a1 + 32) supportsAudioAnalysis];
    *buf = 138413058;
    v11 = &stru_2851BDB18;
    v12 = 2112;
    v13 = v3;
    v14 = 2112;
    v15 = v4;
    v16 = 1024;
    v17 = v5;
    _os_log_impl(&dword_23F525000, v2, OS_LOG_TYPE_DEFAULT, "%@Accessory Supports Audio Analysis Updated: %@, %@, Supports Audio Analysis = %d", buf, 0x26u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __57__ANHomeManager_accessoryDidUpdateSupportsAudioAnalysis___block_invoke_59;
  v8[3] = &unk_278C86B48;
  v9 = *(a1 + 32);
  [WeakRetained _executeBlockForDelegates:v8];

  v7 = *MEMORY[0x277D85DE8];
}

void __57__ANHomeManager_accessoryDidUpdateSupportsAudioAnalysis___block_invoke_59(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 accessoryDidUpdateSupportedCapabilities:*(a1 + 32)];
  }
}

- (void)accessoryDidUpdateSupportsDropIn:(id)in
{
  inCopy = in;
  objc_initWeak(&location, self);
  serialQueue = [(ANHomeManager *)self serialQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __50__ANHomeManager_accessoryDidUpdateSupportsDropIn___block_invoke;
  block[3] = &unk_278C86B98;
  v8 = inCopy;
  v6 = inCopy;
  objc_copyWeak(&v9, &location);
  dispatch_async(serialQueue, block);

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void __50__ANHomeManager_accessoryDidUpdateSupportsDropIn___block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x277D85DE8];
  v2 = ANLogHandleHomeManager();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(a1 + 32) name];
    v4 = [*(a1 + 32) uniqueIdentifier];
    v5 = [*(a1 + 32) supportsDropIn];
    *buf = 138413058;
    v11 = &stru_2851BDB18;
    v12 = 2112;
    v13 = v3;
    v14 = 2112;
    v15 = v4;
    v16 = 1024;
    v17 = v5;
    _os_log_impl(&dword_23F525000, v2, OS_LOG_TYPE_DEFAULT, "%@Accessory Supports Drop In Updated: %@, %@, Supports Drop In = %d", buf, 0x26u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __50__ANHomeManager_accessoryDidUpdateSupportsDropIn___block_invoke_62;
  v8[3] = &unk_278C86B48;
  v9 = *(a1 + 32);
  [WeakRetained _executeBlockForDelegates:v8];

  v7 = *MEMORY[0x277D85DE8];
}

void __50__ANHomeManager_accessoryDidUpdateSupportsDropIn___block_invoke_62(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 accessoryDidUpdateSupportedCapabilities:*(a1 + 32)];
  }
}

- (void)_executeBlockForDelegates:(id)delegates
{
  delegatesCopy = delegates;
  serialQueue = [(ANHomeManager *)self serialQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __43__ANHomeManager__executeBlockForDelegates___block_invoke;
  v7[3] = &unk_278C86840;
  v7[4] = self;
  v8 = delegatesCopy;
  v6 = delegatesCopy;
  dispatch_async(serialQueue, v7);
}

void __43__ANHomeManager__executeBlockForDelegates___block_invoke(uint64_t a1)
{
  v22 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) delegatesToQueues];
  v3 = [v2 keyEnumerator];
  v4 = [v3 allObjects];

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  obj = v4;
  v5 = [obj countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v18;
    do
    {
      v8 = 0;
      do
      {
        if (*v18 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v17 + 1) + 8 * v8);
        v10 = [*(a1 + 32) delegatesToQueues];
        v11 = [v10 objectForKey:v9];

        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __43__ANHomeManager__executeBlockForDelegates___block_invoke_2;
        block[3] = &unk_278C86C60;
        v12 = *(a1 + 40);
        block[4] = v9;
        v16 = v12;
        dispatch_async(v11, block);

        ++v8;
      }

      while (v6 != v8);
      v6 = [obj countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v6);
  }

  v13 = *MEMORY[0x277D85DE8];
}

@end