@interface NSManagedObjectModel(VSDeveloperModeAdditions)
+ (id)vs_developerModeModelForVersion:()VSDeveloperModeAdditions;
+ (id)vs_identityProviderEntityForVersion:()VSDeveloperModeAdditions;
@end

@implementation NSManagedObjectModel(VSDeveloperModeAdditions)

+ (id)vs_developerModeModelForVersion:()VSDeveloperModeAdditions
{
  v5 = objc_alloc_init(MEMORY[0x277CBE450]);
  v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v7 = [self vs_identityProviderEntityForVersion:a3];
  [v6 addObject:v7];
  [v5 setEntities:v6];

  return v5;
}

+ (id)vs_identityProviderEntityForVersion:()VSDeveloperModeAdditions
{
  v53[1] = *MEMORY[0x277D85DE8];
  v4 = objc_alloc_init(MEMORY[0x277CBE408]);
  [v4 setName:@"IdentityProvider"];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  [v4 setManagedObjectClassName:v6];

  v7 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v8 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v9 = objc_alloc_init(MEMORY[0x277CBE358]);
  [v7 addObject:v9];
  [v9 setName:@"uniqueID"];
  [v9 setAttributeType:700];
  [v9 setOptional:0];
  [v8 addObject:v9];
  v10 = objc_alloc_init(MEMORY[0x277CBE358]);
  [v7 addObject:v10];
  [v10 setName:@"providerID"];
  [v10 setAttributeType:700];
  [v10 setOptional:0];
  v40 = v10;
  [v8 addObject:v10];
  v11 = objc_alloc_init(MEMORY[0x277CBE358]);
  [v7 addObject:v11];
  [v11 setName:@"nameForSorting"];
  [v11 setAttributeType:700];
  [v11 setOptional:0];
  v39 = v11;
  [v8 addObject:v11];
  v12 = objc_alloc_init(MEMORY[0x277CBE358]);
  [v7 addObject:v12];
  [v12 setName:@"authenticationURL"];
  [v12 setAttributeType:700];
  v38 = v12;
  [v12 setOptional:0];
  if (a3 >= 1)
  {
    v13 = objc_alloc_init(MEMORY[0x277CBE358]);
    [v7 addObject:v13];
    [v13 setName:@"certificateURL"];
    [v13 setAttributeType:700];
    [v13 setOptional:1];

    if (a3 != 1)
    {
      v14 = objc_alloc_init(MEMORY[0x277CBE358]);
      [v7 addObject:v14];
      [v14 setName:@"authenticationSchemes"];
      [v14 setAttributeType:1800];
      [v14 setOptional:1];

      if (a3 >= 3)
      {
        v15 = objc_alloc_init(MEMORY[0x277CBE358]);
        [v7 addObject:v15];
        [v15 setName:@"requireBootUrlSystemTrust"];
        [v15 setAttributeType:800];
        [v15 setOptional:1];
        v16 = objc_alloc_init(MEMORY[0x277CBE358]);
        [v7 addObject:v16];
        [v16 setName:@"requireXHRRequestSystemTrust"];
        [v16 setAttributeType:800];
        [v16 setOptional:1];
      }
    }
  }

  [v4 setProperties:v7];
  v41 = v9;
  v52 = v9;
  v17 = [MEMORY[0x277CBEA60] arrayWithObjects:&v52 count:1];
  v53[0] = v17;
  v18 = [MEMORY[0x277CBEA60] arrayWithObjects:v53 count:1];
  [v4 setUniquenessConstraints:v18];

  v48 = 0u;
  v49 = 0u;
  v46 = 0u;
  v47 = 0u;
  v19 = v7;
  v20 = [v19 countByEnumeratingWithState:&v46 objects:v51 count:16];
  if (v20)
  {
    v21 = v20;
    v22 = *v47;
    v23 = *MEMORY[0x277CCA668];
    do
    {
      for (i = 0; i != v21; ++i)
      {
        if (*v47 != v22)
        {
          objc_enumerationMutation(v19);
        }

        [*(*(&v46 + 1) + 8 * i) setValueTransformerName:v23];
      }

      v21 = [v19 countByEnumeratingWithState:&v46 objects:v51 count:16];
    }

    while (v21);
  }

  v37 = v19;

  v25 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v26 = v8;
  v27 = [v26 countByEnumeratingWithState:&v42 objects:v50 count:16];
  if (v27)
  {
    v28 = v27;
    v29 = *v43;
    do
    {
      for (j = 0; j != v28; ++j)
      {
        if (*v43 != v29)
        {
          objc_enumerationMutation(v26);
        }

        v31 = *(*(&v42 + 1) + 8 * j);
        name = [v31 name];
        v33 = objc_alloc_init(MEMORY[0x277CBEB18]);
        v34 = [objc_alloc(MEMORY[0x277CBE420]) initWithProperty:v31 collationType:0];
        [v33 addObject:v34];

        v35 = [objc_alloc(MEMORY[0x277CBE418]) initWithName:name elements:v33];
        [v25 addObject:v35];
      }

      v28 = [v26 countByEnumeratingWithState:&v42 objects:v50 count:16];
    }

    while (v28);
  }

  [v4 setIndexes:v25];

  return v4;
}

@end