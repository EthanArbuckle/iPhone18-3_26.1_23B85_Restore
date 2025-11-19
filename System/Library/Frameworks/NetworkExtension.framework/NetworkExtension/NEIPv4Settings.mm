@interface NEIPv4Settings
+ (NEIPv4Settings)settingsWithAutomaticAddressing;
- (BOOL)checkValidityAndCollectErrors:(id)a3;
- (BOOL)hasDefaultRoute;
- (NEIPv4Settings)init;
- (NEIPv4Settings)initWithAddresses:(NSArray *)addresses subnetMasks:(NSArray *)subnetMasks;
- (NEIPv4Settings)initWithCoder:(id)a3;
- (NEIPv4Settings)initWithConfigMethod:(int64_t)a3;
- (id)copyLegacyDictionary;
- (id)copyWithZone:(_NSZone *)a3;
- (id)initFromLegacyDictionary:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation NEIPv4Settings

- (BOOL)hasDefaultRoute
{
  v13 = *MEMORY[0x1E69E9840];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = self->_includedRoutes;
  v3 = [(NSArray *)v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = *v9;
    while (2)
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v9 != v4)
        {
          objc_enumerationMutation(v2);
        }

        if ([*(*(&v8 + 1) + 8 * i) isDefaultRoute])
        {
          LOBYTE(v3) = 1;
          goto LABEL_11;
        }
      }

      v3 = [(NSArray *)v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v6 = *MEMORY[0x1E69E9840];
  return v3;
}

- (id)initFromLegacyDictionary:(id)a3
{
  v76 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = [(NEIPv4Settings *)self initWithConfigMethod:2];
  if (!v6)
  {
    goto LABEL_54;
  }

  v7 = [v5 objectForKeyedSubscript:*MEMORY[0x1E6982488]];
  if (isa_nsstring(v7))
  {
    if ([v7 isEqualToString:*MEMORY[0x1E69828C0]])
    {
      v8 = 2;
LABEL_9:
      v6->_configMethod = v8;
      goto LABEL_10;
    }

    if ([v7 isEqualToString:*MEMORY[0x1E6982898]])
    {
      v8 = 1;
      goto LABEL_9;
    }

    if ([v7 isEqualToString:*MEMORY[0x1E69828B8]])
    {
      v8 = 3;
      goto LABEL_9;
    }

    if ([v7 isEqualToString:@"Off"])
    {

      v6 = 0;
      goto LABEL_54;
    }
  }

LABEL_10:
  v9 = *MEMORY[0x1E6982478];
  v10 = [v5 objectForKeyedSubscript:*MEMORY[0x1E6982478]];
  v11 = isa_nsarray(v10);

  if (v11)
  {
    v12 = [v5 objectForKeyedSubscript:v9];
    if ([v12 count])
    {
      v13 = [v12 objectAtIndexedSubscript:0];
      v14 = isa_nsstring(v13);

      if (v14)
      {
        v15 = [v12 copy];
        addresses = v6->_addresses;
        v6->_addresses = v15;
      }
    }
  }

  v17 = *MEMORY[0x1E69824C8];
  v18 = [v5 objectForKeyedSubscript:*MEMORY[0x1E69824C8]];
  v19 = isa_nsarray(v18);

  if (v19)
  {
    v20 = [v5 objectForKeyedSubscript:v17];
    if ([v20 count])
    {
      v21 = [v20 objectAtIndexedSubscript:0];
      v22 = isa_nsstring(v21);

      if (v22)
      {
        v23 = [v20 copy];
        subnetMasks = v6->_subnetMasks;
        v6->_subnetMasks = v23;
      }
    }
  }

  v25 = *MEMORY[0x1E69824C0];
  v26 = [v5 objectForKeyedSubscript:*MEMORY[0x1E69824C0]];
  v27 = isa_nsstring(v26);

  if (v27)
  {
    v28 = [v5 objectForKeyedSubscript:v25];
    v29 = [v28 copy];
    router = v6->_router;
    v6->_router = v29;
  }

  v31 = *MEMORY[0x1E6982558];
  v32 = [v5 objectForKeyedSubscript:*MEMORY[0x1E6982558]];
  v33 = isa_nsnumber(v32);
  v34 = MEMORY[0x1E6982498];
  if (!v33 || ([v5 objectForKeyedSubscript:v31], v3 = objc_claimAutoreleasedReturnValue(), !objc_msgSend(v3, "BOOLValue")))
  {
    v35 = [v5 objectForKeyedSubscript:*v34];
    v36 = isa_nsarray(v35);

    if (v33)
    {

      if (v36)
      {
        goto LABEL_29;
      }
    }

    else
    {

      if (v36)
      {
        goto LABEL_29;
      }
    }

    v37 = 0;
    goto LABEL_30;
  }

LABEL_29:
  v37 = objc_alloc_init(MEMORY[0x1E695DF70]);
LABEL_30:
  v38 = [v5 objectForKeyedSubscript:v31];
  v39 = isa_nsnumber(v38);

  if (v39)
  {
    v40 = [v5 objectForKeyedSubscript:v31];
    v6->_overridePrimary = [v40 BOOLValue];

    if (v6->_overridePrimary)
    {
      v41 = +[NEIPv4Route defaultRoute];
      [v37 addObject:v41];
    }
  }

  v42 = *v34;
  v43 = [v5 objectForKeyedSubscript:*v34];
  v44 = isa_nsarray(v43);

  if (v44)
  {
    v45 = [v5 objectForKeyedSubscript:v42];
    v70 = 0u;
    v71 = 0u;
    v72 = 0u;
    v73 = 0u;
    v46 = [v45 countByEnumeratingWithState:&v70 objects:v75 count:16];
    if (v46)
    {
      v47 = v46;
      v48 = *v71;
      do
      {
        v49 = 0;
        do
        {
          if (*v71 != v48)
          {
            objc_enumerationMutation(v45);
          }

          v50 = [[NEIPv4Route alloc] initFromLegacyDictionary:*(*(&v70 + 1) + 8 * v49)];
          [v37 addObject:v50];

          ++v49;
        }

        while (v47 != v49);
        v47 = [v45 countByEnumeratingWithState:&v70 objects:v75 count:16];
      }

      while (v47);
    }
  }

  if (v37)
  {
    objc_storeStrong(&v6->_includedRoutes, v37);
  }

  v51 = *MEMORY[0x1E6982490];
  v52 = [v5 objectForKeyedSubscript:*MEMORY[0x1E6982490]];
  v53 = isa_nsarray(v52);

  if (v53)
  {
    v65 = v7;
    v54 = [v5 objectForKeyedSubscript:v51];
    v55 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v66 = 0u;
    v67 = 0u;
    v68 = 0u;
    v69 = 0u;
    v56 = v54;
    v57 = [v56 countByEnumeratingWithState:&v66 objects:v74 count:16];
    if (v57)
    {
      v58 = v57;
      v59 = *v67;
      do
      {
        v60 = 0;
        do
        {
          if (*v67 != v59)
          {
            objc_enumerationMutation(v56);
          }

          v61 = [[NEIPv4Route alloc] initFromLegacyDictionary:*(*(&v66 + 1) + 8 * v60)];
          [(NSArray *)v55 addObject:v61];

          ++v60;
        }

        while (v58 != v60);
        v58 = [v56 countByEnumeratingWithState:&v66 objects:v74 count:16];
      }

      while (v58);
    }

    excludedRoutes = v6->_excludedRoutes;
    v6->_excludedRoutes = v55;

    v7 = v65;
  }

LABEL_54:
  v63 = *MEMORY[0x1E69E9840];
  return v6;
}

- (id)copyLegacyDictionary
{
  v44 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  if ([(NEIPv4Settings *)self configMethod]== 2)
  {
    v4 = MEMORY[0x1E69828C0];
LABEL_5:
    [v3 setObject:*v4 forKeyedSubscript:*MEMORY[0x1E6982488]];
    goto LABEL_6;
  }

  if ([(NEIPv4Settings *)self configMethod]== 1)
  {
    v4 = MEMORY[0x1E6982898];
    goto LABEL_5;
  }

  if ([(NEIPv4Settings *)self configMethod]== 3)
  {
    [v3 setObject:*MEMORY[0x1E69828B8] forKeyedSubscript:*MEMORY[0x1E69828B8]];
    v26 = [(NEIPv4Settings *)self addresses];
    v27 = [v26 count];

    if (v27)
    {
      v28 = [(NEIPv4Settings *)self addresses];
      [v3 setObject:v28 forKeyedSubscript:*MEMORY[0x1E6982478]];
    }

    v29 = [(NEIPv4Settings *)self subnetMasks];
    v30 = [v29 count];

    if (v30)
    {
      v31 = [(NEIPv4Settings *)self subnetMasks];
      [v3 setObject:v31 forKeyedSubscript:*MEMORY[0x1E69824C8]];
    }

    v32 = [(NEIPv4Settings *)self router];

    if (v32)
    {
      v33 = [(NEIPv4Settings *)self router];
      [v3 setObject:v33 forKeyedSubscript:*MEMORY[0x1E69824C0]];
    }
  }

LABEL_6:
  if ([(NEIPv4Settings *)self overridePrimary])
  {
    [v3 setObject:&unk_1F38BA580 forKeyedSubscript:*MEMORY[0x1E6982558]];
  }

  v5 = [(NEIPv4Settings *)self includedRoutes];

  if (v5)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v38 = 0u;
    v39 = 0u;
    v40 = 0u;
    v41 = 0u;
    v7 = [(NEIPv4Settings *)self includedRoutes];
    v8 = [v7 countByEnumeratingWithState:&v38 objects:v43 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v39;
      v11 = *MEMORY[0x1E6982558];
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v39 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v13 = *(*(&v38 + 1) + 8 * i);
          if ([v13 isDefaultRoute])
          {
            [v3 setObject:&unk_1F38BA580 forKeyedSubscript:v11];
          }

          else
          {
            v14 = [v13 copyLegacyDictionary];
            [v6 addObject:v14];
          }
        }

        v9 = [v7 countByEnumeratingWithState:&v38 objects:v43 count:16];
      }

      while (v9);
    }
  }

  v15 = [(NEIPv4Settings *)self excludedRoutes];

  if (v15)
  {
    v16 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    v17 = [(NEIPv4Settings *)self excludedRoutes];
    v18 = [v17 countByEnumeratingWithState:&v34 objects:v42 count:16];
    if (v18)
    {
      v19 = v18;
      v20 = *v35;
      do
      {
        for (j = 0; j != v19; ++j)
        {
          if (*v35 != v20)
          {
            objc_enumerationMutation(v17);
          }

          v22 = *(*(&v34 + 1) + 8 * j);
          if (([v22 isDefaultRoute] & 1) == 0)
          {
            v23 = [v22 copyLegacyDictionary];
            [v16 addObject:v23];
          }
        }

        v19 = [v17 countByEnumeratingWithState:&v34 objects:v42 count:16];
      }

      while (v19);
    }
  }

  v24 = *MEMORY[0x1E69E9840];
  return v3;
}

- (BOOL)checkValidityAndCollectErrors:(id)a3
{
  v52 = *MEMORY[0x1E69E9840];
  if ([(NEIPv4Settings *)self configMethod]!= 3)
  {
    goto LABEL_41;
  }

  v47 = 0;
  v4 = [(NEIPv4Settings *)self addresses];
  v5 = [v4 count];

  if (v5)
  {
    v6 = [(NEIPv4Settings *)self addresses];
    v7 = [v6 objectAtIndexedSubscript:0];
    v8 = inet_pton(2, [v7 UTF8String], &v47);

    if (v8)
    {
      goto LABEL_8;
    }

    v9 = ne_log_obj();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v10 = "Invalid IPv4 address";
LABEL_43:
      _os_log_error_impl(&dword_1BA83C000, v9, OS_LOG_TYPE_ERROR, v10, buf, 2u);
    }
  }

  else
  {
    v9 = ne_log_obj();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v10 = "Missing IPv4 address";
      goto LABEL_43;
    }
  }

LABEL_8:
  v11 = [(NEIPv4Settings *)self subnetMasks];
  v12 = [v11 count];
  v13 = [(NEIPv4Settings *)self addresses];
  v14 = [v13 count];

  if (v12 != v14)
  {
    v15 = ne_log_obj();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_1BA83C000, v15, OS_LOG_TYPE_ERROR, "Missing IPv4 subnet mask", buf, 2u);
    }
  }

  v16 = [(NEIPv4Settings *)self subnetMasks];
  if ([v16 count])
  {
    v17 = [(NEIPv4Settings *)self subnetMasks];
    v18 = [v17 objectAtIndexedSubscript:0];
    v19 = inet_pton(2, [v18 UTF8String], &v47);

    if (v19)
    {
      goto LABEL_17;
    }

    v16 = ne_log_obj();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_1BA83C000, v16, OS_LOG_TYPE_ERROR, "Invalid IPv4 subnet mask", buf, 2u);
    }
  }

LABEL_17:
  v20 = [(NEIPv4Settings *)self router];
  if (v20)
  {
    v21 = v20;
    v22 = [(NEIPv4Settings *)self router];
    v23 = inet_pton(2, [v22 UTF8String], &v47);

    if (!v23)
    {
      v24 = ne_log_obj();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_1BA83C000, v24, OS_LOG_TYPE_ERROR, "Invalid IPv4 router", buf, 2u);
      }
    }
  }

  v25 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v26 = [(NEIPv4Settings *)self includedRoutes];
  v27 = [v26 countByEnumeratingWithState:&v43 objects:v51 count:16];
  if (v27)
  {
    v28 = v27;
    v29 = *v44;
    do
    {
      for (i = 0; i != v28; ++i)
      {
        if (*v44 != v29)
        {
          objc_enumerationMutation(v26);
        }

        [*(*(&v43 + 1) + 8 * i) checkValidityAndCollectErrors:v25];
      }

      v28 = [v26 countByEnumeratingWithState:&v43 objects:v51 count:16];
    }

    while (v28);
  }

  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  v31 = [(NEIPv4Settings *)self excludedRoutes];
  v32 = [v31 countByEnumeratingWithState:&v39 objects:v50 count:16];
  if (v32)
  {
    v33 = v32;
    v34 = *v40;
    do
    {
      for (j = 0; j != v33; ++j)
      {
        if (*v40 != v34)
        {
          objc_enumerationMutation(v31);
        }

        [*(*(&v39 + 1) + 8 * j) checkValidityAndCollectErrors:v25];
      }

      v33 = [v31 countByEnumeratingWithState:&v39 objects:v50 count:16];
    }

    while (v33);
  }

  if ([v25 count])
  {
    v36 = ne_log_obj();
    if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v49 = v25;
      _os_log_error_impl(&dword_1BA83C000, v36, OS_LOG_TYPE_ERROR, "IPv4 routes are invalid: %@", buf, 0xCu);
    }
  }

LABEL_41:
  v37 = *MEMORY[0x1E69E9840];
  return 1;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [NEIPv4Settings allocWithZone:a3];
  v5 = [(NEIPv4Settings *)self addresses];
  v6 = [(NEIPv4Settings *)self subnetMasks];
  v7 = [(NEIPv4Settings *)v4 initWithAddresses:v5 subnetMasks:v6];

  [(NEIPv4Settings *)v7 setConfigMethod:[(NEIPv4Settings *)self configMethod]];
  v8 = [(NEIPv4Settings *)self router];
  [(NEIPv4Settings *)v7 setRouter:v8];

  v9 = [(NEIPv4Settings *)self includedRoutes];
  [(NEIPv4Settings *)v7 setIncludedRoutes:v9];

  v10 = [(NEIPv4Settings *)self excludedRoutes];
  [(NEIPv4Settings *)v7 setExcludedRoutes:v10];

  [(NEIPv4Settings *)v7 setOverridePrimary:[(NEIPv4Settings *)self overridePrimary]];
  return v7;
}

- (void)encodeWithCoder:(id)a3
{
  v9 = a3;
  [v9 encodeInt32:-[NEIPv4Settings configMethod](self forKey:{"configMethod"), @"ConfigMethod"}];
  v4 = [(NEIPv4Settings *)self addresses];
  [v9 encodeObject:v4 forKey:@"AddressArray"];

  v5 = [(NEIPv4Settings *)self subnetMasks];
  [v9 encodeObject:v5 forKey:@"SubnetMaskArray"];

  v6 = [(NEIPv4Settings *)self router];
  [v9 encodeObject:v6 forKey:@"Router"];

  v7 = [(NEIPv4Settings *)self includedRoutes];
  [v9 encodeObject:v7 forKey:@"IncludeRoutes"];

  v8 = [(NEIPv4Settings *)self excludedRoutes];
  [v9 encodeObject:v8 forKey:@"ExcludeRoutes"];

  [v9 encodeBool:-[NEIPv4Settings overridePrimary](self forKey:{"overridePrimary"), @"OverridePrimary"}];
}

- (NEIPv4Settings)initWithCoder:(id)a3
{
  v43 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v40.receiver = self;
  v40.super_class = NEIPv4Settings;
  v5 = [(NEIPv4Settings *)&v40 init];
  if (v5)
  {
    v5->_configMethod = [v4 decodeInt32ForKey:@"ConfigMethod"];
    v6 = MEMORY[0x1E695DFD8];
    v7 = objc_opt_class();
    v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
    v9 = [v4 decodeObjectOfClasses:v8 forKey:@"AddressArray"];
    addresses = v5->_addresses;
    v5->_addresses = v9;

    if (!v5->_addresses)
    {
      v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"Address"];
      if (v11)
      {
        v12 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithObjects:{v11, 0}];
        v13 = v5->_addresses;
        v5->_addresses = v12;

        v14 = ne_log_obj();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
        {
          v38 = v5->_addresses;
          *buf = 138412290;
          v42 = v38;
          _os_log_debug_impl(&dword_1BA83C000, v14, OS_LOG_TYPE_DEBUG, "initwithcoder single router IPv4address %@", buf, 0xCu);
        }
      }
    }

    v15 = MEMORY[0x1E695DFD8];
    v16 = objc_opt_class();
    v17 = [v15 setWithObjects:{v16, objc_opt_class(), 0}];
    v18 = [v4 decodeObjectOfClasses:v17 forKey:@"SubnetMaskArray"];
    subnetMasks = v5->_subnetMasks;
    v5->_subnetMasks = v18;

    if (!v5->_subnetMasks)
    {
      v20 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"SubnetMask"];
      if (v20)
      {
        v21 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithObjects:{v20, 0}];
        v22 = v5->_subnetMasks;
        v5->_subnetMasks = v21;

        v23 = ne_log_obj();
        if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
        {
          v39 = v5->_subnetMasks;
          *buf = 138412290;
          v42 = v39;
          _os_log_debug_impl(&dword_1BA83C000, v23, OS_LOG_TYPE_DEBUG, "initwithcoder subnet mask %@", buf, 0xCu);
        }
      }
    }

    v24 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"Router"];
    router = v5->_router;
    v5->_router = v24;

    v26 = MEMORY[0x1E695DFD8];
    v27 = objc_opt_class();
    v28 = [v26 setWithObjects:{v27, objc_opt_class(), 0}];
    v29 = [v4 decodeObjectOfClasses:v28 forKey:@"IncludeRoutes"];
    includedRoutes = v5->_includedRoutes;
    v5->_includedRoutes = v29;

    v31 = MEMORY[0x1E695DFD8];
    v32 = objc_opt_class();
    v33 = [v31 setWithObjects:{v32, objc_opt_class(), 0}];
    v34 = [v4 decodeObjectOfClasses:v33 forKey:@"ExcludeRoutes"];
    excludedRoutes = v5->_excludedRoutes;
    v5->_excludedRoutes = v34;

    v5->_overridePrimary = [v4 decodeBoolForKey:@"OverridePrimary"];
  }

  v36 = *MEMORY[0x1E69E9840];
  return v5;
}

- (NEIPv4Settings)initWithConfigMethod:(int64_t)a3
{
  result = [(NEIPv4Settings *)self init];
  if (result)
  {
    result->_configMethod = a3;
  }

  return result;
}

- (NEIPv4Settings)initWithAddresses:(NSArray *)addresses subnetMasks:(NSArray *)subnetMasks
{
  v6 = addresses;
  v7 = subnetMasks;
  v15.receiver = self;
  v15.super_class = NEIPv4Settings;
  v8 = [(NEIPv4Settings *)&v15 init];
  v9 = v8;
  if (v8)
  {
    v8->_configMethod = 3;
    v10 = [(NSArray *)v6 copy];
    v11 = v9->_addresses;
    v9->_addresses = v10;

    v12 = [(NSArray *)v7 copy];
    v13 = v9->_subnetMasks;
    v9->_subnetMasks = v12;
  }

  return v9;
}

- (NEIPv4Settings)init
{
  v9.receiver = self;
  v9.super_class = NEIPv4Settings;
  v2 = [(NEIPv4Settings *)&v9 init];
  v3 = v2;
  if (v2)
  {
    v2->_configMethod = 3;
    v4 = objc_alloc_init(MEMORY[0x1E695DEC8]);
    addresses = v3->_addresses;
    v3->_addresses = v4;

    v6 = objc_alloc_init(MEMORY[0x1E695DEC8]);
    subnetMasks = v3->_subnetMasks;
    v3->_subnetMasks = v6;
  }

  return v3;
}

+ (NEIPv4Settings)settingsWithAutomaticAddressing
{
  v2 = [[NEIPv4Settings alloc] initWithConfigMethod:1];

  return v2;
}

@end