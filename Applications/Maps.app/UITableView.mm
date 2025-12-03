@interface UITableView
- (BOOL)_maps_shouldShowTopHairline;
- (CGSize)_maps_contentSize;
- (id)_maps_footerViewWithTitle:(id)title linkText:(id)text target:(id)target selector:(SEL)selector;
- (id)_maps_groupedHeaderViewWithTitle:(id)title;
- (id)_maps_groupedHeaderViewWithTitle:(id)title buttonTitle:(id)buttonTitle target:(id)target selector:(SEL)selector;
- (int64_t)_maps_indexOfFirstNonEmptySection;
- (void)_maps_commitUpdates;
- (void)_maps_initializeRAPAppearance;
- (void)_maps_initializeRAPAppearanceWithStyle:(int64_t)style;
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

- (void)_maps_initializeRAPAppearanceWithStyle:(int64_t)style
{
  [(UITableView *)self _maps_registerGroupedHeaderView];
  if (style == 2)
  {
    v5 = +[UIColor systemBackgroundColor];
  }

  else
  {
    if (style)
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

- (id)_maps_footerViewWithTitle:(id)title linkText:(id)text target:(id)target selector:(SEL)selector
{
  targetCopy = target;
  textCopy = text;
  titleCopy = title;
  v12 = objc_alloc_init(TableViewFooterOptions);
  [(TableViewFooterOptions *)v12 setLabelText:titleCopy];

  [(TableViewFooterOptions *)v12 setLinkText:textCopy];
  v13 = [[TableViewSelectableFooterView alloc] initWithReuseIdentifier:@"_maps_selectableFooterReuseIdentifier" options:v12];
  [(TableViewSelectableFooterView *)v13 setTarget:targetCopy action:selector];

  return v13;
}

- (id)_maps_groupedHeaderViewWithTitle:(id)title buttonTitle:(id)buttonTitle target:(id)target selector:(SEL)selector
{
  targetCopy = target;
  buttonTitleCopy = buttonTitle;
  titleCopy = title;
  v13 = [(UITableView *)self dequeueReusableHeaderFooterViewWithIdentifier:@"_maps_groupedHeaderButtonReuseIdentifier"];
  titleLabel = [v13 titleLabel];
  [titleLabel setText:titleCopy];

  v15 = +[UIFont system17];
  titleLabel2 = [v13 titleLabel];
  [titleLabel2 setFont:v15];

  button = [v13 button];
  [button setTitle:buttonTitleCopy forState:0];

  button2 = [v13 button];
  [button2 addTarget:targetCopy action:selector forControlEvents:64];

  return v13;
}

- (id)_maps_groupedHeaderViewWithTitle:(id)title
{
  titleCopy = title;
  if ([titleCopy length])
  {
    v5 = [(UITableView *)self dequeueReusableHeaderFooterViewWithIdentifier:@"_maps_groupedHeaderReuseIdentifier"];
    titleLabel = [v5 titleLabel];
    [titleLabel setText:titleCopy];

    v7 = +[UIFont system17];
    titleLabel2 = [v5 titleLabel];
    [titleLabel2 setFont:v7];
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
    _maps_indexOfFirstNonEmptySection = [(UITableView *)self _maps_indexOfFirstNonEmptySection];
    numberOfSections = [(UITableView *)self numberOfSections];
    result = 0;
    if (_maps_indexOfFirstNonEmptySection != 0x7FFFFFFFFFFFFFFFLL && _maps_indexOfFirstNonEmptySection < numberOfSections)
    {
      [(UITableView *)self rectForHeaderInSection:_maps_indexOfFirstNonEmptySection];
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
  dataSource = [(UITableView *)self dataSource];
  v4 = [dataSource numberOfSectionsInTableView:self];

  v5 = 0x7FFFFFFFFFFFFFFFLL;
  if (v4 == [(UITableView *)self numberOfSections]&& v4 >= 1)
  {
    v5 = 0;
    while (1)
    {
      dataSource2 = [(UITableView *)self dataSource];
      v7 = [dataSource2 tableView:self numberOfRowsInSection:v5];

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