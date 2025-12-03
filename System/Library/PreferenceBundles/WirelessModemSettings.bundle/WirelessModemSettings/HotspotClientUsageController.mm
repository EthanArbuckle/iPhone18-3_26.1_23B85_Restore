@interface HotspotClientUsageController
- (id)getSpecifiersForClients;
- (id)specifiers;
@end

@implementation HotspotClientUsageController

- (id)specifiers
{
  v3 = *MEMORY[0x277D3FC48];
  v4 = *(&self->super.super.super.super.super.isa + v3);
  if (!v4)
  {
    v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
    emptyGroupSpecifier = [MEMORY[0x277D3FAD8] emptyGroupSpecifier];
    [emptyGroupSpecifier setProperty:@"Client data usage is only shown in internal builds." forKey:*MEMORY[0x277D3FF88]];
    [v5 addObject:emptyGroupSpecifier];
    getSpecifiersForClients = [(HotspotClientUsageController *)self getSpecifiersForClients];
    [v5 addObjectsFromArray:getSpecifiersForClients];

    v8 = *(&self->super.super.super.super.super.isa + v3);
    *(&self->super.super.super.super.super.isa + v3) = v5;

    v4 = *(&self->super.super.super.super.super.isa + v3);
  }

  return v4;
}

- (id)getSpecifiersForClients
{
  v53 = *MEMORY[0x277D85DE8];
  array = [MEMORY[0x277CBEB18] array];
  v2 = WiFiManagerClientCreate();
  if (v2)
  {
    v3 = v2;
    v4 = WiFiManagerClientCopyProperty();
    v5 = v4;
    if (v4)
    {
      v28 = v4;
      v29 = v3;
      v49 = 0u;
      v50 = 0u;
      v47 = 0u;
      v48 = 0u;
      obj = v4;
      v33 = [obj countByEnumeratingWithState:&v47 objects:v52 count:16];
      v6 = 0;
      v7 = 0;
      if (v33)
      {
        v31 = *MEMORY[0x277D29938];
        v32 = *v48;
        v38 = *MEMORY[0x277D29930];
        v39 = *MEMORY[0x277D29950];
        v36 = *MEMORY[0x277D29918];
        v37 = *MEMORY[0x277D29910];
        do
        {
          v8 = 0;
          do
          {
            if (*v48 != v32)
            {
              objc_enumerationMutation(obj);
            }

            v34 = v8;
            v9 = [*(*(&v47 + 1) + 8 * v8) objectForKey:v31];
            v43 = 0u;
            v44 = 0u;
            v45 = 0u;
            v46 = 0u;
            v35 = v9;
            v10 = [v9 countByEnumeratingWithState:&v43 objects:v51 count:16];
            if (v10)
            {
              v11 = v10;
              v42 = *v44;
              do
              {
                v12 = 0;
                v13 = v6;
                v14 = v7;
                do
                {
                  if (*v44 != v42)
                  {
                    objc_enumerationMutation(v35);
                  }

                  v15 = *(*(&v43 + 1) + 8 * v12);
                  v16 = [v15 objectForKey:v39];
                  v17 = [v15 objectForKey:v38];
                  v6 = [v15 objectForKey:v37];

                  v7 = [v15 objectForKey:v36];

                  unsignedIntegerValue = [v17 unsignedIntegerValue];
                  v19 = [v16 unsignedIntegerValue] + unsignedIntegerValue;
                  if (v7)
                  {
                    v20 = v7;
                  }

                  else
                  {
                    v20 = v6;
                  }

                  v21 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:v20 target:self set:0 get:sel_dataUsageString_ detail:0 cell:4 edit:0];
                  v22 = v21;
                  if (v19)
                  {
                    v23 = [MEMORY[0x277CCA8E8] stringFromByteCount:v19 countStyle:0];
                    [v22 setProperty:v23 forKey:@"ClientUsageString"];
                  }

                  else
                  {
                    [v21 setProperty:&stru_284EED640 forKey:@"ClientUsageString"];
                  }

                  v24 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v19];
                  [v22 setProperty:v24 forKey:@"ClientUsageBytes"];

                  [array addObject:v22];
                  ++v12;
                  v13 = v6;
                  v14 = v7;
                }

                while (v11 != v12);
                v11 = [v35 countByEnumeratingWithState:&v43 objects:v51 count:16];
              }

              while (v11);
            }

            ++v8;
          }

          while (v34 + 1 != v33);
          v33 = [obj countByEnumeratingWithState:&v47 objects:v52 count:16];
        }

        while (v33);
      }

      v5 = v28;
      v3 = v29;
    }

    CFRelease(v3);
  }

  [array sortUsingFunction:_CompareUsages context:0];
  reverseObjectEnumerator = [array reverseObjectEnumerator];
  allObjects = [reverseObjectEnumerator allObjects];

  return allObjects;
}

@end