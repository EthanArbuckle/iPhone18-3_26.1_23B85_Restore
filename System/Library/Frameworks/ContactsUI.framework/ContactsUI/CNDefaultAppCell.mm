@interface CNDefaultAppCell
- (BOOL)allowsCellSelection;
- (CNDefaultAppCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (CNPropertyCellDelegate)delegate;
- (id)actionViewForType:(id)type;
- (id)allModelsObservable;
- (id)constantConstraints;
- (id)defaultAction;
- (id)labelView;
- (id)variableConstraints;
- (void)contactActionsController:(id)controller didSelectAction:(id)action;
- (void)contactActionsController:(id)controller didUpdateWithMenu:(id)menu;
- (void)didPressActionView:(id)view longPress:(BOOL)press;
- (void)didSelectActionType:(id)type withSourceView:(id)view longPress:(BOOL)press;
- (void)discoverAvailableActionTypes;
- (void)loadCachedActions;
- (void)performAction:(id)action;
- (void)performDefaultAction;
- (void)processModels:(id)models;
- (void)setActionsDataSource:(id)source;
- (void)setContact:(id)contact;
- (void)setDefaultAppProvider:(id)provider;
- (void)updateHorizontalTouchAreas;
@end

@implementation CNDefaultAppCell

- (CNPropertyCellDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)contactActionsController:(id)controller didSelectAction:(id)action
{
  actionCopy = action;
  actionsControllerPresentation = [(CNDefaultAppCell *)self actionsControllerPresentation];
  presentedViewController = [actionsControllerPresentation presentedViewController];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __61__CNDefaultAppCell_contactActionsController_didSelectAction___block_invoke;
  v13[3] = &unk_1E74E6A88;
  v13[4] = self;
  [presentedViewController dismissViewControllerAnimated:1 completion:v13];

  [(CNDefaultAppCell *)self performAction:actionCopy];
  actionsController = [(CNDefaultAppCell *)self actionsController];
  actionTypes = [actionsController actionTypes];
  firstObject = [actionTypes firstObject];

  actionsDataSource = [(CNDefaultAppCell *)self actionsDataSource];
  contact = [(CNDefaultAppCell *)self contact];
  [actionsDataSource consumer:self didSelectItem:actionCopy forContact:contact actionType:firstObject];

  [(CNDefaultAppCell *)self setActionsController:0];
}

- (void)didSelectActionType:(id)type withSourceView:(id)view longPress:(BOOL)press
{
  v18[1] = *MEMORY[0x1E69E9840];
  typeCopy = type;
  v7 = [CNContactActionsController alloc];
  contact = [(CNDefaultAppCell *)self contact];
  actionsDataSource = [(CNDefaultAppCell *)self actionsDataSource];
  v18[0] = typeCopy;
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:1];

  v11 = [(CNContactActionsController *)v7 initWithContact:contact dataSource:actionsDataSource actionTypes:v10];
  [(CNDefaultAppCell *)self setActionsController:v11];

  actionsController = [(CNDefaultAppCell *)self actionsController];
  [actionsController setDelegate:self];

  defaultAppProvider = [(CNDefaultAppCell *)self defaultAppProvider];
  bundleIdentifier = [defaultAppProvider bundleIdentifier];
  actionsController2 = [(CNDefaultAppCell *)self actionsController];
  [actionsController2 setDefaultAppBundleIdentifier:bundleIdentifier];

  actionsController3 = [(CNDefaultAppCell *)self actionsController];
  [actionsController3 setGenerateDefaultAppListItemsOnly:1];

  actionsController4 = [(CNDefaultAppCell *)self actionsController];
  [actionsController4 retrieveModels];
}

- (void)contactActionsController:(id)controller didUpdateWithMenu:(id)menu
{
  v24 = *MEMORY[0x1E69E9840];
  controllerCopy = controller;
  menuCopy = menu;
  if (menuCopy && ([(CNDefaultAppCell *)self actionsController], v8 = objc_claimAutoreleasedReturnValue(), v8, v8 == controllerCopy))
  {
    actionsController = [(CNDefaultAppCell *)self actionsController];
    actionTypes = [actionsController actionTypes];
    firstObject = [actionTypes firstObject];
    v13 = [(CNDefaultAppCell *)self actionViewForType:firstObject];

    if (v13)
    {
      [v13 updateWithMenuItems:menuCopy];
      v9 = 1;
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  v14 = CNUILogContactCard();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    actionsController2 = [(CNDefaultAppCell *)self actionsController];
    actionTypes2 = [actionsController2 actionTypes];
    firstObject2 = [actionTypes2 firstObject];
    v18 = 138412802;
    v19 = firstObject2;
    v20 = 1024;
    v21 = v9;
    v22 = 2112;
    v23 = menuCopy;
    _os_log_impl(&dword_199A75000, v14, OS_LOG_TYPE_DEFAULT, "[CNDefaultAppCell contactActionsController:didUpdateWithMenu:], actionType = %@, didUpdate = %i, menuItems = %@,", &v18, 0x1Cu);
  }
}

- (void)performAction:(id)action
{
  v15 = *MEMORY[0x1E69E9840];
  actionCopy = action;
  v4 = CNUILogContactCard();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v14 = actionCopy;
    _os_log_impl(&dword_199A75000, v4, OS_LOG_TYPE_DEFAULT, "[CNDefaultAppCell performAction:], action = %@", buf, 0xCu);
  }

  v5 = objc_alloc_init(MEMORY[0x1E6996BD0]);
  v6 = [actionCopy performActionWithContext:v5];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __34__CNDefaultAppCell_performAction___block_invoke;
  v11[3] = &unk_1E74E5980;
  v7 = actionCopy;
  v12 = v7;
  [v6 addSuccessBlock:v11];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __34__CNDefaultAppCell_performAction___block_invoke_28;
  v9[3] = &unk_1E74E5200;
  v10 = v7;
  v8 = v7;
  [v6 addFailureBlock:v9];
}

void __34__CNDefaultAppCell_performAction___block_invoke(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = CNUILogContactCard();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = 138412290;
    v5 = v3;
    _os_log_impl(&dword_199A75000, v2, OS_LOG_TYPE_DEFAULT, "[CNDefaultAppCell performAction:], did perform action %@", &v4, 0xCu);
  }
}

void __34__CNDefaultAppCell_performAction___block_invoke_28(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = CNUILogContactCard();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    v3 = *(a1 + 32);
    v4 = 138412290;
    v5 = v3;
    _os_log_error_impl(&dword_199A75000, v2, OS_LOG_TYPE_ERROR, "[CNDefaultAppCell performAction:], failed to perform action %@", &v4, 0xCu);
  }
}

- (void)didPressActionView:(id)view longPress:(BOOL)press
{
  pressCopy = press;
  v35 = *MEMORY[0x1E69E9840];
  viewCopy = view;
  defaultActionPerType = [(CNDefaultAppCell *)self defaultActionPerType];
  type = [viewCopy type];
  v9 = [defaultActionPerType objectForKeyedSubscript:type];

  if (v9)
  {
    v10 = pressCopy;
  }

  else
  {
    v10 = 1;
  }

  v11 = CNUILogContactCard();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    type2 = [viewCopy type];
    v13 = @"nil";
    *buf = 138413058;
    v28 = type2;
    if (v9)
    {
      v13 = v9;
    }

    v29 = 1024;
    v30 = pressCopy;
    v31 = 1024;
    v32 = v10;
    v33 = 2112;
    v34 = v13;
    _os_log_impl(&dword_199A75000, v11, OS_LOG_TYPE_DEFAULT, "[CNDefaultAppCell, didPressActionView:longPress:], actionType = %@, longPress = %i, shouldPresentDisambiguation = %i, defaultAction = %@", buf, 0x22u);
  }

  if (v10)
  {
    v14 = [CNContactActionsController alloc];
    contact = [(CNDefaultAppCell *)self contact];
    actionsDataSource = [(CNDefaultAppCell *)self actionsDataSource];
    type3 = [viewCopy type];
    v26 = type3;
    v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v26 count:1];
    v19 = [(CNContactActionsController *)v14 initWithContact:contact dataSource:actionsDataSource actionTypes:v18];
    [(CNDefaultAppCell *)self setActionsController:v19];

    actionsController = [(CNDefaultAppCell *)self actionsController];
    [actionsController setDelegate:self];

    defaultAppProvider = [(CNDefaultAppCell *)self defaultAppProvider];
    bundleIdentifier = [defaultAppProvider bundleIdentifier];
    actionsController2 = [(CNDefaultAppCell *)self actionsController];
    [actionsController2 setDefaultAppBundleIdentifier:bundleIdentifier];

    actionsController3 = [(CNDefaultAppCell *)self actionsController];
    [actionsController3 setGenerateDefaultAppListItemsOnly:1];

    actionsController4 = [(CNDefaultAppCell *)self actionsController];
    [actionsController4 retrieveModels];
  }

  else
  {
    [(CNDefaultAppCell *)self performAction:v9];
  }
}

- (void)updateHorizontalTouchAreas
{
  rightMostView = [(CNDefaultAppCell *)self rightMostView];
  [rightMostView _setTouchInsets:{0.0, -8.0, 0.0, -16.0}];

  actionView2 = [(CNDefaultAppCell *)self actionView2];

  if (actionView2)
  {
    actionView22 = [(CNDefaultAppCell *)self actionView2];
    [actionView22 _setTouchInsets:{0.0, -8.0, 0.0, -8.0}];
  }
}

- (id)variableConstraints
{
  v25[2] = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E695DF70];
  v24.receiver = self;
  v24.super_class = CNDefaultAppCell;
  variableConstraints = [(CNLabeledCell *)&v24 variableConstraints];
  v5 = [v3 arrayWithArray:variableConstraints];

  actionView1 = [(CNDefaultAppCell *)self actionView1];
  if ([(CNDefaultAppCell *)self isDefaultAppVideoAvailable])
  {
    actionView2 = [(CNDefaultAppCell *)self actionView2];

    actionView12 = [(CNDefaultAppCell *)self actionView1];
    leadingAnchor = [actionView12 leadingAnchor];
    actionView22 = [(CNDefaultAppCell *)self actionView2];
    trailingAnchor = [actionView22 trailingAnchor];
    v8 = [leadingAnchor constraintEqualToAnchor:trailingAnchor constant:16.0];
    v25[0] = v8;
    actionView23 = [(CNDefaultAppCell *)self actionView2];
    centerYAnchor = [actionView23 centerYAnchor];
    contentView = [(CNDefaultAppCell *)self contentView];
    centerYAnchor2 = [contentView centerYAnchor];
    v13 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
    v25[1] = v13;
    v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v25 count:2];
    [v5 addObjectsFromArray:v14];

    actionView1 = actionView2;
  }

  leadingAnchor2 = [actionView1 leadingAnchor];
  defaultAppLabel = [(CNDefaultAppCell *)self defaultAppLabel];
  trailingAnchor2 = [defaultAppLabel trailingAnchor];
  v18 = [leadingAnchor2 constraintEqualToAnchor:trailingAnchor2 constant:16.0];
  [v5 addObject:v18];

  return v5;
}

- (id)constantConstraints
{
  v14[1] = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E695DF70];
  v13.receiver = self;
  v13.super_class = CNDefaultAppCell;
  constantConstraints = [(CNLabeledCell *)&v13 constantConstraints];
  v5 = [v3 arrayWithArray:constantConstraints];

  actionView1 = [(CNDefaultAppCell *)self actionView1];
  centerYAnchor = [actionView1 centerYAnchor];
  contentView = [(CNDefaultAppCell *)self contentView];
  centerYAnchor2 = [contentView centerYAnchor];
  v10 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
  v14[0] = v10;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:1];
  [v5 addObjectsFromArray:v11];

  return v5;
}

- (id)defaultAction
{
  defaultActionPerType = [(CNDefaultAppCell *)self defaultActionPerType];
  v4 = [defaultActionPerType objectForKeyedSubscript:*MEMORY[0x1E695C1B8]];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    defaultActionPerType2 = [(CNDefaultAppCell *)self defaultActionPerType];
    v6 = [defaultActionPerType2 objectForKeyedSubscript:*MEMORY[0x1E695C150]];
  }

  return v6;
}

- (void)performDefaultAction
{
  v3 = CNUILogContactCard();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_199A75000, v3, OS_LOG_TYPE_DEFAULT, "[CNDefaultAppCell performDefaultAction]", v6, 2u);
  }

  defaultAction = [(CNDefaultAppCell *)self defaultAction];
  if (defaultAction)
  {
    defaultAction2 = [(CNDefaultAppCell *)self defaultAction];
    [(CNDefaultAppCell *)self performAction:defaultAction2];
  }
}

- (BOOL)allowsCellSelection
{
  defaultAction = [(CNDefaultAppCell *)self defaultAction];
  v3 = defaultAction != 0;

  return v3;
}

- (id)labelView
{
  defaultAppLabel = self->_defaultAppLabel;
  if (!defaultAppLabel)
  {
    standardLabelView = [(CNLabeledCell *)self standardLabelView];
    v5 = self->_defaultAppLabel;
    self->_defaultAppLabel = standardLabelView;

    [(UILabel *)self->_defaultAppLabel _setWantsUnderlineForAccessibilityButtonShapesEnabled:1];
    defaultAppLabel = self->_defaultAppLabel;
  }

  return defaultAppLabel;
}

- (id)actionViewForType:(id)type
{
  typeCopy = type;
  actionView1 = [(CNDefaultAppCell *)self actionView1];
  type = [actionView1 type];

  if (type == typeCopy)
  {
    actionView12 = [(CNDefaultAppCell *)self actionView1];
  }

  else
  {
    actionView2 = [(CNDefaultAppCell *)self actionView2];
    type2 = [actionView2 type];

    if (type2 != typeCopy)
    {
      v9 = 0;
      goto LABEL_7;
    }

    actionView12 = [(CNDefaultAppCell *)self actionView2];
  }

  v9 = actionView12;
LABEL_7:

  return v9;
}

- (void)processModels:(id)models
{
  v17 = *MEMORY[0x1E69E9840];
  modelsCopy = models;
  defaultActionPerType = [(CNDefaultAppCell *)self defaultActionPerType];
  v6 = [defaultActionPerType mutableCopy];

  v9 = MEMORY[0x1E69E9820];
  v10 = 3221225472;
  v11 = __34__CNDefaultAppCell_processModels___block_invoke;
  v12 = &unk_1E74E6A10;
  selfCopy = self;
  v7 = v6;
  v14 = v7;
  [modelsCopy _cn_each:&v9];

  if ([v7 count])
  {
    v8 = CNUILogContactCard();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v16 = v7;
      _os_log_impl(&dword_199A75000, v8, OS_LOG_TYPE_DEFAULT, "[CNDefaultAppCell processModels:], defaultActionPerType = %@", buf, 0xCu);
    }
  }

  [(CNDefaultAppCell *)self setDefaultActionPerType:v7];
}

void __34__CNDefaultAppCell_processModels___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v11 = a2;
  v5 = [a3 defaultAction];
  v6 = [v5 bundleIdentifier];
  v7 = [*(a1 + 32) defaultAppProvider];
  v8 = [v7 bundleIdentifier];

  if (v6 == v8)
  {
    [*(a1 + 40) setObject:v5 forKeyedSubscript:v11];
    v9 = [*(a1 + 32) actionViewForType:v11];
    v10 = v9;
    if (v9)
    {
      [v9 setShowsMenuAsPrimaryAction:v5 == 0];
    }
  }
}

- (id)allModelsObservable
{
  supportedActionTypes = [(CNDefaultAppCell *)self supportedActionTypes];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __39__CNDefaultAppCell_allModelsObservable__block_invoke;
  v14[3] = &unk_1E74E6928;
  v14[4] = self;
  v4 = [supportedActionTypes _cn_map:v14];

  v5 = MEMORY[0x1E6996798];
  schedulerProvider = [(CNDefaultAppCell *)self schedulerProvider];
  v7 = [v5 merge:v4 schedulerProvider:schedulerProvider];

  v8 = [v7 scan:&__block_literal_global_14813 seed:MEMORY[0x1E695E0F8]];
  [(CNDefaultAppCell *)self throttleDelay];
  v10 = v9;
  schedulerProvider2 = [(CNDefaultAppCell *)self schedulerProvider];
  v12 = [v8 throttle:schedulerProvider2 schedulerProvider:v10];

  return v12;
}

id __39__CNDefaultAppCell_allModelsObservable__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) actionsDataSource];
  v5 = [*(a1 + 32) contact];
  v6 = [v4 consumer:0 actionModelsForContact:v5 actionType:v3];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __39__CNDefaultAppCell_allModelsObservable__block_invoke_2;
  v10[3] = &unk_1E74E6900;
  v11 = v3;
  v7 = v3;
  v8 = [v6 map:v10];

  return v8;
}

id __39__CNDefaultAppCell_allModelsObservable__block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 mutableCopy];
  [v5 addEntriesFromDictionary:v4];

  v6 = [v5 copy];

  return v6;
}

id __39__CNDefaultAppCell_allModelsObservable__block_invoke_2(uint64_t a1, void *a2)
{
  v7[1] = *MEMORY[0x1E69E9840];
  v6 = *(a1 + 32);
  v7[0] = a2;
  v2 = MEMORY[0x1E695DF20];
  v3 = a2;
  v4 = [v2 dictionaryWithObjects:v7 forKeys:&v6 count:1];

  return v4;
}

- (void)discoverAvailableActionTypes
{
  v34[2] = *MEMORY[0x1E69E9840];
  v3 = CNUILogContactCard();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    contact = [(CNDefaultAppCell *)self contact];
    shortDebugDescription = [contact shortDebugDescription];
    *buf = 138412546;
    *&buf[4] = self;
    *&buf[12] = 2112;
    *&buf[14] = shortDebugDescription;
    _os_log_debug_impl(&dword_199A75000, v3, OS_LOG_TYPE_DEBUG, "[CNDefaultAppCell discoverAvailableActionTypes], %@ cancelling previous action discovering requests, contact now is %@", buf, 0x16u);
  }

  tokens = [(CNDefaultAppCell *)self tokens];
  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __48__CNDefaultAppCell_discoverAvailableActionTypes__block_invoke;
  v26[3] = &unk_1E74E6998;
  v26[4] = self;
  [tokens enumerateObjectsUsingBlock:v26];

  [(CNDefaultAppCell *)self setTokens:MEMORY[0x1E695E0F0]];
  contact2 = [(CNDefaultAppCell *)self contact];
  LOBYTE(tokens) = contact2 == 0;

  if ((tokens & 1) == 0)
  {
    array = [MEMORY[0x1E695DF70] array];
    objc_initWeak(&location, self);
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3042000000;
    v32 = __Block_byref_object_copy__14820;
    v33 = __Block_byref_object_dispose__14821;
    v34[0] = 0;
    v7 = CNUILogContactCard();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      contact3 = [(CNDefaultAppCell *)self contact];
      shortDebugDescription2 = [contact3 shortDebugDescription];
      *v27 = 138412546;
      selfCopy = self;
      v29 = 2112;
      v30 = shortDebugDescription2;
      _os_log_debug_impl(&dword_199A75000, v7, OS_LOG_TYPE_DEBUG, "[CNDefaultAppCell discoverAvailableActionTypes], %@ subscribing action discovering requests for contact %@.", v27, 0x16u);
    }

    allModelsObservable = [(CNDefaultAppCell *)self allModelsObservable];
    schedulerProvider = [(CNDefaultAppCell *)self schedulerProvider];
    backgroundScheduler = [schedulerProvider backgroundScheduler];
    v11 = [allModelsObservable subscribeOn:backgroundScheduler];
    v12 = MEMORY[0x1E69967A0];
    v19 = MEMORY[0x1E69E9820];
    v20 = 3221225472;
    v21 = __48__CNDefaultAppCell_discoverAvailableActionTypes__block_invoke_11;
    v22 = &unk_1E74E69E8;
    objc_copyWeak(&v24, &location);
    v23 = buf;
    v13 = [v12 observerWithResultBlock:&v19];
    v14 = [v11 subscribe:{v13, v19, v20, v21, v22}];

    [array addObject:v14];
    objc_storeWeak((*&buf[8] + 40), v14);
    [(CNDefaultAppCell *)self setTokens:array];

    objc_destroyWeak(&v24);
    _Block_object_dispose(buf, 8);
    objc_destroyWeak(v34);
    objc_destroyWeak(&location);
  }
}

void __48__CNDefaultAppCell_discoverAvailableActionTypes__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) schedulerProvider];
  v5 = [v4 backgroundScheduler];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __48__CNDefaultAppCell_discoverAvailableActionTypes__block_invoke_2;
  v7[3] = &unk_1E74E6A88;
  v8 = v3;
  v6 = v3;
  [v5 performBlock:v7];
}

void __48__CNDefaultAppCell_discoverAvailableActionTypes__block_invoke_11(uint64_t a1, void *a2)
{
  v3 = a2;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __48__CNDefaultAppCell_discoverAvailableActionTypes__block_invoke_2_12;
  aBlock[3] = &unk_1E74E69C0;
  objc_copyWeak(&v10, (a1 + 40));
  v9 = *(a1 + 32);
  v4 = v3;
  v8 = v4;
  v5 = _Block_copy(aBlock);
  v6 = [MEMORY[0x1E6996818] mainThreadScheduler];
  [v6 performBlock:v5];

  objc_destroyWeak(&v10);
}

void __48__CNDefaultAppCell_discoverAvailableActionTypes__block_invoke_2_12(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v2 = objc_loadWeakRetained((*(*(a1 + 40) + 8) + 40));
  if (v2)
  {
    v3 = [WeakRetained tokens];
    v4 = [v3 containsObject:v2];

    if (v4)
    {
      [WeakRetained processModels:*(a1 + 32)];
    }
  }
}

- (void)loadCachedActions
{
  supportedActionTypes = [(CNDefaultAppCell *)self supportedActionTypes];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __37__CNDefaultAppCell_loadCachedActions__block_invoke;
  v8[3] = &unk_1E74E6970;
  v8[4] = self;
  v4 = [supportedActionTypes _cn_map:v8];

  v5 = MEMORY[0x1E695DF20];
  supportedActionTypes2 = [(CNDefaultAppCell *)self supportedActionTypes];
  v7 = [v5 dictionaryWithObjects:v4 forKeys:supportedActionTypes2];

  [(CNDefaultAppCell *)self processModels:v7];
}

id __37__CNDefaultAppCell_loadCachedActions__block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 actionsDataSource];
  v6 = *(a1 + 32);
  v7 = [v6 contact];
  v8 = [v5 consumer:v6 currentActionModelForContact:v7 actionType:v4];

  if (v8)
  {
    v9 = v8;
  }

  else
  {
    v9 = [MEMORY[0x1E6996BF0] emptyModel];
  }

  v10 = v9;

  return v10;
}

- (void)setContact:(id)contact
{
  contactCopy = contact;
  if (self->_contact != contactCopy)
  {
    v6 = contactCopy;
    objc_storeStrong(&self->_contact, contact);
    [(CNDefaultAppCell *)self reset];
    [(CNDefaultAppCell *)self loadCachedActions];
    [(CNDefaultAppCell *)self discoverAvailableActionTypes];
    contactCopy = v6;
  }
}

- (void)setDefaultAppProvider:(id)provider
{
  v30 = *MEMORY[0x1E69E9840];
  providerCopy = provider;
  if (!self->_defaultAppProvider)
  {
    objc_storeStrong(&self->_defaultAppProvider, provider);
    defaultAppProvider = [(CNDefaultAppCell *)self defaultAppProvider];
    localizedName = [defaultAppProvider localizedName];
    [(UILabel *)self->_defaultAppLabel setText:localizedName];

    self->_isDefaultAppVideoAvailable = [providerCopy supportsVideo];
    isDefaultAppVideoAvailable = [(CNDefaultAppCell *)self isDefaultAppVideoAvailable];
    v9 = *MEMORY[0x1E695C150];
    v10 = MEMORY[0x1E695C1B8];
    if (isDefaultAppVideoAvailable)
    {
      v11 = *MEMORY[0x1E695C1B8];
      v28 = *MEMORY[0x1E695C150];
      v29 = v11;
      v12 = MEMORY[0x1E695DEC8];
      v13 = &v28;
      v14 = 2;
    }

    else
    {
      v27 = *MEMORY[0x1E695C150];
      v12 = MEMORY[0x1E695DEC8];
      v13 = &v27;
      v14 = 1;
    }

    v15 = [v12 arrayWithObjects:v13 count:{v14, v27, v28, v29, v30}];
    objc_storeStrong(&self->_supportedActionTypes, v15);

    v16 = +[CNContactStyle currentStyle];
    v17 = objc_alloc_init(CNActionView);
    actionView1 = self->_actionView1;
    self->_actionView1 = v17;

    [(CNActionView *)self->_actionView1 setType:v9];
    -[CNActionView setStyle:](self->_actionView1, "setStyle:", [v16 inlineActionsViewStyle]);
    [(CNActionView *)self->_actionView1 setActionDelegate:self];
    [(CNActionView *)self->_actionView1 setShowsMenuAsPrimaryAction:1];
    [(CNActionView *)self->_actionView1 setTranslatesAutoresizingMaskIntoConstraints:0];
    LODWORD(v19) = 1148846080;
    [(CNActionView *)self->_actionView1 setContentCompressionResistancePriority:0 forAxis:v19];
    LODWORD(v20) = 1148846080;
    [(CNActionView *)self->_actionView1 setContentCompressionResistancePriority:1 forAxis:v20];
    contentView = [(CNDefaultAppCell *)self contentView];
    [contentView addSubview:self->_actionView1];

    if ([(CNDefaultAppCell *)self isDefaultAppVideoAvailable])
    {
      v22 = objc_alloc_init(CNActionView);
      actionView2 = self->_actionView2;
      self->_actionView2 = v22;

      [(CNActionView *)self->_actionView2 setType:*v10];
      -[CNActionView setStyle:](self->_actionView2, "setStyle:", [v16 inlineActionsViewStyle]);
      [(CNActionView *)self->_actionView2 setActionDelegate:self];
      [(CNActionView *)self->_actionView2 setShowsMenuAsPrimaryAction:1];
      [(CNActionView *)self->_actionView2 setTranslatesAutoresizingMaskIntoConstraints:0];
      LODWORD(v24) = 1148846080;
      [(CNActionView *)self->_actionView2 setContentCompressionResistancePriority:0 forAxis:v24];
      LODWORD(v25) = 1148846080;
      [(CNActionView *)self->_actionView2 setContentCompressionResistancePriority:1 forAxis:v25];
      contentView2 = [(CNDefaultAppCell *)self contentView];
      [contentView2 addSubview:self->_actionView2];
    }

    [(CNDefaultAppCell *)self updateHorizontalTouchAreas];
  }
}

- (void)setActionsDataSource:(id)source
{
  sourceCopy = source;
  if (self->_actionsDataSource != sourceCopy)
  {
    objc_storeStrong(&self->_actionsDataSource, source);
    actionView1 = [(CNDefaultAppCell *)self actionView1];

    if (actionView1)
    {
      v6 = MEMORY[0x1E69DCAB8];
      actionView12 = [(CNDefaultAppCell *)self actionView1];
      type = [actionView12 type];
      v9 = [v6 cnui_userActionSymbolImageForActionType:type scale:-1 withColor:0];
      actionView13 = [(CNDefaultAppCell *)self actionView1];
      [actionView13 setImage:v9];
    }

    actionView2 = [(CNDefaultAppCell *)self actionView2];

    if (actionView2)
    {
      v12 = MEMORY[0x1E69DCAB8];
      actionView22 = [(CNDefaultAppCell *)self actionView2];
      type2 = [actionView22 type];
      v15 = [v12 cnui_userActionSymbolImageForActionType:type2 scale:-1 withColor:0];
      actionView23 = [(CNDefaultAppCell *)self actionView2];
      [actionView23 setImage:v15];
    }
  }
}

- (CNDefaultAppCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v12.receiver = self;
  v12.super_class = CNDefaultAppCell;
  v4 = [(CNLabeledCell *)&v12 initWithStyle:style reuseIdentifier:identifier];
  v5 = v4;
  if (v4)
  {
    tokens = v4->_tokens;
    v4->_tokens = MEMORY[0x1E695E0F0];

    v7 = +[CNUIContactsEnvironment currentEnvironment];
    defaultSchedulerProvider = [v7 defaultSchedulerProvider];
    schedulerProvider = v5->_schedulerProvider;
    v5->_schedulerProvider = defaultSchedulerProvider;

    defaultActionPerType = v5->_defaultActionPerType;
    v5->_defaultActionPerType = MEMORY[0x1E695E0F8];
  }

  return v5;
}

@end