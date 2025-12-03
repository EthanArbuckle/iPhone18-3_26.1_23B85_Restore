@interface ANMessengerDestination
+ (id)_bestRemoteRelayAccessoryFromAccessories:(id)accessories inHome:(id)home;
+ (id)_destinationForAppleAccessories:(id)accessories home:(id)home rooms:(id)rooms rapportConnection:(id)connection;
+ (id)destinationForAccessoriesInHome:(id)home rooms:(id)rooms rapportConnection:(id)connection;
+ (id)destinationForHome:(id)home excludingUsers:(id)users excludingAccessories:(id)accessories rapportConnection:(id)connection;
+ (id)relayDestinationForHome:(id)home rooms:(id)rooms rapportConnection:(id)connection error:(id *)error;
- (ANMessengerDestination)init;
- (BOOL)addAccessory:(id)accessory;
- (BOOL)addDeviceWithID:(id)d rapportConnection:(id)connection;
- (BOOL)addUser:(id)user inHome:(id)home;
- (id)idsIdentifiersForService:(id)service;
- (id)participantsWithService:(id)service;
- (void)addUser:(id)user inHome:(id)home rapportConnection:(id)connection;
- (void)removeDeviceWithID:(id)d;
- (void)removeUser:(id)user;
- (void)removeUser:(id)user rapportConnection:(id)connection;
@end

@implementation ANMessengerDestination

- (ANMessengerDestination)init
{
  v9.receiver = self;
  v9.super_class = ANMessengerDestination;
  v2 = [(ANMessengerDestination *)&v9 init];
  v3 = v2;
  if (v2)
  {
    accessories = v2->_accessories;
    v5 = MEMORY[0x277CBEBF8];
    v2->_accessories = MEMORY[0x277CBEBF8];

    users = v3->_users;
    v3->_users = v5;

    devices = v3->_devices;
    v3->_devices = v5;
  }

  return v3;
}

- (id)idsIdentifiersForService:(id)service
{
  v41 = *MEMORY[0x277D85DE8];
  serviceCopy = service;
  v5 = MEMORY[0x277CBEB58];
  users = [(ANMessengerDestination *)self users];
  v7 = [users count];
  accessories = [(ANMessengerDestination *)self accessories];
  v9 = [v5 setWithCapacity:{objc_msgSend(accessories, "count") + v7}];

  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  users2 = [(ANMessengerDestination *)self users];
  v11 = [users2 countByEnumeratingWithState:&v35 objects:v40 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v36;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v36 != v13)
        {
          objc_enumerationMutation(users2);
        }

        v15 = *(*(&v35 + 1) + 8 * i);
        userIDSURI = [v15 userIDSURI];

        if (userIDSURI)
        {
          userIDSURI2 = [v15 userIDSURI];
          prefixedURI = [userIDSURI2 prefixedURI];
          [v9 addObject:prefixedURI];
        }
      }

      v12 = [users2 countByEnumeratingWithState:&v35 objects:v40 count:16];
    }

    while (v12);
  }

  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  accessories2 = [(ANMessengerDestination *)self accessories];
  v20 = [accessories2 countByEnumeratingWithState:&v31 objects:v39 count:16];
  if (v20)
  {
    v21 = v20;
    v22 = *v32;
    do
    {
      for (j = 0; j != v21; ++j)
      {
        if (*v32 != v22)
        {
          objc_enumerationMutation(accessories2);
        }

        device = [*(*(&v31 + 1) + 8 * j) device];
        v25 = [device IDSDestinationForIDSService:serviceCopy];
        destinationURIs = [v25 destinationURIs];
        anyObject = [destinationURIs anyObject];

        if (anyObject)
        {
          [v9 addObject:anyObject];
        }
      }

      v21 = [accessories2 countByEnumeratingWithState:&v31 objects:v39 count:16];
    }

    while (v21);
  }

  allObjects = [v9 allObjects];

  v29 = *MEMORY[0x277D85DE8];

  return allObjects;
}

- (id)participantsWithService:(id)service
{
  v53 = *MEMORY[0x277D85DE8];
  serviceCopy = service;
  v4 = MEMORY[0x277CBEB18];
  users = [(ANMessengerDestination *)self users];
  v6 = [users count];
  accessories = [(ANMessengerDestination *)self accessories];
  v8 = [accessories count] + v6;
  devices = [(ANMessengerDestination *)self devices];
  v10 = [v4 arrayWithCapacity:{v8 + objc_msgSend(devices, "count")}];

  v48 = 0u;
  v49 = 0u;
  v46 = 0u;
  v47 = 0u;
  selfCopy = self;
  users2 = [(ANMessengerDestination *)self users];
  v12 = [users2 countByEnumeratingWithState:&v46 objects:v52 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v47;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v47 != v14)
        {
          objc_enumerationMutation(users2);
        }

        v16 = [objc_alloc(MEMORY[0x277CEABB0]) initWithUser:*(*(&v46 + 1) + 8 * i)];
        [v10 addObject:v16];
      }

      v13 = [users2 countByEnumeratingWithState:&v46 objects:v52 count:16];
    }

    while (v13);
  }

  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  obj = [(ANMessengerDestination *)selfCopy accessories];
  v17 = [obj countByEnumeratingWithState:&v42 objects:v51 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v43;
    do
    {
      for (j = 0; j != v18; ++j)
      {
        if (*v43 != v19)
        {
          objc_enumerationMutation(obj);
        }

        v21 = *(*(&v42 + 1) + 8 * j);
        v22 = [objc_alloc(MEMORY[0x277CEABB0]) initWithAccessory:v21];
        device = [v21 device];
        v24 = [device IDSDestinationForIDSService:serviceCopy];
        destinationURIs = [v24 destinationURIs];
        anyObject = [destinationURIs anyObject];

        if (anyObject)
        {
          [v22 setIdsID:anyObject];
        }

        [v10 addObject:v22];
      }

      v18 = [obj countByEnumeratingWithState:&v42 objects:v51 count:16];
    }

    while (v18);
  }

  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  devices2 = [(ANMessengerDestination *)selfCopy devices];
  v28 = [devices2 countByEnumeratingWithState:&v38 objects:v50 count:16];
  if (v28)
  {
    v29 = v28;
    v30 = *v39;
    do
    {
      for (k = 0; k != v29; ++k)
      {
        if (*v39 != v30)
        {
          objc_enumerationMutation(devices2);
        }

        v32 = [objc_alloc(MEMORY[0x277CEABB0]) initWithDevice:*(*(&v38 + 1) + 8 * k)];
        [v10 addObject:v32];
      }

      v29 = [devices2 countByEnumeratingWithState:&v38 objects:v50 count:16];
    }

    while (v29);
  }

  v33 = *MEMORY[0x277D85DE8];

  return v10;
}

- (BOOL)addDeviceWithID:(id)d rapportConnection:(id)connection
{
  v29 = *MEMORY[0x277D85DE8];
  dCopy = d;
  connectionCopy = connection;
  mEMORY[0x277CEAB80] = [MEMORY[0x277CEAB80] sharedInstance];
  v9 = [mEMORY[0x277CEAB80] BOOLForDefault:*MEMORY[0x277CEA980]];

  if (v9)
  {
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    devices = [connectionCopy devices];
    activeDevicesSupportingAnnounce = [devices activeDevicesSupportingAnnounce];

    v12 = [activeDevicesSupportingAnnounce countByEnumeratingWithState:&v24 objects:v28 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v25;
      while (2)
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v25 != v14)
          {
            objc_enumerationMutation(activeDevicesSupportingAnnounce);
          }

          v16 = *(*(&v24 + 1) + 8 * i);
          idsDeviceIdentifier = [v16 idsDeviceIdentifier];
          v18 = [idsDeviceIdentifier isEqualToString:dCopy];

          if (v18)
          {
            devices2 = [(ANMessengerDestination *)self devices];
            v21 = [devices2 mutableCopy];

            [v21 addObject:v16];
            [(ANMessengerDestination *)self setDevices:v21];

            v19 = 1;
            goto LABEL_13;
          }
        }

        v13 = [activeDevicesSupportingAnnounce countByEnumeratingWithState:&v24 objects:v28 count:16];
        if (v13)
        {
          continue;
        }

        break;
      }
    }

    v19 = 0;
LABEL_13:
  }

  else
  {
    v19 = 0;
  }

  v22 = *MEMORY[0x277D85DE8];
  return v19;
}

- (BOOL)addUser:(id)user inHome:(id)home
{
  userCopy = user;
  homeCopy = home;
  if (([homeCopy hmu_isRemoteAccessAllowedForUser:userCopy] & 1) != 0 || objc_msgSend(homeCopy, "announceAccessAllowedForUser:", userCopy))
  {
    users = [(ANMessengerDestination *)self users];
    v9 = [users mutableCopy];

    [v9 addObject:userCopy];
    [(ANMessengerDestination *)self setUsers:v9];

    v10 = 1;
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (void)addUser:(id)user inHome:(id)home rapportConnection:(id)connection
{
  connectionCopy = connection;
  userCopy = user;
  [(ANMessengerDestination *)self addUser:userCopy inHome:home];
  devices = [(ANMessengerDestination *)self devices];
  v14 = [devices mutableCopy];

  devices2 = [connectionCopy devices];

  activePersonalDevicesSupportingAnnounce = [devices2 activePersonalDevicesSupportingAnnounce];
  v13 = [activePersonalDevicesSupportingAnnounce personalDevicesForUser:userCopy];

  [v14 addObjectsFromArray:v13];
  [(ANMessengerDestination *)self setDevices:v14];
}

- (BOOL)addAccessory:(id)accessory
{
  accessoryCopy = accessory;
  accessories = [(ANMessengerDestination *)self accessories];
  v6 = [accessories mutableCopy];

  [v6 addObject:accessoryCopy];
  [(ANMessengerDestination *)self setAccessories:v6];

  return 1;
}

- (void)removeUser:(id)user
{
  v22 = *MEMORY[0x277D85DE8];
  userCopy = user;
  if (userCopy)
  {
    users = [(ANMessengerDestination *)self users];
    v6 = [users mutableCopy];

    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __37__ANMessengerDestination_removeUser___block_invoke;
    v14[3] = &unk_278C871C8;
    v7 = userCopy;
    v15 = v7;
    v8 = [v6 indexOfObjectPassingTest:v14];
    if (v8 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v9 = v8;
      v10 = ANLogHandleMessengerDestination();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        userID = [v7 userID];
        uniqueIdentifier = [v7 uniqueIdentifier];
        *buf = 138412802;
        v17 = &stru_2851BDB18;
        v18 = 2112;
        v19 = userID;
        v20 = 2112;
        v21 = uniqueIdentifier;
        _os_log_impl(&dword_23F525000, v10, OS_LOG_TYPE_DEFAULT, "%@Removed User from Destination: %@, %@", buf, 0x20u);
      }

      [v6 removeObjectAtIndex:v9];
      [(ANMessengerDestination *)self setUsers:v6];
    }
  }

  v13 = *MEMORY[0x277D85DE8];
}

uint64_t __37__ANMessengerDestination_removeUser___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 uniqueIdentifier];
  v4 = [*(a1 + 32) uniqueIdentifier];
  v5 = [v3 isEqual:v4];

  return v5;
}

- (void)removeDeviceWithID:(id)d
{
  v22 = *MEMORY[0x277D85DE8];
  dCopy = d;
  if (dCopy)
  {
    devices = [(ANMessengerDestination *)self devices];
    v6 = [devices mutableCopy];

    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __45__ANMessengerDestination_removeDeviceWithID___block_invoke;
    v14[3] = &unk_278C871C8;
    v7 = dCopy;
    v15 = v7;
    v8 = [v6 indexOfObjectPassingTest:v14];
    if (v8 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v9 = v8;
      v10 = [v6 objectAtIndex:v8];
      v11 = ANLogHandleMessengerDestination();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        name = [v10 name];
        *buf = 138412802;
        v17 = &stru_2851BDB18;
        v18 = 2112;
        v19 = name;
        v20 = 2112;
        v21 = v7;
        _os_log_impl(&dword_23F525000, v11, OS_LOG_TYPE_DEFAULT, "%@Removed Device ID from Destination: %@, %@", buf, 0x20u);
      }

      [v6 removeObjectAtIndex:v9];
      [(ANMessengerDestination *)self setDevices:v6];
    }
  }

  v13 = *MEMORY[0x277D85DE8];
}

uint64_t __45__ANMessengerDestination_removeDeviceWithID___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 idsDeviceIdentifier];
  v4 = [v3 isEqualToString:*(a1 + 32)];

  return v4;
}

- (void)removeUser:(id)user rapportConnection:(id)connection
{
  v23 = *MEMORY[0x277D85DE8];
  userCopy = user;
  connectionCopy = connection;
  [(ANMessengerDestination *)self removeUser:userCopy];
  devices = [connectionCopy devices];
  activePersonalDevicesSupportingAnnounce = [devices activePersonalDevicesSupportingAnnounce];
  v10 = [activePersonalDevicesSupportingAnnounce personalDevicesForUser:userCopy];

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v11 = v10;
  v12 = [v11 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v19;
    do
    {
      v15 = 0;
      do
      {
        if (*v19 != v14)
        {
          objc_enumerationMutation(v11);
        }

        idsDeviceIdentifier = [*(*(&v18 + 1) + 8 * v15) idsDeviceIdentifier];
        [(ANMessengerDestination *)self removeDeviceWithID:idsDeviceIdentifier];

        ++v15;
      }

      while (v13 != v15);
      v13 = [v11 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v13);
  }

  v17 = *MEMORY[0x277D85DE8];
}

+ (id)relayDestinationForHome:(id)home rooms:(id)rooms rapportConnection:(id)connection error:(id *)error
{
  v46 = *MEMORY[0x277D85DE8];
  homeCopy = home;
  roomsCopy = rooms;
  connectionCopy = connection;
  v11 = MEMORY[0x277CD1650];
  v12 = [MEMORY[0x277CD1D88] hmu_accessoriesInRooms:roomsCopy];
  v13 = [v11 appleAnnounceHostAccessoriesFromAccessories:v12];

  if ([v13 count])
  {
    v14 = v13;
  }

  else
  {
    v15 = MEMORY[0x277CD1650];
    accessories = [homeCopy accessories];
    v14 = [v15 appleAnnounceHostAccessoriesFromAccessories:accessories];
  }

  v17 = [MEMORY[0x277CD1650] accessoriesWithAnnounceEnabledFromAccessories:v14];
  if ([v17 count])
  {
    v18 = v17;
  }

  else
  {
    v18 = v14;
  }

  v19 = [v18 sortedArrayUsingComparator:&__block_literal_global_22];
  mEMORY[0x277CEAB80] = [MEMORY[0x277CEAB80] sharedInstance];
  v21 = [mEMORY[0x277CEAB80] BOOLForDefault:*MEMORY[0x277CEA980]];

  if (v21)
  {
    v38 = roomsCopy;
    v22 = [ANMessengerDestination _destinationForAppleAccessories:v19 home:homeCopy rooms:roomsCopy rapportConnection:connectionCopy];
    devices = [v22 devices];
    v24 = ANLogHandleMessengerDestination();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v43 = &stru_2851BDB18;
      v44 = 2048;
      v45 = [devices count];
      _os_log_impl(&dword_23F525000, v24, OS_LOG_TYPE_DEFAULT, "%@Checking (%lu) nearby Accessories for Relay Viability", buf, 0x16u);
    }

    if ([devices count])
    {
      firstObject = [devices firstObject];
      v26 = ANLogHandleMessengerDestination();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        v43 = &stru_2851BDB18;
        v44 = 2112;
        v45 = firstObject;
        _os_log_impl(&dword_23F525000, v26, OS_LOG_TYPE_DEFAULT, "%@Relaying Announcement through Nearby Accessory (%@)", buf, 0x16u);
      }

      v27 = objc_opt_new();
      [v27 setHome:homeCopy];
      v41 = firstObject;
      v28 = [MEMORY[0x277CBEA60] arrayWithObjects:&v41 count:1];
      [v27 setDevices:v28];

      roomsCopy = v38;
      goto LABEL_28;
    }

    roomsCopy = v38;
  }

  if (![homeCopy hmu_isRemoteAccessAllowedForCurrentUser])
  {
    if (error)
    {
      v33 = MEMORY[0x277CCA9B8];
      v34 = *MEMORY[0x277CEA9B8];
      v35 = 1032;
LABEL_26:
      [v33 an_errorWithCode:v35 component:v34];
      *error = v27 = 0;
      goto LABEL_28;
    }

LABEL_27:
    v27 = 0;
    goto LABEL_28;
  }

  v29 = [ANMessengerDestination _bestRemoteRelayAccessoryFromAccessories:v19 inHome:homeCopy];
  v30 = ANLogHandleMessengerDestination();
  v31 = v30;
  if (!v29)
  {
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v43 = &stru_2851BDB18;
      _os_log_impl(&dword_23F525000, v31, OS_LOG_TYPE_ERROR, "%@Failed to find Accessory for remote relay", buf, 0xCu);
    }

    if (error)
    {
      v33 = MEMORY[0x277CCA9B8];
      v34 = *MEMORY[0x277CEA9B8];
      v35 = 1015;
      goto LABEL_26;
    }

    goto LABEL_27;
  }

  if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v43 = &stru_2851BDB18;
    v44 = 2112;
    v45 = v29;
    _os_log_impl(&dword_23F525000, v31, OS_LOG_TYPE_DEFAULT, "%@Relaying Announcement through Accessory %@", buf, 0x16u);
  }

  v27 = objc_opt_new();
  [v27 setHome:homeCopy];
  v40 = v29;
  v32 = [MEMORY[0x277CBEA60] arrayWithObjects:&v40 count:1];
  [v27 setAccessories:v32];

LABEL_28:
  v36 = *MEMORY[0x277D85DE8];

  return v27;
}

uint64_t __80__ANMessengerDestination_relayDestinationForHome_rooms_rapportConnection_error___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 softwareVersion];
  v6 = [v4 softwareVersion];

  v7 = [v5 compare:v6];
  v8 = 1;
  if (v7 != -1)
  {
    v8 = v7;
  }

  if (v7 == 1)
  {
    v9 = -1;
  }

  else
  {
    v9 = v8;
  }

  return v9;
}

+ (id)destinationForHome:(id)home excludingUsers:(id)users excludingAccessories:(id)accessories rapportConnection:(id)connection
{
  homeCopy = home;
  usersCopy = users;
  connectionCopy = connection;
  v12 = MEMORY[0x277CD1650];
  accessoriesCopy = accessories;
  accessories = [homeCopy accessories];
  v15 = [v12 appleAnnounceHostAccessoriesFromAccessories:accessories];
  v16 = [v15 mutableCopy];

  [v16 removeObjectsInArray:accessoriesCopy];
  v17 = [v16 copy];
  hmu_allRoomsIncludingRoomForEntireHome = [homeCopy hmu_allRoomsIncludingRoomForEntireHome];
  v19 = [ANMessengerDestination _destinationForAppleAccessories:v17 home:homeCopy rooms:hmu_allRoomsIncludingRoomForEntireHome rapportConnection:connectionCopy];

  [v19 setHome:homeCopy];
  mEMORY[0x277CEAB80] = [MEMORY[0x277CEAB80] sharedInstance];
  v21 = [mEMORY[0x277CEAB80] BOOLForDefault:*MEMORY[0x277CEA980]];

  if (v21 && [MEMORY[0x277CEAB38] isEnabledForPersonalDevices])
  {
    devices = [connectionCopy devices];
    activeAccessoryDevicesSupportingAnnounce = [devices activeAccessoryDevicesSupportingAnnounce];
    allValues = [activeAccessoryDevicesSupportingAnnounce allValues];
    v25 = [allValues mutableCopy];

    devices2 = [v19 devices];
    [v25 removeObjectsInArray:devices2];
    devices3 = [connectionCopy devices];
    activeDevicesSupportingAnnounce = [devices3 activeDevicesSupportingAnnounce];
    v28 = [activeDevicesSupportingAnnounce mutableCopy];

    [v28 removeObjectsInArray:v25];
    v29 = MEMORY[0x277CBEB18];
    usersIncludingCurrentUserWithAnnounceEnabled = [homeCopy usersIncludingCurrentUserWithAnnounceEnabled];
    v31 = [v29 arrayWithArray:usersIncludingCurrentUserWithAnnounceEnabled];

    [v31 removeObjectsInArray:usersCopy];
    v32 = [v28 devicesByRemovingNonAccessoryDevicesNotBelongingToUsers:v31];
    [v19 setDevices:v32];
  }

  if ([MEMORY[0x277CEAB38] isEnabledForPersonalDevices])
  {
    v33 = MEMORY[0x277CBEB18];
    usersIncludingCurrentUserWithAnnounceAndRemoteAccessEnabled = [homeCopy usersIncludingCurrentUserWithAnnounceAndRemoteAccessEnabled];
    v35 = [v33 arrayWithArray:usersIncludingCurrentUserWithAnnounceAndRemoteAccessEnabled];

    [v35 removeObjectsInArray:usersCopy];
    [v19 setUsers:v35];
  }

  return v19;
}

+ (id)destinationForAccessoriesInHome:(id)home rooms:(id)rooms rapportConnection:(id)connection
{
  v7 = MEMORY[0x277CD1650];
  connectionCopy = connection;
  roomsCopy = rooms;
  homeCopy = home;
  accessories = [homeCopy accessories];
  v12 = [v7 appleAnnounceHostAccessoriesFromAccessories:accessories];

  v13 = [ANMessengerDestination _destinationForAppleAccessories:v12 home:homeCopy rooms:roomsCopy rapportConnection:connectionCopy];

  [v13 setHome:homeCopy];

  return v13;
}

+ (id)_destinationForAppleAccessories:(id)accessories home:(id)home rooms:(id)rooms rapportConnection:(id)connection
{
  v38 = *MEMORY[0x277D85DE8];
  accessoriesCopy = accessories;
  connectionCopy = connection;
  v10 = [connectionCopy activateLinkWithOptions:2];
  if (v10)
  {
    v11 = ANLogHandleMessengerDestination();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v35 = &stru_2851BDB18;
      v36 = 2112;
      v37 = v10;
      _os_log_impl(&dword_23F525000, v11, OS_LOG_TYPE_ERROR, "%@Activate Rapport link failed with error: %@", buf, 0x16u);
    }
  }

  devices = [connectionCopy devices];
  activeAccessoryDevicesSupportingAnnounce = [devices activeAccessoryDevicesSupportingAnnounce];

  v14 = objc_opt_new();
  mEMORY[0x277CEAB80] = [MEMORY[0x277CEAB80] sharedInstance];
  v16 = [mEMORY[0x277CEAB80] BOOLForDefault:*MEMORY[0x277CEA980]];

  if (v16)
  {
    selfCopy = self;
    v28 = accessoriesCopy;
    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    v17 = accessoriesCopy;
    v18 = [v17 countByEnumeratingWithState:&v29 objects:v33 count:16];
    if (v18)
    {
      v19 = v18;
      v20 = *v30;
      do
      {
        for (i = 0; i != v19; ++i)
        {
          if (*v30 != v20)
          {
            objc_enumerationMutation(v17);
          }

          uniqueIdentifier = [*(*(&v29 + 1) + 8 * i) uniqueIdentifier];
          v23 = [activeAccessoryDevicesSupportingAnnounce objectForKey:uniqueIdentifier];

          if (v23)
          {
            [v14 addObject:v23];
          }
        }

        v19 = [v17 countByEnumeratingWithState:&v29 objects:v33 count:16];
      }

      while (v19);
    }

    accessoriesCopy = v28;
  }

  v24 = objc_opt_new();
  [v24 setDevices:v14];

  v25 = *MEMORY[0x277D85DE8];

  return v24;
}

+ (id)_bestRemoteRelayAccessoryFromAccessories:(id)accessories inHome:(id)home
{
  v64 = *MEMORY[0x277D85DE8];
  accessoriesCopy = accessories;
  homeCopy = home;
  v7 = ANLogHandleMessengerDestination();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v54 = &stru_2851BDB18;
    v55 = 2048;
    v56 = [accessoriesCopy count];
    _os_log_impl(&dword_23F525000, v7, OS_LOG_TYPE_DEFAULT, "%@Checking (%lu) remote Accessories for Relay Viability", buf, 0x16u);
  }

  if ([accessoriesCopy count] == 1)
  {
    v8 = ANLogHandleMessengerDestination();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      firstObject = [accessoriesCopy firstObject];
      *buf = 138412546;
      v54 = &stru_2851BDB18;
      v55 = 2112;
      v56 = firstObject;
      _os_log_impl(&dword_23F525000, v8, OS_LOG_TYPE_DEFAULT, "%@Selected Single Accessory: %@", buf, 0x16u);
    }

    firstObject2 = [accessoriesCopy firstObject];
    goto LABEL_30;
  }

  v42 = accessoriesCopy;
  v43 = homeCopy;
  v51 = 0u;
  v52 = 0u;
  v49 = 0u;
  v50 = 0u;
  obj = accessoriesCopy;
  v11 = [obj countByEnumeratingWithState:&v49 objects:v63 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v50;
    while (2)
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v50 != v13)
        {
          objc_enumerationMutation(obj);
        }

        v15 = *(*(&v49 + 1) + 8 * i);
        v16 = ANLogHandleMessengerDestination();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
          name = [v15 name];
          uniqueIdentifier = [v15 uniqueIdentifier];
          settings = [v15 settings];
          isControllable = [settings isControllable];
          supportsAnnounce = [v15 supportsAnnounce];
          *buf = 138413314;
          v54 = &stru_2851BDB18;
          v55 = 2112;
          v56 = name;
          v57 = 2112;
          v58 = uniqueIdentifier;
          v59 = 1024;
          v60 = isControllable;
          v61 = 1024;
          v62 = supportsAnnounce;
          _os_log_impl(&dword_23F525000, v16, OS_LOG_TYPE_DEFAULT, "%@Checking if Accessory can Relay: %@, HomeKitID: %@, Controllable: %d, Announce Supported: %d", buf, 0x2Cu);
        }

        settings2 = [v15 settings];
        isControllable2 = [settings2 isControllable];

        if (isControllable2)
        {
          v37 = ANLogHandleMessengerDestination();
          if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412546;
            v54 = &stru_2851BDB18;
            v55 = 2112;
            v56 = v15;
            _os_log_impl(&dword_23F525000, v37, OS_LOG_TYPE_DEFAULT, "%@Found controllable accessory: %@", buf, 0x16u);
          }

          firstObject2 = v15;
          goto LABEL_29;
        }
      }

      v12 = [obj countByEnumeratingWithState:&v49 objects:v63 count:16];
      if (v12)
      {
        continue;
      }

      break;
    }
  }

  mEMORY[0x277CEAB80] = [MEMORY[0x277CEAB80] sharedInstance];
  v25 = [mEMORY[0x277CEAB80] BOOLForDefault:*MEMORY[0x277CEA8A0]];

  if (v25)
  {
    v26 = ANLogHandleMessengerDestination();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v54 = &stru_2851BDB18;
      _os_log_impl(&dword_23F525000, v26, OS_LOG_TYPE_DEFAULT, "%@Checking Residents for Relay", buf, 0xCu);
    }

    residentDevices = [v43 residentDevices];
    v28 = [residentDevices na_filter:&__block_literal_global_17];

    v29 = MEMORY[0x277CD1650];
    accessories = [v43 accessories];
    v31 = [v29 appleAnnounceHostAccessoriesFromAccessories:accessories];

    v32 = [v28 na_firstObjectPassingTest:&__block_literal_global_19];
    v33 = v32;
    if (v32)
    {
      v47[0] = MEMORY[0x277D85DD0];
      v47[1] = 3221225472;
      v47[2] = __74__ANMessengerDestination__bestRemoteRelayAccessoryFromAccessories_inHome___block_invoke_3;
      v47[3] = &unk_278C87230;
      v48 = v32;
      v34 = [v31 na_firstObjectPassingTest:v47];
      if (v34)
      {
        firstObject2 = v34;
        v35 = ANLogHandleMessengerDestination();
        if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412546;
          v54 = &stru_2851BDB18;
          v55 = 2112;
          v56 = firstObject2;
          _os_log_impl(&dword_23F525000, v35, OS_LOG_TYPE_DEFAULT, "%@Selected Primary Resident in Target List: %@", buf, 0x16u);
        }

        v36 = v48;
        homeCopy = v43;
LABEL_39:

        accessoriesCopy = v42;
        goto LABEL_30;
      }
    }

    v40 = [v28 na_map:{&__block_literal_global_24, v42}];
    v45[0] = MEMORY[0x277D85DD0];
    v45[1] = 3221225472;
    v45[2] = __74__ANMessengerDestination__bestRemoteRelayAccessoryFromAccessories_inHome___block_invoke_2_25;
    v45[3] = &unk_278C87230;
    v46 = v40;
    v36 = v40;
    firstObject2 = [v31 na_firstObjectPassingTest:v45];
    homeCopy = v43;
    if (firstObject2)
    {
      v41 = ANLogHandleMessengerDestination();
      if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        v54 = &stru_2851BDB18;
        v55 = 2112;
        v56 = firstObject2;
        _os_log_impl(&dword_23F525000, v41, OS_LOG_TYPE_DEFAULT, "%@Selected any Announce-capable Accessory: %@", buf, 0x16u);
      }
    }

    goto LABEL_39;
  }

  firstObject2 = 0;
LABEL_29:
  accessoriesCopy = v42;
  homeCopy = v43;
LABEL_30:

  v38 = *MEMORY[0x277D85DE8];

  return firstObject2;
}

uint64_t __74__ANMessengerDestination__bestRemoteRelayAccessoryFromAccessories_inHome___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = [a2 device];
  v4 = [v3 uniqueIdentifier];
  v5 = [*(a1 + 32) device];
  v6 = [v5 uniqueIdentifier];
  v7 = [v4 isEqual:v6];

  return v7;
}

uint64_t __74__ANMessengerDestination__bestRemoteRelayAccessoryFromAccessories_inHome___block_invoke_2_25(uint64_t a1, void *a2)
{
  v3 = [a2 device];
  if (v3)
  {
    v4 = [*(a1 + 32) containsObject:v3];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

@end