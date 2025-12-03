@interface BKLibraryBookshelfSelectedActionBarViewController
- (BKLibraryBookshelfSelectedActionBar)toolbar;
- (BKLibraryBookshelfSelectedActionBarDelegate)delegate;
- (UIBarButtonItem)addButton;
- (UIBarButtonItem)moreButton;
- (UIBarButtonItem)trashButton;
- (void)addButtonTouch:(id)touch;
- (void)moreButtonTouch:(id)touch;
- (void)removeButtonTouch:(id)touch;
- (void)updateActionBarFromMetrics:(id)metrics;
- (void)updateForSelectedItems:(id)items deletableItems:(BOOL)deletableItems seriesItems:(BOOL)seriesItems editable:(BOOL)editable;
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
  view = [(BKLibraryBookshelfSelectedActionBarViewController *)self view];
  [view setAccessibilityLabel:v4];

  v6 = +[NSBundle mainBundle];
  v7 = [v6 localizedStringForKey:@"Delete" value:&stru_100A30A68 table:0];
  trashButton = [(BKLibraryBookshelfSelectedActionBarViewController *)self trashButton];
  [trashButton setAccessibilityLabel:v7];

  v9 = +[NSBundle mainBundle];
  v10 = [v9 localizedStringForKey:@"Share" value:&stru_100A30A68 table:0];
  moreButton = [(BKLibraryBookshelfSelectedActionBarViewController *)self moreButton];
  [moreButton setAccessibilityLabel:v10];

  v12 = [UIImageSymbolConfiguration configurationWithPointSize:5 weight:3 scale:17.0];
  v13 = [UIImage systemImageNamed:@"text.badge.plus"];
  v14 = [v13 imageWithConfiguration:v12];

  objc_opt_class();
  addButton = [(BKLibraryBookshelfSelectedActionBarViewController *)self addButton];
  customView = [addButton customView];
  v17 = BUDynamicCast();

  [v17 setImage:v14 forState:0];
  view2 = [(BKLibraryBookshelfSelectedActionBarViewController *)self view];
  effectiveUserInterfaceLayoutDirection = [view2 effectiveUserInterfaceLayoutDirection];

  v20 = 6.0;
  if (effectiveUserInterfaceLayoutDirection == 1)
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

  trashButton2 = [(BKLibraryBookshelfSelectedActionBarViewController *)self trashButton];
  [trashButton2 setImage:v23];

  v25 = [UIImage systemImageNamed:@"square.and.arrow.up"];
  v26 = [v25 imageWithConfiguration:v12];

  moreButton2 = [(BKLibraryBookshelfSelectedActionBarViewController *)self moreButton];
  [moreButton2 setImage:v26];
}

- (void)removeButtonTouch:(id)touch
{
  delegate = [(BKLibraryBookshelfSelectedActionBarViewController *)self delegate];
  [delegate removeForSelectedItems:self];
}

- (void)moreButtonTouch:(id)touch
{
  delegate = [(BKLibraryBookshelfSelectedActionBarViewController *)self delegate];
  moreButton = [(BKLibraryBookshelfSelectedActionBarViewController *)self moreButton];
  [delegate shareSelectedItemFromBarButtonItem:moreButton];
}

- (void)addButtonTouch:(id)touch
{
  delegate = [(BKLibraryBookshelfSelectedActionBarViewController *)self delegate];
  [delegate addForSelectedItems:self];
}

- (void)updateForSelectedItems:(id)items deletableItems:(BOOL)deletableItems seriesItems:(BOOL)seriesItems editable:(BOOL)editable
{
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1000C9FC0;
  v9[3] = &unk_100A03E80;
  itemsCopy = items;
  selfCopy = self;
  deletableItemsCopy = deletableItems;
  v8 = itemsCopy;
  [UIView animateWithDuration:v9 animations:1.0];
}

- (void)updateActionBarFromMetrics:(id)metrics
{
  metricsCopy = metrics;
  toolbar = [(BKLibraryBookshelfSelectedActionBarViewController *)self toolbar];
  barTintColor = [metricsCopy barTintColor];
  [toolbar setBarTintColor:barTintColor];

  tintColor = [metricsCopy tintColor];

  [toolbar setTintColor:tintColor];
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