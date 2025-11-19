@interface GizmoRepairCell
- (GizmoRepairCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4 specifier:(id)a5;
- (id)_newFormattedLabel;
- (void)_setupLabels;
- (void)layoutSubviews;
- (void)refreshCellContentsWithSpecifier:(id)a3;
- (void)updateConstraints;
@end

@implementation GizmoRepairCell

- (GizmoRepairCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4 specifier:(id)a5
{
  v11.receiver = self;
  v11.super_class = GizmoRepairCell;
  v5 = [(GizmoRepairCell *)&v11 initWithStyle:a3 reuseIdentifier:a4, a5];
  v6 = v5;
  if (v5)
  {
    [(GizmoRepairCell *)v5 _setupLabels];
    v7 = [(GizmoRepairCell *)v6 contentView];
    v8 = [(GizmoRepairCell *)v6 repairTitle];
    [v7 addSubview:v8];

    v9 = [(GizmoRepairCell *)v6 repairSubtitle];
    [v7 addSubview:v9];

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

- (void)refreshCellContentsWithSpecifier:(id)a3
{
  v11.receiver = self;
  v11.super_class = GizmoRepairCell;
  v4 = a3;
  [(GizmoRepairCell *)&v11 refreshCellContentsWithSpecifier:v4];
  v5 = [v4 propertyForKey:{@"repairDialog", v11.receiver, v11.super_class}];

  v6 = [v5 identifier];
  v7 = [v6 isEqualToString:@"ASDAuthenticateActiveAccount"];

  if (v7)
  {
    v8 = ASDLocalizedString(@"PROMPT_FOR_ACCOUNT_SIGN_IN");
    [(UILabel *)self->_repairTitle setText:v8];

    ASDLocalizedString(@"SIGN_IN_TO_PURCHASE_ON_WATCH");
  }

  else
  {
    v9 = [v5 title];
    [(UILabel *)self->_repairTitle setText:v9];

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
  v4 = [v3 textColor];
  if (v4)
  {
    [v2 setTextColor:v4];
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
  v3 = [(GizmoRepairCell *)self _newFormattedLabel];
  repairSubtitle = self->_repairSubtitle;
  self->_repairSubtitle = v3;

  v5 = [UIFont preferredFontForTextStyle:UIFontTextStyleSubheadline];
  [(UILabel *)self->_repairSubtitle setFont:v5];

  v6 = [(GizmoRepairCell *)self _newFormattedLabel];
  repairTitle = self->_repairTitle;
  self->_repairTitle = v6;

  v8 = [UIFont preferredFontForTextStyle:UIFontTextStyleHeadline];
  [(UILabel *)self->_repairTitle setFont:v8];
}

@end