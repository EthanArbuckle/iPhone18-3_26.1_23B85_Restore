@interface MapsDebugTableRow
+ (void)registerCellsInCollectionView:(id)view;
- (MapsDebugTableRow)init;
- (MapsDebugTableSection)section;
- (UIListContentConfiguration)cellContentConfiguration;
- (id)cellForCollectionView:(id)view forIndexPath:(id)path;
- (id)cellForTableView:(id)view;
- (int64_t)cellStyle;
- (void)_clearAllControlTargetsForReuse;
- (void)addControlThatNeedsClearingTargetOnReuse:(id)reuse;
- (void)configureCell:(id)cell;
- (void)configureCollectionViewCell:(id)cell;
- (void)dealloc;
- (void)invalidate;
- (void)setCurrentCell:(id)cell;
@end

@implementation MapsDebugTableRow

- (MapsDebugTableSection)section
{
  WeakRetained = objc_loadWeakRetained(&self->_section);

  return WeakRetained;
}

- (void)configureCollectionViewCell:(id)cell
{
  cellCopy = cell;
  configureCollectionViewCellBlock = [(MapsDebugTableRow *)self configureCollectionViewCellBlock];

  if (configureCollectionViewCellBlock)
  {
    cellContentConfiguration = [(MapsDebugTableRow *)self cellContentConfiguration];
    title = [(MapsDebugTableRow *)self title];
    [cellContentConfiguration setText:title];

    subtitle = [(MapsDebugTableRow *)self subtitle];
    [cellContentConfiguration setSecondaryText:subtitle];

    configureCollectionViewCellBlock2 = [(MapsDebugTableRow *)self configureCollectionViewCellBlock];
    (configureCollectionViewCellBlock2)[2](configureCollectionViewCellBlock2, cellCopy, cellContentConfiguration);

    [cellCopy setContentConfiguration:cellContentConfiguration];
    contentView = [cellCopy contentView];
    [contentView setAccessibilityIdentifier:@"TextLabel"];

    title2 = [(MapsDebugTableRow *)self title];
    contentView2 = [cellCopy contentView];
    [contentView2 setAccessibilityLabel:title2];
  }

  else
  {
    contentConfiguration = [cellCopy contentConfiguration];

    if (contentConfiguration)
    {
      [cellCopy setContentConfiguration:0];
      [cellCopy setupContentView];
    }

    title3 = [(MapsDebugTableRow *)self title];
    textLabel = [cellCopy textLabel];
    [textLabel setText:title3];

    LODWORD(textLabel) = [(MapsDebugTableRow *)self deprecated];
    subtitle2 = [(MapsDebugTableRow *)self subtitle];
    v16 = subtitle2;
    if (textLabel)
    {
      v17 = [subtitle2 length];

      if (v17)
      {
        subtitle3 = [(MapsDebugTableRow *)self subtitle];
        v19 = [subtitle3 stringByAppendingString:@" - DEPRECATED (SOON TO BE REMOVED)"];
        detailTextLabel = [cellCopy detailTextLabel];
        [detailTextLabel setText:v19];
      }

      else
      {
        subtitle3 = [cellCopy detailTextLabel];
        [subtitle3 setText:@"DEPRECATED (SOON TO BE REMOVED)"];
      }

      v22 = +[UIColor systemRedColor];
    }

    else
    {
      detailTextLabel2 = [cellCopy detailTextLabel];
      [detailTextLabel2 setText:v16];

      v22 = +[UIColor labelColor];
    }

    v23 = v22;
    detailTextLabel3 = [cellCopy detailTextLabel];
    [detailTextLabel3 setTextColor:v23];

    cellContentConfiguration = [cellCopy textLabel];
    [cellContentConfiguration setAdjustsFontSizeToFitWidth:1];
  }
}

- (id)cellForCollectionView:(id)view forIndexPath:(id)path
{
  pathCopy = path;
  viewCopy = view;
  v8 = objc_opt_class();
  v9 = NSStringFromClass(v8);
  v10 = [viewCopy dequeueReusableCellWithReuseIdentifier:v9 forIndexPath:pathCopy];

  traitCollection = [v10 traitCollection];
  userInterfaceIdiom = [traitCollection userInterfaceIdiom];

  if (userInterfaceIdiom != 5)
  {
    contentView = [v10 contentView];
    contentView2 = [v10 contentView];
    heightAnchor = [contentView2 heightAnchor];
    v16 = [heightAnchor constraintGreaterThanOrEqualToConstant:44.0];
    [contentView addConstraint:v16];
  }

  [(MapsDebugTableRow *)self configureCollectionViewCell:v10];
  [v10 setAccessibilityIdentifier:@"MapsDebugCollectionViewCell"];
  [v10 layoutIfNeeded];

  return v10;
}

- (UIListContentConfiguration)cellContentConfiguration
{
  subtitle = [(MapsDebugTableRow *)self subtitle];
  if ([subtitle length] || -[MapsDebugTableRow deprecated](self, "deprecated"))
  {
    v4 = +[UIListContentConfiguration subtitleCellConfiguration];
  }

  else
  {
    v4 = +[UIListContentConfiguration cellConfiguration];
  }

  v5 = v4;

  return v5;
}

- (int64_t)cellStyle
{
  subtitle = [(MapsDebugTableRow *)self subtitle];
  if ([subtitle length])
  {
    v4 = 3;
  }

  else if ([(MapsDebugTableRow *)self deprecated])
  {
    v4 = 3;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)configureCell:(id)cell
{
  cellCopy = cell;
  cellContentConfiguration = [(MapsDebugTableRow *)self cellContentConfiguration];
  title = [(MapsDebugTableRow *)self title];
  if (cellContentConfiguration)
  {
    [cellContentConfiguration setText:title];

    deprecated = [(MapsDebugTableRow *)self deprecated];
    subtitle = [(MapsDebugTableRow *)self subtitle];
    v8 = subtitle;
    if (deprecated)
    {
      v9 = [subtitle length];

      if (v9)
      {
        subtitle2 = [(MapsDebugTableRow *)self subtitle];
        v11 = [subtitle2 stringByAppendingString:@" - DEPRECATED (SOON TO BE REMOVED)"];
        [cellContentConfiguration setSecondaryText:v11];
      }

      else
      {
        [cellContentConfiguration setSecondaryText:@"DEPRECATED (SOON TO BE REMOVED)"];
      }

      v19 = +[UIColor systemRedColor];
    }

    else
    {
      [cellContentConfiguration setSecondaryText:subtitle];

      v19 = +[UIColor labelColor];
    }

    v22 = v19;
    secondaryTextProperties = [cellContentConfiguration secondaryTextProperties];
    [secondaryTextProperties setColor:v22];

    textProperties = [cellContentConfiguration textProperties];
  }

  else
  {
    textLabel = [cellCopy textLabel];
    [textLabel setText:title];

    LODWORD(textLabel) = [(MapsDebugTableRow *)self deprecated];
    subtitle3 = [(MapsDebugTableRow *)self subtitle];
    v14 = subtitle3;
    if (textLabel)
    {
      v15 = [subtitle3 length];

      if (v15)
      {
        subtitle4 = [(MapsDebugTableRow *)self subtitle];
        v17 = [subtitle4 stringByAppendingString:@" - DEPRECATED (SOON TO BE REMOVED)"];
        detailTextLabel = [cellCopy detailTextLabel];
        [detailTextLabel setText:v17];
      }

      else
      {
        subtitle4 = [cellCopy detailTextLabel];
        [subtitle4 setText:@"DEPRECATED (SOON TO BE REMOVED)"];
      }

      v21 = +[UIColor systemRedColor];
    }

    else
    {
      detailTextLabel2 = [cellCopy detailTextLabel];
      [detailTextLabel2 setText:v14];

      v21 = +[UIColor labelColor];
    }

    v25 = v21;
    detailTextLabel3 = [cellCopy detailTextLabel];
    [detailTextLabel3 setTextColor:v25];

    textProperties = [cellCopy textLabel];
  }

  v27 = textProperties;
  [textProperties setAdjustsFontSizeToFitWidth:1];

  configureBlock = [(MapsDebugTableRow *)self configureBlock];

  if (configureBlock)
  {
    configureBlock2 = [(MapsDebugTableRow *)self configureBlock];
    (configureBlock2)[2](configureBlock2, cellCopy, cellContentConfiguration);
  }

  textLabel2 = [cellCopy textLabel];
  [textLabel2 setAccessibilityIdentifier:@"TextLabel"];

  detailTextLabel4 = [cellCopy detailTextLabel];
  [detailTextLabel4 setAccessibilityIdentifier:@"DetailTextLabel"];

  [cellCopy setContentConfiguration:cellContentConfiguration];
}

- (id)cellForTableView:(id)view
{
  viewCopy = view;
  reuseIdentifier = [objc_opt_class() reuseIdentifier];
  v6 = [viewCopy dequeueReusableCellWithIdentifier:reuseIdentifier];

  if (!v6)
  {
    v6 = [[UITableViewCell alloc] initWithStyle:-[MapsDebugTableRow cellStyle](self reuseIdentifier:{"cellStyle"), reuseIdentifier}];
    traitCollection = [v6 traitCollection];
    userInterfaceIdiom = [traitCollection userInterfaceIdiom];

    if (userInterfaceIdiom == 5)
    {
      contentView = [v6 contentView];
      contentView2 = [v6 contentView];
      heightAnchor = [contentView2 heightAnchor];
      v12 = [heightAnchor constraintGreaterThanOrEqualToConstant:34.0];
      [contentView addConstraint:v12];
    }
  }

  [v6 setAccessibilityIdentifier:@"MapsDebugTableViewCell"];
  [(MapsDebugTableRow *)self configureCell:v6];

  return v6;
}

- (void)_clearAllControlTargetsForReuse
{
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v3 = self->_controlsToClearTargetsFromOnReuse;
  v4 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v9;
    do
    {
      v7 = 0;
      do
      {
        if (*v9 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [*(*(&v8 + 1) + 8 * v7) removeTarget:self action:0 forControlEvents:{0xFFFFFFFFLL, v8}];
        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v5);
  }

  [(NSMutableArray *)self->_controlsToClearTargetsFromOnReuse removeAllObjects];
}

- (void)addControlThatNeedsClearingTargetOnReuse:(id)reuse
{
  reuseCopy = reuse;
  controlsToClearTargetsFromOnReuse = self->_controlsToClearTargetsFromOnReuse;
  v8 = reuseCopy;
  if (!controlsToClearTargetsFromOnReuse)
  {
    v6 = objc_alloc_init(NSMutableArray);
    v7 = self->_controlsToClearTargetsFromOnReuse;
    self->_controlsToClearTargetsFromOnReuse = v6;

    reuseCopy = v8;
    controlsToClearTargetsFromOnReuse = self->_controlsToClearTargetsFromOnReuse;
  }

  [(NSMutableArray *)controlsToClearTargetsFromOnReuse addObject:reuseCopy];
}

- (void)setCurrentCell:(id)cell
{
  cellCopy = cell;
  if (self->_currentCell != cellCopy)
  {
    v6 = cellCopy;
    if (!cellCopy)
    {
      [(MapsDebugTableRow *)self _clearAllControlTargetsForReuse];
    }

    objc_storeStrong(&self->_currentCell, cell);
    cellCopy = v6;
  }
}

- (void)invalidate
{
  [(MapsDebugTableRow *)self setCurrentCell:0];
  [(MapsDebugTableRow *)self setSection:0];

  [(MapsDebugTableRow *)self setSelectionAction:0];
}

- (void)dealloc
{
  [(MapsDebugTableRow *)self invalidate];
  v3.receiver = self;
  v3.super_class = MapsDebugTableRow;
  [(MapsDebugTableRow *)&v3 dealloc];
}

- (MapsDebugTableRow)init
{
  v3.receiver = self;
  v3.super_class = MapsDebugTableRow;
  result = [(MapsDebugTableRow *)&v3 init];
  if (result)
  {
    result->_visible = 1;
  }

  return result;
}

+ (void)registerCellsInCollectionView:(id)view
{
  viewCopy = view;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v17[0] = objc_opt_class();
  v17[1] = objc_opt_class();
  v17[2] = objc_opt_class();
  v17[3] = objc_opt_class();
  v17[4] = objc_opt_class();
  v17[5] = objc_opt_class();
  v17[6] = objc_opt_class();
  v17[7] = objc_opt_class();
  v17[8] = objc_opt_class();
  v17[9] = objc_opt_class();
  v17[10] = objc_opt_class();
  v17[11] = objc_opt_class();
  v4 = [NSArray arrayWithObjects:v17 count:12, 0];
  v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      v8 = 0;
      do
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v12 + 1) + 8 * v8);
        v10 = objc_opt_class();
        v11 = NSStringFromClass(v9);
        [viewCopy registerClass:v10 forCellWithReuseIdentifier:v11];

        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }
}

@end