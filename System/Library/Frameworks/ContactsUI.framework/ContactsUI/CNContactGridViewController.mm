@interface CNContactGridViewController
- (BOOL)collectionView:(id)view shouldSelectItemAtIndexPath:(id)path;
- (CGSize)avatarSize;
- (CNContactGridViewController)initWithDataSource:(id)source;
- (CNContactGridViewControllerDelegate)delegate;
- (CNKeyDescriptor)descriptorForRequiredKeys;
- (NSArray)inlineActionsCategories;
- (NSIndexPath)indexPathOfContactWithExpandedInlineActions;
- (UIEdgeInsets)avatarMargins;
- (id)_contactAtIndexPath:(id)path;
- (id)_indexPathForGlobalIndex:(int64_t)index;
- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path;
- (int64_t)_globalIndexForIndexPath:(id)path;
- (int64_t)collectionView:(id)view numberOfItemsInSection:(int64_t)section;
- (int64_t)indexOfContactWithExpandedInlineActions;
- (int64_t)numberOfSectionsInCollectionView:(id)view;
- (void)_configureCell:(id)cell;
- (void)_updateItemSize;
- (void)actionsView:(id)view didPerformAction:(id)action;
- (void)actionsView:(id)view willShowActions:(id)actions;
- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path;
- (void)contactDataSourceDidChange:(id)change;
- (void)preloadInlineActionsForContactsAtIndexes:(id)indexes;
- (void)setDataSource:(id)source;
- (void)setIndexOfContactWithExpandedInlineActions:(int64_t)actions animated:(BOOL)animated;
- (void)setIndexPathOfContactWithExpandedInlineActions:(id)actions animated:(BOOL)animated;
- (void)viewDidLoad;
- (void)viewWillLayoutSubviews;
- (void)willBeginPreviewInteractionForAvatarView:(id)view;
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

- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path
{
  pathCopy = path;
  indexPathOfContactWithExpandedInlineActions = [(CNContactGridViewController *)self indexPathOfContactWithExpandedInlineActions];
  v6 = indexPathOfContactWithExpandedInlineActions;
  if (indexPathOfContactWithExpandedInlineActions && ([indexPathOfContactWithExpandedInlineActions isEqual:pathCopy] & 1) != 0)
  {
    v7 = 0;
  }

  else
  {
    v7 = pathCopy;
  }

  [(CNContactGridViewController *)self setIndexPathOfContactWithExpandedInlineActions:v7];
}

- (BOOL)collectionView:(id)view shouldSelectItemAtIndexPath:(id)path
{
  pathCopy = path;
  if ([(CNContactGridViewController *)self inlineActionsEnabled])
  {
    indexPathOfContactWithExpandedInlineActions = [(CNContactGridViewController *)self indexPathOfContactWithExpandedInlineActions];
    v7 = indexPathOfContactWithExpandedInlineActions;
    if (indexPathOfContactWithExpandedInlineActions && ([indexPathOfContactWithExpandedInlineActions isEqual:pathCopy] & 1) != 0 || (-[CNContactGridViewController delegate](self, "delegate"), v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_opt_respondsToSelector(), v8, (v9 & 1) == 0))
    {
      v12 = 1;
    }

    else
    {
      v10 = [(CNContactGridViewController *)self _globalIndexForIndexPath:pathCopy];
      delegate = [(CNContactGridViewController *)self delegate];
      v12 = [delegate gridViewController:self shouldShowInlineActionsForContactAtIndex:v10];
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path
{
  pathCopy = path;
  v7 = [view dequeueReusableCellWithReuseIdentifier:@"Cell" forIndexPath:pathCopy];
  [(CNContactGridViewController *)self _configureCell:v7];
  v8 = [(CNContactGridViewController *)self _contactAtIndexPath:pathCopy];

  preloadedActionsManagers = [(CNContactGridViewController *)self preloadedActionsManagers];
  identifier = [v8 identifier];
  v11 = [preloadedActionsManagers objectForKeyedSubscript:identifier];
  [v7 setActionsManager:v11];

  [v7 setContact:v8];

  return v7;
}

- (int64_t)collectionView:(id)view numberOfItemsInSection:(int64_t)section
{
  dataSource = [(CNContactGridViewController *)self dataSource];
  sections = [dataSource sections];

  if ([sections count])
  {
    dataSource2 = [sections objectAtIndexedSubscript:section];
    [dataSource2 range];
    v10 = v9;
  }

  else
  {
    dataSource2 = [(CNContactGridViewController *)self dataSource];
    contacts = [dataSource2 contacts];
    v10 = [contacts count];
  }

  return v10;
}

- (int64_t)numberOfSectionsInCollectionView:(id)view
{
  dataSource = [(CNContactGridViewController *)self dataSource];
  sections = [dataSource sections];

  if ([sections count])
  {
    v5 = [sections count];
  }

  else
  {
    v5 = 1;
  }

  return v5;
}

- (void)contactDataSourceDidChange:(id)change
{
  collectionView = [(CNContactGridViewController *)self collectionView];
  [collectionView reloadData];
}

- (void)actionsView:(id)view didPerformAction:(id)action
{
  actionCopy = action;
  indexPathOfContactWithExpandedInlineActions = [(CNContactGridViewController *)self indexPathOfContactWithExpandedInlineActions];

  if (indexPathOfContactWithExpandedInlineActions)
  {
    delegate = [(CNContactGridViewController *)self delegate];
    v7 = objc_opt_respondsToSelector();

    if (v7)
    {
      indexPathOfContactWithExpandedInlineActions2 = [(CNContactGridViewController *)self indexPathOfContactWithExpandedInlineActions];
      v9 = [(CNContactGridViewController *)self _globalIndexForIndexPath:indexPathOfContactWithExpandedInlineActions2];

      objc_opt_class();
      v10 = actionCopy;
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
        propertyAction = [v12 propertyAction];
        propertyItem = [propertyAction propertyItem];
        contactProperty = [propertyItem contactProperty];
      }

      else
      {
        contactProperty = 0;
      }

      delegate2 = [(CNContactGridViewController *)self delegate];
      [delegate2 gridViewController:self didPerformAction:v10 forContactAtIndex:v9 withContactProperty:contactProperty];
    }
  }
}

- (void)actionsView:(id)view willShowActions:(id)actions
{
  actionsCopy = actions;
  indexPathOfContactWithExpandedInlineActions = [(CNContactGridViewController *)self indexPathOfContactWithExpandedInlineActions];

  if (indexPathOfContactWithExpandedInlineActions)
  {
    delegate = [(CNContactGridViewController *)self delegate];
    v7 = objc_opt_respondsToSelector();

    if (v7)
    {
      indexPathOfContactWithExpandedInlineActions2 = [(CNContactGridViewController *)self indexPathOfContactWithExpandedInlineActions];
      v9 = [(CNContactGridViewController *)self _globalIndexForIndexPath:indexPathOfContactWithExpandedInlineActions2];

      delegate2 = [(CNContactGridViewController *)self delegate];
      [delegate2 gridViewController:self willShowInlineActions:actionsCopy forContactAtIndex:v9];
    }
  }
}

- (void)willBeginPreviewInteractionForAvatarView:(id)view
{
  v17 = *MEMORY[0x1E69E9840];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = [(CNContactGridViewController *)self collectionView:view];
  indexPathsForSelectedItems = [v4 indexPathsForSelectedItems];

  v6 = [indexPathsForSelectedItems countByEnumeratingWithState:&v12 objects:v16 count:16];
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
          objc_enumerationMutation(indexPathsForSelectedItems);
        }

        v10 = *(*(&v12 + 1) + 8 * v9);
        collectionView = [(CNContactGridViewController *)self collectionView];
        [collectionView deselectItemAtIndexPath:v10 animated:0];

        ++v9;
      }

      while (v7 != v9);
      v7 = [indexPathsForSelectedItems countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }
}

- (CNKeyDescriptor)descriptorForRequiredKeys
{
  v11[3] = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E695CD58];
  contactFormatter = [(CNContactGridViewController *)self contactFormatter];
  descriptorForRequiredKeys = [contactFormatter descriptorForRequiredKeys];
  v5 = [CNAvatarView descriptorForRequiredKeysWithThreeDTouchEnabled:1, descriptorForRequiredKeys];
  v11[1] = v5;
  v6 = +[CNQuickActionsView descriptorForRequiredKeys];
  v11[2] = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:3];
  v8 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[CNContactGridViewController descriptorForRequiredKeys]"];
  v9 = [v2 descriptorWithKeyDescriptors:v7 description:v8];

  return v9;
}

- (void)preloadInlineActionsForContactsAtIndexes:(id)indexes
{
  indexesCopy = indexes;
  v15 = indexesCopy;
  if (!self->_preloadedActionsManagers)
  {
    v5 = objc_alloc_init(MEMORY[0x1E695DF90]);
    [(CNContactGridViewController *)self setPreloadedActionsManagers:v5];

    indexesCopy = v15;
  }

  firstIndex = [indexesCopy firstIndex];
  if (firstIndex != 0x7FFFFFFFFFFFFFFFLL)
  {
    v7 = firstIndex;
    do
    {
      dataSource = [(CNContactGridViewController *)self dataSource];
      contacts = [dataSource contacts];
      v10 = [contacts objectAtIndexedSubscript:v7];

      v11 = [CNQuickActionsView actionsManagerForContact:v10];
      inlineActionsCategories = [(CNContactGridViewController *)self inlineActionsCategories];
      [v11 setCategories:inlineActionsCategories];

      preloadedActionsManagers = self->_preloadedActionsManagers;
      identifier = [v10 identifier];
      [(NSMutableDictionary *)preloadedActionsManagers setObject:v11 forKey:identifier];

      [v11 updateActionsWithBlock:0];
      v7 = [v15 indexGreaterThanIndex:v7];
    }

    while (v7 != 0x7FFFFFFFFFFFFFFFLL);
  }
}

- (int64_t)indexOfContactWithExpandedInlineActions
{
  indexPathOfContactWithExpandedInlineActions = [(CNContactGridViewController *)self indexPathOfContactWithExpandedInlineActions];
  if (indexPathOfContactWithExpandedInlineActions)
  {
    v4 = [(CNContactGridViewController *)self _globalIndexForIndexPath:indexPathOfContactWithExpandedInlineActions];
  }

  else
  {
    v4 = -1;
  }

  return v4;
}

- (void)setIndexOfContactWithExpandedInlineActions:(int64_t)actions animated:(BOOL)animated
{
  animatedCopy = animated;
  if (actions < 0)
  {

    [(CNContactGridViewController *)self setIndexPathOfContactWithExpandedInlineActions:0 animated:?];
  }

  else
  {
    v6 = [(CNContactGridViewController *)self _indexPathForGlobalIndex:?];
    [(CNContactGridViewController *)self setIndexPathOfContactWithExpandedInlineActions:v6 animated:animatedCopy];
  }
}

- (NSIndexPath)indexPathOfContactWithExpandedInlineActions
{
  gridLayout = [(CNContactGridViewController *)self gridLayout];
  selectedIndexPath = [gridLayout selectedIndexPath];

  return selectedIndexPath;
}

- (void)setIndexPathOfContactWithExpandedInlineActions:(id)actions animated:(BOOL)animated
{
  animatedCopy = animated;
  actionsCopy = actions;
  collectionView = [(CNContactGridViewController *)self collectionView];
  indexPathOfContactWithExpandedInlineActions = [(CNContactGridViewController *)self indexPathOfContactWithExpandedInlineActions];
  gridLayout = [(CNContactGridViewController *)self gridLayout];
  v10 = [gridLayout copy];

  if (actionsCopy)
  {
    v11 = [collectionView cellForItemAtIndexPath:actionsCopy];
    if (indexPathOfContactWithExpandedInlineActions)
    {
      goto LABEL_3;
    }

LABEL_6:
    v12 = 0;
    if (actionsCopy)
    {
      goto LABEL_4;
    }

    goto LABEL_7;
  }

  v11 = 0;
  if (!indexPathOfContactWithExpandedInlineActions)
  {
    goto LABEL_6;
  }

LABEL_3:
  v12 = [collectionView cellForItemAtIndexPath:indexPathOfContactWithExpandedInlineActions];
  if (actionsCopy)
  {
LABEL_4:
    animationBlockForPreparingToShowActions = [v11 animationBlockForPreparingToShowActions];
    goto LABEL_8;
  }

LABEL_7:
  animationBlockForPreparingToShowActions = 0;
LABEL_8:
  [v10 setSelectedIndexPath:actionsCopy];
  [(CNContactGridViewController *)self setGridLayout:v10];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __87__CNContactGridViewController_setIndexPathOfContactWithExpandedInlineActions_animated___block_invoke;
  aBlock[3] = &unk_1E74E77C0;
  v14 = indexPathOfContactWithExpandedInlineActions;
  v26 = v14;
  selfCopy = self;
  v15 = _Block_copy(aBlock);
  if (animatedCopy)
  {
    v16 = MEMORY[0x1E69DD250];
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __87__CNContactGridViewController_setIndexPathOfContactWithExpandedInlineActions_animated___block_invoke_2;
    v19[3] = &unk_1E74E51B0;
    v20 = v12;
    v23 = animationBlockForPreparingToShowActions;
    v21 = collectionView;
    v22 = v10;
    v24 = v15;
    [v16 _animateUsingDefaultTimingWithOptions:0 animations:v19 completion:0];

    v17 = v20;
  }

  else
  {
    [collectionView setCollectionViewLayout:v10 animated:0];
    if (animationBlockForPreparingToShowActions)
    {
      animationBlockForPreparingToShowActions[2](animationBlockForPreparingToShowActions);
    }

    completionBlockForHidingActions = [v12 completionBlockForHidingActions];
    v17 = completionBlockForHidingActions;
    if (completionBlockForHidingActions)
    {
      (*(completionBlockForHidingActions + 16))(completionBlockForHidingActions);
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

- (id)_contactAtIndexPath:(id)path
{
  v11[1] = *MEMORY[0x1E69E9840];
  v4 = [(CNContactGridViewController *)self _globalIndexForIndexPath:path];
  dataSource = [(CNContactGridViewController *)self dataSource];
  contacts = [dataSource contacts];
  v7 = [contacts objectAtIndexedSubscript:v4];

  descriptorForRequiredKeys = [(CNContactGridViewController *)self descriptorForRequiredKeys];
  v11[0] = descriptorForRequiredKeys;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:1];
  [v7 assertKeysAreAvailable:v9];

  return v7;
}

- (id)_indexPathForGlobalIndex:(int64_t)index
{
  v25 = *MEMORY[0x1E69E9840];
  dataSource = [(CNContactGridViewController *)self dataSource];
  sections = [dataSource sections];

  if (sections)
  {
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v6 = sections;
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
        indexCopy = index;
        do
        {
          if (*v21 != v10)
          {
            objc_enumerationMutation(v6);
          }

          [*(*(&v20 + 1) + 8 * v11) range];
          index = indexCopy - v14;
          if (indexCopy < v14)
          {
            index = indexCopy;
            v9 = v12;
            goto LABEL_14;
          }

          ++v12;
          ++v11;
          indexCopy -= v14;
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
    indexCopy3 = index;
    v17 = v9;
  }

  else
  {
    v15 = MEMORY[0x1E696AC88];
    indexCopy3 = index;
    v17 = 0;
  }

  v18 = [v15 indexPathForItem:indexCopy3 inSection:{v17, v20}];

  return v18;
}

- (int64_t)_globalIndexForIndexPath:(id)path
{
  pathCopy = path;
  dataSource = [(CNContactGridViewController *)self dataSource];
  sections = [dataSource sections];

  if (sections)
  {
    v7 = [sections objectAtIndexedSubscript:{objc_msgSend(pathCopy, "section")}];
    range = [v7 range];
    item = range + [pathCopy row];
  }

  else
  {
    item = [pathCopy item];
  }

  return item;
}

- (void)_configureCell:(id)cell
{
  cellCopy = cell;
  [(CNContactGridViewController *)self avatarSize];
  [cellCopy setAvatarSize:?];
  [(CNContactGridViewController *)self avatarMargins];
  [cellCopy setAvatarMargins:?];
  nameTextAttributes = [(CNContactGridViewController *)self nameTextAttributes];
  [cellCopy setNameTextAttributes:nameTextAttributes];

  contactFormatter = [(CNContactGridViewController *)self contactFormatter];
  [cellCopy setContactFormatter:contactFormatter];

  [cellCopy setDelegate:self];
  [cellCopy setShowsContactOnTap:{-[CNContactGridViewController inlineActionsEnabled](self, "inlineActionsEnabled") ^ 1}];
  inlineActionsCategories = [(CNContactGridViewController *)self inlineActionsCategories];
  [cellCopy setActionCategories:inlineActionsCategories];
}

- (void)viewWillLayoutSubviews
{
  gridLayout = [(CNContactGridViewController *)self gridLayout];
  [gridLayout setNumberOfColumns:{-[CNContactGridViewController numberOfColumns](self, "numberOfColumns")}];
  collectionView = [(CNContactGridViewController *)self collectionView];
  [collectionView frame];
  Width = CGRectGetWidth(v14);
  numberOfColumns = [(CNContactGridViewController *)self numberOfColumns];
  [(CNContactGridViewController *)self avatarMargins];
  v7 = v6;
  [(CNContactGridViewController *)self avatarSize];
  v9 = v7 + v8;
  [(CNContactGridViewController *)self avatarMargins];
  v11 = (Width - numberOfColumns * (v9 + v10)) / ([(CNContactGridViewController *)self numberOfColumns]- 1) + -1.0;

  if (v11 < 0.0)
  {
    ceil((1.0 - v11) * ([(CNContactGridViewController *)self numberOfColumns]- 1) / (2 * [(CNContactGridViewController *)self numberOfColumns]));
    [(CNContactGridViewController *)self avatarMargins];
    [(CNContactGridViewController *)self setAvatarMargins:?];
    [(CNContactGridViewController *)self _updateItemSize];
    v11 = 0.0;
  }

  [gridLayout setMinimumInteritemSpacing:v11];
}

- (void)viewDidLoad
{
  v7.receiver = self;
  v7.super_class = CNContactGridViewController;
  [(CNContactGridViewController *)&v7 viewDidLoad];
  backgroundColor = [(CNContactGridViewController *)self backgroundColor];
  collectionView = [(CNContactGridViewController *)self collectionView];
  [collectionView setBackgroundColor:backgroundColor];

  collectionView2 = [(CNContactGridViewController *)self collectionView];
  [collectionView2 registerClass:objc_opt_class() forCellWithReuseIdentifier:@"Cell"];

  gridLayout = [(CNContactGridViewController *)self gridLayout];
  [gridLayout setSectionInset:{*MEMORY[0x1E69DDCE0], *(MEMORY[0x1E69DDCE0] + 8), *(MEMORY[0x1E69DDCE0] + 16), *(MEMORY[0x1E69DDCE0] + 24)}];
  [gridLayout setMinimumLineSpacing:0.0];
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
  contentView = [(CNContactGridCell *)v17 contentView];
  LODWORD(v10) = 1148846080;
  LODWORD(v11) = 1112014848;
  [contentView systemLayoutSizeFittingSize:v8 withHorizontalFittingPriority:200.0 verticalFittingPriority:{v10, v11}];
  v13 = v12;
  v15 = v14;

  gridLayout = [(CNContactGridViewController *)self gridLayout];
  [gridLayout setItemSize:{v13, v15}];
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

- (void)setDataSource:(id)source
{
  sourceCopy = source;
  dataSource = self->_dataSource;
  if (dataSource != sourceCopy)
  {
    v7 = sourceCopy;
    [(CNContactDataSource *)dataSource setDelegate:0];
    objc_storeStrong(&self->_dataSource, source);
    dataSource = [(CNContactDataSource *)self->_dataSource setDelegate:self];
    sourceCopy = v7;
  }

  MEMORY[0x1EEE66BB8](dataSource, sourceCopy);
}

- (CNContactGridViewController)initWithDataSource:(id)source
{
  sourceCopy = source;
  v5 = objc_alloc_init(CNContactGridViewLayout);
  v10.receiver = self;
  v10.super_class = CNContactGridViewController;
  v6 = [(CNContactGridViewController *)&v10 initWithCollectionViewLayout:v5];
  v7 = v6;
  if (sourceCopy)
  {
    [(CNContactGridViewController *)v6 setDataSource:sourceCopy];
  }

  [(CNContactGridViewController *)v7 setGridLayout:v5];
  v8 = objc_alloc_init(MEMORY[0x1E695CD80]);
  [v8 setStyle:1001];
  [v8 setFallbackStyle:-1];
  [(CNContactGridViewController *)v7 setContactFormatter:v8];

  return v7;
}

@end