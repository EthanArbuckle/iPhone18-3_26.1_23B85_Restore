@interface UITableView
- (BOOL)_maps_shouldShowTopHairline;
- (CGSize)_maps_contentSize;
- (id)_maps_footerViewWithTitle:(id)a3 linkText:(id)a4 target:(id)a5 selector:(SEL)a6;
- (id)_maps_groupedHeaderViewWithTitle:(id)a3;
- (id)_maps_groupedHeaderViewWithTitle:(id)a3 buttonTitle:(id)a4 target:(id)a5 selector:(SEL)a6;
- (int64_t)_maps_indexOfFirstNonEmptySection;
- (void)_maps_commitUpdates;
- (void)_maps_initializeRAPAppearance;
- (void)_maps_initializeRAPAppearanceWithStyle:(int64_t)a3;
- (void)_maps_registerGroupedHeaderView;
- (void)_maps_registerSelectableFooterView;
- (void)_maps_reloadCellHeights;
@end

@implementation UITableView

- (void)_maps_reloadCellHeights
{
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_1005E9FE4;
  v2[3] = &unk_101661B18;
  v2[4] = self;
  [UIView performWithoutAnimation:v2];
}

- (void)_maps_initializeRAPAppearanceWithStyle:(int64_t)a3
{
  [(UITableView *)self _maps_registerGroupedHeaderView];
  if (a3 == 2)
  {
    v5 = +[UIColor systemBackgroundColor];
  }

  else
  {
    if (a3)
    {
      return;
    }

    v5 = [UIColor colorNamed:@"RAPGroupedTableViewBackgroundColor"];
  }

  v6 = v5;
  [(UITableView *)self setBackgroundColor:v5];
}

- (void)_maps_initializeRAPAppearance
{
  v3 = +[UIDevice currentDevice];
  v4 = [v3 userInterfaceIdiom] == 5;

  [(UITableView *)self _maps_initializeRAPAppearanceWithStyle:v4];
}

- (id)_maps_footerViewWithTitle:(id)a3 linkText:(id)a4 target:(id)a5 selector:(SEL)a6
{
  v9 = a5;
  v10 = a4;
  v11 = a3;
  v12 = objc_alloc_init(TableViewFooterOptions);
  [(TableViewFooterOptions *)v12 setLabelText:v11];

  [(TableViewFooterOptions *)v12 setLinkText:v10];
  v13 = [[TableViewSelectableFooterView alloc] initWithReuseIdentifier:@"_maps_selectableFooterReuseIdentifier" options:v12];
  [(TableViewSelectableFooterView *)v13 setTarget:v9 action:a6];

  return v13;
}

- (id)_maps_groupedHeaderViewWithTitle:(id)a3 buttonTitle:(id)a4 target:(id)a5 selector:(SEL)a6
{
  v10 = a5;
  v11 = a4;
  v12 = a3;
  v13 = [(UITableView *)self dequeueReusableHeaderFooterViewWithIdentifier:@"_maps_groupedHeaderButtonReuseIdentifier"];
  v14 = [v13 titleLabel];
  [v14 setText:v12];

  v15 = +[UIFont system17];
  v16 = [v13 titleLabel];
  [v16 setFont:v15];

  v17 = [v13 button];
  [v17 setTitle:v11 forState:0];

  v18 = [v13 button];
  [v18 addTarget:v10 action:a6 forControlEvents:64];

  return v13;
}

- (id)_maps_groupedHeaderViewWithTitle:(id)a3
{
  v4 = a3;
  if ([v4 length])
  {
    v5 = [(UITableView *)self dequeueReusableHeaderFooterViewWithIdentifier:@"_maps_groupedHeaderReuseIdentifier"];
    v6 = [v5 titleLabel];
    [v6 setText:v4];

    v7 = +[UIFont system17];
    v8 = [v5 titleLabel];
    [v8 setFont:v7];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)_maps_registerSelectableFooterView
{
  v3 = objc_opt_class();

  [(UITableView *)self registerClass:v3 forHeaderFooterViewReuseIdentifier:@"_maps_selectableFooterReuseIdentifier"];
}

- (void)_maps_registerGroupedHeaderView
{
  [(UITableView *)self registerClass:objc_opt_class() forHeaderFooterViewReuseIdentifier:@"_maps_groupedHeaderReuseIdentifier"];
  v3 = objc_opt_class();

  [(UITableView *)self registerClass:v3 forHeaderFooterViewReuseIdentifier:@"_maps_groupedHeaderButtonReuseIdentifier"];
}

- (BOOL)_maps_shouldShowTopHairline
{
  if ([(UITableView *)self style]== 2)
  {
    [(UITableView *)self contentOffset];
    v4 = v3;
    [(UITableView *)self contentInset];
    return v4 > v5;
  }

  else
  {
    v7 = [(UITableView *)self _maps_indexOfFirstNonEmptySection];
    v8 = [(UITableView *)self numberOfSections];
    result = 0;
    if (v7 != 0x7FFFFFFFFFFFFFFFLL && v7 < v8)
    {
      [(UITableView *)self rectForHeaderInSection:v7];
      if (v12 == 0.0)
      {
        return 1;
      }

      else
      {
        v13 = v9;
        v14 = v10;
        v15 = v11;
        v16 = v12;
        [(UITableView *)self contentOffset];
        UIRoundToViewScale();
        v18 = v17;
        v20.origin.x = v13;
        v20.origin.y = v14;
        v20.size.width = v15;
        v20.size.height = v16;
        CGRectGetMaxY(v20);
        UIRoundToViewScale();
        return v18 >= v19;
      }
    }
  }

  return result;
}

- (int64_t)_maps_indexOfFirstNonEmptySection
{
  v3 = [(UITableView *)self dataSource];
  v4 = [v3 numberOfSectionsInTableView:self];

  v5 = 0x7FFFFFFFFFFFFFFFLL;
  if (v4 == [(UITableView *)self numberOfSections]&& v4 >= 1)
  {
    v5 = 0;
    while (1)
    {
      v6 = [(UITableView *)self dataSource];
      v7 = [v6 tableView:self numberOfRowsInSection:v5];

      if (v7)
      {
        break;
      }

      if (v4 == ++v5)
      {
        return 0x7FFFFFFFFFFFFFFFLL;
      }
    }
  }

  return v5;
}

- (void)_maps_commitUpdates
{
  [(UITableView *)self beginUpdates];

  [(UITableView *)self endUpdates];
}

- (CGSize)_maps_contentSize
{
  [(UITableView *)self _contentSize];
  result.height = v3;
  result.width = v2;
  return result;
}

@end