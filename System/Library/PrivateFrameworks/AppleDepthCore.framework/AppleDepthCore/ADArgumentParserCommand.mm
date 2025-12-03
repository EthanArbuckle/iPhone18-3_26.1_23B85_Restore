@interface ADArgumentParserCommand
- (ADArgumentParserCommand)init;
- (BOOL)checkIfName:(id)name notInList:(id)list;
- (BOOL)commandParse:(id)parse commandIndex:(unsigned int)index;
- (BOOL)parseSubCommand:(id)command commandIndex:(unsigned int)index;
- (BOOL)parseUsingDocopt:(id)docopt;
- (BOOL)verifyArgumentsForClass;
- (BOOL)verifyCommandStructure;
- (BOOL)verifyNoArgumentDuplications;
- (BOOL)verifySingleArgName:(id)name ofType:(unint64_t)type;
- (id)fullUsageWithPrefix:(id)prefix;
- (id)shortUsageWithPrefix:(id)prefix;
- (id)subCommandsUsageWithPrefix:(id)prefix;
- (id)usage;
- (void)addSubCommand:(id)command withName:(SEL)name description:(id)description;
- (void)addSubCommand:(id)command withName:(id)name description:(id)description handler:(id)handler;
@end

@implementation ADArgumentParserCommand

- (BOOL)commandParse:(id)parse commandIndex:(unsigned int)index
{
  v4 = *&index;
  v26 = *MEMORY[0x277D85DE8];
  parseCopy = parse;
  v7 = [parseCopy objectAtIndexedSubscript:0];
  lastPathComponent = [v7 lastPathComponent];
  programName = self->_programName;
  self->_programName = lastPathComponent;

  objc_storeStrong(&self->_preParsedPrefix, self->_programName);
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v10 = [parseCopy subarrayWithRange:{1, v4}];
  v11 = [v10 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v11)
  {
    v12 = *v22;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v22 != v12)
        {
          objc_enumerationMutation(v10);
        }

        v14 = [(NSString *)self->_preParsedPrefix stringByAppendingFormat:@" %@", *(*(&v21 + 1) + 8 * i)];
        preParsedPrefix = self->_preParsedPrefix;
        self->_preParsedPrefix = v14;
      }

      v11 = [v10 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v11);
  }

  if (![(NSMutableArray *)self->_subCommands count])
  {
    if ([(NSMutableArray *)self->_optionalArguments count]|| [(NSMutableArray *)self->_positionalArguments count])
    {
      if (![(ADArgumentParserCommand *)self parseUsingDocopt:parseCopy])
      {
        goto LABEL_18;
      }
    }

    else if ([parseCopy count] > (v4 + 1))
    {
      goto LABEL_18;
    }

    if ([(ADArgumentParserCommand *)self verifyInputs])
    {
      if ((objc_opt_respondsToSelector() & 1) == 0)
      {
        v17 = 1;
        goto LABEL_19;
      }

      v16 = [(ADArgumentParserCommandHandler *)self->_handler didReceiveCommand:self];
      goto LABEL_10;
    }

LABEL_18:
    usage = [(ADArgumentParserCommand *)self usage];
    v19 = usage;
    puts([usage UTF8String]);

    v17 = 0;
    goto LABEL_19;
  }

  v16 = [(ADArgumentParserCommand *)self parseSubCommand:parseCopy commandIndex:v4];
LABEL_10:
  v17 = v16;
LABEL_19:

  return v17;
}

- (BOOL)parseUsingDocopt:(id)docopt
{
  v7[40] = *MEMORY[0x277D85DE8];
  docoptCopy = docopt;
  v7[0] = 0;
  v7[1] = 0;
  v6 = v7;
  [(ADArgumentParserCommand *)self usage];
  objc_claimAutoreleasedReturnValue();
  [docoptCopy count];
  operator new[]();
}

- (BOOL)parseSubCommand:(id)command commandIndex:(unsigned int)index
{
  v33 = *MEMORY[0x277D85DE8];
  commandCopy = command;
  v6 = index + 1;
  if ([commandCopy count] <= v6)
  {
    lastObject = [commandCopy lastObject];
    printf("ADArgumentParser Error: expecting subcommand after %s\n", [lastObject UTF8String]);

    usage = [(ADArgumentParserCommand *)self usage];
    puts([usage UTF8String]);

    v10 = 0;
    goto LABEL_8;
  }

  v7 = [commandCopy objectAtIndexedSubscript:index + 1];
  if (([v7 isEqualToString:@"-h"] & 1) != 0 || objc_msgSend(v7, "isEqualToString:", @"--help"))
  {
    usage2 = [(ADArgumentParserCommand *)self usage];
    puts([usage2 UTF8String]);
  }

  else
  {
    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    v14 = self->_subCommands;
    v15 = [(NSMutableArray *)v14 countByEnumeratingWithState:&v28 objects:v32 count:16];
    if (v15)
    {
      v16 = *v29;
LABEL_11:
      v17 = 0;
      while (1)
      {
        if (*v29 != v16)
        {
          objc_enumerationMutation(v14);
        }

        v18 = *(*(&v28 + 1) + 8 * v17);
        name = [v18 name];
        v20 = [name isEqualToString:v7];

        if (v20)
        {
          break;
        }

        if (v15 == ++v17)
        {
          v15 = [(NSMutableArray *)v14 countByEnumeratingWithState:&v28 objects:v32 count:16];
          if (v15)
          {
            goto LABEL_11;
          }

          goto LABEL_17;
        }
      }

      v9 = v18;

      if (!v9)
      {
        goto LABEL_22;
      }

      name2 = [v9 name];
      NSSelectorFromString(name2);
      v22 = objc_opt_respondsToSelector();

      if (v22)
      {
        name3 = [v9 name];
        [(ADArgumentParserCommand *)self setValue:v9 forKey:name3];
      }

      v10 = [v9 commandParse:commandCopy commandIndex:v6];
      goto LABEL_6;
    }

LABEL_17:

LABEL_22:
    v24 = v7;
    printf("unknown command %s\n", [v7 UTF8String]);
    usage3 = [(ADArgumentParserCommand *)self usage];
    v26 = usage3;
    puts([usage3 UTF8String]);
  }

  v9 = 0;
  v10 = 0;
LABEL_6:

LABEL_8:
  return v10;
}

- (BOOL)verifyCommandStructure
{
  v21 = *MEMORY[0x277D85DE8];
  if ([(NSMutableArray *)self->_subCommands count]&& (v3 = [(NSMutableArray *)self->_optionalArguments count], v3 + [(NSMutableArray *)self->_positionalArguments count]))
  {
    v13 = objc_opt_class();
    Name = class_getName(v13);
    printf("ADArgumentParser Error: a command %s cannot have both subcommands and positional/optional arguments\n", Name);
    LOBYTE(verifyArgumentsForClass) = 0;
  }

  else
  {
    verifyArgumentsForClass = [(ADArgumentParserCommand *)self verifyArgumentsForClass];
    if ((verifyArgumentsForClass & 1) == 0)
    {
      v5 = objc_opt_class();
      v6 = class_getName(v5);
      printf("ADArgumentParser Error: missmatch between declared arguments and class properties for command %s\n", v6);
    }

    if (![(ADArgumentParserCommand *)self verifyNoArgumentDuplications])
    {
      v7 = objc_opt_class();
      v8 = class_getName(v7);
      printf("ADArgumentParser Error: some arguemnts in command %s were added more than once\n", v8);
      verifyArgumentsForClass = 0;
    }

    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v9 = self->_subCommands;
    v10 = [(NSMutableArray *)v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v10)
    {
      v11 = *v17;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v17 != v11)
          {
            objc_enumerationMutation(v9);
          }

          verifyArgumentsForClass &= [*(*(&v16 + 1) + 8 * i) verifyCommandStructure];
        }

        v10 = [(NSMutableArray *)v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v10);
    }
  }

  return verifyArgumentsForClass;
}

- (BOOL)verifyNoArgumentDuplications
{
  v42 = *MEMORY[0x277D85DE8];
  v3 = objc_opt_new();
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v4 = self->_optionalArguments;
  v5 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v35 objects:v41 count:16];
  if (v5)
  {
    v6 = *v36;
    v7 = 1;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v36 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v35 + 1) + 8 * i);
        name = [v9 name];
        v11 = [(ADArgumentParserCommand *)self checkIfName:name notInList:v3];

        v7 &= v11;
        if ([v9 shortName])
        {
          v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"%c", objc_msgSend(v9, "shortName")];
          v13 = [(ADArgumentParserCommand *)self checkIfName:v12 notInList:v3];

          v7 &= v13;
        }
      }

      v5 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v35 objects:v41 count:16];
    }

    while (v5);
  }

  else
  {
    LOBYTE(v7) = 1;
  }

  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v14 = self->_positionalArguments;
  v15 = [(NSMutableArray *)v14 countByEnumeratingWithState:&v31 objects:v40 count:16];
  if (v15)
  {
    v16 = *v32;
    do
    {
      for (j = 0; j != v15; ++j)
      {
        if (*v32 != v16)
        {
          objc_enumerationMutation(v14);
        }

        name2 = [*(*(&v31 + 1) + 8 * j) name];
        v19 = [(ADArgumentParserCommand *)self checkIfName:name2 notInList:v3];

        LOBYTE(v7) = v7 & v19;
      }

      v15 = [(NSMutableArray *)v14 countByEnumeratingWithState:&v31 objects:v40 count:16];
    }

    while (v15);
  }

  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v20 = self->_subCommands;
  v21 = [(NSMutableArray *)v20 countByEnumeratingWithState:&v27 objects:v39 count:16];
  if (v21)
  {
    v22 = *v28;
    do
    {
      for (k = 0; k != v21; ++k)
      {
        if (*v28 != v22)
        {
          objc_enumerationMutation(v20);
        }

        name3 = [*(*(&v27 + 1) + 8 * k) name];
        v25 = [(ADArgumentParserCommand *)self checkIfName:name3 notInList:v3];

        LOBYTE(v7) = v7 & v25;
      }

      v21 = [(NSMutableArray *)v20 countByEnumeratingWithState:&v27 objects:v39 count:16];
    }

    while (v21);
  }

  return v7;
}

- (BOOL)verifyArgumentsForClass
{
  v41 = *MEMORY[0x277D85DE8];
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v3 = self->_optionalArguments;
  v4 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v34 objects:v40 count:16];
  if (v4)
  {
    v5 = *v35;
    v6 = 1;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v35 != v5)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v34 + 1) + 8 * i);
        name = [v8 name];
        LOBYTE(v8) = -[ADArgumentParserCommand verifySingleArgName:ofType:](self, "verifySingleArgName:ofType:", name, [v8 type]);

        v6 &= v8;
      }

      v4 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v34 objects:v40 count:16];
    }

    while (v4);
  }

  else
  {
    v6 = 1;
  }

  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v10 = self->_positionalArguments;
  v11 = [(NSMutableArray *)v10 countByEnumeratingWithState:&v30 objects:v39 count:16];
  if (v11)
  {
    v12 = *v31;
    do
    {
      for (j = 0; j != v11; ++j)
      {
        if (*v31 != v12)
        {
          objc_enumerationMutation(v10);
        }

        v14 = *(*(&v30 + 1) + 8 * j);
        name2 = [v14 name];
        LOBYTE(v14) = -[ADArgumentParserCommand verifySingleArgName:ofType:](self, "verifySingleArgName:ofType:", name2, [v14 type]);

        v6 &= v14;
      }

      v11 = [(NSMutableArray *)v10 countByEnumeratingWithState:&v30 objects:v39 count:16];
    }

    while (v11);
  }

  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v16 = self->_subCommands;
  v17 = [(NSMutableArray *)v16 countByEnumeratingWithState:&v26 objects:v38 count:16];
  if (v17)
  {
    v18 = *v27;
    do
    {
      for (k = 0; k != v17; ++k)
      {
        if (*v27 != v18)
        {
          objc_enumerationMutation(v16);
        }

        v20 = *(*(&v26 + 1) + 8 * k);
        handler = [v20 handler];
        v22 = handler == 0;

        if (v22)
        {
          name3 = [v20 name];
          v24 = [(ADArgumentParserCommand *)self verifySingleArgName:name3 ofType:8];

          v6 &= v24;
        }
      }

      v17 = [(NSMutableArray *)v16 countByEnumeratingWithState:&v26 objects:v38 count:16];
    }

    while (v17);
  }

  return v6 & 1;
}

- (BOOL)verifySingleArgName:(id)name ofType:(unint64_t)type
{
  nameCopy = name;
  v6 = objc_opt_class();
  Property = class_getProperty(v6, [nameCopy UTF8String]);
  v8 = Property;
  if (!Property)
  {
    [nameCopy UTF8String];
    printf("ADArgumentParser Error: argument name %s does not match any declared class property\n");
    goto LABEL_6;
  }

  if (type != 8)
  {
    v11 = propertyOptionType(Property);
    if (v11 != type)
    {
      if ((v11 & 0xD) != 0)
      {
        if ((v11 - 5) > 2 || type - 5 >= 3)
        {
          goto LABEL_4;
        }
      }

      else if ((type & 0xFFFFFFFFFFFFFFFDLL) != 0)
      {
        goto LABEL_4;
      }
    }

LABEL_13:
    v10 = 1;
    goto LABEL_14;
  }

  v9 = objc_opt_class();
  if (isPropertyDerivedFromClass(v8, v9))
  {
    goto LABEL_13;
  }

LABEL_4:
  [nameCopy UTF8String];
  printf("ADArgumentParser Error: argument name %s declared type does not match property type\n");
LABEL_6:
  v10 = 0;
LABEL_14:

  return v10;
}

- (BOOL)checkIfName:(id)name notInList:(id)list
{
  nameCopy = name;
  listCopy = list;
  v7 = [listCopy containsObject:nameCopy];
  if (v7)
  {
    printf("ADArgumentParser Error: argument name %s added more than once. unable to resolve\n", [nameCopy UTF8String]);
  }

  else
  {
    [listCopy addObject:nameCopy];
  }

  return v7 ^ 1;
}

- (id)usage
{
  if ([(NSMutableArray *)self->_optionalArguments count]|| [(NSMutableArray *)self->_positionalArguments count])
  {
    v3 = [(ADArgumentParserCommand *)self fullUsageWithPrefix:self->_preParsedPrefix];
  }

  else
  {
    v3 = [(ADArgumentParserCommand *)self subCommandsUsageWithPrefix:self->_preParsedPrefix];
  }

  return v3;
}

- (id)fullUsageWithPrefix:(id)prefix
{
  v30 = *MEMORY[0x277D85DE8];
  prefixCopy = prefix;
  string = [MEMORY[0x277CCAB68] string];
  [string appendFormat:@"%@: %@\n", self->_name, self->_descriptionString];
  [string appendString:@"Usage:\n"];
  v6 = [(ADArgumentParserCommand *)self shortUsageWithPrefix:prefixCopy];
  [string appendFormat:@"\t%@\n", v6];

  optionalArguments = self->_optionalArguments;
  if (optionalArguments && [(NSMutableArray *)optionalArguments count])
  {
    [string appendString:@"Options:\n"];
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v8 = self->_optionalArguments;
    v9 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v24 objects:v29 count:16];
    if (v9)
    {
      v10 = *v25;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v25 != v10)
          {
            objc_enumerationMutation(v8);
          }

          fullUsage = [*(*(&v24 + 1) + 8 * i) fullUsage];
          [string appendFormat:@"\t%@\n", fullUsage];
        }

        v9 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v24 objects:v29 count:16];
      }

      while (v9);
    }
  }

  positionalArguments = self->_positionalArguments;
  if (positionalArguments && [(NSMutableArray *)positionalArguments count])
  {
    [string appendString:@"Positional Arguments:\n"];
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v14 = self->_positionalArguments;
    v15 = [(NSMutableArray *)v14 countByEnumeratingWithState:&v20 objects:v28 count:16];
    if (v15)
    {
      v16 = *v21;
      do
      {
        for (j = 0; j != v15; ++j)
        {
          if (*v21 != v16)
          {
            objc_enumerationMutation(v14);
          }

          fullUsage2 = [*(*(&v20 + 1) + 8 * j) fullUsage];
          [string appendFormat:@"\t%@\n", fullUsage2];
        }

        v15 = [(NSMutableArray *)v14 countByEnumeratingWithState:&v20 objects:v28 count:16];
      }

      while (v15);
    }
  }

  return string;
}

- (id)shortUsageWithPrefix:(id)prefix
{
  v36 = *MEMORY[0x277D85DE8];
  prefix = [MEMORY[0x277CCAB68] stringWithFormat:@"%@ ", prefix];
  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v5 = self->_positionalArguments;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v29 objects:v35 count:16];
  if (v6)
  {
    v7 = *v30;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v30 != v7)
        {
          objc_enumerationMutation(v5);
        }

        shortUsage = [*(*(&v29 + 1) + 8 * i) shortUsage];
        [prefix appendFormat:@"%@ ", shortUsage];
      }

      v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v29 objects:v35 count:16];
    }

    while (v6);
  }

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v10 = self->_optionalArguments;
  v11 = [(NSMutableArray *)v10 countByEnumeratingWithState:&v25 objects:v34 count:16];
  if (v11)
  {
    v12 = *v26;
    do
    {
      for (j = 0; j != v11; ++j)
      {
        if (*v26 != v12)
        {
          objc_enumerationMutation(v10);
        }

        shortUsage2 = [*(*(&v25 + 1) + 8 * j) shortUsage];
        [prefix appendFormat:@"%@ ", shortUsage2];
      }

      v11 = [(NSMutableArray *)v10 countByEnumeratingWithState:&v25 objects:v34 count:16];
    }

    while (v11);
  }

  if ([(NSMutableArray *)self->_subCommands count])
  {
    objc_msgSend(prefix, "appendString:", @" (");
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v15 = self->_subCommands;
    v16 = [(NSMutableArray *)v15 countByEnumeratingWithState:&v21 objects:v33 count:16];
    if (v16)
    {
      v17 = *v22;
      do
      {
        for (k = 0; k != v16; ++k)
        {
          if (*v22 != v17)
          {
            objc_enumerationMutation(v15);
          }

          name = [*(*(&v21 + 1) + 8 * k) name];
          [prefix appendFormat:@"%@|", name];
        }

        v16 = [(NSMutableArray *)v15 countByEnumeratingWithState:&v21 objects:v33 count:16];
      }

      while (v16);
    }

    [prefix deleteCharactersInRange:{objc_msgSend(prefix, "length") - 1, 1}];
    [prefix appendString:@""]);
  }

  return prefix;
}

- (id)subCommandsUsageWithPrefix:(id)prefix
{
  v34 = *MEMORY[0x277D85DE8];
  prefixCopy = prefix;
  string = [MEMORY[0x277CCAB68] string];
  [string appendFormat:@"%@: %@\n", self->_name, self->_descriptionString];
  [string appendString:@"Usage:\n"];
  if ([(NSMutableArray *)self->_subCommands count])
  {
    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    obj = self->_subCommands;
    v5 = [(NSMutableArray *)obj countByEnumeratingWithState:&v28 objects:v33 count:16];
    if (v5)
    {
      v6 = *v29;
      do
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v29 != v6)
          {
            objc_enumerationMutation(obj);
          }

          v8 = *(*(&v28 + 1) + 8 * i);
          v9 = MEMORY[0x277CCACA8];
          name = [v8 name];
          v11 = [v9 stringWithFormat:@"%@ %@", prefixCopy, name];
          v12 = [v8 shortUsageWithPrefix:v11];
          [string appendFormat:@"\t%@\n", v12];
        }

        v5 = [(NSMutableArray *)obj countByEnumeratingWithState:&v28 objects:v33 count:16];
      }

      while (v5);
    }

    [string appendString:@"Commands:\n"];
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v13 = self->_subCommands;
    v14 = [(NSMutableArray *)v13 countByEnumeratingWithState:&v24 objects:v32 count:16];
    if (v14)
    {
      v15 = *v25;
      do
      {
        for (j = 0; j != v14; ++j)
        {
          if (*v25 != v15)
          {
            objc_enumerationMutation(v13);
          }

          v17 = *(*(&v24 + 1) + 8 * j);
          name2 = [v17 name];
          v19 = [name2 mutableCopy];

          [v19 rightPaddToLength:45];
          descriptionString = [v17 descriptionString];
          [string appendFormat:@"\t%@%@\n", v19, descriptionString];
        }

        v14 = [(NSMutableArray *)v13 countByEnumeratingWithState:&v24 objects:v32 count:16];
      }

      while (v14);
    }
  }

  return string;
}

- (void)addSubCommand:(id)command withName:(id)name description:(id)description handler:(id)handler
{
  commandCopy = command;
  nameCopy = name;
  descriptionCopy = description;
  handlerCopy = handler;
  [(NSMutableArray *)self->_subCommands addObject:commandCopy];
  [commandCopy setName:nameCopy];
  [commandCopy setDescriptionString:descriptionCopy];
  [commandCopy setHandler:handlerCopy];
}

- (void)addSubCommand:(id)command withName:(SEL)name description:(id)description
{
  commandCopy = command;
  descriptionCopy = description;
  [(NSMutableArray *)self->_subCommands addObject:commandCopy];
  v9 = NSStringFromSelector(name);
  [commandCopy setName:v9];

  [commandCopy setDescriptionString:descriptionCopy];
}

- (ADArgumentParserCommand)init
{
  v14.receiver = self;
  v14.super_class = ADArgumentParserCommand;
  v2 = [(ADArgumentParserCommand *)&v14 init];
  v3 = v2;
  if (v2)
  {
    name = v2->_name;
    v2->_name = 0;

    descriptionString = v3->_descriptionString;
    v3->_descriptionString = 0;

    handler = v3->_handler;
    v3->_handler = 0;

    array = [MEMORY[0x277CBEB18] array];
    positionalArguments = v3->_positionalArguments;
    v3->_positionalArguments = array;

    array2 = [MEMORY[0x277CBEB18] array];
    optionalArguments = v3->_optionalArguments;
    v3->_optionalArguments = array2;

    array3 = [MEMORY[0x277CBEB18] array];
    subCommands = v3->_subCommands;
    v3->_subCommands = array3;
  }

  return v3;
}

@end