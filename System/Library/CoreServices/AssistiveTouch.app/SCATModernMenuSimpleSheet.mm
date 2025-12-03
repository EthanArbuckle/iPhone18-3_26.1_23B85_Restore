@interface SCATModernMenuSimpleSheet
- (SCATModernMenuSimpleSheet)initWithMenu:(id)menu menuItemDictionaryArray:(id)array;
- (SCATModernMenuSimpleSheet)initWithMenu:(id)menu menuItems:(id)items;
@end

@implementation SCATModernMenuSimpleSheet

- (SCATModernMenuSimpleSheet)initWithMenu:(id)menu menuItemDictionaryArray:(id)array
{
  arrayCopy = array;
  v28.receiver = self;
  v28.super_class = SCATModernMenuSimpleSheet;
  v7 = [(SCATModernMenuSheet *)&v28 initWithMenu:menu];
  if (v7)
  {
    +[NSMutableArray array];
    v23 = v22 = arrayCopy;
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v8 = arrayCopy;
    v9 = [v8 countByEnumeratingWithState:&v24 objects:v29 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v25;
      v12 = AXSSwitchControlMenuItemEnabledKey;
      v13 = AXSSwitchControlMenuItemTypeKey;
      do
      {
        for (i = 0; i != v10; i = i + 1)
        {
          if (*v25 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v15 = *(*(&v24 + 1) + 8 * i);
          v16 = [v15 objectForKeyedSubscript:{v12, v22}];
          bOOLValue = [v16 BOOLValue];

          if (bOOLValue)
          {
            v18 = [v15 objectForKeyedSubscript:v13];
            menu = [(SCATModernMenuSheet *)v7 menu];
            v20 = [SCATMenuItemFactory menuItemsForItem:v18 menu:menu delegate:v7];
            [v23 addObjectsFromArray:v20];
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v24 objects:v29 count:16];
      }

      while (v10);
    }

    [(SCATModernMenuSimpleSheet *)v7 setStoredMenuItems:v23];
    arrayCopy = v22;
  }

  return v7;
}

- (SCATModernMenuSimpleSheet)initWithMenu:(id)menu menuItems:(id)items
{
  itemsCopy = items;
  v10.receiver = self;
  v10.super_class = SCATModernMenuSimpleSheet;
  v7 = [(SCATModernMenuSheet *)&v10 initWithMenu:menu];
  v8 = v7;
  if (v7)
  {
    [(SCATModernMenuSimpleSheet *)v7 setStoredMenuItems:itemsCopy];
  }

  return v8;
}

@end