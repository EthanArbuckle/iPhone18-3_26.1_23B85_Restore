@interface AMDOptArgParser
- (AMDOptArgParser)initWithOptArgs:(id)a3;
- (id)getValueForOption:(id)a3;
- (id)parseArgs:(id)a3;
- (void)showHelp;
@end

@implementation AMDOptArgParser

- (id)getValueForOption:(id)a3
{
  v13 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v10 = [(AMDOptArgParser *)v13 parsedOptArgs];
  v11 = [(NSMutableDictionary *)v10 objectForKey:location[0]];
  MEMORY[0x277D82BD8](v11);
  MEMORY[0x277D82BD8](v10);
  if (v11)
  {
    v9 = [(AMDOptArgParser *)v13 parsedOptArgs];
    v14 = [(NSMutableDictionary *)v9 objectForKey:location[0]];
    MEMORY[0x277D82BD8](v9);
  }

  else
  {
    v7 = [(AMDOptArgParser *)v13 options];
    v8 = [(NSMutableDictionary *)v7 objectForKey:location[0]];
    MEMORY[0x277D82BD8](v8);
    MEMORY[0x277D82BD8](v7);
    if (v8)
    {
      v6 = [(AMDOptArgParser *)v13 options];
      v5 = [(NSMutableDictionary *)v6 objectForKey:location[0]];
      v14 = [v5 defaultValue];
      MEMORY[0x277D82BD8](v5);
      MEMORY[0x277D82BD8](v6);
    }

    else
    {
      v14 = 0;
    }
  }

  objc_storeStrong(location, 0);
  v3 = v14;

  return v3;
}

- (AMDOptArgParser)initWithOptArgs:(id)a3
{
  v42 = *MEMORY[0x277D85DE8];
  v40 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = v40;
  v40 = 0;
  v38.receiver = v3;
  v38.super_class = AMDOptArgParser;
  v40 = [(AMDOptArgParser *)&v38 init];
  objc_storeStrong(&v40, v40);
  v25 = objc_alloc(MEMORY[0x277CBEB38]);
  v26 = [v25 initWithCapacity:{objc_msgSend(location[0], "count") + 1}];
  [(AMDOptArgParser *)v40 setOptions:?];
  MEMORY[0x277D82BD8](v26);
  v27 = objc_alloc(MEMORY[0x277CBEB38]);
  v28 = [v27 initWithCapacity:{objc_msgSend(location[0], "count") + 1}];
  [(AMDOptArgParser *)v40 setShortOptions:?];
  MEMORY[0x277D82BD8](v28);
  memset(__b, 0, sizeof(__b));
  obj = MEMORY[0x277D82BE0](location[0]);
  v30 = [obj countByEnumeratingWithState:__b objects:v41 count:16];
  if (v30)
  {
    v22 = *__b[2];
    v23 = 0;
    v24 = v30;
    while (1)
    {
      v21 = v23;
      if (*__b[2] != v22)
      {
        objc_enumerationMutation(obj);
      }

      v37 = *(__b[1] + 8 * v23);
      v35 = [location[0] objectForKey:v37];
      v34 = [v35 objectForKey:@"shortName"];
      v33 = [AMDCommandLineOption alloc];
      v16 = MEMORY[0x277D82BE0](v33);
      v14 = v37;
      v19 = [v35 objectForKey:@"defaultValue"];
      v18 = [v35 objectForKey:@"helpText"];
      v15 = v34;
      v17 = [v35 objectForKey:@"isBool"];
      v4 = [v16 initWithName:v14 withDefaultValue:v19 withHelpText:v18 withShortName:v15 andIsBoolFlag:{objc_msgSend(v17, "BOOLValue")}];
      v5 = v33;
      v33 = v4;
      MEMORY[0x277D82BD8](v5);
      MEMORY[0x277D82BD8](v17);
      MEMORY[0x277D82BD8](v18);
      MEMORY[0x277D82BD8](v19);
      v20 = [(AMDOptArgParser *)v40 options];
      [(NSMutableDictionary *)v20 setObject:v33 forKey:v37];
      MEMORY[0x277D82BD8](v20);
      if (!v34)
      {
        goto LABEL_9;
      }

      v12 = [(AMDOptArgParser *)v40 shortOptions];
      v13 = [(NSMutableDictionary *)v12 objectForKey:v34];
      MEMORY[0x277D82BD8](v13);
      MEMORY[0x277D82BD8](v12);
      if (!v13)
      {
        break;
      }

      NSLog(&cfstr_ShortOptionBei.isa, v34);
      [(AMDOptArgParser *)v40 setOptions:?];
      [(AMDOptArgParser *)v40 setShortOptions:0];
      v32 = 2;
LABEL_10:
      objc_storeStrong(&v33, 0);
      objc_storeStrong(&v34, 0);
      objc_storeStrong(&v35, 0);
      if (v32)
      {
        goto LABEL_14;
      }

      ++v23;
      if (v21 + 1 >= v24)
      {
        v23 = 0;
        v24 = [obj countByEnumeratingWithState:__b objects:v41 count:16];
        if (!v24)
        {
          goto LABEL_13;
        }
      }
    }

    v11 = [(AMDOptArgParser *)v40 shortOptions];
    [(NSMutableDictionary *)v11 setObject:v33 forKey:v34];
    MEMORY[0x277D82BD8](v11);
LABEL_9:
    v32 = 0;
    goto LABEL_10;
  }

LABEL_13:
  v32 = 0;
LABEL_14:
  MEMORY[0x277D82BD8](obj);
  v31 = [[AMDCommandLineOption alloc] initWithName:@"-help" withDefaultValue:0 withHelpText:@"Show help text" withShortName:@"-h" andIsBoolFlag:1];
  v10 = [(AMDOptArgParser *)v40 options];
  MEMORY[0x277D82BD8](v10);
  if (v10)
  {
    v8 = [(AMDOptArgParser *)v40 options];
    [(NSMutableDictionary *)v8 setObject:v31 forKey:@"-help"];
    MEMORY[0x277D82BD8](v8);
    v9 = [(AMDOptArgParser *)v40 shortOptions];
    [(NSMutableDictionary *)v9 setObject:v31 forKey:@"-h"];
    MEMORY[0x277D82BD8](v9);
  }

  v7 = MEMORY[0x277D82BE0](v40);
  v32 = 1;
  objc_storeStrong(&v31, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&v40, 0);
  *MEMORY[0x277D85DE8];
  return v7;
}

- (id)parseArgs:(id)a3
{
  v28 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v20 = [(AMDOptArgParser *)v28 options];
  MEMORY[0x277D82BD8](v20);
  if (!v20)
  {
    v29 = 0;
    v26 = 1;
    goto LABEL_26;
  }

  v25 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v24 = objc_alloc_init(MEMORY[0x277CBEB18]);
  for (i = 0; ; ++i)
  {
    v19 = i;
    if (v19 >= [location[0] count])
    {
      break;
    }

    v22 = [location[0] objectAtIndexedSubscript:i];
    if ([v22 hasPrefix:@"-"])
    {
      v18 = [(AMDOptArgParser *)v28 options];
      v21 = [(NSMutableDictionary *)v18 objectForKey:v22];
      MEMORY[0x277D82BD8](v18);
      if (!v21)
      {
        v17 = [(AMDOptArgParser *)v28 shortOptions];
        v3 = [(NSMutableDictionary *)v17 objectForKey:v22];
        v4 = v21;
        v21 = v3;
        MEMORY[0x277D82BD8](v4);
        MEMORY[0x277D82BD8](v17);
      }

      if (!v21)
      {
        v16 = v22;
        v5 = v22;
        printf("!! Bad option: %s\n", [v16 UTF8String]);
        v29 = 0;
        v26 = 1;
        goto LABEL_16;
      }

      if ([v21 isBool])
      {
        v14 = v25;
        v15 = [v21 name];
        [v14 setObject:MEMORY[0x277CBEC38] forKey:?];
        MEMORY[0x277D82BD8](v15);
        goto LABEL_15;
      }

      v13 = ++i;
      if (v13 < [location[0] count])
      {
        v9 = v25;
        v11 = [location[0] objectAtIndexedSubscript:i];
        v10 = [v21 name];
        [v9 setObject:v11 forKey:?];
        MEMORY[0x277D82BD8](v10);
        MEMORY[0x277D82BD8](v11);
LABEL_15:
        v26 = 0;
      }

      else
      {
        v12 = v22;
        v6 = v22;
        printf("!! Missing value for option: %s\n", [v12 UTF8String]);
        v29 = 0;
        v26 = 1;
      }

LABEL_16:
      objc_storeStrong(&v21, 0);
      if (v26)
      {
        goto LABEL_20;
      }

      goto LABEL_19;
    }

    [v24 addObject:v22];
LABEL_19:
    v26 = 0;
LABEL_20:
    objc_storeStrong(&v22, 0);
    if (v26)
    {
      goto LABEL_25;
    }
  }

  if ([v24 count])
  {
    [v25 setObject:v24 forKey:@"arguments"];
  }

  [(AMDOptArgParser *)v28 setParsedOptArgs:v25];
  v29 = MEMORY[0x277D82BE0](v25);
  v26 = 1;
LABEL_25:
  objc_storeStrong(&v24, 0);
  objc_storeStrong(&v25, 0);
LABEL_26:
  objc_storeStrong(location, 0);
  v7 = v29;

  return v7;
}

- (void)showHelp
{
  v37 = *MEMORY[0x277D85DE8];
  v35 = self;
  v34 = a2;
  printf("\n");
  memset(__b, 0, sizeof(__b));
  obj = [(AMDOptArgParser *)v35 options];
  v29 = [(NSMutableDictionary *)obj countByEnumeratingWithState:__b objects:v36 count:16];
  if (v29)
  {
    v25 = *__b[2];
    v26 = 0;
    v27 = v29;
    while (1)
    {
      v24 = v26;
      if (*__b[2] != v25)
      {
        objc_enumerationMutation(obj);
      }

      v33 = *(__b[1] + 8 * v26);
      v23 = [(AMDOptArgParser *)v35 options];
      v31 = [(NSMutableDictionary *)v23 objectForKey:v33];
      MEMORY[0x277D82BD8](v23);
      v30 = MEMORY[0x277D82BE0](@"false");
      if (([v31 isBool] & 1) == 0)
      {
        v21 = [v31 defaultValue];
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();
        MEMORY[0x277D82BD8](v21);
        if (isKindOfClass)
        {
          v20 = [v31 defaultValue];
          v2 = [v20 stringValue];
          v3 = v30;
          v30 = v2;
          MEMORY[0x277D82BD8](v3);
          MEMORY[0x277D82BD8](v20);
        }

        else
        {
          v4 = [v31 defaultValue];
          v5 = v30;
          v30 = v4;
          MEMORY[0x277D82BD8](v5);
        }
      }

      v12 = v33;
      v6 = v33;
      v14 = [v12 UTF8String];
      v19 = [v31 shortName];
      v7 = v19;
      v15 = [v19 UTF8String];
      v18 = [v31 helpText];
      v8 = v18;
      v16 = [v18 UTF8String];
      v13 = v30;
      v9 = v30;
      v17 = [v13 UTF8String];
      v10 = [v31 isBool];
      v11 = "yes";
      if ((v10 & 1) == 0)
      {
        v11 = "no";
      }

      printf("%s (%s)\t: %s\ndefault value\t\t: %s\nisBool\t\t\t: %s\n\n", v14, v15, v16, v17, v11);
      MEMORY[0x277D82BD8](v18);
      MEMORY[0x277D82BD8](v19);
      objc_storeStrong(&v30, 0);
      objc_storeStrong(&v31, 0);
      ++v26;
      if (v24 + 1 >= v27)
      {
        v26 = 0;
        v27 = [(NSMutableDictionary *)obj countByEnumeratingWithState:__b objects:v36 count:16];
        if (!v27)
        {
          break;
        }
      }
    }
  }

  MEMORY[0x277D82BD8](obj);
  printf("End of help text\n");
  *MEMORY[0x277D85DE8];
}

@end