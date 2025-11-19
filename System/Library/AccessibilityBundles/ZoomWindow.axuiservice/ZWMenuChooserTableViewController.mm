@interface ZWMenuChooserTableViewController
- (UIEdgeInsets)contentInset;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (void)loadView;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)tableView:(id)a3 willDisplayCell:(id)a4 forRowAtIndexPath:(id)a5;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation ZWMenuChooserTableViewController

- (void)loadView
{
  v29 = [[UITableView alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
  v3 = [UIVisualEffectView alloc];
  v4 = [UIBlurEffect effectWithStyle:19];
  v5 = [v3 initWithEffect:v4];

  v6 = [v5 contentView];
  [v6 addSubview:v29];

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
    v9 = [v5 traitOverrides];
    [v9 setUserInterfaceStyle:2];

    [v5 ax_setWantsGlassAppearance:1];
    [(ZWMenuChooserTableViewController *)self setContentInset:10.0, 0.0, 10.0, 0.0];
    [(ZWMenuChooserTableViewController *)self contentInset];
    v11 = v10;
    v13 = v12;
    v15 = v14;
    v17 = v16;
    v18 = [(ZWMenuChooserTableViewController *)self tableView];
    [v18 setContentInset:{v11, v13, v15, v17}];

    [(ZWMenuChooserTableViewController *)self contentInset];
    v20 = v19;
    v22 = v21;
    v24 = v23;
    v26 = v25;
    v27 = [(ZWMenuChooserTableViewController *)self tableView];
    [v27 setScrollIndicatorInsets:{v20, v22, v24, v26}];

    v28 = [(ZWMenuChooserTableViewController *)self tableView];
    [v28 setSeparatorStyle:0];
  }
}

- (void)viewDidLoad
{
  v7.receiver = self;
  v7.super_class = ZWMenuChooserTableViewController;
  [(ZWMenuChooserTableViewController *)&v7 viewDidLoad];
  v3 = [(ZWMenuChooserTableViewController *)self tableView];
  [v3 registerClass:objc_opt_class() forCellReuseIdentifier:ZWMenuItemCellReuseID];

  if (_UISolariumEnabled())
  {
    v4 = 69.0;
  }

  else
  {
    v4 = 44.0;
  }

  v5 = [(ZWMenuChooserTableViewController *)self tableView];
  [v5 setEstimatedRowHeight:v4];

  v6 = [(ZWMenuChooserTableViewController *)self tableView];
  [v6 setRowHeight:UITableViewAutomaticDimension];
}

- (void)viewWillAppear:(BOOL)a3
{
  v17.receiver = self;
  v17.super_class = ZWMenuChooserTableViewController;
  [(ZWMenuChooserTableViewController *)&v17 viewWillAppear:a3];
  if (ZWUseVibrantBlendModes())
  {
    v4 = [UIColor colorWithWhite:0.25 alpha:1.0];
    v5 = [(ZWMenuChooserTableViewController *)self tableView];
    [v5 setSeparatorColor:v4];

    v6 = [UIBlurEffect effectWithStyle:2];
    v7 = [UIVibrancyEffect effectForBlurEffect:v6];
    v8 = [(ZWMenuChooserTableViewController *)self tableView];
    [v8 setSeparatorEffect:v7];
  }

  else
  {
    v6 = [UIColor colorWithWhite:0.5 alpha:1.0];
    v7 = [(ZWMenuChooserTableViewController *)self tableView];
    [v7 setSeparatorColor:v6];
  }

  v9 = [(ZWMenuChooserTableViewController *)self tableView];
  [v9 frame];
  ZWCornerRadiusForBackgroundWithSize(v10, v11);
  v13 = v12;
  v14 = [(ZWMenuChooserTableViewController *)self view];
  v15 = [v14 superview];
  v16 = [v15 layer];
  [v16 setCornerRadius:v13];
}

- (void)viewDidAppear:(BOOL)a3
{
  v13.receiver = self;
  v13.super_class = ZWMenuChooserTableViewController;
  [(ZWMenuChooserTableViewController *)&v13 viewDidAppear:a3];
  v4 = [(ZWMenuChooserTableViewController *)self tableView];
  [v4 layoutIfNeeded];

  v5 = [(ZWMenuChooserTableViewController *)self tableView];
  [v5 contentSize];
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
  v3 = [(ZWMenuChooserTableViewController *)self tableView];
  [v3 contentSize];
  v5 = v4;
  v6 = [(ZWMenuChooserTableViewController *)self tableView];
  [v6 bounds];
  v8 = v5 > v7;
  v9 = [(ZWMenuChooserTableViewController *)self tableView];
  [v9 setScrollEnabled:v8];
}

- (void)tableView:(id)a3 willDisplayCell:(id)a4 forRowAtIndexPath:(id)a5
{
  v5 = a4;
  v6 = +[UIColor clearColor];
  [v5 setBackgroundColor:v6];
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v13 = a3;
  v6 = a4;
  [v13 deselectRowAtIndexPath:v6 animated:1];
  v7 = [v13 numberOfRowsInSection:0];
  if (v7)
  {
    v8 = v7;
    for (i = 0; i != v8; ++i)
    {
      v10 = [NSIndexPath indexPathForRow:i inSection:0];
      v11 = [v13 cellForRowAtIndexPath:v10];
      if (_UISolariumEnabled() && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
      {
        [v11 setAccessoryType:0];
        [v11 setIsChecked:{i == objc_msgSend(v6, "row")}];
      }

      else
      {
        if (i == [v6 row])
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

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v4 = [a3 dequeueReusableCellWithIdentifier:{ZWMenuItemCellReuseID, a4}];
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