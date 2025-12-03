@interface GizmoRepairCell
- (GizmoRepairCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier specifier:(id)specifier;
- (id)_newFormattedLabel;
- (void)_setupLabels;
- (void)layoutSubviews;
- (void)refreshCellContentsWithSpecifier:(id)specifier;
- (void)updateConstraints;
@end

@implementation GizmoRepairCell

- (GizmoRepairCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier specifier:(id)specifier
{
  v11.receiver = self;
  v11.super_class = GizmoRepairCell;
  specifier = [(GizmoRepairCell *)&v11 initWithStyle:style reuseIdentifier:identifier, specifier];
  v6 = specifier;
  if (specifier)
  {
    [(GizmoRepairCell *)specifier _setupLabels];
    contentView = [(GizmoRepairCell *)v6 contentView];
    repairTitle = [(GizmoRepairCell *)v6 repairTitle];
    [contentView addSubview:repairTitle];

    repairSubtitle = [(GizmoRepairCell *)v6 repairSubtitle];
    [contentView addSubview:repairSubtitle];

    [(GizmoRepairCell *)v6 layoutSubviews];
  }

  return v6;
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = GizmoRepairCell;
  [(GizmoRepairCell *)&v3 layoutSubviews];
  [(GizmoRepairCell *)self setNeedsUpdateConstraints];
}

- (void)refreshCellContentsWithSpecifier:(id)specifier
{
  v11.receiver = self;
  v11.super_class = GizmoRepairCell;
  specifierCopy = specifier;
  [(GizmoRepairCell *)&v11 refreshCellContentsWithSpecifier:specifierCopy];
  v5 = [specifierCopy propertyForKey:{@"repairDialog", v11.receiver, v11.super_class}];

  identifier = [v5 identifier];
  v7 = [identifier isEqualToString:@"ASDAuthenticateActiveAccount"];

  if (v7)
  {
    v8 = ASDLocalizedString(@"PROMPT_FOR_ACCOUNT_SIGN_IN");
    [(UILabel *)self->_repairTitle setText:v8];

    ASDLocalizedString(@"SIGN_IN_TO_PURCHASE_ON_WATCH");
  }

  else
  {
    title = [v5 title];
    [(UILabel *)self->_repairTitle setText:title];

    [v5 message];
  }
  v10 = ;
  [(UILabel *)self->_repairSubtitle setText:v10];

  [(GizmoRepairCell *)self setNeedsLayout];
}

- (void)updateConstraints
{
  [NSLayoutConstraint deactivateConstraints:self->_constraints];
  v3 = _NSDictionaryOfVariableBindings(@"_repairTitle, _repairSubtitle", self->_repairTitle, self->_repairSubtitle, 0);
  v4 = +[NSLayoutConstraint constraintsWithVisualFormat:options:metrics:views:](NSLayoutConstraint, "constraintsWithVisualFormat:options:metrics:views:", @"H:|-[_repairTitle]-|", 0, 0, v3);
  v5 = +[NSLayoutConstraint constraintsWithVisualFormat:options:metrics:views:](NSLayoutConstraint, "constraintsWithVisualFormat:options:metrics:views:", @"H:|-[_repairSubtitle]-|", 0, 0, v3);
  v6 = +[NSLayoutConstraint constraintsWithVisualFormat:options:metrics:views:](NSLayoutConstraint, "constraintsWithVisualFormat:options:metrics:views:", @"V:|-11-[_repairTitle]-[_repairSubtitle]-11-|", 0, 0, v3);
  v7 = [v4 arrayByAddingObjectsFromArray:v5];
  v8 = [v7 arrayByAddingObjectsFromArray:v6];
  constraints = self->_constraints;
  self->_constraints = v8;

  [NSLayoutConstraint activateConstraints:self->_constraints];
  v10.receiver = self;
  v10.super_class = GizmoRepairCell;
  [(GizmoRepairCell *)&v10 updateConstraints];
}

- (id)_newFormattedLabel
{
  v2 = objc_opt_new();
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
  LODWORD(v6) = 1144750080;
  [v2 setContentCompressionResistancePriority:0 forAxis:v6];
  return v2;
}

- (void)_setupLabels
{
  _newFormattedLabel = [(GizmoRepairCell *)self _newFormattedLabel];
  repairSubtitle = self->_repairSubtitle;
  self->_repairSubtitle = _newFormattedLabel;

  v5 = [UIFont preferredFontForTextStyle:UIFontTextStyleSubheadline];
  [(UILabel *)self->_repairSubtitle setFont:v5];

  _newFormattedLabel2 = [(GizmoRepairCell *)self _newFormattedLabel];
  repairTitle = self->_repairTitle;
  self->_repairTitle = _newFormattedLabel2;

  v8 = [UIFont preferredFontForTextStyle:UIFontTextStyleHeadline];
  [(UILabel *)self->_repairTitle setFont:v8];
}

@end