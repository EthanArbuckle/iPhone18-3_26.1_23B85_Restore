@interface MapsDebugMenuRow
- (void)_setAccessoriesForCell:(id)cell;
- (void)configureCell:(id)cell;
- (void)configureCollectionViewCell:(id)cell;
- (void)setMenu:(id)menu;
@end

@implementation MapsDebugMenuRow

- (void)_setAccessoriesForCell:(id)cell
{
  cellCopy = cell;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = cellCopy;
    v6 = [UIButton buttonWithType:1];
    v7 = +[UIButtonConfiguration plainButtonConfiguration];
    v8 = [UIImage systemImageNamed:@"ellipsis.circle"];
    [v7 setImage:v8];

    [v6 setConfiguration:v7];
    [v6 setMenu:self->_menu];
    [v6 setShowsMenuAsPrimaryAction:1];
    [v6 sizeToFit];
    [v5 setAccessoryView:v6];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = cellCopy;
      objc_initWeak(&location, self);
      v10 = [[UICellAccessoryPopUpMenu alloc] initWithMenu:self->_menu];
      v13[0] = _NSConcreteStackBlock;
      v13[1] = 3221225472;
      v13[2] = sub_100A847D0;
      v13[3] = &unk_1016331C8;
      objc_copyWeak(&v15, &location);
      v11 = v9;
      v14 = v11;
      [v10 setSelectedElementDidChangeHandler:v13];
      v17 = v10;
      v12 = [NSArray arrayWithObjects:&v17 count:1];
      [v11 setAccessories:v12];

      objc_destroyWeak(&v15);
      objc_destroyWeak(&location);
    }
  }
}

- (void)setMenu:(id)menu
{
  menuCopy = menu;
  if (self->_menu != menuCopy)
  {
    v8 = menuCopy;
    objc_storeStrong(&self->_menu, menu);
    currentCollectionViewCell = [(MapsDebugTableRow *)self currentCollectionViewCell];
    if (currentCollectionViewCell)
    {
      [(MapsDebugMenuRow *)self _setAccessoriesForCell:currentCollectionViewCell];
    }

    else
    {
      currentCell = [(MapsDebugTableRow *)self currentCell];
      [(MapsDebugMenuRow *)self _setAccessoriesForCell:currentCell];
    }

    menuCopy = v8;
  }
}

- (void)configureCollectionViewCell:(id)cell
{
  cellCopy = cell;
  v17.receiver = self;
  v17.super_class = MapsDebugMenuRow;
  [(MapsDebugTableRow *)&v17 configureCollectionViewCell:cellCopy];
  v5 = cellCopy;
  configureCollectionViewCellBlock = [(MapsDebugTableRow *)self configureCollectionViewCellBlock];

  if (configureCollectionViewCellBlock)
  {
    objc_initWeak(&location, self);
    v11 = _NSConcreteStackBlock;
    v12 = 3221225472;
    v13 = sub_100A84A8C;
    v14 = &unk_1016331A0;
    objc_copyWeak(&v15, &location);
    [v5 setConfigurationUpdateHandler:&v11];
    objc_destroyWeak(&v15);
    objc_destroyWeak(&location);
  }

  else
  {
    selectedElements = [(UIMenu *)self->_menu selectedElements];
    firstObject = [selectedElements firstObject];
    title = [firstObject title];
    detailTextLabel = [v5 detailTextLabel];
    [detailTextLabel setText:title];
  }

  [(MapsDebugMenuRow *)self _setAccessoriesForCell:v5, v11, v12, v13, v14];
}

- (void)configureCell:(id)cell
{
  cellCopy = cell;
  v16.receiver = self;
  v16.super_class = MapsDebugMenuRow;
  [(MapsDebugTableRow *)&v16 configureCell:cellCopy];
  configureBlock = [(MapsDebugTableRow *)self configureBlock];

  if (configureBlock)
  {
    objc_initWeak(&location, self);
    v10 = _NSConcreteStackBlock;
    v11 = 3221225472;
    v12 = sub_100A84D6C;
    v13 = &unk_101633178;
    objc_copyWeak(&v14, &location);
    [cellCopy setConfigurationUpdateHandler:&v10];
    objc_destroyWeak(&v14);
    objc_destroyWeak(&location);
  }

  else
  {
    selectedElements = [(UIMenu *)self->_menu selectedElements];
    firstObject = [selectedElements firstObject];
    title = [firstObject title];
    detailTextLabel = [cellCopy detailTextLabel];
    [detailTextLabel setText:title];
  }

  [(MapsDebugMenuRow *)self _setAccessoriesForCell:cellCopy, v10, v11, v12, v13];
}

@end