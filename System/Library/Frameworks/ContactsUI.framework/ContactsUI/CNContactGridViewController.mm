@interface CNContactGridViewController
- (BOOL)collectionView:(id)a3 shouldSelectItemAtIndexPath:(id)a4;
- (CGSize)avatarSize;
- (CNContactGridViewController)initWithDataSource:(id)a3;
- (CNContactGridViewControllerDelegate)delegate;
- (CNKeyDescriptor)descriptorForRequiredKeys;
- (NSArray)inlineActionsCategories;
- (NSIndexPath)indexPathOfContactWithExpandedInlineActions;
- (UIEdgeInsets)avatarMargins;
- (id)_contactAtIndexPath:(id)a3;
- (id)_indexPathForGlobalIndex:(int64_t)a3;
- (id)collectionView:(id)a3 cellForItemAtIndexPath:(id)a4;
- (int64_t)_globalIndexForIndexPath:(id)a3;
- (int64_t)collectionView:(id)a3 numberOfItemsInSection:(int64_t)a4;
- (int64_t)indexOfContactWithExpandedInlineActions;
- (int64_t)numberOfSectionsInCollectionView:(id)a3;
- (void)_configureCell:(id)a3;
- (void)_updateItemSize;
- (void)actionsView:(id)a3 didPerformAction:(id)a4;
- (void)actionsView:(id)a3 willShowActions:(id)a4;
- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4;
- (void)contactDataSourceDidChange:(id)a3;
- (void)preloadInlineActionsForContactsAtIndexes:(id)a3;
- (void)setDataSource:(id)a3;
- (void)setIndexOfContactWithExpandedInlineActions:(int64_t)a3 animated:(BOOL)a4;
- (void)setIndexPathOfContactWithExpandedInlineActions:(id)a3 animated:(BOOL)a4;
- (void)viewDidLoad;
- (void)viewWillLayoutSubviews;
- (void)willBeginPreviewInteractionForAvatarView:(id)a3;
@end

@implementation CNContactGridViewController

- (UIEdgeInsets)avatarMargins
{
  top = self->_avatarMargins.top;
  left = self->_avatarMargins.left;
  bottom = self->_avatarMargins.bottom;
  right = self->_avatarMargins.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (CGSize)avatarSize
{
  width = self->_avatarSize.width;
  height = self->_avatarSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (CNContactGridViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4
{
  v8 = a4;
  v5 = [(CNContactGridViewController *)self indexPathOfContactWithExpandedInlineActions];
  v6 = v5;
  if (v5 && ([v5 isEqual:v8] & 1) != 0)
  {
    v7 = 0;
  }

  else
  {
    v7 = v8;
  }

  [(CNContactGridViewController *)self setIndexPathOfContactWithExpandedInlineActions:v7];
}

- (BOOL)collectionView:(id)a3 shouldSelectItemAtIndexPath:(id)a4
{
  v5 = a4;
  if ([(CNContactGridViewController *)self inlineActionsEnabled])
  {
    v6 = [(CNContactGridViewController *)self indexPathOfContactWithExpandedInlineActions];
    v7 = v6;
    if (v6 && ([v6 isEqual:v5] & 1) != 0 || (-[CNContactGridViewController delegate](self, "delegate"), v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_opt_respondsToSelector(), v8, (v9 & 1) == 0))
    {
      v12 = 1;
    }

    else
    {
      v10 = [(CNContactGridViewController *)self _globalIndexForIndexPath:v5];
      v11 = [(CNContactGridViewController *)self delegate];
      v12 = [v11 gridViewController:self shouldShowInlineActionsForContactAtIndex:v10];
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (id)collectionView:(id)a3 cellForItemAtIndexPath:(id)a4
{
  v6 = a4;
  v7 = [a3 dequeueReusableCellWithReuseIdentifier:@"Cell" forIndexPath:v6];
  [(CNContactGridViewController *)self _configureCell:v7];
  v8 = [(CNContactGridViewController *)self _contactAtIndexPath:v6];

  v9 = [(CNContactGridViewController *)self preloadedActionsManagers];
  v10 = [v8 identifier];
  v11 = [v9 objectForKeyedSubscript:v10];
  [v7 setActionsManager:v11];

  [v7 setContact:v8];

  return v7;
}

- (int64_t)collectionView:(id)a3 numberOfItemsInSection:(int64_t)a4
{
  v6 = [(CNContactGridViewController *)self dataSource];
  v7 = [v6 sections];

  if ([v7 count])
  {
    v8 = [v7 objectAtIndexedSubscript:a4];
    [v8 range];
    v10 = v9;
  }

  else
  {
    v8 = [(CNContactGridViewController *)self dataSource];
    v11 = [v8 contacts];
    v10 = [v11 count];
  }

  return v10;
}

- (int64_t)numberOfSectionsInCollectionView:(id)a3
{
  v3 = [(CNContactGridViewController *)self dataSource];
  v4 = [v3 sections];

  if ([v4 count])
  {
    v5 = [v4 count];
  }

  else
  {
    v5 = 1;
  }

  return v5;
}

- (void)contactDataSourceDidChange:(id)a3
{
  v3 = [(CNContactGridViewController *)self collectionView];
  [v3 reloadData];
}

- (void)actionsView:(id)a3 didPerformAction:(id)a4
{
  v17 = a4;
  v5 = [(CNContactGridViewController *)self indexPathOfContactWithExpandedInlineActions];

  if (v5)
  {
    v6 = [(CNContactGridViewController *)self delegate];
    v7 = objc_opt_respondsToSelector();

    if (v7)
    {
      v8 = [(CNContactGridViewController *)self indexPathOfContactWithExpandedInlineActions];
      v9 = [(CNContactGridViewController *)self _globalIndexForIndexPath:v8];

      objc_opt_class();
      v10 = v17;
      if (objc_opt_isKindOfClass())
      {
        v11 = v10;
      }

      else
      {
        v11 = 0;
      }

      v12 = v11;

      if (v12)
      {
        v13 = [v12 propertyAction];
        v14 = [v13 propertyItem];
        v15 = [v14 contactProperty];
      }

      else
      {
        v15 = 0;
      }

      v16 = [(CNContactGridViewController *)self delegate];
      [v16 gridViewController:self didPerformAction:v10 forContactAtIndex:v9 withContactProperty:v15];
    }
  }
}

- (void)actionsView:(id)a3 willShowActions:(id)a4
{
  v11 = a4;
  v5 = [(CNContactGridViewController *)self indexPathOfContactWithExpandedInlineActions];

  if (v5)
  {
    v6 = [(CNContactGridViewController *)self delegate];
    v7 = objc_opt_respondsToSelector();

    if (v7)
    {
      v8 = [(CNContactGridViewController *)self indexPathOfContactWithExpandedInlineActions];
      v9 = [(CNContactGridViewController *)self _globalIndexForIndexPath:v8];

      v10 = [(CNContactGridViewController *)self delegate];
      [v10 gridViewController:self willShowInlineActions:v11 forContactAtIndex:v9];
    }
  }
}

- (void)willBeginPreviewInteractionForAvatarView:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = [(CNContactGridViewController *)self collectionView:a3];
  v5 = [v4 indexPathsForSelectedItems];

  v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      v9 = 0;
      do
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v12 + 1) + 8 * v9);
        v11 = [(CNContactGridViewController *)self collectionView];
        [v11 deselectItemAtIndexPath:v10 animated:0];

        ++v9;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }
}

- (CNKeyDescriptor)descriptorForRequiredKeys
{
  v11[3] = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E695CD58];
  v3 = [(CNContactGridViewController *)self contactFormatter];
  v4 = [v3 descriptorForRequiredKeys];
  v5 = [CNAvatarView descriptorForRequiredKeysWithThreeDTouchEnabled:1, v4];
  v11[1] = v5;
  v6 = +[CNQuickActionsView descriptorForRequiredKeys];
  v11[2] = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:3];
  v8 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[CNContactGridViewController descriptorForRequiredKeys]"];
  v9 = [v2 descriptorWithKeyDescriptors:v7 description:v8];

  return v9;
}

- (void)preloadInlineActionsForContactsAtIndexes:(id)a3
{
  v4 = a3;
  v15 = v4;
  if (!self->_preloadedActionsManagers)
  {
    v5 = objc_alloc_init(MEMORY[0x1E695DF90]);
    [(CNContactGridViewController *)self setPreloadedActionsManagers:v5];

    v4 = v15;
  }

  v6 = [v4 firstIndex];
  if (v6 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v7 = v6;
    do
    {
      v8 = [(CNContactGridViewController *)self dataSource];
      v9 = [v8 contacts];
      v10 = [v9 objectAtIndexedSubscript:v7];

      v11 = [CNQuickActionsView actionsManagerForContact:v10];
      v12 = [(CNContactGridViewController *)self inlineActionsCategories];
      [v11 setCategories:v12];

      preloadedActionsManagers = self->_preloadedActionsManagers;
      v14 = [v10 identifier];
      [(NSMutableDictionary *)preloadedActionsManagers setObject:v11 forKey:v14];

      [v11 updateActionsWithBlock:0];
      v7 = [v15 indexGreaterThanIndex:v7];
    }

    while (v7 != 0x7FFFFFFFFFFFFFFFLL);
  }
}

- (int64_t)indexOfContactWithExpandedInlineActions
{
  v3 = [(CNContactGridViewController *)self indexPathOfContactWithExpandedInlineActions];
  if (v3)
  {
    v4 = [(CNContactGridViewController *)self _globalIndexForIndexPath:v3];
  }

  else
  {
    v4 = -1;
  }

  return v4;
}

- (void)setIndexOfContactWithExpandedInlineActions:(int64_t)a3 animated:(BOOL)a4
{
  v4 = a4;
  if (a3 < 0)
  {

    [(CNContactGridViewController *)self setIndexPathOfContactWithExpandedInlineActions:0 animated:?];
  }

  else
  {
    v6 = [(CNContactGridViewController *)self _indexPathForGlobalIndex:?];
    [(CNContactGridViewController *)self setIndexPathOfContactWithExpandedInlineActions:v6 animated:v4];
  }
}

- (NSIndexPath)indexPathOfContactWithExpandedInlineActions
{
  v2 = [(CNContactGridViewController *)self gridLayout];
  v3 = [v2 selectedIndexPath];

  return v3;
}

- (void)setIndexPathOfContactWithExpandedInlineActions:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [(CNContactGridViewController *)self collectionView];
  v8 = [(CNContactGridViewController *)self indexPathOfContactWithExpandedInlineActions];
  v9 = [(CNContactGridViewController *)self gridLayout];
  v10 = [v9 copy];

  if (v6)
  {
    v11 = [v7 cellForItemAtIndexPath:v6];
    if (v8)
    {
      goto LABEL_3;
    }

LABEL_6:
    v12 = 0;
    if (v6)
    {
      goto LABEL_4;
    }

    goto LABEL_7;
  }

  v11 = 0;
  if (!v8)
  {
    goto LABEL_6;
  }

LABEL_3:
  v12 = [v7 cellForItemAtIndexPath:v8];
  if (v6)
  {
LABEL_4:
    v13 = [v11 animationBlockForPreparingToShowActions];
    goto LABEL_8;
  }

LABEL_7:
  v13 = 0;
LABEL_8:
  [v10 setSelectedIndexPath:v6];
  [(CNContactGridViewController *)self setGridLayout:v10];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __87__CNContactGridViewController_setIndexPathOfContactWithExpandedInlineActions_animated___block_invoke;
  aBlock[3] = &unk_1E74E77C0;
  v14 = v8;
  v26 = v14;
  v27 = self;
  v15 = _Block_copy(aBlock);
  if (v4)
  {
    v16 = MEMORY[0x1E69DD250];
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __87__CNContactGridViewController_setIndexPathOfContactWithExpandedInlineActions_animated___block_invoke_2;
    v19[3] = &unk_1E74E51B0;
    v20 = v12;
    v23 = v13;
    v21 = v7;
    v22 = v10;
    v24 = v15;
    [v16 _animateUsingDefaultTimingWithOptions:0 animations:v19 completion:0];

    v17 = v20;
  }

  else
  {
    [v7 setCollectionViewLayout:v10 animated:0];
    if (v13)
    {
      v13[2](v13);
    }

    v18 = [v12 completionBlockForHidingActions];
    v17 = v18;
    if (v18)
    {
      (*(v18 + 16))(v18);
    }

    v15[2](v15);
  }
}

void __87__CNContactGridViewController_setIndexPathOfContactWithExpandedInlineActions_animated___block_invoke(uint64_t a1)
{
  if (*(a1 + 32))
  {
    v2 = [*(a1 + 40) delegate];
    v3 = objc_opt_respondsToSelector();

    if (v3)
    {
      v4 = [*(a1 + 40) _globalIndexForIndexPath:*(a1 + 32)];
      v5 = [*(a1 + 40) delegate];
      [v5 gridViewController:*(a1 + 40) didHideInlineActionsForContactAtIndex:v4];
    }
  }
}

void __87__CNContactGridViewController_setIndexPathOfContactWithExpandedInlineActions_animated___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) completionBlockForHidingActions];
  v3 = *(a1 + 56);
  if (v3)
  {
    (*(v3 + 16))();
  }

  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __87__CNContactGridViewController_setIndexPathOfContactWithExpandedInlineActions_animated___block_invoke_3;
  v7[3] = &unk_1E74E5188;
  v8 = v2;
  v9 = *(a1 + 64);
  v6 = v2;
  [v4 setCollectionViewLayout:v5 animated:1 completion:v7];
}

uint64_t __87__CNContactGridViewController_setIndexPathOfContactWithExpandedInlineActions_animated___block_invoke_3(uint64_t result, int a2)
{
  if (a2)
  {
    v2 = result;
    v3 = *(result + 32);
    if (v3)
    {
      (*(v3 + 16))();
    }

    v4 = *(*(v2 + 40) + 16);

    return v4();
  }

  return result;
}

- (id)_contactAtIndexPath:(id)a3
{
  v11[1] = *MEMORY[0x1E69E9840];
  v4 = [(CNContactGridViewController *)self _globalIndexForIndexPath:a3];
  v5 = [(CNContactGridViewController *)self dataSource];
  v6 = [v5 contacts];
  v7 = [v6 objectAtIndexedSubscript:v4];

  v8 = [(CNContactGridViewController *)self descriptorForRequiredKeys];
  v11[0] = v8;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:1];
  [v7 assertKeysAreAvailable:v9];

  return v7;
}

- (id)_indexPathForGlobalIndex:(int64_t)a3
{
  v25 = *MEMORY[0x1E69E9840];
  v4 = [(CNContactGridViewController *)self dataSource];
  v5 = [v4 sections];

  if (v5)
  {
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v6 = v5;
    v7 = [v6 countByEnumeratingWithState:&v20 objects:v24 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = 0;
      v10 = *v21;
      while (2)
      {
        v11 = 0;
        v12 = v9;
        v9 += v8;
        v13 = a3;
        do
        {
          if (*v21 != v10)
          {
            objc_enumerationMutation(v6);
          }

          [*(*(&v20 + 1) + 8 * v11) range];
          a3 = v13 - v14;
          if (v13 < v14)
          {
            a3 = v13;
            v9 = v12;
            goto LABEL_14;
          }

          ++v12;
          ++v11;
          v13 -= v14;
        }

        while (v8 != v11);
        v8 = [v6 countByEnumeratingWithState:&v20 objects:v24 count:16];
        if (v8)
        {
          continue;
        }

        break;
      }
    }

    else
    {
      v9 = 0;
    }

LABEL_14:

    v15 = MEMORY[0x1E696AC88];
    v16 = a3;
    v17 = v9;
  }

  else
  {
    v15 = MEMORY[0x1E696AC88];
    v16 = a3;
    v17 = 0;
  }

  v18 = [v15 indexPathForItem:v16 inSection:{v17, v20}];

  return v18;
}

- (int64_t)_globalIndexForIndexPath:(id)a3
{
  v4 = a3;
  v5 = [(CNContactGridViewController *)self dataSource];
  v6 = [v5 sections];

  if (v6)
  {
    v7 = [v6 objectAtIndexedSubscript:{objc_msgSend(v4, "section")}];
    v8 = [v7 range];
    v9 = v8 + [v4 row];
  }

  else
  {
    v9 = [v4 item];
  }

  return v9;
}

- (void)_configureCell:(id)a3
{
  v4 = a3;
  [(CNContactGridViewController *)self avatarSize];
  [v4 setAvatarSize:?];
  [(CNContactGridViewController *)self avatarMargins];
  [v4 setAvatarMargins:?];
  v5 = [(CNContactGridViewController *)self nameTextAttributes];
  [v4 setNameTextAttributes:v5];

  v6 = [(CNContactGridViewController *)self contactFormatter];
  [v4 setContactFormatter:v6];

  [v4 setDelegate:self];
  [v4 setShowsContactOnTap:{-[CNContactGridViewController inlineActionsEnabled](self, "inlineActionsEnabled") ^ 1}];
  v7 = [(CNContactGridViewController *)self inlineActionsCategories];
  [v4 setActionCategories:v7];
}

- (void)viewWillLayoutSubviews
{
  v12 = [(CNContactGridViewController *)self gridLayout];
  [v12 setNumberOfColumns:{-[CNContactGridViewController numberOfColumns](self, "numberOfColumns")}];
  v3 = [(CNContactGridViewController *)self collectionView];
  [v3 frame];
  Width = CGRectGetWidth(v14);
  v5 = [(CNContactGridViewController *)self numberOfColumns];
  [(CNContactGridViewController *)self avatarMargins];
  v7 = v6;
  [(CNContactGridViewController *)self avatarSize];
  v9 = v7 + v8;
  [(CNContactGridViewController *)self avatarMargins];
  v11 = (Width - v5 * (v9 + v10)) / ([(CNContactGridViewController *)self numberOfColumns]- 1) + -1.0;

  if (v11 < 0.0)
  {
    ceil((1.0 - v11) * ([(CNContactGridViewController *)self numberOfColumns]- 1) / (2 * [(CNContactGridViewController *)self numberOfColumns]));
    [(CNContactGridViewController *)self avatarMargins];
    [(CNContactGridViewController *)self setAvatarMargins:?];
    [(CNContactGridViewController *)self _updateItemSize];
    v11 = 0.0;
  }

  [v12 setMinimumInteritemSpacing:v11];
}

- (void)viewDidLoad
{
  v7.receiver = self;
  v7.super_class = CNContactGridViewController;
  [(CNContactGridViewController *)&v7 viewDidLoad];
  v3 = [(CNContactGridViewController *)self backgroundColor];
  v4 = [(CNContactGridViewController *)self collectionView];
  [v4 setBackgroundColor:v3];

  v5 = [(CNContactGridViewController *)self collectionView];
  [v5 registerClass:objc_opt_class() forCellWithReuseIdentifier:@"Cell"];

  v6 = [(CNContactGridViewController *)self gridLayout];
  [v6 setSectionInset:{*MEMORY[0x1E69DDCE0], *(MEMORY[0x1E69DDCE0] + 8), *(MEMORY[0x1E69DDCE0] + 16), *(MEMORY[0x1E69DDCE0] + 24)}];
  [v6 setMinimumLineSpacing:0.0];
  [(CNContactGridViewController *)self _updateItemSize];
}

- (void)_updateItemSize
{
  [(CNContactGridViewController *)self avatarMargins];
  v4 = v3;
  [(CNContactGridViewController *)self avatarSize];
  v6 = v4 + v5;
  [(CNContactGridViewController *)self avatarMargins];
  v8 = v6 + v7;
  v17 = [[CNContactGridCell alloc] initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), v8, 200.0];
  [(CNContactGridViewController *)self _configureCell:v17];
  [(CNContactGridCell *)v17 setContact:0];
  v9 = [(CNContactGridCell *)v17 contentView];
  LODWORD(v10) = 1148846080;
  LODWORD(v11) = 1112014848;
  [v9 systemLayoutSizeFittingSize:v8 withHorizontalFittingPriority:200.0 verticalFittingPriority:{v10, v11}];
  v13 = v12;
  v15 = v14;

  v16 = [(CNContactGridViewController *)self gridLayout];
  [v16 setItemSize:{v13, v15}];
}

- (NSArray)inlineActionsCategories
{
  inlineActionsCategories = self->_inlineActionsCategories;
  if (inlineActionsCategories)
  {
    v3 = inlineActionsCategories;
  }

  else
  {
    v3 = +[CNQuickActionsView defaultCategories];
  }

  return v3;
}

- (void)setDataSource:(id)a3
{
  v5 = a3;
  dataSource = self->_dataSource;
  if (dataSource != v5)
  {
    v7 = v5;
    [(CNContactDataSource *)dataSource setDelegate:0];
    objc_storeStrong(&self->_dataSource, a3);
    dataSource = [(CNContactDataSource *)self->_dataSource setDelegate:self];
    v5 = v7;
  }

  MEMORY[0x1EEE66BB8](dataSource, v5);
}

- (CNContactGridViewController)initWithDataSource:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(CNContactGridViewLayout);
  v10.receiver = self;
  v10.super_class = CNContactGridViewController;
  v6 = [(CNContactGridViewController *)&v10 initWithCollectionViewLayout:v5];
  v7 = v6;
  if (v4)
  {
    [(CNContactGridViewController *)v6 setDataSource:v4];
  }

  [(CNContactGridViewController *)v7 setGridLayout:v5];
  v8 = objc_alloc_init(MEMORY[0x1E695CD80]);
  [v8 setStyle:1001];
  [v8 setFallbackStyle:-1];
  [(CNContactGridViewController *)v7 setContactFormatter:v8];

  return v7;
}

@end