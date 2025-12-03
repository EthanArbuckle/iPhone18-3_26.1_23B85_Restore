@interface PLFollowUpSecondaryHeaderCell
- (PLFollowUpSecondaryHeaderCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (id)subHeaderLabel;
- (void)refreshCellContentsWithSpecifier:(id)specifier;
- (void)updateConstraints;
@end

@implementation PLFollowUpSecondaryHeaderCell

- (id)subHeaderLabel
{
  v2 = objc_alloc_init(UILabel);
  v3 = +[PSListController appearance];
  textColor = [v3 textColor];
  if (textColor)
  {
    [v2 setTextColor:textColor];
  }

  else
  {
    v5 = +[UIColor blackColor];
    [v2 setTextColor:v5];
  }

  [v2 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v2 setNumberOfLines:0];
  [v2 setLineBreakMode:0];
  v6 = [UIFont preferredFontForTextStyle:UIFontTextStyleSubheadline];
  [v2 setFont:v6];

  LODWORD(v7) = 1144750080;
  [v2 setContentCompressionResistancePriority:0 forAxis:v7];
  [v2 setTextAlignment:{+[PLBatteryUIUtilities localizedLeftTextAlignment](PLBatteryUIUtilities, "localizedLeftTextAlignment")}];

  return v2;
}

- (PLFollowUpSecondaryHeaderCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v12.receiver = self;
  v12.super_class = PLFollowUpSecondaryHeaderCell;
  v4 = [(PLFollowUpSecondaryHeaderCell *)&v12 initWithStyle:style reuseIdentifier:identifier];
  v5 = v4;
  if (v4)
  {
    contentView = [(PLFollowUpSecondaryHeaderCell *)v4 contentView];
    subHeaderLabel = [(PLFollowUpSecondaryHeaderCell *)v5 subHeaderLabel];
    subHeader = v5->_subHeader;
    v5->_subHeader = subHeaderLabel;

    [contentView addSubview:v5->_subHeader];
    v13 = v5->_subHeader;
    v9 = [NSArray arrayWithObjects:&v13 count:1];
    [contentView setAccessibilityElements:v9];

    v11.receiver = v5;
    v11.super_class = PLFollowUpSecondaryHeaderCell;
    [(PLFollowUpSecondaryHeaderCell *)&v11 layoutSubviews];
    [(PLFollowUpSecondaryHeaderCell *)v5 setNeedsUpdateConstraints];
  }

  return v5;
}

- (void)refreshCellContentsWithSpecifier:(id)specifier
{
  v6.receiver = self;
  v6.super_class = PLFollowUpSecondaryHeaderCell;
  specifierCopy = specifier;
  [(PLFollowUpSecondaryHeaderCell *)&v6 refreshCellContentsWithSpecifier:specifierCopy];
  v5 = [specifierCopy propertyForKey:{@"PLFollowUpSecondaryHeaderCellTextKey", v6.receiver, v6.super_class}];

  [(UILabel *)self->_subHeader setText:v5];
  [(PLFollowUpSecondaryHeaderCell *)self setNeedsLayout];
}

- (void)updateConstraints
{
  [NSLayoutConstraint deactivateConstraints:self->_constraints];
  v3 = _NSDictionaryOfVariableBindings(@"_subHeader", self->_subHeader, 0);
  v4 = +[NSLayoutConstraint constraintsWithVisualFormat:options:metrics:views:](NSLayoutConstraint, "constraintsWithVisualFormat:options:metrics:views:", @"H:|-[_subHeader]-|", 0, 0, v3);
  v5 = +[NSLayoutConstraint constraintsWithVisualFormat:options:metrics:views:](NSLayoutConstraint, "constraintsWithVisualFormat:options:metrics:views:", @"V:|-11-[_subHeader]-11-|", 0, 0, v3);
  v6 = [v4 arrayByAddingObjectsFromArray:v5];
  constraints = self->_constraints;
  self->_constraints = v6;

  [NSLayoutConstraint activateConstraints:self->_constraints];
  v8.receiver = self;
  v8.super_class = PLFollowUpSecondaryHeaderCell;
  [(PLFollowUpSecondaryHeaderCell *)&v8 updateConstraints];
}

@end