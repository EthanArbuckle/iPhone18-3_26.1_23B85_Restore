@interface CNFaceTimeCell
- (CNFaceTimeCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (CNPropertyCellDelegate)delegate;
- (id)actionViewForType:(id)type;
- (id)allModelsObservable;
- (id)constantConstraints;
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
- (void)updateHorizontalTouchAreas;
@end

@implementation CNFaceTimeCell

- (CNPropertyCellDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)contactActionsController:(id)controller didSelectAction:(id)action
{
  actionCopy = action;
  actionsControllerPresentation = [(CNFaceTimeCell *)self actionsControllerPresentation];
  presentedViewController = [actionsControllerPresentation presentedViewController];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __59__CNFaceTimeCell_contactActionsController_didSelectAction___block_invoke;
  v13[3] = &unk_1E74E6A88;
  v13[4] = self;
  [presentedViewController dismissViewControllerAnimated:1 completion:v13];

  [(CNFaceTimeCell *)self performAction:actionCopy];
  actionsController = [(CNFaceTimeCell *)self actionsController];
  actionTypes = [actionsController actionTypes];
  firstObject = [actionTypes firstObject];

  actionsDataSource = [(CNFaceTimeCell *)self actionsDataSource];
  contact = [(CNFaceTimeCell *)self contact];
  [actionsDataSource consumer:self didSelectItem:actionCopy forContact:contact actionType:firstObject];

  [(CNFaceTimeCell *)self setActionsController:0];
}

- (void)didSelectActionType:(id)type withSourceView:(id)view longPress:(BOOL)press
{
  v15[1] = *MEMORY[0x1E69E9840];
  typeCopy = type;
  v7 = [CNContactActionsController alloc];
  contact = [(CNFaceTimeCell *)self contact];
  actionsDataSource = [(CNFaceTimeCell *)self actionsDataSource];
  v15[0] = typeCopy;
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:1];

  v11 = [(CNContactActionsController *)v7 initWithContact:contact dataSource:actionsDataSource actionTypes:v10];
  [(CNFaceTimeCell *)self setActionsController:v11];

  actionsController = [(CNFaceTimeCell *)self actionsController];
  [actionsController setDelegate:self];

  actionsController2 = [(CNFaceTimeCell *)self actionsController];
  [actionsController2 setGenerateFaceTimeListItemsOnly:1];

  actionsController3 = [(CNFaceTimeCell *)self actionsController];
  [actionsController3 retrieveModels];
}

- (void)contactActionsController:(id)controller didUpdateWithMenu:(id)menu
{
  v24 = *MEMORY[0x1E69E9840];
  controllerCopy = controller;
  menuCopy = menu;
  if (menuCopy && ([(CNFaceTimeCell *)self actionsController], v8 = objc_claimAutoreleasedReturnValue(), v8, v8 == controllerCopy))
  {
    actionsController = [(CNFaceTimeCell *)self actionsController];
    actionTypes = [actionsController actionTypes];
    firstObject = [actionTypes firstObject];
    v13 = [(CNFaceTimeCell *)self actionViewForType:firstObject];

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
    actionsController2 = [(CNFaceTimeCell *)self actionsController];
    actionTypes2 = [actionsController2 actionTypes];
    firstObject2 = [actionTypes2 firstObject];
    v18 = 138412802;
    v19 = firstObject2;
    v20 = 1024;
    v21 = v9;
    v22 = 2112;
    v23 = menuCopy;
    _os_log_impl(&dword_199A75000, v14, OS_LOG_TYPE_DEFAULT, "[CNFaceTimeCell contactActionsController:didUpdateWithMenu:], actionType = %@, didUpdate = %i, menuItems = %@,", &v18, 0x1Cu);
  }
}

- (void)performAction:(id)action
{
  v23 = *MEMORY[0x1E69E9840];
  actionCopy = action;
  v5 = CNUILogContactCard();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v22 = actionCopy;
    _os_log_impl(&dword_199A75000, v5, OS_LOG_TYPE_DEFAULT, "[CNFaceTimeCell performAction:], action = %@", buf, 0xCu);
  }

  v6 = objc_alloc_init(MEMORY[0x1E6996BD0]);
  delegate = [(CNFaceTimeCell *)self delegate];
  if (delegate)
  {
    v8 = delegate;
    delegate2 = [(CNFaceTimeCell *)self delegate];
    v10 = objc_opt_respondsToSelector();

    if (v10)
    {
      delegate3 = [(CNFaceTimeCell *)self delegate];
      geminiDataSource = [delegate3 geminiDataSource];
      channelIdentifier = [geminiDataSource channelIdentifier];
      [v6 setChannelIdentifier:channelIdentifier];
    }
  }

  v14 = [actionCopy performActionWithContext:v6];
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __32__CNFaceTimeCell_performAction___block_invoke;
  v19[3] = &unk_1E74E5980;
  v15 = actionCopy;
  v20 = v15;
  [v14 addSuccessBlock:v19];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __32__CNFaceTimeCell_performAction___block_invoke_40;
  v17[3] = &unk_1E74E5200;
  v18 = v15;
  v16 = v15;
  [v14 addFailureBlock:v17];
}

void __32__CNFaceTimeCell_performAction___block_invoke(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = CNUILogContactCard();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = 138412290;
    v5 = v3;
    _os_log_impl(&dword_199A75000, v2, OS_LOG_TYPE_DEFAULT, "[CNFaceTimeCell performAction:], did perform action %@", &v4, 0xCu);
  }
}

void __32__CNFaceTimeCell_performAction___block_invoke_40(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = CNUILogContactCard();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    v3 = *(a1 + 32);
    v4 = 138412290;
    v5 = v3;
    _os_log_error_impl(&dword_199A75000, v2, OS_LOG_TYPE_ERROR, "[CNFaceTimeCell performAction:], failed to perform action %@", &v4, 0xCu);
  }
}

- (void)didPressActionView:(id)view longPress:(BOOL)press
{
  pressCopy = press;
  v32 = *MEMORY[0x1E69E9840];
  viewCopy = view;
  defaultActionPerType = [(CNFaceTimeCell *)self defaultActionPerType];
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
    v25 = type2;
    if (v9)
    {
      v13 = v9;
    }

    v26 = 1024;
    v27 = pressCopy;
    v28 = 1024;
    v29 = v10;
    v30 = 2112;
    v31 = v13;
    _os_log_impl(&dword_199A75000, v11, OS_LOG_TYPE_DEFAULT, "[CNFaceTimeCell, didPressActionView:longPress:], actionType = %@, longPress = %i, shouldPresentDisambiguation = %i, defaultAction = %@", buf, 0x22u);
  }

  if (v10)
  {
    v14 = [CNContactActionsController alloc];
    contact = [(CNFaceTimeCell *)self contact];
    actionsDataSource = [(CNFaceTimeCell *)self actionsDataSource];
    type3 = [viewCopy type];
    v23 = type3;
    v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v23 count:1];
    v19 = [(CNContactActionsController *)v14 initWithContact:contact dataSource:actionsDataSource actionTypes:v18];
    [(CNFaceTimeCell *)self setActionsController:v19];

    actionsController = [(CNFaceTimeCell *)self actionsController];
    [actionsController setDelegate:self];

    actionsController2 = [(CNFaceTimeCell *)self actionsController];
    [actionsController2 setGenerateFaceTimeListItemsOnly:1];

    actionsController3 = [(CNFaceTimeCell *)self actionsController];
    [actionsController3 retrieveModels];
  }

  else
  {
    [(CNFaceTimeCell *)self performAction:v9];
  }
}

- (void)updateHorizontalTouchAreas
{
  rightMostView = [(CNFaceTimeCell *)self rightMostView];
  [rightMostView _setTouchInsets:{0.0, -8.0, 0.0, -16.0}];

  actionView2 = [(CNFaceTimeCell *)self actionView2];

  if (actionView2)
  {
    actionView22 = [(CNFaceTimeCell *)self actionView2];
    [actionView22 _setTouchInsets:{0.0, -8.0, 0.0, -8.0}];
  }
}

- (id)variableConstraints
{
  v25[2] = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E695DF70];
  v24.receiver = self;
  v24.super_class = CNFaceTimeCell;
  variableConstraints = [(CNLabeledCell *)&v24 variableConstraints];
  v5 = [v3 arrayWithArray:variableConstraints];

  actionView1 = [(CNFaceTimeCell *)self actionView1];
  if ([(CNFaceTimeCell *)self isFaceTimeAudioAvailable])
  {
    actionView2 = [(CNFaceTimeCell *)self actionView2];

    actionView12 = [(CNFaceTimeCell *)self actionView1];
    leadingAnchor = [actionView12 leadingAnchor];
    actionView22 = [(CNFaceTimeCell *)self actionView2];
    trailingAnchor = [actionView22 trailingAnchor];
    v8 = [leadingAnchor constraintEqualToAnchor:trailingAnchor constant:16.0];
    v25[0] = v8;
    actionView23 = [(CNFaceTimeCell *)self actionView2];
    centerYAnchor = [actionView23 centerYAnchor];
    contentView = [(CNFaceTimeCell *)self contentView];
    centerYAnchor2 = [contentView centerYAnchor];
    v13 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
    v25[1] = v13;
    v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v25 count:2];
    [v5 addObjectsFromArray:v14];

    actionView1 = actionView2;
  }

  leadingAnchor2 = [actionView1 leadingAnchor];
  faceTimeLabel = [(CNFaceTimeCell *)self faceTimeLabel];
  trailingAnchor2 = [faceTimeLabel trailingAnchor];
  v18 = [leadingAnchor2 constraintEqualToAnchor:trailingAnchor2 constant:16.0];
  [v5 addObject:v18];

  return v5;
}

- (id)constantConstraints
{
  v14[1] = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E695DF70];
  v13.receiver = self;
  v13.super_class = CNFaceTimeCell;
  constantConstraints = [(CNLabeledCell *)&v13 constantConstraints];
  v5 = [v3 arrayWithArray:constantConstraints];

  actionView1 = [(CNFaceTimeCell *)self actionView1];
  centerYAnchor = [actionView1 centerYAnchor];
  contentView = [(CNFaceTimeCell *)self contentView];
  centerYAnchor2 = [contentView centerYAnchor];
  v10 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
  v14[0] = v10;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:1];
  [v5 addObjectsFromArray:v11];

  return v5;
}

- (void)performDefaultAction
{
  v3 = CNUILogContactCard();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_199A75000, v3, OS_LOG_TYPE_DEFAULT, "[CNFaceTimeCell performDefaultAction]", v6, 2u);
  }

  delegate = [(CNFaceTimeCell *)self delegate];
  cardGroupItem = [(CNContactCell *)self cardGroupItem];
  [delegate propertyCell:self performActionForItem:cardGroupItem withTransportType:3];
}

- (id)labelView
{
  faceTimeLabel = self->_faceTimeLabel;
  if (!faceTimeLabel)
  {
    standardLabelView = [(CNLabeledCell *)self standardLabelView];
    v5 = self->_faceTimeLabel;
    self->_faceTimeLabel = standardLabelView;

    v6 = CNContactsUIBundle();
    v7 = [v6 localizedStringForKey:@"PHONE_ACTION_VIDEO_CONFERENCE" value:&stru_1F0CE7398 table:@"Localized"];
    [(UILabel *)self->_faceTimeLabel setText:v7];

    [(UILabel *)self->_faceTimeLabel _setWantsUnderlineForAccessibilityButtonShapesEnabled:1];
    faceTimeLabel = self->_faceTimeLabel;
  }

  return faceTimeLabel;
}

- (id)actionViewForType:(id)type
{
  typeCopy = type;
  actionView1 = [(CNFaceTimeCell *)self actionView1];
  type = [actionView1 type];

  if (type == typeCopy)
  {
    actionView12 = [(CNFaceTimeCell *)self actionView1];
  }

  else
  {
    actionView2 = [(CNFaceTimeCell *)self actionView2];
    type2 = [actionView2 type];

    if (type2 != typeCopy)
    {
      v9 = 0;
      goto LABEL_7;
    }

    actionView12 = [(CNFaceTimeCell *)self actionView2];
  }

  v9 = actionView12;
LABEL_7:

  return v9;
}

- (void)processModels:(id)models
{
  v17 = *MEMORY[0x1E69E9840];
  modelsCopy = models;
  defaultActionPerType = [(CNFaceTimeCell *)self defaultActionPerType];
  v6 = [defaultActionPerType mutableCopy];

  v9 = MEMORY[0x1E69E9820];
  v10 = 3221225472;
  v11 = __32__CNFaceTimeCell_processModels___block_invoke;
  v12 = &unk_1E74E6A10;
  v7 = v6;
  v13 = v7;
  selfCopy = self;
  [modelsCopy _cn_each:&v9];

  if ([v7 count])
  {
    v8 = CNUILogContactCard();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v16 = v7;
      _os_log_impl(&dword_199A75000, v8, OS_LOG_TYPE_DEFAULT, "[CNFaceTimeCell processModels:], defaultActionPerType = %@", buf, 0xCu);
    }
  }

  [(CNFaceTimeCell *)self setDefaultActionPerType:v7];
}

void __32__CNFaceTimeCell_processModels___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v10 = a2;
  v5 = [a3 defaultAction];
  v6 = [v5 bundleIdentifier];
  v7 = *MEMORY[0x1E695C118];

  if (v6 == v7)
  {
    [*(a1 + 32) setObject:v5 forKeyedSubscript:v10];
    v8 = [*(a1 + 40) actionViewForType:v10];
    v9 = v8;
    if (v8)
    {
      [v8 setShowsMenuAsPrimaryAction:v5 == 0];
    }
  }
}

- (id)allModelsObservable
{
  supportedActionTypes = [(CNFaceTimeCell *)self supportedActionTypes];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __37__CNFaceTimeCell_allModelsObservable__block_invoke;
  v14[3] = &unk_1E74E6928;
  v14[4] = self;
  v4 = [supportedActionTypes _cn_map:v14];

  v5 = MEMORY[0x1E6996798];
  schedulerProvider = [(CNFaceTimeCell *)self schedulerProvider];
  v7 = [v5 merge:v4 schedulerProvider:schedulerProvider];

  v8 = [v7 scan:&__block_literal_global_16899 seed:MEMORY[0x1E695E0F8]];
  [(CNFaceTimeCell *)self throttleDelay];
  v10 = v9;
  schedulerProvider2 = [(CNFaceTimeCell *)self schedulerProvider];
  v12 = [v8 throttle:schedulerProvider2 schedulerProvider:v10];

  return v12;
}

id __37__CNFaceTimeCell_allModelsObservable__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) actionsDataSource];
  v5 = [*(a1 + 32) contact];
  v6 = [v4 consumer:0 actionModelsForContact:v5 actionType:v3];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __37__CNFaceTimeCell_allModelsObservable__block_invoke_2;
  v10[3] = &unk_1E74E6900;
  v11 = v3;
  v7 = v3;
  v8 = [v6 map:v10];

  return v8;
}

id __37__CNFaceTimeCell_allModelsObservable__block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 mutableCopy];
  [v5 addEntriesFromDictionary:v4];

  v6 = [v5 copy];

  return v6;
}

id __37__CNFaceTimeCell_allModelsObservable__block_invoke_2(uint64_t a1, void *a2)
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
    contact = [(CNFaceTimeCell *)self contact];
    shortDebugDescription = [contact shortDebugDescription];
    *buf = 138412546;
    *&buf[4] = self;
    *&buf[12] = 2112;
    *&buf[14] = shortDebugDescription;
    _os_log_debug_impl(&dword_199A75000, v3, OS_LOG_TYPE_DEBUG, "[CNFaceTimeCell discoverAvailableActionTypes], %@ cancelling previous action discovering requests, contact now is %@", buf, 0x16u);
  }

  tokens = [(CNFaceTimeCell *)self tokens];
  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __46__CNFaceTimeCell_discoverAvailableActionTypes__block_invoke;
  v26[3] = &unk_1E74E6998;
  v26[4] = self;
  [tokens enumerateObjectsUsingBlock:v26];

  [(CNFaceTimeCell *)self setTokens:MEMORY[0x1E695E0F0]];
  contact2 = [(CNFaceTimeCell *)self contact];
  LOBYTE(tokens) = contact2 == 0;

  if ((tokens & 1) == 0)
  {
    array = [MEMORY[0x1E695DF70] array];
    objc_initWeak(&location, self);
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3042000000;
    v32 = __Block_byref_object_copy__16903;
    v33 = __Block_byref_object_dispose__16904;
    v34[0] = 0;
    v7 = CNUILogContactCard();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      contact3 = [(CNFaceTimeCell *)self contact];
      shortDebugDescription2 = [contact3 shortDebugDescription];
      *v27 = 138412546;
      selfCopy = self;
      v29 = 2112;
      v30 = shortDebugDescription2;
      _os_log_debug_impl(&dword_199A75000, v7, OS_LOG_TYPE_DEBUG, "[CNFaceTimeCell discoverAvailableActionTypes], %@ subscribing action discovering requests for contact %@.", v27, 0x16u);
    }

    allModelsObservable = [(CNFaceTimeCell *)self allModelsObservable];
    schedulerProvider = [(CNFaceTimeCell *)self schedulerProvider];
    backgroundScheduler = [schedulerProvider backgroundScheduler];
    v11 = [allModelsObservable subscribeOn:backgroundScheduler];
    v12 = MEMORY[0x1E69967A0];
    v19 = MEMORY[0x1E69E9820];
    v20 = 3221225472;
    v21 = __46__CNFaceTimeCell_discoverAvailableActionTypes__block_invoke_12;
    v22 = &unk_1E74E69E8;
    objc_copyWeak(&v24, &location);
    v23 = buf;
    v13 = [v12 observerWithResultBlock:&v19];
    v14 = [v11 subscribe:{v13, v19, v20, v21, v22}];

    [array addObject:v14];
    objc_storeWeak((*&buf[8] + 40), v14);
    [(CNFaceTimeCell *)self setTokens:array];

    objc_destroyWeak(&v24);
    _Block_object_dispose(buf, 8);
    objc_destroyWeak(v34);
    objc_destroyWeak(&location);
  }
}

void __46__CNFaceTimeCell_discoverAvailableActionTypes__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) schedulerProvider];
  v5 = [v4 backgroundScheduler];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __46__CNFaceTimeCell_discoverAvailableActionTypes__block_invoke_2;
  v7[3] = &unk_1E74E6A88;
  v8 = v3;
  v6 = v3;
  [v5 performBlock:v7];
}

void __46__CNFaceTimeCell_discoverAvailableActionTypes__block_invoke_12(uint64_t a1, void *a2)
{
  v3 = a2;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __46__CNFaceTimeCell_discoverAvailableActionTypes__block_invoke_2_13;
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

void __46__CNFaceTimeCell_discoverAvailableActionTypes__block_invoke_2_13(uint64_t a1)
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
  supportedActionTypes = [(CNFaceTimeCell *)self supportedActionTypes];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __35__CNFaceTimeCell_loadCachedActions__block_invoke;
  v8[3] = &unk_1E74E6970;
  v8[4] = self;
  v4 = [supportedActionTypes _cn_map:v8];

  v5 = MEMORY[0x1E695DF20];
  supportedActionTypes2 = [(CNFaceTimeCell *)self supportedActionTypes];
  v7 = [v5 dictionaryWithObjects:v4 forKeys:supportedActionTypes2];

  [(CNFaceTimeCell *)self processModels:v7];
}

id __35__CNFaceTimeCell_loadCachedActions__block_invoke(uint64_t a1, void *a2)
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
    [(CNFaceTimeCell *)self reset];
    [(CNFaceTimeCell *)self loadCachedActions];
    [(CNFaceTimeCell *)self discoverAvailableActionTypes];
    contactCopy = v6;
  }
}

- (void)setActionsDataSource:(id)source
{
  sourceCopy = source;
  if (self->_actionsDataSource != sourceCopy)
  {
    objc_storeStrong(&self->_actionsDataSource, source);
    actionView1 = [(CNFaceTimeCell *)self actionView1];

    if (actionView1)
    {
      v6 = MEMORY[0x1E69DCAB8];
      actionView12 = [(CNFaceTimeCell *)self actionView1];
      type = [actionView12 type];
      v9 = [v6 cnui_userActionSymbolImageForActionType:type scale:-1 withColor:0];
      actionView13 = [(CNFaceTimeCell *)self actionView1];
      [actionView13 setImage:v9];
    }

    actionView2 = [(CNFaceTimeCell *)self actionView2];

    if (actionView2)
    {
      v12 = MEMORY[0x1E69DCAB8];
      actionView22 = [(CNFaceTimeCell *)self actionView2];
      type2 = [actionView22 type];
      v15 = [v12 cnui_userActionSymbolImageForActionType:type2 scale:-1 withColor:0];
      actionView23 = [(CNFaceTimeCell *)self actionView2];
      [actionView23 setImage:v15];
    }
  }
}

- (CNFaceTimeCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v30[2] = *MEMORY[0x1E69E9840];
  v28.receiver = self;
  v28.super_class = CNFaceTimeCell;
  v4 = [(CNLabeledCell *)&v28 initWithStyle:style reuseIdentifier:identifier];
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

    v11 = +[CNCapabilitiesManager defaultCapabilitiesManager];
    -[CNFaceTimeCell setIsFaceTimeAudioAvailable:](v5, "setIsFaceTimeAudioAvailable:", [v11 isFaceTimeAudioAvailable]);
    if ([(CNFaceTimeCell *)v5 isFaceTimeAudioAvailable])
    {
      v12 = *MEMORY[0x1E695C150];
      v13 = *MEMORY[0x1E695C1B8];
      v30[0] = *MEMORY[0x1E695C150];
      v30[1] = v13;
      v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v30 count:2];
    }

    else
    {
      v13 = *MEMORY[0x1E695C1B8];
      v29 = *MEMORY[0x1E695C1B8];
      v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v29 count:1];
      v12 = *MEMORY[0x1E695C150];
    }

    objc_storeStrong(&v5->_supportedActionTypes, v14);

    v15 = +[CNContactStyle currentStyle];
    v16 = objc_alloc_init(CNActionView);
    actionView1 = v5->_actionView1;
    v5->_actionView1 = v16;

    if ([(CNFaceTimeCell *)v5 isFaceTimeAudioAvailable])
    {
      v18 = v12;
    }

    else
    {
      v18 = v13;
    }

    [(CNActionView *)v5->_actionView1 setType:v18];
    -[CNActionView setStyle:](v5->_actionView1, "setStyle:", [v15 inlineActionsViewStyle]);
    [(CNActionView *)v5->_actionView1 setActionDelegate:v5];
    [(CNActionView *)v5->_actionView1 setShowsMenuAsPrimaryAction:1];
    [(CNActionView *)v5->_actionView1 setTranslatesAutoresizingMaskIntoConstraints:0];
    LODWORD(v19) = 1148846080;
    [(CNActionView *)v5->_actionView1 setContentCompressionResistancePriority:0 forAxis:v19];
    LODWORD(v20) = 1148846080;
    [(CNActionView *)v5->_actionView1 setContentCompressionResistancePriority:1 forAxis:v20];
    contentView = [(CNFaceTimeCell *)v5 contentView];
    [contentView addSubview:v5->_actionView1];

    if ([(CNFaceTimeCell *)v5 isFaceTimeAudioAvailable])
    {
      v22 = objc_alloc_init(CNActionView);
      actionView2 = v5->_actionView2;
      v5->_actionView2 = v22;

      [(CNActionView *)v5->_actionView2 setType:v13];
      -[CNActionView setStyle:](v5->_actionView2, "setStyle:", [v15 inlineActionsViewStyle]);
      [(CNActionView *)v5->_actionView2 setActionDelegate:v5];
      [(CNActionView *)v5->_actionView2 setShowsMenuAsPrimaryAction:1];
      [(CNActionView *)v5->_actionView2 setTranslatesAutoresizingMaskIntoConstraints:0];
      LODWORD(v24) = 1148846080;
      [(CNActionView *)v5->_actionView2 setContentCompressionResistancePriority:0 forAxis:v24];
      LODWORD(v25) = 1148846080;
      [(CNActionView *)v5->_actionView2 setContentCompressionResistancePriority:1 forAxis:v25];
      contentView2 = [(CNFaceTimeCell *)v5 contentView];
      [contentView2 addSubview:v5->_actionView2];
    }

    [(CNFaceTimeCell *)v5 updateHorizontalTouchAreas];
  }

  return v5;
}

@end