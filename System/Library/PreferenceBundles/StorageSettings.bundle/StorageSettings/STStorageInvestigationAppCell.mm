@interface STStorageInvestigationAppCell
- (STStorageInvestigationAppCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier specifier:(id)specifier;
- (void)refreshCellContentsWithSpecifier:(id)specifier;
- (void)updateConstraints;
@end

@implementation STStorageInvestigationAppCell

- (STStorageInvestigationAppCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier specifier:(id)specifier
{
  specifierCopy = specifier;
  v28.receiver = self;
  v28.super_class = STStorageInvestigationAppCell;
  v9 = [(STStorageInvestigationAppCell *)&v28 initWithStyle:style reuseIdentifier:identifier specifier:specifierCopy];
  v10 = v9;
  if (v9)
  {
    contentView = [(STStorageInvestigationAppCell *)v9 contentView];
    v12 = [UIFont preferredFontForTextStyle:UIFontTextStyleBody];
    v13 = [UIFont systemFontOfSize:10.0];
    v14 = [UIFont preferredFontForTextStyle:UIFontTextStyleHeadline];
    v15 = [UILabel alloc];
    y = CGRectZero.origin.y;
    width = CGRectZero.size.width;
    height = CGRectZero.size.height;
    v19 = [v15 initWithFrame:{CGRectZero.origin.x, y, width, height}];
    appNameLabel = v10->_appNameLabel;
    v10->_appNameLabel = v19;

    [(UILabel *)v10->_appNameLabel setFont:v12];
    [(UILabel *)v10->_appNameLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UILabel *)v10->_appNameLabel setAccessibilityIdentifier:@"Title"];
    [(UILabel *)v10->_appNameLabel setNumberOfLines:1];
    [(UILabel *)v10->_appNameLabel setLineBreakMode:4];
    [(UILabel *)v10->_appNameLabel setAllowsDefaultTighteningForTruncation:1];
    [contentView addSubview:v10->_appNameLabel];
    v21 = [[UILabel alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
    reportedSpaceLabel = v10->_reportedSpaceLabel;
    v10->_reportedSpaceLabel = v21;

    [(UILabel *)v10->_reportedSpaceLabel setFont:v13];
    [(UILabel *)v10->_reportedSpaceLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UILabel *)v10->_reportedSpaceLabel setAccessibilityIdentifier:@"Reported Storage"];
    [(UILabel *)v10->_reportedSpaceLabel setNumberOfLines:1];
    [(UILabel *)v10->_reportedSpaceLabel setLineBreakMode:4];
    [(UILabel *)v10->_reportedSpaceLabel setAllowsDefaultTighteningForTruncation:1];
    [contentView addSubview:v10->_reportedSpaceLabel];
    v23 = [[UILabel alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
    calculatedSpaceLabel = v10->_calculatedSpaceLabel;
    v10->_calculatedSpaceLabel = v23;

    [(UILabel *)v10->_calculatedSpaceLabel setFont:v13];
    [(UILabel *)v10->_calculatedSpaceLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UILabel *)v10->_calculatedSpaceLabel setAccessibilityIdentifier:@"Calculated Storage"];
    [(UILabel *)v10->_calculatedSpaceLabel setNumberOfLines:1];
    [(UILabel *)v10->_calculatedSpaceLabel setLineBreakMode:4];
    [(UILabel *)v10->_calculatedSpaceLabel setAllowsDefaultTighteningForTruncation:1];
    [contentView addSubview:v10->_calculatedSpaceLabel];
    v25 = [[UILabel alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
    diffSpaceLabel = v10->_diffSpaceLabel;
    v10->_diffSpaceLabel = v25;

    [(UILabel *)v10->_diffSpaceLabel setFont:v14];
    [(UILabel *)v10->_diffSpaceLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UILabel *)v10->_diffSpaceLabel setAccessibilityIdentifier:@"Storage difference"];
    [(UILabel *)v10->_diffSpaceLabel setNumberOfLines:1];
    [(UILabel *)v10->_diffSpaceLabel setLineBreakMode:4];
    [(UILabel *)v10->_diffSpaceLabel setAllowsDefaultTighteningForTruncation:1];
    [contentView addSubview:v10->_diffSpaceLabel];
    [(STStorageInvestigationAppCell *)v10 setNeedsUpdateConstraints];
    [(STStorageInvestigationAppCell *)v10 refreshCellContentsWithSpecifier:specifierCopy];
  }

  return v10;
}

- (void)updateConstraints
{
  if ([(NSMutableArray *)self->_constraints count])
  {
    [NSLayoutConstraint deactivateConstraints:self->_constraints];
  }

  v3 = +[NSMutableArray array];
  constraints = self->_constraints;
  self->_constraints = v3;

  v5 = self->_constraints;
  appNameLabel = self->_appNameLabel;
  contentView = [(STStorageInvestigationAppCell *)self contentView];
  v8 = [NSLayoutConstraint constraintWithItem:appNameLabel attribute:3 relatedBy:0 toItem:contentView attribute:15 multiplier:1.0 constant:0.0];
  [(NSMutableArray *)v5 addObject:v8];

  v9 = self->_constraints;
  v10 = self->_appNameLabel;
  contentView2 = [(STStorageInvestigationAppCell *)self contentView];
  v12 = [NSLayoutConstraint constraintWithItem:v10 attribute:5 relatedBy:0 toItem:contentView2 attribute:17 multiplier:1.0 constant:0.0];
  [(NSMutableArray *)v9 addObject:v12];

  v13 = self->_constraints;
  diffSpaceLabel = self->_diffSpaceLabel;
  contentView3 = [(STStorageInvestigationAppCell *)self contentView];
  v16 = [NSLayoutConstraint constraintWithItem:diffSpaceLabel attribute:6 relatedBy:0 toItem:contentView3 attribute:18 multiplier:1.0 constant:0.0];
  [(NSMutableArray *)v13 addObject:v16];

  v17 = self->_constraints;
  v18 = self->_diffSpaceLabel;
  contentView4 = [(STStorageInvestigationAppCell *)self contentView];
  v20 = [NSLayoutConstraint constraintWithItem:v18 attribute:3 relatedBy:0 toItem:contentView4 attribute:15 multiplier:1.0 constant:0.0];
  [(NSMutableArray *)v17 addObject:v20];

  v21 = self->_constraints;
  reportedSpaceLabel = self->_reportedSpaceLabel;
  contentView5 = [(STStorageInvestigationAppCell *)self contentView];
  v24 = [NSLayoutConstraint constraintWithItem:reportedSpaceLabel attribute:5 relatedBy:0 toItem:contentView5 attribute:17 multiplier:1.0 constant:0.0];
  [(NSMutableArray *)v21 addObject:v24];

  v25 = self->_constraints;
  v26 = [NSLayoutConstraint constraintWithItem:self->_reportedSpaceLabel attribute:3 relatedBy:0 toItem:self->_appNameLabel attribute:4 multiplier:1.0 constant:8.0];
  [(NSMutableArray *)v25 addObject:v26];

  v27 = self->_constraints;
  calculatedSpaceLabel = self->_calculatedSpaceLabel;
  contentView6 = [(STStorageInvestigationAppCell *)self contentView];
  v30 = [NSLayoutConstraint constraintWithItem:calculatedSpaceLabel attribute:5 relatedBy:0 toItem:contentView6 attribute:17 multiplier:1.0 constant:0.0];
  [(NSMutableArray *)v27 addObject:v30];

  v31 = self->_constraints;
  v32 = [NSLayoutConstraint constraintWithItem:self->_calculatedSpaceLabel attribute:3 relatedBy:0 toItem:self->_reportedSpaceLabel attribute:4 multiplier:1.0 constant:8.0];
  [(NSMutableArray *)v31 addObject:v32];

  v33 = self->_constraints;
  v34 = self->_calculatedSpaceLabel;
  contentView7 = [(STStorageInvestigationAppCell *)self contentView];
  v36 = [NSLayoutConstraint constraintWithItem:v34 attribute:4 relatedBy:0 toItem:contentView7 attribute:16 multiplier:1.0 constant:0.0];
  [(NSMutableArray *)v33 addObject:v36];

  [NSLayoutConstraint activateConstraints:self->_constraints];
  v37.receiver = self;
  v37.super_class = STStorageInvestigationAppCell;
  [(STStorageInvestigationAppCell *)&v37 updateConstraints];
}

- (void)refreshCellContentsWithSpecifier:(id)specifier
{
  v15.receiver = self;
  v15.super_class = STStorageInvestigationAppCell;
  specifierCopy = specifier;
  [(STStorageInvestigationAppCell *)&v15 refreshCellContentsWithSpecifier:specifierCopy];
  v5 = [specifierCopy propertyForKey:{@"APP_CASE", v15.receiver, v15.super_class}];

  appNameLabel = self->_appNameLabel;
  v7 = [v5 app];
  name = [v7 name];
  [(UILabel *)appNameLabel setText:name];

  reportedSpaceLabel = self->_reportedSpaceLabel;
  reportedString = [v5 reportedString];
  [(UILabel *)reportedSpaceLabel setText:reportedString];

  calculatedSpaceLabel = self->_calculatedSpaceLabel;
  calculatedString = [v5 calculatedString];
  [(UILabel *)calculatedSpaceLabel setText:calculatedString];

  diffSpaceLabel = self->_diffSpaceLabel;
  reportedDiff = [v5 reportedDiff];
  [(UILabel *)diffSpaceLabel setText:reportedDiff];
}

@end