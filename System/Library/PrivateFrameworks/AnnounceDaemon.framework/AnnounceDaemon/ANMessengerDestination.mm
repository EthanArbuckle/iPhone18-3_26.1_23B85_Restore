@interface ANMessengerDestination
+ (id)_bestRemoteRelayAccessoryFromAccessories:(id)a3 inHome:(id)a4;
+ (id)_destinationForAppleAccessories:(id)a3 home:(id)a4 rooms:(id)a5 rapportConnection:(id)a6;
+ (id)destinationForAccessoriesInHome:(id)a3 rooms:(id)a4 rapportConnection:(id)a5;
+ (id)destinationForHome:(id)a3 excludingUsers:(id)a4 excludingAccessories:(id)a5 rapportConnection:(id)a6;
+ (id)relayDestinationForHome:(id)a3 rooms:(id)a4 rapportConnection:(id)a5 error:(id *)a6;
- (ANMessengerDestination)init;
- (BOOL)addAccessory:(id)a3;
- (BOOL)addDeviceWithID:(id)a3 rapportConnection:(id)a4;
- (BOOL)addUser:(id)a3 inHome:(id)a4;
- (id)idsIdentifiersForService:(id)a3;
- (id)participantsWithService:(id)a3;
- (void)addUser:(id)a3 inHome:(id)a4 rapportConnection:(id)a5;
- (void)removeDeviceWithID:(id)a3;
- (void)removeUser:(id)a3;
- (void)removeUser:(id)a3 rapportConnection:(id)a4;
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

- (id)idsIdentifiersForService:(id)a3
{
  v41 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = MEMORY[0x277CBEB58];
  v6 = [(ANMessengerDestination *)self users];
  v7 = [v6 count];
  v8 = [(ANMessengerDestination *)self accessories];
  v9 = [v5 setWithCapacity:{objc_msgSend(v8, "count") + v7}];

  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v10 = [(ANMessengerDestination *)self users];
  v11 = [v10 countByEnumeratingWithState:&v35 objects:v40 count:16];
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
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v35 + 1) + 8 * i);
        v16 = [v15 userIDSURI];

        if (v16)
        {
          v17 = [v15 userIDSURI];
          v18 = [v17 prefixedURI];
          [v9 addObject:v18];
        }
      }

      v12 = [v10 countByEnumeratingWithState:&v35 objects:v40 count:16];
    }

    while (v12);
  }

  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v19 = [(ANMessengerDestination *)self accessories];
  v20 = [v19 countByEnumeratingWithState:&v31 objects:v39 count:16];
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
          objc_enumerationMutation(v19);
        }

        v24 = [*(*(&v31 + 1) + 8 * j) device];
        v25 = [v24 IDSDestinationForIDSService:v4];
        v26 = [v25 destinationURIs];
        v27 = [v26 anyObject];

        if (v27)
        {
          [v9 addObject:v27];
        }
      }

      v21 = [v19 countByEnumeratingWithState:&v31 objects:v39 count:16];
    }

    while (v21);
  }

  v28 = [v9 allObjects];

  v29 = *MEMORY[0x277D85DE8];

  return v28;
}

- (id)participantsWithService:(id)a3
{
  v53 = *MEMORY[0x277D85DE8];
  v37 = a3;
  v4 = MEMORY[0x277CBEB18];
  v5 = [(ANMessengerDestination *)self users];
  v6 = [v5 count];
  v7 = [(ANMessengerDestination *)self accessories];
  v8 = [v7 count] + v6;
  v9 = [(ANMessengerDestination *)self devices];
  v10 = [v4 arrayWithCapacity:{v8 + objc_msgSend(v9, "count")}];

  v48 = 0u;
  v49 = 0u;
  v46 = 0u;
  v47 = 0u;
  v35 = self;
  v11 = [(ANMessengerDestination *)self users];
  v12 = [v11 countByEnumeratingWithState:&v46 objects:v52 count:16];
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
          objc_enumerationMutation(v11);
        }

        v16 = [objc_alloc(MEMORY[0x277CEABB0]) initWithUser:*(*(&v46 + 1) + 8 * i)];
        [v10 addObject:v16];
      }

      v13 = [v11 countByEnumeratingWithState:&v46 objects:v52 count:16];
    }

    while (v13);
  }

  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  obj = [(ANMessengerDestination *)v35 accessories];
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
        v23 = [v21 device];
        v24 = [v23 IDSDestinationForIDSService:v37];
        v25 = [v24 destinationURIs];
        v26 = [v25 anyObject];

        if (v26)
        {
          [v22 setIdsID:v26];
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
  v27 = [(ANMessengerDestination *)v35 devices];
  v28 = [v27 countByEnumeratingWithState:&v38 objects:v50 count:16];
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
          objc_enumerationMutation(v27);
        }

        v32 = [objc_alloc(MEMORY[0x277CEABB0]) initWithDevice:*(*(&v38 + 1) + 8 * k)];
        [v10 addObject:v32];
      }

      v29 = [v27 countByEnumeratingWithState:&v38 objects:v50 count:16];
    }

    while (v29);
  }

  v33 = *MEMORY[0x277D85DE8];

  return v10;
}

- (BOOL)addDeviceWithID:(id)a3 rapportConnection:(id)a4
{
  v29 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [MEMORY[0x277CEAB80] sharedInstance];
  v9 = [v8 BOOLForDefault:*MEMORY[0x277CEA980]];

  if (v9)
  {
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v10 = [v7 devices];
    v11 = [v10 activeDevicesSupportingAnnounce];

    v12 = [v11 countByEnumeratingWithState:&v24 objects:v28 count:16];
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
            objc_enumerationMutation(v11);
          }

          v16 = *(*(&v24 + 1) + 8 * i);
          v17 = [v16 idsDeviceIdentifier];
          v18 = [v17 isEqualToString:v6];

          if (v18)
          {
            v20 = [(ANMessengerDestination *)self devices];
            v21 = [v20 mutableCopy];

            [v21 addObject:v16];
            [(ANMessengerDestination *)self setDevices:v21];

            v19 = 1;
            goto LABEL_13;
          }
        }

        v13 = [v11 countByEnumeratingWithState:&v24 objects:v28 count:16];
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

- (BOOL)addUser:(id)a3 inHome:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (([v7 hmu_isRemoteAccessAllowedForUser:v6] & 1) != 0 || objc_msgSend(v7, "announceAccessAllowedForUser:", v6))
  {
    v8 = [(ANMessengerDestination *)self users];
    v9 = [v8 mutableCopy];

    [v9 addObject:v6];
    [(ANMessengerDestination *)self setUsers:v9];

    v10 = 1;
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (void)addUser:(id)a3 inHome:(id)a4 rapportConnection:(id)a5
{
  v8 = a5;
  v9 = a3;
  [(ANMessengerDestination *)self addUser:v9 inHome:a4];
  v10 = [(ANMessengerDestination *)self devices];
  v14 = [v10 mutableCopy];

  v11 = [v8 devices];

  v12 = [v11 activePersonalDevicesSupportingAnnounce];
  v13 = [v12 personalDevicesForUser:v9];

  [v14 addObjectsFromArray:v13];
  [(ANMessengerDestination *)self setDevices:v14];
}

- (BOOL)addAccessory:(id)a3
{
  v4 = a3;
  v5 = [(ANMessengerDestination *)self accessories];
  v6 = [v5 mutableCopy];

  [v6 addObject:v4];
  [(ANMessengerDestination *)self setAccessories:v6];

  return 1;
}

- (void)removeUser:(id)a3
{
  v22 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (v4)
  {
    v5 = [(ANMessengerDestination *)self users];
    v6 = [v5 mutableCopy];

    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __37__ANMessengerDestination_removeUser___block_invoke;
    v14[3] = &unk_278C871C8;
    v7 = v4;
    v15 = v7;
    v8 = [v6 indexOfObjectPassingTest:v14];
    if (v8 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v9 = v8;
      v10 = ANLogHandleMessengerDestination();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v11 = [v7 userID];
        v12 = [v7 uniqueIdentifier];
        *buf = 138412802;
        v17 = &stru_2851BDB18;
        v18 = 2112;
        v19 = v11;
        v20 = 2112;
        v21 = v12;
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

- (void)removeDeviceWithID:(id)a3
{
  v22 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (v4)
  {
    v5 = [(ANMessengerDestination *)self devices];
    v6 = [v5 mutableCopy];

    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __45__ANMessengerDestination_removeDeviceWithID___block_invoke;
    v14[3] = &unk_278C871C8;
    v7 = v4;
    v15 = v7;
    v8 = [v6 indexOfObjectPassingTest:v14];
    if (v8 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v9 = v8;
      v10 = [v6 objectAtIndex:v8];
      v11 = ANLogHandleMessengerDestination();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v12 = [v10 name];
        *buf = 138412802;
        v17 = &stru_2851BDB18;
        v18 = 2112;
        v19 = v12;
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

- (void)removeUser:(id)a3 rapportConnection:(id)a4
{
  v23 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  [(ANMessengerDestination *)self removeUser:v6];
  v8 = [v7 devices];
  v9 = [v8 activePersonalDevicesSupportingAnnounce];
  v10 = [v9 personalDevicesForUser:v6];

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

        v16 = [*(*(&v18 + 1) + 8 * v15) idsDeviceIdentifier];
        [(ANMessengerDestination *)self removeDeviceWithID:v16];

        ++v15;
      }

      while (v13 != v15);
      v13 = [v11 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v13);
  }

  v17 = *MEMORY[0x277D85DE8];
}

+ (id)relayDestinationForHome:(id)a3 rooms:(id)a4 rapportConnection:(id)a5 error:(id *)a6
{
  v46 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a4;
  v39 = a5;
  v11 = MEMORY[0x277CD1650];
  v12 = [MEMORY[0x277CD1D88] hmu_accessoriesInRooms:v10];
  v13 = [v11 appleAnnounceHostAccessoriesFromAccessories:v12];

  if ([v13 count])
  {
    v14 = v13;
  }

  else
  {
    v15 = MEMORY[0x277CD1650];
    v16 = [v9 accessories];
    v14 = [v15 appleAnnounceHostAccessoriesFromAccessories:v16];
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
  v20 = [MEMORY[0x277CEAB80] sharedInstance];
  v21 = [v20 BOOLForDefault:*MEMORY[0x277CEA980]];

  if (v21)
  {
    v38 = v10;
    v22 = [ANMessengerDestination _destinationForAppleAccessories:v19 home:v9 rooms:v10 rapportConnection:v39];
    v23 = [v22 devices];
    v24 = ANLogHandleMessengerDestination();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v43 = &stru_2851BDB18;
      v44 = 2048;
      v45 = [v23 count];
      _os_log_impl(&dword_23F525000, v24, OS_LOG_TYPE_DEFAULT, "%@Checking (%lu) nearby Accessories for Relay Viability", buf, 0x16u);
    }

    if ([v23 count])
    {
      v25 = [v23 firstObject];
      v26 = ANLogHandleMessengerDestination();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        v43 = &stru_2851BDB18;
        v44 = 2112;
        v45 = v25;
        _os_log_impl(&dword_23F525000, v26, OS_LOG_TYPE_DEFAULT, "%@Relaying Announcement through Nearby Accessory (%@)", buf, 0x16u);
      }

      v27 = objc_opt_new();
      [v27 setHome:v9];
      v41 = v25;
      v28 = [MEMORY[0x277CBEA60] arrayWithObjects:&v41 count:1];
      [v27 setDevices:v28];

      v10 = v38;
      goto LABEL_28;
    }

    v10 = v38;
  }

  if (![v9 hmu_isRemoteAccessAllowedForCurrentUser])
  {
    if (a6)
    {
      v33 = MEMORY[0x277CCA9B8];
      v34 = *MEMORY[0x277CEA9B8];
      v35 = 1032;
LABEL_26:
      [v33 an_errorWithCode:v35 component:v34];
      *a6 = v27 = 0;
      goto LABEL_28;
    }

LABEL_27:
    v27 = 0;
    goto LABEL_28;
  }

  v29 = [ANMessengerDestination _bestRemoteRelayAccessoryFromAccessories:v19 inHome:v9];
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

    if (a6)
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
  [v27 setHome:v9];
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

+ (id)destinationForHome:(id)a3 excludingUsers:(id)a4 excludingAccessories:(id)a5 rapportConnection:(id)a6
{
  v9 = a3;
  v10 = a4;
  v11 = a6;
  v12 = MEMORY[0x277CD1650];
  v13 = a5;
  v14 = [v9 accessories];
  v15 = [v12 appleAnnounceHostAccessoriesFromAccessories:v14];
  v16 = [v15 mutableCopy];

  [v16 removeObjectsInArray:v13];
  v17 = [v16 copy];
  v18 = [v9 hmu_allRoomsIncludingRoomForEntireHome];
  v19 = [ANMessengerDestination _destinationForAppleAccessories:v17 home:v9 rooms:v18 rapportConnection:v11];

  [v19 setHome:v9];
  v20 = [MEMORY[0x277CEAB80] sharedInstance];
  v21 = [v20 BOOLForDefault:*MEMORY[0x277CEA980]];

  if (v21 && [MEMORY[0x277CEAB38] isEnabledForPersonalDevices])
  {
    v22 = [v11 devices];
    v23 = [v22 activeAccessoryDevicesSupportingAnnounce];
    v24 = [v23 allValues];
    v25 = [v24 mutableCopy];

    v37 = [v19 devices];
    [v25 removeObjectsInArray:v37];
    v26 = [v11 devices];
    v27 = [v26 activeDevicesSupportingAnnounce];
    v28 = [v27 mutableCopy];

    [v28 removeObjectsInArray:v25];
    v29 = MEMORY[0x277CBEB18];
    v30 = [v9 usersIncludingCurrentUserWithAnnounceEnabled];
    v31 = [v29 arrayWithArray:v30];

    [v31 removeObjectsInArray:v10];
    v32 = [v28 devicesByRemovingNonAccessoryDevicesNotBelongingToUsers:v31];
    [v19 setDevices:v32];
  }

  if ([MEMORY[0x277CEAB38] isEnabledForPersonalDevices])
  {
    v33 = MEMORY[0x277CBEB18];
    v34 = [v9 usersIncludingCurrentUserWithAnnounceAndRemoteAccessEnabled];
    v35 = [v33 arrayWithArray:v34];

    [v35 removeObjectsInArray:v10];
    [v19 setUsers:v35];
  }

  return v19;
}

+ (id)destinationForAccessoriesInHome:(id)a3 rooms:(id)a4 rapportConnection:(id)a5
{
  v7 = MEMORY[0x277CD1650];
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [v10 accessories];
  v12 = [v7 appleAnnounceHostAccessoriesFromAccessories:v11];

  v13 = [ANMessengerDestination _destinationForAppleAccessories:v12 home:v10 rooms:v9 rapportConnection:v8];

  [v13 setHome:v10];

  return v13;
}

+ (id)_destinationForAppleAccessories:(id)a3 home:(id)a4 rooms:(id)a5 rapportConnection:(id)a6
{
  v38 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a6;
  v10 = [v9 activateLinkWithOptions:2];
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

  v12 = [v9 devices];
  v13 = [v12 activeAccessoryDevicesSupportingAnnounce];

  v14 = objc_opt_new();
  v15 = [MEMORY[0x277CEAB80] sharedInstance];
  v16 = [v15 BOOLForDefault:*MEMORY[0x277CEA980]];

  if (v16)
  {
    v27 = a1;
    v28 = v8;
    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    v17 = v8;
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

          v22 = [*(*(&v29 + 1) + 8 * i) uniqueIdentifier];
          v23 = [v13 objectForKey:v22];

          if (v23)
          {
            [v14 addObject:v23];
          }
        }

        v19 = [v17 countByEnumeratingWithState:&v29 objects:v33 count:16];
      }

      while (v19);
    }

    v8 = v28;
  }

  v24 = objc_opt_new();
  [v24 setDevices:v14];

  v25 = *MEMORY[0x277D85DE8];

  return v24;
}

+ (id)_bestRemoteRelayAccessoryFromAccessories:(id)a3 inHome:(id)a4
{
  v64 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v7 = ANLogHandleMessengerDestination();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v54 = &stru_2851BDB18;
    v55 = 2048;
    v56 = [v5 count];
    _os_log_impl(&dword_23F525000, v7, OS_LOG_TYPE_DEFAULT, "%@Checking (%lu) remote Accessories for Relay Viability", buf, 0x16u);
  }

  if ([v5 count] == 1)
  {
    v8 = ANLogHandleMessengerDestination();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = [v5 firstObject];
      *buf = 138412546;
      v54 = &stru_2851BDB18;
      v55 = 2112;
      v56 = v9;
      _os_log_impl(&dword_23F525000, v8, OS_LOG_TYPE_DEFAULT, "%@Selected Single Accessory: %@", buf, 0x16u);
    }

    v10 = [v5 firstObject];
    goto LABEL_30;
  }

  v42 = v5;
  v43 = v6;
  v51 = 0u;
  v52 = 0u;
  v49 = 0u;
  v50 = 0u;
  obj = v5;
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
          v17 = [v15 name];
          v18 = [v15 uniqueIdentifier];
          v19 = [v15 settings];
          v20 = [v19 isControllable];
          v21 = [v15 supportsAnnounce];
          *buf = 138413314;
          v54 = &stru_2851BDB18;
          v55 = 2112;
          v56 = v17;
          v57 = 2112;
          v58 = v18;
          v59 = 1024;
          v60 = v20;
          v61 = 1024;
          v62 = v21;
          _os_log_impl(&dword_23F525000, v16, OS_LOG_TYPE_DEFAULT, "%@Checking if Accessory can Relay: %@, HomeKitID: %@, Controllable: %d, Announce Supported: %d", buf, 0x2Cu);
        }

        v22 = [v15 settings];
        v23 = [v22 isControllable];

        if (v23)
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

          v10 = v15;
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

  v24 = [MEMORY[0x277CEAB80] sharedInstance];
  v25 = [v24 BOOLForDefault:*MEMORY[0x277CEA8A0]];

  if (v25)
  {
    v26 = ANLogHandleMessengerDestination();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v54 = &stru_2851BDB18;
      _os_log_impl(&dword_23F525000, v26, OS_LOG_TYPE_DEFAULT, "%@Checking Residents for Relay", buf, 0xCu);
    }

    v27 = [v43 residentDevices];
    v28 = [v27 na_filter:&__block_literal_global_17];

    v29 = MEMORY[0x277CD1650];
    v30 = [v43 accessories];
    v31 = [v29 appleAnnounceHostAccessoriesFromAccessories:v30];

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
        v10 = v34;
        v35 = ANLogHandleMessengerDestination();
        if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412546;
          v54 = &stru_2851BDB18;
          v55 = 2112;
          v56 = v10;
          _os_log_impl(&dword_23F525000, v35, OS_LOG_TYPE_DEFAULT, "%@Selected Primary Resident in Target List: %@", buf, 0x16u);
        }

        v36 = v48;
        v6 = v43;
LABEL_39:

        v5 = v42;
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
    v10 = [v31 na_firstObjectPassingTest:v45];
    v6 = v43;
    if (v10)
    {
      v41 = ANLogHandleMessengerDestination();
      if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        v54 = &stru_2851BDB18;
        v55 = 2112;
        v56 = v10;
        _os_log_impl(&dword_23F525000, v41, OS_LOG_TYPE_DEFAULT, "%@Selected any Announce-capable Accessory: %@", buf, 0x16u);
      }
    }

    goto LABEL_39;
  }

  v10 = 0;
LABEL_29:
  v5 = v42;
  v6 = v43;
LABEL_30:

  v38 = *MEMORY[0x277D85DE8];

  return v10;
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