@interface MapsDebugCheckmarkRow
- (BOOL)isDisabled;
- (MapsDebugCheckmarkRow)init;
- (id)_createAccessoryView;
- (id)reuseIdentifier;
- (id)selectionAction;
- (void)_configureCellForCheckedValue:(id)a3;
- (void)_configureCollectionViewCellForCheckedValue:(id)a3;
- (void)_configureTapGestureOnCell:(id)a3;
- (void)_didTapCell:(id)a3;
- (void)_fireControlSelectionAction;
- (void)configureCell:(id)a3;
- (void)configureCollectionViewCell:(id)a3;
- (void)invalidate;
- (void)setCurrentCollectionViewCell:(id)a3;
- (void)setSelectionAction:(id)a3;
- (void)setValue:(id)a3;
- (void)update;
- (void)updateChecked;
- (void)updateConfiguration;
@end

@implementation MapsDebugCheckmarkRow

- (id)selectionAction
{
  if ([(MapsDebugCheckmarkRow *)self isDisabled])
  {
    v3 = 0;
  }

  else
  {
    v5.receiver = self;
    v5.super_class = MapsDebugCheckmarkRow;
    v3 = [(MapsDebugTableRow *)&v5 selectionAction];
  }

  return v3;
}

- (void)updateConfiguration
{
  v3 = [(MapsDebugTableRow *)self currentCell];

  if (v3)
  {
    v4 = [(MapsDebugTableRow *)self currentCell];
    [(MapsDebugCheckmarkRow *)self _configureCellForCheckedValue:v4];
  }

  v5 = [(MapsDebugTableRow *)self currentCollectionViewCell];

  if (v5)
  {
    v6 = [(MapsDebugTableRow *)self currentCollectionViewCell];
    [(MapsDebugCheckmarkRow *)self _configureCollectionViewCellForCheckedValue:v6];
  }
}

- (void)updateChecked
{
  v3 = [(MapsDebugCheckmarkRow *)self get];

  if (v3)
  {
    v4 = [(MapsDebugCheckmarkRow *)self get];
    v12 = v4[2]();

    v5 = [(MapsDebugCheckmarkRow *)self value];
    if (v5 == v12)
    {
      p_checked = &self->_checked;
      self->_checked = 1;
    }

    else
    {
      v6 = [(MapsDebugCheckmarkRow *)self value];
      p_checked = &self->_checked;
      self->_checked = [v6 isEqual:v12];
    }

    if (!*p_checked)
    {
      v8 = [(MapsDebugCheckmarkRow *)self rowsGroup];
      v9 = [v8 allowsMultipleSelection];

      if (v9)
      {
        v10 = v12;
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v11 = [(MapsDebugCheckmarkRow *)self value];
          *p_checked = [v10 containsObject:v11];
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

- (void)setCurrentCollectionViewCell:(id)a3
{
  v4.receiver = self;
  v4.super_class = MapsDebugCheckmarkRow;
  [(MapsDebugTableRow *)&v4 setCurrentCollectionViewCell:a3];
  [(MapsDebugCheckmarkRow *)self update];
}

- (void)setValue:(id)a3
{
  v5 = a3;
  if (self->_value != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_value, a3);
    [(MapsDebugCheckmarkRow *)self update];
    v5 = v6;
  }
}

- (void)invalidate
{
  v3 = [(MapsDebugCheckmarkRow *)self rowsGroup];
  [v3 checkmarkRowWillInvalidate:self];

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

- (void)configureCollectionViewCell:(id)a3
{
  v5.receiver = self;
  v5.super_class = MapsDebugCheckmarkRow;
  v4 = a3;
  [(MapsDebugTableRow *)&v5 configureCollectionViewCell:v4];
  [(MapsDebugCheckmarkRow *)self _configureCollectionViewCellForCheckedValue:v4, v5.receiver, v5.super_class];
}

- (void)configureCell:(id)a3
{
  v5.receiver = self;
  v5.super_class = MapsDebugCheckmarkRow;
  v4 = a3;
  [(MapsDebugTableRow *)&v5 configureCell:v4];
  [(MapsDebugCheckmarkRow *)self _configureCellForCheckedValue:v4, v5.receiver, v5.super_class];
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

    v4 = [(MapsDebugCheckmarkRow *)self rowsGroup];
    v5 = [v4 canDeselectRows];

    if (v5)
    {
      controlSelectionAction = self->_controlSelectionAction;
      goto LABEL_5;
    }
  }

  v7 = [(MapsDebugCheckmarkRow *)self selectionAction];

  if (v7)
  {
    v8 = [(MapsDebugCheckmarkRow *)self selectionAction];
    v8[2]();
  }
}

- (void)_didTapCell:(id)a3
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {

    [(MapsDebugCheckmarkRow *)self _fireControlSelectionAction];
  }
}

- (id)_createAccessoryView
{
  v3 = [(MapsDebugCheckmarkRow *)self rowsGroup];
  v4 = [v3 allowsMultipleSelection];

  if (v4)
  {
    v5 = [[NonFocusableSwitch alloc] initWithFrame:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
    [(NonFocusableSwitch *)v5 addTarget:self action:"_didSelectAccessory:" forControlEvents:4096];
    [(NonFocusableSwitch *)v5 setOn:self->_checked];
  }

  else
  {
    v6 = [(MapsDebugCheckmarkRow *)self rowsGroup];
    v7 = [v6 groupIdentifier];
    v5 = [MapsRadioButton buttonWithGroupIdentifier:v7];

    [(NonFocusableSwitch *)v5 addTarget:self action:"_didSelectAccessory:" forControlEvents:4096];
    [(NonFocusableSwitch *)v5 setSelected:self->_checked];
  }

  [(NonFocusableSwitch *)v5 sizeToFit];

  return v5;
}

- (void)_configureTapGestureOnCell:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v9 = v4;
    tapGestureRecognizer = self->_tapGestureRecognizer;
    if (tapGestureRecognizer)
    {
      v6 = [(UITapGestureRecognizer *)tapGestureRecognizer view];
      [v6 removeGestureRecognizer:self->_tapGestureRecognizer];
    }

    v7 = [[UITapGestureRecognizer alloc] initWithTarget:self action:"_didTapCell:"];
    v8 = self->_tapGestureRecognizer;
    self->_tapGestureRecognizer = v7;

    [v9 setUserInteractionEnabled:1];
    [v9 addGestureRecognizer:self->_tapGestureRecognizer];
    v4 = v9;
  }
}

- (void)_configureCollectionViewCellForCheckedValue:(id)a3
{
  v4 = a3;
  v5 = [v4 traitCollection];
  v6 = [v5 userInterfaceIdiom];

  if (v6 == 5)
  {
    [v4 setBackgroundConfiguration:0];
    v7 = [(MapsDebugCheckmarkRow *)self _createAccessoryView];
    v8 = [[_UICellAccessoryConfigurationCustomView alloc] initWithCustomView:v7];
    v23 = v8;
    v9 = [NSArray arrayWithObjects:&v23 count:1];
    [v4 setLeadingAccessoryConfigurations:v9];

    v10 = [v4 contentView];
    [(MapsDebugCheckmarkRow *)self _configureTapGestureOnCell:v10];
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
      [v4 setTrailingAccessoryConfigurations:v13];
    }

    else
    {
      [v4 setTrailingAccessoryConfigurations:&__NSArray0__struct];
    }

    v7 = 0;
  }

  if ([(MapsDebugCheckmarkRow *)self isDisabled])
  {
    v14 = +[UIColor systemGrayColor];
    v15 = [v4 textLabel];
    [v15 setTintColor:v14];

    v16 = [v4 contentView];
    [v16 setAlpha:0.5];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v7 setEnabled:0];
    }
  }

  else
  {
    v17 = [v4 textLabel];
    [v17 setTintColor:0];

    v18 = [v4 contentView];
    [v18 setAlpha:1.0];
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
  v21 = [v4 textLabel];
  [v21 setTextColor:v20];
}

- (void)_configureCellForCheckedValue:(id)a3
{
  v15 = a3;
  v4 = [v15 traitCollection];
  v5 = [v4 userInterfaceIdiom];

  if (v5 == 5)
  {
    v6 = [(MapsDebugCheckmarkRow *)self _createAccessoryView];
    [v15 setAccessoryView:v6];

    v7 = [v15 contentView];
    [(MapsDebugCheckmarkRow *)self _configureTapGestureOnCell:v7];
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

    [v15 setAccessoryType:v8];
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
  v11 = [v15 textLabel];
  [v11 setTextColor:v10];

  if ([(MapsDebugCheckmarkRow *)self isDisabled])
  {
    v12 = +[UIColor systemGrayColor];
    [v15 setTintColor:v12];

    v13 = 0.5;
  }

  else
  {
    [v15 setTintColor:0];
    v13 = 1.0;
  }

  v14 = [v15 contentView];
  [v14 setAlpha:v13];
}

- (void)setSelectionAction:(id)a3
{
  v4 = a3;
  v5 = +[UIDevice currentDevice];
  v6 = [v5 userInterfaceIdiom];

  if (v6 == 5)
  {
    v7 = [v4 copy];

    controlSelectionAction = self->_controlSelectionAction;
    self->_controlSelectionAction = v7;
  }

  else
  {
    v9.receiver = self;
    v9.super_class = MapsDebugCheckmarkRow;
    [(MapsDebugTableRow *)&v9 setSelectionAction:v4];
  }
}

- (BOOL)isDisabled
{
  if (self->_checked)
  {
    v3 = [(MapsDebugCheckmarkRow *)self rowsGroup];
    if ([v3 allowsMultipleSelection])
    {
      v4 = [(MapsDebugCheckmarkRow *)self rowsGroup];
      v5 = [v4 canDeselectRows] ^ 1;
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