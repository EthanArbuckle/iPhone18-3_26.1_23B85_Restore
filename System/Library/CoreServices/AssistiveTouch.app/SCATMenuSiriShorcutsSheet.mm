@interface SCATMenuSiriShorcutsSheet
- (id)makeMenuItemsIfNeeded;
- (void)menuItemWasActivated:(id)activated;
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
  shortcuts = [v5 shortcuts];

  obj = shortcuts;
  v7 = [shortcuts countByEnumeratingWithState:&v19 objects:v23 count:16];
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
        identifier = [v11 identifier];
        shortcutName = [v11 shortcutName];
        v14 = [(SCATModernMenuItem *)SCATMenuShortcutItem itemWithIdentifier:identifier delegate:self title:shortcutName imageName:0 activateBehavior:1];

        shortcutName2 = [v11 shortcutName];
        v16 = [UIImage scat_singleCharacterImageForTitle:shortcutName2 charactersInUse:v4];
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

- (void)menuItemWasActivated:(id)activated
{
  activatedCopy = activated;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = activatedCopy;
    v6 = +[AXSiriShortcutsManager sharedManager];
    identifier = [v5 identifier];
    v8 = [v6 shortcutForIdentifier:identifier];

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
    [(SCATModernMenuSheet *)&v10 menuItemWasActivated:activatedCopy];
  }
}

@end