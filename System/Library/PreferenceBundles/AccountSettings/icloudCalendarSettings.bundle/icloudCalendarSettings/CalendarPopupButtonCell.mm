@interface CalendarPopupButtonCell
- (CalendarPopupButtonCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (void)_configureConstraints;
- (void)_configureViews:(id)views;
- (void)_setupViews;
- (void)prepareForReuse;
- (void)refreshCellContentsWithSpecifier:(id)specifier;
- (void)setPopupMenu:(id)menu;
@end

@implementation CalendarPopupButtonCell

- (CalendarPopupButtonCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v7.receiver = self;
  v7.super_class = CalendarPopupButtonCell;
  v4 = [(CalendarPopupButtonCell *)&v7 initWithStyle:style reuseIdentifier:identifier];
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
  traitCollection = [v6 traitCollection];
  v8 = [UIFont preferredFontForTextStyle:UIFontTextStyleBody compatibleWithTraitCollection:traitCollection];
  rowLabel = [(CalendarPopupButtonCell *)self rowLabel];
  [rowLabel setFont:v8];

  identifier = [_callingSpecifier identifier];
  LODWORD(rowLabel) = [identifier isEqualToString:@"SEND_FROM_SPECIFIER_ID"];

  rowLabel2 = [(CalendarPopupButtonCell *)self rowLabel];
  popupButton = rowLabel2;
  if (rowLabel)
  {
    LODWORD(v12) = 1148846080;
    [rowLabel2 setContentCompressionResistancePriority:0 forAxis:v12];
  }

  else
  {
    LODWORD(v12) = 1132068864;
    [rowLabel2 setContentCompressionResistancePriority:0 forAxis:v12];

    popupButton = [(CalendarPopupButtonCell *)self popupButton];
    LODWORD(v14) = 1148846080;
    [popupButton setContentHuggingPriority:0 forAxis:v14];
  }

  rowLabel3 = [(CalendarPopupButtonCell *)self rowLabel];
  [rowLabel3 setTranslatesAutoresizingMaskIntoConstraints:0];

  rowLabel4 = [(CalendarPopupButtonCell *)self rowLabel];
  v17 = +[UIColor labelColor];
  [rowLabel4 setTextColor:v17];

  rowLabel5 = [(CalendarPopupButtonCell *)self rowLabel];
  [rowLabel5 setNumberOfLines:1];

  rowLabel6 = [(CalendarPopupButtonCell *)self rowLabel];
  [rowLabel6 setLineBreakMode:4];

  rowLabel7 = [(CalendarPopupButtonCell *)self rowLabel];
  [_containerView bounds];
  [rowLabel7 setPreferredMaxLayoutWidth:v21];

  v22 = _containerView;
  rowLabel8 = [(CalendarPopupButtonCell *)self rowLabel];
  [v22 addSubview:rowLabel8];

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

  popupButton2 = [(CalendarPopupButtonCell *)self popupButton];
  [popupButton2 setTranslatesAutoresizingMaskIntoConstraints:0];

  popupButton3 = [(CalendarPopupButtonCell *)self popupButton];
  [popupButton3 setShowsMenuAsPrimaryAction:1];

  popupButton4 = [(CalendarPopupButtonCell *)self popupButton];
  [popupButton4 setChangesSelectionAsPrimaryAction:1];

  popupButton5 = [(CalendarPopupButtonCell *)self popupButton];
  [popupButton5 setShowsMenuAsPrimaryAction:1];

  v33 = [UIAction actionWithTitle:@"test" image:0 identifier:0 handler:&stru_147E8];
  v34 = [UIAction actionWithTitle:@"test1" image:0 identifier:0 handler:&stru_14808];
  v42[0] = v33;
  v42[1] = v34;
  v35 = [NSArray arrayWithObjects:v42 count:2];
  v36 = [UIMenu menuWithChildren:v35];
  popupButton6 = [(CalendarPopupButtonCell *)self popupButton];
  [popupButton6 setMenu:v36];

  popupButton7 = [(CalendarPopupButtonCell *)self popupButton];
  [popupButton7 sizeToFit];

  [_containerView setTranslatesAutoresizingMaskIntoConstraints:0];
  contentView = [(CalendarPopupButtonCell *)self contentView];
  [contentView addSubview:_containerView];

  contentView2 = [(CalendarPopupButtonCell *)self contentView];
  popupButton8 = [(CalendarPopupButtonCell *)self popupButton];
  [contentView2 addSubview:popupButton8];
}

- (void)_configureConstraints
{
  leadingAnchor = [_containerView leadingAnchor];
  leadingAnchor2 = [(CalendarPopupButtonCell *)self leadingAnchor];
  v44 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v47[0] = v44;
  trailingAnchor = [_containerView trailingAnchor];
  popupButton = [(CalendarPopupButtonCell *)self popupButton];
  leadingAnchor3 = [popupButton leadingAnchor];
  v40 = [trailingAnchor constraintEqualToAnchor:leadingAnchor3];
  v47[1] = v40;
  bottomAnchor = [_containerView bottomAnchor];
  bottomAnchor2 = [(CalendarPopupButtonCell *)self bottomAnchor];
  v37 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  v47[2] = v37;
  topAnchor = [_containerView topAnchor];
  topAnchor2 = [(CalendarPopupButtonCell *)self topAnchor];
  v34 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v47[3] = v34;
  widthAnchor = [_layOutGuide widthAnchor];
  v32 = [widthAnchor constraintEqualToConstant:10.0];
  v47[4] = v32;
  centerYAnchor = [_layOutGuide centerYAnchor];
  centerYAnchor2 = [_containerView centerYAnchor];
  v29 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
  v47[5] = v29;
  trailingAnchor2 = [_layOutGuide trailingAnchor];
  trailingAnchor3 = [_containerView trailingAnchor];
  v26 = [trailingAnchor2 constraintEqualToAnchor:trailingAnchor3];
  v47[6] = v26;
  rowLabel = [(CalendarPopupButtonCell *)self rowLabel];
  leadingAnchor4 = [rowLabel leadingAnchor];
  leadingAnchor5 = [_containerView leadingAnchor];
  v22 = [leadingAnchor4 constraintEqualToAnchor:leadingAnchor5 constant:16.0];
  v47[7] = v22;
  rowLabel2 = [(CalendarPopupButtonCell *)self rowLabel];
  centerYAnchor3 = [rowLabel2 centerYAnchor];
  centerYAnchor4 = [_containerView centerYAnchor];
  v18 = [centerYAnchor3 constraintEqualToAnchor:centerYAnchor4];
  v47[8] = v18;
  rowLabel3 = [(CalendarPopupButtonCell *)self rowLabel];
  trailingAnchor4 = [rowLabel3 trailingAnchor];
  leadingAnchor6 = [_layOutGuide leadingAnchor];
  v14 = [trailingAnchor4 constraintEqualToAnchor:leadingAnchor6];
  v47[9] = v14;
  popupButton2 = [(CalendarPopupButtonCell *)self popupButton];
  centerYAnchor5 = [popupButton2 centerYAnchor];
  contentView = [(CalendarPopupButtonCell *)self contentView];
  centerYAnchor6 = [contentView centerYAnchor];
  v6 = [centerYAnchor5 constraintEqualToAnchor:centerYAnchor6];
  v47[10] = v6;
  popupButton3 = [(CalendarPopupButtonCell *)self popupButton];
  trailingAnchor5 = [popupButton3 trailingAnchor];
  contentView2 = [(CalendarPopupButtonCell *)self contentView];
  trailingAnchor6 = [contentView2 trailingAnchor];
  v11 = [trailingAnchor5 constraintEqualToAnchor:trailingAnchor6];
  v47[11] = v11;
  v12 = [NSArray arrayWithObjects:v47 count:12];
  [NSLayoutConstraint activateConstraints:v12];
}

- (void)_configureViews:(id)views
{
  viewsCopy = views;
  rowLabel = [(CalendarPopupButtonCell *)self rowLabel];
  [rowLabel setText:viewsCopy];

  rowLabel2 = [(CalendarPopupButtonCell *)self rowLabel];
  [rowLabel2 setNumberOfLines:1];

  rowLabel3 = [(CalendarPopupButtonCell *)self rowLabel];
  [rowLabel3 setLineBreakMode:4];

  identifier = [_callingSpecifier identifier];
  LODWORD(rowLabel) = [identifier isEqualToString:@"SEND_FROM_SPECIFIER_ID"];

  rowLabel4 = [(CalendarPopupButtonCell *)self rowLabel];
  popupButton = rowLabel4;
  if (rowLabel)
  {
    LODWORD(v10) = 1148846080;
    [rowLabel4 setContentCompressionResistancePriority:0 forAxis:v10];
  }

  else
  {
    LODWORD(v10) = 1132068864;
    [rowLabel4 setContentCompressionResistancePriority:0 forAxis:v10];

    popupButton = [(CalendarPopupButtonCell *)self popupButton];
    LODWORD(v12) = 1148846080;
    [popupButton setContentHuggingPriority:0 forAxis:v12];
  }

  popupButton2 = [(CalendarPopupButtonCell *)self popupButton];
  [popupButton2 sizeToFit];
}

- (void)setPopupMenu:(id)menu
{
  menuCopy = menu;
  popupButton = [(CalendarPopupButtonCell *)self popupButton];
  [popupButton setMenu:menuCopy];

  popupButton2 = [(CalendarPopupButtonCell *)self popupButton];
  [popupButton2 sizeToFit];
}

- (void)refreshCellContentsWithSpecifier:(id)specifier
{
  specifierCopy = specifier;
  v11.receiver = self;
  v11.super_class = CalendarPopupButtonCell;
  [(CalendarPopupButtonCell *)&v11 refreshCellContentsWithSpecifier:specifierCopy];
  objc_storeStrong(&_callingSpecifier, specifier);
  target = [specifierCopy target];
  popupButton = [(CalendarPopupButtonCell *)self popupButton];
  [popupButton addTarget:target action:objc_msgSend(specifierCopy forControlEvents:{"buttonAction"), 64}];

  identifier = [_callingSpecifier identifier];
  LODWORD(popupButton) = [identifier isEqualToString:@"SEND_FROM_SPECIFIER_ID"];

  if (popupButton)
  {
    identifier2 = [NSBundle bundleForClass:objc_opt_class()];
    v10 = [identifier2 localizedStringForKey:@"CALENDAR_SEND_FROM_LABEL" value:&stru_14AB8 table:@"calendarSettings"];
    [(CalendarPopupButtonCell *)self _configureViews:v10];
  }

  else
  {
    identifier2 = [specifierCopy identifier];
    [(CalendarPopupButtonCell *)self _configureViews:identifier2];
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