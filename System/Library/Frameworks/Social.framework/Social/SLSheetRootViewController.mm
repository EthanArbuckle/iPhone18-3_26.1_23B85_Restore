@interface SLSheetRootViewController
- (SLComposeServiceViewController)delegate;
- (UITableView)tableView;
- (double)_preferredTableViewHeight;
- (id)navigationItem;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (void)_updateCell:(id)cell withConfigurationItem:(id)item;
- (void)_updateCellForConfigurationItem:(id)item;
- (void)dealloc;
- (void)dismissAutoCompletionViewControllerWithContentViewChangeBlock:(id)block;
- (void)loadView;
- (void)observeConfigurationItems:(id)items;
- (void)presentAutoCompletionViewController:(id)controller apparentContentHeight:(double)height contentViewChangeBlock:(id)block;
- (void)resetConfigurationItems;
- (void)setConfigurationItems:(id)items;
- (void)setContentView:(id)view;
- (void)setPostButtonEnabled:(BOOL)enabled;
- (void)setPostButtonTitle:(id)title;
- (void)setServiceIconImage:(id)image;
- (void)setTitle:(id)title;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)tableView:(id)view willDisplayCell:(id)cell forRowAtIndexPath:(id)path;
- (void)updateContentViewSize:(CGSize)size;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
@end

@implementation SLSheetRootViewController

- (void)dealloc
{
  _SLLog(v2, 7, @"SLSheetRootViewController dealloc");
  [(SLSheetRootViewController *)self resetConfigurationItems];
  v4.receiver = self;
  v4.super_class = SLSheetRootViewController;
  [(SLSheetRootViewController *)&v4 dealloc];
}

- (void)loadView
{
  _SLLog(v2, 7, @"SLSheetRootViewController loadView");
  v37.receiver = self;
  v37.super_class = SLSheetRootViewController;
  [(SLSheetRootViewController *)&v37 loadView];
  view = [(SLSheetRootViewController *)self view];
  [view setOpaque:0];

  view2 = [(SLSheetRootViewController *)self view];
  [view2 setAutoresizingMask:18];

  [(SLSheetRootViewController *)self setEdgesForExtendedLayout:0];
  v6 = [objc_alloc(MEMORY[0x1E69DD038]) initWithStyle:0];
  tableViewController = self->_tableViewController;
  self->_tableViewController = v6;

  [(UITableViewController *)self->_tableViewController willMoveToParentViewController:self];
  [(SLSheetRootViewController *)self addChildViewController:self->_tableViewController];
  view3 = [(SLSheetRootViewController *)self view];
  view4 = [(UITableViewController *)self->_tableViewController view];
  [view3 addSubview:view4];

  view5 = [(SLSheetRootViewController *)self view];
  [view5 bounds];
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;
  view6 = [(UITableViewController *)self->_tableViewController view];
  [view6 setFrame:{v12, v14, v16, v18}];

  view7 = [(UITableViewController *)self->_tableViewController view];
  [view7 setAutoresizingMask:34];

  [(UITableViewController *)self->_tableViewController didMoveToParentViewController:self];
  tableView = [(UITableViewController *)self->_tableViewController tableView];
  [tableView setDelegate:self];

  tableView2 = [(UITableViewController *)self->_tableViewController tableView];
  [tableView2 setDataSource:self];

  tableView3 = [(UITableViewController *)self->_tableViewController tableView];
  [tableView3 setOpaque:0];

  clearColor = [MEMORY[0x1E69DC888] clearColor];
  tableView4 = [(UITableViewController *)self->_tableViewController tableView];
  [tableView4 setBackgroundColor:clearColor];

  tableView5 = [(UITableViewController *)self->_tableViewController tableView];
  backgroundView = [tableView5 backgroundView];
  [backgroundView setOpaque:0];

  clearColor2 = [MEMORY[0x1E69DC888] clearColor];
  tableView6 = [(UITableViewController *)self->_tableViewController tableView];
  backgroundView2 = [tableView6 backgroundView];
  [backgroundView2 setBackgroundColor:clearColor2];

  v31 = *MEMORY[0x1E69DE3D0];
  tableView7 = [(UITableViewController *)self->_tableViewController tableView];
  [tableView7 setRowHeight:v31];

  v33 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDCF8]];
  [v33 lineHeight];
  v35 = v34 + v34;
  tableView8 = [(UITableViewController *)self->_tableViewController tableView];
  [tableView8 setEstimatedRowHeight:v35];
}

- (void)viewDidLoad
{
  v5.receiver = self;
  v5.super_class = SLSheetRootViewController;
  [(SLSheetRootViewController *)&v5 viewDidLoad];
  tableView = [(SLSheetRootViewController *)self tableView];
  [tableView setSeparatorStyle:1];

  tableView2 = [(SLSheetRootViewController *)self tableView];
  [tableView2 _setMarginWidth:0.0];
}

- (void)viewDidLayoutSubviews
{
  v18.receiver = self;
  v18.super_class = SLSheetRootViewController;
  [(SLSheetRootViewController *)&v18 viewDidLayoutSubviews];
  view = [(UITableViewController *)self->_tableViewController view];
  [view frame];
  v6 = v5;
  v8 = v7;
  v10 = v9;

  [(SLSheetRootViewController *)self _preferredTableViewHeight];
  v12 = v11;
  view2 = [(SLSheetRootViewController *)self view];
  [view2 frame];
  v15 = v14;

  if (v12 >= v15)
  {
    v12 = v15;
  }

  v17 = [MEMORY[0x1E696B098] valueWithCGRect:{v6, v8, v10, v12}];
  _SLLog(v2, 7, @"SLSheetRootViewController viewDidLayoutSubviews setting _tableViewController.view.frame to %@");

  view3 = [(UITableViewController *)self->_tableViewController view];
  [view3 setFrame:{v6, v8, v10, v12}];
}

- (UITableView)tableView
{
  view = [(SLSheetRootViewController *)self view];
  tableViewController = self->_tableViewController;

  return [(UITableViewController *)tableViewController tableView];
}

- (void)setContentView:(id)view
{
  objc_storeStrong(&self->_contentView, view);
  viewCopy = view;
  tableView = [(SLSheetRootViewController *)self tableView];
  [tableView bounds];
  v8 = v7;
  [(UIView *)self->_contentView intrinsicContentSize];
  [(UIView *)self->_contentView setBounds:0.0, 0.0, v8, v9];

  contentView = self->_contentView;
  tableView2 = [(SLSheetRootViewController *)self tableView];
  [tableView2 setTableHeaderView:contentView];
}

- (void)setTitle:(id)title
{
  v7.receiver = self;
  v7.super_class = SLSheetRootViewController;
  titleCopy = title;
  [(SLSheetRootViewController *)&v7 setTitle:titleCopy];
  [(SLSheetTitleView *)self->_titleView setTitle:titleCopy, v7.receiver, v7.super_class];
  [(SLSheetTitleView *)self->_titleView intrinsicContentSize];
  [(SLSheetTitleView *)self->_titleView setBounds:0.0, 0.0, v5, v6];
  [(UINavigationItem *)self->_navItem setTitle:titleCopy];
}

- (void)setServiceIconImage:(id)image
{
  objc_storeStrong(&self->_serviceIconImage, image);
  imageCopy = image;
  [(SLSheetTitleView *)self->_titleView setServiceIconImage:imageCopy];
  [(SLSheetTitleView *)self->_titleView intrinsicContentSize];
  [(SLSheetTitleView *)self->_titleView setBounds:0.0, 0.0, v5, v6];
}

- (void)setPostButtonTitle:(id)title
{
  titleCopy = title;
  _SLLog(v3, 7, @"setPostButtonTitle %@");
  rightBarButtonItem = [(UINavigationItem *)self->_navItem rightBarButtonItem];
  [rightBarButtonItem setTitle:titleCopy];
}

- (void)setPostButtonEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  enabledCopy2 = enabled;
  _SLLog(v3, 7, @"setPostButtonEnabled %d");
  rightBarButtonItem = [(UINavigationItem *)self->_navItem rightBarButtonItem];
  [rightBarButtonItem setEnabled:enabledCopy];
}

- (double)_preferredTableViewHeight
{
  tableView = [(UITableViewController *)self->_tableViewController tableView];
  [tableView sizeThatFits:{0.0, 1100.0}];
  v4 = v3;

  return v4;
}

- (id)navigationItem
{
  navItem = self->_navItem;
  if (!navItem)
  {
    v4 = objc_alloc(MEMORY[0x1E69DCCE0]);
    title = [(SLSheetRootViewController *)self title];
    v6 = [v4 initWithTitle:title];
    v7 = self->_navItem;
    self->_navItem = v6;

    v8 = objc_alloc(MEMORY[0x1E69DC708]);
    v9 = SLSocialFrameworkBundle();
    v10 = [v9 localizedStringForKey:@"CANCEL" value:&stru_1F41EC300 table:@"Localizable"];
    delegate = [(SLSheetRootViewController *)self delegate];
    v12 = [v8 initWithTitle:v10 style:0 target:delegate action:sel_cancelButtonTapped_];
    [(UINavigationItem *)self->_navItem setLeftBarButtonItem:v12];

    v13 = objc_alloc(MEMORY[0x1E69DC708]);
    v14 = SLSocialFrameworkBundle();
    v15 = [v14 localizedStringForKey:@"POST" value:&stru_1F41EC300 table:@"Localizable"];
    delegate2 = [(SLSheetRootViewController *)self delegate];
    v17 = [v13 initWithTitle:v15 style:2 target:delegate2 action:sel_postButtonTapped_];
    [(UINavigationItem *)self->_navItem setRightBarButtonItem:v17];

    v18 = objc_alloc_init(SLSheetTitleView);
    titleView = self->_titleView;
    self->_titleView = v18;

    v20 = self->_titleView;
    serviceIconImage = [(SLSheetRootViewController *)self serviceIconImage];
    [(SLSheetTitleView *)v20 setServiceIconImage:serviceIconImage];

    v22 = self->_titleView;
    title2 = [(SLSheetRootViewController *)self title];
    [(SLSheetTitleView *)v22 setTitle:title2];

    [(SLSheetTitleView *)self->_titleView intrinsicContentSize];
    [(SLSheetTitleView *)self->_titleView setBounds:0.0, 0.0, v24, v25];
    [(UINavigationItem *)self->_navItem setTitleView:self->_titleView];
    navItem = self->_navItem;
  }

  return navItem;
}

- (void)updateContentViewSize:(CGSize)size
{
  height = size.height;
  v12 = [MEMORY[0x1E696B098] valueWithCGSize:size.width];
  _SLLog(v3, 7, @"SLSheetRootViewController updateContentViewSize: %@");

  tableView = [(SLSheetRootViewController *)self tableView];
  [tableView bounds];
  v8 = v7;
  contentView = [(SLSheetRootViewController *)self contentView];
  [contentView setFrame:{0.0, 0.0, v8, height}];

  if (!self->_autoCompletionViewController)
  {
    contentView2 = [(SLSheetRootViewController *)self contentView];
    tableView2 = [(SLSheetRootViewController *)self tableView];
    [tableView2 setTableHeaderView:contentView2];
  }

  view = [(SLSheetRootViewController *)self view];
  [view setNeedsLayout];
}

- (void)presentAutoCompletionViewController:(id)controller apparentContentHeight:(double)height contentViewChangeBlock:(id)block
{
  controllerCopy = controller;
  blockCopy = block;
  _SLLog(v5, 7, @"SLSheetRootViewController presentAutoCompletionViewController:");
  autoCompletionViewController = self->_autoCompletionViewController;
  self->_autoCompletionViewController = controllerCopy;
  v12 = controllerCopy;

  tableView = [(SLSheetRootViewController *)self tableView];
  [tableView setTableHeaderView:0];

  view = [(SLSheetRootViewController *)self view];
  contentView = [(SLSheetRootViewController *)self contentView];
  [view addSubview:contentView];

  tableView2 = [(SLSheetRootViewController *)self tableView];
  [tableView2 frame];
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v24 = v23;

  contentView2 = [(SLSheetRootViewController *)self contentView];
  [contentView2 frame];
  v27 = v20 + v26;

  contentView3 = [(SLSheetRootViewController *)self contentView];
  [contentView3 frame];
  v30 = v24 - v29;

  tableView3 = [(SLSheetRootViewController *)self tableView];
  [tableView3 setFrame:{v18, v27, v22, v30}];

  view2 = [(UIViewController *)self->_autoCompletionViewController view];
  [view2 setAlpha:0.0];

  [(UIViewController *)self->_autoCompletionViewController willMoveToParentViewController:self];
  [(SLSheetRootViewController *)self addChildViewController:self->_autoCompletionViewController];
  view3 = [(SLSheetRootViewController *)self view];
  view4 = [(UIViewController *)self->_autoCompletionViewController view];
  [view3 addSubview:view4];

  [(UIViewController *)self->_autoCompletionViewController didMoveToParentViewController:self];
  view5 = [(SLSheetRootViewController *)self view];
  [view5 bounds];
  v37 = v36;
  v39 = v38;
  v41 = v40;
  v43 = v42;

  contentView4 = [(SLSheetRootViewController *)self contentView];
  [contentView4 frame];
  v46 = v39 + v45 + height;

  view6 = [(UIViewController *)self->_autoCompletionViewController view];
  [view6 setFrame:{v37, v46, v41, v43 - v46}];

  view7 = [(UIViewController *)self->_autoCompletionViewController view];
  [view7 setAutoresizingMask:18];

  view8 = [(SLSheetRootViewController *)self view];
  view9 = [(UIViewController *)self->_autoCompletionViewController view];
  [view8 bringSubviewToFront:view9];

  v51 = MEMORY[0x1E69DD250];
  v53[0] = MEMORY[0x1E69E9820];
  v53[1] = 3221225472;
  v53[2] = __110__SLSheetRootViewController_presentAutoCompletionViewController_apparentContentHeight_contentViewChangeBlock___block_invoke;
  v53[3] = &unk_1E81759A0;
  v53[4] = self;
  v54 = blockCopy;
  v52 = blockCopy;
  [v51 animateWithDuration:v53 animations:0.200000003];
}

uint64_t __110__SLSheetRootViewController_presentAutoCompletionViewController_apparentContentHeight_contentViewChangeBlock___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) tableView];
  [v2 setAlpha:0.0];

  v3 = [*(*(a1 + 32) + 1024) view];
  [v3 setAlpha:1.0];

  result = *(a1 + 40);
  if (result)
  {
    v5 = *(result + 16);

    return v5();
  }

  return result;
}

- (void)dismissAutoCompletionViewControllerWithContentViewChangeBlock:(id)block
{
  blockCopy = block;
  _SLLog(v3, 7, @"SLSheetRootViewController dismissAutoCompletionViewController");
  tableView = [(SLSheetRootViewController *)self tableView];
  [tableView frame];
  v8 = v7;
  v10 = v9;
  v12 = v11;

  contentView = [(SLSheetRootViewController *)self contentView];
  [contentView frame];
  v15 = v14;

  tableView2 = [(SLSheetRootViewController *)self tableView];
  [tableView2 setFrame:{v8, v15, v10, v12}];

  v17 = MEMORY[0x1E69DD250];
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __91__SLSheetRootViewController_dismissAutoCompletionViewControllerWithContentViewChangeBlock___block_invoke;
  v20[3] = &unk_1E81759A0;
  v20[4] = self;
  v21 = blockCopy;
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __91__SLSheetRootViewController_dismissAutoCompletionViewControllerWithContentViewChangeBlock___block_invoke_2;
  v19[3] = &unk_1E8175DB8;
  v19[4] = self;
  v18 = blockCopy;
  [v17 animateWithDuration:v20 animations:v19 completion:0.200000003];
}

uint64_t __91__SLSheetRootViewController_dismissAutoCompletionViewControllerWithContentViewChangeBlock___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) tableView];
  [v2 setAlpha:1.0];

  v3 = [*(*(a1 + 32) + 1024) view];
  [v3 setAlpha:0.0];

  result = *(a1 + 40);
  if (result)
  {
    v5 = *(result + 16);

    return v5();
  }

  return result;
}

void __91__SLSheetRootViewController_dismissAutoCompletionViewControllerWithContentViewChangeBlock___block_invoke_2(uint64_t a1)
{
  v3 = [*(a1 + 32) tableView];
  [v3 frame];
  v5 = v4;
  v7 = v6;
  v9 = v8;

  v10 = [*(a1 + 32) contentView];
  [v10 frame];
  v12 = v9 + v11;

  _SLLog(v1, 7, @"presentAutoCompletionViewController restored tableView.frame %g %g %g %g");
  v13 = [*(a1 + 32) tableView];
  [v13 setFrame:{v5, 0.0, v7, v12}];

  v14 = [*(a1 + 32) contentView];
  v15 = [*(a1 + 32) tableView];
  [v15 setTableHeaderView:v14];

  [*(*(a1 + 32) + 1024) willMoveToParentViewController:0];
  [*(*(a1 + 32) + 1024) removeFromParentViewController];
  v16 = [*(*(a1 + 32) + 1024) view];
  [v16 removeFromSuperview];

  [*(*(a1 + 32) + 1024) didMoveToParentViewController:0];
  v17 = *(a1 + 32);
  v18 = *(v17 + 1024);
  *(v17 + 1024) = 0;
}

- (void)resetConfigurationItems
{
  v14 = *MEMORY[0x1E69E9840];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = self->_configurationItems;
  v4 = [(NSArray *)v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    do
    {
      v7 = 0;
      do
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [*(*(&v9 + 1) + 8 * v7++) setChangeObserver:{0, v9}];
      }

      while (v5 != v7);
      v5 = [(NSArray *)v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }

  configurationItems = self->_configurationItems;
  self->_configurationItems = 0;
}

- (void)observeConfigurationItems:(id)items
{
  v14 = *MEMORY[0x1E69E9840];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v4 = self->_configurationItems;
  v5 = [(NSArray *)v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v10;
    do
    {
      v8 = 0;
      do
      {
        if (*v10 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [*(*(&v9 + 1) + 8 * v8++) setChangeObserver:{self, v9}];
      }

      while (v6 != v8);
      v6 = [(NSArray *)v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }
}

- (void)setConfigurationItems:(id)items
{
  itemsCopy = items;
  [(SLSheetRootViewController *)self resetConfigurationItems];
  v5 = [itemsCopy copy];

  configurationItems = self->_configurationItems;
  self->_configurationItems = v5;

  [(SLSheetRootViewController *)self observeConfigurationItems:self->_configurationItems];
  tableView = [(SLSheetRootViewController *)self tableView];
  [tableView reloadData];

  view = [(SLSheetRootViewController *)self view];
  [view setNeedsLayout];
}

- (void)_updateCellForConfigurationItem:(id)item
{
  itemCopy = item;
  v4 = [MEMORY[0x1E696AC88] indexPathForRow:-[NSArray indexOfObject:](self->_configurationItems inSection:{"indexOfObject:"), 0}];
  tableView = [(SLSheetRootViewController *)self tableView];
  v6 = [tableView cellForRowAtIndexPath:v4];

  if (v6)
  {
    [(SLSheetRootViewController *)self _updateCell:v6 withConfigurationItem:itemCopy];
    [v6 setNeedsLayout];
  }
}

- (void)_updateCell:(id)cell withConfigurationItem:(id)item
{
  cellCopy = cell;
  itemCopy = item;
  title = [itemCopy title];
  textLabel = [cellCopy textLabel];
  [textLabel setText:title];

  value = [itemCopy value];
  detailTextLabel = [cellCopy detailTextLabel];
  [detailTextLabel setText:value];

  if ([itemCopy valuePending])
  {
    v10 = [objc_alloc(MEMORY[0x1E69DC638]) initWithActivityIndicatorStyle:100];
    [cellCopy setAccessoryView:v10];
    [v10 startAnimating];
    [cellCopy setSelectionStyle:2];
  }

  else
  {
    tapHandler = [itemCopy tapHandler];

    [cellCopy setAccessoryView:0];
    if (tapHandler)
    {
      [cellCopy setAccessoryType:1];
      v12 = cellCopy;
      v13 = 2;
    }

    else
    {
      [cellCopy setAccessoryType:0];
      v12 = cellCopy;
      v13 = 0;
    }

    [v12 setSelectionStyle:v13];
  }
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  pathCopy = path;
  v7 = [view dequeueReusableCellWithIdentifier:@"SLComposeSheetConfigurationItemCell"];
  if (!v7)
  {
    v7 = [objc_alloc(MEMORY[0x1E69DD028]) initWithStyle:1 reuseIdentifier:@"SLComposeSheetConfigurationItemCell"];
    [v7 setAccessoryType:1];
    [v7 separatorInset];
    [v7 setSeparatorInset:?];
  }

  v8 = -[NSArray objectAtIndexedSubscript:](self->_configurationItems, "objectAtIndexedSubscript:", [pathCopy row]);
  [(SLSheetRootViewController *)self _updateCell:v7 withConfigurationItem:v8];

  return v7;
}

- (void)tableView:(id)view willDisplayCell:(id)cell forRowAtIndexPath:(id)path
{
  cellCopy = cell;
  [cellCopy setOpaque:0];
  clearColor = [MEMORY[0x1E69DC888] clearColor];
  [cellCopy setBackgroundColor:clearColor];
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  configurationItems = self->_configurationItems;
  pathCopy = path;
  v10 = -[NSArray objectAtIndexedSubscript:](configurationItems, "objectAtIndexedSubscript:", [pathCopy row]);
  tapHandler = [v10 tapHandler];

  if (tapHandler)
  {
    tapHandler2 = [v10 tapHandler];
    tapHandler2[2]();
  }

  tableView = [(SLSheetRootViewController *)self tableView];
  [tableView deselectRowAtIndexPath:pathCopy animated:1];
}

- (SLComposeServiceViewController)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end