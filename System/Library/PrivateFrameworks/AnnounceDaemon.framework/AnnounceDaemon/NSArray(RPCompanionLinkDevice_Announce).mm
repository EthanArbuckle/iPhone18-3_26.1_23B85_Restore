@interface NSArray(RPCompanionLinkDevice_Announce)
- (id)activeAccessoryDevicesSupportingAnnounce;
- (id)activeDevicesSupportingAnnounce;
- (id)activePersonalDevicesSupportingAnnounce;
- (id)devicesByRemovingNonAccessoryDevicesNotBelongingToUsers:()RPCompanionLinkDevice_Announce;
- (id)devicesInHome:()RPCompanionLinkDevice_Announce;
- (id)pairedCompanion;
- (id)personalDevicesForUser:()RPCompanionLinkDevice_Announce;
@end

@implementation NSArray(RPCompanionLinkDevice_Announce)

- (id)activeAccessoryDevicesSupportingAnnounce
{
  v19 = *MEMORY[0x277D85DE8];
  v2 = objc_opt_new();
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v3 = a1;
  v4 = [v3 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v15;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v15 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v14 + 1) + 8 * i);
        v9 = [v8 homeKitIdentifier];
        if (v9 && [v8 supportsAnnounce])
        {
          v10 = [v2 objectForKey:v9];
          v11 = v10;
          if (!v10 || ([v10 statusFlags] & 3) != 0)
          {
            [v2 setObject:v8 forKey:v9];
          }
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v5);
  }

  v12 = *MEMORY[0x277D85DE8];

  return v2;
}

- (id)activeDevicesSupportingAnnounce
{
  v21 = *MEMORY[0x277D85DE8];
  v2 = objc_opt_new();
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v3 = a1;
  v4 = [v3 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v17;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v17 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v16 + 1) + 8 * i);
        v9 = [v8 idsDeviceIdentifier];
        if ([v8 supportsAnnounce])
        {
          v10 = v9 == 0;
        }

        else
        {
          v10 = 1;
        }

        if (!v10)
        {
          v11 = [v2 objectForKey:v9];
          v12 = v11;
          if (!v11 || ([v11 statusFlags] & 3) != 0)
          {
            [v2 setObject:v8 forKey:v9];
          }
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v5);
  }

  v13 = [v2 allValues];

  v14 = *MEMORY[0x277D85DE8];

  return v13;
}

- (id)activePersonalDevicesSupportingAnnounce
{
  v16 = *MEMORY[0x277D85DE8];
  v2 = objc_opt_new();
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v3 = [a1 activeDevicesSupportingAnnounce];
  v4 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
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
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v11 + 1) + 8 * i);
        if (([v8 isAccessory] & 1) == 0)
        {
          [v2 addObject:v8];
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v5);
  }

  v9 = *MEMORY[0x277D85DE8];

  return v2;
}

- (id)pairedCompanion
{
  v13 = *MEMORY[0x277D85DE8];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v1 = a1;
  v2 = [v1 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v2)
  {
    v3 = *v9;
    while (2)
    {
      for (i = 0; i != v2; i = i + 1)
      {
        if (*v9 != v3)
        {
          objc_enumerationMutation(v1);
        }

        v5 = *(*(&v8 + 1) + 8 * i);
        if ([v5 isPairedCompanion])
        {
          v2 = v5;
          goto LABEL_11;
        }
      }

      v2 = [v1 countByEnumeratingWithState:&v8 objects:v12 count:16];
      if (v2)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v6 = *MEMORY[0x277D85DE8];

  return v2;
}

- (id)devicesInHome:()RPCompanionLinkDevice_Announce
{
  v33 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v20 = objc_opt_new();
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  obj = a1;
  v5 = [obj countByEnumeratingWithState:&v27 objects:v32 count:16];
  if (v5)
  {
    v6 = v5;
    v22 = *v28;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v28 != v22)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v27 + 1) + 8 * i);
        v9 = [v8 homeKitUserIdentifiers];
        v10 = v9;
        if (v9)
        {
          v25 = 0u;
          v26 = 0u;
          v23 = 0u;
          v24 = 0u;
          v11 = v9;
          v12 = [v11 countByEnumeratingWithState:&v23 objects:v31 count:16];
          if (v12)
          {
            v13 = v12;
            v14 = *v24;
            while (2)
            {
              for (j = 0; j != v13; ++j)
              {
                if (*v24 != v14)
                {
                  objc_enumerationMutation(v11);
                }

                v16 = [v4 hmu_userWithUniqueIdentifier:*(*(&v23 + 1) + 8 * j)];
                if (v16)
                {
                  v17 = v16;
                  [v20 addObject:v8];

                  goto LABEL_17;
                }
              }

              v13 = [v11 countByEnumeratingWithState:&v23 objects:v31 count:16];
              if (v13)
              {
                continue;
              }

              break;
            }
          }

LABEL_17:
        }
      }

      v6 = [obj countByEnumeratingWithState:&v27 objects:v32 count:16];
    }

    while (v6);
  }

  v18 = *MEMORY[0x277D85DE8];

  return v20;
}

- (id)devicesByRemovingNonAccessoryDevicesNotBelongingToUsers:()RPCompanionLinkDevice_Announce
{
  v33 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v22 = objc_opt_new();
  v20 = v4;
  v5 = [MEMORY[0x277CD1EE0] hmu_uniqueIdentifiersFromUsers:v4];
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  obj = a1;
  v6 = [obj countByEnumeratingWithState:&v27 objects:v32 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v28;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v28 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v27 + 1) + 8 * i);
        if ([v10 isAccessory])
        {
          [v22 addObject:v10];
        }

        else
        {
          v11 = [v10 homeKitUserIdentifiers];
          v12 = v11;
          if (v11)
          {
            v25 = 0u;
            v26 = 0u;
            v23 = 0u;
            v24 = 0u;
            v13 = v11;
            v14 = [v13 countByEnumeratingWithState:&v23 objects:v31 count:16];
            if (v14)
            {
              v15 = v14;
              v16 = *v24;
              while (2)
              {
                for (j = 0; j != v15; ++j)
                {
                  if (*v24 != v16)
                  {
                    objc_enumerationMutation(v13);
                  }

                  if ([v5 containsObject:*(*(&v23 + 1) + 8 * j)])
                  {
                    [v22 addObject:v10];
                    goto LABEL_19;
                  }
                }

                v15 = [v13 countByEnumeratingWithState:&v23 objects:v31 count:16];
                if (v15)
                {
                  continue;
                }

                break;
              }
            }

LABEL_19:
          }
        }
      }

      v7 = [obj countByEnumeratingWithState:&v27 objects:v32 count:16];
    }

    while (v7);
  }

  v18 = *MEMORY[0x277D85DE8];

  return v22;
}

- (id)personalDevicesForUser:()RPCompanionLinkDevice_Announce
{
  v22 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_opt_new();
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v6 = a1;
  v7 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v18;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v18 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v17 + 1) + 8 * i);
        if (([v11 isAccessory] & 1) == 0)
        {
          v12 = [v11 homeKitUserIdentifiers];
          if (v12)
          {
            v13 = [v4 uniqueIdentifier];
            v14 = [v12 containsObject:v13];

            if (v14)
            {
              [v5 addObject:v11];
            }
          }
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v8);
  }

  v15 = *MEMORY[0x277D85DE8];

  return v5;
}

@end