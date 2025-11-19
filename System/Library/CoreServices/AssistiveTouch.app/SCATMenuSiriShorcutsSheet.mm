@interface SCATMenuSiriShorcutsSheet
- (id)makeMenuItemsIfNeeded;
- (void)menuItemWasActivated:(id)a3;
@end

@implementation SCATMenuSiriShorcutsSheet

- (id)makeMenuItemsIfNeeded
{
  v3 = +[NSMutableArray array];
  v4 = +[NSMutableSet set];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v5 = +[AXSiriShortcutsManager sharedManager];
  v6 = [v5 shortcuts];

  obj = v6;
  v7 = [v6 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v20;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v20 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v19 + 1) + 8 * i);
        v12 = [v11 identifier];
        v13 = [v11 shortcutName];
        v14 = [(SCATModernMenuItem *)SCATMenuShortcutItem itemWithIdentifier:v12 delegate:self title:v13 imageName:0 activateBehavior:1];

        v15 = [v11 shortcutName];
        v16 = [UIImage scat_singleCharacterImageForTitle:v15 charactersInUse:v4];
        [v14 setImage:v16];

        [v14 setShortcut:v11];
        [v3 addObject:v14];
      }

      v8 = [obj countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v8);
  }

  return v3;
}

- (void)menuItemWasActivated:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = +[AXSiriShortcutsManager sharedManager];
    v7 = [v5 identifier];
    v8 = [v6 shortcutForIdentifier:v7];

    if (v8)
    {
      v9 = +[AXSiriShortcutsManager sharedManager];
      [v9 performShortcut:v8];
    }
  }

  else
  {
    v10.receiver = self;
    v10.super_class = SCATMenuSiriShorcutsSheet;
    [(SCATModernMenuSheet *)&v10 menuItemWasActivated:v4];
  }
}

@end