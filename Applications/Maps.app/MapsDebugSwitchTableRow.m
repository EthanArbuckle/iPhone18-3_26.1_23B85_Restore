@interface MapsDebugSwitchTableRow
- (MapsDebugSwitchTableRow)init;
- (id)_createToggleForIdiom:(int64_t)a3;
- (void)_configureTapGesture:(id)a3;
- (void)_didTapContent:(id)a3;
- (void)_switchDidChangeValue:(id)a3;
- (void)configureCell:(id)a3;
- (void)configureCollectionViewCell:(id)a3;
- (void)invalidate;
@end

@implementation MapsDebugSwitchTableRow

- (void)_didTapContent:(id)a3
{
  toggle = self->_toggle;
  if (toggle)
  {
    [(UISwitch *)toggle setOn:[(UISwitch *)self->_toggle isOn]^ 1 animated:1];
    v5 = self->_toggle;

    [(MapsDebugSwitchTableRow *)self _switchDidChangeValue:v5];
  }
}

- (void)_switchDidChangeValue:(id)a3
{
  v4 = [a3 isOn];
  v5 = [(MapsDebugSwitchTableRow *)self set];

  if (v5)
  {
    v6 = [(MapsDebugSwitchTableRow *)self set];
    v6[2](v6, v4);
  }
}

- (void)_configureTapGesture:(id)a3
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

    v7 = [[UITapGestureRecognizer alloc] initWithTarget:self action:"_didTapContent:"];
    v8 = self->_tapGestureRecognizer;
    self->_tapGestureRecognizer = v7;

    [v9 setUserInteractionEnabled:1];
    [v9 addGestureRecognizer:self->_tapGestureRecognizer];
    v4 = v9;
  }
}

- (void)configureCollectionViewCell:(id)a3
{
  v4 = a3;
  v23.receiver = self;
  v23.super_class = MapsDebugSwitchTableRow;
  [(MapsDebugTableRow *)&v23 configureCollectionViewCell:v4];
  v5 = v4;
  v6 = [v5 defaultContentConfiguration];
  v7 = [(MapsDebugTableRow *)self title];
  [v6 setText:v7];

  v8 = [(MapsDebugTableRow *)self subtitle];
  [v6 setSecondaryText:v8];

  if (self->_enabled)
  {
    +[UIColor labelColor];
  }

  else
  {
    +[UIColor secondaryLabelColor];
  }
  v9 = ;
  v10 = [v6 textProperties];
  [v10 setColor:v9];

  if (!self->_enabled)
  {
    v11 = [v6 image];

    if (v11)
    {
      v12 = [v6 image];
      v13 = [v12 _mapkit_imageWithAlpha:0.5];
      [v6 setImage:v13];
    }
  }

  [v5 setContentConfiguration:v6];
  v14 = [v5 traitCollection];
  v15 = -[MapsDebugSwitchTableRow _createToggleForIdiom:](self, "_createToggleForIdiom:", [v14 userInterfaceIdiom]);

  toggle = self->_toggle;
  self->_toggle = v15;
  v17 = v15;

  v18 = [[_UICellAccessoryConfigurationCustomView alloc] initWithCustomView:v17];
  v19 = [v5 traitCollection];
  v20 = [v19 userInterfaceIdiom];

  if (v20 == 5)
  {
    v25 = v18;
    v21 = [NSArray arrayWithObjects:&v25 count:1];

    [v5 setLeadingAccessoryConfigurations:v21];
    v22 = [v5 contentView];
    [(MapsDebugSwitchTableRow *)self _configureTapGesture:v22];
  }

  else
  {
    v24 = v18;
    v22 = [NSArray arrayWithObjects:&v24 count:1];

    [v5 setTrailingAccessoryConfigurations:v22];
  }
}

- (void)configureCell:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = MapsDebugSwitchTableRow;
  [(MapsDebugTableRow *)&v15 configureCell:v4];
  v5 = [v4 traitCollection];
  v6 = -[MapsDebugSwitchTableRow _createToggleForIdiom:](self, "_createToggleForIdiom:", [v5 userInterfaceIdiom]);

  [v4 setAccessoryView:v6];
  toggle = self->_toggle;
  self->_toggle = v6;
  v8 = v6;

  v9 = [v4 contentConfiguration];
  if (self->_enabled)
  {
    +[UIColor labelColor];
  }

  else
  {
    +[UIColor secondaryLabelColor];
  }
  v10 = ;

  v11 = [v9 textProperties];
  [v11 setColor:v10];

  [v4 setContentConfiguration:v9];
  v12 = [v4 traitCollection];
  v13 = [v12 userInterfaceIdiom];

  if (v13 == 5)
  {
    v14 = [v4 contentView];
    [(MapsDebugSwitchTableRow *)self _configureTapGesture:v14];
  }
}

- (id)_createToggleForIdiom:(int64_t)a3
{
  v4 = off_1015F64D8;
  if (a3 != 5)
  {
    v4 = UISwitch_ptr;
  }

  v5 = [objc_alloc(*v4) initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
  [v5 addTarget:self action:"_switchDidChangeValue:" forControlEvents:4096];
  v6 = [(MapsDebugSwitchTableRow *)self get];

  if (v6)
  {
    v7 = [(MapsDebugSwitchTableRow *)self get];
    [v5 setOn:v7[2]()];
  }

  [v5 sizeToFit];
  [v5 setEnabled:self->_enabled];
  [v5 setAccessibilityIdentifier:@"MapsDebugToggle"];

  return v5;
}

- (void)invalidate
{
  [(MapsDebugSwitchTableRow *)self setGet:0];
  [(MapsDebugSwitchTableRow *)self setSet:0];
  [(MapsDebugSwitchTableRow *)self setEnabled:1];
  v3.receiver = self;
  v3.super_class = MapsDebugSwitchTableRow;
  [(MapsDebugTableRow *)&v3 invalidate];
}

- (MapsDebugSwitchTableRow)init
{
  v9.receiver = self;
  v9.super_class = MapsDebugSwitchTableRow;
  v2 = [(MapsDebugTableRow *)&v9 init];
  v3 = v2;
  if (v2)
  {
    v2->_enabled = 1;
    objc_initWeak(&location, v2);
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_100A812AC;
    v6[3] = &unk_101661B98;
    objc_copyWeak(&v7, &location);
    [(MapsDebugTableRow *)v3 setSelectionAction:v6];
    v4 = v3;
    objc_destroyWeak(&v7);
    objc_destroyWeak(&location);
  }

  return v3;
}

@end