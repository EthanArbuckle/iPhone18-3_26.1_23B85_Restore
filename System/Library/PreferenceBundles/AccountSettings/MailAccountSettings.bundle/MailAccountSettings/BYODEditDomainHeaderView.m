@interface BYODEditDomainHeaderView
- (BYODEditDomainHeaderView)initWithSpecifier:(id)a3;
- (double)preferredHeightForWidth:(double)a3 inTableView:(id)a4;
- (void)showDoneButton:(id)a3;
- (void)toggleDoneButton:(BOOL)a3;
@end

@implementation BYODEditDomainHeaderView

- (BYODEditDomainHeaderView)initWithSpecifier:(id)a3
{
  v4 = a3;
  v57.receiver = self;
  v57.super_class = BYODEditDomainHeaderView;
  v5 = [(BYODEditDomainHeaderView *)&v57 init];
  if (v5)
  {
    v6 = objc_alloc_init(UILabel);
    v7 = _headerTitleLabel;
    _headerTitleLabel = v6;

    v8 = [v4 propertyForKey:@"headerTitle"];
    [_headerTitleLabel setText:v8];

    if (MUISolariumFeatureEnabled())
    {
      v9 = +[UIListContentConfiguration headerConfiguration];
      v10 = [v9 textProperties];
      v11 = [v10 font];
      [_headerTitleLabel setFont:v11];

      v12 = [v9 textProperties];
      v13 = [v12 color];
      [_headerTitleLabel setTextColor:v13];
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
    v56 = [v4 target];
    v16 = [UIButton buttonWithType:1];
    v17 = _editButton;
    _editButton = v16;

    v18 = _editButton;
    v19 = [NSBundle bundleForClass:objc_opt_class()];
    v20 = [v19 localizedStringForKey:@"EDIT" value:&stru_B9FC8 table:@"AccountPreferences"];
    [v18 setTitle:v20 forState:0];

    [_editButton addTarget:v56 action:objc_msgSend(v4 forControlEvents:{"buttonAction"), 64}];
    [_editButton setTranslatesAutoresizingMaskIntoConstraints:0];
    [(BYODEditDomainHeaderView *)v5 addSubview:_editButton];
    v21 = [UIButton buttonWithType:1];
    v22 = _doneButton;
    _doneButton = v21;

    v23 = _doneButton;
    v24 = [NSBundle bundleForClass:objc_opt_class()];
    v25 = [v24 localizedStringForKey:@"DONE" value:&stru_B9FC8 table:@"AccountPreferences"];
    [v23 setTitle:v25 forState:0];

    [_doneButton addTarget:v56 action:objc_msgSend(v4 forControlEvents:{"buttonAction"), 64}];
    [_doneButton setTranslatesAutoresizingMaskIntoConstraints:0];
    [(BYODEditDomainHeaderView *)v5 addSubview:_doneButton];
    v26 = [v4 propertyForKey:@"tableEditing"];
    LODWORD(v23) = [v26 isEqualToString:@"YES"];

    v27 = &_editButton;
    if (!v23)
    {
      v27 = &_doneButton;
    }

    [*v27 setHidden:1];
    v28 = [_headerTitleLabel topAnchor];
    v29 = [(BYODEditDomainHeaderView *)v5 topAnchor];
    v30 = [v28 constraintEqualToAnchor:v29 constant:10.0];
    [v30 setActive:1];

    if (MUISolariumFeatureEnabled())
    {
      v31 = [_headerTitleLabel leadingAnchor];
      v32 = [(BYODEditDomainHeaderView *)v5 leadingAnchor];
      [v31 constraintEqualToAnchor:v32 constant:20.0];
    }

    else
    {
      v31 = [_headerTitleLabel leadingAnchor];
      v32 = [(BYODEditDomainHeaderView *)v5 leadingAnchor];
      [v31 constraintEqualToAnchor:v32 constant:10.0];
    }
    v33 = ;
    [v33 setActive:1];

    v34 = [_headerTitleLabel bottomAnchor];
    v35 = [(BYODEditDomainHeaderView *)v5 bottomAnchor];
    v36 = [v34 constraintEqualToAnchor:v35 constant:-5.0];
    [v36 setActive:1];

    v37 = [_editButton topAnchor];
    v38 = [(BYODEditDomainHeaderView *)v5 topAnchor];
    v39 = [v37 constraintEqualToAnchor:v38 constant:10.0];
    [v39 setActive:1];

    v40 = [_editButton trailingAnchor];
    v41 = [(BYODEditDomainHeaderView *)v5 trailingAnchor];
    v42 = [v40 constraintEqualToAnchor:v41 constant:-10.0];
    [v42 setActive:1];

    v43 = [_editButton bottomAnchor];
    v44 = [(BYODEditDomainHeaderView *)v5 bottomAnchor];
    v45 = [v43 constraintEqualToAnchor:v44 constant:-5.0];
    [v45 setActive:1];

    v46 = [_doneButton topAnchor];
    v47 = [(BYODEditDomainHeaderView *)v5 topAnchor];
    v48 = [v46 constraintEqualToAnchor:v47 constant:10.0];
    [v48 setActive:1];

    v49 = [_doneButton trailingAnchor];
    v50 = [(BYODEditDomainHeaderView *)v5 trailingAnchor];
    v51 = [v49 constraintEqualToAnchor:v50 constant:-10.0];
    [v51 setActive:1];

    v52 = [_doneButton bottomAnchor];
    v53 = [(BYODEditDomainHeaderView *)v5 bottomAnchor];
    v54 = [v52 constraintEqualToAnchor:v53 constant:-5.0];
    [v54 setActive:1];
  }

  return v5;
}

- (double)preferredHeightForWidth:(double)a3 inTableView:(id)a4
{
  v4 = [_headerTitleLabel text];
  v5 = [v4 length];

  if (v5)
  {
    v6 = [_headerTitleLabel font];
    [v6 ascender];
    v8 = v7;
    v9 = [_headerTitleLabel font];
    [v9 descender];
    v11 = v8 - v10 + 12.0;
  }

  else
  {
    v11 = 0.0;
  }

  v12 = [_editButton titleLabel];
  v13 = [v12 text];
  v14 = [v13 length];

  if (v14)
  {
    v15 = [v12 font];
    [v15 ascender];
    v17 = v16;
    v18 = [v12 font];
    [v18 descender];
    v20 = v17 - v19 + 12.0;
  }

  else
  {
    v20 = 0.0;
  }

  return round(fmax(v11, v20));
}

- (void)showDoneButton:(id)a3
{
  v5 = a3;
  [_editButton setHidden:1];
  [_doneButton setHidden:0];
  v3 = _doneButton;
  v4 = [v5 target];
  [v3 addTarget:v4 action:objc_msgSend(v5 forControlEvents:{"buttonAction"), 64}];
}

- (void)toggleDoneButton:(BOOL)a3
{
  v3 = a3;
  [_editButton setHidden:?];
  v4 = _doneButton;

  [v4 setHidden:!v3];
}

@end