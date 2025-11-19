@interface CNFaceTimeCell
- (CNFaceTimeCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (CNPropertyCellDelegate)delegate;
- (id)actionViewForType:(id)a3;
- (id)allModelsObservable;
- (id)constantConstraints;
- (id)labelView;
- (id)variableConstraints;
- (void)contactActionsController:(id)a3 didSelectAction:(id)a4;
- (void)contactActionsController:(id)a3 didUpdateWithMenu:(id)a4;
- (void)didPressActionView:(id)a3 longPress:(BOOL)a4;
- (void)didSelectActionType:(id)a3 withSourceView:(id)a4 longPress:(BOOL)a5;
- (void)discoverAvailableActionTypes;
- (void)loadCachedActions;
- (void)performAction:(id)a3;
- (void)performDefaultAction;
- (void)processModels:(id)a3;
- (void)setActionsDataSource:(id)a3;
- (void)setContact:(id)a3;
- (void)updateHorizontalTouchAreas;
@end

@implementation CNFaceTimeCell

- (CNPropertyCellDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)contactActionsController:(id)a3 didSelectAction:(id)a4
{
  v5 = a4;
  v6 = [(CNFaceTimeCell *)self actionsControllerPresentation];
  v7 = [v6 presentedViewController];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __59__CNFaceTimeCell_contactActionsController_didSelectAction___block_invoke;
  v13[3] = &unk_1E74E6A88;
  v13[4] = self;
  [v7 dismissViewControllerAnimated:1 completion:v13];

  [(CNFaceTimeCell *)self performAction:v5];
  v8 = [(CNFaceTimeCell *)self actionsController];
  v9 = [v8 actionTypes];
  v10 = [v9 firstObject];

  v11 = [(CNFaceTimeCell *)self actionsDataSource];
  v12 = [(CNFaceTimeCell *)self contact];
  [v11 consumer:self didSelectItem:v5 forContact:v12 actionType:v10];

  [(CNFaceTimeCell *)self setActionsController:0];
}

- (void)didSelectActionType:(id)a3 withSourceView:(id)a4 longPress:(BOOL)a5
{
  v15[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [CNContactActionsController alloc];
  v8 = [(CNFaceTimeCell *)self contact];
  v9 = [(CNFaceTimeCell *)self actionsDataSource];
  v15[0] = v6;
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:1];

  v11 = [(CNContactActionsController *)v7 initWithContact:v8 dataSource:v9 actionTypes:v10];
  [(CNFaceTimeCell *)self setActionsController:v11];

  v12 = [(CNFaceTimeCell *)self actionsController];
  [v12 setDelegate:self];

  v13 = [(CNFaceTimeCell *)self actionsController];
  [v13 setGenerateFaceTimeListItemsOnly:1];

  v14 = [(CNFaceTimeCell *)self actionsController];
  [v14 retrieveModels];
}

- (void)contactActionsController:(id)a3 didUpdateWithMenu:(id)a4
{
  v24 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if (v7 && ([(CNFaceTimeCell *)self actionsController], v8 = objc_claimAutoreleasedReturnValue(), v8, v8 == v6))
  {
    v10 = [(CNFaceTimeCell *)self actionsController];
    v11 = [v10 actionTypes];
    v12 = [v11 firstObject];
    v13 = [(CNFaceTimeCell *)self actionViewForType:v12];

    if (v13)
    {
      [v13 updateWithMenuItems:v7];
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
    v15 = [(CNFaceTimeCell *)self actionsController];
    v16 = [v15 actionTypes];
    v17 = [v16 firstObject];
    v18 = 138412802;
    v19 = v17;
    v20 = 1024;
    v21 = v9;
    v22 = 2112;
    v23 = v7;
    _os_log_impl(&dword_199A75000, v14, OS_LOG_TYPE_DEFAULT, "[CNFaceTimeCell contactActionsController:didUpdateWithMenu:], actionType = %@, didUpdate = %i, menuItems = %@,", &v18, 0x1Cu);
  }
}

- (void)performAction:(id)a3
{
  v23 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = CNUILogContactCard();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v22 = v4;
    _os_log_impl(&dword_199A75000, v5, OS_LOG_TYPE_DEFAULT, "[CNFaceTimeCell performAction:], action = %@", buf, 0xCu);
  }

  v6 = objc_alloc_init(MEMORY[0x1E6996BD0]);
  v7 = [(CNFaceTimeCell *)self delegate];
  if (v7)
  {
    v8 = v7;
    v9 = [(CNFaceTimeCell *)self delegate];
    v10 = objc_opt_respondsToSelector();

    if (v10)
    {
      v11 = [(CNFaceTimeCell *)self delegate];
      v12 = [v11 geminiDataSource];
      v13 = [v12 channelIdentifier];
      [v6 setChannelIdentifier:v13];
    }
  }

  v14 = [v4 performActionWithContext:v6];
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __32__CNFaceTimeCell_performAction___block_invoke;
  v19[3] = &unk_1E74E5980;
  v15 = v4;
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

- (void)didPressActionView:(id)a3 longPress:(BOOL)a4
{
  v4 = a4;
  v32 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [(CNFaceTimeCell *)self defaultActionPerType];
  v8 = [v6 type];
  v9 = [v7 objectForKeyedSubscript:v8];

  if (v9)
  {
    v10 = v4;
  }

  else
  {
    v10 = 1;
  }

  v11 = CNUILogContactCard();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = [v6 type];
    v13 = @"nil";
    *buf = 138413058;
    v25 = v12;
    if (v9)
    {
      v13 = v9;
    }

    v26 = 1024;
    v27 = v4;
    v28 = 1024;
    v29 = v10;
    v30 = 2112;
    v31 = v13;
    _os_log_impl(&dword_199A75000, v11, OS_LOG_TYPE_DEFAULT, "[CNFaceTimeCell, didPressActionView:longPress:], actionType = %@, longPress = %i, shouldPresentDisambiguation = %i, defaultAction = %@", buf, 0x22u);
  }

  if (v10)
  {
    v14 = [CNContactActionsController alloc];
    v15 = [(CNFaceTimeCell *)self contact];
    v16 = [(CNFaceTimeCell *)self actionsDataSource];
    v17 = [v6 type];
    v23 = v17;
    v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v23 count:1];
    v19 = [(CNContactActionsController *)v14 initWithContact:v15 dataSource:v16 actionTypes:v18];
    [(CNFaceTimeCell *)self setActionsController:v19];

    v20 = [(CNFaceTimeCell *)self actionsController];
    [v20 setDelegate:self];

    v21 = [(CNFaceTimeCell *)self actionsController];
    [v21 setGenerateFaceTimeListItemsOnly:1];

    v22 = [(CNFaceTimeCell *)self actionsController];
    [v22 retrieveModels];
  }

  else
  {
    [(CNFaceTimeCell *)self performAction:v9];
  }
}

- (void)updateHorizontalTouchAreas
{
  v3 = [(CNFaceTimeCell *)self rightMostView];
  [v3 _setTouchInsets:{0.0, -8.0, 0.0, -16.0}];

  v4 = [(CNFaceTimeCell *)self actionView2];

  if (v4)
  {
    v5 = [(CNFaceTimeCell *)self actionView2];
    [v5 _setTouchInsets:{0.0, -8.0, 0.0, -8.0}];
  }
}

- (id)variableConstraints
{
  v25[2] = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E695DF70];
  v24.receiver = self;
  v24.super_class = CNFaceTimeCell;
  v4 = [(CNLabeledCell *)&v24 variableConstraints];
  v5 = [v3 arrayWithArray:v4];

  v6 = [(CNFaceTimeCell *)self actionView1];
  if ([(CNFaceTimeCell *)self isFaceTimeAudioAvailable])
  {
    v23 = [(CNFaceTimeCell *)self actionView2];

    v22 = [(CNFaceTimeCell *)self actionView1];
    v20 = [v22 leadingAnchor];
    v21 = [(CNFaceTimeCell *)self actionView2];
    v7 = [v21 trailingAnchor];
    v8 = [v20 constraintEqualToAnchor:v7 constant:16.0];
    v25[0] = v8;
    v9 = [(CNFaceTimeCell *)self actionView2];
    v10 = [v9 centerYAnchor];
    v11 = [(CNFaceTimeCell *)self contentView];
    v12 = [v11 centerYAnchor];
    v13 = [v10 constraintEqualToAnchor:v12];
    v25[1] = v13;
    v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v25 count:2];
    [v5 addObjectsFromArray:v14];

    v6 = v23;
  }

  v15 = [v6 leadingAnchor];
  v16 = [(CNFaceTimeCell *)self faceTimeLabel];
  v17 = [v16 trailingAnchor];
  v18 = [v15 constraintEqualToAnchor:v17 constant:16.0];
  [v5 addObject:v18];

  return v5;
}

- (id)constantConstraints
{
  v14[1] = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E695DF70];
  v13.receiver = self;
  v13.super_class = CNFaceTimeCell;
  v4 = [(CNLabeledCell *)&v13 constantConstraints];
  v5 = [v3 arrayWithArray:v4];

  v6 = [(CNFaceTimeCell *)self actionView1];
  v7 = [v6 centerYAnchor];
  v8 = [(CNFaceTimeCell *)self contentView];
  v9 = [v8 centerYAnchor];
  v10 = [v7 constraintEqualToAnchor:v9];
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

  v4 = [(CNFaceTimeCell *)self delegate];
  v5 = [(CNContactCell *)self cardGroupItem];
  [v4 propertyCell:self performActionForItem:v5 withTransportType:3];
}

- (id)labelView
{
  faceTimeLabel = self->_faceTimeLabel;
  if (!faceTimeLabel)
  {
    v4 = [(CNLabeledCell *)self standardLabelView];
    v5 = self->_faceTimeLabel;
    self->_faceTimeLabel = v4;

    v6 = CNContactsUIBundle();
    v7 = [v6 localizedStringForKey:@"PHONE_ACTION_VIDEO_CONFERENCE" value:&stru_1F0CE7398 table:@"Localized"];
    [(UILabel *)self->_faceTimeLabel setText:v7];

    [(UILabel *)self->_faceTimeLabel _setWantsUnderlineForAccessibilityButtonShapesEnabled:1];
    faceTimeLabel = self->_faceTimeLabel;
  }

  return faceTimeLabel;
}

- (id)actionViewForType:(id)a3
{
  v4 = a3;
  v5 = [(CNFaceTimeCell *)self actionView1];
  v6 = [v5 type];

  if (v6 == v4)
  {
    v10 = [(CNFaceTimeCell *)self actionView1];
  }

  else
  {
    v7 = [(CNFaceTimeCell *)self actionView2];
    v8 = [v7 type];

    if (v8 != v4)
    {
      v9 = 0;
      goto LABEL_7;
    }

    v10 = [(CNFaceTimeCell *)self actionView2];
  }

  v9 = v10;
LABEL_7:

  return v9;
}

- (void)processModels:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(CNFaceTimeCell *)self defaultActionPerType];
  v6 = [v5 mutableCopy];

  v9 = MEMORY[0x1E69E9820];
  v10 = 3221225472;
  v11 = __32__CNFaceTimeCell_processModels___block_invoke;
  v12 = &unk_1E74E6A10;
  v7 = v6;
  v13 = v7;
  v14 = self;
  [v4 _cn_each:&v9];

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
  v3 = [(CNFaceTimeCell *)self supportedActionTypes];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __37__CNFaceTimeCell_allModelsObservable__block_invoke;
  v14[3] = &unk_1E74E6928;
  v14[4] = self;
  v4 = [v3 _cn_map:v14];

  v5 = MEMORY[0x1E6996798];
  v6 = [(CNFaceTimeCell *)self schedulerProvider];
  v7 = [v5 merge:v4 schedulerProvider:v6];

  v8 = [v7 scan:&__block_literal_global_16899 seed:MEMORY[0x1E695E0F8]];
  [(CNFaceTimeCell *)self throttleDelay];
  v10 = v9;
  v11 = [(CNFaceTimeCell *)self schedulerProvider];
  v12 = [v8 throttle:v11 schedulerProvider:v10];

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
    v15 = [(CNFaceTimeCell *)self contact];
    v16 = [v15 shortDebugDescription];
    *buf = 138412546;
    *&buf[4] = self;
    *&buf[12] = 2112;
    *&buf[14] = v16;
    _os_log_debug_impl(&dword_199A75000, v3, OS_LOG_TYPE_DEBUG, "[CNFaceTimeCell discoverAvailableActionTypes], %@ cancelling previous action discovering requests, contact now is %@", buf, 0x16u);
  }

  v4 = [(CNFaceTimeCell *)self tokens];
  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __46__CNFaceTimeCell_discoverAvailableActionTypes__block_invoke;
  v26[3] = &unk_1E74E6998;
  v26[4] = self;
  [v4 enumerateObjectsUsingBlock:v26];

  [(CNFaceTimeCell *)self setTokens:MEMORY[0x1E695E0F0]];
  v5 = [(CNFaceTimeCell *)self contact];
  LOBYTE(v4) = v5 == 0;

  if ((v4 & 1) == 0)
  {
    v6 = [MEMORY[0x1E695DF70] array];
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
      v17 = [(CNFaceTimeCell *)self contact];
      v18 = [v17 shortDebugDescription];
      *v27 = 138412546;
      v28 = self;
      v29 = 2112;
      v30 = v18;
      _os_log_debug_impl(&dword_199A75000, v7, OS_LOG_TYPE_DEBUG, "[CNFaceTimeCell discoverAvailableActionTypes], %@ subscribing action discovering requests for contact %@.", v27, 0x16u);
    }

    v8 = [(CNFaceTimeCell *)self allModelsObservable];
    v9 = [(CNFaceTimeCell *)self schedulerProvider];
    v10 = [v9 backgroundScheduler];
    v11 = [v8 subscribeOn:v10];
    v12 = MEMORY[0x1E69967A0];
    v19 = MEMORY[0x1E69E9820];
    v20 = 3221225472;
    v21 = __46__CNFaceTimeCell_discoverAvailableActionTypes__block_invoke_12;
    v22 = &unk_1E74E69E8;
    objc_copyWeak(&v24, &location);
    v23 = buf;
    v13 = [v12 observerWithResultBlock:&v19];
    v14 = [v11 subscribe:{v13, v19, v20, v21, v22}];

    [v6 addObject:v14];
    objc_storeWeak((*&buf[8] + 40), v14);
    [(CNFaceTimeCell *)self setTokens:v6];

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
  v3 = [(CNFaceTimeCell *)self supportedActionTypes];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __35__CNFaceTimeCell_loadCachedActions__block_invoke;
  v8[3] = &unk_1E74E6970;
  v8[4] = self;
  v4 = [v3 _cn_map:v8];

  v5 = MEMORY[0x1E695DF20];
  v6 = [(CNFaceTimeCell *)self supportedActionTypes];
  v7 = [v5 dictionaryWithObjects:v4 forKeys:v6];

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

- (void)setContact:(id)a3
{
  v5 = a3;
  if (self->_contact != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_contact, a3);
    [(CNFaceTimeCell *)self reset];
    [(CNFaceTimeCell *)self loadCachedActions];
    [(CNFaceTimeCell *)self discoverAvailableActionTypes];
    v5 = v6;
  }
}

- (void)setActionsDataSource:(id)a3
{
  v17 = a3;
  if (self->_actionsDataSource != v17)
  {
    objc_storeStrong(&self->_actionsDataSource, a3);
    v5 = [(CNFaceTimeCell *)self actionView1];

    if (v5)
    {
      v6 = MEMORY[0x1E69DCAB8];
      v7 = [(CNFaceTimeCell *)self actionView1];
      v8 = [v7 type];
      v9 = [v6 cnui_userActionSymbolImageForActionType:v8 scale:-1 withColor:0];
      v10 = [(CNFaceTimeCell *)self actionView1];
      [v10 setImage:v9];
    }

    v11 = [(CNFaceTimeCell *)self actionView2];

    if (v11)
    {
      v12 = MEMORY[0x1E69DCAB8];
      v13 = [(CNFaceTimeCell *)self actionView2];
      v14 = [v13 type];
      v15 = [v12 cnui_userActionSymbolImageForActionType:v14 scale:-1 withColor:0];
      v16 = [(CNFaceTimeCell *)self actionView2];
      [v16 setImage:v15];
    }
  }
}

- (CNFaceTimeCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v30[2] = *MEMORY[0x1E69E9840];
  v28.receiver = self;
  v28.super_class = CNFaceTimeCell;
  v4 = [(CNLabeledCell *)&v28 initWithStyle:a3 reuseIdentifier:a4];
  v5 = v4;
  if (v4)
  {
    tokens = v4->_tokens;
    v4->_tokens = MEMORY[0x1E695E0F0];

    v7 = +[CNUIContactsEnvironment currentEnvironment];
    v8 = [v7 defaultSchedulerProvider];
    schedulerProvider = v5->_schedulerProvider;
    v5->_schedulerProvider = v8;

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
    v21 = [(CNFaceTimeCell *)v5 contentView];
    [v21 addSubview:v5->_actionView1];

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
      v26 = [(CNFaceTimeCell *)v5 contentView];
      [v26 addSubview:v5->_actionView2];
    }

    [(CNFaceTimeCell *)v5 updateHorizontalTouchAreas];
  }

  return v5;
}

@end