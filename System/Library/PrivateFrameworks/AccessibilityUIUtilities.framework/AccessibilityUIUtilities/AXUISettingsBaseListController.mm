@interface AXUISettingsBaseListController
- (id)cellForSpecifier:(id)a3;
- (id)cellForSpecifierID:(id)a3;
- (id)specifierForIndexPath:(id)a3;
- (id)specifierForKey:(id)a3;
- (id)specifiersByRemovingDetailItemsFromOriginalSpecifiers:(id)a3 ifHidden:(BOOL)a4;
- (void)setDetailItemsHidden:(BOOL)a3;
- (void)setEditing:(BOOL)a3 animated:(BOOL)a4;
- (void)showController:(id)a3 withSpecifier:(id)a4;
- (void)updateTableCheckedSelection:(id)a3;
- (void)updateVisibleCellsWithCheckedSelection:(id)a3;
@end

@implementation AXUISettingsBaseListController

- (void)setDetailItemsHidden:(BOOL)a3
{
  if (*(&self->super._inSetup + 2) != a3)
  {
    v4 = a3;
    *(&self->super._inSetup + 2) = a3;
    v6 = [(AXUISettingsBaseListController *)self detailItems];
    if (v4)
    {
      [(AXUISettingsBaseListController *)self removeContiguousSpecifiers:v6 animated:1];
    }

    else
    {
      [(AXUISettingsBaseListController *)self addSpecifiersFromArray:v6 animated:1];
    }
  }
}

- (id)specifiersByRemovingDetailItemsFromOriginalSpecifiers:(id)a3 ifHidden:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = v6;
  *(&self->super._inSetup + 2) = v4;
  if (v4)
  {
    v8 = [v6 mutableCopy];
    v9 = [(AXUISettingsBaseListController *)self detailItems];
    [v8 removeObjectsInArray:v9];
  }

  else
  {
    v8 = v6;
  }

  return v8;
}

- (id)specifierForKey:(id)a3
{
  v21 = *MEMORY[0x1E69E9840];
  v4 = a3;
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
        v13 = [v12 isEqualToString:v4];

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

- (void)setEditing:(BOOL)a3 animated:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  v7.receiver = self;
  v7.super_class = AXUISettingsBaseListController;
  [AXUISettingsBaseListController setEditing:sel_setEditing_animated_ animated:?];
  [*(&self->super.super.super.super.super.super.super.isa + *MEMORY[0x1E69C57C0]) setEditing:v5 animated:v4];
}

- (void)updateTableCheckedSelection:(id)a3
{
  v4 = a3;
  v5 = *MEMORY[0x1E69C57C0];
  v11 = v4;
  v6 = [*(&self->super.super.super.super.super.super.super.isa + v5) numberOfRowsInSection:{objc_msgSend(v4, "section")}];
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

- (void)updateVisibleCellsWithCheckedSelection:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = *MEMORY[0x1E69C57C0];
  v6 = [*(&self->super.super.super.super.super.super.super.isa + v5) indexPathsForVisibleRows];
  v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
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
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v13 + 1) + 8 * i);
        v12 = [*(&self->super.super.super.super.super.super.super.isa + v5) cellForRowAtIndexPath:v11];
        [v12 setChecked:{objc_msgSend(v4, "isEqual:", v11)}];
      }

      v8 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }
}

- (id)cellForSpecifierID:(id)a3
{
  v4 = [(AXUISettingsBaseListController *)self specifierForID:a3];
  v5 = [(AXUISettingsBaseListController *)self cellForSpecifier:v4];

  return v5;
}

- (id)specifierForIndexPath:(id)a3
{
  v4 = [(AXUISettingsBaseListController *)self indexForIndexPath:a3];

  return [(AXUISettingsBaseListController *)self specifierAtIndex:v4];
}

- (id)cellForSpecifier:(id)a3
{
  v3 = *(&self->super.super.super.super.super.super.super.isa + *MEMORY[0x1E69C57C0]);
  v4 = [(AXUISettingsBaseListController *)self indexPathForSpecifier:a3];
  v5 = [v3 cellForRowAtIndexPath:v4];

  return v5;
}

- (void)showController:(id)a3 withSpecifier:(id)a4
{
  v6 = a4;
  v8 = a3;
  [v8 setParentController:self];
  v7 = [(AXUISettingsBaseListController *)self rootController];
  [v8 setRootController:v7];

  [v8 setSpecifier:v6];
  [(AXUISettingsSetupCapableListController *)self showController:v8 animate:1];
}

@end