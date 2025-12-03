@interface RAPTablePartSection
- (RAPPresentingViewController)presentingViewController;
- (RAPTablePart)partController;
- (RAPTablePartSection)init;
- (RAPTablePartsDataSource)dataSource;
- (UITableView)tableView;
- (double)headerHeight;
- (id)dequeueCellWithNamespacedReuseIdentifier:(id)identifier creationBlock:(id)block;
- (id)dequeueDefaultSingleLineTableViewCell;
- (id)dequeueSubtitleStyleCell;
- (id)namespacedReuseIdentifierWithSuffix:(id)suffix;
- (int64_t)sectionIndex;
- (void)_registerReuseIdentifiersIfNeeded;
- (void)_reloadHeaderFooterWithAnimation:(int64_t)animation;
- (void)holdChangesAffectingTableViewWithinBlock:(id)block;
- (void)registerClass:(Class)class forNamespacedReuseIdentifier:(id)identifier;
- (void)reloadWithRowAnimation:(int64_t)animation;
- (void)setFooterTitle:(id)title;
- (void)setFooterView:(id)view;
- (void)setHeaderTitle:(id)title;
- (void)setHeaderView:(id)view;
@end

@implementation RAPTablePartSection

- (RAPTablePart)partController
{
  WeakRetained = objc_loadWeakRetained(&self->_partController);

  return WeakRetained;
}

- (UITableView)tableView
{
  WeakRetained = objc_loadWeakRetained(&self->_tableView);

  return WeakRetained;
}

- (void)_reloadHeaderFooterWithAnimation:(int64_t)animation
{
  v5 = qword_10195CF78;
  tableView = [(RAPTablePartSection *)self tableView];
  LOBYTE(v5) = [v5 containsObject:tableView];

  if ((v5 & 1) == 0)
  {
    tableView2 = [(RAPTablePartSection *)self tableView];
    dataSource = [(RAPTablePartSection *)self dataSource];
    v8 = +[NSIndexSet indexSetWithIndex:](NSIndexSet, "indexSetWithIndex:", [dataSource indexOfSection:self]);
    [tableView2 _reloadSectionHeaderFooters:v8 withRowAnimation:animation];
  }
}

- (void)reloadWithRowAnimation:(int64_t)animation
{
  v5 = qword_10195CF78;
  tableView = [(RAPTablePartSection *)self tableView];
  LOBYTE(v5) = [v5 containsObject:tableView];

  if ((v5 & 1) == 0)
  {
    tableView2 = [(RAPTablePartSection *)self tableView];
    dataSource = [(RAPTablePartSection *)self dataSource];
    v8 = +[NSIndexSet indexSetWithIndex:](NSIndexSet, "indexSetWithIndex:", [dataSource indexOfSection:self]);
    [tableView2 reloadSections:v8 withRowAnimation:animation];
  }
}

- (void)setFooterTitle:(id)title
{
  if (self->_footerTitle != title)
  {
    v5 = [title copy];
    footerTitle = self->_footerTitle;
    self->_footerTitle = v5;

    [(RAPTablePartSection *)self _reloadHeaderFooterWithAnimation:5];
  }
}

- (void)setHeaderTitle:(id)title
{
  if (self->_headerTitle != title)
  {
    v5 = [title copy];
    headerTitle = self->_headerTitle;
    self->_headerTitle = v5;

    [(RAPTablePartSection *)self _reloadHeaderFooterWithAnimation:5];
  }
}

- (void)setFooterView:(id)view
{
  viewCopy = view;
  if (self->_footerView != viewCopy)
  {
    v6 = viewCopy;
    objc_storeStrong(&self->_footerView, view);
    [(RAPTablePartSection *)self didChange];
    viewCopy = v6;
  }
}

- (void)setHeaderView:(id)view
{
  viewCopy = view;
  if (self->_headerView != viewCopy)
  {
    v6 = viewCopy;
    objc_storeStrong(&self->_headerView, view);
    [(RAPTablePartSection *)self didChange];
    viewCopy = v6;
  }
}

- (double)headerHeight
{
  headerView = [(RAPTablePartSection *)self headerView];

  if (!headerView)
  {
    return UITableViewAutomaticDimension;
  }

  headerView2 = [(RAPTablePartSection *)self headerView];
  [headerView2 setNeedsLayout];

  headerView3 = [(RAPTablePartSection *)self headerView];
  [headerView3 layoutIfNeeded];

  headerView4 = [(RAPTablePartSection *)self headerView];
  [headerView4 systemLayoutSizeFittingSize:{UILayoutFittingCompressedSize.width, UILayoutFittingCompressedSize.height}];
  v8 = v7;

  return v8;
}

- (int64_t)sectionIndex
{
  dataSource = [(RAPTablePartSection *)self dataSource];
  v4 = [dataSource indexOfSection:self];

  return v4;
}

- (void)registerClass:(Class)class forNamespacedReuseIdentifier:(id)identifier
{
  identifierCopy = identifier;
  tableView = [(RAPTablePartSection *)self tableView];
  v7 = [(RAPTablePartSection *)self namespacedReuseIdentifierWithSuffix:identifierCopy];

  [tableView registerClass:class forCellReuseIdentifier:v7];
}

- (id)dequeueSubtitleStyleCell
{
  tableView = [(RAPTablePartSection *)self tableView];
  v3 = +[RAPTwoLinesMenuTableViewCell reuseIdentifier];
  v4 = [tableView dequeueReusableCellWithIdentifier:v3];

  if (!v4)
  {
    v5 = [RAPTwoLinesMenuTableViewCell alloc];
    v6 = +[RAPTwoLinesMenuTableViewCell reuseIdentifier];
    v4 = [(RAPTwoLinesMenuTableViewCell *)v5 initWithStyle:0 reuseIdentifier:v6];
  }

  return v4;
}

- (id)dequeueDefaultSingleLineTableViewCell
{
  tableView = [(RAPTablePartSection *)self tableView];
  v3 = +[RAPSingleLineTableViewCell reuseIdentifier];
  v4 = [tableView dequeueReusableCellWithIdentifier:v3];

  if (!v4)
  {
    v4 = objc_alloc_init(RAPSingleLineTableViewCell);
  }

  return v4;
}

- (id)dequeueCellWithNamespacedReuseIdentifier:(id)identifier creationBlock:(id)block
{
  blockCopy = block;
  v7 = [(RAPTablePartSection *)self namespacedReuseIdentifierWithSuffix:identifier];
  tableView = [(RAPTablePartSection *)self tableView];
  v9 = [tableView dequeueReusableCellWithIdentifier:v7];

  if (blockCopy && !v9)
  {
    v9 = blockCopy[2](blockCopy, v7);
  }

  return v9;
}

- (id)namespacedReuseIdentifierWithSuffix:(id)suffix
{
  suffixCopy = suffix;
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  suffixCopy = [v5 stringByAppendingFormat:@"__%@", suffixCopy];

  return suffixCopy;
}

- (void)_registerReuseIdentifiersIfNeeded
{
  WeakRetained = objc_loadWeakRetained(&self->_tableView);
  v3 = objc_loadWeakRetained(&self->_partController);
  tableView = [v3 tableView];

  if (WeakRetained != tableView && tableView != 0)
  {
    objc_storeWeak(&self->_tableView, tableView);
    [(RAPTablePartSection *)self registerReuseIdentifiersForCells];
  }
}

- (void)holdChangesAffectingTableViewWithinBlock:(id)block
{
  blockCopy = block;
  partController = [(RAPTablePartSection *)self partController];
  [partController holdChangesAffectingTableViewWithinBlock:blockCopy];
}

- (RAPPresentingViewController)presentingViewController
{
  partController = [(RAPTablePartSection *)self partController];
  presentingViewController = [partController presentingViewController];

  return presentingViewController;
}

- (RAPTablePartsDataSource)dataSource
{
  partController = [(RAPTablePartSection *)self partController];
  dataSource = [partController dataSource];

  return dataSource;
}

- (RAPTablePartSection)init
{
  v3.receiver = self;
  v3.super_class = RAPTablePartSection;
  return [(RAPTablePartSection *)&v3 init];
}

@end