@interface PLFollowUpHeaderCell
- (PLFollowUpHeaderCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier specifier:(id)specifier;
- (void)layoutSubviews;
- (void)refreshCellContentsWithSpecifier:(id)specifier;
- (void)updateConstraints;
@end

@implementation PLFollowUpHeaderCell

- (PLFollowUpHeaderCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier specifier:(id)specifier
{
  v14.receiver = self;
  v14.super_class = PLFollowUpHeaderCell;
  specifier = [(PLFollowUpHeaderCell *)&v14 initWithStyle:style reuseIdentifier:identifier, specifier];
  if (specifier)
  {
    v6 = createFollowUpTitle();
    followTitle = specifier->_followTitle;
    specifier->_followTitle = v6;

    v8 = createFollowUpTitleInformation();
    followTitleInformation = specifier->_followTitleInformation;
    specifier->_followTitleInformation = v8;

    v10 = createFollowUpSubtitle();
    followSubtitle = specifier->_followSubtitle;
    specifier->_followSubtitle = v10;

    contentView = [(PLFollowUpHeaderCell *)specifier contentView];
    [contentView addSubview:specifier->_followTitle];
    [contentView addSubview:specifier->_followTitleInformation];
    [contentView addSubview:specifier->_followSubtitle];
    [(PLFollowUpHeaderCell *)specifier layoutSubviews];
  }

  return specifier;
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = PLFollowUpHeaderCell;
  [(PLFollowUpHeaderCell *)&v3 layoutSubviews];
  [(PLFollowUpHeaderCell *)self setNeedsUpdateConstraints];
}

- (void)refreshCellContentsWithSpecifier:(id)specifier
{
  specifierCopy = specifier;
  v11.receiver = self;
  v11.super_class = PLFollowUpHeaderCell;
  [(PLFollowUpHeaderCell *)&v11 refreshCellContentsWithSpecifier:specifierCopy];
  v5 = [specifierCopy propertyForKey:FLFollowUpSingleItemKey];
  title = [v5 title];
  [(UILabel *)self->_followTitle setText:title];

  informativeText = [v5 informativeText];
  [(UILabel *)self->_followSubtitle setText:informativeText];

  v8 = [specifierCopy objectForKeyedSubscript:@"PLBatteryUIFollowUpHeaderInformationStringKey"];

  if (v8)
  {
    v9 = [specifierCopy objectForKeyedSubscript:@"PLBatteryUIFollowUpHeaderInformationStringKey"];
    [(UILabel *)self->_followTitleInformation setText:v9];
LABEL_5:

    goto LABEL_6;
  }

  v10 = [specifierCopy objectForKeyedSubscript:@"PLBatteryUIFollowUpHeaderInformationAttributedStringKey"];

  if (v10)
  {
    v9 = [specifierCopy objectForKeyedSubscript:@"PLBatteryUIFollowUpHeaderInformationAttributedStringKey"];
    [(UILabel *)self->_followTitleInformation setAttributedText:v9];
    goto LABEL_5;
  }

LABEL_6:
  [(PLFollowUpHeaderCell *)self setNeedsLayout];
}

- (void)updateConstraints
{
  [NSLayoutConstraint deactivateConstraints:self->_constraints];
  v18 = _NSDictionaryOfVariableBindings(@"_followTitle, _followTitleInformation,_followSubtitle", self->_followTitle, self->_followTitleInformation, self->_followSubtitle, 0);
  v3 = +[NSLayoutConstraint constraintsWithVisualFormat:options:metrics:views:](NSLayoutConstraint, "constraintsWithVisualFormat:options:metrics:views:", @"H:|-[_followTitle]-[_followTitleInformation]-|", 0, 0, v18);
  v17 = +[NSLayoutConstraint constraintsWithVisualFormat:options:metrics:views:](NSLayoutConstraint, "constraintsWithVisualFormat:options:metrics:views:", @"H:|-[_followSubtitle]-|", 0, 0, v18);
  v16 = +[NSLayoutConstraint constraintsWithVisualFormat:options:metrics:views:](NSLayoutConstraint, "constraintsWithVisualFormat:options:metrics:views:", @"V:|-11-[_followTitle]-[_followSubtitle]-11-|", 0, 0, v18);
  centerYAnchor = [(UILabel *)self->_followTitleInformation centerYAnchor];
  centerYAnchor2 = [(UILabel *)self->_followTitle centerYAnchor];
  v6 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];

  trailingAnchor = [(UILabel *)self->_followTitleInformation trailingAnchor];
  layoutMarginsGuide = [(PLFollowUpHeaderCell *)self layoutMarginsGuide];
  trailingAnchor2 = [layoutMarginsGuide trailingAnchor];
  v10 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];

  v11 = [v3 arrayByAddingObjectsFromArray:v17];
  v12 = [v11 arrayByAddingObjectsFromArray:v16];
  v13 = [v12 arrayByAddingObject:v6];
  v14 = [v13 arrayByAddingObject:v10];
  constraints = self->_constraints;
  self->_constraints = v14;

  [NSLayoutConstraint activateConstraints:self->_constraints];
  v19.receiver = self;
  v19.super_class = PLFollowUpHeaderCell;
  [(PLFollowUpHeaderCell *)&v19 updateConstraints];
}

@end