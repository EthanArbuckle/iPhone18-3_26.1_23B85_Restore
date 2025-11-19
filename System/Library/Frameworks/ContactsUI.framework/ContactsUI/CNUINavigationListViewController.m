@interface CNUINavigationListViewController
+ (BOOL)itemRequiresDetailCell:(id)a3;
- (BOOL)canExpandItem:(id)a3;
- (BOOL)canSelectItem:(id)a3;
- (BOOL)navigationListView:(id)a3 shouldHighlightRowAtIndexPath:(id)a4;
- (BOOL)navigationListView:(id)a3 shouldSelectRowAtIndexPath:(id)a4;
- (CGSize)contentSizeForExpandedItem:(id)a3;
- (CNUINavigationListViewController)init;
- (CNUINavigationListViewControllerDelegate)delegate;
- (double)cellSeparatorHeight;
- (id)dequeueReusableDetailCell;
- (id)dequeueReusableStandardCell;
- (id)itemAtIndex:(int64_t)a3;
- (id)itemAtIndexPath:(id)a3;
- (id)itemsForItem:(id)a3;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4;
- (void)expandItem:(id)a3;
- (void)loadView;
- (void)navigationListView:(id)a3 accessoryButtonTappedForRowWithIndexPath:(id)a4;
- (void)navigationListView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)reloadNavigationListView;
- (void)setNavigationListStyle:(id)a3;
- (void)startTrackingRolloverWithGestureRecognizer:(id)a3;
- (void)styleUpdated;
- (void)toggleItem:(id)a3;
- (void)updateNavigationListView;
- (void)updateNavigationListViewStateAnimated:(BOOL)a3;
- (void)viewDidLoad;
- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4;
@end

@implementation CNUINavigationListViewController

- (CNUINavigationListViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)navigationListView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v11 = a4;
  v5 = [(CNUINavigationListViewController *)self delegate];
  if (v5)
  {
    v6 = v5;
    v7 = [(CNUINavigationListViewController *)self delegate];
    v8 = objc_opt_respondsToSelector();

    if (v8)
    {
      v9 = [(CNUINavigationListViewController *)self itemAtIndexPath:v11];
      v10 = [(CNUINavigationListViewController *)self delegate];
      [v10 navigationListController:self didSelectItem:v9];
    }
  }
}

- (BOOL)navigationListView:(id)a3 shouldSelectRowAtIndexPath:(id)a4
{
  v4 = self;
  v5 = [(CNUINavigationListViewController *)self itemAtIndexPath:a4];
  LOBYTE(v4) = [(CNUINavigationListViewController *)v4 canSelectItem:v5];

  return v4;
}

- (BOOL)navigationListView:(id)a3 shouldHighlightRowAtIndexPath:(id)a4
{
  v4 = self;
  v5 = [(CNUINavigationListViewController *)self itemAtIndexPath:a4];
  LOBYTE(v4) = [(CNUINavigationListViewController *)v4 canSelectItem:v5];

  return v4;
}

- (void)startTrackingRolloverWithGestureRecognizer:(id)a3
{
  v4 = a3;
  v5 = [(CNUINavigationListViewController *)self navigationListView];
  [v5 startTrackingSelectionFromGestureRecognizer:v4];
}

- (BOOL)canSelectItem:(id)a3
{
  v4 = a3;
  v5 = [(CNUINavigationListViewController *)self items];
  v6 = [v5 containsObject:v4];

  if ((v6 & 1) == 0)
  {
    if (![(CNUINavigationListViewController *)self canExpandItem:v4])
    {
      goto LABEL_3;
    }

LABEL_6:
    v10 = 1;
    goto LABEL_9;
  }

  v7 = [(CNUINavigationListViewController *)self items];
  v8 = [v7 count];

  if (v8 > 1)
  {
    goto LABEL_6;
  }

LABEL_3:
  v9 = [v4 defaultItem];
  if (v9)
  {
    v10 = 1;
  }

  else
  {
    v11 = [v4 content];
    v10 = v11 != 0;
  }

LABEL_9:
  return v10;
}

- (void)updateNavigationListViewStateAnimated:(BOOL)a3
{
  v3 = a3;
  v5 = [(CNUINavigationListViewController *)self expandedItem];
  v6 = [(CNUINavigationListViewController *)self displayedExpandedItem];

  if (v5 != v6)
  {
    v7 = [(CNUINavigationListViewController *)self displayedExpandedItem];
    v8 = [(CNUINavigationListViewController *)self expandedItem];
    v9 = [v8 parent];

    v10 = 5;
    if (v3)
    {
      v10 = 0;
    }

    v11 = [(CNUINavigationListViewController *)self navigationListView];
    [v11 beginUpdates];

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
    v14 = [(CNUINavigationListViewController *)self displayedExpandedItem];
    v15 = [(CNUINavigationListViewController *)self itemsForItem:v14];

    v16 = [(CNUINavigationListViewController *)self expandedItem];
    v17 = [(CNUINavigationListViewController *)self itemsForItem:v16];

    v55 = v15;
    v56 = v12;
    if (v7 == v9)
    {
      v18 = [(CNUINavigationListViewController *)self expandedItem];
      v39 = [v15 indexOfObject:v18];
      v20 = [MEMORY[0x1E696AC88] indexPathForNavigationListItemIndex:v39];
      objc_opt_class();
      v40 = [(CNUINavigationListViewController *)self navigationListView];
      v41 = [v40 cellForRowAtIndexPath:v20];
      if (objc_opt_isKindOfClass())
      {
        v42 = v41;
      }

      else
      {
        v42 = 0;
      }

      v43 = v42;

      v44 = [(CNUINavigationListViewController *)self navigationListStyle];
      [v43 setNavigationListStyle:v44];

      v45 = [(CNUINavigationListViewController *)self expandedItem];
      [v43 setAccessoryControlExpanded:v18 == v45 animated:1];

      v46 = [v17 indexOfObject:v18];
      v28 = [MEMORY[0x1E696AC88] indexPathForNavigationListItemIndex:v46];
      v31 = (*(v12 + 2))(v12, v18);
      v32 = v13[2](v13, v18);
      if ([v20 compare:v28])
      {
        v47 = [(CNUINavigationListViewController *)self navigationListView];
        [v47 moveRowAtIndexPath:v20 toIndexPath:v28];
      }

      v48 = [(CNUINavigationListViewController *)self navigationListView];
      v49 = [v31 first];
      [v48 deleteRowsAtIndexPaths:v49 withRowAnimation:v54];

      v50 = [(CNUINavigationListViewController *)self navigationListView];
      v51 = [v31 second];
      [v50 deleteRowsAtIndexPaths:v51 withRowAnimation:v54];

      v37 = [(CNUINavigationListViewController *)self navigationListView];
      [v37 insertRowsAtIndexPaths:v32 withRowAnimation:v54];
    }

    else
    {
      v18 = [(CNUINavigationListViewController *)self displayedExpandedItem];
      v19 = [v15 indexOfObject:v18];
      v20 = [MEMORY[0x1E696AC88] indexPathForNavigationListItemIndex:v19];
      objc_opt_class();
      v21 = [(CNUINavigationListViewController *)self navigationListView];
      v22 = [v21 cellForRowAtIndexPath:v20];
      if (objc_opt_isKindOfClass())
      {
        v23 = v22;
      }

      else
      {
        v23 = 0;
      }

      v24 = v23;

      v25 = [(CNUINavigationListViewController *)self navigationListStyle];
      [v24 setNavigationListStyle:v25];

      v26 = [(CNUINavigationListViewController *)self expandedItem];
      [v24 setAccessoryControlExpanded:v18 == v26 animated:1];

      v27 = [v17 indexOfObject:v18];
      v28 = [MEMORY[0x1E696AC88] indexPathForNavigationListItemIndex:v27];
      v29 = v13[2](v13, v18);
      v30 = v12;
      v31 = v29;
      v32 = v30[2](v30, v18);
      if ([v20 compare:v28])
      {
        v33 = [(CNUINavigationListViewController *)self navigationListView];
        [v33 moveRowAtIndexPath:v20 toIndexPath:v28];
      }

      v34 = [(CNUINavigationListViewController *)self navigationListView];
      [v34 deleteRowsAtIndexPaths:v31 withRowAnimation:v54];

      v35 = [(CNUINavigationListViewController *)self navigationListView];
      v36 = [v32 first];
      [v35 insertRowsAtIndexPaths:v36 withRowAnimation:v54];

      v37 = [(CNUINavigationListViewController *)self navigationListView];
      v38 = [v32 second];
      [v37 insertRowsAtIndexPaths:v38 withRowAnimation:v54];
    }

    v52 = [(CNUINavigationListViewController *)self expandedItem];
    [(CNUINavigationListViewController *)self setDisplayedExpandedItem:v52];

    v53 = [(CNUINavigationListViewController *)self navigationListView];
    [v53 endUpdates];
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
    v3 = [(CNUINavigationListViewController *)self expandedItem];
    [(CNUINavigationListViewController *)self setDisplayedExpandedItem:v3];

    v4 = [(CNUINavigationListViewController *)self navigationListView];
    [v4 reloadData];

    v5 = [(CNUINavigationListViewController *)self parentViewController];
    v6 = [v5 transitionCoordinator];

    if (v6)
    {
      v7 = [(CNUINavigationListViewController *)self parentViewController];
      v8 = [v7 transitionCoordinator];
      v9[0] = MEMORY[0x1E69E9820];
      v9[1] = 3221225472;
      v9[2] = __60__CNUINavigationListViewController_reloadNavigationListView__block_invoke;
      v9[3] = &unk_1E74E3CC8;
      v9[4] = self;
      [v8 animateAlongsideTransition:0 completion:v9];
    }

    else
    {

      [(CNUINavigationListViewController *)self updateNavigationListView];
    }
  }
}

- (void)updateNavigationListView
{
  v3 = [(CNUINavigationListViewController *)self expandedItem];
  [(CNUINavigationListViewController *)self contentSizeForExpandedItem:v3];
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

- (CGSize)contentSizeForExpandedItem:(id)a3
{
  v36 = *MEMORY[0x1E69E9840];
  v4 = a3;
  [(CNUINavigationListViewController *)self preferredContentSize];
  v6 = v5;
  [(CNUINavigationListViewController *)self itemsForItem:v4];
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
        v15 = [v12 title];
        v16 = [v12 subtitle];
        v17 = [(CNUINavigationListViewController *)self navigationListStyle];
        [(__objc2_class *)v14 desiredContentSizeForTitle:v15 subTitle:v16 navigationListStyle:v17];
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

- (id)itemsForItem:(id)a3
{
  v10[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 items];
  if (v5)
  {
    v6 = v5;
    v10[0] = v4;
    v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:1];
    v8 = [v7 arrayByAddingObjectsFromArray:v6];
  }

  else
  {
    v8 = [(CNUINavigationListViewController *)self items];
  }

  return v8;
}

- (id)itemAtIndexPath:(id)a3
{
  v4 = [a3 row];

  return [(CNUINavigationListViewController *)self itemAtIndex:v4];
}

- (id)itemAtIndex:(int64_t)a3
{
  v5 = [(CNUINavigationListViewController *)self displayedExpandedItem];
  v6 = [(CNUINavigationListViewController *)self itemsForItem:v5];

  v7 = [v6 objectAtIndexedSubscript:a3];

  return v7;
}

- (id)dequeueReusableDetailCell
{
  v2 = [(CNUINavigationListViewController *)self navigationListView];
  v3 = +[CNUINavigationListViewDetailCell reuseIdentifier];
  v4 = [v2 dequeueReusableCellWithIdentifier:v3];

  return v4;
}

- (id)dequeueReusableStandardCell
{
  v2 = [(CNUINavigationListViewController *)self navigationListView];
  v3 = +[CNUINavigationListViewCell reuseIdentifier];
  v4 = [v2 dequeueReusableCellWithIdentifier:v3];

  return v4;
}

- (void)navigationListView:(id)a3 accessoryButtonTappedForRowWithIndexPath:(id)a4
{
  v5 = [(CNUINavigationListViewController *)self itemAtIndexPath:a4];
  [(CNUINavigationListViewController *)self toggleItem:v5];
}

- (BOOL)canExpandItem:(id)a3
{
  if (a3)
  {
    v3 = [a3 items];
    v4 = [v3 count] != 0;
  }

  else
  {
    v3 = [(CNUINavigationListViewController *)self items];
    v4 = [v3 count] > 1;
  }

  return v4;
}

- (void)toggleItem:(id)a3
{
  v8 = a3;
  v4 = [(CNUINavigationListViewController *)self displayedExpandedItem];
  if (v4 == v8)
  {
    v5 = [v8 parent];
    v6 = [(CNUINavigationListViewController *)self canExpandItem:v5];

    if (v6)
    {
      v7 = [v8 parent];
      [(CNUINavigationListViewController *)self expandItem:v7];

      goto LABEL_7;
    }
  }

  else
  {
  }

  if ([(CNUINavigationListViewController *)self canExpandItem:v8])
  {
    [(CNUINavigationListViewController *)self expandItem:v8];
  }

LABEL_7:
}

- (void)expandItem:(id)a3
{
  v5 = a3;
  v4 = [(CNUINavigationListViewController *)self displayedExpandedItem];
  if (v4 != v5)
  {
    [(CNUINavigationListViewController *)self setExpandedItem:v5];
    [(CNUINavigationListViewController *)self updateNavigationListView];
  }
}

- (double)cellSeparatorHeight
{
  if (!dyld_program_sdk_at_least() || (v3 = [MEMORY[0x1E69DB878] ab_preferredContentSizeCategoryIsAccessibilityCategory], result = 1.0, (v3 & 1) == 0))
  {
    v4 = [MEMORY[0x1E69DCEB0] mainScreen];
    [v4 scale];
    v6 = v5;

    return 1.0 / v6;
  }

  return result;
}

- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4
{
  v5 = [(CNUINavigationListViewController *)self items:a3];
  v6 = [(CNUINavigationListViewController *)self displayedExpandedItem];

  if (v6)
  {
    v7 = [(CNUINavigationListViewController *)self displayedExpandedItem];
    v8 = [(CNUINavigationListViewController *)self itemsForItem:v7];

    v5 = v8;
  }

  v9 = [v5 count];

  return v9;
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v5 = [(CNUINavigationListViewController *)self itemAtIndexPath:a4];
  if ([objc_opt_class() itemRequiresDetailCell:v5])
  {
    v6 = [(CNUINavigationListViewController *)self dequeueReusableDetailCell];
    [v6 setContentAlignment:{-[CNUINavigationListViewController contentAlignment](self, "contentAlignment")}];
  }

  else
  {
    v6 = [(CNUINavigationListViewController *)self dequeueReusableStandardCell];
  }

  if ([(CNUINavigationListViewController *)self canExpandItem:v5])
  {
    v7 = [v5 parent];
    v8 = [(CNUINavigationListViewController *)self canExpandItem:v7]^ 1;
  }

  else
  {
    v8 = 1;
  }

  v9 = [(CNUINavigationListViewController *)self navigationListStyle];
  [v6 setNavigationListStyle:v9];

  v10 = [v6 accessoryImageView];
  [v10 setHidden:v8];

  v11 = [MEMORY[0x1E69DB878] ab_preferredContentSizeCategoryName];
  v12 = UIContentSizeCategoryCompareToCategory(v11, *MEMORY[0x1E69DDC30]);
  v13 = MEMORY[0x1E69DDE48];
  if (v12 != NSOrderedAscending)
  {
    v13 = MEMORY[0x1E69DDE50];
  }

  v14 = *v13;

  v15 = [v5 image];
  v16 = [MEMORY[0x1E69DCAD8] configurationWithTextStyle:*MEMORY[0x1E69DDCF8] scale:v14];
  v17 = [v15 imageWithConfiguration:v16];
  v18 = [v6 titleImageView];
  [v18 setImage:v17];

  v19 = [v5 title];
  v20 = [v6 titleLabel];
  [v20 setText:v19];

  v21 = [v5 subtitle];
  v22 = [v6 subtitleLabel];
  [v22 setText:v21];

  v23 = [(CNUINavigationListViewController *)self displayedExpandedItem];
  [v6 setAccessoryControlExpanded:v5 == v23 animated:0];

  return v6;
}

- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4
{
  height = a3.height;
  width = a3.width;
  v9.receiver = self;
  v9.super_class = CNUINavigationListViewController;
  v7 = a4;
  [(CNUINavigationListViewController *)&v9 viewWillTransitionToSize:v7 withTransitionCoordinator:width, height];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __87__CNUINavigationListViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke;
  v8[3] = &unk_1E74E3CC8;
  v8[4] = self;
  [v7 animateAlongsideTransition:v8 completion:&__block_literal_global_763];
}

- (void)viewDidLoad
{
  v11.receiver = self;
  v11.super_class = CNUINavigationListViewController;
  [(CNUINavigationListViewController *)&v11 viewDidLoad];
  v3 = [(CNUINavigationListViewController *)self navigationListView];
  v4 = [MEMORY[0x1E69DC888] clearColor];
  [v3 setBackgroundColor:v4];

  [v3 setRowHeight:*MEMORY[0x1E69DE3D0]];
  v5 = [(CNUINavigationListViewController *)self cellHeightEstimator];
  [v5 estimatedCellHeight];
  v7 = v6;
  [(CNUINavigationListViewController *)self cellSeparatorHeight];
  [v3 setEstimatedRowHeight:v7 + v8];

  v9 = objc_alloc(MEMORY[0x1E69DD250]);
  v10 = [v9 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
  [v3 setTableFooterView:v10];

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
  v4 = [(CNUINavigationListViewController *)self navigationListStyle];
  v5 = [(CNUINavigationListViewCellHeightEstimator *)v3 initWithNavigationListStyle:v4];
  [(CNUINavigationListViewController *)self setCellHeightEstimator:v5];

  [(CNUINavigationListViewController *)self reloadNavigationListView];
}

- (void)setNavigationListStyle:(id)a3
{
  objc_storeStrong(&self->_navigationListStyle, a3);

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

+ (BOOL)itemRequiresDetailCell:(id)a3
{
  v3 = a3;
  v4 = *MEMORY[0x1E6996568];
  v5 = [v3 subtitle];
  if ((*(v4 + 16))(v4, v5))
  {
    v6 = 0;
  }

  else
  {
    v7 = [v3 items];
    v6 = [v7 count] == 0;
  }

  return v6;
}

@end