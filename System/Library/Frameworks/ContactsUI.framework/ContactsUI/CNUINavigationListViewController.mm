@interface CNUINavigationListViewController
+ (BOOL)itemRequiresDetailCell:(id)cell;
- (BOOL)canExpandItem:(id)item;
- (BOOL)canSelectItem:(id)item;
- (BOOL)navigationListView:(id)view shouldHighlightRowAtIndexPath:(id)path;
- (BOOL)navigationListView:(id)view shouldSelectRowAtIndexPath:(id)path;
- (CGSize)contentSizeForExpandedItem:(id)item;
- (CNUINavigationListViewController)init;
- (CNUINavigationListViewControllerDelegate)delegate;
- (double)cellSeparatorHeight;
- (id)dequeueReusableDetailCell;
- (id)dequeueReusableStandardCell;
- (id)itemAtIndex:(int64_t)index;
- (id)itemAtIndexPath:(id)path;
- (id)itemsForItem:(id)item;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
- (void)expandItem:(id)item;
- (void)loadView;
- (void)navigationListView:(id)view accessoryButtonTappedForRowWithIndexPath:(id)path;
- (void)navigationListView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)reloadNavigationListView;
- (void)setNavigationListStyle:(id)style;
- (void)startTrackingRolloverWithGestureRecognizer:(id)recognizer;
- (void)styleUpdated;
- (void)toggleItem:(id)item;
- (void)updateNavigationListView;
- (void)updateNavigationListViewStateAnimated:(BOOL)animated;
- (void)viewDidLoad;
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
@end

@implementation CNUINavigationListViewController

- (CNUINavigationListViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)navigationListView:(id)view didSelectRowAtIndexPath:(id)path
{
  pathCopy = path;
  delegate = [(CNUINavigationListViewController *)self delegate];
  if (delegate)
  {
    v6 = delegate;
    delegate2 = [(CNUINavigationListViewController *)self delegate];
    v8 = objc_opt_respondsToSelector();

    if (v8)
    {
      v9 = [(CNUINavigationListViewController *)self itemAtIndexPath:pathCopy];
      delegate3 = [(CNUINavigationListViewController *)self delegate];
      [delegate3 navigationListController:self didSelectItem:v9];
    }
  }
}

- (BOOL)navigationListView:(id)view shouldSelectRowAtIndexPath:(id)path
{
  selfCopy = self;
  v5 = [(CNUINavigationListViewController *)self itemAtIndexPath:path];
  LOBYTE(selfCopy) = [(CNUINavigationListViewController *)selfCopy canSelectItem:v5];

  return selfCopy;
}

- (BOOL)navigationListView:(id)view shouldHighlightRowAtIndexPath:(id)path
{
  selfCopy = self;
  v5 = [(CNUINavigationListViewController *)self itemAtIndexPath:path];
  LOBYTE(selfCopy) = [(CNUINavigationListViewController *)selfCopy canSelectItem:v5];

  return selfCopy;
}

- (void)startTrackingRolloverWithGestureRecognizer:(id)recognizer
{
  recognizerCopy = recognizer;
  navigationListView = [(CNUINavigationListViewController *)self navigationListView];
  [navigationListView startTrackingSelectionFromGestureRecognizer:recognizerCopy];
}

- (BOOL)canSelectItem:(id)item
{
  itemCopy = item;
  items = [(CNUINavigationListViewController *)self items];
  v6 = [items containsObject:itemCopy];

  if ((v6 & 1) == 0)
  {
    if (![(CNUINavigationListViewController *)self canExpandItem:itemCopy])
    {
      goto LABEL_3;
    }

LABEL_6:
    v10 = 1;
    goto LABEL_9;
  }

  items2 = [(CNUINavigationListViewController *)self items];
  v8 = [items2 count];

  if (v8 > 1)
  {
    goto LABEL_6;
  }

LABEL_3:
  defaultItem = [itemCopy defaultItem];
  if (defaultItem)
  {
    v10 = 1;
  }

  else
  {
    content = [itemCopy content];
    v10 = content != 0;
  }

LABEL_9:
  return v10;
}

- (void)updateNavigationListViewStateAnimated:(BOOL)animated
{
  animatedCopy = animated;
  expandedItem = [(CNUINavigationListViewController *)self expandedItem];
  displayedExpandedItem = [(CNUINavigationListViewController *)self displayedExpandedItem];

  if (expandedItem != displayedExpandedItem)
  {
    displayedExpandedItem2 = [(CNUINavigationListViewController *)self displayedExpandedItem];
    expandedItem2 = [(CNUINavigationListViewController *)self expandedItem];
    parent = [expandedItem2 parent];

    v10 = 5;
    if (animatedCopy)
    {
      v10 = 0;
    }

    navigationListView = [(CNUINavigationListViewController *)self navigationListView];
    [navigationListView beginUpdates];

    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __74__CNUINavigationListViewController_updateNavigationListViewStateAnimated___block_invoke;
    aBlock[3] = &unk_1E74E19A0;
    aBlock[4] = self;
    v12 = _Block_copy(aBlock);
    v57[0] = MEMORY[0x1E69E9820];
    v57[1] = 3221225472;
    v57[2] = __74__CNUINavigationListViewController_updateNavigationListViewStateAnimated___block_invoke_2;
    v57[3] = &unk_1E74E19C8;
    v57[4] = self;
    v13 = _Block_copy(v57);
    displayedExpandedItem3 = [(CNUINavigationListViewController *)self displayedExpandedItem];
    v15 = [(CNUINavigationListViewController *)self itemsForItem:displayedExpandedItem3];

    expandedItem3 = [(CNUINavigationListViewController *)self expandedItem];
    v17 = [(CNUINavigationListViewController *)self itemsForItem:expandedItem3];

    v55 = v15;
    v56 = v12;
    if (displayedExpandedItem2 == parent)
    {
      expandedItem4 = [(CNUINavigationListViewController *)self expandedItem];
      v39 = [v15 indexOfObject:expandedItem4];
      v20 = [MEMORY[0x1E696AC88] indexPathForNavigationListItemIndex:v39];
      objc_opt_class();
      navigationListView2 = [(CNUINavigationListViewController *)self navigationListView];
      v41 = [navigationListView2 cellForRowAtIndexPath:v20];
      if (objc_opt_isKindOfClass())
      {
        v42 = v41;
      }

      else
      {
        v42 = 0;
      }

      v43 = v42;

      navigationListStyle = [(CNUINavigationListViewController *)self navigationListStyle];
      [v43 setNavigationListStyle:navigationListStyle];

      expandedItem5 = [(CNUINavigationListViewController *)self expandedItem];
      [v43 setAccessoryControlExpanded:expandedItem4 == expandedItem5 animated:1];

      v46 = [v17 indexOfObject:expandedItem4];
      v28 = [MEMORY[0x1E696AC88] indexPathForNavigationListItemIndex:v46];
      v31 = (*(v12 + 2))(v12, expandedItem4);
      v32 = v13[2](v13, expandedItem4);
      if ([v20 compare:v28])
      {
        navigationListView3 = [(CNUINavigationListViewController *)self navigationListView];
        [navigationListView3 moveRowAtIndexPath:v20 toIndexPath:v28];
      }

      navigationListView4 = [(CNUINavigationListViewController *)self navigationListView];
      first = [v31 first];
      [navigationListView4 deleteRowsAtIndexPaths:first withRowAnimation:v54];

      navigationListView5 = [(CNUINavigationListViewController *)self navigationListView];
      second = [v31 second];
      [navigationListView5 deleteRowsAtIndexPaths:second withRowAnimation:v54];

      navigationListView6 = [(CNUINavigationListViewController *)self navigationListView];
      [navigationListView6 insertRowsAtIndexPaths:v32 withRowAnimation:v54];
    }

    else
    {
      expandedItem4 = [(CNUINavigationListViewController *)self displayedExpandedItem];
      v19 = [v15 indexOfObject:expandedItem4];
      v20 = [MEMORY[0x1E696AC88] indexPathForNavigationListItemIndex:v19];
      objc_opt_class();
      navigationListView7 = [(CNUINavigationListViewController *)self navigationListView];
      v22 = [navigationListView7 cellForRowAtIndexPath:v20];
      if (objc_opt_isKindOfClass())
      {
        v23 = v22;
      }

      else
      {
        v23 = 0;
      }

      v24 = v23;

      navigationListStyle2 = [(CNUINavigationListViewController *)self navigationListStyle];
      [v24 setNavigationListStyle:navigationListStyle2];

      expandedItem6 = [(CNUINavigationListViewController *)self expandedItem];
      [v24 setAccessoryControlExpanded:expandedItem4 == expandedItem6 animated:1];

      v27 = [v17 indexOfObject:expandedItem4];
      v28 = [MEMORY[0x1E696AC88] indexPathForNavigationListItemIndex:v27];
      v29 = v13[2](v13, expandedItem4);
      v30 = v12;
      v31 = v29;
      v32 = v30[2](v30, expandedItem4);
      if ([v20 compare:v28])
      {
        navigationListView8 = [(CNUINavigationListViewController *)self navigationListView];
        [navigationListView8 moveRowAtIndexPath:v20 toIndexPath:v28];
      }

      navigationListView9 = [(CNUINavigationListViewController *)self navigationListView];
      [navigationListView9 deleteRowsAtIndexPaths:v31 withRowAnimation:v54];

      navigationListView10 = [(CNUINavigationListViewController *)self navigationListView];
      first2 = [v32 first];
      [navigationListView10 insertRowsAtIndexPaths:first2 withRowAnimation:v54];

      navigationListView6 = [(CNUINavigationListViewController *)self navigationListView];
      second2 = [v32 second];
      [navigationListView6 insertRowsAtIndexPaths:second2 withRowAnimation:v54];
    }

    expandedItem7 = [(CNUINavigationListViewController *)self expandedItem];
    [(CNUINavigationListViewController *)self setDisplayedExpandedItem:expandedItem7];

    navigationListView11 = [(CNUINavigationListViewController *)self navigationListView];
    [navigationListView11 endUpdates];
  }
}

id __74__CNUINavigationListViewController_updateNavigationListViewStateAnimated___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [MEMORY[0x1E695DF70] array];
  v5 = [MEMORY[0x1E695DF70] array];
  v6 = v4;
  v7 = *(a1 + 32);
  v8 = [v3 parent];
  v9 = [v7 itemsForItem:v8];

  v10 = v6;
  if ([v9 count])
  {
    v11 = 0;
    v10 = v6;
    do
    {
      v12 = [v9 objectAtIndex:v11];

      if (v12 == v3)
      {
        v13 = v10;
        v10 = v5;
      }

      else
      {
        v13 = [MEMORY[0x1E696AC88] indexPathForNavigationListItemIndex:v11];
        [v10 addObject:v13];
      }

      ++v11;
    }

    while (v11 < [v9 count]);
  }

  v14 = MEMORY[0x1E69967A8];
  v15 = [v6 copy];
  v16 = [v5 copy];
  v17 = [v14 pairWithFirst:v15 second:v16];

  return v17;
}

id __74__CNUINavigationListViewController_updateNavigationListViewStateAnimated___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [MEMORY[0x1E695DF70] array];
  v5 = [*(a1 + 32) itemsForItem:v3];
  if ([v5 count])
  {
    v6 = 0;
    do
    {
      v7 = [v5 objectAtIndex:v6];

      if (v7 != v3)
      {
        v8 = [MEMORY[0x1E696AC88] indexPathForNavigationListItemIndex:v6];
        [v4 addObject:v8];
      }

      ++v6;
    }

    while (v6 < [v5 count]);
  }

  v9 = [v4 copy];

  return v9;
}

- (void)reloadNavigationListView
{
  if ([(CNUINavigationListViewController *)self isViewLoaded])
  {
    expandedItem = [(CNUINavigationListViewController *)self expandedItem];
    [(CNUINavigationListViewController *)self setDisplayedExpandedItem:expandedItem];

    navigationListView = [(CNUINavigationListViewController *)self navigationListView];
    [navigationListView reloadData];

    parentViewController = [(CNUINavigationListViewController *)self parentViewController];
    transitionCoordinator = [parentViewController transitionCoordinator];

    if (transitionCoordinator)
    {
      parentViewController2 = [(CNUINavigationListViewController *)self parentViewController];
      transitionCoordinator2 = [parentViewController2 transitionCoordinator];
      v9[0] = MEMORY[0x1E69E9820];
      v9[1] = 3221225472;
      v9[2] = __60__CNUINavigationListViewController_reloadNavigationListView__block_invoke;
      v9[3] = &unk_1E74E3CC8;
      v9[4] = self;
      [transitionCoordinator2 animateAlongsideTransition:0 completion:v9];
    }

    else
    {

      [(CNUINavigationListViewController *)self updateNavigationListView];
    }
  }
}

- (void)updateNavigationListView
{
  expandedItem = [(CNUINavigationListViewController *)self expandedItem];
  [(CNUINavigationListViewController *)self contentSizeForExpandedItem:expandedItem];
  v5 = v4;
  v7 = v6;

  [(CNUINavigationListViewController *)self preferredContentSize];
  v10 = v5 == v9 && v7 == v8;
  if (!v10 && ![(CNUINavigationListViewController *)self ignoreParentControllerResize])
  {
    [(CNUINavigationListViewController *)self setPreferredContentSize:v5, v7];
  }

  [(CNUINavigationListViewController *)self updateNavigationListViewStateAnimated:1];
}

- (CGSize)contentSizeForExpandedItem:(id)item
{
  v36 = *MEMORY[0x1E69E9840];
  itemCopy = item;
  [(CNUINavigationListViewController *)self preferredContentSize];
  v6 = v5;
  [(CNUINavigationListViewController *)self itemsForItem:itemCopy];
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  obj = v34 = 0u;
  v7 = [obj countByEnumeratingWithState:&v31 objects:v35 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v32;
    v10 = 0.0;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v32 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v31 + 1) + 8 * i);
        if ([objc_opt_class() itemRequiresDetailCell:v12])
        {
          v13 = off_1E74DEED0;
        }

        else
        {
          v13 = off_1E74DEEC0;
        }

        v14 = *v13;
        title = [v12 title];
        subtitle = [v12 subtitle];
        navigationListStyle = [(CNUINavigationListViewController *)self navigationListStyle];
        [(__objc2_class *)v14 desiredContentSizeForTitle:title subTitle:subtitle navigationListStyle:navigationListStyle];
        v19 = v18;
        v21 = v20;

        [(CNUINavigationListViewController *)self cellSeparatorHeight];
        v23 = v21 + v22;
        if (v6 < v19)
        {
          v6 = v19;
        }

        v10 = v10 + v23;
      }

      v8 = [obj countByEnumeratingWithState:&v31 objects:v35 count:16];
    }

    while (v8);
  }

  else
  {
    v10 = 0.0;
  }

  [(CNUINavigationListViewController *)self cellSeparatorHeight];
  v25 = ceil(v10 + v24);
  [(CNUINavigationListViewController *)self cellSeparatorHeight];
  v27 = v26 + 54.0;
  if (v27 >= v25)
  {
    v25 = v27;
  }

  v28 = v6;
  v29 = v25;
  result.height = v29;
  result.width = v28;
  return result;
}

- (id)itemsForItem:(id)item
{
  v10[1] = *MEMORY[0x1E69E9840];
  itemCopy = item;
  items = [itemCopy items];
  if (items)
  {
    v6 = items;
    v10[0] = itemCopy;
    v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:1];
    items2 = [v7 arrayByAddingObjectsFromArray:v6];
  }

  else
  {
    items2 = [(CNUINavigationListViewController *)self items];
  }

  return items2;
}

- (id)itemAtIndexPath:(id)path
{
  v4 = [path row];

  return [(CNUINavigationListViewController *)self itemAtIndex:v4];
}

- (id)itemAtIndex:(int64_t)index
{
  displayedExpandedItem = [(CNUINavigationListViewController *)self displayedExpandedItem];
  v6 = [(CNUINavigationListViewController *)self itemsForItem:displayedExpandedItem];

  v7 = [v6 objectAtIndexedSubscript:index];

  return v7;
}

- (id)dequeueReusableDetailCell
{
  navigationListView = [(CNUINavigationListViewController *)self navigationListView];
  v3 = +[CNUINavigationListViewDetailCell reuseIdentifier];
  v4 = [navigationListView dequeueReusableCellWithIdentifier:v3];

  return v4;
}

- (id)dequeueReusableStandardCell
{
  navigationListView = [(CNUINavigationListViewController *)self navigationListView];
  v3 = +[CNUINavigationListViewCell reuseIdentifier];
  v4 = [navigationListView dequeueReusableCellWithIdentifier:v3];

  return v4;
}

- (void)navigationListView:(id)view accessoryButtonTappedForRowWithIndexPath:(id)path
{
  v5 = [(CNUINavigationListViewController *)self itemAtIndexPath:path];
  [(CNUINavigationListViewController *)self toggleItem:v5];
}

- (BOOL)canExpandItem:(id)item
{
  if (item)
  {
    items = [item items];
    v4 = [items count] != 0;
  }

  else
  {
    items = [(CNUINavigationListViewController *)self items];
    v4 = [items count] > 1;
  }

  return v4;
}

- (void)toggleItem:(id)item
{
  itemCopy = item;
  displayedExpandedItem = [(CNUINavigationListViewController *)self displayedExpandedItem];
  if (displayedExpandedItem == itemCopy)
  {
    parent = [itemCopy parent];
    v6 = [(CNUINavigationListViewController *)self canExpandItem:parent];

    if (v6)
    {
      parent2 = [itemCopy parent];
      [(CNUINavigationListViewController *)self expandItem:parent2];

      goto LABEL_7;
    }
  }

  else
  {
  }

  if ([(CNUINavigationListViewController *)self canExpandItem:itemCopy])
  {
    [(CNUINavigationListViewController *)self expandItem:itemCopy];
  }

LABEL_7:
}

- (void)expandItem:(id)item
{
  itemCopy = item;
  displayedExpandedItem = [(CNUINavigationListViewController *)self displayedExpandedItem];
  if (displayedExpandedItem != itemCopy)
  {
    [(CNUINavigationListViewController *)self setExpandedItem:itemCopy];
    [(CNUINavigationListViewController *)self updateNavigationListView];
  }
}

- (double)cellSeparatorHeight
{
  if (!dyld_program_sdk_at_least() || (v3 = [MEMORY[0x1E69DB878] ab_preferredContentSizeCategoryIsAccessibilityCategory], result = 1.0, (v3 & 1) == 0))
  {
    mainScreen = [MEMORY[0x1E69DCEB0] mainScreen];
    [mainScreen scale];
    v6 = v5;

    return 1.0 / v6;
  }

  return result;
}

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
{
  v5 = [(CNUINavigationListViewController *)self items:view];
  displayedExpandedItem = [(CNUINavigationListViewController *)self displayedExpandedItem];

  if (displayedExpandedItem)
  {
    displayedExpandedItem2 = [(CNUINavigationListViewController *)self displayedExpandedItem];
    v8 = [(CNUINavigationListViewController *)self itemsForItem:displayedExpandedItem2];

    v5 = v8;
  }

  v9 = [v5 count];

  return v9;
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  v5 = [(CNUINavigationListViewController *)self itemAtIndexPath:path];
  if ([objc_opt_class() itemRequiresDetailCell:v5])
  {
    dequeueReusableDetailCell = [(CNUINavigationListViewController *)self dequeueReusableDetailCell];
    [dequeueReusableDetailCell setContentAlignment:{-[CNUINavigationListViewController contentAlignment](self, "contentAlignment")}];
  }

  else
  {
    dequeueReusableDetailCell = [(CNUINavigationListViewController *)self dequeueReusableStandardCell];
  }

  if ([(CNUINavigationListViewController *)self canExpandItem:v5])
  {
    parent = [v5 parent];
    v8 = [(CNUINavigationListViewController *)self canExpandItem:parent]^ 1;
  }

  else
  {
    v8 = 1;
  }

  navigationListStyle = [(CNUINavigationListViewController *)self navigationListStyle];
  [dequeueReusableDetailCell setNavigationListStyle:navigationListStyle];

  accessoryImageView = [dequeueReusableDetailCell accessoryImageView];
  [accessoryImageView setHidden:v8];

  ab_preferredContentSizeCategoryName = [MEMORY[0x1E69DB878] ab_preferredContentSizeCategoryName];
  v12 = UIContentSizeCategoryCompareToCategory(ab_preferredContentSizeCategoryName, *MEMORY[0x1E69DDC30]);
  v13 = MEMORY[0x1E69DDE48];
  if (v12 != NSOrderedAscending)
  {
    v13 = MEMORY[0x1E69DDE50];
  }

  v14 = *v13;

  image = [v5 image];
  v16 = [MEMORY[0x1E69DCAD8] configurationWithTextStyle:*MEMORY[0x1E69DDCF8] scale:v14];
  v17 = [image imageWithConfiguration:v16];
  titleImageView = [dequeueReusableDetailCell titleImageView];
  [titleImageView setImage:v17];

  title = [v5 title];
  titleLabel = [dequeueReusableDetailCell titleLabel];
  [titleLabel setText:title];

  subtitle = [v5 subtitle];
  subtitleLabel = [dequeueReusableDetailCell subtitleLabel];
  [subtitleLabel setText:subtitle];

  displayedExpandedItem = [(CNUINavigationListViewController *)self displayedExpandedItem];
  [dequeueReusableDetailCell setAccessoryControlExpanded:v5 == displayedExpandedItem animated:0];

  return dequeueReusableDetailCell;
}

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  height = size.height;
  width = size.width;
  v9.receiver = self;
  v9.super_class = CNUINavigationListViewController;
  coordinatorCopy = coordinator;
  [(CNUINavigationListViewController *)&v9 viewWillTransitionToSize:coordinatorCopy withTransitionCoordinator:width, height];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __87__CNUINavigationListViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke;
  v8[3] = &unk_1E74E3CC8;
  v8[4] = self;
  [coordinatorCopy animateAlongsideTransition:v8 completion:&__block_literal_global_763];
}

- (void)viewDidLoad
{
  v11.receiver = self;
  v11.super_class = CNUINavigationListViewController;
  [(CNUINavigationListViewController *)&v11 viewDidLoad];
  navigationListView = [(CNUINavigationListViewController *)self navigationListView];
  clearColor = [MEMORY[0x1E69DC888] clearColor];
  [navigationListView setBackgroundColor:clearColor];

  [navigationListView setRowHeight:*MEMORY[0x1E69DE3D0]];
  cellHeightEstimator = [(CNUINavigationListViewController *)self cellHeightEstimator];
  [cellHeightEstimator estimatedCellHeight];
  v7 = v6;
  [(CNUINavigationListViewController *)self cellSeparatorHeight];
  [navigationListView setEstimatedRowHeight:v7 + v8];

  v9 = objc_alloc(MEMORY[0x1E69DD250]);
  v10 = [v9 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
  [navigationListView setTableFooterView:v10];

  [(CNUINavigationListViewController *)self updateNavigationListView];
}

- (void)loadView
{
  v3 = [CNUINavigationListView alloc];
  v4 = [(CNUINavigationListView *)v3 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  [(CNUINavigationListView *)v4 setDataSource:self];
  [(CNUINavigationListView *)v4 setDelegate:self];
  [(CNUINavigationListView *)v4 setNavigationListViewDataSource:self];
  [(CNUINavigationListView *)v4 setNavigationListViewDelegate:self];
  [(CNUINavigationListView *)v4 setSeparatorStyle:1];
  [(CNUINavigationListViewController *)self setView:v4];
  [(CNUINavigationListViewController *)self setNavigationListView:v4];
}

- (void)styleUpdated
{
  v3 = [CNUINavigationListViewCellHeightEstimator alloc];
  navigationListStyle = [(CNUINavigationListViewController *)self navigationListStyle];
  v5 = [(CNUINavigationListViewCellHeightEstimator *)v3 initWithNavigationListStyle:navigationListStyle];
  [(CNUINavigationListViewController *)self setCellHeightEstimator:v5];

  [(CNUINavigationListViewController *)self reloadNavigationListView];
}

- (void)setNavigationListStyle:(id)style
{
  objc_storeStrong(&self->_navigationListStyle, style);

  [(CNUINavigationListViewController *)self styleUpdated];
}

- (CNUINavigationListViewController)init
{
  v10.receiver = self;
  v10.super_class = CNUINavigationListViewController;
  v2 = [(CNUINavigationListViewController *)&v10 initWithNibName:0 bundle:0];
  v3 = v2;
  if (v2)
  {
    v2->_contentAlignment = 0;
    v4 = +[CNUINavigationListStyleProvider defaultStyle];
    navigationListStyle = v3->_navigationListStyle;
    v3->_navigationListStyle = v4;

    v6 = [[CNUINavigationListViewCellHeightEstimator alloc] initWithNavigationListStyle:v3->_navigationListStyle];
    cellHeightEstimator = v3->_cellHeightEstimator;
    v3->_cellHeightEstimator = v6;

    v8 = v3;
  }

  return v3;
}

+ (BOOL)itemRequiresDetailCell:(id)cell
{
  cellCopy = cell;
  v4 = *MEMORY[0x1E6996568];
  subtitle = [cellCopy subtitle];
  if ((*(v4 + 16))(v4, subtitle))
  {
    v6 = 0;
  }

  else
  {
    items = [cellCopy items];
    v6 = [items count] == 0;
  }

  return v6;
}

@end