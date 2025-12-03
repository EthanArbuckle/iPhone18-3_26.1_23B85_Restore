@interface MapsDebugNavigationTableRow
- (MapsDebugNavigationTableRow)init;
- (id)cellContentConfiguration;
- (id)description;
- (id)makeViewControllerToPresent;
- (id)present;
- (void)configureCell:(id)cell;
- (void)configureCollectionViewCell:(id)cell;
- (void)setViewControllerClass:(Class)class;
@end

@implementation MapsDebugNavigationTableRow

- (id)makeViewControllerToPresent
{
  prepareContentBlock = [(MapsDebugTableRow *)self prepareContentBlock];

  if (prepareContentBlock)
  {
    v4 = objc_alloc_init(MapsDebugValuesViewController);
    title = [(MapsDebugTableRow *)self title];
    [(MapsDebugValuesViewController *)v4 setTitle:title];

    [(MapsDebugValuesViewController *)v4 setOriginNavigationRow:self];
    prepareContentBlock2 = [(MapsDebugTableRow *)self prepareContentBlock];
    [(MapsDebugValuesViewController *)v4 setPrepareContentBlock:prepareContentBlock2];
  }

  else if ([(MapsDebugNavigationTableRow *)self viewControllerClass])
  {
    v4 = objc_alloc_init([(MapsDebugNavigationTableRow *)self viewControllerClass]);
    title2 = [(MapsDebugTableRow *)self title];
    [(MapsDebugValuesViewController *)v4 setTitle:title2];

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
  makeViewControllerToPresent = [(MapsDebugNavigationTableRow *)self makeViewControllerToPresent];
  if (makeViewControllerToPresent)
  {
    section = [(MapsDebugTableRow *)self section];
    displayingViewController = [section displayingViewController];

    [displayingViewController segueToViewController:makeViewControllerToPresent];
    v6 = makeViewControllerToPresent;
  }

  return makeViewControllerToPresent;
}

- (void)setViewControllerClass:(Class)class
{
  if (self->_viewControllerClass != class)
  {
    self->_viewControllerClass = class;
    navigationDestinationTitle = [(objc_class *)class navigationDestinationTitle];
    [(MapsDebugTableRow *)self setTitle:navigationDestinationTitle];
  }
}

- (id)description
{
  v3 = objc_opt_class();
  title = [(MapsDebugTableRow *)self title];
  v5 = [NSString stringWithFormat:@"<%@: %p title:%@>", v3, self, title];

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

- (void)configureCollectionViewCell:(id)cell
{
  cellCopy = cell;
  v13.receiver = self;
  v13.super_class = MapsDebugNavigationTableRow;
  [(MapsDebugTableRow *)&v13 configureCollectionViewCell:cellCopy];
  v5 = cellCopy;
  contentConfiguration = [v5 contentConfiguration];
  selectionAction = [(MapsDebugTableRow *)self selectionAction];
  if (selectionAction)
  {
    +[UIColor labelColor];
  }

  else
  {
    +[UIColor secondaryLabelColor];
  }
  v8 = ;

  if (contentConfiguration)
  {
    textProperties = [contentConfiguration textProperties];
    [textProperties setColor:v8];

    [contentConfiguration setPrefersSideBySideTextAndSecondaryText:1];
  }

  else
  {
    textLabel = [v5 textLabel];
    [textLabel setTextColor:v8];
  }

  [v5 setContentConfiguration:contentConfiguration];
  v11 = objc_alloc_init(UICellAccessoryDisclosureIndicator);
  v14 = v11;
  v12 = [NSArray arrayWithObjects:&v14 count:1];
  [v5 setAccessories:v12];
}

- (void)configureCell:(id)cell
{
  cellCopy = cell;
  v9.receiver = self;
  v9.super_class = MapsDebugNavigationTableRow;
  [(MapsDebugTableRow *)&v9 configureCell:cellCopy];
  [cellCopy setAccessoryType:1];
  contentConfiguration = [cellCopy contentConfiguration];
  selectionAction = [(MapsDebugTableRow *)self selectionAction];
  if (selectionAction)
  {
    +[UIColor labelColor];
  }

  else
  {
    +[UIColor secondaryLabelColor];
  }
  v7 = ;
  textProperties = [contentConfiguration textProperties];
  [textProperties setColor:v7];

  [cellCopy setContentConfiguration:contentConfiguration];
}

- (id)cellContentConfiguration
{
  subtitle = [(MapsDebugTableRow *)self subtitle];
  if ([subtitle length])
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