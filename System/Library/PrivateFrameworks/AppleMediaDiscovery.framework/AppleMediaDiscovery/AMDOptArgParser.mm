@interface AMDOptArgParser
- (AMDOptArgParser)initWithOptArgs:(id)args;
- (id)getValueForOption:(id)option;
- (id)parseArgs:(id)args;
- (void)showHelp;
@end

@implementation AMDOptArgParser

- (id)getValueForOption:(id)option
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, option);
  parsedOptArgs = [(AMDOptArgParser *)selfCopy parsedOptArgs];
  v11 = [(NSMutableDictionary *)parsedOptArgs objectForKey:location[0]];
  MEMORY[0x277D82BD8](v11);
  MEMORY[0x277D82BD8](parsedOptArgs);
  if (v11)
  {
    parsedOptArgs2 = [(AMDOptArgParser *)selfCopy parsedOptArgs];
    defaultValue = [(NSMutableDictionary *)parsedOptArgs2 objectForKey:location[0]];
    MEMORY[0x277D82BD8](parsedOptArgs2);
  }

  else
  {
    options = [(AMDOptArgParser *)selfCopy options];
    v8 = [(NSMutableDictionary *)options objectForKey:location[0]];
    MEMORY[0x277D82BD8](v8);
    MEMORY[0x277D82BD8](options);
    if (v8)
    {
      options2 = [(AMDOptArgParser *)selfCopy options];
      v5 = [(NSMutableDictionary *)options2 objectForKey:location[0]];
      defaultValue = [v5 defaultValue];
      MEMORY[0x277D82BD8](v5);
      MEMORY[0x277D82BD8](options2);
    }

    else
    {
      defaultValue = 0;
    }
  }

  objc_storeStrong(location, 0);
  v3 = defaultValue;

  return v3;
}

- (AMDOptArgParser)initWithOptArgs:(id)args
{
  v42 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, args);
  v3 = selfCopy;
  selfCopy = 0;
  v38.receiver = v3;
  v38.super_class = AMDOptArgParser;
  selfCopy = [(AMDOptArgParser *)&v38 init];
  objc_storeStrong(&selfCopy, selfCopy);
  v25 = objc_alloc(MEMORY[0x277CBEB38]);
  v26 = [v25 initWithCapacity:{objc_msgSend(location[0], "count") + 1}];
  [(AMDOptArgParser *)selfCopy setOptions:?];
  MEMORY[0x277D82BD8](v26);
  v27 = objc_alloc(MEMORY[0x277CBEB38]);
  v28 = [v27 initWithCapacity:{objc_msgSend(location[0], "count") + 1}];
  [(AMDOptArgParser *)selfCopy setShortOptions:?];
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
      options = [(AMDOptArgParser *)selfCopy options];
      [(NSMutableDictionary *)options setObject:v33 forKey:v37];
      MEMORY[0x277D82BD8](options);
      if (!v34)
      {
        goto LABEL_9;
      }

      shortOptions = [(AMDOptArgParser *)selfCopy shortOptions];
      v13 = [(NSMutableDictionary *)shortOptions objectForKey:v34];
      MEMORY[0x277D82BD8](v13);
      MEMORY[0x277D82BD8](shortOptions);
      if (!v13)
      {
        break;
      }

      NSLog(&cfstr_ShortOptionBei.isa, v34);
      [(AMDOptArgParser *)selfCopy setOptions:?];
      [(AMDOptArgParser *)selfCopy setShortOptions:0];
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

    shortOptions2 = [(AMDOptArgParser *)selfCopy shortOptions];
    [(NSMutableDictionary *)shortOptions2 setObject:v33 forKey:v34];
    MEMORY[0x277D82BD8](shortOptions2);
LABEL_9:
    v32 = 0;
    goto LABEL_10;
  }

LABEL_13:
  v32 = 0;
LABEL_14:
  MEMORY[0x277D82BD8](obj);
  v31 = [[AMDCommandLineOption alloc] initWithName:@"-help" withDefaultValue:0 withHelpText:@"Show help text" withShortName:@"-h" andIsBoolFlag:1];
  options2 = [(AMDOptArgParser *)selfCopy options];
  MEMORY[0x277D82BD8](options2);
  if (options2)
  {
    options3 = [(AMDOptArgParser *)selfCopy options];
    [(NSMutableDictionary *)options3 setObject:v31 forKey:@"-help"];
    MEMORY[0x277D82BD8](options3);
    shortOptions3 = [(AMDOptArgParser *)selfCopy shortOptions];
    [(NSMutableDictionary *)shortOptions3 setObject:v31 forKey:@"-h"];
    MEMORY[0x277D82BD8](shortOptions3);
  }

  v7 = MEMORY[0x277D82BE0](selfCopy);
  v32 = 1;
  objc_storeStrong(&v31, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  *MEMORY[0x277D85DE8];
  return v7;
}

- (id)parseArgs:(id)args
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, args);
  options = [(AMDOptArgParser *)selfCopy options];
  MEMORY[0x277D82BD8](options);
  if (!options)
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
      options2 = [(AMDOptArgParser *)selfCopy options];
      v21 = [(NSMutableDictionary *)options2 objectForKey:v22];
      MEMORY[0x277D82BD8](options2);
      if (!v21)
      {
        shortOptions = [(AMDOptArgParser *)selfCopy shortOptions];
        v3 = [(NSMutableDictionary *)shortOptions objectForKey:v22];
        v4 = v21;
        v21 = v3;
        MEMORY[0x277D82BD8](v4);
        MEMORY[0x277D82BD8](shortOptions);
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
        name = [v21 name];
        [v14 setObject:MEMORY[0x277CBEC38] forKey:?];
        MEMORY[0x277D82BD8](name);
        goto LABEL_15;
      }

      v13 = ++i;
      if (v13 < [location[0] count])
      {
        v9 = v25;
        v11 = [location[0] objectAtIndexedSubscript:i];
        name2 = [v21 name];
        [v9 setObject:v11 forKey:?];
        MEMORY[0x277D82BD8](name2);
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

  [(AMDOptArgParser *)selfCopy setParsedOptArgs:v25];
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
  selfCopy = self;
  v34 = a2;
  printf("\n");
  memset(__b, 0, sizeof(__b));
  obj = [(AMDOptArgParser *)selfCopy options];
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
      options = [(AMDOptArgParser *)selfCopy options];
      v31 = [(NSMutableDictionary *)options objectForKey:v33];
      MEMORY[0x277D82BD8](options);
      v30 = MEMORY[0x277D82BE0](@"false");
      if (([v31 isBool] & 1) == 0)
      {
        defaultValue = [v31 defaultValue];
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();
        MEMORY[0x277D82BD8](defaultValue);
        if (isKindOfClass)
        {
          defaultValue2 = [v31 defaultValue];
          stringValue = [defaultValue2 stringValue];
          v3 = v30;
          v30 = stringValue;
          MEMORY[0x277D82BD8](v3);
          MEMORY[0x277D82BD8](defaultValue2);
        }

        else
        {
          defaultValue3 = [v31 defaultValue];
          v5 = v30;
          v30 = defaultValue3;
          MEMORY[0x277D82BD8](v5);
        }
      }

      v12 = v33;
      v6 = v33;
      uTF8String = [v12 UTF8String];
      shortName = [v31 shortName];
      v7 = shortName;
      uTF8String2 = [shortName UTF8String];
      helpText = [v31 helpText];
      v8 = helpText;
      uTF8String3 = [helpText UTF8String];
      v13 = v30;
      v9 = v30;
      uTF8String4 = [v13 UTF8String];
      isBool = [v31 isBool];
      v11 = "yes";
      if ((isBool & 1) == 0)
      {
        v11 = "no";
      }

      printf("%s (%s)\t: %s\ndefault value\t\t: %s\nisBool\t\t\t: %s\n\n", uTF8String, uTF8String2, uTF8String3, uTF8String4, v11);
      MEMORY[0x277D82BD8](helpText);
      MEMORY[0x277D82BD8](shortName);
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