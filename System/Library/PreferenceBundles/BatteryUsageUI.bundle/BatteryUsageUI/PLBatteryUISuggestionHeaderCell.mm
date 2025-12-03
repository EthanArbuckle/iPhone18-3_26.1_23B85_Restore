@interface PLBatteryUISuggestionHeaderCell
- (PLBatteryUISuggestionHeaderCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier specifier:(id)specifier;
- (PLBatteryUISuggestionHeaderCellDelegate)delegate;
- (void)buttonAction:(id)action;
- (void)layoutSubviews;
- (void)refreshCellContentsWithSpecifier:(id)specifier;
- (void)updateButton;
- (void)updateConstraints;
@end

@implementation PLBatteryUISuggestionHeaderCell

- (PLBatteryUISuggestionHeaderCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier specifier:(id)specifier
{
  specifierCopy = specifier;
  v48.receiver = self;
  v48.super_class = PLBatteryUISuggestionHeaderCell;
  v9 = [(PLBatteryUISuggestionHeaderCell *)&v48 initWithStyle:style reuseIdentifier:identifier specifier:specifierCopy];
  if (v9)
  {
    v10 = +[UIColor clearColor];
    [(PLBatteryUISuggestionHeaderCell *)v9 setBackgroundColor:v10];

    contentView = [(PLBatteryUISuggestionHeaderCell *)v9 contentView];
    v12 = [UILabel alloc];
    y = CGRectZero.origin.y;
    width = CGRectZero.size.width;
    height = CGRectZero.size.height;
    v16 = [v12 initWithFrame:{CGRectZero.origin.x, y, width, height}];
    [(PLBatteryUISuggestionHeaderCell *)v9 setHeaderTitleLabel:v16];

    headerTitleLabel = [(PLBatteryUISuggestionHeaderCell *)v9 headerTitleLabel];
    [headerTitleLabel setAccessibilityIdentifier:@"SuggestionHeader"];

    v18 = [UIFont preferredFontForTextStyle:UIFontTextStyleFootnote];
    headerTitleLabel2 = [(PLBatteryUISuggestionHeaderCell *)v9 headerTitleLabel];
    [headerTitleLabel2 setFont:v18];

    headerTitleLabel3 = [(PLBatteryUISuggestionHeaderCell *)v9 headerTitleLabel];
    [headerTitleLabel3 setTranslatesAutoresizingMaskIntoConstraints:0];

    v21 = +[UIColor _secondaryLabelColor];
    headerTitleLabel4 = [(PLBatteryUISuggestionHeaderCell *)v9 headerTitleLabel];
    [headerTitleLabel4 setTextColor:v21];

    v23 = +[PLBatteryUIUtilities localizedLeftTextAlignment];
    headerTitleLabel5 = [(PLBatteryUISuggestionHeaderCell *)v9 headerTitleLabel];
    [headerTitleLabel5 setTextAlignment:v23];

    v25 = +[UIColor clearColor];
    headerTitleLabel6 = [(PLBatteryUISuggestionHeaderCell *)v9 headerTitleLabel];
    [headerTitleLabel6 setBackgroundColor:v25];

    headerTitleLabel7 = [(PLBatteryUISuggestionHeaderCell *)v9 headerTitleLabel];
    [headerTitleLabel7 setNumberOfLines:0];

    headerTitleLabel8 = [(PLBatteryUISuggestionHeaderCell *)v9 headerTitleLabel];
    [headerTitleLabel8 setLineBreakMode:0];

    headerTitleLabel9 = [(PLBatteryUISuggestionHeaderCell *)v9 headerTitleLabel];
    [contentView addSubview:headerTitleLabel9];

    v30 = [[UILabel alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
    [(PLBatteryUISuggestionHeaderCell *)v9 setHeaderShowAllButton:v30];

    headerShowAllButton = [(PLBatteryUISuggestionHeaderCell *)v9 headerShowAllButton];
    [headerShowAllButton setAccessibilityIdentifier:@"ShowAllButton"];

    headerShowAllButton2 = [(PLBatteryUISuggestionHeaderCell *)v9 headerShowAllButton];
    [headerShowAllButton2 setTranslatesAutoresizingMaskIntoConstraints:0];

    v33 = +[UIColor systemBlueColor];
    headerShowAllButton3 = [(PLBatteryUISuggestionHeaderCell *)v9 headerShowAllButton];
    [headerShowAllButton3 setTextColor:v33];

    headerShowAllButton4 = [(PLBatteryUISuggestionHeaderCell *)v9 headerShowAllButton];
    [headerShowAllButton4 setEnabled:1];

    headerShowAllButton5 = [(PLBatteryUISuggestionHeaderCell *)v9 headerShowAllButton];
    [headerShowAllButton5 setHidden:0];

    v37 = [UIFont preferredFontForTextStyle:UIFontTextStyleFootnote];
    headerShowAllButton6 = [(PLBatteryUISuggestionHeaderCell *)v9 headerShowAllButton];
    [headerShowAllButton6 setFont:v37];

    headerShowAllButton7 = [(PLBatteryUISuggestionHeaderCell *)v9 headerShowAllButton];
    [headerShowAllButton7 setNumberOfLines:0];

    v40 = +[PLBatteryUIUtilities localizedRightTextAlignment];
    headerShowAllButton8 = [(PLBatteryUISuggestionHeaderCell *)v9 headerShowAllButton];
    [headerShowAllButton8 setTextAlignment:v40];

    headerShowAllButton9 = [(PLBatteryUISuggestionHeaderCell *)v9 headerShowAllButton];
    [headerShowAllButton9 setLineBreakMode:0];

    headerShowAllButton10 = [(PLBatteryUISuggestionHeaderCell *)v9 headerShowAllButton];
    [contentView addSubview:headerShowAllButton10];

    [(PLBatteryUISuggestionHeaderCell *)v9 setSeparatorInset:0.0, 0.0, 0.0, 0.0];
    headerShowAllButton11 = [(PLBatteryUISuggestionHeaderCell *)v9 headerShowAllButton];
    [headerShowAllButton11 setUserInteractionEnabled:1];

    v45 = [[UITapGestureRecognizer alloc] initWithTarget:v9 action:"buttonAction:"];
    [v45 setNumberOfTapsRequired:1];
    headerShowAllButton12 = [(PLBatteryUISuggestionHeaderCell *)v9 headerShowAllButton];
    [headerShowAllButton12 addGestureRecognizer:v45];

    [(PLBatteryUISuggestionHeaderCell *)v9 refreshCellContentsWithSpecifier:specifierCopy];
  }

  return v9;
}

- (void)updateConstraints
{
  headerTitleLabel = [(PLBatteryUISuggestionHeaderCell *)self headerTitleLabel];
  text = [headerTitleLabel text];
  headerTitleLabel2 = [(PLBatteryUISuggestionHeaderCell *)self headerTitleLabel];
  font = [headerTitleLabel2 font];
  [PLBatteryUIUtilities getOneLineWidthOfText:text withFont:font];
  v8 = v7;

  headerShowAllButton = [(PLBatteryUISuggestionHeaderCell *)self headerShowAllButton];
  text2 = [headerShowAllButton text];
  headerShowAllButton2 = [(PLBatteryUISuggestionHeaderCell *)self headerShowAllButton];
  font2 = [headerShowAllButton2 font];
  [PLBatteryUIUtilities getOneLineWidthOfText:text2 withFont:font2];
  v14 = v13;

  [(PLBatteryUISuggestionHeaderCell *)self frame];
  if (v8 + v14 + 30.0 + 3.0 <= v15)
  {
    v16 = v8 / v14;
  }

  else
  {
    v16 = 1.0;
  }

  headerTitleLabel3 = [(PLBatteryUISuggestionHeaderCell *)self headerTitleLabel];
  headerShowAllButton3 = [(PLBatteryUISuggestionHeaderCell *)self headerShowAllButton];
  v19 = [NSLayoutConstraint constraintWithItem:headerTitleLabel3 attribute:7 relatedBy:0 toItem:headerShowAllButton3 attribute:7 multiplier:v16 constant:0.0];

  widthConstraint = [(PLBatteryUISuggestionHeaderCell *)self widthConstraint];

  if (widthConstraint)
  {
    contentView = [(PLBatteryUISuggestionHeaderCell *)self contentView];
    widthConstraint2 = [(PLBatteryUISuggestionHeaderCell *)self widthConstraint];
    [contentView removeConstraint:widthConstraint2];

    [(PLBatteryUISuggestionHeaderCell *)self setWidthConstraint:v19];
    v35 = v19;
    v23 = [NSArray arrayWithObjects:&v35 count:1];
    [NSLayoutConstraint activateConstraints:v23];

    v34.receiver = self;
    v34.super_class = PLBatteryUISuggestionHeaderCell;
    [(PLBatteryUISuggestionHeaderCell *)&v34 updateConstraints];
  }

  else
  {
    v24 = +[NSMutableArray array];
    headerTitleLabel4 = [(PLBatteryUISuggestionHeaderCell *)self headerTitleLabel];
    [headerTitleLabel4 sizeToFit];

    headerShowAllButton4 = [(PLBatteryUISuggestionHeaderCell *)self headerShowAllButton];
    [headerShowAllButton4 sizeToFit];

    v27 = _NSDictionaryOfVariableBindings(@"_headerTitleLabel, _headerShowAllButton", self->_headerTitleLabel, self->_headerShowAllButton, 0);
    v28 = _NSDictionaryOfVariableBindings(@"labelMargin, bottomMargin", &off_173598, &off_1735B0, 0);
    v29 = +[NSLayoutConstraint constraintsWithVisualFormat:options:metrics:views:](NSLayoutConstraint, "constraintsWithVisualFormat:options:metrics:views:", @"H:|-labelMargin-[_headerTitleLabel]-3-[_headerShowAllButton]-labelMargin-|", 0, v28, v27);
    v30 = +[NSLayoutConstraint constraintsWithVisualFormat:options:metrics:views:](NSLayoutConstraint, "constraintsWithVisualFormat:options:metrics:views:", @"V:|-10-[_headerTitleLabel]-bottomMargin-|", 0, v28, v27);
    v31 = +[NSLayoutConstraint constraintsWithVisualFormat:options:metrics:views:](NSLayoutConstraint, "constraintsWithVisualFormat:options:metrics:views:", @"V:|-10-[_headerShowAllButton]-bottomMargin-|", 0, v28, v27);
    v32 = [NSLayoutConstraint constraintsWithVisualFormat:@"V:[_headerTitleLabel(==_headerShowAllButton)]" options:0 metrics:0 views:v27];
    [(PLBatteryUISuggestionHeaderCell *)self setWidthConstraint:v19];
    [v24 addObjectsFromArray:v29];
    [v24 addObjectsFromArray:v30];
    [v24 addObjectsFromArray:v31];
    [v24 addObjectsFromArray:v32];
    [v24 addObject:v19];
    [NSLayoutConstraint activateConstraints:v24];
    v33.receiver = self;
    v33.super_class = PLBatteryUISuggestionHeaderCell;
    [(PLBatteryUISuggestionHeaderCell *)&v33 updateConstraints];
  }
}

- (void)refreshCellContentsWithSpecifier:(id)specifier
{
  v11.receiver = self;
  v11.super_class = PLBatteryUISuggestionHeaderCell;
  specifierCopy = specifier;
  [(PLBatteryUISuggestionHeaderCell *)&v11 refreshCellContentsWithSpecifier:specifierCopy];
  v5 = [specifierCopy propertyForKey:{@"PLBatteryUISuggestionShowAll", v11.receiver, v11.super_class}];
  -[PLBatteryUISuggestionHeaderCell setShowAll:](self, "setShowAll:", [v5 BOOLValue]);

  v6 = [specifierCopy propertyForKey:@"PLBatteryUISuggestionTitle"];
  [(PLBatteryUISuggestionHeaderCell *)self setSuggestionTitle:v6];

  suggestionTitle = [(PLBatteryUISuggestionHeaderCell *)self suggestionTitle];
  headerTitleLabel = [(PLBatteryUISuggestionHeaderCell *)self headerTitleLabel];
  [headerTitleLabel setText:suggestionTitle];

  v9 = [specifierCopy propertyForKey:@"PLBatteryUISuggestionHeaderCellDelegateWrapperKey"];

  buiViewController = [v9 buiViewController];
  [(PLBatteryUISuggestionHeaderCell *)self setDelegate:buiViewController];

  [(PLBatteryUISuggestionHeaderCell *)self updateButton];
  [(PLBatteryUISuggestionHeaderCell *)self setNeedsUpdateConstraints];
  [(PLBatteryUISuggestionHeaderCell *)self setNeedsDisplay];
  [(PLBatteryUISuggestionHeaderCell *)self setNeedsLayout];
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = PLBatteryUISuggestionHeaderCell;
  [(PLBatteryUISuggestionHeaderCell *)&v3 layoutSubviews];
  [(PLBatteryUISuggestionHeaderCell *)self setSeparatorStyle:0];
}

- (void)updateButton
{
  headerShowAllButton = [(PLBatteryUISuggestionHeaderCell *)self headerShowAllButton];
  [headerShowAllButton setHidden:0];

  LODWORD(headerShowAllButton) = [(PLBatteryUISuggestionHeaderCell *)self showAll];
  specifier = [(PLBatteryUISuggestionHeaderCell *)self specifier];
  v5 = specifier;
  if (headerShowAllButton)
  {
    v6 = @"PLBatteryUISuggestionShowLessText";
  }

  else
  {
    v6 = @"PLBatteryUISuggestionShowAllText";
  }

  v12 = [specifier propertyForKey:v6];

  headerShowAllButton2 = [(PLBatteryUISuggestionHeaderCell *)self headerShowAllButton];
  [headerShowAllButton2 setText:v12];

  specifier2 = [(PLBatteryUISuggestionHeaderCell *)self specifier];
  v9 = [specifier2 propertyForKey:@"PLBatteryUISuggestionInsightTotalCountKey"];
  intValue = [v9 intValue];

  headerShowAllButton3 = [(PLBatteryUISuggestionHeaderCell *)self headerShowAllButton];
  [headerShowAllButton3 setHidden:intValue < 3];
}

- (void)buttonAction:(id)action
{
  v4 = +[BatteryUIResourceClass get_log_handle_bui_graph];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *v7 = 0;
    _os_log_impl(&dword_0, v4, OS_LOG_TYPE_INFO, "Suggestion Header Button triggered", v7, 2u);
  }

  delegate = [(PLBatteryUISuggestionHeaderCell *)self delegate];

  if (delegate)
  {
    delegate2 = [(PLBatteryUISuggestionHeaderCell *)self delegate];
    [delegate2 didTapShowAllButton];
  }
}

- (PLBatteryUISuggestionHeaderCellDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end