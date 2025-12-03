@interface CNContactActionsController
+ (id)descriptorForRequiredKeys;
- (CNContactActionsController)initWithContact:(id)contact actionTypes:(id)types;
- (CNContactActionsController)initWithContact:(id)contact dataSource:(id)source actionTypes:(id)types;
- (CNContactActionsControllerDelegate)delegate;
- (CNUINavigationListStyle)navigationListStyle;
- (UIViewController)viewController;
- (id)actionForItem:(id)item withImage:(id)image;
- (id)defaultActionForActionType:(id)type;
- (id)imageForActionType:(id)type;
- (id)modelForActionType:(id)type;
- (id)navigationListItemForUserActionType:(id)type;
- (void)cancelModels;
- (void)dealloc;
- (void)generateMenuForItem:(id)item image:(id)image withCurrentList:(id)list;
- (void)navigationListController:(id)controller didSelectItem:(id)item;
- (void)prepareNavigationListItems;
- (void)retrieveModels;
- (void)setActionsOrder:(int64_t)order;
- (void)setNavigationListStyle:(id)style;
- (void)styleUpdated;
@end

@implementation CNContactActionsController

+ (id)descriptorForRequiredKeys
{
  v8[1] = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E695CD58];
  descriptorForRequiredKeys = [MEMORY[0x1E6996BE8] descriptorForRequiredKeys];
  v8[0] = descriptorForRequiredKeys;
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

- (id)actionForItem:(id)item withImage:(id)image
{
  itemCopy = item;
  imageCopy = image;
  title = [itemCopy title];
  v9 = MEMORY[0x1E69DC628];
  image = imageCopy;
  if (!imageCopy)
  {
    image = [itemCopy image];
  }

  v15 = MEMORY[0x1E69E9820];
  v16 = 3221225472;
  v17 = __54__CNContactActionsController_actionForItem_withImage___block_invoke;
  v18 = &unk_1E74E7808;
  v19 = itemCopy;
  selfCopy = self;
  v11 = itemCopy;
  v12 = [v9 actionWithTitle:title image:image identifier:0 handler:&v15];
  if (!imageCopy)
  {
  }

  subtitle = [v11 subtitle];
  [v12 setSubtitle:subtitle];

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

- (void)generateMenuForItem:(id)item image:(id)image withCurrentList:(id)list
{
  v38 = *MEMORY[0x1E69E9840];
  itemCopy = item;
  imageCopy = image;
  listCopy = list;
  items = [itemCopy items];

  if (items)
  {
    v31 = listCopy;
    v32 = imageCopy;
    v12 = objc_opt_new();
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    items2 = [itemCopy items];
    v14 = [items2 countByEnumeratingWithState:&v33 objects:v37 count:16];
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
            objc_enumerationMutation(items2);
          }

          v18 = *(*(&v33 + 1) + 8 * i);
          if ([(CNContactActionsController *)self displayMenuIconAtTopLevel])
          {
            v19 = 0;
          }

          else
          {
            image = [itemCopy image];
            v21 = itemCopy;
            v22 = image;
            v23 = v32;
            if (image)
            {
              v23 = image;
            }

            v19 = v23;

            itemCopy = v21;
          }

          [(CNContactActionsController *)self generateMenuForItem:v18 image:v19 withCurrentList:v12];
        }

        v15 = [items2 countByEnumeratingWithState:&v33 objects:v37 count:16];
      }

      while (v15);
    }

    if ([(CNContactActionsController *)self displayMenuIconAtTopLevel])
    {
      image2 = [itemCopy image];
    }

    else
    {
      image2 = 0;
    }

    listCopy = v31;
    imageCopy = v32;
    shouldDisplayInline = [itemCopy shouldDisplayInline];
    v28 = MEMORY[0x1E69DCC60];
    title = [itemCopy title];
    v30 = [v28 menuWithTitle:title image:image2 identifier:0 options:shouldDisplayInline children:v12];

    [listCopy addObject:v30];
  }

  else
  {
    image3 = [itemCopy image];
    v12 = image3;
    if (image3)
    {
      v26 = image3;
    }

    else
    {
      v26 = imageCopy;
    }

    image2 = [(CNContactActionsController *)self actionForItem:itemCopy withImage:v26];
    [listCopy addObject:image2];
  }
}

- (void)prepareNavigationListItems
{
  v49 = *MEMORY[0x1E69E9840];
  array = [MEMORY[0x1E695DF70] array];
  actionTypes = [(CNContactActionsController *)self actionTypes];
  v46[0] = MEMORY[0x1E69E9820];
  v46[1] = 3221225472;
  v46[2] = __56__CNContactActionsController_prepareNavigationListItems__block_invoke;
  v46[3] = &unk_1E74E5A18;
  v46[4] = self;
  v5 = [actionTypes _cn_filter:v46];

  v6 = v5;
  allObjects = v6;
  if ([(CNContactActionsController *)self actionsOrder]== 1)
  {
    reverseObjectEnumerator = [v6 reverseObjectEnumerator];
    allObjects = [reverseObjectEnumerator allObjects];
  }

  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  v9 = allObjects;
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
        [array addObject:v14];
      }

      v11 = [v9 countByEnumeratingWithState:&v42 objects:v48 count:16];
    }

    while (v11);
  }

  v15 = [array copy];
  displayedController = [(CNContactActionsController *)self displayedController];
  [displayedController setItems:v15];

  v17 = [array count];
  if (v17 == 1)
  {
    firstObject = [array firstObject];
  }

  else
  {
    firstObject = 0;
  }

  displayedController2 = [(CNContactActionsController *)self displayedController];
  [displayedController2 setExpandedItem:firstObject];

  if (v17 == 1)
  {
  }

  delegate = [(CNContactActionsController *)self delegate];
  v21 = objc_opt_respondsToSelector();

  if (v21)
  {
    v37 = v6;
    v22 = objc_opt_new();
    v38 = 0u;
    v39 = 0u;
    v40 = 0u;
    v41 = 0u;
    v23 = array;
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
          image = [v28 image];
          [(CNContactActionsController *)self generateMenuForItem:v28 image:image withCurrentList:v22];
        }

        v25 = [v23 countByEnumeratingWithState:&v38 objects:v47 count:16];
      }

      while (v25);
    }

    if ([v22 count] == 1)
    {
      firstObject2 = [v22 firstObject];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      v6 = v37;
      if (isKindOfClass)
      {
        firstObject3 = [v22 firstObject];
        children = [firstObject3 children];
        v34 = [children mutableCopy];

        v22 = v34;
      }
    }

    else
    {
      v6 = v37;
    }

    delegate2 = [(CNContactActionsController *)self delegate];
    v36 = [v22 copy];
    [delegate2 contactActionsController:self didUpdateWithMenu:v36];
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

- (id)navigationListItemForUserActionType:(id)type
{
  v47 = *MEMORY[0x1E69E9840];
  typeCopy = type;
  v5 = [(CNContactActionsController *)self imageForActionType:typeCopy];
  actionsDataSource = [(CNContactActionsController *)self actionsDataSource];
  v7 = [actionsDataSource consumer:self localizedDisplayNameForActionType:typeCopy];

  v8 = [[CNUINavigationListItem alloc] initWithTitle:v7 image:v5];
  [(CNUINavigationListItem *)v8 setIdentifier:typeCopy];
  v9 = [(CNContactActionsController *)self modelForActionType:typeCopy];
  if ([(CNContactActionsController *)self generateFaceTimeListItemsOnly])
  {
    defaultAppBundleIdentifier2 = [CNUINavigationListItem faceTimeNavigationListItemsForUserActionListModel:v9];
    [(CNUINavigationListItem *)v8 setItems:defaultAppBundleIdentifier2];
LABEL_6:

    goto LABEL_27;
  }

  if ([(CNContactActionsController *)self generateDefaultAppListItemsOnly])
  {
    defaultAppBundleIdentifier = [(CNContactActionsController *)self defaultAppBundleIdentifier];

    if (!defaultAppBundleIdentifier)
    {
      v36 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"parameter ‘self.defaultAppBundleIdentifier’ must be nonnull" userInfo:0];
      objc_exception_throw(v36);
    }

    defaultAppBundleIdentifier2 = [(CNContactActionsController *)self defaultAppBundleIdentifier];
    v12 = [CNUINavigationListItem defaultAppNavigationListItemsForUserActionListModel:v9 defaultAppBundleIdentifier:defaultAppBundleIdentifier2];
    [(CNUINavigationListItem *)v8 setItems:v12];

    goto LABEL_6;
  }

  v39 = typeCopy;
  v13 = v9;
  if ([(CNContactActionsController *)self generateFavoritesListItemsOnly])
  {
    actions = [v9 actions];
    v15 = [actions _cn_filter:&__block_literal_global_10114];

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
  items = [(CNUINavigationListItem *)v8 items];
  v19 = [items countByEnumeratingWithState:&v42 objects:v46 count:16];
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
        objc_enumerationMutation(items);
      }

      v24 = *(*(&v42 + 1) + 8 * v23);
      [v24 setParent:v8];
      defaultItem = [v24 defaultItem];

      if (defaultItem)
      {
        defaultItem2 = [v24 defaultItem];
LABEL_16:

        v21 = defaultItem2;
        goto LABEL_17;
      }

      defaultAction = [v13 defaultAction];
      if (defaultAction)
      {
        v28 = defaultAction;
        v29 = items;
        v30 = v8;
        v31 = v13;
        defaultAction2 = [v13 defaultAction];
        content = [v24 content];

        if (defaultAction2 == content)
        {
          defaultItem2 = v24;
          v13 = v31;
          v8 = v30;
          items = v29;
          v20 = v41;
          goto LABEL_16;
        }

        v13 = v31;
        v8 = v30;
        items = v29;
        v20 = v41;
      }

LABEL_17:
      ++v23;
    }

    while (v20 != v23);
    v34 = [items countByEnumeratingWithState:&v42 objects:v46 count:16];
    v20 = v34;
  }

  while (v34);
LABEL_26:

  [(CNUINavigationListItem *)v8 setDefaultItem:v21];
  v9 = v13;
  v5 = v38;
  typeCopy = v40;
  v7 = v37;
LABEL_27:

  return v8;
}

- (id)defaultActionForActionType:(id)type
{
  typeCopy = type;
  modelsByActionTypes = [(CNContactActionsController *)self modelsByActionTypes];
  v6 = [modelsByActionTypes objectForKeyedSubscript:typeCopy];

  defaultAction = [v6 defaultAction];

  return defaultAction;
}

- (void)navigationListController:(id)controller didSelectItem:(id)item
{
  controllerCopy = controller;
  itemCopy = item;
  objc_opt_class();
  content = [itemCopy content];
  if (objc_opt_isKindOfClass())
  {
    v8 = content;
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;

  if (v9 || ((objc_opt_class(), [itemCopy defaultItem], v10 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v10, "content"), content = objc_claimAutoreleasedReturnValue(), (objc_opt_isKindOfClass() & 1) == 0) ? (v11 = 0) : (v11 = content), v12 = v11, content, v10, v12))
  {
    delegate = [(CNContactActionsController *)self delegate];
    [delegate contactActionsController:self didSelectAction:content];
  }

  else
  {
    items = [itemCopy items];
    v15 = [items count];

    if (v15)
    {
      [controllerCopy toggleItem:itemCopy];
    }
  }
}

- (id)imageForActionType:(id)type
{
  typeCopy = type;
  viewController = [(CNContactActionsController *)self viewController];
  traitCollection = [viewController traitCollection];
  userInterfaceIdiom = [traitCollection userInterfaceIdiom];

  if (userInterfaceIdiom == 3)
  {
    v8 = [MEMORY[0x1E69DCAB8] cnui_carPlayUserActionSymbolImageForActionType:typeCopy];
  }

  else
  {
    if ([(CNContactActionsController *)self shouldUseOutlinedActionGlyphStyle])
    {
      [MEMORY[0x1E69DCAB8] cnui_userActionOutlinedSymbolImageForActionType:typeCopy scale:3 withColor:0];
    }

    else
    {
      [MEMORY[0x1E69DCAB8] cnui_userActionSymbolImageForActionType:typeCopy scale:3 withColor:0];
    }
    v8 = ;
  }

  v9 = v8;

  return v9;
}

- (void)setActionsOrder:(int64_t)order
{
  if (self->_actionsOrder != order)
  {
    self->_actionsOrder = order;
    [(CNContactActionsController *)self prepareNavigationListItems];
    displayedController = [(CNContactActionsController *)self displayedController];
    [displayedController reloadNavigationListView];
  }
}

- (id)modelForActionType:(id)type
{
  typeCopy = type;
  modelsByActionTypes = [(CNContactActionsController *)self modelsByActionTypes];
  v6 = [modelsByActionTypes objectForKeyedSubscript:typeCopy];

  return v6;
}

- (void)cancelModels
{
  modelCancelables = [(CNContactActionsController *)self modelCancelables];
  [modelCancelables _cn_each:*MEMORY[0x1E6996470]];
}

- (void)retrieveModels
{
  [(CNContactActionsController *)self cancelModels];
  array = [MEMORY[0x1E695DF70] array];
  objc_initWeak(&location, self);
  actionTypes = [(CNContactActionsController *)self actionTypes];
  v6 = MEMORY[0x1E69E9820];
  v7 = 3221225472;
  v8 = __44__CNContactActionsController_retrieveModels__block_invoke;
  v9 = &unk_1E74E24E0;
  selfCopy = self;
  objc_copyWeak(&v12, &location);
  v5 = array;
  v11 = v5;
  [actionTypes enumerateObjectsUsingBlock:&v6];

  [(CNContactActionsController *)self setModelCancelables:v5, v6, v7, v8, v9, selfCopy];
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
  viewController = [(CNContactActionsController *)self viewController];
  if (objc_opt_isKindOfClass())
  {
    v4 = viewController;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;
  navigationListStyle = [(CNContactActionsController *)self navigationListStyle];
  [v5 setNavigationListStyle:navigationListStyle];

  [(CNContactActionsController *)self retrieveModels];
}

- (void)setNavigationListStyle:(id)style
{
  objc_storeWeak(&self->_navigationListStyle, style);

  [(CNContactActionsController *)self styleUpdated];
}

- (void)dealloc
{
  [(CNContactActionsController *)self cancelModels];
  v3.receiver = self;
  v3.super_class = CNContactActionsController;
  [(CNContactActionsController *)&v3 dealloc];
}

- (CNContactActionsController)initWithContact:(id)contact dataSource:(id)source actionTypes:(id)types
{
  contactCopy = contact;
  sourceCopy = source;
  typesCopy = types;
  v18.receiver = self;
  v18.super_class = CNContactActionsController;
  v12 = [(CNContactActionsController *)&v18 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_contact, contact);
    objc_storeStrong(&v13->_actionTypes, types);
    objc_storeStrong(&v13->_actionsDataSource, source);
    modelsByActionTypes = v13->_modelsByActionTypes;
    v13->_modelsByActionTypes = MEMORY[0x1E695E0F8];

    v15 = +[CNUINavigationListStyleProvider defaultStyle];
    objc_storeWeak(&v13->_navigationListStyle, v15);

    v13->_displayDefaultAppsSectionedMenus = 1;
    v16 = v13;
  }

  return v13;
}

- (CNContactActionsController)initWithContact:(id)contact actionTypes:(id)types
{
  v6 = MEMORY[0x1E6996BE8];
  typesCopy = types;
  contactCopy = contact;
  v9 = [v6 alloc];
  v10 = +[CNUIContactsEnvironment currentEnvironment];
  actionDiscoveringEnvironment = [v10 actionDiscoveringEnvironment];
  v12 = [v9 initWithDiscoveringEnvironment:actionDiscoveringEnvironment];

  v13 = [(CNContactActionsController *)self initWithContact:contactCopy dataSource:v12 actionTypes:typesCopy];
  return v13;
}

@end