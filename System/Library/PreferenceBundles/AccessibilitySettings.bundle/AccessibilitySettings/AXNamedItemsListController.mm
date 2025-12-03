@interface AXNamedItemsListController
- (AXNamedItemsListController)init;
- (BOOL)_isNamedItemSpecifierAtIndexPath:(id)path tableView:(id)view;
- (BOOL)isNamedItemSpecifier:(id)specifier;
- (BOOL)tableView:(id)view canMoveRowAtIndexPath:(id)path;
- (id)_itemName:(id)name;
- (id)nameForItem:(id)item;
- (id)namedItemForSpecifier:(id)specifier;
- (id)namedItemSpecifiers;
- (id)setName:(id)name forItem:(id)item;
- (id)specifiers;
- (id)tableView:(id)view targetIndexPathForMoveFromRowAtIndexPath:(id)path toProposedIndexPath:(id)indexPath;
- (id)valueInSettings;
- (void)_saveItems;
- (void)_setItemName:(id)name specifier:(id)specifier;
- (void)_updateEditButton;
- (void)_updateIndexesOnSpecifiers;
- (void)handleExternalSettingsChange;
- (void)setEditable:(BOOL)editable;
- (void)setSettingsGetter:(SEL)getter;
- (void)setValueInSettings:(id)settings;
- (void)tableView:(id)view commitEditingStyle:(int64_t)style forRowAtIndexPath:(id)path;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)tableView:(id)view moveRowAtIndexPath:(id)path toIndexPath:(id)indexPath;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation AXNamedItemsListController

- (AXNamedItemsListController)init
{
  v9.receiver = self;
  v9.super_class = AXNamedItemsListController;
  v2 = [(AXNamedItemsListController *)&v9 init];
  if (v2)
  {
    objc_initWeak(&location, v2);
    if ([(AXNamedItemsListController *)v2 settingsGetter])
    {
      v3 = +[AXSettings sharedInstance];
      v5[0] = _NSConcreteStackBlock;
      v5[1] = 3221225472;
      v5[2] = __34__AXNamedItemsListController_init__block_invoke;
      v5[3] = &unk_255818;
      objc_copyWeak(&v7, &location);
      v6 = v2;
      [v3 registerUpdateBlock:v5 forRetrieveSelector:-[AXNamedItemsListController settingsGetter](v6 withListener:{"settingsGetter"), v6}];

      objc_destroyWeak(&v7);
    }

    objc_destroyWeak(&location);
  }

  return v2;
}

void __34__AXNamedItemsListController_init__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (([WeakRetained shouldIgnoreNextSettingsUpdate] & 1) == 0)
  {
    v2 = [*(a1 + 32) cachedResults];
    v3 = [*(a1 + 32) valueInSettings];
    v4 = [v2 isEqual:v3];

    if (v4)
    {
      return;
    }

    WeakRetained = objc_loadWeakRetained((a1 + 40));
    [WeakRetained handleExternalSettingsChange];
  }
}

- (void)setSettingsGetter:(SEL)getter
{
  if (getter)
  {
    getterCopy = getter;
  }

  else
  {
    getterCopy = 0;
  }

  self->_settingsGetter = getterCopy;
  valueInSettings = [(AXNamedItemsListController *)self valueInSettings];
  [(AXNamedItemsListController *)self setCachedResults:valueInSettings];
}

- (id)specifiers
{
  v3 = OBJC_IVAR___PSListController__specifiers;
  v4 = *&self->AXUISettingsBaseListController_opaque[OBJC_IVAR___PSListController__specifiers];
  if (!v4)
  {
    namedItemSpecifiers = [(AXNamedItemsListController *)self namedItemSpecifiers];
    v6 = *&self->AXUISettingsBaseListController_opaque[v3];
    *&self->AXUISettingsBaseListController_opaque[v3] = namedItemSpecifiers;

    v4 = *&self->AXUISettingsBaseListController_opaque[v3];
  }

  return v4;
}

- (void)viewDidLoad
{
  v6.receiver = self;
  v6.super_class = AXNamedItemsListController;
  [(AXNamedItemsListController *)&v6 viewDidLoad];
  table = [(AXNamedItemsListController *)self table];
  v4 = objc_opt_class();
  v5 = +[AXUISettingsEditableTextCell cellReuseIdentifier];
  [table registerClass:v4 forCellReuseIdentifier:v5];
}

- (void)viewWillAppear:(BOOL)appear
{
  v4.receiver = self;
  v4.super_class = AXNamedItemsListController;
  [(AXNamedItemsListController *)&v4 viewWillAppear:appear];
  if (![(AXNamedItemsListController *)self settingsGetter])
  {
    [(AXNamedItemsListController *)self handleExternalSettingsChange];
  }

  [(AXNamedItemsListController *)self _updateEditButton];
}

- (id)valueInSettings
{
  if ([(AXNamedItemsListController *)self settingsGetter])
  {
    v3 = +[AXSettings sharedInstance];
    v4 = [v3 performSelector:{-[AXNamedItemsListController settingsGetter](self, "settingsGetter")}];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setValueInSettings:(id)settings
{
  settingsCopy = settings;
  v5 = +[AXSettings sharedInstance];
  [v5 performSelector:-[AXNamedItemsListController settingsSetter](self withObject:{"settingsSetter"), settingsCopy}];
}

- (void)handleExternalSettingsChange
{
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  visibleCells = [*&self->AXUISettingsBaseListController_opaque[OBJC_IVAR___PSListController__table] visibleCells];
  v4 = [visibleCells countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v14;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v14 != v6)
        {
          objc_enumerationMutation(visibleCells);
        }

        v8 = *(*(&v13 + 1) + 8 * i);
        specifier = [v8 specifier];
        if ([(AXNamedItemsListController *)self isNamedItemSpecifier:specifier])
        {
          objc_opt_class();
          isKindOfClass = objc_opt_isKindOfClass();

          if ((isKindOfClass & 1) == 0)
          {
            continue;
          }

          specifier = [v8 nameTextField];
          [specifier resignFirstResponder];
        }
      }

      v5 = [visibleCells countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v5);
  }

  namedItems = self->_namedItems;
  self->_namedItems = 0;

  [(AXNamedItemsListController *)self reloadSpecifiers];
  [(AXNamedItemsListController *)self _updateEditButton];
  valueInSettings = [(AXNamedItemsListController *)self valueInSettings];
  [(AXNamedItemsListController *)self setCachedResults:valueInSettings];
}

- (id)namedItemSpecifiers
{
  v4 = +[NSMutableArray array];
  AXPerformBlockSynchronouslyOnMainThread();
  v2 = v4;

  return v4;
}

void __49__AXNamedItemsListController_namedItemSpecifiers__block_invoke(uint64_t a1)
{
  if (!*(*(a1 + 32) + 144))
  {
    v2 = +[AXSettings sharedInstance];
    v3 = [objc_msgSend(v2 performSelector:{objc_msgSend(*(a1 + 32), "settingsGetter")), "mutableCopy"}];
    v4 = *(a1 + 32);
    v5 = *(v4 + 144);
    *(v4 + 144) = v3;

    if (!*(*(a1 + 32) + 144))
    {
      goto LABEL_6;
    }

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v18 = NSStringFromSelector([*(a1 + 32) settingsGetter]);
      v19 = *(*(a1 + 32) + 144);
      _AXAssert();
    }

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
LABEL_6:
      v6 = objc_alloc_init(NSMutableArray);
      v7 = *(a1 + 32);
      v8 = *(v7 + 144);
      *(v7 + 144) = v6;
    }
  }

  v9 = [*(*(a1 + 32) + 144) count];
  if (v9)
  {
    v10 = v9;
    v11 = 0;
    v12 = PSCellClassKey;
    v13 = AXShouldDisableTextFieldWhenNotEditingKey;
    v14 = AXShouldAllowSelectionKey;
    do
    {
      v15 = [PSSpecifier preferenceSpecifierNamed:0 target:*(a1 + 32) set:"_setItemName:specifier:" get:"_itemName:" detail:0 cell:4 edit:0];
      [v15 setProperty:objc_opt_class() forKey:v12];
      v16 = [NSNumber numberWithUnsignedInteger:v11];
      [v15 setProperty:v16 forKey:@"NamedItemIndex"];

      [v15 setProperty:&__kCFBooleanTrue forKey:v13];
      v17 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [*(a1 + 32) shouldAllowSelection]);
      [v15 setProperty:v17 forKey:v14];

      [*(a1 + 40) addObject:v15];
      ++v11;
    }

    while (v10 != v11);
  }
}

- (BOOL)isNamedItemSpecifier:(id)specifier
{
  v3 = [specifier propertyForKey:@"NamedItemIndex"];
  v4 = v3 != 0;

  return v4;
}

- (id)namedItemForSpecifier:(id)specifier
{
  v4 = [specifier propertyForKey:@"NamedItemIndex"];
  v5 = v4;
  if (v4)
  {
    v6 = -[NSMutableArray objectAtIndexedSubscript:](self->_namedItems, "objectAtIndexedSubscript:", [v4 unsignedIntegerValue]);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)_updateEditButton
{
  _shouldShowEditButton = [(AXNamedItemsListController *)self _shouldShowEditButton];
  if ((_shouldShowEditButton & 1) == 0)
  {
    [(AXNamedItemsListController *)self setEditable:0];
  }

  [(AXNamedItemsListController *)self setEditingButtonHidden:_shouldShowEditButton ^ 1 animated:1];
}

- (void)_setItemName:(id)name specifier:(id)specifier
{
  nameCopy = name;
  specifierCopy = specifier;
  v7 = +[NSCharacterSet whitespaceAndNewlineCharacterSet];
  v8 = [nameCopy stringByTrimmingCharactersInSet:v7];
  v9 = [v8 length];

  if (!v9)
  {
    v14 = *&self->AXUISettingsBaseListController_opaque[OBJC_IVAR___PSListController__table];
    v15 = [(AXNamedItemsListController *)self indexPathForSpecifier:specifierCopy];

    v12 = [v14 cellForRowAtIndexPath:v15];

    [v12 updateText];
LABEL_9:

    goto LABEL_10;
  }

  v10 = [specifierCopy propertyForKey:@"NamedItemIndex"];

  unsignedIntegerValue = [v10 unsignedIntegerValue];
  if (unsignedIntegerValue >= [(NSMutableArray *)self->_namedItems count])
  {
    v16 = unsignedIntegerValue;
    namedItems = self->_namedItems;
    _AXAssert();
  }

  if (unsignedIntegerValue < [(NSMutableArray *)self->_namedItems count:v16])
  {
    v12 = [(NSMutableArray *)self->_namedItems objectAtIndexedSubscript:unsignedIntegerValue];
    v13 = [(AXNamedItemsListController *)self setName:nameCopy forItem:v12];
    if (v13 != v12)
    {
      [(NSMutableArray *)self->_namedItems replaceObjectAtIndex:unsignedIntegerValue withObject:v13];
    }

    [(AXNamedItemsListController *)self _saveItems];

    goto LABEL_9;
  }

LABEL_10:
}

- (id)_itemName:(id)name
{
  v4 = [name propertyForKey:@"NamedItemIndex"];
  unsignedIntegerValue = [v4 unsignedIntegerValue];

  v6 = [(NSMutableArray *)self->_namedItems objectAtIndexedSubscript:unsignedIntegerValue];
  v7 = [(AXNamedItemsListController *)self nameForItem:v6];

  return v7;
}

- (void)_updateIndexesOnSpecifiers
{
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v3 = *&self->AXUISettingsBaseListController_opaque[OBJC_IVAR___PSListController__specifiers];
  v4 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = *v12;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v3);
        }

        v9 = *(*(&v11 + 1) + 8 * i);
        if ([(AXNamedItemsListController *)self isNamedItemSpecifier:v9, v11])
        {
          v10 = [NSNumber numberWithUnsignedInteger:v6];
          [v9 setProperty:v10 forKey:@"NamedItemIndex"];

          ++v6;
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v5);
  }
}

- (void)_saveItems
{
  [(AXNamedItemsListController *)self setShouldIgnoreNextSettingsUpdate:1];
  [(AXNamedItemsListController *)self setValueInSettings:self->_namedItems];
  [(AXNamedItemsListController *)self didSaveItems];

  [(AXNamedItemsListController *)self setShouldIgnoreNextSettingsUpdate:0];
}

- (BOOL)_isNamedItemSpecifierAtIndexPath:(id)path tableView:(id)view
{
  pathCopy = path;
  viewCopy = view;
  section = [pathCopy section];
  if (section >= [viewCopy numberOfSections] || (v9 = objc_msgSend(pathCopy, "row"), v9 >= objc_msgSend(viewCopy, "numberOfRowsInSection:", objc_msgSend(pathCopy, "section"))))
  {
    v11 = 0;
  }

  else
  {
    v10 = [(AXNamedItemsListController *)self specifierAtIndex:[(AXNamedItemsListController *)self indexForIndexPath:pathCopy]];
    v11 = [(AXNamedItemsListController *)self isNamedItemSpecifier:v10];
  }

  return v11;
}

- (void)setEditable:(BOOL)editable
{
  v4.receiver = self;
  v4.super_class = AXNamedItemsListController;
  [(AXNamedItemsListController *)&v4 setEditable:editable];
  [(AXNamedItemsListController *)self _saveItems];
}

- (BOOL)tableView:(id)view canMoveRowAtIndexPath:(id)path
{
  v5 = [(AXNamedItemsListController *)self _isNamedItemSpecifierAtIndexPath:path tableView:view];
  if (v5)
  {
    LOBYTE(v5) = [(NSMutableArray *)self->_namedItems count]> 1;
  }

  return v5;
}

- (void)tableView:(id)view commitEditingStyle:(int64_t)style forRowAtIndexPath:(id)path
{
  if (style == 1)
  {
    v19 = [(AXNamedItemsListController *)self tableView:view cellForRowAtIndexPath:path];
    [v19 endEditing:1];
    specifier = [v19 specifier];
    if ([(AXNamedItemsListController *)self isNamedItemSpecifier:specifier])
    {
      v8 = [specifier propertyForKey:@"NamedItemIndex"];
      unsignedIntegerValue = [v8 unsignedIntegerValue];

      [(NSMutableArray *)self->_namedItems removeObjectAtIndex:unsignedIntegerValue];
      v10 = [(AXNamedItemsListController *)self indexOfSpecifier:specifier];
      v11 = OBJC_IVAR___PSListController__specifiers;
      v12 = [*&self->AXUISettingsBaseListController_opaque[OBJC_IVAR___PSListController__specifiers] count];
      v13 = v10 + 1;
      if (v13 < v12)
      {
        v14 = v12;
        do
        {
          v15 = [*&self->AXUISettingsBaseListController_opaque[v11] objectAtIndexedSubscript:v13];
          if ([(AXNamedItemsListController *)self isNamedItemSpecifier:v15])
          {
            v16 = [v15 propertyForKey:@"NamedItemIndex"];
            unsignedIntegerValue2 = [v16 unsignedIntegerValue];

            if (!unsignedIntegerValue2)
            {
              _AXAssert();
            }

            v18 = [NSNumber numberWithUnsignedInteger:unsignedIntegerValue2 - 1];
            [v15 setProperty:v18 forKey:@"NamedItemIndex"];
          }

          ++v13;
        }

        while (v14 != v13);
      }

      [(AXNamedItemsListController *)self beginUpdates];
      [(AXNamedItemsListController *)self removeSpecifier:specifier animated:1];
      [(AXNamedItemsListController *)self endUpdates];
      [(AXNamedItemsListController *)self _saveItems];
      if (![(AXNamedItemsListController *)self _shouldShowEditButton])
      {
        [(AXNamedItemsListController *)self _updateEditButton];
      }
    }
  }
}

- (void)tableView:(id)view moveRowAtIndexPath:(id)path toIndexPath:(id)indexPath
{
  indexPathCopy = indexPath;
  v8 = [(AXNamedItemsListController *)self indexForIndexPath:path];
  v20 = [(AXNamedItemsListController *)self specifierAtIndex:v8];
  v9 = [v20 propertyForKey:@"NamedItemIndex"];
  unsignedIntegerValue = [v9 unsignedIntegerValue];

  v11 = [(AXNamedItemsListController *)self indexForIndexPath:indexPathCopy];
  v12 = [(AXNamedItemsListController *)self specifierAtIndex:v11];
  v13 = [v12 propertyForKey:@"NamedItemIndex"];
  unsignedIntegerValue2 = [v13 unsignedIntegerValue];

  v15 = [(NSMutableArray *)self->_namedItems objectAtIndexedSubscript:unsignedIntegerValue];
  [(NSMutableArray *)self->_namedItems removeObjectAtIndex:unsignedIntegerValue];
  [(NSMutableArray *)self->_namedItems insertObject:v15 atIndex:unsignedIntegerValue2];
  v16 = OBJC_IVAR___PSListController__specifiers;
  v17 = [*&self->AXUISettingsBaseListController_opaque[OBJC_IVAR___PSListController__specifiers] mutableCopy];
  v18 = [*&self->AXUISettingsBaseListController_opaque[v16] objectAtIndexedSubscript:v8];
  [v17 removeObjectAtIndex:v8];
  [v17 insertObject:v18 atIndex:v11];
  v19 = *&self->AXUISettingsBaseListController_opaque[v16];
  *&self->AXUISettingsBaseListController_opaque[v16] = v17;

  [(AXNamedItemsListController *)self _updateIndexesOnSpecifiers];
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  v4.receiver = self;
  v4.super_class = AXNamedItemsListController;
  [(AXNamedItemsListController *)&v4 tableView:view didSelectRowAtIndexPath:path];
}

- (id)tableView:(id)view targetIndexPathForMoveFromRowAtIndexPath:(id)path toProposedIndexPath:(id)indexPath
{
  pathCopy = path;
  indexPathCopy = indexPath;
  if (![(AXNamedItemsListController *)self _isNamedItemSpecifierAtIndexPath:indexPathCopy tableView:view])
  {
    v10 = pathCopy;

    indexPathCopy = v10;
  }

  return indexPathCopy;
}

- (id)nameForItem:(id)item
{
  objc_opt_class();
  NSRequestConcreteImplementation();
  return 0;
}

- (id)setName:(id)name forItem:(id)item
{
  objc_opt_class();
  NSRequestConcreteImplementation();
  return 0;
}

@end