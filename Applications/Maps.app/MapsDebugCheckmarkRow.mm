@interface MapsDebugCheckmarkRow
- (BOOL)isDisabled;
- (MapsDebugCheckmarkRow)init;
- (id)_createAccessoryView;
- (id)reuseIdentifier;
- (id)selectionAction;
- (void)_configureCellForCheckedValue:(id)value;
- (void)_configureCollectionViewCellForCheckedValue:(id)value;
- (void)_configureTapGestureOnCell:(id)cell;
- (void)_didTapCell:(id)cell;
- (void)_fireControlSelectionAction;
- (void)configureCell:(id)cell;
- (void)configureCollectionViewCell:(id)cell;
- (void)invalidate;
- (void)setCurrentCollectionViewCell:(id)cell;
- (void)setSelectionAction:(id)action;
- (void)setValue:(id)value;
- (void)update;
- (void)updateChecked;
- (void)updateConfiguration;
@end

@implementation MapsDebugCheckmarkRow

- (id)selectionAction
{
  if ([(MapsDebugCheckmarkRow *)self isDisabled])
  {
    selectionAction = 0;
  }

  else
  {
    v5.receiver = self;
    v5.super_class = MapsDebugCheckmarkRow;
    selectionAction = [(MapsDebugTableRow *)&v5 selectionAction];
  }

  return selectionAction;
}

- (void)updateConfiguration
{
  currentCell = [(MapsDebugTableRow *)self currentCell];

  if (currentCell)
  {
    currentCell2 = [(MapsDebugTableRow *)self currentCell];
    [(MapsDebugCheckmarkRow *)self _configureCellForCheckedValue:currentCell2];
  }

  currentCollectionViewCell = [(MapsDebugTableRow *)self currentCollectionViewCell];

  if (currentCollectionViewCell)
  {
    currentCollectionViewCell2 = [(MapsDebugTableRow *)self currentCollectionViewCell];
    [(MapsDebugCheckmarkRow *)self _configureCollectionViewCellForCheckedValue:currentCollectionViewCell2];
  }
}

- (void)updateChecked
{
  v3 = [(MapsDebugCheckmarkRow *)self get];

  if (v3)
  {
    v4 = [(MapsDebugCheckmarkRow *)self get];
    v12 = v4[2]();

    value = [(MapsDebugCheckmarkRow *)self value];
    if (value == v12)
    {
      p_checked = &self->_checked;
      self->_checked = 1;
    }

    else
    {
      value2 = [(MapsDebugCheckmarkRow *)self value];
      p_checked = &self->_checked;
      self->_checked = [value2 isEqual:v12];
    }

    if (!*p_checked)
    {
      rowsGroup = [(MapsDebugCheckmarkRow *)self rowsGroup];
      allowsMultipleSelection = [rowsGroup allowsMultipleSelection];

      if (allowsMultipleSelection)
      {
        v10 = v12;
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          value3 = [(MapsDebugCheckmarkRow *)self value];
          *p_checked = [v10 containsObject:value3];
        }

        else
        {
          *p_checked = 0;
        }
      }
    }
  }

  else
  {
    self->_checked = 0;
  }
}

- (void)update
{
  [(MapsDebugCheckmarkRow *)self updateChecked];

  [(MapsDebugCheckmarkRow *)self updateConfiguration];
}

- (void)setCurrentCollectionViewCell:(id)cell
{
  v4.receiver = self;
  v4.super_class = MapsDebugCheckmarkRow;
  [(MapsDebugTableRow *)&v4 setCurrentCollectionViewCell:cell];
  [(MapsDebugCheckmarkRow *)self update];
}

- (void)setValue:(id)value
{
  valueCopy = value;
  if (self->_value != valueCopy)
  {
    v6 = valueCopy;
    objc_storeStrong(&self->_value, value);
    [(MapsDebugCheckmarkRow *)self update];
    valueCopy = v6;
  }
}

- (void)invalidate
{
  rowsGroup = [(MapsDebugCheckmarkRow *)self rowsGroup];
  [rowsGroup checkmarkRowWillInvalidate:self];

  [(MapsDebugCheckmarkRow *)self setRowsGroup:0];
  v4.receiver = self;
  v4.super_class = MapsDebugCheckmarkRow;
  [(MapsDebugTableRow *)&v4 invalidate];
}

- (id)reuseIdentifier
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

- (MapsDebugCheckmarkRow)init
{
  v7.receiver = self;
  v7.super_class = MapsDebugCheckmarkRow;
  v2 = [(MapsDebugTableRow *)&v7 init];
  if (v2)
  {
    objc_initWeak(&location, v2);
    v4[0] = _NSConcreteStackBlock;
    v4[1] = 3221225472;
    v4[2] = sub_1005B3508;
    v4[3] = &unk_101661B98;
    objc_copyWeak(&v5, &location);
    [(MapsDebugCheckmarkRow *)v2 setSelectionAction:v4];
    objc_destroyWeak(&v5);
    objc_destroyWeak(&location);
  }

  return v2;
}

- (void)configureCollectionViewCell:(id)cell
{
  v5.receiver = self;
  v5.super_class = MapsDebugCheckmarkRow;
  cellCopy = cell;
  [(MapsDebugTableRow *)&v5 configureCollectionViewCell:cellCopy];
  [(MapsDebugCheckmarkRow *)self _configureCollectionViewCellForCheckedValue:cellCopy, v5.receiver, v5.super_class];
}

- (void)configureCell:(id)cell
{
  v5.receiver = self;
  v5.super_class = MapsDebugCheckmarkRow;
  cellCopy = cell;
  [(MapsDebugTableRow *)&v5 configureCell:cellCopy];
  [(MapsDebugCheckmarkRow *)self _configureCellForCheckedValue:cellCopy, v5.receiver, v5.super_class];
}

- (void)_fireControlSelectionAction
{
  controlSelectionAction = self->_controlSelectionAction;
  if (controlSelectionAction)
  {
    if (!self->_checked)
    {
LABEL_5:
      v6 = *(controlSelectionAction + 2);

      v6();
      return;
    }

    rowsGroup = [(MapsDebugCheckmarkRow *)self rowsGroup];
    canDeselectRows = [rowsGroup canDeselectRows];

    if (canDeselectRows)
    {
      controlSelectionAction = self->_controlSelectionAction;
      goto LABEL_5;
    }
  }

  selectionAction = [(MapsDebugCheckmarkRow *)self selectionAction];

  if (selectionAction)
  {
    selectionAction2 = [(MapsDebugCheckmarkRow *)self selectionAction];
    selectionAction2[2]();
  }
}

- (void)_didTapCell:(id)cell
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {

    [(MapsDebugCheckmarkRow *)self _fireControlSelectionAction];
  }
}

- (id)_createAccessoryView
{
  rowsGroup = [(MapsDebugCheckmarkRow *)self rowsGroup];
  allowsMultipleSelection = [rowsGroup allowsMultipleSelection];

  if (allowsMultipleSelection)
  {
    v5 = [[NonFocusableSwitch alloc] initWithFrame:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
    [(NonFocusableSwitch *)v5 addTarget:self action:"_didSelectAccessory:" forControlEvents:4096];
    [(NonFocusableSwitch *)v5 setOn:self->_checked];
  }

  else
  {
    rowsGroup2 = [(MapsDebugCheckmarkRow *)self rowsGroup];
    groupIdentifier = [rowsGroup2 groupIdentifier];
    v5 = [MapsRadioButton buttonWithGroupIdentifier:groupIdentifier];

    [(NonFocusableSwitch *)v5 addTarget:self action:"_didSelectAccessory:" forControlEvents:4096];
    [(NonFocusableSwitch *)v5 setSelected:self->_checked];
  }

  [(NonFocusableSwitch *)v5 sizeToFit];

  return v5;
}

- (void)_configureTapGestureOnCell:(id)cell
{
  cellCopy = cell;
  if (cellCopy)
  {
    v9 = cellCopy;
    tapGestureRecognizer = self->_tapGestureRecognizer;
    if (tapGestureRecognizer)
    {
      view = [(UITapGestureRecognizer *)tapGestureRecognizer view];
      [view removeGestureRecognizer:self->_tapGestureRecognizer];
    }

    v7 = [[UITapGestureRecognizer alloc] initWithTarget:self action:"_didTapCell:"];
    v8 = self->_tapGestureRecognizer;
    self->_tapGestureRecognizer = v7;

    [v9 setUserInteractionEnabled:1];
    [v9 addGestureRecognizer:self->_tapGestureRecognizer];
    cellCopy = v9;
  }
}

- (void)_configureCollectionViewCellForCheckedValue:(id)value
{
  valueCopy = value;
  traitCollection = [valueCopy traitCollection];
  userInterfaceIdiom = [traitCollection userInterfaceIdiom];

  if (userInterfaceIdiom == 5)
  {
    [valueCopy setBackgroundConfiguration:0];
    _createAccessoryView = [(MapsDebugCheckmarkRow *)self _createAccessoryView];
    v8 = [[_UICellAccessoryConfigurationCustomView alloc] initWithCustomView:_createAccessoryView];
    v23 = v8;
    v9 = [NSArray arrayWithObjects:&v23 count:1];
    [valueCopy setLeadingAccessoryConfigurations:v9];

    contentView = [valueCopy contentView];
    [(MapsDebugCheckmarkRow *)self _configureTapGestureOnCell:contentView];
  }

  else
  {
    if (self->_checked)
    {
      v11 = objc_alloc_init(_UICellAccessoryConfigurationCheckmark);
      if ([(MapsDebugCheckmarkRow *)self isDisabled])
      {
        +[UIColor systemGrayColor];
      }

      else
      {
        +[UIColor tintColor];
      }
      v12 = ;
      [v11 setTintColor:v12];

      v22 = v11;
      v13 = [NSArray arrayWithObjects:&v22 count:1];
      [valueCopy setTrailingAccessoryConfigurations:v13];
    }

    else
    {
      [valueCopy setTrailingAccessoryConfigurations:&__NSArray0__struct];
    }

    _createAccessoryView = 0;
  }

  if ([(MapsDebugCheckmarkRow *)self isDisabled])
  {
    v14 = +[UIColor systemGrayColor];
    textLabel = [valueCopy textLabel];
    [textLabel setTintColor:v14];

    contentView2 = [valueCopy contentView];
    [contentView2 setAlpha:0.5];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [_createAccessoryView setEnabled:0];
    }
  }

  else
  {
    textLabel2 = [valueCopy textLabel];
    [textLabel2 setTintColor:0];

    contentView3 = [valueCopy contentView];
    [contentView3 setAlpha:1.0];
  }

  v19 = [(MapsDebugCheckmarkRow *)self get];

  if (v19)
  {
    +[UIColor labelColor];
  }

  else
  {
    +[UIColor secondaryLabelColor];
  }
  v20 = ;
  textLabel3 = [valueCopy textLabel];
  [textLabel3 setTextColor:v20];
}

- (void)_configureCellForCheckedValue:(id)value
{
  valueCopy = value;
  traitCollection = [valueCopy traitCollection];
  userInterfaceIdiom = [traitCollection userInterfaceIdiom];

  if (userInterfaceIdiom == 5)
  {
    _createAccessoryView = [(MapsDebugCheckmarkRow *)self _createAccessoryView];
    [valueCopy setAccessoryView:_createAccessoryView];

    contentView = [valueCopy contentView];
    [(MapsDebugCheckmarkRow *)self _configureTapGestureOnCell:contentView];
  }

  else
  {
    if (self->_checked)
    {
      v8 = 3;
    }

    else
    {
      v8 = 0;
    }

    [valueCopy setAccessoryType:v8];
  }

  v9 = [(MapsDebugCheckmarkRow *)self get];

  if (v9)
  {
    +[UIColor labelColor];
  }

  else
  {
    +[UIColor secondaryLabelColor];
  }
  v10 = ;
  textLabel = [valueCopy textLabel];
  [textLabel setTextColor:v10];

  if ([(MapsDebugCheckmarkRow *)self isDisabled])
  {
    v12 = +[UIColor systemGrayColor];
    [valueCopy setTintColor:v12];

    v13 = 0.5;
  }

  else
  {
    [valueCopy setTintColor:0];
    v13 = 1.0;
  }

  contentView2 = [valueCopy contentView];
  [contentView2 setAlpha:v13];
}

- (void)setSelectionAction:(id)action
{
  actionCopy = action;
  v5 = +[UIDevice currentDevice];
  userInterfaceIdiom = [v5 userInterfaceIdiom];

  if (userInterfaceIdiom == 5)
  {
    v7 = [actionCopy copy];

    controlSelectionAction = self->_controlSelectionAction;
    self->_controlSelectionAction = v7;
  }

  else
  {
    v9.receiver = self;
    v9.super_class = MapsDebugCheckmarkRow;
    [(MapsDebugTableRow *)&v9 setSelectionAction:actionCopy];
  }
}

- (BOOL)isDisabled
{
  if (self->_checked)
  {
    rowsGroup = [(MapsDebugCheckmarkRow *)self rowsGroup];
    if ([rowsGroup allowsMultipleSelection])
    {
      rowsGroup2 = [(MapsDebugCheckmarkRow *)self rowsGroup];
      v5 = [rowsGroup2 canDeselectRows] ^ 1;
    }

    else
    {
      LOBYTE(v5) = 0;
    }
  }

  else
  {
    LOBYTE(v5) = 0;
  }

  return v5;
}

@end