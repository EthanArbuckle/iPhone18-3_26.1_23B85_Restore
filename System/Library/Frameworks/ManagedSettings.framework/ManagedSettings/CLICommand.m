@interface CLICommand
- (BOOL)isEqual:(id)a3;
- (BOOL)runWithOptions:(id)a3;
- (BOOL)startRunLoop;
- (NSString)name;
- (id)description;
- (id)nameSummaryString;
- (unint64_t)hash;
- (void)register;
@end

@implementation CLICommand

- (id)description
{
  v3 = [(CLICommand *)self name];
  v4 = [(CLICommand *)self aliases];
  v5 = [(CLICommand *)self options];
  v6 = [v5 count];
  v7 = [(CLICommand *)self shortEnglishDescription];
  v8 = [(CLICommand *)self longEnglishDescription];
  v9 = [(CLICommand *)self usageLine];
  v10 = [NSString stringWithFormat:@"<Command '%@'>\nAliases: %@\n# Options: %lu\nDescriptions:\nShort: %@\nLong: %@\nUsage: %@>", v3, v4, v6, v7, v8, v9];

  return v10;
}

- (BOOL)runWithOptions:(id)a3
{
  v4 = a3;
  p_executionBlock = &self->_executionBlock;
  executionBlock = self->_executionBlock;
  if (!executionBlock)
  {
    sub_100007134();
    executionBlock = v9;
  }

  v7 = executionBlock[2](executionBlock, v4, p_executionBlock);

  return v7;
}

- (NSString)name
{
  name = self->_name;
  if (name)
  {
  }

  else
  {
    sub_1000071A4();
    name = v5;
  }

  return name;
}

- (id)nameSummaryString
{
  v3 = [(CLICommand *)self name];
  v4 = [NSMutableArray arrayWithObject:v3];

  v5 = [(CLICommand *)self aliases];
  if (v5)
  {
    [v4 addObjectsFromArray:v5];
  }

  [v4 sortUsingSelector:"compare:"];
  v6 = [v4 componentsJoinedByString:@" | "];

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [(CLICommand *)self name];
    v7 = [v5 name];

    v8 = [v6 isEqualToString:v7];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (unint64_t)hash
{
  v2 = [(CLICommand *)self name];
  v3 = [v2 hash];

  return v3;
}

- (BOOL)startRunLoop
{
  v2 = +[CLIProgram sharedProgram];
  v3 = [v2 startRunLoop];

  return v3;
}

- (void)register
{
  if (qword_1000115E0 != -1)
  {
    sub_100007400();
  }

  if ([qword_1000115C8 containsObject:self])
  {
    v3 = objc_opt_class();
    v14 = [(CLICommand *)self name];
    NSLog(@"Command %@ (%@) was already registered. Most likely the 'enabled' class property was YES and the command was also manually registered.", v3, v14);
  }

  else
  {
    [qword_1000115C8 addObject:self];
    v4 = [(CLICommand *)self options];
    if (v4)
    {
      v5 = qword_1000115D0;
      v6 = [[CLIOptionSet alloc] initWithOptions:v4];
      [v5 setObject:v6 forKey:self];
    }

    v7 = [(CLICommand *)self name];
    v8 = [qword_1000115C0 objectForKeyedSubscript:v7];

    if (v8)
    {
      sub_10000766C();
    }

    [qword_1000115C0 setObject:self forKeyedSubscript:v7];
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v9 = [(CLICommand *)self aliases];
    v10 = [v9 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v16;
      do
      {
        for (i = 0; i != v11; i = i + 1)
        {
          if (*v16 != v12)
          {
            objc_enumerationMutation(v9);
          }

          [qword_1000115C0 setObject:self forKeyedSubscript:*(*(&v15 + 1) + 8 * i)];
        }

        v11 = [v9 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v11);
    }
  }
}

@end