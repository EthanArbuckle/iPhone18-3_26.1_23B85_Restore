@interface CNContactContentNavigationItemUpdater
- (id)customEditItemTitleForIsUpdatingContact:(BOOL)a3;
- (id)updateDisplayNavigationItemsForController:(id)a3 mode:(int64_t)a4 actionTarget:(id)a5 allowsEditing:(BOOL)a6 editButtonEnabled:(BOOL)a7 isInSheet:(BOOL)a8 isShowingNavBar:(BOOL)a9 shouldShowBackButton:(BOOL)a10 shouldUsePlatterStyle:(BOOL)a11 platterBackBarButtonItem:(id)a12 animated:(BOOL)a13;
- (id)updateEditDoneButtonForController:(id)a3 customEditButtonTitle:(id)a4 hasChanges:(BOOL)a5;
- (id)updateEditDoneButtonForController:(id)a3 isUpdatingContact:(BOOL)a4 hasChanges:(BOOL)a5;
- (id)updateEditingNavigationItemForController:(id)a3 actionTarget:(id)a4 isInSheet:(BOOL)a5 isShowingNavBar:(BOOL)a6 shouldUsePlatterStyle:(BOOL)a7 customEditButtonTitle:(id)a8 hasChanges:(BOOL)a9 animated:(BOOL)a10;
- (id)updateEditingNavigationItemForController:(id)a3 actionTarget:(id)a4 isInSheet:(BOOL)a5 isShowingNavBar:(BOOL)a6 shouldUsePlatterStyle:(BOOL)a7 isUpdatingContact:(BOOL)a8 hasChanges:(BOOL)a9 animated:(BOOL)a10;
- (void)applyPlatterStyleToBarButtonItems:(id)a3 navItemController:(id)a4 isEditing:(BOOL)a5;
- (void)updateBackButtonForPlatterStyleForController:(id)a3 mode:(int64_t)a4 platterBackBarButtonItem:(id)a5 animated:(BOOL)a6;
- (void)updateDisplayDoneButtonForController:(id)a3 allowsEditing:(BOOL)a4 viewMode:(int64_t)a5 editButtonEnabled:(BOOL)a6;
@end

@implementation CNContactContentNavigationItemUpdater

- (void)applyPlatterStyleToBarButtonItems:(id)a3 navItemController:(id)a4 isEditing:(BOOL)a5
{
  v19 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v8 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
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
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v14 + 1) + 8 * i);
        if (a5)
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

      v9 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v9);
  }
}

- (void)updateDisplayDoneButtonForController:(id)a3 allowsEditing:(BOOL)a4 viewMode:(int64_t)a5 editButtonEnabled:(BOOL)a6
{
  v6 = a6;
  v8 = a4;
  v9 = a3;
  if (v8)
  {
    v15 = v9;
    v10 = [v9 editButtonItem];
    [v10 setEnabled:v6];
  }

  else
  {
    if (a5 != 5)
    {
      goto LABEL_6;
    }

    v15 = v9;
    v11 = CNContactsUIBundle();
    v12 = [v11 localizedStringForKey:@"UPDATE" value:&stru_1F0CE7398 table:@"Localized"];
    v13 = [v15 editButtonItem];
    [v13 setTitle:v12];

    v10 = CNContactsUIBundle();
    v14 = [v10 localizedStringForKey:@"REVIEW" value:&stru_1F0CE7398 table:@"Localized"];
    [v15 setTitle:v14];
  }

  v9 = v15;
LABEL_6:
}

- (void)updateBackButtonForPlatterStyleForController:(id)a3 mode:(int64_t)a4 platterBackBarButtonItem:(id)a5 animated:(BOOL)a6
{
  v6 = a6;
  v13[1] = *MEMORY[0x1E69E9840];
  v9 = a5;
  v10 = [a3 navigationItem];
  v11 = [v10 backBarButtonItem];

  if (a4 != 5 && !v11)
  {
    v13[0] = v9;
    v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:1];
    [v10 setLeftBarButtonItems:v12 animated:v6];
  }
}

- (id)updateDisplayNavigationItemsForController:(id)a3 mode:(int64_t)a4 actionTarget:(id)a5 allowsEditing:(BOOL)a6 editButtonEnabled:(BOOL)a7 isInSheet:(BOOL)a8 isShowingNavBar:(BOOL)a9 shouldShowBackButton:(BOOL)a10 shouldUsePlatterStyle:(BOOL)a11 platterBackBarButtonItem:(id)a12 animated:(BOOL)a13
{
  v72 = a8;
  v13 = a7;
  v14 = a6;
  v81[1] = *MEMORY[0x1E69E9840];
  v18 = a3;
  v19 = a5;
  v20 = a12;
  v74 = objc_alloc_init(CNContactContentNavigationItemUpdaterResult);
  v21 = v18;
  v22 = [v21 navigationItem];
  v23 = v22;
  v73 = v20;
  if (v14)
  {
    v24 = [v22 backBarButtonItem];

    if (v24)
    {
      v25 = [v23 backBarButtonItem];
      v81[0] = v25;
      v26 = [MEMORY[0x1E695DEC8] arrayWithObjects:v81 count:1];
LABEL_4:
      v27 = v26;

      goto LABEL_19;
    }

    if (v20 && a11 && a10)
    {
      v80 = v20;
      v46 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v80 count:1];
    }

    else
    {
      v47 = [(CNContactContentNavigationItemUpdater *)self preEditLeftBarButtonItems];

      if (!v47)
      {
        v27 = 0;
        if (a11 && !a10)
        {
          v25 = [v23 leftBarButtonItems];
          v26 = [v25 _cn_filter:&__block_literal_global_31];
          goto LABEL_4;
        }

LABEL_19:
        [(CNContactContentNavigationItemUpdater *)self setPreEditLeftBarButtonItems:0];
        v48 = [v21 editButtonItem];
        [v48 setEnabled:v13];

        [(CNContactContentNavigationItemUpdaterResult *)v74 setEnableEditShortcut:v13];
        if ([v21 isEditing])
        {
          [v21 setEditing:0];
        }

        v49 = [v21 editButtonItem];
        [v49 setTarget:v19];

        v50 = [v21 editButtonItem];
        [v50 setAction:sel_toggleEditing_];

        v36 = [v21 editButtonItem];

        if (v36)
        {
          v39 = [v21 editButtonItem];
          v79 = v39;
          v36 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v79 count:1];
          goto LABEL_23;
        }

        goto LABEL_24;
      }

      v46 = [(CNContactContentNavigationItemUpdater *)self preEditLeftBarButtonItems];
    }

    v27 = v46;
    goto LABEL_19;
  }

  if (a4 == 5)
  {
    v28 = [v21 editButtonItem];
    [v28 setStyle:2];

    v29 = [v21 editButtonItem];
    [v29 setTarget:v19];

    v30 = [v21 editButtonItem];
    [v30 setAction:sel_updateContact_];

    v31 = CNContactsUIBundle();
    v32 = [v31 localizedStringForKey:@"UPDATE" value:&stru_1F0CE7398 table:@"Localized"];
    [v21 editButtonItem];
    v34 = v33 = v19;
    [v34 setTitle:v32];

    v35 = [v21 editButtonItem];
    v78 = v35;
    v36 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v78 count:1];

    v37 = CNContactsUIBundle();
    v38 = [v37 localizedStringForKey:@"REVIEW" value:&stru_1F0CE7398 table:@"Localized"];
    [v21 setTitle:v38];

    v19 = v33;
    v39 = [objc_alloc(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:1 target:v33 action:sel_editCancel_];
    v77 = v39;
    v27 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v77 count:1];
    [(CNContactContentNavigationItemUpdaterResult *)v74 setEnableCancelShortcut:1];
    [(CNContactContentNavigationItemUpdaterResult *)v74 setEnableEditShortcut:1];
LABEL_23:

    goto LABEL_24;
  }

  v40 = v19;
  v41 = [v22 rightBarButtonItems];
  v42 = [v41 firstObject];
  v43 = [v21 editButtonItem];

  if (v42 == v43)
  {
    v36 = MEMORY[0x1E695E0F0];
  }

  else
  {
    v36 = 0;
  }

  [(CNContactContentNavigationItemUpdaterResult *)v74 setEnableCancelShortcut:0];
  [(CNContactContentNavigationItemUpdaterResult *)v74 setEnableEditShortcut:0];
  v44 = [v23 backBarButtonItem];

  if (v44)
  {
    v45 = [v23 backBarButtonItem];
    v76 = v45;
    v27 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v76 count:1];

    v19 = v40;
    goto LABEL_24;
  }

  v19 = v40;
  if (v20 && a11 && a10)
  {
    v75 = v20;
    v27 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v75 count:1];
  }

  else
  {
    v27 = 0;
    if (a11 && !a10)
    {
      v39 = [v23 leftBarButtonItems];
      v27 = [v39 _cn_filter:&__block_literal_global_38];
      goto LABEL_23;
    }
  }

LABEL_24:
  if (!v72)
  {
    goto LABEL_48;
  }

  v51 = v19;
  v52 = [v23 rightBarButtonItems];
  v53 = [v23 leftBarButtonItems];
  v54 = [(CNContactContentNavigationItemUpdater *)self extraRightBarButtonItems];

  if (!v54)
  {
    if ([v52 count])
    {
      v55 = self;
      v56 = v52;
    }

    else
    {
      v56 = MEMORY[0x1E695E0F0];
      v55 = self;
    }

    [(CNContactContentNavigationItemUpdater *)v55 setExtraRightBarButtonItems:v56];
  }

  v57 = [(CNContactContentNavigationItemUpdater *)self extraRightBarButtonItems];
  if ([v57 count])
  {
    v58 = [v36 count];

    if (v58)
    {
      goto LABEL_38;
    }

    [(CNContactContentNavigationItemUpdater *)self extraRightBarButtonItems];
    v36 = v57 = v36;
  }

LABEL_38:
  v59 = [(CNContactContentNavigationItemUpdater *)self extraLeftBarButtonItems];

  if (!v59)
  {
    if ([v53 count])
    {
      v60 = self;
      v61 = v53;
    }

    else
    {
      v61 = MEMORY[0x1E695E0F0];
      v60 = self;
    }

    [(CNContactContentNavigationItemUpdater *)v60 setExtraLeftBarButtonItems:v61];
  }

  v62 = [(CNContactContentNavigationItemUpdater *)self extraLeftBarButtonItems];
  if (![v62 count])
  {
    goto LABEL_46;
  }

  v63 = [v27 count];

  if (!v63)
  {
    [(CNContactContentNavigationItemUpdater *)self extraLeftBarButtonItems];
    v27 = v62 = v27;
LABEL_46:
  }

  v19 = v51;
LABEL_48:
  if (v27)
  {
    [v23 setLeftBarButtonItems:v27 animated:a13];
  }

  v64 = MEMORY[0x1E6996530];
  if (a11)
  {
    v65 = *MEMORY[0x1E6996530];
    v66 = [v23 leftBarButtonItems];
    LOBYTE(v65) = (*(v65 + 16))(v65, v66);

    if ((v65 & 1) == 0)
    {
      v67 = [v23 leftBarButtonItems];
      [(CNContactContentNavigationItemUpdater *)self applyPlatterStyleToBarButtonItems:v67 navItemController:v21 isEditing:0];
    }
  }

  if (v36)
  {
    [v23 setRightBarButtonItems:v36 animated:a13];
  }

  if (a11)
  {
    v68 = *v64;
    v69 = [v23 rightBarButtonItems];
    LOBYTE(v68) = (*(v68 + 16))(v68, v69);

    if ((v68 & 1) == 0)
    {
      v70 = [v23 rightBarButtonItems];
      [(CNContactContentNavigationItemUpdater *)self applyPlatterStyleToBarButtonItems:v70 navItemController:v21 isEditing:0];
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

- (id)customEditItemTitleForIsUpdatingContact:(BOOL)a3
{
  if (a3)
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

- (id)updateEditDoneButtonForController:(id)a3 customEditButtonTitle:(id)a4 hasChanges:(BOOL)a5
{
  v5 = a5;
  v7 = a4;
  v8 = a3;
  v9 = objc_alloc_init(CNContactContentNavigationItemUpdaterResult);
  v10 = [v8 editButtonItem];

  [v10 setEnabled:v5];
  if (v7)
  {
    [v10 setTitle:v7];
  }

  [(CNContactContentNavigationItemUpdaterResult *)v9 setEnableSaveShortcut:v5];

  return v9;
}

- (id)updateEditDoneButtonForController:(id)a3 isUpdatingContact:(BOOL)a4 hasChanges:(BOOL)a5
{
  v5 = a5;
  v6 = a4;
  v8 = a3;
  v9 = [(CNContactContentNavigationItemUpdater *)self customEditItemTitleForIsUpdatingContact:v6];
  v10 = [(CNContactContentNavigationItemUpdater *)self updateEditDoneButtonForController:v8 customEditButtonTitle:v9 hasChanges:v5];

  return v10;
}

- (id)updateEditingNavigationItemForController:(id)a3 actionTarget:(id)a4 isInSheet:(BOOL)a5 isShowingNavBar:(BOOL)a6 shouldUsePlatterStyle:(BOOL)a7 customEditButtonTitle:(id)a8 hasChanges:(BOOL)a9 animated:(BOOL)a10
{
  v51 = a7;
  v11 = a5;
  v53[1] = *MEMORY[0x1E69E9840];
  v14 = a3;
  v15 = a4;
  v16 = a8;
  v17 = [v14 navigationItem];
  v18 = objc_alloc_init(CNContactContentNavigationItemUpdaterResult);
  v19 = [(CNContactContentNavigationItemUpdater *)self preEditLeftBarButtonItems];

  if (!v19)
  {
    v20 = [v17 leftBarButtonItems];
    v21 = [v20 _cn_filter:&__block_literal_global_6768];

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

  v50 = [objc_alloc(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:1 target:v15 action:sel_editCancel_];
  v53[0] = v50;
  v23 = [MEMORY[0x1E695DEC8] arrayWithObjects:v53 count:1];
  [(CNContactContentNavigationItemUpdaterResult *)v18 setEnableCancelShortcut:1];
  v24 = [(CNContactContentNavigationItemUpdater *)self updateEditDoneButtonForController:v14 customEditButtonTitle:v16 hasChanges:a9];

  v49 = v24;
  -[CNContactContentNavigationItemUpdaterResult setEnableSaveShortcut:](v18, "setEnableSaveShortcut:", [v24 enableSaveShortcut]);
  v25 = [v14 editButtonItem];
  if (([v14 isEditing] & 1) == 0)
  {
    [v14 setEditing:1];
  }

  [v25 setTarget:v15];
  [v25 setAction:sel_toggleEditing_];
  if (!v25)
  {
    v26 = 0;
    if (!v11)
    {
      goto LABEL_31;
    }

LABEL_12:
    v27 = [v17 rightBarButtonItems];
    v47 = [v17 leftBarButtonItems];
    v28 = [(CNContactContentNavigationItemUpdater *)self extraRightBarButtonItems];

    if (!v28)
    {
      if ([v27 count])
      {
        v29 = self;
        v30 = v27;
      }

      else
      {
        v30 = MEMORY[0x1E695E0F0];
        v29 = self;
      }

      [(CNContactContentNavigationItemUpdater *)v29 setExtraRightBarButtonItems:v30];
    }

    v31 = [(CNContactContentNavigationItemUpdater *)self extraRightBarButtonItems];
    if ([v31 count])
    {
      v32 = [v26 count];

      if (v32)
      {
        goto LABEL_21;
      }

      [(CNContactContentNavigationItemUpdater *)self extraRightBarButtonItems];
      v26 = v31 = v26;
    }

LABEL_21:
    v33 = [(CNContactContentNavigationItemUpdater *)self extraLeftBarButtonItems];

    if (!v33)
    {
      if ([v47 count])
      {
        v34 = self;
        v35 = v47;
      }

      else
      {
        v35 = MEMORY[0x1E695E0F0];
        v34 = self;
      }

      [(CNContactContentNavigationItemUpdater *)v34 setExtraLeftBarButtonItems:v35];
    }

    v36 = [(CNContactContentNavigationItemUpdater *)self extraLeftBarButtonItems];
    if ([v36 count])
    {
      v37 = [v23 count];

      if (v37)
      {
LABEL_30:

        goto LABEL_31;
      }

      [(CNContactContentNavigationItemUpdater *)self extraLeftBarButtonItems];
      v23 = v36 = v23;
    }

    goto LABEL_30;
  }

  v52 = v25;
  v26 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v52 count:1];
  if (v11)
  {
    goto LABEL_12;
  }

LABEL_31:
  v48 = v18;
  if (v23)
  {
    [v17 setLeftBarButtonItems:v23 animated:a10];
  }

  v38 = MEMORY[0x1E6996530];
  if (v51)
  {
    v39 = *MEMORY[0x1E6996530];
    v40 = [v17 leftBarButtonItems];
    LOBYTE(v39) = (*(v39 + 16))(v39, v40);

    if ((v39 & 1) == 0)
    {
      v41 = [v17 leftBarButtonItems];
      [(CNContactContentNavigationItemUpdater *)self applyPlatterStyleToBarButtonItems:v41 navItemController:v14 isEditing:1];
    }
  }

  if (v26)
  {
    [v17 setRightBarButtonItems:v26 animated:a10];
  }

  if (v51)
  {
    v42 = *v38;
    v43 = [v17 rightBarButtonItems];
    LOBYTE(v42) = (*(v42 + 16))(v42, v43);

    if ((v42 & 1) == 0)
    {
      v44 = [v17 rightBarButtonItems];
      [(CNContactContentNavigationItemUpdater *)self applyPlatterStyleToBarButtonItems:v44 navItemController:v14 isEditing:1];
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

- (id)updateEditingNavigationItemForController:(id)a3 actionTarget:(id)a4 isInSheet:(BOOL)a5 isShowingNavBar:(BOOL)a6 shouldUsePlatterStyle:(BOOL)a7 isUpdatingContact:(BOOL)a8 hasChanges:(BOOL)a9 animated:(BOOL)a10
{
  v10 = a8;
  v11 = a7;
  v12 = a6;
  v13 = a5;
  v16 = a4;
  v17 = a3;
  v18 = [(CNContactContentNavigationItemUpdater *)self customEditItemTitleForIsUpdatingContact:v10];
  LOWORD(v21) = __PAIR16__(a10, a9);
  v19 = [(CNContactContentNavigationItemUpdater *)self updateEditingNavigationItemForController:v17 actionTarget:v16 isInSheet:v13 isShowingNavBar:v12 shouldUsePlatterStyle:v11 customEditButtonTitle:v18 hasChanges:v21 animated:?];

  return v19;
}

@end