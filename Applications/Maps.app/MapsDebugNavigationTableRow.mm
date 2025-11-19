@interface MapsDebugNavigationTableRow
- (MapsDebugNavigationTableRow)init;
- (id)cellContentConfiguration;
- (id)description;
- (id)makeViewControllerToPresent;
- (id)present;
- (void)configureCell:(id)a3;
- (void)configureCollectionViewCell:(id)a3;
- (void)setViewControllerClass:(Class)a3;
@end

@implementation MapsDebugNavigationTableRow

- (id)makeViewControllerToPresent
{
  v3 = [(MapsDebugTableRow *)self prepareContentBlock];

  if (v3)
  {
    v4 = objc_alloc_init(MapsDebugValuesViewController);
    v5 = [(MapsDebugTableRow *)self title];
    [(MapsDebugValuesViewController *)v4 setTitle:v5];

    [(MapsDebugValuesViewController *)v4 setOriginNavigationRow:self];
    v6 = [(MapsDebugTableRow *)self prepareContentBlock];
    [(MapsDebugValuesViewController *)v4 setPrepareContentBlock:v6];
  }

  else if ([(MapsDebugNavigationTableRow *)self viewControllerClass])
  {
    v4 = objc_alloc_init([(MapsDebugNavigationTableRow *)self viewControllerClass]);
    v7 = [(MapsDebugTableRow *)self title];
    [(MapsDebugValuesViewController *)v4 setTitle:v7];

    [(MapsDebugValuesViewController *)v4 setOriginNavigationRow:self];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)present
{
  v3 = [(MapsDebugNavigationTableRow *)self makeViewControllerToPresent];
  if (v3)
  {
    v4 = [(MapsDebugTableRow *)self section];
    v5 = [v4 displayingViewController];

    [v5 segueToViewController:v3];
    v6 = v3;
  }

  return v3;
}

- (void)setViewControllerClass:(Class)a3
{
  if (self->_viewControllerClass != a3)
  {
    self->_viewControllerClass = a3;
    v5 = [(objc_class *)a3 navigationDestinationTitle];
    [(MapsDebugTableRow *)self setTitle:v5];
  }
}

- (id)description
{
  v3 = objc_opt_class();
  v4 = [(MapsDebugTableRow *)self title];
  v5 = [NSString stringWithFormat:@"<%@: %p title:%@>", v3, self, v4];

  return v5;
}

- (MapsDebugNavigationTableRow)init
{
  v7.receiver = self;
  v7.super_class = MapsDebugNavigationTableRow;
  v2 = [(MapsDebugTableRow *)&v7 init];
  if (v2)
  {
    objc_initWeak(&location, v2);
    v4[0] = _NSConcreteStackBlock;
    v4[1] = 3221225472;
    v4[2] = sub_1009DD1B8;
    v4[3] = &unk_101661B98;
    objc_copyWeak(&v5, &location);
    [(MapsDebugTableRow *)v2 setSelectionAction:v4];
    objc_destroyWeak(&v5);
    objc_destroyWeak(&location);
  }

  return v2;
}

- (void)configureCollectionViewCell:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = MapsDebugNavigationTableRow;
  [(MapsDebugTableRow *)&v13 configureCollectionViewCell:v4];
  v5 = v4;
  v6 = [v5 contentConfiguration];
  v7 = [(MapsDebugTableRow *)self selectionAction];
  if (v7)
  {
    +[UIColor labelColor];
  }

  else
  {
    +[UIColor secondaryLabelColor];
  }
  v8 = ;

  if (v6)
  {
    v9 = [v6 textProperties];
    [v9 setColor:v8];

    [v6 setPrefersSideBySideTextAndSecondaryText:1];
  }

  else
  {
    v10 = [v5 textLabel];
    [v10 setTextColor:v8];
  }

  [v5 setContentConfiguration:v6];
  v11 = objc_alloc_init(UICellAccessoryDisclosureIndicator);
  v14 = v11;
  v12 = [NSArray arrayWithObjects:&v14 count:1];
  [v5 setAccessories:v12];
}

- (void)configureCell:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = MapsDebugNavigationTableRow;
  [(MapsDebugTableRow *)&v9 configureCell:v4];
  [v4 setAccessoryType:1];
  v5 = [v4 contentConfiguration];
  v6 = [(MapsDebugTableRow *)self selectionAction];
  if (v6)
  {
    +[UIColor labelColor];
  }

  else
  {
    +[UIColor secondaryLabelColor];
  }
  v7 = ;
  v8 = [v5 textProperties];
  [v8 setColor:v7];

  [v4 setContentConfiguration:v5];
}

- (id)cellContentConfiguration
{
  v2 = [(MapsDebugTableRow *)self subtitle];
  if ([v2 length])
  {
    +[UIListContentConfiguration valueCellConfiguration];
  }

  else
  {
    +[UIListContentConfiguration cellConfiguration];
  }
  v3 = ;

  return v3;
}

@end