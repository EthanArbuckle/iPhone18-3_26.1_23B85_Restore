@interface STStorageInvestigationAppCell
- (STStorageInvestigationAppCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4 specifier:(id)a5;
- (void)refreshCellContentsWithSpecifier:(id)a3;
- (void)updateConstraints;
@end

@implementation STStorageInvestigationAppCell

- (STStorageInvestigationAppCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4 specifier:(id)a5
{
  v8 = a5;
  v28.receiver = self;
  v28.super_class = STStorageInvestigationAppCell;
  v9 = [(STStorageInvestigationAppCell *)&v28 initWithStyle:a3 reuseIdentifier:a4 specifier:v8];
  v10 = v9;
  if (v9)
  {
    v11 = [(STStorageInvestigationAppCell *)v9 contentView];
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
    [v11 addSubview:v10->_appNameLabel];
    v21 = [[UILabel alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
    reportedSpaceLabel = v10->_reportedSpaceLabel;
    v10->_reportedSpaceLabel = v21;

    [(UILabel *)v10->_reportedSpaceLabel setFont:v13];
    [(UILabel *)v10->_reportedSpaceLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UILabel *)v10->_reportedSpaceLabel setAccessibilityIdentifier:@"Reported Storage"];
    [(UILabel *)v10->_reportedSpaceLabel setNumberOfLines:1];
    [(UILabel *)v10->_reportedSpaceLabel setLineBreakMode:4];
    [(UILabel *)v10->_reportedSpaceLabel setAllowsDefaultTighteningForTruncation:1];
    [v11 addSubview:v10->_reportedSpaceLabel];
    v23 = [[UILabel alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
    calculatedSpaceLabel = v10->_calculatedSpaceLabel;
    v10->_calculatedSpaceLabel = v23;

    [(UILabel *)v10->_calculatedSpaceLabel setFont:v13];
    [(UILabel *)v10->_calculatedSpaceLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UILabel *)v10->_calculatedSpaceLabel setAccessibilityIdentifier:@"Calculated Storage"];
    [(UILabel *)v10->_calculatedSpaceLabel setNumberOfLines:1];
    [(UILabel *)v10->_calculatedSpaceLabel setLineBreakMode:4];
    [(UILabel *)v10->_calculatedSpaceLabel setAllowsDefaultTighteningForTruncation:1];
    [v11 addSubview:v10->_calculatedSpaceLabel];
    v25 = [[UILabel alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
    diffSpaceLabel = v10->_diffSpaceLabel;
    v10->_diffSpaceLabel = v25;

    [(UILabel *)v10->_diffSpaceLabel setFont:v14];
    [(UILabel *)v10->_diffSpaceLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UILabel *)v10->_diffSpaceLabel setAccessibilityIdentifier:@"Storage difference"];
    [(UILabel *)v10->_diffSpaceLabel setNumberOfLines:1];
    [(UILabel *)v10->_diffSpaceLabel setLineBreakMode:4];
    [(UILabel *)v10->_diffSpaceLabel setAllowsDefaultTighteningForTruncation:1];
    [v11 addSubview:v10->_diffSpaceLabel];
    [(STStorageInvestigationAppCell *)v10 setNeedsUpdateConstraints];
    [(STStorageInvestigationAppCell *)v10 refreshCellContentsWithSpecifier:v8];
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
  v7 = [(STStorageInvestigationAppCell *)self contentView];
  v8 = [NSLayoutConstraint constraintWithItem:appNameLabel attribute:3 relatedBy:0 toItem:v7 attribute:15 multiplier:1.0 constant:0.0];
  [(NSMutableArray *)v5 addObject:v8];

  v9 = self->_constraints;
  v10 = self->_appNameLabel;
  v11 = [(STStorageInvestigationAppCell *)self contentView];
  v12 = [NSLayoutConstraint constraintWithItem:v10 attribute:5 relatedBy:0 toItem:v11 attribute:17 multiplier:1.0 constant:0.0];
  [(NSMutableArray *)v9 addObject:v12];

  v13 = self->_constraints;
  diffSpaceLabel = self->_diffSpaceLabel;
  v15 = [(STStorageInvestigationAppCell *)self contentView];
  v16 = [NSLayoutConstraint constraintWithItem:diffSpaceLabel attribute:6 relatedBy:0 toItem:v15 attribute:18 multiplier:1.0 constant:0.0];
  [(NSMutableArray *)v13 addObject:v16];

  v17 = self->_constraints;
  v18 = self->_diffSpaceLabel;
  v19 = [(STStorageInvestigationAppCell *)self contentView];
  v20 = [NSLayoutConstraint constraintWithItem:v18 attribute:3 relatedBy:0 toItem:v19 attribute:15 multiplier:1.0 constant:0.0];
  [(NSMutableArray *)v17 addObject:v20];

  v21 = self->_constraints;
  reportedSpaceLabel = self->_reportedSpaceLabel;
  v23 = [(STStorageInvestigationAppCell *)self contentView];
  v24 = [NSLayoutConstraint constraintWithItem:reportedSpaceLabel attribute:5 relatedBy:0 toItem:v23 attribute:17 multiplier:1.0 constant:0.0];
  [(NSMutableArray *)v21 addObject:v24];

  v25 = self->_constraints;
  v26 = [NSLayoutConstraint constraintWithItem:self->_reportedSpaceLabel attribute:3 relatedBy:0 toItem:self->_appNameLabel attribute:4 multiplier:1.0 constant:8.0];
  [(NSMutableArray *)v25 addObject:v26];

  v27 = self->_constraints;
  calculatedSpaceLabel = self->_calculatedSpaceLabel;
  v29 = [(STStorageInvestigationAppCell *)self contentView];
  v30 = [NSLayoutConstraint constraintWithItem:calculatedSpaceLabel attribute:5 relatedBy:0 toItem:v29 attribute:17 multiplier:1.0 constant:0.0];
  [(NSMutableArray *)v27 addObject:v30];

  v31 = self->_constraints;
  v32 = [NSLayoutConstraint constraintWithItem:self->_calculatedSpaceLabel attribute:3 relatedBy:0 toItem:self->_reportedSpaceLabel attribute:4 multiplier:1.0 constant:8.0];
  [(NSMutableArray *)v31 addObject:v32];

  v33 = self->_constraints;
  v34 = self->_calculatedSpaceLabel;
  v35 = [(STStorageInvestigationAppCell *)self contentView];
  v36 = [NSLayoutConstraint constraintWithItem:v34 attribute:4 relatedBy:0 toItem:v35 attribute:16 multiplier:1.0 constant:0.0];
  [(NSMutableArray *)v33 addObject:v36];

  [NSLayoutConstraint activateConstraints:self->_constraints];
  v37.receiver = self;
  v37.super_class = STStorageInvestigationAppCell;
  [(STStorageInvestigationAppCell *)&v37 updateConstraints];
}

- (void)refreshCellContentsWithSpecifier:(id)a3
{
  v15.receiver = self;
  v15.super_class = STStorageInvestigationAppCell;
  v4 = a3;
  [(STStorageInvestigationAppCell *)&v15 refreshCellContentsWithSpecifier:v4];
  v5 = [v4 propertyForKey:{@"APP_CASE", v15.receiver, v15.super_class}];

  appNameLabel = self->_appNameLabel;
  v7 = [v5 app];
  v8 = [v7 name];
  [(UILabel *)appNameLabel setText:v8];

  reportedSpaceLabel = self->_reportedSpaceLabel;
  v10 = [v5 reportedString];
  [(UILabel *)reportedSpaceLabel setText:v10];

  calculatedSpaceLabel = self->_calculatedSpaceLabel;
  v12 = [v5 calculatedString];
  [(UILabel *)calculatedSpaceLabel setText:v12];

  diffSpaceLabel = self->_diffSpaceLabel;
  v14 = [v5 reportedDiff];
  [(UILabel *)diffSpaceLabel setText:v14];
}

@end