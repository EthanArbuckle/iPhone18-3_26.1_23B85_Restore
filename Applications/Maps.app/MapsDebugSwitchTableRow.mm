@interface MapsDebugSwitchTableRow
- (MapsDebugSwitchTableRow)init;
- (id)_createToggleForIdiom:(int64_t)idiom;
- (void)_configureTapGesture:(id)gesture;
- (void)_didTapContent:(id)content;
- (void)_switchDidChangeValue:(id)value;
- (void)configureCell:(id)cell;
- (void)configureCollectionViewCell:(id)cell;
- (void)invalidate;
@end

@implementation MapsDebugSwitchTableRow

- (void)_didTapContent:(id)content
{
  toggle = self->_toggle;
  if (toggle)
  {
    [(UISwitch *)toggle setOn:[(UISwitch *)self->_toggle isOn]^ 1 animated:1];
    v5 = self->_toggle;

    [(MapsDebugSwitchTableRow *)self _switchDidChangeValue:v5];
  }
}

- (void)_switchDidChangeValue:(id)value
{
  isOn = [value isOn];
  v5 = [(MapsDebugSwitchTableRow *)self set];

  if (v5)
  {
    v6 = [(MapsDebugSwitchTableRow *)self set];
    v6[2](v6, isOn);
  }
}

- (void)_configureTapGesture:(id)gesture
{
  gestureCopy = gesture;
  if (gestureCopy)
  {
    v9 = gestureCopy;
    tapGestureRecognizer = self->_tapGestureRecognizer;
    if (tapGestureRecognizer)
    {
      view = [(UITapGestureRecognizer *)tapGestureRecognizer view];
      [view removeGestureRecognizer:self->_tapGestureRecognizer];
    }

    v7 = [[UITapGestureRecognizer alloc] initWithTarget:self action:"_didTapContent:"];
    v8 = self->_tapGestureRecognizer;
    self->_tapGestureRecognizer = v7;

    [v9 setUserInteractionEnabled:1];
    [v9 addGestureRecognizer:self->_tapGestureRecognizer];
    gestureCopy = v9;
  }
}

- (void)configureCollectionViewCell:(id)cell
{
  cellCopy = cell;
  v23.receiver = self;
  v23.super_class = MapsDebugSwitchTableRow;
  [(MapsDebugTableRow *)&v23 configureCollectionViewCell:cellCopy];
  v5 = cellCopy;
  defaultContentConfiguration = [v5 defaultContentConfiguration];
  title = [(MapsDebugTableRow *)self title];
  [defaultContentConfiguration setText:title];

  subtitle = [(MapsDebugTableRow *)self subtitle];
  [defaultContentConfiguration setSecondaryText:subtitle];

  if (self->_enabled)
  {
    +[UIColor labelColor];
  }

  else
  {
    +[UIColor secondaryLabelColor];
  }
  v9 = ;
  textProperties = [defaultContentConfiguration textProperties];
  [textProperties setColor:v9];

  if (!self->_enabled)
  {
    image = [defaultContentConfiguration image];

    if (image)
    {
      image2 = [defaultContentConfiguration image];
      v13 = [image2 _mapkit_imageWithAlpha:0.5];
      [defaultContentConfiguration setImage:v13];
    }
  }

  [v5 setContentConfiguration:defaultContentConfiguration];
  traitCollection = [v5 traitCollection];
  v15 = -[MapsDebugSwitchTableRow _createToggleForIdiom:](self, "_createToggleForIdiom:", [traitCollection userInterfaceIdiom]);

  toggle = self->_toggle;
  self->_toggle = v15;
  v17 = v15;

  v18 = [[_UICellAccessoryConfigurationCustomView alloc] initWithCustomView:v17];
  traitCollection2 = [v5 traitCollection];
  userInterfaceIdiom = [traitCollection2 userInterfaceIdiom];

  if (userInterfaceIdiom == 5)
  {
    v25 = v18;
    v21 = [NSArray arrayWithObjects:&v25 count:1];

    [v5 setLeadingAccessoryConfigurations:v21];
    contentView = [v5 contentView];
    [(MapsDebugSwitchTableRow *)self _configureTapGesture:contentView];
  }

  else
  {
    v24 = v18;
    contentView = [NSArray arrayWithObjects:&v24 count:1];

    [v5 setTrailingAccessoryConfigurations:contentView];
  }
}

- (void)configureCell:(id)cell
{
  cellCopy = cell;
  v15.receiver = self;
  v15.super_class = MapsDebugSwitchTableRow;
  [(MapsDebugTableRow *)&v15 configureCell:cellCopy];
  traitCollection = [cellCopy traitCollection];
  v6 = -[MapsDebugSwitchTableRow _createToggleForIdiom:](self, "_createToggleForIdiom:", [traitCollection userInterfaceIdiom]);

  [cellCopy setAccessoryView:v6];
  toggle = self->_toggle;
  self->_toggle = v6;
  v8 = v6;

  contentConfiguration = [cellCopy contentConfiguration];
  if (self->_enabled)
  {
    +[UIColor labelColor];
  }

  else
  {
    +[UIColor secondaryLabelColor];
  }
  v10 = ;

  textProperties = [contentConfiguration textProperties];
  [textProperties setColor:v10];

  [cellCopy setContentConfiguration:contentConfiguration];
  traitCollection2 = [cellCopy traitCollection];
  userInterfaceIdiom = [traitCollection2 userInterfaceIdiom];

  if (userInterfaceIdiom == 5)
  {
    contentView = [cellCopy contentView];
    [(MapsDebugSwitchTableRow *)self _configureTapGesture:contentView];
  }
}

- (id)_createToggleForIdiom:(int64_t)idiom
{
  v4 = off_1015F64D8;
  if (idiom != 5)
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