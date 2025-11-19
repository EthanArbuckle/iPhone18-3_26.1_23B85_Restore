@interface ANAnnouncementDestination(Home)
- (id)home;
- (id)rooms;
- (id)zones;
@end

@implementation ANAnnouncementDestination(Home)

- (id)home
{
  v2 = [a1 type];
  if (v2 == 1)
  {
    v5 = [a1 homeObject];
    v6 = +[ANHomeManager shared];
    v7 = [v6 homeForID:v5];
  }

  else
  {
    if (v2)
    {
      v8 = 0;
      goto LABEL_10;
    }

    v3 = +[ANHomeManager shared];
    v4 = [v3 currentAccessory];

    if (v4)
    {
      v5 = +[ANHomeManager shared];
      v6 = [v5 currentAccessory];
      [v6 home];
    }

    else
    {
      v5 = [a1 homeObject];
      v6 = +[ANHomeManager shared];
      [v6 homeWithName:v5];
    }
    v7 = ;
  }

  v8 = v7;

LABEL_10:

  return v8;
}

- (id)zones
{
  v32 = *MEMORY[0x277D85DE8];
  v2 = [a1 home];
  if (!v2)
  {
    goto LABEL_14;
  }

  v3 = [a1 type];
  if (v3 == 1)
  {
    v13 = MEMORY[0x277CBEB18];
    v14 = [a1 zoneObjects];
    v6 = [v13 arrayWithCapacity:{objc_msgSend(v14, "count")}];

    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v7 = [a1 zoneObjects];
    v15 = [v7 countByEnumeratingWithState:&v22 objects:v30 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v23;
      do
      {
        for (i = 0; i != v16; ++i)
        {
          if (*v23 != v17)
          {
            objc_enumerationMutation(v7);
          }

          v19 = [v2 hmu_zoneWithUniqueIdentifier:*(*(&v22 + 1) + 8 * i)];
          if (v19)
          {
            [v6 addObject:v19];
          }
        }

        v16 = [v7 countByEnumeratingWithState:&v22 objects:v30 count:16];
      }

      while (v16);
    }

    goto LABEL_24;
  }

  if (v3)
  {
LABEL_14:
    v6 = 0;
    goto LABEL_25;
  }

  v4 = MEMORY[0x277CBEB18];
  v5 = [a1 zoneObjects];
  v6 = [v4 arrayWithCapacity:{objc_msgSend(v5, "count")}];

  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v7 = [a1 zoneObjects];
  v8 = [v7 countByEnumeratingWithState:&v26 objects:v31 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v27;
    do
    {
      for (j = 0; j != v9; ++j)
      {
        if (*v27 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = [v2 hmu_zoneWithName:*(*(&v26 + 1) + 8 * j)];
        if (v12)
        {
          [v6 addObject:v12];
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v26 objects:v31 count:16];
    }

    while (v9);
  }

LABEL_24:

LABEL_25:
  v20 = *MEMORY[0x277D85DE8];

  return v6;
}

- (id)rooms
{
  v32 = *MEMORY[0x277D85DE8];
  v2 = [a1 home];
  if (!v2)
  {
    goto LABEL_14;
  }

  v3 = [a1 type];
  if (v3 == 1)
  {
    v13 = MEMORY[0x277CBEB18];
    v14 = [a1 roomObjects];
    v6 = [v13 arrayWithCapacity:{objc_msgSend(v14, "count")}];

    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v7 = [a1 roomObjects];
    v15 = [v7 countByEnumeratingWithState:&v22 objects:v30 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v23;
      do
      {
        for (i = 0; i != v16; ++i)
        {
          if (*v23 != v17)
          {
            objc_enumerationMutation(v7);
          }

          v19 = [v2 hmu_roomWithUniqueIdentifier:*(*(&v22 + 1) + 8 * i)];
          if (v19)
          {
            [v6 addObject:v19];
          }
        }

        v16 = [v7 countByEnumeratingWithState:&v22 objects:v30 count:16];
      }

      while (v16);
    }

    goto LABEL_24;
  }

  if (v3)
  {
LABEL_14:
    v6 = 0;
    goto LABEL_25;
  }

  v4 = MEMORY[0x277CBEB18];
  v5 = [a1 roomObjects];
  v6 = [v4 arrayWithCapacity:{objc_msgSend(v5, "count")}];

  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v7 = [a1 roomObjects];
  v8 = [v7 countByEnumeratingWithState:&v26 objects:v31 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v27;
    do
    {
      for (j = 0; j != v9; ++j)
      {
        if (*v27 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = [v2 hmu_roomWithName:*(*(&v26 + 1) + 8 * j)];
        if (v12)
        {
          [v6 addObject:v12];
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v26 objects:v31 count:16];
    }

    while (v9);
  }

LABEL_24:

LABEL_25:
  v20 = *MEMORY[0x277D85DE8];

  return v6;
}

@end