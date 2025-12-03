@interface ComponentAccessoryUSB
- (BOOL)isPresent;
- (void)populateAttributes:(id)attributes;
@end

@implementation ComponentAccessoryUSB

- (BOOL)isPresent
{
  v2 = +[EAAccessoryManager sharedAccessoryManager];
  connectedAccessories = [v2 connectedAccessories];
  v4 = [connectedAccessories count] != 0;

  return v4;
}

- (void)populateAttributes:(id)attributes
{
  attributesCopy = attributes;
  v4 = objc_alloc_init(NSMutableArray);
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = +[EAAccessoryManager sharedAccessoryManager];
  connectedAccessories = [v5 connectedAccessories];

  v7 = [connectedAccessories countByEnumeratingWithState:&v14 objects:v18 count:16];
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
          objc_enumerationMutation(connectedAccessories);
        }

        v11 = *(*(&v14 + 1) + 8 * i);
        modelNumber = [v11 modelNumber];

        if (modelNumber)
        {
          modelNumber2 = [v11 modelNumber];
          [v4 addObject:modelNumber2];
        }
      }

      v8 = [connectedAccessories countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

  if ([v4 count])
  {
    [attributesCopy setObject:v4 forKeyedSubscript:@"USBModelNumbers"];
  }
}

@end