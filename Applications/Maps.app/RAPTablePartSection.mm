@interface RAPTablePartSection
- (RAPPresentingViewController)presentingViewController;
- (RAPTablePart)partController;
- (RAPTablePartSection)init;
- (RAPTablePartsDataSource)dataSource;
- (UITableView)tableView;
- (double)headerHeight;
- (id)dequeueCellWithNamespacedReuseIdentifier:(id)a3 creationBlock:(id)a4;
- (id)dequeueDefaultSingleLineTableViewCell;
- (id)dequeueSubtitleStyleCell;
- (id)namespacedReuseIdentifierWithSuffix:(id)a3;
- (int64_t)sectionIndex;
- (void)_registerReuseIdentifiersIfNeeded;
- (void)_reloadHeaderFooterWithAnimation:(int64_t)a3;
- (void)holdChangesAffectingTableViewWithinBlock:(id)a3;
- (void)registerClass:(Class)a3 forNamespacedReuseIdentifier:(id)a4;
- (void)reloadWithRowAnimation:(int64_t)a3;
- (void)setFooterTitle:(id)a3;
- (void)setFooterView:(id)a3;
- (void)setHeaderTitle:(id)a3;
- (void)setHeaderView:(id)a3;
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

- (void)_reloadHeaderFooterWithAnimation:(int64_t)a3
{
  v5 = qword_10195CF78;
  v6 = [(RAPTablePartSection *)self tableView];
  LOBYTE(v5) = [v5 containsObject:v6];

  if ((v5 & 1) == 0)
  {
    v9 = [(RAPTablePartSection *)self tableView];
    v7 = [(RAPTablePartSection *)self dataSource];
    v8 = +[NSIndexSet indexSetWithIndex:](NSIndexSet, "indexSetWithIndex:", [v7 indexOfSection:self]);
    [v9 _reloadSectionHeaderFooters:v8 withRowAnimation:a3];
  }
}

- (void)reloadWithRowAnimation:(int64_t)a3
{
  v5 = qword_10195CF78;
  v6 = [(RAPTablePartSection *)self tableView];
  LOBYTE(v5) = [v5 containsObject:v6];

  if ((v5 & 1) == 0)
  {
    v9 = [(RAPTablePartSection *)self tableView];
    v7 = [(RAPTablePartSection *)self dataSource];
    v8 = +[NSIndexSet indexSetWithIndex:](NSIndexSet, "indexSetWithIndex:", [v7 indexOfSection:self]);
    [v9 reloadSections:v8 withRowAnimation:a3];
  }
}

- (void)setFooterTitle:(id)a3
{
  if (self->_footerTitle != a3)
  {
    v5 = [a3 copy];
    footerTitle = self->_footerTitle;
    self->_footerTitle = v5;

    [(RAPTablePartSection *)self _reloadHeaderFooterWithAnimation:5];
  }
}

- (void)setHeaderTitle:(id)a3
{
  if (self->_headerTitle != a3)
  {
    v5 = [a3 copy];
    headerTitle = self->_headerTitle;
    self->_headerTitle = v5;

    [(RAPTablePartSection *)self _reloadHeaderFooterWithAnimation:5];
  }
}

- (void)setFooterView:(id)a3
{
  v5 = a3;
  if (self->_footerView != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_footerView, a3);
    [(RAPTablePartSection *)self didChange];
    v5 = v6;
  }
}

- (void)setHeaderView:(id)a3
{
  v5 = a3;
  if (self->_headerView != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_headerView, a3);
    [(RAPTablePartSection *)self didChange];
    v5 = v6;
  }
}

- (double)headerHeight
{
  v3 = [(RAPTablePartSection *)self headerView];

  if (!v3)
  {
    return UITableViewAutomaticDimension;
  }

  v4 = [(RAPTablePartSection *)self headerView];
  [v4 setNeedsLayout];

  v5 = [(RAPTablePartSection *)self headerView];
  [v5 layoutIfNeeded];

  v6 = [(RAPTablePartSection *)self headerView];
  [v6 systemLayoutSizeFittingSize:{UILayoutFittingCompressedSize.width, UILayoutFittingCompressedSize.height}];
  v8 = v7;

  return v8;
}

- (int64_t)sectionIndex
{
  v3 = [(RAPTablePartSection *)self dataSource];
  v4 = [v3 indexOfSection:self];

  return v4;
}

- (void)registerClass:(Class)a3 forNamespacedReuseIdentifier:(id)a4
{
  v6 = a4;
  v8 = [(RAPTablePartSection *)self tableView];
  v7 = [(RAPTablePartSection *)self namespacedReuseIdentifierWithSuffix:v6];

  [v8 registerClass:a3 forCellReuseIdentifier:v7];
}

- (id)dequeueSubtitleStyleCell
{
  v2 = [(RAPTablePartSection *)self tableView];
  v3 = +[RAPTwoLinesMenuTableViewCell reuseIdentifier];
  v4 = [v2 dequeueReusableCellWithIdentifier:v3];

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
  v2 = [(RAPTablePartSection *)self tableView];
  v3 = +[RAPSingleLineTableViewCell reuseIdentifier];
  v4 = [v2 dequeueReusableCellWithIdentifier:v3];

  if (!v4)
  {
    v4 = objc_alloc_init(RAPSingleLineTableViewCell);
  }

  return v4;
}

- (id)dequeueCellWithNamespacedReuseIdentifier:(id)a3 creationBlock:(id)a4
{
  v6 = a4;
  v7 = [(RAPTablePartSection *)self namespacedReuseIdentifierWithSuffix:a3];
  v8 = [(RAPTablePartSection *)self tableView];
  v9 = [v8 dequeueReusableCellWithIdentifier:v7];

  if (v6 && !v9)
  {
    v9 = v6[2](v6, v7);
  }

  return v9;
}

- (id)namespacedReuseIdentifierWithSuffix:(id)a3
{
  v3 = a3;
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v5 stringByAppendingFormat:@"__%@", v3];

  return v6;
}

- (void)_registerReuseIdentifiersIfNeeded
{
  WeakRetained = objc_loadWeakRetained(&self->_tableView);
  v3 = objc_loadWeakRetained(&self->_partController);
  v4 = [v3 tableView];

  if (WeakRetained != v4 && v4 != 0)
  {
    objc_storeWeak(&self->_tableView, v4);
    [(RAPTablePartSection *)self registerReuseIdentifiersForCells];
  }
}

- (void)holdChangesAffectingTableViewWithinBlock:(id)a3
{
  v4 = a3;
  v5 = [(RAPTablePartSection *)self partController];
  [v5 holdChangesAffectingTableViewWithinBlock:v4];
}

- (RAPPresentingViewController)presentingViewController
{
  v2 = [(RAPTablePartSection *)self partController];
  v3 = [v2 presentingViewController];

  return v3;
}

- (RAPTablePartsDataSource)dataSource
{
  v2 = [(RAPTablePartSection *)self partController];
  v3 = [v2 dataSource];

  return v3;
}

- (RAPTablePartSection)init
{
  v3.receiver = self;
  v3.super_class = RAPTablePartSection;
  return [(RAPTablePartSection *)&v3 init];
}

@end