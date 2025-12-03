@interface IDSService(AnnounceAdditions)
- (id)devicesExcludingHomePods;
- (id)uniqueIdentifiersForDevicesExcludingAppleAccessories;
@end

@implementation IDSService(AnnounceAdditions)

- (id)devicesExcludingHomePods
{
  v16 = *MEMORY[0x277D85DE8];
  v2 = objc_opt_new();
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  devices = [self devices];
  v4 = [devices countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v12;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(devices);
        }

        v8 = *(*(&v11 + 1) + 8 * i);
        if (([v8 isHomePod] & 1) == 0)
        {
          [v2 addObject:v8];
        }
      }

      v5 = [devices countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v5);
  }

  v9 = *MEMORY[0x277D85DE8];

  return v2;
}

- (id)uniqueIdentifiersForDevicesExcludingAppleAccessories
{
  v18 = *MEMORY[0x277D85DE8];
  v2 = objc_opt_new();
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  devices = [self devices];
  v4 = [devices countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v14;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v14 != v6)
        {
          objc_enumerationMutation(devices);
        }

        v8 = *(*(&v13 + 1) + 8 * i);
        if (([v8 isHomePod] & 1) == 0)
        {
          uniqueIDOverride = [v8 uniqueIDOverride];
          [v2 addObject:uniqueIDOverride];
        }
      }

      v5 = [devices countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v5);
  }

  v10 = IDSCopyLocalDeviceUniqueID();
  [v2 addObject:v10];

  v11 = *MEMORY[0x277D85DE8];

  return v2;
}

@end