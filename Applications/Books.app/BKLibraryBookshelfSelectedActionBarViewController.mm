@interface BKLibraryBookshelfSelectedActionBarViewController
- (BKLibraryBookshelfSelectedActionBar)toolbar;
- (BKLibraryBookshelfSelectedActionBarDelegate)delegate;
- (UIBarButtonItem)addButton;
- (UIBarButtonItem)moreButton;
- (UIBarButtonItem)trashButton;
- (void)addButtonTouch:(id)a3;
- (void)moreButtonTouch:(id)a3;
- (void)removeButtonTouch:(id)a3;
- (void)updateActionBarFromMetrics:(id)a3;
- (void)updateForSelectedItems:(id)a3 deletableItems:(BOOL)a4 seriesItems:(BOOL)a5 editable:(BOOL)a6;
- (void)viewDidLoad;
@end

@implementation BKLibraryBookshelfSelectedActionBarViewController

- (void)viewDidLoad
{
  v28.receiver = self;
  v28.super_class = BKLibraryBookshelfSelectedActionBarViewController;
  [(BKLibraryBookshelfSelectedActionBarViewController *)&v28 viewDidLoad];
  v3 = +[NSBundle mainBundle];
  v4 = [v3 localizedStringForKey:@"Actions" value:&stru_100A30A68 table:0];
  v5 = [(BKLibraryBookshelfSelectedActionBarViewController *)self view];
  [v5 setAccessibilityLabel:v4];

  v6 = +[NSBundle mainBundle];
  v7 = [v6 localizedStringForKey:@"Delete" value:&stru_100A30A68 table:0];
  v8 = [(BKLibraryBookshelfSelectedActionBarViewController *)self trashButton];
  [v8 setAccessibilityLabel:v7];

  v9 = +[NSBundle mainBundle];
  v10 = [v9 localizedStringForKey:@"Share" value:&stru_100A30A68 table:0];
  v11 = [(BKLibraryBookshelfSelectedActionBarViewController *)self moreButton];
  [v11 setAccessibilityLabel:v10];

  v12 = [UIImageSymbolConfiguration configurationWithPointSize:5 weight:3 scale:17.0];
  v13 = [UIImage systemImageNamed:@"text.badge.plus"];
  v14 = [v13 imageWithConfiguration:v12];

  objc_opt_class();
  v15 = [(BKLibraryBookshelfSelectedActionBarViewController *)self addButton];
  v16 = [v15 customView];
  v17 = BUDynamicCast();

  [v17 setImage:v14 forState:0];
  v18 = [(BKLibraryBookshelfSelectedActionBarViewController *)self view];
  v19 = [v18 effectiveUserInterfaceLayoutDirection];

  v20 = 6.0;
  if (v19 == 1)
  {
    v21 = -6.0;
  }

  else
  {
    v21 = 6.0;
  }

  if (_UISolariumEnabled())
  {
    v20 = 18.0;
  }

  [v17 setImageEdgeInsets:{0.0, -v21, 0.0, v21}];
  [v17 setTitleEdgeInsets:{0.0, v21, 0.0, -v21}];
  [v17 setContentEdgeInsets:{0.0, v20, 0.0, v20}];
  v22 = [UIImage systemImageNamed:@"trash"];
  v23 = [v22 imageWithConfiguration:v12];

  v24 = [(BKLibraryBookshelfSelectedActionBarViewController *)self trashButton];
  [v24 setImage:v23];

  v25 = [UIImage systemImageNamed:@"square.and.arrow.up"];
  v26 = [v25 imageWithConfiguration:v12];

  v27 = [(BKLibraryBookshelfSelectedActionBarViewController *)self moreButton];
  [v27 setImage:v26];
}

- (void)removeButtonTouch:(id)a3
{
  v4 = [(BKLibraryBookshelfSelectedActionBarViewController *)self delegate];
  [v4 removeForSelectedItems:self];
}

- (void)moreButtonTouch:(id)a3
{
  v5 = [(BKLibraryBookshelfSelectedActionBarViewController *)self delegate];
  v4 = [(BKLibraryBookshelfSelectedActionBarViewController *)self moreButton];
  [v5 shareSelectedItemFromBarButtonItem:v4];
}

- (void)addButtonTouch:(id)a3
{
  v4 = [(BKLibraryBookshelfSelectedActionBarViewController *)self delegate];
  [v4 addForSelectedItems:self];
}

- (void)updateForSelectedItems:(id)a3 deletableItems:(BOOL)a4 seriesItems:(BOOL)a5 editable:(BOOL)a6
{
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1000C9FC0;
  v9[3] = &unk_100A03E80;
  v10 = a3;
  v11 = self;
  v12 = a4;
  v8 = v10;
  [UIView animateWithDuration:v9 animations:1.0];
}

- (void)updateActionBarFromMetrics:(id)a3
{
  v4 = a3;
  v7 = [(BKLibraryBookshelfSelectedActionBarViewController *)self toolbar];
  v5 = [v4 barTintColor];
  [v7 setBarTintColor:v5];

  v6 = [v4 tintColor];

  [v7 setTintColor:v6];
}

- (BKLibraryBookshelfSelectedActionBar)toolbar
{
  WeakRetained = objc_loadWeakRetained(&self->_toolbar);

  return WeakRetained;
}

- (BKLibraryBookshelfSelectedActionBarDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (UIBarButtonItem)trashButton
{
  WeakRetained = objc_loadWeakRetained(&self->_trashButton);

  return WeakRetained;
}

- (UIBarButtonItem)addButton
{
  WeakRetained = objc_loadWeakRetained(&self->_addButton);

  return WeakRetained;
}

- (UIBarButtonItem)moreButton
{
  WeakRetained = objc_loadWeakRetained(&self->_moreButton);

  return WeakRetained;
}

@end