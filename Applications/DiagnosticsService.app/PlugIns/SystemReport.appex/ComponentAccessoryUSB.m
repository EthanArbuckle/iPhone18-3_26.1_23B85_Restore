@interface ComponentAccessoryUSB
- (BOOL)isPresent;
- (void)populateAttributes:(id)a3;
@end

@implementation ComponentAccessoryUSB

- (BOOL)isPresent
{
  v2 = +[EAAccessoryManager sharedAccessoryManager];
  v3 = [v2 connectedAccessories];
  v4 = [v3 count] != 0;

  return v4;
}

- (void)populateAttributes:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(NSMutableArray);
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = +[EAAccessoryManager sharedAccessoryManager];
  v6 = [v5 connectedAccessories];

  v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v14 + 1) + 8 * i);
        v12 = [v11 modelNumber];

        if (v12)
        {
          v13 = [v11 modelNumber];
          [v4 addObject:v13];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

  if ([v4 count])
  {
    [v3 setObject:v4 forKeyedSubscript:@"USBModelNumbers"];
  }
}

@end