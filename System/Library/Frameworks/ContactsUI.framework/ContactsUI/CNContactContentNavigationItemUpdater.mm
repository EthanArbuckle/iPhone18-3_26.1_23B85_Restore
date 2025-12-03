@interface CNContactContentNavigationItemUpdater
- (id)customEditItemTitleForIsUpdatingContact:(BOOL)contact;
- (id)updateDisplayNavigationItemsForController:(id)controller mode:(int64_t)mode actionTarget:(id)target allowsEditing:(BOOL)editing editButtonEnabled:(BOOL)enabled isInSheet:(BOOL)sheet isShowingNavBar:(BOOL)bar shouldShowBackButton:(BOOL)self0 shouldUsePlatterStyle:(BOOL)self1 platterBackBarButtonItem:(id)self2 animated:(BOOL)self3;
- (id)updateEditDoneButtonForController:(id)controller customEditButtonTitle:(id)title hasChanges:(BOOL)changes;
- (id)updateEditDoneButtonForController:(id)controller isUpdatingContact:(BOOL)contact hasChanges:(BOOL)changes;
- (id)updateEditingNavigationItemForController:(id)controller actionTarget:(id)target isInSheet:(BOOL)sheet isShowingNavBar:(BOOL)bar shouldUsePlatterStyle:(BOOL)style customEditButtonTitle:(id)title hasChanges:(BOOL)changes animated:(BOOL)self0;
- (id)updateEditingNavigationItemForController:(id)controller actionTarget:(id)target isInSheet:(BOOL)sheet isShowingNavBar:(BOOL)bar shouldUsePlatterStyle:(BOOL)style isUpdatingContact:(BOOL)contact hasChanges:(BOOL)changes animated:(BOOL)self0;
- (void)applyPlatterStyleToBarButtonItems:(id)items navItemController:(id)controller isEditing:(BOOL)editing;
- (void)updateBackButtonForPlatterStyleForController:(id)controller mode:(int64_t)mode platterBackBarButtonItem:(id)item animated:(BOOL)animated;
- (void)updateDisplayDoneButtonForController:(id)controller allowsEditing:(BOOL)editing viewMode:(int64_t)mode editButtonEnabled:(BOOL)enabled;
@end

@implementation CNContactContentNavigationItemUpdater

- (void)applyPlatterStyleToBarButtonItems:(id)items navItemController:(id)controller isEditing:(BOOL)editing
{
  v19 = *MEMORY[0x1E69E9840];
  itemsCopy = items;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v8 = [itemsCopy countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v15;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v15 != v10)
        {
          objc_enumerationMutation(itemsCopy);
        }

        v12 = *(*(&v14 + 1) + 8 * i);
        if (editing)
        {
          [(CNContactContentNavigationItemUpdater *)self transparentPlatterImage];
        }

        else
        {
          [(CNContactContentNavigationItemUpdater *)self buttonPlatterImage];
        }
        v13 = ;
        [v12 setBackgroundImage:v13 forState:0 barMetrics:0];
      }

      v9 = [itemsCopy countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v9);
  }
}

- (void)updateDisplayDoneButtonForController:(id)controller allowsEditing:(BOOL)editing viewMode:(int64_t)mode editButtonEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  editingCopy = editing;
  controllerCopy = controller;
  if (editingCopy)
  {
    v15 = controllerCopy;
    editButtonItem = [controllerCopy editButtonItem];
    [editButtonItem setEnabled:enabledCopy];
  }

  else
  {
    if (mode != 5)
    {
      goto LABEL_6;
    }

    v15 = controllerCopy;
    v11 = CNContactsUIBundle();
    v12 = [v11 localizedStringForKey:@"UPDATE" value:&stru_1F0CE7398 table:@"Localized"];
    editButtonItem2 = [v15 editButtonItem];
    [editButtonItem2 setTitle:v12];

    editButtonItem = CNContactsUIBundle();
    v14 = [editButtonItem localizedStringForKey:@"REVIEW" value:&stru_1F0CE7398 table:@"Localized"];
    [v15 setTitle:v14];
  }

  controllerCopy = v15;
LABEL_6:
}

- (void)updateBackButtonForPlatterStyleForController:(id)controller mode:(int64_t)mode platterBackBarButtonItem:(id)item animated:(BOOL)animated
{
  animatedCopy = animated;
  v13[1] = *MEMORY[0x1E69E9840];
  itemCopy = item;
  navigationItem = [controller navigationItem];
  backBarButtonItem = [navigationItem backBarButtonItem];

  if (mode != 5 && !backBarButtonItem)
  {
    v13[0] = itemCopy;
    v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:1];
    [navigationItem setLeftBarButtonItems:v12 animated:animatedCopy];
  }
}

- (id)updateDisplayNavigationItemsForController:(id)controller mode:(int64_t)mode actionTarget:(id)target allowsEditing:(BOOL)editing editButtonEnabled:(BOOL)enabled isInSheet:(BOOL)sheet isShowingNavBar:(BOOL)bar shouldShowBackButton:(BOOL)self0 shouldUsePlatterStyle:(BOOL)self1 platterBackBarButtonItem:(id)self2 animated:(BOOL)self3
{
  sheetCopy = sheet;
  enabledCopy = enabled;
  editingCopy = editing;
  v81[1] = *MEMORY[0x1E69E9840];
  controllerCopy = controller;
  targetCopy = target;
  itemCopy = item;
  v74 = objc_alloc_init(CNContactContentNavigationItemUpdaterResult);
  v21 = controllerCopy;
  navigationItem = [v21 navigationItem];
  v23 = navigationItem;
  v73 = itemCopy;
  if (editingCopy)
  {
    backBarButtonItem = [navigationItem backBarButtonItem];

    if (backBarButtonItem)
    {
      backBarButtonItem2 = [v23 backBarButtonItem];
      v81[0] = backBarButtonItem2;
      v26 = [MEMORY[0x1E695DEC8] arrayWithObjects:v81 count:1];
LABEL_4:
      v27 = v26;

      goto LABEL_19;
    }

    if (itemCopy && style && button)
    {
      v80 = itemCopy;
      preEditLeftBarButtonItems2 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v80 count:1];
    }

    else
    {
      preEditLeftBarButtonItems = [(CNContactContentNavigationItemUpdater *)self preEditLeftBarButtonItems];

      if (!preEditLeftBarButtonItems)
      {
        v27 = 0;
        if (style && !button)
        {
          backBarButtonItem2 = [v23 leftBarButtonItems];
          v26 = [backBarButtonItem2 _cn_filter:&__block_literal_global_31];
          goto LABEL_4;
        }

LABEL_19:
        [(CNContactContentNavigationItemUpdater *)self setPreEditLeftBarButtonItems:0];
        editButtonItem = [v21 editButtonItem];
        [editButtonItem setEnabled:enabledCopy];

        [(CNContactContentNavigationItemUpdaterResult *)v74 setEnableEditShortcut:enabledCopy];
        if ([v21 isEditing])
        {
          [v21 setEditing:0];
        }

        editButtonItem2 = [v21 editButtonItem];
        [editButtonItem2 setTarget:targetCopy];

        editButtonItem3 = [v21 editButtonItem];
        [editButtonItem3 setAction:sel_toggleEditing_];

        editButtonItem4 = [v21 editButtonItem];

        if (editButtonItem4)
        {
          editButtonItem5 = [v21 editButtonItem];
          v79 = editButtonItem5;
          editButtonItem4 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v79 count:1];
          goto LABEL_23;
        }

        goto LABEL_24;
      }

      preEditLeftBarButtonItems2 = [(CNContactContentNavigationItemUpdater *)self preEditLeftBarButtonItems];
    }

    v27 = preEditLeftBarButtonItems2;
    goto LABEL_19;
  }

  if (mode == 5)
  {
    editButtonItem6 = [v21 editButtonItem];
    [editButtonItem6 setStyle:2];

    editButtonItem7 = [v21 editButtonItem];
    [editButtonItem7 setTarget:targetCopy];

    editButtonItem8 = [v21 editButtonItem];
    [editButtonItem8 setAction:sel_updateContact_];

    v31 = CNContactsUIBundle();
    v32 = [v31 localizedStringForKey:@"UPDATE" value:&stru_1F0CE7398 table:@"Localized"];
    [v21 editButtonItem];
    v34 = v33 = targetCopy;
    [v34 setTitle:v32];

    editButtonItem9 = [v21 editButtonItem];
    v78 = editButtonItem9;
    editButtonItem4 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v78 count:1];

    v37 = CNContactsUIBundle();
    v38 = [v37 localizedStringForKey:@"REVIEW" value:&stru_1F0CE7398 table:@"Localized"];
    [v21 setTitle:v38];

    targetCopy = v33;
    editButtonItem5 = [objc_alloc(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:1 target:v33 action:sel_editCancel_];
    v77 = editButtonItem5;
    v27 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v77 count:1];
    [(CNContactContentNavigationItemUpdaterResult *)v74 setEnableCancelShortcut:1];
    [(CNContactContentNavigationItemUpdaterResult *)v74 setEnableEditShortcut:1];
LABEL_23:

    goto LABEL_24;
  }

  v40 = targetCopy;
  rightBarButtonItems = [navigationItem rightBarButtonItems];
  firstObject = [rightBarButtonItems firstObject];
  editButtonItem10 = [v21 editButtonItem];

  if (firstObject == editButtonItem10)
  {
    editButtonItem4 = MEMORY[0x1E695E0F0];
  }

  else
  {
    editButtonItem4 = 0;
  }

  [(CNContactContentNavigationItemUpdaterResult *)v74 setEnableCancelShortcut:0];
  [(CNContactContentNavigationItemUpdaterResult *)v74 setEnableEditShortcut:0];
  backBarButtonItem3 = [v23 backBarButtonItem];

  if (backBarButtonItem3)
  {
    backBarButtonItem4 = [v23 backBarButtonItem];
    v76 = backBarButtonItem4;
    v27 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v76 count:1];

    targetCopy = v40;
    goto LABEL_24;
  }

  targetCopy = v40;
  if (itemCopy && style && button)
  {
    v75 = itemCopy;
    v27 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v75 count:1];
  }

  else
  {
    v27 = 0;
    if (style && !button)
    {
      editButtonItem5 = [v23 leftBarButtonItems];
      v27 = [editButtonItem5 _cn_filter:&__block_literal_global_38];
      goto LABEL_23;
    }
  }

LABEL_24:
  if (!sheetCopy)
  {
    goto LABEL_48;
  }

  v51 = targetCopy;
  rightBarButtonItems2 = [v23 rightBarButtonItems];
  leftBarButtonItems = [v23 leftBarButtonItems];
  extraRightBarButtonItems = [(CNContactContentNavigationItemUpdater *)self extraRightBarButtonItems];

  if (!extraRightBarButtonItems)
  {
    if ([rightBarButtonItems2 count])
    {
      selfCopy2 = self;
      v56 = rightBarButtonItems2;
    }

    else
    {
      v56 = MEMORY[0x1E695E0F0];
      selfCopy2 = self;
    }

    [(CNContactContentNavigationItemUpdater *)selfCopy2 setExtraRightBarButtonItems:v56];
  }

  extraRightBarButtonItems2 = [(CNContactContentNavigationItemUpdater *)self extraRightBarButtonItems];
  if ([extraRightBarButtonItems2 count])
  {
    v58 = [editButtonItem4 count];

    if (v58)
    {
      goto LABEL_38;
    }

    [(CNContactContentNavigationItemUpdater *)self extraRightBarButtonItems];
    editButtonItem4 = extraRightBarButtonItems2 = editButtonItem4;
  }

LABEL_38:
  extraLeftBarButtonItems = [(CNContactContentNavigationItemUpdater *)self extraLeftBarButtonItems];

  if (!extraLeftBarButtonItems)
  {
    if ([leftBarButtonItems count])
    {
      selfCopy4 = self;
      v61 = leftBarButtonItems;
    }

    else
    {
      v61 = MEMORY[0x1E695E0F0];
      selfCopy4 = self;
    }

    [(CNContactContentNavigationItemUpdater *)selfCopy4 setExtraLeftBarButtonItems:v61];
  }

  extraLeftBarButtonItems2 = [(CNContactContentNavigationItemUpdater *)self extraLeftBarButtonItems];
  if (![extraLeftBarButtonItems2 count])
  {
    goto LABEL_46;
  }

  v63 = [v27 count];

  if (!v63)
  {
    [(CNContactContentNavigationItemUpdater *)self extraLeftBarButtonItems];
    v27 = extraLeftBarButtonItems2 = v27;
LABEL_46:
  }

  targetCopy = v51;
LABEL_48:
  if (v27)
  {
    [v23 setLeftBarButtonItems:v27 animated:animated];
  }

  v64 = MEMORY[0x1E6996530];
  if (style)
  {
    v65 = *MEMORY[0x1E6996530];
    leftBarButtonItems2 = [v23 leftBarButtonItems];
    LOBYTE(v65) = (*(v65 + 16))(v65, leftBarButtonItems2);

    if ((v65 & 1) == 0)
    {
      leftBarButtonItems3 = [v23 leftBarButtonItems];
      [(CNContactContentNavigationItemUpdater *)self applyPlatterStyleToBarButtonItems:leftBarButtonItems3 navItemController:v21 isEditing:0];
    }
  }

  if (editButtonItem4)
  {
    [v23 setRightBarButtonItems:editButtonItem4 animated:animated];
  }

  if (style)
  {
    v68 = *v64;
    rightBarButtonItems3 = [v23 rightBarButtonItems];
    LOBYTE(v68) = (*(v68 + 16))(v68, rightBarButtonItems3);

    if ((v68 & 1) == 0)
    {
      rightBarButtonItems4 = [v23 rightBarButtonItems];
      [(CNContactContentNavigationItemUpdater *)self applyPlatterStyleToBarButtonItems:rightBarButtonItems4 navItemController:v21 isEditing:0];
    }
  }

  return v74;
}

BOOL __236__CNContactContentNavigationItemUpdater_updateDisplayNavigationItemsForController_mode_actionTarget_allowsEditing_editButtonEnabled_isInSheet_isShowingNavBar_shouldShowBackButton_shouldUsePlatterStyle_platterBackBarButtonItem_animated___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return (isKindOfClass & 1) == 0;
}

BOOL __236__CNContactContentNavigationItemUpdater_updateDisplayNavigationItemsForController_mode_actionTarget_allowsEditing_editButtonEnabled_isInSheet_isShowingNavBar_shouldShowBackButton_shouldUsePlatterStyle_platterBackBarButtonItem_animated___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return (isKindOfClass & 1) == 0;
}

- (id)customEditItemTitleForIsUpdatingContact:(BOOL)contact
{
  if (contact)
  {
    v3 = CNContactsUIBundle();
    v4 = [v3 localizedStringForKey:@"UPDATE" value:&stru_1F0CE7398 table:@"Localized"];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)updateEditDoneButtonForController:(id)controller customEditButtonTitle:(id)title hasChanges:(BOOL)changes
{
  changesCopy = changes;
  titleCopy = title;
  controllerCopy = controller;
  v9 = objc_alloc_init(CNContactContentNavigationItemUpdaterResult);
  editButtonItem = [controllerCopy editButtonItem];

  [editButtonItem setEnabled:changesCopy];
  if (titleCopy)
  {
    [editButtonItem setTitle:titleCopy];
  }

  [(CNContactContentNavigationItemUpdaterResult *)v9 setEnableSaveShortcut:changesCopy];

  return v9;
}

- (id)updateEditDoneButtonForController:(id)controller isUpdatingContact:(BOOL)contact hasChanges:(BOOL)changes
{
  changesCopy = changes;
  contactCopy = contact;
  controllerCopy = controller;
  v9 = [(CNContactContentNavigationItemUpdater *)self customEditItemTitleForIsUpdatingContact:contactCopy];
  v10 = [(CNContactContentNavigationItemUpdater *)self updateEditDoneButtonForController:controllerCopy customEditButtonTitle:v9 hasChanges:changesCopy];

  return v10;
}

- (id)updateEditingNavigationItemForController:(id)controller actionTarget:(id)target isInSheet:(BOOL)sheet isShowingNavBar:(BOOL)bar shouldUsePlatterStyle:(BOOL)style customEditButtonTitle:(id)title hasChanges:(BOOL)changes animated:(BOOL)self0
{
  styleCopy = style;
  sheetCopy = sheet;
  v53[1] = *MEMORY[0x1E69E9840];
  controllerCopy = controller;
  targetCopy = target;
  titleCopy = title;
  navigationItem = [controllerCopy navigationItem];
  v18 = objc_alloc_init(CNContactContentNavigationItemUpdaterResult);
  preEditLeftBarButtonItems = [(CNContactContentNavigationItemUpdater *)self preEditLeftBarButtonItems];

  if (!preEditLeftBarButtonItems)
  {
    leftBarButtonItems = [navigationItem leftBarButtonItems];
    v21 = [leftBarButtonItems _cn_filter:&__block_literal_global_6768];

    if (v21)
    {
      v22 = v21;
    }

    else
    {
      v22 = MEMORY[0x1E695E0F0];
    }

    [(CNContactContentNavigationItemUpdater *)self setPreEditLeftBarButtonItems:v22];
  }

  v50 = [objc_alloc(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:1 target:targetCopy action:sel_editCancel_];
  v53[0] = v50;
  v23 = [MEMORY[0x1E695DEC8] arrayWithObjects:v53 count:1];
  [(CNContactContentNavigationItemUpdaterResult *)v18 setEnableCancelShortcut:1];
  v24 = [(CNContactContentNavigationItemUpdater *)self updateEditDoneButtonForController:controllerCopy customEditButtonTitle:titleCopy hasChanges:changes];

  v49 = v24;
  -[CNContactContentNavigationItemUpdaterResult setEnableSaveShortcut:](v18, "setEnableSaveShortcut:", [v24 enableSaveShortcut]);
  editButtonItem = [controllerCopy editButtonItem];
  if (([controllerCopy isEditing] & 1) == 0)
  {
    [controllerCopy setEditing:1];
  }

  [editButtonItem setTarget:targetCopy];
  [editButtonItem setAction:sel_toggleEditing_];
  if (!editButtonItem)
  {
    v26 = 0;
    if (!sheetCopy)
    {
      goto LABEL_31;
    }

LABEL_12:
    rightBarButtonItems = [navigationItem rightBarButtonItems];
    leftBarButtonItems2 = [navigationItem leftBarButtonItems];
    extraRightBarButtonItems = [(CNContactContentNavigationItemUpdater *)self extraRightBarButtonItems];

    if (!extraRightBarButtonItems)
    {
      if ([rightBarButtonItems count])
      {
        selfCopy2 = self;
        v30 = rightBarButtonItems;
      }

      else
      {
        v30 = MEMORY[0x1E695E0F0];
        selfCopy2 = self;
      }

      [(CNContactContentNavigationItemUpdater *)selfCopy2 setExtraRightBarButtonItems:v30];
    }

    extraRightBarButtonItems2 = [(CNContactContentNavigationItemUpdater *)self extraRightBarButtonItems];
    if ([extraRightBarButtonItems2 count])
    {
      v32 = [v26 count];

      if (v32)
      {
        goto LABEL_21;
      }

      [(CNContactContentNavigationItemUpdater *)self extraRightBarButtonItems];
      v26 = extraRightBarButtonItems2 = v26;
    }

LABEL_21:
    extraLeftBarButtonItems = [(CNContactContentNavigationItemUpdater *)self extraLeftBarButtonItems];

    if (!extraLeftBarButtonItems)
    {
      if ([leftBarButtonItems2 count])
      {
        selfCopy4 = self;
        v35 = leftBarButtonItems2;
      }

      else
      {
        v35 = MEMORY[0x1E695E0F0];
        selfCopy4 = self;
      }

      [(CNContactContentNavigationItemUpdater *)selfCopy4 setExtraLeftBarButtonItems:v35];
    }

    extraLeftBarButtonItems2 = [(CNContactContentNavigationItemUpdater *)self extraLeftBarButtonItems];
    if ([extraLeftBarButtonItems2 count])
    {
      v37 = [v23 count];

      if (v37)
      {
LABEL_30:

        goto LABEL_31;
      }

      [(CNContactContentNavigationItemUpdater *)self extraLeftBarButtonItems];
      v23 = extraLeftBarButtonItems2 = v23;
    }

    goto LABEL_30;
  }

  v52 = editButtonItem;
  v26 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v52 count:1];
  if (sheetCopy)
  {
    goto LABEL_12;
  }

LABEL_31:
  v48 = v18;
  if (v23)
  {
    [navigationItem setLeftBarButtonItems:v23 animated:animated];
  }

  v38 = MEMORY[0x1E6996530];
  if (styleCopy)
  {
    v39 = *MEMORY[0x1E6996530];
    leftBarButtonItems3 = [navigationItem leftBarButtonItems];
    LOBYTE(v39) = (*(v39 + 16))(v39, leftBarButtonItems3);

    if ((v39 & 1) == 0)
    {
      leftBarButtonItems4 = [navigationItem leftBarButtonItems];
      [(CNContactContentNavigationItemUpdater *)self applyPlatterStyleToBarButtonItems:leftBarButtonItems4 navItemController:controllerCopy isEditing:1];
    }
  }

  if (v26)
  {
    [navigationItem setRightBarButtonItems:v26 animated:animated];
  }

  if (styleCopy)
  {
    v42 = *v38;
    rightBarButtonItems2 = [navigationItem rightBarButtonItems];
    LOBYTE(v42) = (*(v42 + 16))(v42, rightBarButtonItems2);

    if ((v42 & 1) == 0)
    {
      rightBarButtonItems3 = [navigationItem rightBarButtonItems];
      [(CNContactContentNavigationItemUpdater *)self applyPlatterStyleToBarButtonItems:rightBarButtonItems3 navItemController:controllerCopy isEditing:1];
    }
  }

  return v48;
}

BOOL __185__CNContactContentNavigationItemUpdater_updateEditingNavigationItemForController_actionTarget_isInSheet_isShowingNavBar_shouldUsePlatterStyle_customEditButtonTitle_hasChanges_animated___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return (isKindOfClass & 1) == 0;
}

- (id)updateEditingNavigationItemForController:(id)controller actionTarget:(id)target isInSheet:(BOOL)sheet isShowingNavBar:(BOOL)bar shouldUsePlatterStyle:(BOOL)style isUpdatingContact:(BOOL)contact hasChanges:(BOOL)changes animated:(BOOL)self0
{
  contactCopy = contact;
  styleCopy = style;
  barCopy = bar;
  sheetCopy = sheet;
  targetCopy = target;
  controllerCopy = controller;
  v18 = [(CNContactContentNavigationItemUpdater *)self customEditItemTitleForIsUpdatingContact:contactCopy];
  LOWORD(v21) = __PAIR16__(animated, changes);
  v19 = [(CNContactContentNavigationItemUpdater *)self updateEditingNavigationItemForController:controllerCopy actionTarget:targetCopy isInSheet:sheetCopy isShowingNavBar:barCopy shouldUsePlatterStyle:styleCopy customEditButtonTitle:v18 hasChanges:v21 animated:?];

  return v19;
}

@end