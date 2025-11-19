@interface CNUINavigationListItem
+ (id)bisectionTopLevelListItems:(id)a3;
+ (id)filterNavigationListItemsForUserActionListModel:(id)a3 forBundleIdentifier:(id)a4;
+ (id)itemForActionItem:(id)a3 usePropertyLabel:(BOOL)a4;
+ (id)localizedLabelForActionItem:(id)a3 usePropertyLabel:(BOOL)a4;
+ (id)navigationListItemForContactProperty:(id)a3;
+ (id)navigationListItemsForUserActionListModel:(id)a3 displayDefaultAppsSectionedMenus:(BOOL)a4 displayNonDefaultAppsMenuTitle:(BOOL)a5;
+ (id)parentListItemTitleForUserAction:(id)a3 displayNonDefaultAppsMenuTitle:(BOOL)a4;
- (CNUINavigationListItem)defaultItem;
- (CNUINavigationListItem)initWithTitle:(id)a3 image:(id)a4;
- (CNUINavigationListItem)parent;
@end

@implementation CNUINavigationListItem

+ (id)itemForActionItem:(id)a3 usePropertyLabel:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [a1 localizedLabelForActionItem:v6 usePropertyLabel:v4];
  v8 = [[CNUINavigationListItem alloc] initWithTitle:v7];
  v9 = [v6 targetHandle];
  [(CNUINavigationListItem *)v8 setSubtitle:v9];

  [(CNUINavigationListItem *)v8 setContent:v6];

  return v8;
}

+ (id)bisectionTopLevelListItems:(id)a3
{
  v13[1] = *MEMORY[0x1E69E9840];
  v3 = a3;
  if ([v3 count])
  {
    v4 = [v3 firstObject];
    [v4 setShouldDisplayInline:1];
    if ([v3 count] <= 1)
    {
      v13[0] = v4;
      v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:1];
    }

    else
    {
      v5 = objc_alloc_init(CNUINavigationListItem);
      v6 = [v3 _cn_takeLast:{objc_msgSend(v3, "count") - 1}];
      v10[0] = MEMORY[0x1E69E9820];
      v10[1] = 3221225472;
      v10[2] = __74__CNUINavigationListItem_CNUIUserActionModel__bisectionTopLevelListItems___block_invoke;
      v10[3] = &unk_1E74E4270;
      v11 = v5;
      v7 = v5;
      [v6 _cn_each:v10];
      [(CNUINavigationListItem *)v7 setItems:v6];
      [(CNUINavigationListItem *)v7 setShouldDisplayInline:1];
      v12[0] = v4;
      v12[1] = v7;
      v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:2];
    }
  }

  else
  {
    v8 = MEMORY[0x1E695E0F0];
  }

  return v8;
}

+ (id)parentListItemTitleForUserAction:(id)a3 displayNonDefaultAppsMenuTitle:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  v6 = [v5 type];
  if ([v6 isEqualToString:*MEMORY[0x1E695C150]])
  {
    v7 = [v5 bundleIdentifier];
    v8 = [v7 isEqualToString:*MEMORY[0x1E695C118]];

    if (v8)
    {
      v9 = CNContactsUIBundle();
      v10 = [v9 localizedStringForKey:@"PHONE_ACTION_FACETIME_AUDIO" value:&stru_1F0CE7398 table:@"Localized"];

      goto LABEL_13;
    }
  }

  if ([v6 isEqualToString:*MEMORY[0x1E695C170]])
  {
    v11 = &stru_1F0CE7398;
    v12 = @"Mail";
LABEL_8:
    if (v4)
    {
      v11 = v12;
    }

    v13 = v11;
    goto LABEL_12;
  }

  if ([v6 isEqualToString:*MEMORY[0x1E695C188]])
  {
    v11 = &stru_1F0CE7398;
    v12 = @"Pay";
    goto LABEL_8;
  }

  v13 = [v5 applicationName];
LABEL_12:
  v10 = v13;
LABEL_13:

  return v10;
}

+ (id)navigationListItemsForUserActionListModel:(id)a3 displayDefaultAppsSectionedMenus:(BOOL)a4 displayNonDefaultAppsMenuTitle:(BOOL)a5
{
  v5 = a4;
  v54[1] = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = [MEMORY[0x1E695DF70] array];
  v45 = [MEMORY[0x1E695DF90] dictionary];
  v9 = [v7 actions];
  v10 = [v7 defaultAction];

  v42 = v7;
  v41 = v5;
  if (v10)
  {
    v11 = [v7 defaultAction];
    v12 = v11;
    if (v5)
    {
      v13 = [a1 itemForActionItem:v11 usePropertyLabel:0];
      [v8 addObject:v13];

LABEL_5:
      v14 = 1;
      goto LABEL_8;
    }

    v54[0] = v11;
    v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v54 count:1];
    v16 = [v15 arrayByAddingObjectsFromArray:v9];

    v9 = v16;
  }

  else if (v5)
  {
    goto LABEL_5;
  }

  v17 = [v9 _cn_map:&__block_literal_global_32231];
  v18 = [v17 _cn_distinctObjects];

  v14 = [v18 count] != 1;
LABEL_8:
  v49 = 0u;
  v50 = 0u;
  v47 = 0u;
  v48 = 0u;
  obj = v9;
  v19 = [obj countByEnumeratingWithState:&v47 objects:v53 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v48;
    do
    {
      v22 = 0;
      v44 = v20;
      do
      {
        if (*v48 != v21)
        {
          objc_enumerationMutation(obj);
        }

        v23 = *(*(&v47 + 1) + 8 * v22);
        v24 = [a1 itemForActionItem:v23 usePropertyLabel:1];
        v25 = [v23 bundleIdentifier];
        if (!v25)
        {
          v29 = CNUILogContactCard();
          if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
          {
            *buf = 138543362;
            v52 = v23;
            _os_log_error_impl(&dword_199A75000, v29, OS_LOG_TYPE_ERROR, "[CNUINavigationListItem+CNUIUserActionModel] Item has nil bundleIdentifier, cannot group it. Falling back to ungrouped action item for: %{public}@", buf, 0xCu);
          }

LABEL_21:
          [v8 addObject:v24];
          goto LABEL_25;
        }

        if (!v14)
        {
          goto LABEL_21;
        }

        v26 = v21;
        v27 = [v45 objectForKeyedSubscript:v25];
        if (!v27)
        {
          if (a5)
          {
            v28 = 1;
          }

          else
          {
            v30 = [v42 defaultAction];
            v28 = v30 != 0;
          }

          v31 = [a1 parentListItemTitleForUserAction:v23 displayNonDefaultAppsMenuTitle:v28];
          v27 = [[CNUINavigationListItem alloc] initWithTitle:v31];
          [(CNUINavigationListItem *)v27 setIdentifier:v25];
          [(CNUINavigationListItem *)v27 setItems:MEMORY[0x1E695E0F0]];
          [v8 addObject:v27];
          [v45 setObject:v27 forKeyedSubscript:v25];
        }

        [v24 setParent:v27];
        v32 = [(CNUINavigationListItem *)v27 items];
        [v32 arrayByAddingObject:v24];
        v33 = a1;
        v34 = v14;
        v36 = v35 = v8;
        [(CNUINavigationListItem *)v27 setItems:v36];

        v8 = v35;
        v14 = v34;
        a1 = v33;

        v21 = v26;
        v20 = v44;
LABEL_25:

        ++v22;
      }

      while (v20 != v22);
      v20 = [obj countByEnumeratingWithState:&v47 objects:v53 count:16];
    }

    while (v20);
  }

  if (v41 && (([v42 hasDefaultApp] & 1) != 0 || (objc_msgSend(v42, "defaultAction"), v37 = objc_claimAutoreleasedReturnValue(), v37, v37)))
  {
    v38 = [a1 bisectionTopLevelListItems:v8];
    v39 = [v38 copy];
  }

  else
  {
    v39 = [v8 copy];
  }

  return v39;
}

__CFString *__153__CNUINavigationListItem_CNUIUserActionModel__navigationListItemsForUserActionListModel_displayDefaultAppsSectionedMenus_displayNonDefaultAppsMenuTitle___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 bundleIdentifier];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v4 = &stru_1F0CE7398;
  }

  v5 = v4;

  return v4;
}

+ (id)filterNavigationListItemsForUserActionListModel:(id)a3 forBundleIdentifier:(id)a4
{
  v29[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [MEMORY[0x1E695DF70] array];
  v9 = [v6 actions];
  v10 = [v6 defaultAction];

  if (v10)
  {
    v11 = [v6 defaultAction];
    v29[0] = v11;
    v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v29 count:1];
    v13 = [v12 arrayByAddingObjectsFromArray:v9];

    v9 = v13;
  }

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v14 = v9;
  v15 = [v14 countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v25;
    do
    {
      for (i = 0; i != v16; ++i)
      {
        if (*v25 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v19 = *(*(&v24 + 1) + 8 * i);
        v20 = [v19 bundleIdentifier];

        if (v20 == v7)
        {
          v21 = [a1 itemForActionItem:v19 usePropertyLabel:1];
          [v8 addObject:v21];
        }
      }

      v16 = [v14 countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v16);
  }

  v22 = [v8 copy];

  return v22;
}

+ (id)localizedLabelForActionItem:(id)a3 usePropertyLabel:(BOOL)a4
{
  v5 = a3;
  v6 = v5;
  if (a4)
  {
    v7 = [v5 contactProperty];
    v8 = [v7 label];
  }

  else
  {
    v8 = [v5 label];
  }

  v9 = MEMORY[0x1E695CEE0];
  v10 = [v6 contactProperty];
  v11 = [v10 key];
  v12 = [v9 localizedDisplayStringForLabel:v8 propertyName:v11];

  v13 = [v6 type];
  LODWORD(v11) = [v13 isEqualToString:*MEMORY[0x1E695C1A8]];

  if (!v11)
  {
    v17 = [v6 type];
    v18 = [v17 isEqualToString:*MEMORY[0x1E695C190]];

    if (!v18)
    {
      goto LABEL_15;
    }

    if ((*(*MEMORY[0x1E6996568] + 16))())
    {
      v14 = CNContactsUIBundle();
      v15 = v14;
      v16 = @"TTY_NO_LABEL";
      goto LABEL_10;
    }

    v20 = MEMORY[0x1E696AEC0];
    v21 = CNContactsUIBundle();
    v15 = v21;
    v22 = @"TTY_LABEL_SUFFIX";
LABEL_13:
    v23 = [v21 localizedStringForKey:v22 value:&stru_1F0CE7398 table:@"Localized"];
    v19 = [v20 stringWithFormat:v23, v12];

    v12 = v23;
    goto LABEL_14;
  }

  if (((*(*MEMORY[0x1E6996568] + 16))() & 1) == 0)
  {
    v20 = MEMORY[0x1E696AEC0];
    v21 = CNContactsUIBundle();
    v15 = v21;
    v22 = @"TTYRELAY_LABEL_SUFFIX";
    goto LABEL_13;
  }

  v14 = CNContactsUIBundle();
  v15 = v14;
  v16 = @"TTYRELAY_NO_LABEL";
LABEL_10:
  v19 = [v14 localizedStringForKey:v16 value:&stru_1F0CE7398 table:@"Localized"];
LABEL_14:

  v12 = v19;
LABEL_15:

  return v12;
}

+ (id)navigationListItemForContactProperty:(id)a3
{
  v5 = a3;
  v6 = [CNUINavigationListItem alloc];
  v7 = MEMORY[0x1E695CEE0];
  v8 = [v5 label];
  v9 = [v5 key];
  v10 = [v7 localizedDisplayStringForLabel:v8 propertyName:v9];
  v11 = [(CNUINavigationListItem *)v6 initWithTitle:v10];

  v12 = [v5 value];
  objc_opt_class();
  LOBYTE(v8) = objc_opt_isKindOfClass();

  if (v8)
  {
    v13 = [v5 value];
  }

  else
  {
    v14 = [v5 key];
    v15 = [v14 isEqualToString:*MEMORY[0x1E695C330]];

    if (v15)
    {
      v16 = [v5 value];
      v13 = [v16 formattedStringValue];
    }

    else
    {
      v13 = 0;
    }
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v18 = [MEMORY[0x1E696AAA8] currentHandler];
    [v18 handleFailureInMethod:a2 object:a1 file:@"CNUINavigationListItem+CNContactProperty.m" lineNumber:28 description:{@"Value is not a string, not supported"}];
  }

  [(CNUINavigationListItem *)v11 setSubtitle:v13];
  [(CNUINavigationListItem *)v11 setContent:v5];

  return v11;
}

- (CNUINavigationListItem)defaultItem
{
  WeakRetained = objc_loadWeakRetained(&self->_defaultItem);

  return WeakRetained;
}

- (CNUINavigationListItem)parent
{
  WeakRetained = objc_loadWeakRetained(&self->_parent);

  return WeakRetained;
}

- (CNUINavigationListItem)initWithTitle:(id)a3 image:(id)a4
{
  v6 = a3;
  v7 = a4;
  v15.receiver = self;
  v15.super_class = CNUINavigationListItem;
  v8 = [(CNUINavigationListItem *)&v15 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_image, a4);
    items = v9->_items;
    v9->_items = 0;

    v11 = [v6 copy];
    title = v9->_title;
    v9->_title = v11;

    subtitle = v9->_subtitle;
    v9->_subtitle = 0;
  }

  return v9;
}

@end