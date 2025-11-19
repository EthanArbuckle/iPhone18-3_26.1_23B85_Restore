@interface CNContactActionsController
+ (id)descriptorForRequiredKeys;
- (CNContactActionsController)initWithContact:(id)a3 actionTypes:(id)a4;
- (CNContactActionsController)initWithContact:(id)a3 dataSource:(id)a4 actionTypes:(id)a5;
- (CNContactActionsControllerDelegate)delegate;
- (CNUINavigationListStyle)navigationListStyle;
- (UIViewController)viewController;
- (id)actionForItem:(id)a3 withImage:(id)a4;
- (id)defaultActionForActionType:(id)a3;
- (id)imageForActionType:(id)a3;
- (id)modelForActionType:(id)a3;
- (id)navigationListItemForUserActionType:(id)a3;
- (void)cancelModels;
- (void)dealloc;
- (void)generateMenuForItem:(id)a3 image:(id)a4 withCurrentList:(id)a5;
- (void)navigationListController:(id)a3 didSelectItem:(id)a4;
- (void)prepareNavigationListItems;
- (void)retrieveModels;
- (void)setActionsOrder:(int64_t)a3;
- (void)setNavigationListStyle:(id)a3;
- (void)styleUpdated;
@end

@implementation CNContactActionsController

+ (id)descriptorForRequiredKeys
{
  v8[1] = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E695CD58];
  v3 = [MEMORY[0x1E6996BE8] descriptorForRequiredKeys];
  v8[0] = v3;
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:1];
  v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"+[CNContactActionsController descriptorForRequiredKeys]"];
  v6 = [v2 descriptorWithKeyDescriptors:v4 description:v5];

  return v6;
}

- (CNUINavigationListStyle)navigationListStyle
{
  WeakRetained = objc_loadWeakRetained(&self->_navigationListStyle);

  return WeakRetained;
}

- (CNContactActionsControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (id)actionForItem:(id)a3 withImage:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 title];
  v9 = MEMORY[0x1E69DC628];
  v10 = v7;
  if (!v7)
  {
    v10 = [v6 image];
  }

  v15 = MEMORY[0x1E69E9820];
  v16 = 3221225472;
  v17 = __54__CNContactActionsController_actionForItem_withImage___block_invoke;
  v18 = &unk_1E74E7808;
  v19 = v6;
  v20 = self;
  v11 = v6;
  v12 = [v9 actionWithTitle:v8 image:v10 identifier:0 handler:&v15];
  if (!v7)
  {
  }

  v13 = [v11 subtitle];
  [v12 setSubtitle:v13];

  return v12;
}

void __54__CNContactActionsController_actionForItem_withImage___block_invoke(uint64_t a1)
{
  objc_opt_class();
  v8 = [*(a1 + 32) content];
  if (objc_opt_isKindOfClass())
  {
    v2 = v8;
  }

  else
  {
    v2 = 0;
  }

  v3 = v2;

  if (!v3)
  {
    objc_opt_class();
    v4 = [*(a1 + 32) defaultItem];
    v5 = [v4 content];
    if (objc_opt_isKindOfClass())
    {
      v6 = v5;
    }

    else
    {
      v6 = 0;
    }

    v8 = v6;
  }

  v7 = [*(a1 + 40) delegate];
  [v7 contactActionsController:*(a1 + 40) didSelectAction:v8];
}

- (void)generateMenuForItem:(id)a3 image:(id)a4 withCurrentList:(id)a5
{
  v38 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [v8 items];

  if (v11)
  {
    v31 = v10;
    v32 = v9;
    v12 = objc_opt_new();
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    v13 = [v8 items];
    v14 = [v13 countByEnumeratingWithState:&v33 objects:v37 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v34;
      do
      {
        for (i = 0; i != v15; ++i)
        {
          if (*v34 != v16)
          {
            objc_enumerationMutation(v13);
          }

          v18 = *(*(&v33 + 1) + 8 * i);
          if ([(CNContactActionsController *)self displayMenuIconAtTopLevel])
          {
            v19 = 0;
          }

          else
          {
            v20 = [v8 image];
            v21 = v8;
            v22 = v20;
            v23 = v32;
            if (v20)
            {
              v23 = v20;
            }

            v19 = v23;

            v8 = v21;
          }

          [(CNContactActionsController *)self generateMenuForItem:v18 image:v19 withCurrentList:v12];
        }

        v15 = [v13 countByEnumeratingWithState:&v33 objects:v37 count:16];
      }

      while (v15);
    }

    if ([(CNContactActionsController *)self displayMenuIconAtTopLevel])
    {
      v24 = [v8 image];
    }

    else
    {
      v24 = 0;
    }

    v10 = v31;
    v9 = v32;
    v27 = [v8 shouldDisplayInline];
    v28 = MEMORY[0x1E69DCC60];
    v29 = [v8 title];
    v30 = [v28 menuWithTitle:v29 image:v24 identifier:0 options:v27 children:v12];

    [v10 addObject:v30];
  }

  else
  {
    v25 = [v8 image];
    v12 = v25;
    if (v25)
    {
      v26 = v25;
    }

    else
    {
      v26 = v9;
    }

    v24 = [(CNContactActionsController *)self actionForItem:v8 withImage:v26];
    [v10 addObject:v24];
  }
}

- (void)prepareNavigationListItems
{
  v49 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF70] array];
  v4 = [(CNContactActionsController *)self actionTypes];
  v46[0] = MEMORY[0x1E69E9820];
  v46[1] = 3221225472;
  v46[2] = __56__CNContactActionsController_prepareNavigationListItems__block_invoke;
  v46[3] = &unk_1E74E5A18;
  v46[4] = self;
  v5 = [v4 _cn_filter:v46];

  v6 = v5;
  v7 = v6;
  if ([(CNContactActionsController *)self actionsOrder]== 1)
  {
    v8 = [v6 reverseObjectEnumerator];
    v7 = [v8 allObjects];
  }

  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  v9 = v7;
  v10 = [v9 countByEnumeratingWithState:&v42 objects:v48 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v43;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v43 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = [(CNContactActionsController *)self navigationListItemForUserActionType:*(*(&v42 + 1) + 8 * i)];
        [v3 addObject:v14];
      }

      v11 = [v9 countByEnumeratingWithState:&v42 objects:v48 count:16];
    }

    while (v11);
  }

  v15 = [v3 copy];
  v16 = [(CNContactActionsController *)self displayedController];
  [v16 setItems:v15];

  v17 = [v3 count];
  if (v17 == 1)
  {
    v18 = [v3 firstObject];
  }

  else
  {
    v18 = 0;
  }

  v19 = [(CNContactActionsController *)self displayedController];
  [v19 setExpandedItem:v18];

  if (v17 == 1)
  {
  }

  v20 = [(CNContactActionsController *)self delegate];
  v21 = objc_opt_respondsToSelector();

  if (v21)
  {
    v37 = v6;
    v22 = objc_opt_new();
    v38 = 0u;
    v39 = 0u;
    v40 = 0u;
    v41 = 0u;
    v23 = v3;
    v24 = [v23 countByEnumeratingWithState:&v38 objects:v47 count:16];
    if (v24)
    {
      v25 = v24;
      v26 = *v39;
      do
      {
        for (j = 0; j != v25; ++j)
        {
          if (*v39 != v26)
          {
            objc_enumerationMutation(v23);
          }

          v28 = *(*(&v38 + 1) + 8 * j);
          v29 = [v28 image];
          [(CNContactActionsController *)self generateMenuForItem:v28 image:v29 withCurrentList:v22];
        }

        v25 = [v23 countByEnumeratingWithState:&v38 objects:v47 count:16];
      }

      while (v25);
    }

    if ([v22 count] == 1)
    {
      v30 = [v22 firstObject];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      v6 = v37;
      if (isKindOfClass)
      {
        v32 = [v22 firstObject];
        v33 = [v32 children];
        v34 = [v33 mutableCopy];

        v22 = v34;
      }
    }

    else
    {
      v6 = v37;
    }

    v35 = [(CNContactActionsController *)self delegate];
    v36 = [v22 copy];
    [v35 contactActionsController:self didUpdateWithMenu:v36];
  }
}

uint64_t __56__CNContactActionsController_prepareNavigationListItems__block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = [*(a1 + 32) modelForActionType:a2];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 isEmpty] ^ 1;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)navigationListItemForUserActionType:(id)a3
{
  v47 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(CNContactActionsController *)self imageForActionType:v4];
  v6 = [(CNContactActionsController *)self actionsDataSource];
  v7 = [v6 consumer:self localizedDisplayNameForActionType:v4];

  v8 = [[CNUINavigationListItem alloc] initWithTitle:v7 image:v5];
  [(CNUINavigationListItem *)v8 setIdentifier:v4];
  v9 = [(CNContactActionsController *)self modelForActionType:v4];
  if ([(CNContactActionsController *)self generateFaceTimeListItemsOnly])
  {
    v10 = [CNUINavigationListItem faceTimeNavigationListItemsForUserActionListModel:v9];
    [(CNUINavigationListItem *)v8 setItems:v10];
LABEL_6:

    goto LABEL_27;
  }

  if ([(CNContactActionsController *)self generateDefaultAppListItemsOnly])
  {
    v11 = [(CNContactActionsController *)self defaultAppBundleIdentifier];

    if (!v11)
    {
      v36 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"parameter ‘self.defaultAppBundleIdentifier’ must be nonnull" userInfo:0];
      objc_exception_throw(v36);
    }

    v10 = [(CNContactActionsController *)self defaultAppBundleIdentifier];
    v12 = [CNUINavigationListItem defaultAppNavigationListItemsForUserActionListModel:v9 defaultAppBundleIdentifier:v10];
    [(CNUINavigationListItem *)v8 setItems:v12];

    goto LABEL_6;
  }

  v39 = v4;
  v13 = v9;
  if ([(CNContactActionsController *)self generateFavoritesListItemsOnly])
  {
    v14 = [v9 actions];
    v15 = [v14 _cn_filter:&__block_literal_global_10114];

    v16 = [objc_alloc(MEMORY[0x1E6996BF0]) initWithModel:v13 actions:v15];
    [(CNContactActionsController *)self setDisplayNonDefaultAppsMenuTitle:0];

    v13 = v16;
  }

  v17 = [CNUINavigationListItem navigationListItemsForUserActionListModel:v13 displayDefaultAppsSectionedMenus:[(CNContactActionsController *)self displayDefaultAppsSectionedMenus:v7] displayNonDefaultAppsMenuTitle:[(CNContactActionsController *)self displayNonDefaultAppsMenuTitle]];
  [(CNUINavigationListItem *)v8 setItems:v17];

  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  v18 = [(CNUINavigationListItem *)v8 items];
  v19 = [v18 countByEnumeratingWithState:&v42 objects:v46 count:16];
  if (!v19)
  {
    v21 = 0;
    goto LABEL_26;
  }

  v20 = v19;
  v21 = 0;
  v22 = *v43;
  do
  {
    v23 = 0;
    v41 = v20;
    do
    {
      if (*v43 != v22)
      {
        objc_enumerationMutation(v18);
      }

      v24 = *(*(&v42 + 1) + 8 * v23);
      [v24 setParent:v8];
      v25 = [v24 defaultItem];

      if (v25)
      {
        v26 = [v24 defaultItem];
LABEL_16:

        v21 = v26;
        goto LABEL_17;
      }

      v27 = [v13 defaultAction];
      if (v27)
      {
        v28 = v27;
        v29 = v18;
        v30 = v8;
        v31 = v13;
        v32 = [v13 defaultAction];
        v33 = [v24 content];

        if (v32 == v33)
        {
          v26 = v24;
          v13 = v31;
          v8 = v30;
          v18 = v29;
          v20 = v41;
          goto LABEL_16;
        }

        v13 = v31;
        v8 = v30;
        v18 = v29;
        v20 = v41;
      }

LABEL_17:
      ++v23;
    }

    while (v20 != v23);
    v34 = [v18 countByEnumeratingWithState:&v42 objects:v46 count:16];
    v20 = v34;
  }

  while (v34);
LABEL_26:

  [(CNUINavigationListItem *)v8 setDefaultItem:v21];
  v9 = v13;
  v5 = v38;
  v4 = v40;
  v7 = v37;
LABEL_27:

  return v8;
}

- (id)defaultActionForActionType:(id)a3
{
  v4 = a3;
  v5 = [(CNContactActionsController *)self modelsByActionTypes];
  v6 = [v5 objectForKeyedSubscript:v4];

  v7 = [v6 defaultAction];

  return v7;
}

- (void)navigationListController:(id)a3 didSelectItem:(id)a4
{
  v16 = a3;
  v6 = a4;
  objc_opt_class();
  v7 = [v6 content];
  if (objc_opt_isKindOfClass())
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;

  if (v9 || ((objc_opt_class(), [v6 defaultItem], v10 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v10, "content"), v7 = objc_claimAutoreleasedReturnValue(), (objc_opt_isKindOfClass() & 1) == 0) ? (v11 = 0) : (v11 = v7), v12 = v11, v7, v10, v12))
  {
    v13 = [(CNContactActionsController *)self delegate];
    [v13 contactActionsController:self didSelectAction:v7];
  }

  else
  {
    v14 = [v6 items];
    v15 = [v14 count];

    if (v15)
    {
      [v16 toggleItem:v6];
    }
  }
}

- (id)imageForActionType:(id)a3
{
  v4 = a3;
  v5 = [(CNContactActionsController *)self viewController];
  v6 = [v5 traitCollection];
  v7 = [v6 userInterfaceIdiom];

  if (v7 == 3)
  {
    v8 = [MEMORY[0x1E69DCAB8] cnui_carPlayUserActionSymbolImageForActionType:v4];
  }

  else
  {
    if ([(CNContactActionsController *)self shouldUseOutlinedActionGlyphStyle])
    {
      [MEMORY[0x1E69DCAB8] cnui_userActionOutlinedSymbolImageForActionType:v4 scale:3 withColor:0];
    }

    else
    {
      [MEMORY[0x1E69DCAB8] cnui_userActionSymbolImageForActionType:v4 scale:3 withColor:0];
    }
    v8 = ;
  }

  v9 = v8;

  return v9;
}

- (void)setActionsOrder:(int64_t)a3
{
  if (self->_actionsOrder != a3)
  {
    self->_actionsOrder = a3;
    [(CNContactActionsController *)self prepareNavigationListItems];
    v5 = [(CNContactActionsController *)self displayedController];
    [v5 reloadNavigationListView];
  }
}

- (id)modelForActionType:(id)a3
{
  v4 = a3;
  v5 = [(CNContactActionsController *)self modelsByActionTypes];
  v6 = [v5 objectForKeyedSubscript:v4];

  return v6;
}

- (void)cancelModels
{
  v2 = [(CNContactActionsController *)self modelCancelables];
  [v2 _cn_each:*MEMORY[0x1E6996470]];
}

- (void)retrieveModels
{
  [(CNContactActionsController *)self cancelModels];
  v3 = [MEMORY[0x1E695DF70] array];
  objc_initWeak(&location, self);
  v4 = [(CNContactActionsController *)self actionTypes];
  v6 = MEMORY[0x1E69E9820];
  v7 = 3221225472;
  v8 = __44__CNContactActionsController_retrieveModels__block_invoke;
  v9 = &unk_1E74E24E0;
  v10 = self;
  objc_copyWeak(&v12, &location);
  v5 = v3;
  v11 = v5;
  [v4 enumerateObjectsUsingBlock:&v6];

  [(CNContactActionsController *)self setModelCancelables:v5, v6, v7, v8, v9, v10];
  objc_destroyWeak(&v12);
  objc_destroyWeak(&location);
}

void __44__CNContactActionsController_retrieveModels__block_invoke(id *a1, void *a2)
{
  v3 = a2;
  v4 = [a1[4] actionsDataSource];
  v5 = a1[4];
  v6 = [v5 contact];
  v9 = MEMORY[0x1E69E9820];
  v10 = 3221225472;
  v11 = __44__CNContactActionsController_retrieveModels__block_invoke_2;
  v12 = &unk_1E74E6FD8;
  objc_copyWeak(&v14, a1 + 6);
  v7 = v3;
  v13 = v7;
  v8 = [v4 consumer:v5 actionModelsForContact:v6 actionType:v7 handler:&v9];

  [a1[5] addObject:{v8, v9, v10, v11, v12}];
  objc_destroyWeak(&v14);
}

void __44__CNContactActionsController_retrieveModels__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __44__CNContactActionsController_retrieveModels__block_invoke_3;
  aBlock[3] = &unk_1E74E7290;
  objc_copyWeak(&v9, (a1 + 40));
  v7 = *(a1 + 32);
  v4 = v3;
  v8 = v4;
  v5 = _Block_copy(aBlock);
  if ([MEMORY[0x1E696AF00] isMainThread])
  {
    v5[2](v5);
  }

  else
  {
    dispatch_async(MEMORY[0x1E69E96A0], v5);
  }

  objc_destroyWeak(&v9);
}

void __44__CNContactActionsController_retrieveModels__block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v2 = [WeakRetained modelsByActionTypes];
  v3 = [v2 mutableCopy];

  [v3 setObject:*(a1 + 40) forKeyedSubscript:*(a1 + 32)];
  [WeakRetained setModelsByActionTypes:v3];
  [WeakRetained prepareNavigationListItems];
  v4 = [WeakRetained displayedController];
  [v4 reloadNavigationListView];
}

- (UIViewController)viewController
{
  viewController = self->_viewController;
  if (!viewController)
  {
    v4 = objc_alloc_init(CNUINavigationListViewController);
    [(CNUINavigationListViewController *)v4 setDelegate:self];
    v5 = self->_viewController;
    self->_viewController = &v4->super;

    [(CNContactActionsController *)self retrieveModels];
    viewController = self->_viewController;
  }

  return viewController;
}

- (void)styleUpdated
{
  objc_opt_class();
  v3 = [(CNContactActionsController *)self viewController];
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;
  v6 = [(CNContactActionsController *)self navigationListStyle];
  [v5 setNavigationListStyle:v6];

  [(CNContactActionsController *)self retrieveModels];
}

- (void)setNavigationListStyle:(id)a3
{
  objc_storeWeak(&self->_navigationListStyle, a3);

  [(CNContactActionsController *)self styleUpdated];
}

- (void)dealloc
{
  [(CNContactActionsController *)self cancelModels];
  v3.receiver = self;
  v3.super_class = CNContactActionsController;
  [(CNContactActionsController *)&v3 dealloc];
}

- (CNContactActionsController)initWithContact:(id)a3 dataSource:(id)a4 actionTypes:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v18.receiver = self;
  v18.super_class = CNContactActionsController;
  v12 = [(CNContactActionsController *)&v18 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_contact, a3);
    objc_storeStrong(&v13->_actionTypes, a5);
    objc_storeStrong(&v13->_actionsDataSource, a4);
    modelsByActionTypes = v13->_modelsByActionTypes;
    v13->_modelsByActionTypes = MEMORY[0x1E695E0F8];

    v15 = +[CNUINavigationListStyleProvider defaultStyle];
    objc_storeWeak(&v13->_navigationListStyle, v15);

    v13->_displayDefaultAppsSectionedMenus = 1;
    v16 = v13;
  }

  return v13;
}

- (CNContactActionsController)initWithContact:(id)a3 actionTypes:(id)a4
{
  v6 = MEMORY[0x1E6996BE8];
  v7 = a4;
  v8 = a3;
  v9 = [v6 alloc];
  v10 = +[CNUIContactsEnvironment currentEnvironment];
  v11 = [v10 actionDiscoveringEnvironment];
  v12 = [v9 initWithDiscoveringEnvironment:v11];

  v13 = [(CNContactActionsController *)self initWithContact:v8 dataSource:v12 actionTypes:v7];
  return v13;
}

@end