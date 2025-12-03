@interface CNQuickActionsView
+ (id)actionsManagerForContact:(id)contact;
+ (id)defaultCategories;
+ (id)descriptorForRequiredKeys;
- (BOOL)quickActionButton:(id)button performAction:(id)action;
- (CGSize)cachedContentSize;
- (CNQuickActionsView)initWithContact:(id)contact;
- (CNQuickActionsView)initWithFrame:(CGRect)frame;
- (CNQuickActionsViewDelegate)delegate;
- (double)_widthForButtonCount:(int64_t)count itemSize:(CGSize *)size;
- (double)interspace;
- (double)maximumWidth;
- (id)actionsManager:(id)manager presentingViewControllerForAction:(id)action;
- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path;
- (int64_t)collectionView:(id)view numberOfItemsInSection:(int64_t)section;
- (void)_updateActions;
- (void)actionsManager:(id)manager actionDidPerform:(id)perform;
- (void)contactActionsController:(id)controller didSelectAction:(id)action;
- (void)didDisambiguateActionType:(id)type withActionItem:(id)item;
- (void)performAction:(id)action;
- (void)reloadData;
- (void)setContact:(id)contact;
- (void)setInterspace:(double)interspace;
- (void)setSortsWithDuet:(BOOL)duet;
- (void)showDisambiguationControllerWithDataSource:(id)source actionType:(id)type onController:(id)controller sourceView:(id)view;
- (void)updateContentSize;
- (void)willMoveToWindow:(id)window;
@end

@implementation CNQuickActionsView

- (CGSize)cachedContentSize
{
  width = self->_cachedContentSize.width;
  height = self->_cachedContentSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (CNQuickActionsViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)contactActionsController:(id)controller didSelectAction:(id)action
{
  actionCopy = action;
  alertController = [(CNQuickActionsView *)self alertController];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __63__CNQuickActionsView_contactActionsController_didSelectAction___block_invoke;
  v7[3] = &unk_1E74E6A88;
  v7[4] = self;
  [alertController dismissViewControllerAnimated:1 completion:v7];

  [(CNQuickActionsView *)self performAction:actionCopy];
  [(CNQuickActionsView *)self setActionsController:0];
}

- (void)didDisambiguateActionType:(id)type withActionItem:(id)item
{
  v6 = MEMORY[0x1E6996BE8];
  itemCopy = item;
  typeCopy = type;
  v9 = [v6 alloc];
  v10 = +[CNUIContactsEnvironment currentEnvironment];
  actionDiscoveringEnvironment = [v10 actionDiscoveringEnvironment];
  v13 = [v9 initWithDiscoveringEnvironment:actionDiscoveringEnvironment];

  contact = [(CNQuickActionsView *)self contact];
  [v13 consumer:self didSelectItem:itemCopy forContact:contact actionType:typeCopy];
}

- (void)performAction:(id)action
{
  actionCopy = action;
  v5 = objc_alloc_init(MEMORY[0x1E6996BD0]);
  v6 = [actionCopy performActionWithContext:v5];

  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __36__CNQuickActionsView_performAction___block_invoke;
  v12[3] = &unk_1E74E48F8;
  v7 = actionCopy;
  v13 = v7;
  selfCopy = self;
  [v6 addSuccessBlock:v12];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __36__CNQuickActionsView_performAction___block_invoke_2;
  v9[3] = &unk_1E74E5CD8;
  v10 = v7;
  selfCopy2 = self;
  v8 = v7;
  [v6 addFailureBlock:v9];
}

void __36__CNQuickActionsView_performAction___block_invoke(uint64_t a1)
{
  NSLog(&cfstr_DidPerformActi.isa, *(a1 + 32));
  v2 = [*(a1 + 40) delegate];
  v3 = objc_opt_respondsToSelector();

  if (v3)
  {
    v4 = [*(a1 + 40) delegate];
    v5 = *(a1 + 40);
    v6 = [v5 performingAction];
    [v4 actionsView:v5 didPerformAction:v6];
  }

  [*(a1 + 40) setPerformingAction:0];
  v7 = *(a1 + 40);
  v9 = [v7 performingAction];
  v8 = [v9 userActionType];
  [v7 didDisambiguateActionType:v8 withActionItem:*(a1 + 32)];
}

void __36__CNQuickActionsView_performAction___block_invoke_2(uint64_t a1, uint64_t a2)
{
  NSLog(&cfstr_DidFailToPerfo.isa, *(a1 + 32), a2);
  [*(a1 + 40) setPerformingAction:0];
  v3 = *(a1 + 40);
  v5 = [v3 performingAction];
  v4 = [v5 userActionType];
  [v3 didDisambiguateActionType:v4 withActionItem:*(a1 + 32)];
}

- (void)showDisambiguationControllerWithDataSource:(id)source actionType:(id)type onController:(id)controller sourceView:(id)view
{
  v29[1] = *MEMORY[0x1E69E9840];
  typeCopy = type;
  controllerCopy = controller;
  viewCopy = view;
  sourceCopy = source;
  v14 = [CNContactActionsController alloc];
  contact = [(CNQuickActionsView *)self contact];
  v29[0] = typeCopy;
  v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v29 count:1];
  v17 = [(CNContactActionsController *)v14 initWithContact:contact dataSource:sourceCopy actionTypes:v16];

  [(CNQuickActionsView *)self setActionsController:v17];
  actionsController = [(CNQuickActionsView *)self actionsController];
  [actionsController setDelegate:self];

  v19 = [MEMORY[0x1E69DC650] alertControllerWithTitle:0 message:0 preferredStyle:0];
  v20 = MEMORY[0x1E69DC648];
  v21 = CNContactsUIBundle();
  v22 = [v21 localizedStringForKey:@"CANCEL" value:&stru_1F0CE7398 table:@"Localized"];
  v28[0] = MEMORY[0x1E69E9820];
  v28[1] = 3221225472;
  v28[2] = __100__CNQuickActionsView_showDisambiguationControllerWithDataSource_actionType_onController_sourceView___block_invoke;
  v28[3] = &unk_1E74E6C28;
  v28[4] = self;
  v23 = [v20 actionWithTitle:v22 style:1 handler:v28];
  [v19 addAction:v23];

  actionsController2 = [(CNQuickActionsView *)self actionsController];
  viewController = [actionsController2 viewController];
  [v19 setContentViewController:viewController];

  popoverPresentationController = [v19 popoverPresentationController];
  v27 = popoverPresentationController;
  if (popoverPresentationController)
  {
    [popoverPresentationController setSourceView:viewCopy];
    [viewCopy bounds];
    [v27 setSourceRect:?];
  }

  [controllerCopy presentViewController:v19 animated:1 completion:0];
}

- (BOOL)quickActionButton:(id)button performAction:(id)action
{
  buttonCopy = button;
  actionCopy = action;
  delegate = [(CNQuickActionsView *)self delegate];
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {

    goto LABEL_7;
  }

  delegate2 = [(CNQuickActionsView *)self delegate];
  v10 = [delegate2 viewControllerForActionsView:self];

  if (!v10)
  {
LABEL_7:
    v30 = 0;
    goto LABEL_13;
  }

  userActionType = [actionCopy userActionType];
  v12 = objc_alloc(MEMORY[0x1E6996BE8]);
  v13 = +[CNUIContactsEnvironment currentEnvironment];
  actionDiscoveringEnvironment = [v13 actionDiscoveringEnvironment];
  v15 = [v12 initWithDiscoveringEnvironment:actionDiscoveringEnvironment];

  [(CNQuickActionsView *)self setPerformingAction:actionCopy];
  if ([actionCopy isLongPress])
  {
    goto LABEL_11;
  }

  v16 = objc_alloc_init(MEMORY[0x1E69967D0]);
  contact = [(CNQuickActionsView *)self contact];
  v34[0] = MEMORY[0x1E69E9820];
  v34[1] = 3221225472;
  v34[2] = __54__CNQuickActionsView_quickActionButton_performAction___block_invoke;
  v34[3] = &unk_1E74E48D0;
  v18 = v16;
  v35 = v18;
  v32 = userActionType;
  v19 = [v15 consumer:self actionModelsForContact:contact actionType:userActionType handler:v34];

  future = [v18 future];
  v21 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceNow:1.0];
  v33 = 0;
  v22 = [future resultBeforeDate:v21 error:&v33];
  v23 = v33;

  defaultAction = [v22 defaultAction];

  if (defaultAction)
  {
    defaultAction2 = [v22 defaultAction];
    [(CNQuickActionsView *)self performAction:defaultAction2];
  }

  else if (!v22)
  {
    _CNUILog("/Library/Caches/com.apple.xbs/Sources/ContactsUI/Framework/CNQuickActionsView.m", 365, 5, @"Failed to retrieve default action with %@", v25, v26, v27, v28, v23);
  }

  userActionType = v32;
  if (!defaultAction)
  {
LABEL_11:
    [(CNQuickActionsView *)self showDisambiguationControllerWithDataSource:v15 actionType:userActionType onController:v10 sourceView:buttonCopy];
  }

  v30 = 1;
LABEL_13:

  return v30;
}

- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path
{
  pathCopy = path;
  v7 = [view dequeueReusableCellWithReuseIdentifier:@"actionCell" forIndexPath:pathCopy];
  actions = [(CNQuickActionsView *)self actions];
  item = [pathCopy item];

  v10 = [actions objectAtIndex:item];

  button = [v7 button];
  [button setAction:v10];

  button2 = [v7 button];
  [button2 setDelegate:self];

  [v7 setShowTitle:{-[CNQuickActionsView showTitles](self, "showTitles")}];
  [v7 setShowBackgroundPlatter:{-[CNQuickActionsView showBackgroundPlatters](self, "showBackgroundPlatters")}];

  return v7;
}

- (int64_t)collectionView:(id)view numberOfItemsInSection:(int64_t)section
{
  v4 = [(CNQuickActionsView *)self actions:view];
  v5 = [v4 count];

  return v5;
}

- (void)actionsManager:(id)manager actionDidPerform:(id)perform
{
  performCopy = perform;
  delegate = [(CNQuickActionsView *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    delegate2 = [(CNQuickActionsView *)self delegate];
    [delegate2 actionsView:self didPerformAction:performCopy];
  }
}

- (id)actionsManager:(id)manager presentingViewControllerForAction:(id)action
{
  v5 = [(CNQuickActionsView *)self delegate:manager];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    delegate = [(CNQuickActionsView *)self delegate];
    v8 = [delegate viewControllerForActionsView:self];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (double)maximumWidth
{
  categories = [(CNQuickActionsView *)self categories];
  v4 = [categories count];

  [(CNQuickActionsView *)self _widthForButtonCount:v4 itemSize:0];
  return result;
}

- (double)_widthForButtonCount:(int64_t)count itemSize:(CGSize *)size
{
  v4 = count - 1;
  if (count < 1)
  {
    return 0.0;
  }

  v19 = 0;
  v20 = &v19;
  v21 = 0x3010000000;
  v22 = "";
  v23 = *MEMORY[0x1E695F060];
  actions = [(CNQuickActionsView *)self actions];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __52__CNQuickActionsView__widthForButtonCount_itemSize___block_invoke;
  v18[3] = &unk_1E74E48A8;
  v18[4] = self;
  v18[5] = &v19;
  [actions enumerateObjectsUsingBlock:v18];

  collectionLayout = [(CNQuickActionsView *)self collectionLayout];
  [collectionLayout minimumInteritemSpacing];
  v11 = v10;

  if ([(CNQuickActionsView *)self showTitles])
  {
    v12 = 60.0;
  }

  else
  {
    v12 = v20[4];
  }

  v14 = v20[5];
  showTitles = [(CNQuickActionsView *)self showTitles];
  if (size)
  {
    v16 = 0.0;
    if (showTitles)
    {
      v16 = 25.0;
    }

    size->width = v12;
    size->height = v14 + v16;
  }

  v13 = v11 * v4 + count * v12;
  _Block_object_dispose(&v19, 8);
  return v13;
}

void __52__CNQuickActionsView__widthForButtonCount_itemSize___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 tintColor];
  [v4 setImageTintColor:v5];

  v6 = [v4 imageForContext:5];

  [v6 size];
  v8 = v7;
  v10 = v9;

  v11 = *(*(a1 + 40) + 8);
  v12 = *(v11 + 32);
  v13 = ceil(v8);
  if (v12 < v13)
  {
    v12 = v13;
  }

  *(v11 + 32) = v12;
  v14 = *(*(a1 + 40) + 8);
  v15 = *(v14 + 40);
  v16 = ceil(v10);
  if (v15 < v16)
  {
    v15 = v16;
  }

  *(v14 + 40) = v15;
}

- (void)willMoveToWindow:(id)window
{
  v5.receiver = self;
  v5.super_class = CNQuickActionsView;
  [(CNQuickActionsView *)&v5 willMoveToWindow:?];
  if (window)
  {
    [(CNQuickActionsView *)self _updateActions];
  }
}

- (void)updateContentSize
{
  actions = [(CNQuickActionsView *)self actions];
  v4 = [actions count];

  v5 = MEMORY[0x1E695F060];
  v11 = *MEMORY[0x1E695F060];
  [(CNQuickActionsView *)self _widthForButtonCount:v4 itemSize:&v11];
  if (v6 <= 0.0)
  {
    v7 = *v5;
    v8 = v5[1];
  }

  else
  {
    v7 = v6;
    v8 = *(&v11 + 1);
    v9 = *&v11;
    collectionLayout = [(CNQuickActionsView *)self collectionLayout];
    [collectionLayout setItemSize:{v9, v8}];
  }

  [(CNQuickActionsView *)self setCachedContentSize:v7, v8];
  [(CNQuickActionsView *)self invalidateIntrinsicContentSize];
}

- (void)reloadData
{
  [(CNQuickActionsView *)self updateContentSize];
  collectionView = [(CNQuickActionsView *)self collectionView];
  [collectionView reloadData];
}

- (void)_updateActions
{
  v18[1] = *MEMORY[0x1E69E9840];
  actionsManager = [(CNQuickActionsView *)self actionsManager];
  v4 = actionsManager;
  if (actionsManager && ([actionsManager contacts], v5 = objc_claimAutoreleasedReturnValue(), -[CNQuickActionsView contact](self, "contact"), v6 = objc_claimAutoreleasedReturnValue(), v18[0] = v6, objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObjects:count:", v18, 1), v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v5, "isEqual:", v7), v7, v6, v5, (v8 & 1) != 0))
  {
    v9 = v4;
  }

  else
  {
    v10 = objc_opt_class();
    contact = [(CNQuickActionsView *)self contact];
    v9 = [v10 actionsManagerForContact:contact];

    categories = [(CNQuickActionsView *)self categories];
    [v9 setCategories:categories];

    [v9 setSortsWithDuet:{-[CNQuickActionsView sortsWithDuet](self, "sortsWithDuet")}];
    [v9 setUseDuetIfAvailable:{-[CNQuickActionsView useDuetIfAvailable](self, "useDuetIfAvailable")}];
    [(CNQuickActionsView *)self setActionsManager:v9];
    [v9 setDelegate:self];
    objc_initWeak(&location, v9);
    objc_initWeak(&from, self);
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __36__CNQuickActionsView__updateActions__block_invoke;
    v13[3] = &unk_1E74E4880;
    objc_copyWeak(&v14, &location);
    objc_copyWeak(&v15, &from);
    [v9 updateActionsWithBlock:v13];
    objc_destroyWeak(&v15);
    objc_destroyWeak(&v14);
    objc_destroyWeak(&from);
    objc_destroyWeak(&location);
  }
}

void __36__CNQuickActionsView__updateActions__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = objc_loadWeakRetained((a1 + 40));
  v3 = [WeakRetained actions];
  v4 = [v3 mutableCopy];

  v5 = [v2 delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = [v2 delegate];
    [v7 actionsView:v2 willShowActions:v4];
  }

  [v2 setActions:v4];
  [v2 reloadData];
}

- (double)interspace
{
  collectionLayout = [(CNQuickActionsView *)self collectionLayout];
  [collectionLayout minimumInteritemSpacing];
  v4 = v3;

  return v4;
}

- (void)setSortsWithDuet:(BOOL)duet
{
  duetCopy = duet;
  self->_sortsWithDuet = duet;
  actionsManager = [(CNQuickActionsView *)self actionsManager];
  [actionsManager setSortsWithDuet:duetCopy];
}

- (void)setInterspace:(double)interspace
{
  collectionLayout = [(CNQuickActionsView *)self collectionLayout];
  [collectionLayout setMinimumInteritemSpacing:interspace];
}

- (void)setContact:(id)contact
{
  v9[1] = *MEMORY[0x1E69E9840];
  contactCopy = contact;
  if (self->_contact != contactCopy)
  {
    descriptorForRequiredKeys = [objc_opt_class() descriptorForRequiredKeys];
    v9[0] = descriptorForRequiredKeys;
    v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:1];
    [(CNContact *)contactCopy assertKeysAreAvailable:v7];

    objc_storeStrong(&self->_contact, contact);
    window = [(CNQuickActionsView *)self window];

    if (window)
    {
      [(CNQuickActionsView *)self _updateActions];
    }
  }
}

- (CNQuickActionsView)initWithContact:(id)contact
{
  v4 = *MEMORY[0x1E695F058];
  v5 = *(MEMORY[0x1E695F058] + 8);
  v6 = *(MEMORY[0x1E695F058] + 16);
  v7 = *(MEMORY[0x1E695F058] + 24);
  contactCopy = contact;
  v9 = [(CNQuickActionsView *)self initWithFrame:v4, v5, v6, v7];
  [(CNQuickActionsView *)v9 setContact:contactCopy];

  return v9;
}

- (CNQuickActionsView)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v19[4] = *MEMORY[0x1E69E9840];
  v18.receiver = self;
  v18.super_class = CNQuickActionsView;
  v7 = [(CNQuickActionsView *)&v18 initWithFrame:?];
  v7->_showBackgroundPlatters = 0;
  v8 = objc_alloc_init(MEMORY[0x1E69DC840]);
  [(CNQuickActionsView *)v7 setCollectionLayout:v8];
  v9 = [objc_alloc(MEMORY[0x1E69DC7F0]) initWithFrame:v8 collectionViewLayout:{x, y, width, height}];
  [v9 setScrollEnabled:0];
  [v9 setBackgroundColor:0];
  [v9 setTranslatesAutoresizingMaskIntoConstraints:0];
  [(CNQuickActionsView *)v7 addSubview:v9];
  [(CNQuickActionsView *)v7 setCollectionView:v9];
  v10 = MEMORY[0x1E696ACD8];
  v11 = [MEMORY[0x1E696ACD8] constraintWithItem:v9 attribute:3 relatedBy:0 toItem:v7 attribute:3 multiplier:1.0 constant:0.0];
  v19[0] = v11;
  v12 = [MEMORY[0x1E696ACD8] constraintWithItem:v9 attribute:1 relatedBy:0 toItem:v7 attribute:1 multiplier:1.0 constant:0.0];
  v19[1] = v12;
  v13 = [MEMORY[0x1E696ACD8] constraintWithItem:v9 attribute:4 relatedBy:0 toItem:v7 attribute:4 multiplier:1.0 constant:0.0];
  v19[2] = v13;
  v14 = [MEMORY[0x1E696ACD8] constraintWithItem:v9 attribute:2 relatedBy:0 toItem:v7 attribute:2 multiplier:1.0 constant:0.0];
  v19[3] = v14;
  v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:4];
  [v10 activateConstraints:v15];

  [v9 registerClass:objc_opt_class() forCellWithReuseIdentifier:@"actionCell"];
  [v9 setDataSource:v7];
  [v9 setDelegate:v7];
  defaultCategories = [objc_opt_class() defaultCategories];
  [(CNQuickActionsView *)v7 setCategories:defaultCategories];

  return v7;
}

+ (id)actionsManagerForContact:(id)contact
{
  v9 = *MEMORY[0x1E69E9840];
  if (contact)
  {
    contactCopy = contact;
    v3 = MEMORY[0x1E695DEC8];
    contactCopy2 = contact;
    v5 = [v3 arrayWithObjects:&contactCopy count:1];
    v6 = [CNQuickActionsManager actionsManagerForContacts:v5, contactCopy, v9];
  }

  else
  {
    v6 = [CNQuickActionsManager actionsManagerForContacts:MEMORY[0x1E695E0F0]];
  }

  return v6;
}

+ (id)defaultCategories
{
  v4[4] = *MEMORY[0x1E69E9840];
  v4[0] = CNQuickActionCategoryAudioCall;
  v4[1] = CNQuickActionCategoryVideoCall;
  v4[2] = CNQuickActionCategoryInstantMessage;
  v4[3] = CNQuickActionCategoryMail;
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v4 count:4];

  return v2;
}

+ (id)descriptorForRequiredKeys
{
  v9[2] = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E695CD58];
  v3 = +[CNQuickActionsManager descriptorForRequiredKeys];
  v9[0] = v3;
  descriptorForRequiredKeys = [MEMORY[0x1E6996BE8] descriptorForRequiredKeys];
  v9[1] = descriptorForRequiredKeys;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:2];
  v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"+[CNQuickActionsView descriptorForRequiredKeys]"];
  v7 = [v2 descriptorWithKeyDescriptors:v5 description:v6];

  return v7;
}

@end