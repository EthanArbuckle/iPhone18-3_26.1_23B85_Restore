@interface ADArgumentParserCommand
- (ADArgumentParserCommand)init;
- (BOOL)checkIfName:(id)a3 notInList:(id)a4;
- (BOOL)commandParse:(id)a3 commandIndex:(unsigned int)a4;
- (BOOL)parseSubCommand:(id)a3 commandIndex:(unsigned int)a4;
- (BOOL)parseUsingDocopt:(id)a3;
- (BOOL)verifyArgumentsForClass;
- (BOOL)verifyCommandStructure;
- (BOOL)verifyNoArgumentDuplications;
- (BOOL)verifySingleArgName:(id)a3 ofType:(unint64_t)a4;
- (id)fullUsageWithPrefix:(id)a3;
- (id)shortUsageWithPrefix:(id)a3;
- (id)subCommandsUsageWithPrefix:(id)a3;
- (id)usage;
- (void)addSubCommand:(id)a3 withName:(SEL)a4 description:(id)a5;
- (void)addSubCommand:(id)a3 withName:(id)a4 description:(id)a5 handler:(id)a6;
@end

@implementation ADArgumentParserCommand

- (BOOL)commandParse:(id)a3 commandIndex:(unsigned int)a4
{
  v4 = *&a4;
  v26 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = [v6 objectAtIndexedSubscript:0];
  v8 = [v7 lastPathComponent];
  programName = self->_programName;
  self->_programName = v8;

  objc_storeStrong(&self->_preParsedPrefix, self->_programName);
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v10 = [v6 subarrayWithRange:{1, v4}];
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
      if (![(ADArgumentParserCommand *)self parseUsingDocopt:v6])
      {
        goto LABEL_18;
      }
    }

    else if ([v6 count] > (v4 + 1))
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
    v18 = [(ADArgumentParserCommand *)self usage];
    v19 = v18;
    puts([v18 UTF8String]);

    v17 = 0;
    goto LABEL_19;
  }

  v16 = [(ADArgumentParserCommand *)self parseSubCommand:v6 commandIndex:v4];
LABEL_10:
  v17 = v16;
LABEL_19:

  return v17;
}

- (BOOL)parseUsingDocopt:(id)a3
{
  v7[40] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v7[0] = 0;
  v7[1] = 0;
  v6 = v7;
  [(ADArgumentParserCommand *)self usage];
  objc_claimAutoreleasedReturnValue();
  [v4 count];
  operator new[]();
}

- (BOOL)parseSubCommand:(id)a3 commandIndex:(unsigned int)a4
{
  v33 = *MEMORY[0x277D85DE8];
  v27 = a3;
  v6 = a4 + 1;
  if ([v27 count] <= v6)
  {
    v11 = [v27 lastObject];
    printf("ADArgumentParser Error: expecting subcommand after %s\n", [v11 UTF8String]);

    v12 = [(ADArgumentParserCommand *)self usage];
    puts([v12 UTF8String]);

    v10 = 0;
    goto LABEL_8;
  }

  v7 = [v27 objectAtIndexedSubscript:a4 + 1];
  if (([v7 isEqualToString:@"-h"] & 1) != 0 || objc_msgSend(v7, "isEqualToString:", @"--help"))
  {
    v8 = [(ADArgumentParserCommand *)self usage];
    puts([v8 UTF8String]);
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
        v19 = [v18 name];
        v20 = [v19 isEqualToString:v7];

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

      v21 = [v9 name];
      NSSelectorFromString(v21);
      v22 = objc_opt_respondsToSelector();

      if (v22)
      {
        v23 = [v9 name];
        [(ADArgumentParserCommand *)self setValue:v9 forKey:v23];
      }

      v10 = [v9 commandParse:v27 commandIndex:v6];
      goto LABEL_6;
    }

LABEL_17:

LABEL_22:
    v24 = v7;
    printf("unknown command %s\n", [v7 UTF8String]);
    v25 = [(ADArgumentParserCommand *)self usage];
    v26 = v25;
    puts([v25 UTF8String]);
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
    LOBYTE(v4) = 0;
  }

  else
  {
    v4 = [(ADArgumentParserCommand *)self verifyArgumentsForClass];
    if ((v4 & 1) == 0)
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
      v4 = 0;
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

          v4 &= [*(*(&v16 + 1) + 8 * i) verifyCommandStructure];
        }

        v10 = [(NSMutableArray *)v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v10);
    }
  }

  return v4;
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
        v10 = [v9 name];
        v11 = [(ADArgumentParserCommand *)self checkIfName:v10 notInList:v3];

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

        v18 = [*(*(&v31 + 1) + 8 * j) name];
        v19 = [(ADArgumentParserCommand *)self checkIfName:v18 notInList:v3];

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

        v24 = [*(*(&v27 + 1) + 8 * k) name];
        v25 = [(ADArgumentParserCommand *)self checkIfName:v24 notInList:v3];

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
        v9 = [v8 name];
        LOBYTE(v8) = -[ADArgumentParserCommand verifySingleArgName:ofType:](self, "verifySingleArgName:ofType:", v9, [v8 type]);

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
        v15 = [v14 name];
        LOBYTE(v14) = -[ADArgumentParserCommand verifySingleArgName:ofType:](self, "verifySingleArgName:ofType:", v15, [v14 type]);

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
        v21 = [v20 handler];
        v22 = v21 == 0;

        if (v22)
        {
          v23 = [v20 name];
          v24 = [(ADArgumentParserCommand *)self verifySingleArgName:v23 ofType:8];

          v6 &= v24;
        }
      }

      v17 = [(NSMutableArray *)v16 countByEnumeratingWithState:&v26 objects:v38 count:16];
    }

    while (v17);
  }

  return v6 & 1;
}

- (BOOL)verifySingleArgName:(id)a3 ofType:(unint64_t)a4
{
  v5 = a3;
  v6 = objc_opt_class();
  Property = class_getProperty(v6, [v5 UTF8String]);
  v8 = Property;
  if (!Property)
  {
    [v5 UTF8String];
    printf("ADArgumentParser Error: argument name %s does not match any declared class property\n");
    goto LABEL_6;
  }

  if (a4 != 8)
  {
    v11 = propertyOptionType(Property);
    if (v11 != a4)
    {
      if ((v11 & 0xD) != 0)
      {
        if ((v11 - 5) > 2 || a4 - 5 >= 3)
        {
          goto LABEL_4;
        }
      }

      else if ((a4 & 0xFFFFFFFFFFFFFFFDLL) != 0)
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
  [v5 UTF8String];
  printf("ADArgumentParser Error: argument name %s declared type does not match property type\n");
LABEL_6:
  v10 = 0;
LABEL_14:

  return v10;
}

- (BOOL)checkIfName:(id)a3 notInList:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v6 containsObject:v5];
  if (v7)
  {
    printf("ADArgumentParser Error: argument name %s added more than once. unable to resolve\n", [v5 UTF8String]);
  }

  else
  {
    [v6 addObject:v5];
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

- (id)fullUsageWithPrefix:(id)a3
{
  v30 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [MEMORY[0x277CCAB68] string];
  [v5 appendFormat:@"%@: %@\n", self->_name, self->_descriptionString];
  [v5 appendString:@"Usage:\n"];
  v6 = [(ADArgumentParserCommand *)self shortUsageWithPrefix:v4];
  [v5 appendFormat:@"\t%@\n", v6];

  optionalArguments = self->_optionalArguments;
  if (optionalArguments && [(NSMutableArray *)optionalArguments count])
  {
    [v5 appendString:@"Options:\n"];
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

          v12 = [*(*(&v24 + 1) + 8 * i) fullUsage];
          [v5 appendFormat:@"\t%@\n", v12];
        }

        v9 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v24 objects:v29 count:16];
      }

      while (v9);
    }
  }

  positionalArguments = self->_positionalArguments;
  if (positionalArguments && [(NSMutableArray *)positionalArguments count])
  {
    [v5 appendString:@"Positional Arguments:\n"];
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

          v18 = [*(*(&v20 + 1) + 8 * j) fullUsage];
          [v5 appendFormat:@"\t%@\n", v18];
        }

        v15 = [(NSMutableArray *)v14 countByEnumeratingWithState:&v20 objects:v28 count:16];
      }

      while (v15);
    }
  }

  return v5;
}

- (id)shortUsageWithPrefix:(id)a3
{
  v36 = *MEMORY[0x277D85DE8];
  v4 = [MEMORY[0x277CCAB68] stringWithFormat:@"%@ ", a3];
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

        v9 = [*(*(&v29 + 1) + 8 * i) shortUsage];
        [v4 appendFormat:@"%@ ", v9];
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

        v14 = [*(*(&v25 + 1) + 8 * j) shortUsage];
        [v4 appendFormat:@"%@ ", v14];
      }

      v11 = [(NSMutableArray *)v10 countByEnumeratingWithState:&v25 objects:v34 count:16];
    }

    while (v11);
  }

  if ([(NSMutableArray *)self->_subCommands count])
  {
    objc_msgSend(v4, "appendString:", @" (");
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

          v19 = [*(*(&v21 + 1) + 8 * k) name];
          [v4 appendFormat:@"%@|", v19];
        }

        v16 = [(NSMutableArray *)v15 countByEnumeratingWithState:&v21 objects:v33 count:16];
      }

      while (v16);
    }

    [v4 deleteCharactersInRange:{objc_msgSend(v4, "length") - 1, 1}];
    [v4 appendString:@""]);
  }

  return v4;
}

- (id)subCommandsUsageWithPrefix:(id)a3
{
  v34 = *MEMORY[0x277D85DE8];
  v23 = a3;
  v4 = [MEMORY[0x277CCAB68] string];
  [v4 appendFormat:@"%@: %@\n", self->_name, self->_descriptionString];
  [v4 appendString:@"Usage:\n"];
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
          v10 = [v8 name];
          v11 = [v9 stringWithFormat:@"%@ %@", v23, v10];
          v12 = [v8 shortUsageWithPrefix:v11];
          [v4 appendFormat:@"\t%@\n", v12];
        }

        v5 = [(NSMutableArray *)obj countByEnumeratingWithState:&v28 objects:v33 count:16];
      }

      while (v5);
    }

    [v4 appendString:@"Commands:\n"];
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
          v18 = [v17 name];
          v19 = [v18 mutableCopy];

          [v19 rightPaddToLength:45];
          v20 = [v17 descriptionString];
          [v4 appendFormat:@"\t%@%@\n", v19, v20];
        }

        v14 = [(NSMutableArray *)v13 countByEnumeratingWithState:&v24 objects:v32 count:16];
      }

      while (v14);
    }
  }

  return v4;
}

- (void)addSubCommand:(id)a3 withName:(id)a4 description:(id)a5 handler:(id)a6
{
  v13 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  [(NSMutableArray *)self->_subCommands addObject:v13];
  [v13 setName:v10];
  [v13 setDescriptionString:v11];
  [v13 setHandler:v12];
}

- (void)addSubCommand:(id)a3 withName:(SEL)a4 description:(id)a5
{
  v10 = a3;
  v8 = a5;
  [(NSMutableArray *)self->_subCommands addObject:v10];
  v9 = NSStringFromSelector(a4);
  [v10 setName:v9];

  [v10 setDescriptionString:v8];
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

    v7 = [MEMORY[0x277CBEB18] array];
    positionalArguments = v3->_positionalArguments;
    v3->_positionalArguments = v7;

    v9 = [MEMORY[0x277CBEB18] array];
    optionalArguments = v3->_optionalArguments;
    v3->_optionalArguments = v9;

    v11 = [MEMORY[0x277CBEB18] array];
    subCommands = v3->_subCommands;
    v3->_subCommands = v11;
  }

  return v3;
}

@end