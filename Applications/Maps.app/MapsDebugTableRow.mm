@interface MapsDebugTableRow
+ (void)registerCellsInCollectionView:(id)a3;
- (MapsDebugTableRow)init;
- (MapsDebugTableSection)section;
- (UIListContentConfiguration)cellContentConfiguration;
- (id)cellForCollectionView:(id)a3 forIndexPath:(id)a4;
- (id)cellForTableView:(id)a3;
- (int64_t)cellStyle;
- (void)_clearAllControlTargetsForReuse;
- (void)addControlThatNeedsClearingTargetOnReuse:(id)a3;
- (void)configureCell:(id)a3;
- (void)configureCollectionViewCell:(id)a3;
- (void)dealloc;
- (void)invalidate;
- (void)setCurrentCell:(id)a3;
@end

@implementation MapsDebugTableRow

- (MapsDebugTableSection)section
{
  WeakRetained = objc_loadWeakRetained(&self->_section);

  return WeakRetained;
}

- (void)configureCollectionViewCell:(id)a3
{
  v25 = a3;
  v4 = [(MapsDebugTableRow *)self configureCollectionViewCellBlock];

  if (v4)
  {
    v5 = [(MapsDebugTableRow *)self cellContentConfiguration];
    v6 = [(MapsDebugTableRow *)self title];
    [v5 setText:v6];

    v7 = [(MapsDebugTableRow *)self subtitle];
    [v5 setSecondaryText:v7];

    v8 = [(MapsDebugTableRow *)self configureCollectionViewCellBlock];
    (v8)[2](v8, v25, v5);

    [v25 setContentConfiguration:v5];
    v9 = [v25 contentView];
    [v9 setAccessibilityIdentifier:@"TextLabel"];

    v10 = [(MapsDebugTableRow *)self title];
    v11 = [v25 contentView];
    [v11 setAccessibilityLabel:v10];
  }

  else
  {
    v12 = [v25 contentConfiguration];

    if (v12)
    {
      [v25 setContentConfiguration:0];
      [v25 setupContentView];
    }

    v13 = [(MapsDebugTableRow *)self title];
    v14 = [v25 textLabel];
    [v14 setText:v13];

    LODWORD(v14) = [(MapsDebugTableRow *)self deprecated];
    v15 = [(MapsDebugTableRow *)self subtitle];
    v16 = v15;
    if (v14)
    {
      v17 = [v15 length];

      if (v17)
      {
        v18 = [(MapsDebugTableRow *)self subtitle];
        v19 = [v18 stringByAppendingString:@" - DEPRECATED (SOON TO BE REMOVED)"];
        v20 = [v25 detailTextLabel];
        [v20 setText:v19];
      }

      else
      {
        v18 = [v25 detailTextLabel];
        [v18 setText:@"DEPRECATED (SOON TO BE REMOVED)"];
      }

      v22 = +[UIColor systemRedColor];
    }

    else
    {
      v21 = [v25 detailTextLabel];
      [v21 setText:v16];

      v22 = +[UIColor labelColor];
    }

    v23 = v22;
    v24 = [v25 detailTextLabel];
    [v24 setTextColor:v23];

    v5 = [v25 textLabel];
    [v5 setAdjustsFontSizeToFitWidth:1];
  }
}

- (id)cellForCollectionView:(id)a3 forIndexPath:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = objc_opt_class();
  v9 = NSStringFromClass(v8);
  v10 = [v7 dequeueReusableCellWithReuseIdentifier:v9 forIndexPath:v6];

  v11 = [v10 traitCollection];
  v12 = [v11 userInterfaceIdiom];

  if (v12 != 5)
  {
    v13 = [v10 contentView];
    v14 = [v10 contentView];
    v15 = [v14 heightAnchor];
    v16 = [v15 constraintGreaterThanOrEqualToConstant:44.0];
    [v13 addConstraint:v16];
  }

  [(MapsDebugTableRow *)self configureCollectionViewCell:v10];
  [v10 setAccessibilityIdentifier:@"MapsDebugCollectionViewCell"];
  [v10 layoutIfNeeded];

  return v10;
}

- (UIListContentConfiguration)cellContentConfiguration
{
  v3 = [(MapsDebugTableRow *)self subtitle];
  if ([v3 length] || -[MapsDebugTableRow deprecated](self, "deprecated"))
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
  v3 = [(MapsDebugTableRow *)self subtitle];
  if ([v3 length])
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

- (void)configureCell:(id)a3
{
  v32 = a3;
  v4 = [(MapsDebugTableRow *)self cellContentConfiguration];
  v5 = [(MapsDebugTableRow *)self title];
  if (v4)
  {
    [v4 setText:v5];

    v6 = [(MapsDebugTableRow *)self deprecated];
    v7 = [(MapsDebugTableRow *)self subtitle];
    v8 = v7;
    if (v6)
    {
      v9 = [v7 length];

      if (v9)
      {
        v10 = [(MapsDebugTableRow *)self subtitle];
        v11 = [v10 stringByAppendingString:@" - DEPRECATED (SOON TO BE REMOVED)"];
        [v4 setSecondaryText:v11];
      }

      else
      {
        [v4 setSecondaryText:@"DEPRECATED (SOON TO BE REMOVED)"];
      }

      v19 = +[UIColor systemRedColor];
    }

    else
    {
      [v4 setSecondaryText:v7];

      v19 = +[UIColor labelColor];
    }

    v22 = v19;
    v23 = [v4 secondaryTextProperties];
    [v23 setColor:v22];

    v24 = [v4 textProperties];
  }

  else
  {
    v12 = [v32 textLabel];
    [v12 setText:v5];

    LODWORD(v12) = [(MapsDebugTableRow *)self deprecated];
    v13 = [(MapsDebugTableRow *)self subtitle];
    v14 = v13;
    if (v12)
    {
      v15 = [v13 length];

      if (v15)
      {
        v16 = [(MapsDebugTableRow *)self subtitle];
        v17 = [v16 stringByAppendingString:@" - DEPRECATED (SOON TO BE REMOVED)"];
        v18 = [v32 detailTextLabel];
        [v18 setText:v17];
      }

      else
      {
        v16 = [v32 detailTextLabel];
        [v16 setText:@"DEPRECATED (SOON TO BE REMOVED)"];
      }

      v21 = +[UIColor systemRedColor];
    }

    else
    {
      v20 = [v32 detailTextLabel];
      [v20 setText:v14];

      v21 = +[UIColor labelColor];
    }

    v25 = v21;
    v26 = [v32 detailTextLabel];
    [v26 setTextColor:v25];

    v24 = [v32 textLabel];
  }

  v27 = v24;
  [v24 setAdjustsFontSizeToFitWidth:1];

  v28 = [(MapsDebugTableRow *)self configureBlock];

  if (v28)
  {
    v29 = [(MapsDebugTableRow *)self configureBlock];
    (v29)[2](v29, v32, v4);
  }

  v30 = [v32 textLabel];
  [v30 setAccessibilityIdentifier:@"TextLabel"];

  v31 = [v32 detailTextLabel];
  [v31 setAccessibilityIdentifier:@"DetailTextLabel"];

  [v32 setContentConfiguration:v4];
}

- (id)cellForTableView:(id)a3
{
  v4 = a3;
  v5 = [objc_opt_class() reuseIdentifier];
  v6 = [v4 dequeueReusableCellWithIdentifier:v5];

  if (!v6)
  {
    v6 = [[UITableViewCell alloc] initWithStyle:-[MapsDebugTableRow cellStyle](self reuseIdentifier:{"cellStyle"), v5}];
    v7 = [v6 traitCollection];
    v8 = [v7 userInterfaceIdiom];

    if (v8 == 5)
    {
      v9 = [v6 contentView];
      v10 = [v6 contentView];
      v11 = [v10 heightAnchor];
      v12 = [v11 constraintGreaterThanOrEqualToConstant:34.0];
      [v9 addConstraint:v12];
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

- (void)addControlThatNeedsClearingTargetOnReuse:(id)a3
{
  v4 = a3;
  controlsToClearTargetsFromOnReuse = self->_controlsToClearTargetsFromOnReuse;
  v8 = v4;
  if (!controlsToClearTargetsFromOnReuse)
  {
    v6 = objc_alloc_init(NSMutableArray);
    v7 = self->_controlsToClearTargetsFromOnReuse;
    self->_controlsToClearTargetsFromOnReuse = v6;

    v4 = v8;
    controlsToClearTargetsFromOnReuse = self->_controlsToClearTargetsFromOnReuse;
  }

  [(NSMutableArray *)controlsToClearTargetsFromOnReuse addObject:v4];
}

- (void)setCurrentCell:(id)a3
{
  v5 = a3;
  if (self->_currentCell != v5)
  {
    v6 = v5;
    if (!v5)
    {
      [(MapsDebugTableRow *)self _clearAllControlTargetsForReuse];
    }

    objc_storeStrong(&self->_currentCell, a3);
    v5 = v6;
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

+ (void)registerCellsInCollectionView:(id)a3
{
  v3 = a3;
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
        [v3 registerClass:v10 forCellWithReuseIdentifier:v11];

        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }
}

@end