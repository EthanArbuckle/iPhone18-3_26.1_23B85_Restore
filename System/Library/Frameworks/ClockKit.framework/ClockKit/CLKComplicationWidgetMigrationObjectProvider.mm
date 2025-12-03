@interface CLKComplicationWidgetMigrationObjectProvider
- (CLKComplicationWidgetMigrationObjectProvider)init;
- (id)itemForAppIdentifier:(id)identifier key:(id)key;
- (void)enumerateAppIdentifiersWithBlock:(id)block;
- (void)enumerateItemsForAppIdentifier:(id)identifier withBlock:(id)block;
- (void)setItem:(id)item forAppIdentifier:(id)identifier key:(id)key;
@end

@implementation CLKComplicationWidgetMigrationObjectProvider

- (CLKComplicationWidgetMigrationObjectProvider)init
{
  v6.receiver = self;
  v6.super_class = CLKComplicationWidgetMigrationObjectProvider;
  v2 = [(CLKComplicationWidgetMigrationObjectProvider *)&v6 init];
  if (v2)
  {
    v3 = objc_opt_new();
    itemsByAppIdentifier = v2->_itemsByAppIdentifier;
    v2->_itemsByAppIdentifier = v3;
  }

  return v2;
}

- (id)itemForAppIdentifier:(id)identifier key:(id)key
{
  itemsByAppIdentifier = self->_itemsByAppIdentifier;
  keyCopy = key;
  v7 = [(NSMutableDictionary *)itemsByAppIdentifier objectForKey:identifier];
  v8 = [v7 objectForKey:keyCopy];

  return v8;
}

- (void)enumerateAppIdentifiersWithBlock:(id)block
{
  v16 = *MEMORY[0x277D85DE8];
  blockCopy = block;
  v14 = 0;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  keyEnumerator = [(NSMutableDictionary *)self->_itemsByAppIdentifier keyEnumerator];
  v6 = [keyEnumerator countByEnumeratingWithState:&v10 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v11;
LABEL_3:
    v9 = 0;
    while (1)
    {
      if (*v11 != v8)
      {
        objc_enumerationMutation(keyEnumerator);
      }

      blockCopy[2](blockCopy, *(*(&v10 + 1) + 8 * v9), &v14);
      if (v14)
      {
        break;
      }

      if (v7 == ++v9)
      {
        v7 = [keyEnumerator countByEnumeratingWithState:&v10 objects:v15 count:16];
        if (v7)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }
}

- (void)enumerateItemsForAppIdentifier:(id)identifier withBlock:(id)block
{
  v20 = *MEMORY[0x277D85DE8];
  blockCopy = block;
  v7 = [(NSMutableDictionary *)self->_itemsByAppIdentifier objectForKey:identifier];
  v8 = v7;
  if (v7)
  {
    v18 = 0;
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    objectEnumerator = [v7 objectEnumerator];
    v10 = [objectEnumerator countByEnumeratingWithState:&v14 objects:v19 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v15;
LABEL_4:
      v13 = 0;
      while (1)
      {
        if (*v15 != v12)
        {
          objc_enumerationMutation(objectEnumerator);
        }

        blockCopy[2](blockCopy, *(*(&v14 + 1) + 8 * v13), &v18);
        if (v18)
        {
          break;
        }

        if (v11 == ++v13)
        {
          v11 = [objectEnumerator countByEnumeratingWithState:&v14 objects:v19 count:16];
          if (v11)
          {
            goto LABEL_4;
          }

          break;
        }
      }
    }
  }
}

- (void)setItem:(id)item forAppIdentifier:(id)identifier key:(id)key
{
  itemCopy = item;
  identifierCopy = identifier;
  keyCopy = key;
  v10 = [(NSMutableDictionary *)self->_itemsByAppIdentifier objectForKey:identifierCopy];
  if (!v10)
  {
    v10 = objc_opt_new();
    [(NSMutableDictionary *)self->_itemsByAppIdentifier setObject:v10 forKey:identifierCopy];
  }

  [v10 setObject:itemCopy forKey:keyCopy];
}

@end