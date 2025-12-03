@interface AXUISettingsBaseListController
- (id)cellForSpecifier:(id)specifier;
- (id)cellForSpecifierID:(id)d;
- (id)specifierForIndexPath:(id)path;
- (id)specifierForKey:(id)key;
- (id)specifiersByRemovingDetailItemsFromOriginalSpecifiers:(id)specifiers ifHidden:(BOOL)hidden;
- (void)setDetailItemsHidden:(BOOL)hidden;
- (void)setEditing:(BOOL)editing animated:(BOOL)animated;
- (void)showController:(id)controller withSpecifier:(id)specifier;
- (void)updateTableCheckedSelection:(id)selection;
- (void)updateVisibleCellsWithCheckedSelection:(id)selection;
@end

@implementation AXUISettingsBaseListController

- (void)setDetailItemsHidden:(BOOL)hidden
{
  if (*(&self->super._inSetup + 2) != hidden)
  {
    hiddenCopy = hidden;
    *(&self->super._inSetup + 2) = hidden;
    detailItems = [(AXUISettingsBaseListController *)self detailItems];
    if (hiddenCopy)
    {
      [(AXUISettingsBaseListController *)self removeContiguousSpecifiers:detailItems animated:1];
    }

    else
    {
      [(AXUISettingsBaseListController *)self addSpecifiersFromArray:detailItems animated:1];
    }
  }
}

- (id)specifiersByRemovingDetailItemsFromOriginalSpecifiers:(id)specifiers ifHidden:(BOOL)hidden
{
  hiddenCopy = hidden;
  specifiersCopy = specifiers;
  v7 = specifiersCopy;
  *(&self->super._inSetup + 2) = hiddenCopy;
  if (hiddenCopy)
  {
    v8 = [specifiersCopy mutableCopy];
    detailItems = [(AXUISettingsBaseListController *)self detailItems];
    [v8 removeObjectsInArray:detailItems];
  }

  else
  {
    v8 = specifiersCopy;
  }

  return v8;
}

- (id)specifierForKey:(id)key
{
  v21 = *MEMORY[0x1E69E9840];
  keyCopy = key;
  [(AXUISettingsBaseListController *)self specifiers];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = v19 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v17;
    v9 = *MEMORY[0x1E69C5940];
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v17 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v11 = *(*(&v16 + 1) + 8 * i);
        v12 = [v11 propertyForKey:{v9, v16}];
        v13 = [v12 isEqualToString:keyCopy];

        if (v13)
        {
          v14 = v11;
          goto LABEL_11;
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v14 = 0;
LABEL_11:

  return v14;
}

- (void)setEditing:(BOOL)editing animated:(BOOL)animated
{
  animatedCopy = animated;
  editingCopy = editing;
  v7.receiver = self;
  v7.super_class = AXUISettingsBaseListController;
  [AXUISettingsBaseListController setEditing:sel_setEditing_animated_ animated:?];
  [*(&self->super.super.super.super.super.super.super.isa + *MEMORY[0x1E69C57C0]) setEditing:editingCopy animated:animatedCopy];
}

- (void)updateTableCheckedSelection:(id)selection
{
  selectionCopy = selection;
  v5 = *MEMORY[0x1E69C57C0];
  v11 = selectionCopy;
  v6 = [*(&self->super.super.super.super.super.super.super.isa + v5) numberOfRowsInSection:{objc_msgSend(selectionCopy, "section")}];
  if (v6 >= 1)
  {
    v7 = v6;
    for (i = 0; i != v7; ++i)
    {
      v9 = [MEMORY[0x1E696AC88] indexPathForRow:i inSection:{objc_msgSend(v11, "section")}];
      v10 = [*(&self->super.super.super.super.super.super.super.isa + v5) cellForRowAtIndexPath:v9];
      [v10 setChecked:{objc_msgSend(v9, "isEqual:", v11)}];
    }
  }
}

- (void)updateVisibleCellsWithCheckedSelection:(id)selection
{
  v18 = *MEMORY[0x1E69E9840];
  selectionCopy = selection;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = *MEMORY[0x1E69C57C0];
  indexPathsForVisibleRows = [*(&self->super.super.super.super.super.super.super.isa + v5) indexPathsForVisibleRows];
  v7 = [indexPathsForVisibleRows countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(indexPathsForVisibleRows);
        }

        v11 = *(*(&v13 + 1) + 8 * i);
        v12 = [*(&self->super.super.super.super.super.super.super.isa + v5) cellForRowAtIndexPath:v11];
        [v12 setChecked:{objc_msgSend(selectionCopy, "isEqual:", v11)}];
      }

      v8 = [indexPathsForVisibleRows countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }
}

- (id)cellForSpecifierID:(id)d
{
  v4 = [(AXUISettingsBaseListController *)self specifierForID:d];
  v5 = [(AXUISettingsBaseListController *)self cellForSpecifier:v4];

  return v5;
}

- (id)specifierForIndexPath:(id)path
{
  v4 = [(AXUISettingsBaseListController *)self indexForIndexPath:path];

  return [(AXUISettingsBaseListController *)self specifierAtIndex:v4];
}

- (id)cellForSpecifier:(id)specifier
{
  v3 = *(&self->super.super.super.super.super.super.super.isa + *MEMORY[0x1E69C57C0]);
  v4 = [(AXUISettingsBaseListController *)self indexPathForSpecifier:specifier];
  v5 = [v3 cellForRowAtIndexPath:v4];

  return v5;
}

- (void)showController:(id)controller withSpecifier:(id)specifier
{
  specifierCopy = specifier;
  controllerCopy = controller;
  [controllerCopy setParentController:self];
  rootController = [(AXUISettingsBaseListController *)self rootController];
  [controllerCopy setRootController:rootController];

  [controllerCopy setSpecifier:specifierCopy];
  [(AXUISettingsSetupCapableListController *)self showController:controllerCopy animate:1];
}

@end