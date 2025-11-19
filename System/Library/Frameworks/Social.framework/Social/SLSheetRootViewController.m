@interface SLSheetRootViewController
- (SLComposeServiceViewController)delegate;
- (UITableView)tableView;
- (double)_preferredTableViewHeight;
- (id)navigationItem;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (void)_updateCell:(id)a3 withConfigurationItem:(id)a4;
- (void)_updateCellForConfigurationItem:(id)a3;
- (void)dealloc;
- (void)dismissAutoCompletionViewControllerWithContentViewChangeBlock:(id)a3;
- (void)loadView;
- (void)observeConfigurationItems:(id)a3;
- (void)presentAutoCompletionViewController:(id)a3 apparentContentHeight:(double)a4 contentViewChangeBlock:(id)a5;
- (void)resetConfigurationItems;
- (void)setConfigurationItems:(id)a3;
- (void)setContentView:(id)a3;
- (void)setPostButtonEnabled:(BOOL)a3;
- (void)setPostButtonTitle:(id)a3;
- (void)setServiceIconImage:(id)a3;
- (void)setTitle:(id)a3;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)tableView:(id)a3 willDisplayCell:(id)a4 forRowAtIndexPath:(id)a5;
- (void)updateContentViewSize:(CGSize)a3;
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
  v4 = [(SLSheetRootViewController *)self view];
  [v4 setOpaque:0];

  v5 = [(SLSheetRootViewController *)self view];
  [v5 setAutoresizingMask:18];

  [(SLSheetRootViewController *)self setEdgesForExtendedLayout:0];
  v6 = [objc_alloc(MEMORY[0x1E69DD038]) initWithStyle:0];
  tableViewController = self->_tableViewController;
  self->_tableViewController = v6;

  [(UITableViewController *)self->_tableViewController willMoveToParentViewController:self];
  [(SLSheetRootViewController *)self addChildViewController:self->_tableViewController];
  v8 = [(SLSheetRootViewController *)self view];
  v9 = [(UITableViewController *)self->_tableViewController view];
  [v8 addSubview:v9];

  v10 = [(SLSheetRootViewController *)self view];
  [v10 bounds];
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v19 = [(UITableViewController *)self->_tableViewController view];
  [v19 setFrame:{v12, v14, v16, v18}];

  v20 = [(UITableViewController *)self->_tableViewController view];
  [v20 setAutoresizingMask:34];

  [(UITableViewController *)self->_tableViewController didMoveToParentViewController:self];
  v21 = [(UITableViewController *)self->_tableViewController tableView];
  [v21 setDelegate:self];

  v22 = [(UITableViewController *)self->_tableViewController tableView];
  [v22 setDataSource:self];

  v23 = [(UITableViewController *)self->_tableViewController tableView];
  [v23 setOpaque:0];

  v24 = [MEMORY[0x1E69DC888] clearColor];
  v25 = [(UITableViewController *)self->_tableViewController tableView];
  [v25 setBackgroundColor:v24];

  v26 = [(UITableViewController *)self->_tableViewController tableView];
  v27 = [v26 backgroundView];
  [v27 setOpaque:0];

  v28 = [MEMORY[0x1E69DC888] clearColor];
  v29 = [(UITableViewController *)self->_tableViewController tableView];
  v30 = [v29 backgroundView];
  [v30 setBackgroundColor:v28];

  v31 = *MEMORY[0x1E69DE3D0];
  v32 = [(UITableViewController *)self->_tableViewController tableView];
  [v32 setRowHeight:v31];

  v33 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDCF8]];
  [v33 lineHeight];
  v35 = v34 + v34;
  v36 = [(UITableViewController *)self->_tableViewController tableView];
  [v36 setEstimatedRowHeight:v35];
}

- (void)viewDidLoad
{
  v5.receiver = self;
  v5.super_class = SLSheetRootViewController;
  [(SLSheetRootViewController *)&v5 viewDidLoad];
  v3 = [(SLSheetRootViewController *)self tableView];
  [v3 setSeparatorStyle:1];

  v4 = [(SLSheetRootViewController *)self tableView];
  [v4 _setMarginWidth:0.0];
}

- (void)viewDidLayoutSubviews
{
  v18.receiver = self;
  v18.super_class = SLSheetRootViewController;
  [(SLSheetRootViewController *)&v18 viewDidLayoutSubviews];
  v4 = [(UITableViewController *)self->_tableViewController view];
  [v4 frame];
  v6 = v5;
  v8 = v7;
  v10 = v9;

  [(SLSheetRootViewController *)self _preferredTableViewHeight];
  v12 = v11;
  v13 = [(SLSheetRootViewController *)self view];
  [v13 frame];
  v15 = v14;

  if (v12 >= v15)
  {
    v12 = v15;
  }

  v17 = [MEMORY[0x1E696B098] valueWithCGRect:{v6, v8, v10, v12}];
  _SLLog(v2, 7, @"SLSheetRootViewController viewDidLayoutSubviews setting _tableViewController.view.frame to %@");

  v16 = [(UITableViewController *)self->_tableViewController view];
  [v16 setFrame:{v6, v8, v10, v12}];
}

- (UITableView)tableView
{
  v3 = [(SLSheetRootViewController *)self view];
  tableViewController = self->_tableViewController;

  return [(UITableViewController *)tableViewController tableView];
}

- (void)setContentView:(id)a3
{
  objc_storeStrong(&self->_contentView, a3);
  v5 = a3;
  v6 = [(SLSheetRootViewController *)self tableView];
  [v6 bounds];
  v8 = v7;
  [(UIView *)self->_contentView intrinsicContentSize];
  [(UIView *)self->_contentView setBounds:0.0, 0.0, v8, v9];

  contentView = self->_contentView;
  v11 = [(SLSheetRootViewController *)self tableView];
  [v11 setTableHeaderView:contentView];
}

- (void)setTitle:(id)a3
{
  v7.receiver = self;
  v7.super_class = SLSheetRootViewController;
  v4 = a3;
  [(SLSheetRootViewController *)&v7 setTitle:v4];
  [(SLSheetTitleView *)self->_titleView setTitle:v4, v7.receiver, v7.super_class];
  [(SLSheetTitleView *)self->_titleView intrinsicContentSize];
  [(SLSheetTitleView *)self->_titleView setBounds:0.0, 0.0, v5, v6];
  [(UINavigationItem *)self->_navItem setTitle:v4];
}

- (void)setServiceIconImage:(id)a3
{
  objc_storeStrong(&self->_serviceIconImage, a3);
  v7 = a3;
  [(SLSheetTitleView *)self->_titleView setServiceIconImage:v7];
  [(SLSheetTitleView *)self->_titleView intrinsicContentSize];
  [(SLSheetTitleView *)self->_titleView setBounds:0.0, 0.0, v5, v6];
}

- (void)setPostButtonTitle:(id)a3
{
  v5 = a3;
  _SLLog(v3, 7, @"setPostButtonTitle %@");
  v6 = [(UINavigationItem *)self->_navItem rightBarButtonItem];
  [v6 setTitle:v5];
}

- (void)setPostButtonEnabled:(BOOL)a3
{
  v4 = a3;
  v6 = a3;
  _SLLog(v3, 7, @"setPostButtonEnabled %d");
  v7 = [(UINavigationItem *)self->_navItem rightBarButtonItem];
  [v7 setEnabled:v4];
}

- (double)_preferredTableViewHeight
{
  v2 = [(UITableViewController *)self->_tableViewController tableView];
  [v2 sizeThatFits:{0.0, 1100.0}];
  v4 = v3;

  return v4;
}

- (id)navigationItem
{
  navItem = self->_navItem;
  if (!navItem)
  {
    v4 = objc_alloc(MEMORY[0x1E69DCCE0]);
    v5 = [(SLSheetRootViewController *)self title];
    v6 = [v4 initWithTitle:v5];
    v7 = self->_navItem;
    self->_navItem = v6;

    v8 = objc_alloc(MEMORY[0x1E69DC708]);
    v9 = SLSocialFrameworkBundle();
    v10 = [v9 localizedStringForKey:@"CANCEL" value:&stru_1F41EC300 table:@"Localizable"];
    v11 = [(SLSheetRootViewController *)self delegate];
    v12 = [v8 initWithTitle:v10 style:0 target:v11 action:sel_cancelButtonTapped_];
    [(UINavigationItem *)self->_navItem setLeftBarButtonItem:v12];

    v13 = objc_alloc(MEMORY[0x1E69DC708]);
    v14 = SLSocialFrameworkBundle();
    v15 = [v14 localizedStringForKey:@"POST" value:&stru_1F41EC300 table:@"Localizable"];
    v16 = [(SLSheetRootViewController *)self delegate];
    v17 = [v13 initWithTitle:v15 style:2 target:v16 action:sel_postButtonTapped_];
    [(UINavigationItem *)self->_navItem setRightBarButtonItem:v17];

    v18 = objc_alloc_init(SLSheetTitleView);
    titleView = self->_titleView;
    self->_titleView = v18;

    v20 = self->_titleView;
    v21 = [(SLSheetRootViewController *)self serviceIconImage];
    [(SLSheetTitleView *)v20 setServiceIconImage:v21];

    v22 = self->_titleView;
    v23 = [(SLSheetRootViewController *)self title];
    [(SLSheetTitleView *)v22 setTitle:v23];

    [(SLSheetTitleView *)self->_titleView intrinsicContentSize];
    [(SLSheetTitleView *)self->_titleView setBounds:0.0, 0.0, v24, v25];
    [(UINavigationItem *)self->_navItem setTitleView:self->_titleView];
    navItem = self->_navItem;
  }

  return navItem;
}

- (void)updateContentViewSize:(CGSize)a3
{
  height = a3.height;
  v12 = [MEMORY[0x1E696B098] valueWithCGSize:a3.width];
  _SLLog(v3, 7, @"SLSheetRootViewController updateContentViewSize: %@");

  v6 = [(SLSheetRootViewController *)self tableView];
  [v6 bounds];
  v8 = v7;
  v9 = [(SLSheetRootViewController *)self contentView];
  [v9 setFrame:{0.0, 0.0, v8, height}];

  if (!self->_autoCompletionViewController)
  {
    v10 = [(SLSheetRootViewController *)self contentView];
    v11 = [(SLSheetRootViewController *)self tableView];
    [v11 setTableHeaderView:v10];
  }

  v13 = [(SLSheetRootViewController *)self view];
  [v13 setNeedsLayout];
}

- (void)presentAutoCompletionViewController:(id)a3 apparentContentHeight:(double)a4 contentViewChangeBlock:(id)a5
{
  v9 = a3;
  v10 = a5;
  _SLLog(v5, 7, @"SLSheetRootViewController presentAutoCompletionViewController:");
  autoCompletionViewController = self->_autoCompletionViewController;
  self->_autoCompletionViewController = v9;
  v12 = v9;

  v13 = [(SLSheetRootViewController *)self tableView];
  [v13 setTableHeaderView:0];

  v14 = [(SLSheetRootViewController *)self view];
  v15 = [(SLSheetRootViewController *)self contentView];
  [v14 addSubview:v15];

  v16 = [(SLSheetRootViewController *)self tableView];
  [v16 frame];
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v24 = v23;

  v25 = [(SLSheetRootViewController *)self contentView];
  [v25 frame];
  v27 = v20 + v26;

  v28 = [(SLSheetRootViewController *)self contentView];
  [v28 frame];
  v30 = v24 - v29;

  v31 = [(SLSheetRootViewController *)self tableView];
  [v31 setFrame:{v18, v27, v22, v30}];

  v32 = [(UIViewController *)self->_autoCompletionViewController view];
  [v32 setAlpha:0.0];

  [(UIViewController *)self->_autoCompletionViewController willMoveToParentViewController:self];
  [(SLSheetRootViewController *)self addChildViewController:self->_autoCompletionViewController];
  v33 = [(SLSheetRootViewController *)self view];
  v34 = [(UIViewController *)self->_autoCompletionViewController view];
  [v33 addSubview:v34];

  [(UIViewController *)self->_autoCompletionViewController didMoveToParentViewController:self];
  v35 = [(SLSheetRootViewController *)self view];
  [v35 bounds];
  v37 = v36;
  v39 = v38;
  v41 = v40;
  v43 = v42;

  v44 = [(SLSheetRootViewController *)self contentView];
  [v44 frame];
  v46 = v39 + v45 + a4;

  v47 = [(UIViewController *)self->_autoCompletionViewController view];
  [v47 setFrame:{v37, v46, v41, v43 - v46}];

  v48 = [(UIViewController *)self->_autoCompletionViewController view];
  [v48 setAutoresizingMask:18];

  v49 = [(SLSheetRootViewController *)self view];
  v50 = [(UIViewController *)self->_autoCompletionViewController view];
  [v49 bringSubviewToFront:v50];

  v51 = MEMORY[0x1E69DD250];
  v53[0] = MEMORY[0x1E69E9820];
  v53[1] = 3221225472;
  v53[2] = __110__SLSheetRootViewController_presentAutoCompletionViewController_apparentContentHeight_contentViewChangeBlock___block_invoke;
  v53[3] = &unk_1E81759A0;
  v53[4] = self;
  v54 = v10;
  v52 = v10;
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

- (void)dismissAutoCompletionViewControllerWithContentViewChangeBlock:(id)a3
{
  v5 = a3;
  _SLLog(v3, 7, @"SLSheetRootViewController dismissAutoCompletionViewController");
  v6 = [(SLSheetRootViewController *)self tableView];
  [v6 frame];
  v8 = v7;
  v10 = v9;
  v12 = v11;

  v13 = [(SLSheetRootViewController *)self contentView];
  [v13 frame];
  v15 = v14;

  v16 = [(SLSheetRootViewController *)self tableView];
  [v16 setFrame:{v8, v15, v10, v12}];

  v17 = MEMORY[0x1E69DD250];
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __91__SLSheetRootViewController_dismissAutoCompletionViewControllerWithContentViewChangeBlock___block_invoke;
  v20[3] = &unk_1E81759A0;
  v20[4] = self;
  v21 = v5;
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __91__SLSheetRootViewController_dismissAutoCompletionViewControllerWithContentViewChangeBlock___block_invoke_2;
  v19[3] = &unk_1E8175DB8;
  v19[4] = self;
  v18 = v5;
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

- (void)observeConfigurationItems:(id)a3
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

- (void)setConfigurationItems:(id)a3
{
  v4 = a3;
  [(SLSheetRootViewController *)self resetConfigurationItems];
  v5 = [v4 copy];

  configurationItems = self->_configurationItems;
  self->_configurationItems = v5;

  [(SLSheetRootViewController *)self observeConfigurationItems:self->_configurationItems];
  v7 = [(SLSheetRootViewController *)self tableView];
  [v7 reloadData];

  v8 = [(SLSheetRootViewController *)self view];
  [v8 setNeedsLayout];
}

- (void)_updateCellForConfigurationItem:(id)a3
{
  v7 = a3;
  v4 = [MEMORY[0x1E696AC88] indexPathForRow:-[NSArray indexOfObject:](self->_configurationItems inSection:{"indexOfObject:"), 0}];
  v5 = [(SLSheetRootViewController *)self tableView];
  v6 = [v5 cellForRowAtIndexPath:v4];

  if (v6)
  {
    [(SLSheetRootViewController *)self _updateCell:v6 withConfigurationItem:v7];
    [v6 setNeedsLayout];
  }
}

- (void)_updateCell:(id)a3 withConfigurationItem:(id)a4
{
  v14 = a3;
  v5 = a4;
  v6 = [v5 title];
  v7 = [v14 textLabel];
  [v7 setText:v6];

  v8 = [v5 value];
  v9 = [v14 detailTextLabel];
  [v9 setText:v8];

  if ([v5 valuePending])
  {
    v10 = [objc_alloc(MEMORY[0x1E69DC638]) initWithActivityIndicatorStyle:100];
    [v14 setAccessoryView:v10];
    [v10 startAnimating];
    [v14 setSelectionStyle:2];
  }

  else
  {
    v11 = [v5 tapHandler];

    [v14 setAccessoryView:0];
    if (v11)
    {
      [v14 setAccessoryType:1];
      v12 = v14;
      v13 = 2;
    }

    else
    {
      [v14 setAccessoryType:0];
      v12 = v14;
      v13 = 0;
    }

    [v12 setSelectionStyle:v13];
  }
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v6 = a4;
  v7 = [a3 dequeueReusableCellWithIdentifier:@"SLComposeSheetConfigurationItemCell"];
  if (!v7)
  {
    v7 = [objc_alloc(MEMORY[0x1E69DD028]) initWithStyle:1 reuseIdentifier:@"SLComposeSheetConfigurationItemCell"];
    [v7 setAccessoryType:1];
    [v7 separatorInset];
    [v7 setSeparatorInset:?];
  }

  v8 = -[NSArray objectAtIndexedSubscript:](self->_configurationItems, "objectAtIndexedSubscript:", [v6 row]);
  [(SLSheetRootViewController *)self _updateCell:v7 withConfigurationItem:v8];

  return v7;
}

- (void)tableView:(id)a3 willDisplayCell:(id)a4 forRowAtIndexPath:(id)a5
{
  v5 = a4;
  [v5 setOpaque:0];
  v6 = [MEMORY[0x1E69DC888] clearColor];
  [v5 setBackgroundColor:v6];
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  configurationItems = self->_configurationItems;
  v6 = a4;
  v10 = -[NSArray objectAtIndexedSubscript:](configurationItems, "objectAtIndexedSubscript:", [v6 row]);
  v7 = [v10 tapHandler];

  if (v7)
  {
    v8 = [v10 tapHandler];
    v8[2]();
  }

  v9 = [(SLSheetRootViewController *)self tableView];
  [v9 deselectRowAtIndexPath:v6 animated:1];
}

- (SLComposeServiceViewController)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end