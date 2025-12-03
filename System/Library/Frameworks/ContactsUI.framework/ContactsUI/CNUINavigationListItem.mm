@interface CNUINavigationListItem
+ (id)bisectionTopLevelListItems:(id)items;
+ (id)filterNavigationListItemsForUserActionListModel:(id)model forBundleIdentifier:(id)identifier;
+ (id)itemForActionItem:(id)item usePropertyLabel:(BOOL)label;
+ (id)localizedLabelForActionItem:(id)item usePropertyLabel:(BOOL)label;
+ (id)navigationListItemForContactProperty:(id)property;
+ (id)navigationListItemsForUserActionListModel:(id)model displayDefaultAppsSectionedMenus:(BOOL)menus displayNonDefaultAppsMenuTitle:(BOOL)title;
+ (id)parentListItemTitleForUserAction:(id)action displayNonDefaultAppsMenuTitle:(BOOL)title;
- (CNUINavigationListItem)defaultItem;
- (CNUINavigationListItem)initWithTitle:(id)title image:(id)image;
- (CNUINavigationListItem)parent;
@end

@implementation CNUINavigationListItem

+ (id)itemForActionItem:(id)item usePropertyLabel:(BOOL)label
{
  labelCopy = label;
  itemCopy = item;
  v7 = [self localizedLabelForActionItem:itemCopy usePropertyLabel:labelCopy];
  v8 = [[CNUINavigationListItem alloc] initWithTitle:v7];
  targetHandle = [itemCopy targetHandle];
  [(CNUINavigationListItem *)v8 setSubtitle:targetHandle];

  [(CNUINavigationListItem *)v8 setContent:itemCopy];

  return v8;
}

+ (id)bisectionTopLevelListItems:(id)items
{
  v13[1] = *MEMORY[0x1E69E9840];
  itemsCopy = items;
  if ([itemsCopy count])
  {
    firstObject = [itemsCopy firstObject];
    [firstObject setShouldDisplayInline:1];
    if ([itemsCopy count] <= 1)
    {
      v13[0] = firstObject;
      v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:1];
    }

    else
    {
      v5 = objc_alloc_init(CNUINavigationListItem);
      v6 = [itemsCopy _cn_takeLast:{objc_msgSend(itemsCopy, "count") - 1}];
      v10[0] = MEMORY[0x1E69E9820];
      v10[1] = 3221225472;
      v10[2] = __74__CNUINavigationListItem_CNUIUserActionModel__bisectionTopLevelListItems___block_invoke;
      v10[3] = &unk_1E74E4270;
      v11 = v5;
      v7 = v5;
      [v6 _cn_each:v10];
      [(CNUINavigationListItem *)v7 setItems:v6];
      [(CNUINavigationListItem *)v7 setShouldDisplayInline:1];
      v12[0] = firstObject;
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

+ (id)parentListItemTitleForUserAction:(id)action displayNonDefaultAppsMenuTitle:(BOOL)title
{
  titleCopy = title;
  actionCopy = action;
  type = [actionCopy type];
  if ([type isEqualToString:*MEMORY[0x1E695C150]])
  {
    bundleIdentifier = [actionCopy bundleIdentifier];
    v8 = [bundleIdentifier isEqualToString:*MEMORY[0x1E695C118]];

    if (v8)
    {
      v9 = CNContactsUIBundle();
      v10 = [v9 localizedStringForKey:@"PHONE_ACTION_FACETIME_AUDIO" value:&stru_1F0CE7398 table:@"Localized"];

      goto LABEL_13;
    }
  }

  if ([type isEqualToString:*MEMORY[0x1E695C170]])
  {
    v11 = &stru_1F0CE7398;
    v12 = @"Mail";
LABEL_8:
    if (titleCopy)
    {
      v11 = v12;
    }

    applicationName = v11;
    goto LABEL_12;
  }

  if ([type isEqualToString:*MEMORY[0x1E695C188]])
  {
    v11 = &stru_1F0CE7398;
    v12 = @"Pay";
    goto LABEL_8;
  }

  applicationName = [actionCopy applicationName];
LABEL_12:
  v10 = applicationName;
LABEL_13:

  return v10;
}

+ (id)navigationListItemsForUserActionListModel:(id)model displayDefaultAppsSectionedMenus:(BOOL)menus displayNonDefaultAppsMenuTitle:(BOOL)title
{
  menusCopy = menus;
  v54[1] = *MEMORY[0x1E69E9840];
  modelCopy = model;
  array = [MEMORY[0x1E695DF70] array];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  actions = [modelCopy actions];
  defaultAction = [modelCopy defaultAction];

  v42 = modelCopy;
  v41 = menusCopy;
  if (defaultAction)
  {
    defaultAction2 = [modelCopy defaultAction];
    v12 = defaultAction2;
    if (menusCopy)
    {
      v13 = [self itemForActionItem:defaultAction2 usePropertyLabel:0];
      [array addObject:v13];

LABEL_5:
      v14 = 1;
      goto LABEL_8;
    }

    v54[0] = defaultAction2;
    v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v54 count:1];
    v16 = [v15 arrayByAddingObjectsFromArray:actions];

    actions = v16;
  }

  else if (menusCopy)
  {
    goto LABEL_5;
  }

  v17 = [actions _cn_map:&__block_literal_global_32231];
  _cn_distinctObjects = [v17 _cn_distinctObjects];

  v14 = [_cn_distinctObjects count] != 1;
LABEL_8:
  v49 = 0u;
  v50 = 0u;
  v47 = 0u;
  v48 = 0u;
  obj = actions;
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
        v24 = [self itemForActionItem:v23 usePropertyLabel:1];
        bundleIdentifier = [v23 bundleIdentifier];
        if (!bundleIdentifier)
        {
          v29 = CNUILogContactCard();
          if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
          {
            *buf = 138543362;
            v52 = v23;
            _os_log_error_impl(&dword_199A75000, v29, OS_LOG_TYPE_ERROR, "[CNUINavigationListItem+CNUIUserActionModel] Item has nil bundleIdentifier, cannot group it. Falling back to ungrouped action item for: %{public}@", buf, 0xCu);
          }

LABEL_21:
          [array addObject:v24];
          goto LABEL_25;
        }

        if (!v14)
        {
          goto LABEL_21;
        }

        v26 = v21;
        v27 = [dictionary objectForKeyedSubscript:bundleIdentifier];
        if (!v27)
        {
          if (title)
          {
            v28 = 1;
          }

          else
          {
            defaultAction3 = [v42 defaultAction];
            v28 = defaultAction3 != 0;
          }

          v31 = [self parentListItemTitleForUserAction:v23 displayNonDefaultAppsMenuTitle:v28];
          v27 = [[CNUINavigationListItem alloc] initWithTitle:v31];
          [(CNUINavigationListItem *)v27 setIdentifier:bundleIdentifier];
          [(CNUINavigationListItem *)v27 setItems:MEMORY[0x1E695E0F0]];
          [array addObject:v27];
          [dictionary setObject:v27 forKeyedSubscript:bundleIdentifier];
        }

        [v24 setParent:v27];
        items = [(CNUINavigationListItem *)v27 items];
        [items arrayByAddingObject:v24];
        selfCopy = self;
        v34 = v14;
        v36 = v35 = array;
        [(CNUINavigationListItem *)v27 setItems:v36];

        array = v35;
        v14 = v34;
        self = selfCopy;

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
    v38 = [self bisectionTopLevelListItems:array];
    v39 = [v38 copy];
  }

  else
  {
    v39 = [array copy];
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

+ (id)filterNavigationListItemsForUserActionListModel:(id)model forBundleIdentifier:(id)identifier
{
  v29[1] = *MEMORY[0x1E69E9840];
  modelCopy = model;
  identifierCopy = identifier;
  array = [MEMORY[0x1E695DF70] array];
  actions = [modelCopy actions];
  defaultAction = [modelCopy defaultAction];

  if (defaultAction)
  {
    defaultAction2 = [modelCopy defaultAction];
    v29[0] = defaultAction2;
    v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v29 count:1];
    v13 = [v12 arrayByAddingObjectsFromArray:actions];

    actions = v13;
  }

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v14 = actions;
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
        bundleIdentifier = [v19 bundleIdentifier];

        if (bundleIdentifier == identifierCopy)
        {
          v21 = [self itemForActionItem:v19 usePropertyLabel:1];
          [array addObject:v21];
        }
      }

      v16 = [v14 countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v16);
  }

  v22 = [array copy];

  return v22;
}

+ (id)localizedLabelForActionItem:(id)item usePropertyLabel:(BOOL)label
{
  itemCopy = item;
  v6 = itemCopy;
  if (label)
  {
    contactProperty = [itemCopy contactProperty];
    label = [contactProperty label];
  }

  else
  {
    label = [itemCopy label];
  }

  v9 = MEMORY[0x1E695CEE0];
  contactProperty2 = [v6 contactProperty];
  v11 = [contactProperty2 key];
  v12 = [v9 localizedDisplayStringForLabel:label propertyName:v11];

  type = [v6 type];
  LODWORD(v11) = [type isEqualToString:*MEMORY[0x1E695C1A8]];

  if (!v11)
  {
    type2 = [v6 type];
    v18 = [type2 isEqualToString:*MEMORY[0x1E695C190]];

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

+ (id)navigationListItemForContactProperty:(id)property
{
  propertyCopy = property;
  v6 = [CNUINavigationListItem alloc];
  v7 = MEMORY[0x1E695CEE0];
  label = [propertyCopy label];
  v9 = [propertyCopy key];
  v10 = [v7 localizedDisplayStringForLabel:label propertyName:v9];
  v11 = [(CNUINavigationListItem *)v6 initWithTitle:v10];

  value = [propertyCopy value];
  objc_opt_class();
  LOBYTE(label) = objc_opt_isKindOfClass();

  if (label)
  {
    value2 = [propertyCopy value];
  }

  else
  {
    v14 = [propertyCopy key];
    v15 = [v14 isEqualToString:*MEMORY[0x1E695C330]];

    if (v15)
    {
      value3 = [propertyCopy value];
      value2 = [value3 formattedStringValue];
    }

    else
    {
      value2 = 0;
    }
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"CNUINavigationListItem+CNContactProperty.m" lineNumber:28 description:{@"Value is not a string, not supported"}];
  }

  [(CNUINavigationListItem *)v11 setSubtitle:value2];
  [(CNUINavigationListItem *)v11 setContent:propertyCopy];

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

- (CNUINavigationListItem)initWithTitle:(id)title image:(id)image
{
  titleCopy = title;
  imageCopy = image;
  v15.receiver = self;
  v15.super_class = CNUINavigationListItem;
  v8 = [(CNUINavigationListItem *)&v15 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_image, image);
    items = v9->_items;
    v9->_items = 0;

    v11 = [titleCopy copy];
    title = v9->_title;
    v9->_title = v11;

    subtitle = v9->_subtitle;
    v9->_subtitle = 0;
  }

  return v9;
}

@end