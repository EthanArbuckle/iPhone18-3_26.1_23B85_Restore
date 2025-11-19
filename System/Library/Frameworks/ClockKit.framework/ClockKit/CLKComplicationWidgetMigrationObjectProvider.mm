@interface CLKComplicationWidgetMigrationObjectProvider
- (CLKComplicationWidgetMigrationObjectProvider)init;
- (id)itemForAppIdentifier:(id)a3 key:(id)a4;
- (void)enumerateAppIdentifiersWithBlock:(id)a3;
- (void)enumerateItemsForAppIdentifier:(id)a3 withBlock:(id)a4;
- (void)setItem:(id)a3 forAppIdentifier:(id)a4 key:(id)a5;
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

- (id)itemForAppIdentifier:(id)a3 key:(id)a4
{
  itemsByAppIdentifier = self->_itemsByAppIdentifier;
  v6 = a4;
  v7 = [(NSMutableDictionary *)itemsByAppIdentifier objectForKey:a3];
  v8 = [v7 objectForKey:v6];

  return v8;
}

- (void)enumerateAppIdentifiersWithBlock:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v14 = 0;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = [(NSMutableDictionary *)self->_itemsByAppIdentifier keyEnumerator];
  v6 = [v5 countByEnumeratingWithState:&v10 objects:v15 count:16];
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
        objc_enumerationMutation(v5);
      }

      v4[2](v4, *(*(&v10 + 1) + 8 * v9), &v14);
      if (v14)
      {
        break;
      }

      if (v7 == ++v9)
      {
        v7 = [v5 countByEnumeratingWithState:&v10 objects:v15 count:16];
        if (v7)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }
}

- (void)enumerateItemsForAppIdentifier:(id)a3 withBlock:(id)a4
{
  v20 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = [(NSMutableDictionary *)self->_itemsByAppIdentifier objectForKey:a3];
  v8 = v7;
  if (v7)
  {
    v18 = 0;
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v9 = [v7 objectEnumerator];
    v10 = [v9 countByEnumeratingWithState:&v14 objects:v19 count:16];
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
          objc_enumerationMutation(v9);
        }

        v6[2](v6, *(*(&v14 + 1) + 8 * v13), &v18);
        if (v18)
        {
          break;
        }

        if (v11 == ++v13)
        {
          v11 = [v9 countByEnumeratingWithState:&v14 objects:v19 count:16];
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

- (void)setItem:(id)a3 forAppIdentifier:(id)a4 key:(id)a5
{
  v11 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [(NSMutableDictionary *)self->_itemsByAppIdentifier objectForKey:v8];
  if (!v10)
  {
    v10 = objc_opt_new();
    [(NSMutableDictionary *)self->_itemsByAppIdentifier setObject:v10 forKey:v8];
  }

  [v10 setObject:v11 forKey:v9];
}

@end