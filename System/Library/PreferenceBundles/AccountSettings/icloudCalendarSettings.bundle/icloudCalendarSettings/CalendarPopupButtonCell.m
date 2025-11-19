@interface CalendarPopupButtonCell
- (CalendarPopupButtonCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (void)_configureConstraints;
- (void)_configureViews:(id)a3;
- (void)_setupViews;
- (void)prepareForReuse;
- (void)refreshCellContentsWithSpecifier:(id)a3;
- (void)setPopupMenu:(id)a3;
@end

@implementation CalendarPopupButtonCell

- (CalendarPopupButtonCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v7.receiver = self;
  v7.super_class = CalendarPopupButtonCell;
  v4 = [(CalendarPopupButtonCell *)&v7 initWithStyle:a3 reuseIdentifier:a4];
  v5 = v4;
  if (v4)
  {
    [(CalendarPopupButtonCell *)v4 _setupViews];
    [(CalendarPopupButtonCell *)v5 _configureConstraints];
  }

  return v5;
}

- (void)_setupViews
{
  v3 = objc_alloc_init(UIView);
  v4 = _containerView;
  _containerView = v3;

  v5 = objc_alloc_init(UILabel);
  [(CalendarPopupButtonCell *)self setRowLabel:v5];

  v6 = +[UIScreen mainScreen];
  v7 = [v6 traitCollection];
  v8 = [UIFont preferredFontForTextStyle:UIFontTextStyleBody compatibleWithTraitCollection:v7];
  v9 = [(CalendarPopupButtonCell *)self rowLabel];
  [v9 setFont:v8];

  v10 = [_callingSpecifier identifier];
  LODWORD(v9) = [v10 isEqualToString:@"SEND_FROM_SPECIFIER_ID"];

  v11 = [(CalendarPopupButtonCell *)self rowLabel];
  v13 = v11;
  if (v9)
  {
    LODWORD(v12) = 1148846080;
    [v11 setContentCompressionResistancePriority:0 forAxis:v12];
  }

  else
  {
    LODWORD(v12) = 1132068864;
    [v11 setContentCompressionResistancePriority:0 forAxis:v12];

    v13 = [(CalendarPopupButtonCell *)self popupButton];
    LODWORD(v14) = 1148846080;
    [v13 setContentHuggingPriority:0 forAxis:v14];
  }

  v15 = [(CalendarPopupButtonCell *)self rowLabel];
  [v15 setTranslatesAutoresizingMaskIntoConstraints:0];

  v16 = [(CalendarPopupButtonCell *)self rowLabel];
  v17 = +[UIColor labelColor];
  [v16 setTextColor:v17];

  v18 = [(CalendarPopupButtonCell *)self rowLabel];
  [v18 setNumberOfLines:1];

  v19 = [(CalendarPopupButtonCell *)self rowLabel];
  [v19 setLineBreakMode:4];

  v20 = [(CalendarPopupButtonCell *)self rowLabel];
  [_containerView bounds];
  [v20 setPreferredMaxLayoutWidth:v21];

  v22 = _containerView;
  v23 = [(CalendarPopupButtonCell *)self rowLabel];
  [v22 addSubview:v23];

  v24 = objc_alloc_init(UILayoutGuide);
  v25 = _layOutGuide;
  _layOutGuide = v24;

  [_layOutGuide setIdentifier:@"LAYOUT_IDENTIFIER"];
  [_containerView addLayoutGuide:_layOutGuide];
  v26 = +[UIButtonConfiguration plainButtonConfiguration];
  v27 = +[UIColor secondaryLabelColor];
  [v26 setBaseForegroundColor:v27];

  [v26 setTitleLineBreakMode:4];
  v28 = [UIButton buttonWithConfiguration:v26 primaryAction:0];
  [(CalendarPopupButtonCell *)self setPopupButton:v28];

  v29 = [(CalendarPopupButtonCell *)self popupButton];
  [v29 setTranslatesAutoresizingMaskIntoConstraints:0];

  v30 = [(CalendarPopupButtonCell *)self popupButton];
  [v30 setShowsMenuAsPrimaryAction:1];

  v31 = [(CalendarPopupButtonCell *)self popupButton];
  [v31 setChangesSelectionAsPrimaryAction:1];

  v32 = [(CalendarPopupButtonCell *)self popupButton];
  [v32 setShowsMenuAsPrimaryAction:1];

  v33 = [UIAction actionWithTitle:@"test" image:0 identifier:0 handler:&stru_147E8];
  v34 = [UIAction actionWithTitle:@"test1" image:0 identifier:0 handler:&stru_14808];
  v42[0] = v33;
  v42[1] = v34;
  v35 = [NSArray arrayWithObjects:v42 count:2];
  v36 = [UIMenu menuWithChildren:v35];
  v37 = [(CalendarPopupButtonCell *)self popupButton];
  [v37 setMenu:v36];

  v38 = [(CalendarPopupButtonCell *)self popupButton];
  [v38 sizeToFit];

  [_containerView setTranslatesAutoresizingMaskIntoConstraints:0];
  v39 = [(CalendarPopupButtonCell *)self contentView];
  [v39 addSubview:_containerView];

  v40 = [(CalendarPopupButtonCell *)self contentView];
  v41 = [(CalendarPopupButtonCell *)self popupButton];
  [v40 addSubview:v41];
}

- (void)_configureConstraints
{
  v46 = [_containerView leadingAnchor];
  v45 = [(CalendarPopupButtonCell *)self leadingAnchor];
  v44 = [v46 constraintEqualToAnchor:v45];
  v47[0] = v44;
  v42 = [_containerView trailingAnchor];
  v43 = [(CalendarPopupButtonCell *)self popupButton];
  v41 = [v43 leadingAnchor];
  v40 = [v42 constraintEqualToAnchor:v41];
  v47[1] = v40;
  v39 = [_containerView bottomAnchor];
  v38 = [(CalendarPopupButtonCell *)self bottomAnchor];
  v37 = [v39 constraintEqualToAnchor:v38];
  v47[2] = v37;
  v36 = [_containerView topAnchor];
  v35 = [(CalendarPopupButtonCell *)self topAnchor];
  v34 = [v36 constraintEqualToAnchor:v35];
  v47[3] = v34;
  v33 = [_layOutGuide widthAnchor];
  v32 = [v33 constraintEqualToConstant:10.0];
  v47[4] = v32;
  v31 = [_layOutGuide centerYAnchor];
  v30 = [_containerView centerYAnchor];
  v29 = [v31 constraintEqualToAnchor:v30];
  v47[5] = v29;
  v28 = [_layOutGuide trailingAnchor];
  v27 = [_containerView trailingAnchor];
  v26 = [v28 constraintEqualToAnchor:v27];
  v47[6] = v26;
  v25 = [(CalendarPopupButtonCell *)self rowLabel];
  v24 = [v25 leadingAnchor];
  v23 = [_containerView leadingAnchor];
  v22 = [v24 constraintEqualToAnchor:v23 constant:16.0];
  v47[7] = v22;
  v21 = [(CalendarPopupButtonCell *)self rowLabel];
  v20 = [v21 centerYAnchor];
  v19 = [_containerView centerYAnchor];
  v18 = [v20 constraintEqualToAnchor:v19];
  v47[8] = v18;
  v17 = [(CalendarPopupButtonCell *)self rowLabel];
  v16 = [v17 trailingAnchor];
  v15 = [_layOutGuide leadingAnchor];
  v14 = [v16 constraintEqualToAnchor:v15];
  v47[9] = v14;
  v13 = [(CalendarPopupButtonCell *)self popupButton];
  v3 = [v13 centerYAnchor];
  v4 = [(CalendarPopupButtonCell *)self contentView];
  v5 = [v4 centerYAnchor];
  v6 = [v3 constraintEqualToAnchor:v5];
  v47[10] = v6;
  v7 = [(CalendarPopupButtonCell *)self popupButton];
  v8 = [v7 trailingAnchor];
  v9 = [(CalendarPopupButtonCell *)self contentView];
  v10 = [v9 trailingAnchor];
  v11 = [v8 constraintEqualToAnchor:v10];
  v47[11] = v11;
  v12 = [NSArray arrayWithObjects:v47 count:12];
  [NSLayoutConstraint activateConstraints:v12];
}

- (void)_configureViews:(id)a3
{
  v4 = a3;
  v5 = [(CalendarPopupButtonCell *)self rowLabel];
  [v5 setText:v4];

  v6 = [(CalendarPopupButtonCell *)self rowLabel];
  [v6 setNumberOfLines:1];

  v7 = [(CalendarPopupButtonCell *)self rowLabel];
  [v7 setLineBreakMode:4];

  v8 = [_callingSpecifier identifier];
  LODWORD(v5) = [v8 isEqualToString:@"SEND_FROM_SPECIFIER_ID"];

  v9 = [(CalendarPopupButtonCell *)self rowLabel];
  v11 = v9;
  if (v5)
  {
    LODWORD(v10) = 1148846080;
    [v9 setContentCompressionResistancePriority:0 forAxis:v10];
  }

  else
  {
    LODWORD(v10) = 1132068864;
    [v9 setContentCompressionResistancePriority:0 forAxis:v10];

    v11 = [(CalendarPopupButtonCell *)self popupButton];
    LODWORD(v12) = 1148846080;
    [v11 setContentHuggingPriority:0 forAxis:v12];
  }

  v13 = [(CalendarPopupButtonCell *)self popupButton];
  [v13 sizeToFit];
}

- (void)setPopupMenu:(id)a3
{
  v4 = a3;
  v5 = [(CalendarPopupButtonCell *)self popupButton];
  [v5 setMenu:v4];

  v6 = [(CalendarPopupButtonCell *)self popupButton];
  [v6 sizeToFit];
}

- (void)refreshCellContentsWithSpecifier:(id)a3
{
  v5 = a3;
  v11.receiver = self;
  v11.super_class = CalendarPopupButtonCell;
  [(CalendarPopupButtonCell *)&v11 refreshCellContentsWithSpecifier:v5];
  objc_storeStrong(&_callingSpecifier, a3);
  v6 = [v5 target];
  v7 = [(CalendarPopupButtonCell *)self popupButton];
  [v7 addTarget:v6 action:objc_msgSend(v5 forControlEvents:{"buttonAction"), 64}];

  v8 = [_callingSpecifier identifier];
  LODWORD(v7) = [v8 isEqualToString:@"SEND_FROM_SPECIFIER_ID"];

  if (v7)
  {
    v9 = [NSBundle bundleForClass:objc_opt_class()];
    v10 = [v9 localizedStringForKey:@"CALENDAR_SEND_FROM_LABEL" value:&stru_14AB8 table:@"calendarSettings"];
    [(CalendarPopupButtonCell *)self _configureViews:v10];
  }

  else
  {
    v9 = [v5 identifier];
    [(CalendarPopupButtonCell *)self _configureViews:v9];
  }

  [(CalendarPopupButtonCell *)self layoutIfNeeded];
}

- (void)prepareForReuse
{
  v2.receiver = self;
  v2.super_class = CalendarPopupButtonCell;
  [(CalendarPopupButtonCell *)&v2 prepareForReuse];
}

@end