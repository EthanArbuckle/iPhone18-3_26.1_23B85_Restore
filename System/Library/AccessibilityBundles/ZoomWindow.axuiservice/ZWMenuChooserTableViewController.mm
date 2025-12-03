@interface ZWMenuChooserTableViewController
- (UIEdgeInsets)contentInset;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (void)loadView;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)tableView:(id)view willDisplayCell:(id)cell forRowAtIndexPath:(id)path;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation ZWMenuChooserTableViewController

- (void)loadView
{
  v29 = [[UITableView alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
  v3 = [UIVisualEffectView alloc];
  v4 = [UIBlurEffect effectWithStyle:19];
  v5 = [v3 initWithEffect:v4];

  contentView = [v5 contentView];
  [contentView addSubview:v29];

  [(ZWMenuChooserTableViewController *)self setView:v5];
  [(ZWMenuChooserTableViewController *)self setTableView:v29];
  [v29 setDelegate:self];
  [v29 setDataSource:self];
  [v29 setScrollEnabled:0];
  [v29 setAutoresizingMask:18];
  v7 = +[UIColor clearColor];
  [v29 setBackgroundColor:v7];

  [v29 setSeparatorInset:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];
  v8 = +[UIColor whiteColor];
  [v29 setTintColor:v8];

  if (_UISolariumEnabled())
  {
    [v5 setEffect:0];
    traitOverrides = [v5 traitOverrides];
    [traitOverrides setUserInterfaceStyle:2];

    [v5 ax_setWantsGlassAppearance:1];
    [(ZWMenuChooserTableViewController *)self setContentInset:10.0, 0.0, 10.0, 0.0];
    [(ZWMenuChooserTableViewController *)self contentInset];
    v11 = v10;
    v13 = v12;
    v15 = v14;
    v17 = v16;
    tableView = [(ZWMenuChooserTableViewController *)self tableView];
    [tableView setContentInset:{v11, v13, v15, v17}];

    [(ZWMenuChooserTableViewController *)self contentInset];
    v20 = v19;
    v22 = v21;
    v24 = v23;
    v26 = v25;
    tableView2 = [(ZWMenuChooserTableViewController *)self tableView];
    [tableView2 setScrollIndicatorInsets:{v20, v22, v24, v26}];

    tableView3 = [(ZWMenuChooserTableViewController *)self tableView];
    [tableView3 setSeparatorStyle:0];
  }
}

- (void)viewDidLoad
{
  v7.receiver = self;
  v7.super_class = ZWMenuChooserTableViewController;
  [(ZWMenuChooserTableViewController *)&v7 viewDidLoad];
  tableView = [(ZWMenuChooserTableViewController *)self tableView];
  [tableView registerClass:objc_opt_class() forCellReuseIdentifier:ZWMenuItemCellReuseID];

  if (_UISolariumEnabled())
  {
    v4 = 69.0;
  }

  else
  {
    v4 = 44.0;
  }

  tableView2 = [(ZWMenuChooserTableViewController *)self tableView];
  [tableView2 setEstimatedRowHeight:v4];

  tableView3 = [(ZWMenuChooserTableViewController *)self tableView];
  [tableView3 setRowHeight:UITableViewAutomaticDimension];
}

- (void)viewWillAppear:(BOOL)appear
{
  v17.receiver = self;
  v17.super_class = ZWMenuChooserTableViewController;
  [(ZWMenuChooserTableViewController *)&v17 viewWillAppear:appear];
  if (ZWUseVibrantBlendModes())
  {
    v4 = [UIColor colorWithWhite:0.25 alpha:1.0];
    tableView = [(ZWMenuChooserTableViewController *)self tableView];
    [tableView setSeparatorColor:v4];

    v6 = [UIBlurEffect effectWithStyle:2];
    tableView3 = [UIVibrancyEffect effectForBlurEffect:v6];
    tableView2 = [(ZWMenuChooserTableViewController *)self tableView];
    [tableView2 setSeparatorEffect:tableView3];
  }

  else
  {
    v6 = [UIColor colorWithWhite:0.5 alpha:1.0];
    tableView3 = [(ZWMenuChooserTableViewController *)self tableView];
    [tableView3 setSeparatorColor:v6];
  }

  tableView4 = [(ZWMenuChooserTableViewController *)self tableView];
  [tableView4 frame];
  ZWCornerRadiusForBackgroundWithSize(v10, v11);
  v13 = v12;
  view = [(ZWMenuChooserTableViewController *)self view];
  superview = [view superview];
  layer = [superview layer];
  [layer setCornerRadius:v13];
}

- (void)viewDidAppear:(BOOL)appear
{
  v13.receiver = self;
  v13.super_class = ZWMenuChooserTableViewController;
  [(ZWMenuChooserTableViewController *)&v13 viewDidAppear:appear];
  tableView = [(ZWMenuChooserTableViewController *)self tableView];
  [tableView layoutIfNeeded];

  tableView2 = [(ZWMenuChooserTableViewController *)self tableView];
  [tableView2 contentSize];
  v7 = v6;
  v9 = v8;

  [(ZWMenuChooserTableViewController *)self contentInset];
  v11 = v10;
  [(ZWMenuChooserTableViewController *)self contentInset];
  [(ZWMenuChooserTableViewController *)self setPreferredContentSize:v7, v9 + v11 + v12];
}

- (void)viewDidLayoutSubviews
{
  v10.receiver = self;
  v10.super_class = ZWMenuChooserTableViewController;
  [(ZWMenuChooserTableViewController *)&v10 viewDidLayoutSubviews];
  tableView = [(ZWMenuChooserTableViewController *)self tableView];
  [tableView contentSize];
  v5 = v4;
  tableView2 = [(ZWMenuChooserTableViewController *)self tableView];
  [tableView2 bounds];
  v8 = v5 > v7;
  tableView3 = [(ZWMenuChooserTableViewController *)self tableView];
  [tableView3 setScrollEnabled:v8];
}

- (void)tableView:(id)view willDisplayCell:(id)cell forRowAtIndexPath:(id)path
{
  cellCopy = cell;
  v6 = +[UIColor clearColor];
  [cellCopy setBackgroundColor:v6];
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  [viewCopy deselectRowAtIndexPath:pathCopy animated:1];
  v7 = [viewCopy numberOfRowsInSection:0];
  if (v7)
  {
    v8 = v7;
    for (i = 0; i != v8; ++i)
    {
      v10 = [NSIndexPath indexPathForRow:i inSection:0];
      v11 = [viewCopy cellForRowAtIndexPath:v10];
      if (_UISolariumEnabled() && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
      {
        [v11 setAccessoryType:0];
        [v11 setIsChecked:{i == objc_msgSend(pathCopy, "row")}];
      }

      else
      {
        if (i == [pathCopy row])
        {
          v12 = 3;
        }

        else
        {
          v12 = 0;
        }

        [v11 setAccessoryType:v12];
      }
    }
  }

  [(ZWMenuChooserTableViewController *)self dismissViewControllerAnimated:1 completion:0];
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  v4 = [view dequeueReusableCellWithIdentifier:{ZWMenuItemCellReuseID, path}];
  if (!_UISolariumEnabled() || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0.5;
    if (ZWUseVibrantBlendModes())
    {
      v5 = 0.25;
      if (!UIAccessibilityIsInvertColorsEnabled())
      {
        [v4 _setDrawsAsBackdropOverlayWithBlendMode:3];
      }
    }

    v6 = [[UIView alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
    [v6 setAutoresizingMask:18];
    v7 = [UIColor colorWithWhite:v5 alpha:1.0];
    [v6 setBackgroundColor:v7];

    [v4 setSelectedBackgroundView:v6];
  }

  return v4;
}

- (UIEdgeInsets)contentInset
{
  top = self->_contentInset.top;
  left = self->_contentInset.left;
  bottom = self->_contentInset.bottom;
  right = self->_contentInset.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

@end