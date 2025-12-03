@interface SAUIDisambiguationList
- (id)_systemPlugin_failureCommandsForCode:(int64_t)code;
@end

@implementation SAUIDisambiguationList

- (id)_systemPlugin_failureCommandsForCode:(int64_t)code
{
  v5 = objc_alloc_init(NSMutableArray);
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  fallbackCommands = [(SAUIDisambiguationList *)self fallbackCommands];
  v7 = [fallbackCommands countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v17;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v17 != v9)
        {
          objc_enumerationMutation(fallbackCommands);
        }

        v11 = *(*(&v16 + 1) + 8 * i);
        if ([v11 code] == code)
        {
          commands = [v11 commands];
          if (commands)
          {
            [v5 addObjectsFromArray:commands];
          }
        }
      }

      v8 = [fallbackCommands countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v8);
  }

  if ([v5 count])
  {
    v13 = v5;
  }

  else
  {
    v13 = 0;
  }

  v14 = v13;

  return v13;
}

@end