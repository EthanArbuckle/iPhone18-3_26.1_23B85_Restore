@interface ANLocation(Home)
- (id)allRoomsInHome:()Home;
- (uint64_t)containsAccessory:()Home;
@end

@implementation ANLocation(Home)

- (uint64_t)containsAccessory:()Home
{
  v53 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [a1 homeUUID];
  v6 = [v4 home];
  v7 = [v6 uniqueIdentifier];
  v8 = [v5 isEqual:v7];

  if (v8)
  {
    if ([a1 flags])
    {
      v31 = 1;
    }

    else
    {
      v48 = 0u;
      v49 = 0u;
      v46 = 0u;
      v47 = 0u;
      v9 = [a1 roomUUIDs];
      v10 = [v9 countByEnumeratingWithState:&v46 objects:v52 count:16];
      if (v10)
      {
        v11 = v10;
        v12 = *v47;
        while (2)
        {
          v13 = 0;
          do
          {
            if (*v47 != v12)
            {
              objc_enumerationMutation(v9);
            }

            v14 = *(*(&v46 + 1) + 8 * v13);
            v15 = [v4 room];
            v16 = [v15 uniqueIdentifier];
            LOBYTE(v14) = [v14 isEqual:v16];

            if (v14)
            {
LABEL_30:
              v31 = 1;
              goto LABEL_31;
            }

            ++v13;
          }

          while (v11 != v13);
          v11 = [v9 countByEnumeratingWithState:&v46 objects:v52 count:16];
          if (v11)
          {
            continue;
          }

          break;
        }
      }

      v44 = 0u;
      v45 = 0u;
      v42 = 0u;
      v43 = 0u;
      v9 = [a1 zoneUUIDs];
      v35 = [v9 countByEnumeratingWithState:&v42 objects:v51 count:16];
      if (v35)
      {
        v17 = *v43;
        v34 = *v43;
        do
        {
          v18 = 0;
          do
          {
            if (*v43 != v17)
            {
              objc_enumerationMutation(v9);
            }

            v36 = v18;
            v19 = *(*(&v42 + 1) + 8 * v18);
            v20 = [v4 home];
            v21 = [v20 hmu_zoneWithUniqueIdentifier:v19];

            v40 = 0u;
            v41 = 0u;
            v38 = 0u;
            v39 = 0u;
            v37 = v21;
            v22 = [v21 rooms];
            v23 = [v22 countByEnumeratingWithState:&v38 objects:v50 count:16];
            if (v23)
            {
              v24 = v23;
              v25 = *v39;
              while (2)
              {
                v26 = 0;
                do
                {
                  if (*v39 != v25)
                  {
                    objc_enumerationMutation(v22);
                  }

                  v27 = [*(*(&v38 + 1) + 8 * v26) uniqueIdentifier];
                  v28 = [v4 room];
                  v29 = [v28 uniqueIdentifier];
                  v30 = [v27 isEqual:v29];

                  if (v30)
                  {

                    goto LABEL_30;
                  }

                  ++v26;
                }

                while (v24 != v26);
                v24 = [v22 countByEnumeratingWithState:&v38 objects:v50 count:16];
                if (v24)
                {
                  continue;
                }

                break;
              }
            }

            v18 = v36 + 1;
            v17 = v34;
          }

          while (v36 + 1 != v35);
          v35 = [v9 countByEnumeratingWithState:&v42 objects:v51 count:16];
        }

        while (v35);
      }

      v31 = 0;
LABEL_31:
    }
  }

  else
  {
    v31 = 0;
  }

  v32 = *MEMORY[0x277D85DE8];
  return v31;
}

- (id)allRoomsInHome:()Home
{
  v4 = a3;
  v5 = [a1 roomUUIDs];
  if (v5)
  {
    v6 = [a1 roomUUIDs];
    v7 = [v4 hmu_roomsWithUniqueIdentifiers:v6];
  }

  else
  {
    v7 = MEMORY[0x277CBEBF8];
  }

  v8 = [a1 zoneUUIDs];
  if (v8)
  {
    v9 = [a1 zoneUUIDs];
    v10 = [v4 hmu_zonesWithUniqueIdentifiers:v9];
  }

  else
  {
    v10 = MEMORY[0x277CBEBF8];
  }

  v11 = [MEMORY[0x277CD1F50] hmu_roomsInZones:v10 appendingRooms:v7];

  return v11;
}

@end