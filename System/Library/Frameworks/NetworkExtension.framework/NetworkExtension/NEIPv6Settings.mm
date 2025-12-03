@interface NEIPv6Settings
+ (NEIPv6Settings)settingsWithAutomaticAddressing;
+ (NEIPv6Settings)settingsWithLinkLocalAddressing;
- (BOOL)checkValidityAndCollectErrors:(id)errors;
- (BOOL)hasDefaultRoute;
- (NEIPv6Settings)init;
- (NEIPv6Settings)initWithAddresses:(NSArray *)addresses networkPrefixLengths:(NSArray *)networkPrefixLengths;
- (NEIPv6Settings)initWithCoder:(id)coder;
- (NEIPv6Settings)initWithConfigMethod:(int64_t)method;
- (id)copyLegacyDictionary;
- (id)copyWithZone:(_NSZone *)zone;
- (id)initFromLegacyDictionary:(id)dictionary;
- (void)encodeWithCoder:(id)coder;
@end

@implementation NEIPv6Settings

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

- (id)initFromLegacyDictionary:(id)dictionary
{
  v75 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v6 = [(NEIPv6Settings *)self initWithConfigMethod:1];
  if (!v6)
  {
    goto LABEL_55;
  }

  v7 = [dictionaryCopy objectForKeyedSubscript:*MEMORY[0x1E69824E0]];
  if (isa_nsstring(v7))
  {
    if ([v7 isEqualToString:*MEMORY[0x1E69828D0]])
    {
      v8 = 3;
    }

    else if ([v7 isEqualToString:*MEMORY[0x1E69828D8]])
    {
      v8 = 2;
    }

    else
    {
      if (![v7 isEqualToString:*MEMORY[0x1E69828C8]])
      {
        goto LABEL_10;
      }

      v8 = 1;
    }

    v6->_configMethod = v8;
  }

LABEL_10:
  v9 = *MEMORY[0x1E69824D8];
  v10 = [dictionaryCopy objectForKeyedSubscript:*MEMORY[0x1E69824D8]];
  v11 = isa_nsarray(v10);

  if (v11)
  {
    v12 = [dictionaryCopy objectForKeyedSubscript:v9];
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

  v17 = *MEMORY[0x1E6982500];
  v18 = [dictionaryCopy objectForKeyedSubscript:*MEMORY[0x1E6982500]];
  v19 = isa_nsarray(v18);

  if (v19)
  {
    v20 = [dictionaryCopy objectForKeyedSubscript:v17];
    if ([v20 count])
    {
      v21 = [v20 objectAtIndexedSubscript:0];
      v22 = isa_nsnumber(v21);

      if (v22)
      {
        v23 = [v20 copy];
        networkPrefixLengths = v6->_networkPrefixLengths;
        v6->_networkPrefixLengths = v23;
      }
    }
  }

  v25 = *MEMORY[0x1E6982528];
  v26 = [dictionaryCopy objectForKeyedSubscript:*MEMORY[0x1E6982528]];
  v27 = isa_nsstring(v26);

  if (v27)
  {
    v28 = [dictionaryCopy objectForKeyedSubscript:v25];
    v29 = [v28 copy];
    router = v6->_router;
    v6->_router = v29;
  }

  v31 = *MEMORY[0x1E6982558];
  v32 = [dictionaryCopy objectForKeyedSubscript:*MEMORY[0x1E6982558]];
  v33 = isa_nsnumber(v32);
  v34 = MEMORY[0x1E69824F8];
  if (!v33 || ([dictionaryCopy objectForKeyedSubscript:v31], v3 = objc_claimAutoreleasedReturnValue(), !objc_msgSend(v3, "BOOLValue")))
  {
    v35 = [dictionaryCopy objectForKeyedSubscript:*v34];
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
  v38 = [dictionaryCopy objectForKeyedSubscript:v31];
  if (!isa_nsnumber(v38))
  {
LABEL_33:

    goto LABEL_34;
  }

  v39 = [dictionaryCopy objectForKeyedSubscript:v31];
  bOOLValue = [v39 BOOLValue];

  if (bOOLValue)
  {
    v38 = +[NEIPv6Route defaultRoute];
    [v37 addObject:v38];
    goto LABEL_33;
  }

LABEL_34:
  v41 = *v34;
  v42 = [dictionaryCopy objectForKeyedSubscript:*v34];
  v43 = isa_nsarray(v42);

  if (v43)
  {
    v44 = [dictionaryCopy objectForKeyedSubscript:v41];
    v69 = 0u;
    v70 = 0u;
    v71 = 0u;
    v72 = 0u;
    v45 = [v44 countByEnumeratingWithState:&v69 objects:v74 count:16];
    if (v45)
    {
      v46 = v45;
      v47 = *v70;
      do
      {
        v48 = 0;
        do
        {
          if (*v70 != v47)
          {
            objc_enumerationMutation(v44);
          }

          v49 = [[NEIPv6Route alloc] initFromLegacyDictionary:*(*(&v69 + 1) + 8 * v48)];
          [v37 addObject:v49];

          ++v48;
        }

        while (v46 != v48);
        v46 = [v44 countByEnumeratingWithState:&v69 objects:v74 count:16];
      }

      while (v46);
    }
  }

  if (v37)
  {
    objc_storeStrong(&v6->_includedRoutes, v37);
  }

  v50 = *MEMORY[0x1E69824E8];
  v51 = [dictionaryCopy objectForKeyedSubscript:*MEMORY[0x1E69824E8]];
  v52 = isa_nsarray(v51);

  if (v52)
  {
    v64 = v7;
    v53 = [dictionaryCopy objectForKeyedSubscript:v50];
    v54 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v65 = 0u;
    v66 = 0u;
    v67 = 0u;
    v68 = 0u;
    v55 = v53;
    v56 = [v55 countByEnumeratingWithState:&v65 objects:v73 count:16];
    if (v56)
    {
      v57 = v56;
      v58 = *v66;
      do
      {
        v59 = 0;
        do
        {
          if (*v66 != v58)
          {
            objc_enumerationMutation(v55);
          }

          v60 = [[NEIPv6Route alloc] initFromLegacyDictionary:*(*(&v65 + 1) + 8 * v59)];
          [(NSArray *)v54 addObject:v60];

          ++v59;
        }

        while (v57 != v59);
        v57 = [v55 countByEnumeratingWithState:&v65 objects:v73 count:16];
      }

      while (v57);
    }

    excludedRoutes = v6->_excludedRoutes;
    v6->_excludedRoutes = v54;

    v7 = v64;
  }

LABEL_55:
  v62 = *MEMORY[0x1E69E9840];
  return v6;
}

- (id)copyLegacyDictionary
{
  v44 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  if ([(NEIPv6Settings *)self configMethod]== 3)
  {
    v4 = MEMORY[0x1E69828D0];
LABEL_5:
    [v3 setObject:*v4 forKeyedSubscript:*MEMORY[0x1E69824E0]];
    goto LABEL_6;
  }

  if ([(NEIPv6Settings *)self configMethod]== 1)
  {
    v4 = MEMORY[0x1E69828C8];
    goto LABEL_5;
  }

  if ([(NEIPv6Settings *)self configMethod]== 2)
  {
    [v3 setObject:*MEMORY[0x1E69828D8] forKeyedSubscript:*MEMORY[0x1E69824E0]];
    addresses = [(NEIPv6Settings *)self addresses];
    v27 = [addresses count];

    if (v27)
    {
      addresses2 = [(NEIPv6Settings *)self addresses];
      [v3 setObject:addresses2 forKeyedSubscript:*MEMORY[0x1E69824D8]];
    }

    networkPrefixLengths = [(NEIPv6Settings *)self networkPrefixLengths];
    v30 = [networkPrefixLengths count];

    if (v30)
    {
      networkPrefixLengths2 = [(NEIPv6Settings *)self networkPrefixLengths];
      [v3 setObject:networkPrefixLengths2 forKeyedSubscript:*MEMORY[0x1E6982500]];
    }

    router = [(NEIPv6Settings *)self router];

    if (router)
    {
      router2 = [(NEIPv6Settings *)self router];
      [v3 setObject:router2 forKeyedSubscript:*MEMORY[0x1E6982528]];
    }
  }

LABEL_6:
  includedRoutes = [(NEIPv6Settings *)self includedRoutes];

  if (includedRoutes)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v38 = 0u;
    v39 = 0u;
    v40 = 0u;
    v41 = 0u;
    includedRoutes2 = [(NEIPv6Settings *)self includedRoutes];
    v8 = [includedRoutes2 countByEnumeratingWithState:&v38 objects:v43 count:16];
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
            objc_enumerationMutation(includedRoutes2);
          }

          v13 = *(*(&v38 + 1) + 8 * i);
          if ([v13 isDefaultRoute])
          {
            [v3 setObject:&unk_1F38BA5B0 forKeyedSubscript:v11];
          }

          else
          {
            copyLegacyDictionary = [v13 copyLegacyDictionary];
            [v6 addObject:copyLegacyDictionary];
          }
        }

        v9 = [includedRoutes2 countByEnumeratingWithState:&v38 objects:v43 count:16];
      }

      while (v9);
    }
  }

  excludedRoutes = [(NEIPv6Settings *)self excludedRoutes];

  if (excludedRoutes)
  {
    v16 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    excludedRoutes2 = [(NEIPv6Settings *)self excludedRoutes];
    v18 = [excludedRoutes2 countByEnumeratingWithState:&v34 objects:v42 count:16];
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
            objc_enumerationMutation(excludedRoutes2);
          }

          v22 = *(*(&v34 + 1) + 8 * j);
          if (([v22 isDefaultRoute] & 1) == 0)
          {
            copyLegacyDictionary2 = [v22 copyLegacyDictionary];
            [v16 addObject:copyLegacyDictionary2];
          }
        }

        v19 = [excludedRoutes2 countByEnumeratingWithState:&v34 objects:v42 count:16];
      }

      while (v19);
    }
  }

  v24 = *MEMORY[0x1E69E9840];
  return v3;
}

- (BOOL)checkValidityAndCollectErrors:(id)errors
{
  v58 = *MEMORY[0x1E69E9840];
  if ([(NEIPv6Settings *)self configMethod]!= 2)
  {
    goto LABEL_41;
  }

  v51[0] = 0;
  v51[1] = 0;
  addresses = [(NEIPv6Settings *)self addresses];
  v5 = [addresses count];

  if (!v5)
  {
    v9 = ne_log_obj();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v10 = "Missing IPv6 address";
      goto LABEL_43;
    }

LABEL_7:

    goto LABEL_8;
  }

  addresses2 = [(NEIPv6Settings *)self addresses];
  v7 = [addresses2 objectAtIndexedSubscript:0];
  v8 = inet_pton(30, [v7 UTF8String], v51);

  if (!v8)
  {
    v9 = ne_log_obj();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v10 = "Invalid IPv6 address";
LABEL_43:
      _os_log_error_impl(&dword_1BA83C000, v9, OS_LOG_TYPE_ERROR, v10, buf, 2u);
      goto LABEL_7;
    }

    goto LABEL_7;
  }

LABEL_8:
  router = [(NEIPv6Settings *)self router];
  if (router)
  {
    v12 = router;
    router2 = [(NEIPv6Settings *)self router];
    v14 = inet_pton(30, [router2 UTF8String], v51);

    if (!v14)
    {
      v15 = ne_log_obj();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_1BA83C000, v15, OS_LOG_TYPE_ERROR, "Invalid IPv6 router", buf, 2u);
      }
    }
  }

  networkPrefixLengths = [(NEIPv6Settings *)self networkPrefixLengths];
  v17 = [networkPrefixLengths count];
  addresses3 = [(NEIPv6Settings *)self addresses];
  v19 = [addresses3 count];

  if (v17 != v19)
  {
    v20 = ne_log_obj();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      addresses4 = [(NEIPv6Settings *)self addresses];
      v40 = [addresses4 count];
      networkPrefixLengths2 = [(NEIPv6Settings *)self networkPrefixLengths];
      v42 = [networkPrefixLengths2 count];
      *buf = 134218240;
      v55 = v40;
      v56 = 2048;
      v57 = v42;
      _os_log_error_impl(&dword_1BA83C000, v20, OS_LOG_TYPE_ERROR, "Missing networkPrefixLengths (address count = %lu, prefix length count = %lu)", buf, 0x16u);
    }
  }

  networkPrefixLengths3 = [(NEIPv6Settings *)self networkPrefixLengths];
  if (![networkPrefixLengths3 count])
  {
    goto LABEL_21;
  }

  networkPrefixLengths4 = [(NEIPv6Settings *)self networkPrefixLengths];
  v23 = [networkPrefixLengths4 objectAtIndex:0];
  intValue = [v23 intValue];

  if (intValue >= 129)
  {
    networkPrefixLengths3 = ne_log_obj();
    if (os_log_type_enabled(networkPrefixLengths3, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_1BA83C000, networkPrefixLengths3, OS_LOG_TYPE_ERROR, "Invalid IPv6 prefix length", buf, 2u);
    }

LABEL_21:
  }

  v25 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  includedRoutes = [(NEIPv6Settings *)self includedRoutes];
  v27 = [includedRoutes countByEnumeratingWithState:&v47 objects:v53 count:16];
  if (v27)
  {
    v28 = v27;
    v29 = *v48;
    do
    {
      for (i = 0; i != v28; ++i)
      {
        if (*v48 != v29)
        {
          objc_enumerationMutation(includedRoutes);
        }

        [*(*(&v47 + 1) + 8 * i) checkValidityAndCollectErrors:v25];
      }

      v28 = [includedRoutes countByEnumeratingWithState:&v47 objects:v53 count:16];
    }

    while (v28);
  }

  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  excludedRoutes = [(NEIPv6Settings *)self excludedRoutes];
  v32 = [excludedRoutes countByEnumeratingWithState:&v43 objects:v52 count:16];
  if (v32)
  {
    v33 = v32;
    v34 = *v44;
    do
    {
      for (j = 0; j != v33; ++j)
      {
        if (*v44 != v34)
        {
          objc_enumerationMutation(excludedRoutes);
        }

        [*(*(&v43 + 1) + 8 * j) checkValidityAndCollectErrors:v25];
      }

      v33 = [excludedRoutes countByEnumeratingWithState:&v43 objects:v52 count:16];
    }

    while (v33);
  }

  if ([v25 count])
  {
    v36 = ne_log_obj();
    if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v55 = v25;
      _os_log_error_impl(&dword_1BA83C000, v36, OS_LOG_TYPE_ERROR, "IPv6 routes are invalid: %@", buf, 0xCu);
    }
  }

LABEL_41:
  v37 = *MEMORY[0x1E69E9840];
  return 1;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [NEIPv6Settings allocWithZone:zone];
  addresses = [(NEIPv6Settings *)self addresses];
  networkPrefixLengths = [(NEIPv6Settings *)self networkPrefixLengths];
  v7 = [(NEIPv6Settings *)v4 initWithAddresses:addresses networkPrefixLengths:networkPrefixLengths];

  [(NEIPv6Settings *)v7 setConfigMethod:[(NEIPv6Settings *)self configMethod]];
  router = [(NEIPv6Settings *)self router];
  [(NEIPv6Settings *)v7 setRouter:router];

  includedRoutes = [(NEIPv6Settings *)self includedRoutes];
  [(NEIPv6Settings *)v7 setIncludedRoutes:includedRoutes];

  excludedRoutes = [(NEIPv6Settings *)self excludedRoutes];
  [(NEIPv6Settings *)v7 setExcludedRoutes:excludedRoutes];

  return v7;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeInt32:-[NEIPv6Settings configMethod](self forKey:{"configMethod"), @"ConfigMethod"}];
  addresses = [(NEIPv6Settings *)self addresses];
  [coderCopy encodeObject:addresses forKey:@"AddressArray"];

  router = [(NEIPv6Settings *)self router];
  [coderCopy encodeObject:router forKey:@"Router"];

  networkPrefixLengths = [(NEIPv6Settings *)self networkPrefixLengths];
  [coderCopy encodeObject:networkPrefixLengths forKey:@"PrefixLengthArray"];

  includedRoutes = [(NEIPv6Settings *)self includedRoutes];
  [coderCopy encodeObject:includedRoutes forKey:@"IncludeRoutes"];

  excludedRoutes = [(NEIPv6Settings *)self excludedRoutes];
  [coderCopy encodeObject:excludedRoutes forKey:@"ExcludeRoutes"];
}

- (NEIPv6Settings)initWithCoder:(id)coder
{
  v45 = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  v42.receiver = self;
  v42.super_class = NEIPv6Settings;
  v5 = [(NEIPv6Settings *)&v42 init];
  if (v5)
  {
    v5->_configMethod = [coderCopy decodeInt32ForKey:@"ConfigMethod"];
    v6 = MEMORY[0x1E695DFD8];
    v7 = objc_opt_class();
    v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
    v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"AddressArray"];
    addresses = v5->_addresses;
    v5->_addresses = v9;

    if (!v5->_addresses)
    {
      v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"Address"];
      if (v11)
      {
        v12 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithObjects:{v11, 0}];
        v13 = v5->_addresses;
        v5->_addresses = v12;

        v14 = ne_log_obj();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
        {
          v40 = v5->_addresses;
          *buf = 138412290;
          v44 = v40;
          _os_log_debug_impl(&dword_1BA83C000, v14, OS_LOG_TYPE_DEBUG, "initwithcoder single router IPv6address %@", buf, 0xCu);
        }
      }
    }

    v15 = MEMORY[0x1E695DFD8];
    v16 = objc_opt_class();
    v17 = [v15 setWithObjects:{v16, objc_opt_class(), 0}];
    v18 = [coderCopy decodeObjectOfClasses:v17 forKey:@"PrefixLengthArray"];
    networkPrefixLengths = v5->_networkPrefixLengths;
    v5->_networkPrefixLengths = v18;

    if (!v5->_networkPrefixLengths)
    {
      v20 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"PrefixLength"];

      if (v20)
      {
        v21 = objc_alloc(MEMORY[0x1E695DEC8]);
        v22 = [MEMORY[0x1E696AD98] numberWithInt:v20];
        v23 = [v21 initWithObjects:{v22, 0}];
        v24 = v5->_networkPrefixLengths;
        v5->_networkPrefixLengths = v23;

        v25 = ne_log_obj();
        if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
        {
          v41 = v5->_networkPrefixLengths;
          *buf = 138412290;
          v44 = v41;
          _os_log_debug_impl(&dword_1BA83C000, v25, OS_LOG_TYPE_DEBUG, "initwithcoder single prefixLength %@", buf, 0xCu);
        }
      }
    }

    v26 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"Router"];
    router = v5->_router;
    v5->_router = v26;

    v28 = MEMORY[0x1E695DFD8];
    v29 = objc_opt_class();
    v30 = [v28 setWithObjects:{v29, objc_opt_class(), 0}];
    v31 = [coderCopy decodeObjectOfClasses:v30 forKey:@"IncludeRoutes"];
    includedRoutes = v5->_includedRoutes;
    v5->_includedRoutes = v31;

    v33 = MEMORY[0x1E695DFD8];
    v34 = objc_opt_class();
    v35 = [v33 setWithObjects:{v34, objc_opt_class(), 0}];
    v36 = [coderCopy decodeObjectOfClasses:v35 forKey:@"ExcludeRoutes"];
    excludedRoutes = v5->_excludedRoutes;
    v5->_excludedRoutes = v36;
  }

  v38 = *MEMORY[0x1E69E9840];
  return v5;
}

- (NEIPv6Settings)initWithConfigMethod:(int64_t)method
{
  result = [(NEIPv6Settings *)self init];
  if (result)
  {
    result->_configMethod = method;
  }

  return result;
}

- (NEIPv6Settings)initWithAddresses:(NSArray *)addresses networkPrefixLengths:(NSArray *)networkPrefixLengths
{
  v6 = addresses;
  v7 = networkPrefixLengths;
  v15.receiver = self;
  v15.super_class = NEIPv6Settings;
  v8 = [(NEIPv6Settings *)&v15 init];
  v9 = v8;
  if (v8)
  {
    v8->_configMethod = 2;
    v10 = [(NSArray *)v6 copy];
    v11 = v9->_addresses;
    v9->_addresses = v10;

    v12 = [(NSArray *)v7 copy];
    v13 = v9->_networkPrefixLengths;
    v9->_networkPrefixLengths = v12;
  }

  return v9;
}

- (NEIPv6Settings)init
{
  v9.receiver = self;
  v9.super_class = NEIPv6Settings;
  v2 = [(NEIPv6Settings *)&v9 init];
  v3 = v2;
  if (v2)
  {
    v2->_configMethod = 2;
    v4 = objc_alloc_init(MEMORY[0x1E695DEC8]);
    addresses = v3->_addresses;
    v3->_addresses = v4;

    v6 = objc_alloc_init(MEMORY[0x1E695DEC8]);
    networkPrefixLengths = v3->_networkPrefixLengths;
    v3->_networkPrefixLengths = v6;
  }

  return v3;
}

+ (NEIPv6Settings)settingsWithLinkLocalAddressing
{
  v2 = [[NEIPv6Settings alloc] initWithConfigMethod:3];

  return v2;
}

+ (NEIPv6Settings)settingsWithAutomaticAddressing
{
  v2 = [[NEIPv6Settings alloc] initWithConfigMethod:1];

  return v2;
}

@end