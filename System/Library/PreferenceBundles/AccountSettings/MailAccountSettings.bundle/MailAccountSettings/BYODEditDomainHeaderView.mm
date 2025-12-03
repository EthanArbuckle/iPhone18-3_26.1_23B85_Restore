@interface BYODEditDomainHeaderView
- (BYODEditDomainHeaderView)initWithSpecifier:(id)specifier;
- (double)preferredHeightForWidth:(double)width inTableView:(id)view;
- (void)showDoneButton:(id)button;
- (void)toggleDoneButton:(BOOL)button;
@end

@implementation BYODEditDomainHeaderView

- (BYODEditDomainHeaderView)initWithSpecifier:(id)specifier
{
  specifierCopy = specifier;
  v57.receiver = self;
  v57.super_class = BYODEditDomainHeaderView;
  v5 = [(BYODEditDomainHeaderView *)&v57 init];
  if (v5)
  {
    v6 = objc_alloc_init(UILabel);
    v7 = _headerTitleLabel;
    _headerTitleLabel = v6;

    v8 = [specifierCopy propertyForKey:@"headerTitle"];
    [_headerTitleLabel setText:v8];

    if (MUISolariumFeatureEnabled())
    {
      v9 = +[UIListContentConfiguration headerConfiguration];
      textProperties = [v9 textProperties];
      font = [textProperties font];
      [_headerTitleLabel setFont:font];

      textProperties2 = [v9 textProperties];
      color = [textProperties2 color];
      [_headerTitleLabel setTextColor:color];
    }

    else
    {
      v14 = PreferencesTableViewHeaderFont();
      [_headerTitleLabel setFont:v14];

      v9 = +[UIColor secondaryLabelColor];
      [_headerTitleLabel setTextColor:v9];
    }

    v15 = +[UIColor clearColor];
    [_headerTitleLabel setBackgroundColor:v15];

    [_headerTitleLabel setTextAlignment:4];
    [_headerTitleLabel setLineBreakMode:0];
    [_headerTitleLabel setNumberOfLines:0];
    [_headerTitleLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    [(BYODEditDomainHeaderView *)v5 addSubview:_headerTitleLabel];
    target = [specifierCopy target];
    v16 = [UIButton buttonWithType:1];
    v17 = _editButton;
    _editButton = v16;

    v18 = _editButton;
    v19 = [NSBundle bundleForClass:objc_opt_class()];
    v20 = [v19 localizedStringForKey:@"EDIT" value:&stru_B9FC8 table:@"AccountPreferences"];
    [v18 setTitle:v20 forState:0];

    [_editButton addTarget:target action:objc_msgSend(specifierCopy forControlEvents:{"buttonAction"), 64}];
    [_editButton setTranslatesAutoresizingMaskIntoConstraints:0];
    [(BYODEditDomainHeaderView *)v5 addSubview:_editButton];
    v21 = [UIButton buttonWithType:1];
    v22 = _doneButton;
    _doneButton = v21;

    v23 = _doneButton;
    v24 = [NSBundle bundleForClass:objc_opt_class()];
    v25 = [v24 localizedStringForKey:@"DONE" value:&stru_B9FC8 table:@"AccountPreferences"];
    [v23 setTitle:v25 forState:0];

    [_doneButton addTarget:target action:objc_msgSend(specifierCopy forControlEvents:{"buttonAction"), 64}];
    [_doneButton setTranslatesAutoresizingMaskIntoConstraints:0];
    [(BYODEditDomainHeaderView *)v5 addSubview:_doneButton];
    v26 = [specifierCopy propertyForKey:@"tableEditing"];
    LODWORD(v23) = [v26 isEqualToString:@"YES"];

    v27 = &_editButton;
    if (!v23)
    {
      v27 = &_doneButton;
    }

    [*v27 setHidden:1];
    topAnchor = [_headerTitleLabel topAnchor];
    topAnchor2 = [(BYODEditDomainHeaderView *)v5 topAnchor];
    v30 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:10.0];
    [v30 setActive:1];

    if (MUISolariumFeatureEnabled())
    {
      leadingAnchor = [_headerTitleLabel leadingAnchor];
      leadingAnchor2 = [(BYODEditDomainHeaderView *)v5 leadingAnchor];
      [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:20.0];
    }

    else
    {
      leadingAnchor = [_headerTitleLabel leadingAnchor];
      leadingAnchor2 = [(BYODEditDomainHeaderView *)v5 leadingAnchor];
      [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:10.0];
    }
    v33 = ;
    [v33 setActive:1];

    bottomAnchor = [_headerTitleLabel bottomAnchor];
    bottomAnchor2 = [(BYODEditDomainHeaderView *)v5 bottomAnchor];
    v36 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2 constant:-5.0];
    [v36 setActive:1];

    topAnchor3 = [_editButton topAnchor];
    topAnchor4 = [(BYODEditDomainHeaderView *)v5 topAnchor];
    v39 = [topAnchor3 constraintEqualToAnchor:topAnchor4 constant:10.0];
    [v39 setActive:1];

    trailingAnchor = [_editButton trailingAnchor];
    trailingAnchor2 = [(BYODEditDomainHeaderView *)v5 trailingAnchor];
    v42 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:-10.0];
    [v42 setActive:1];

    bottomAnchor3 = [_editButton bottomAnchor];
    bottomAnchor4 = [(BYODEditDomainHeaderView *)v5 bottomAnchor];
    v45 = [bottomAnchor3 constraintEqualToAnchor:bottomAnchor4 constant:-5.0];
    [v45 setActive:1];

    topAnchor5 = [_doneButton topAnchor];
    topAnchor6 = [(BYODEditDomainHeaderView *)v5 topAnchor];
    v48 = [topAnchor5 constraintEqualToAnchor:topAnchor6 constant:10.0];
    [v48 setActive:1];

    trailingAnchor3 = [_doneButton trailingAnchor];
    trailingAnchor4 = [(BYODEditDomainHeaderView *)v5 trailingAnchor];
    v51 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4 constant:-10.0];
    [v51 setActive:1];

    bottomAnchor5 = [_doneButton bottomAnchor];
    bottomAnchor6 = [(BYODEditDomainHeaderView *)v5 bottomAnchor];
    v54 = [bottomAnchor5 constraintEqualToAnchor:bottomAnchor6 constant:-5.0];
    [v54 setActive:1];
  }

  return v5;
}

- (double)preferredHeightForWidth:(double)width inTableView:(id)view
{
  text = [_headerTitleLabel text];
  v5 = [text length];

  if (v5)
  {
    font = [_headerTitleLabel font];
    [font ascender];
    v8 = v7;
    font2 = [_headerTitleLabel font];
    [font2 descender];
    v11 = v8 - v10 + 12.0;
  }

  else
  {
    v11 = 0.0;
  }

  titleLabel = [_editButton titleLabel];
  text2 = [titleLabel text];
  v14 = [text2 length];

  if (v14)
  {
    font3 = [titleLabel font];
    [font3 ascender];
    v17 = v16;
    font4 = [titleLabel font];
    [font4 descender];
    v20 = v17 - v19 + 12.0;
  }

  else
  {
    v20 = 0.0;
  }

  return round(fmax(v11, v20));
}

- (void)showDoneButton:(id)button
{
  buttonCopy = button;
  [_editButton setHidden:1];
  [_doneButton setHidden:0];
  v3 = _doneButton;
  target = [buttonCopy target];
  [v3 addTarget:target action:objc_msgSend(buttonCopy forControlEvents:{"buttonAction"), 64}];
}

- (void)toggleDoneButton:(BOOL)button
{
  buttonCopy = button;
  [_editButton setHidden:?];
  v4 = _doneButton;

  [v4 setHidden:!buttonCopy];
}

@end