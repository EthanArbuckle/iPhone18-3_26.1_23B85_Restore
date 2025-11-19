@interface SCATModernMenuSimpleSheet
- (SCATModernMenuSimpleSheet)initWithMenu:(id)a3 menuItemDictionaryArray:(id)a4;
- (SCATModernMenuSimpleSheet)initWithMenu:(id)a3 menuItems:(id)a4;
@end

@implementation SCATModernMenuSimpleSheet

- (SCATModernMenuSimpleSheet)initWithMenu:(id)a3 menuItemDictionaryArray:(id)a4
{
  v6 = a4;
  v28.receiver = self;
  v28.super_class = SCATModernMenuSimpleSheet;
  v7 = [(SCATModernMenuSheet *)&v28 initWithMenu:a3];
  if (v7)
  {
    +[NSMutableArray array];
    v23 = v22 = v6;
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v8 = v6;
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
          v17 = [v16 BOOLValue];

          if (v17)
          {
            v18 = [v15 objectForKeyedSubscript:v13];
            v19 = [(SCATModernMenuSheet *)v7 menu];
            v20 = [SCATMenuItemFactory menuItemsForItem:v18 menu:v19 delegate:v7];
            [v23 addObjectsFromArray:v20];
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v24 objects:v29 count:16];
      }

      while (v10);
    }

    [(SCATModernMenuSimpleSheet *)v7 setStoredMenuItems:v23];
    v6 = v22;
  }

  return v7;
}

- (SCATModernMenuSimpleSheet)initWithMenu:(id)a3 menuItems:(id)a4
{
  v6 = a4;
  v10.receiver = self;
  v10.super_class = SCATModernMenuSimpleSheet;
  v7 = [(SCATModernMenuSheet *)&v10 initWithMenu:a3];
  v8 = v7;
  if (v7)
  {
    [(SCATModernMenuSimpleSheet *)v7 setStoredMenuItems:v6];
  }

  return v8;
}

@end