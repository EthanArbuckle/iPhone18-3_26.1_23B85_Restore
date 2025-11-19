@interface PLFollowUpHeaderCell
- (PLFollowUpHeaderCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4 specifier:(id)a5;
- (void)layoutSubviews;
- (void)refreshCellContentsWithSpecifier:(id)a3;
- (void)updateConstraints;
@end

@implementation PLFollowUpHeaderCell

- (PLFollowUpHeaderCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4 specifier:(id)a5
{
  v14.receiver = self;
  v14.super_class = PLFollowUpHeaderCell;
  v5 = [(PLFollowUpHeaderCell *)&v14 initWithStyle:a3 reuseIdentifier:a4, a5];
  if (v5)
  {
    v6 = createFollowUpTitle();
    followTitle = v5->_followTitle;
    v5->_followTitle = v6;

    v8 = createFollowUpTitleInformation();
    followTitleInformation = v5->_followTitleInformation;
    v5->_followTitleInformation = v8;

    v10 = createFollowUpSubtitle();
    followSubtitle = v5->_followSubtitle;
    v5->_followSubtitle = v10;

    v12 = [(PLFollowUpHeaderCell *)v5 contentView];
    [v12 addSubview:v5->_followTitle];
    [v12 addSubview:v5->_followTitleInformation];
    [v12 addSubview:v5->_followSubtitle];
    [(PLFollowUpHeaderCell *)v5 layoutSubviews];
  }

  return v5;
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = PLFollowUpHeaderCell;
  [(PLFollowUpHeaderCell *)&v3 layoutSubviews];
  [(PLFollowUpHeaderCell *)self setNeedsUpdateConstraints];
}

- (void)refreshCellContentsWithSpecifier:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = PLFollowUpHeaderCell;
  [(PLFollowUpHeaderCell *)&v11 refreshCellContentsWithSpecifier:v4];
  v5 = [v4 propertyForKey:FLFollowUpSingleItemKey];
  v6 = [v5 title];
  [(UILabel *)self->_followTitle setText:v6];

  v7 = [v5 informativeText];
  [(UILabel *)self->_followSubtitle setText:v7];

  v8 = [v4 objectForKeyedSubscript:@"PLBatteryUIFollowUpHeaderInformationStringKey"];

  if (v8)
  {
    v9 = [v4 objectForKeyedSubscript:@"PLBatteryUIFollowUpHeaderInformationStringKey"];
    [(UILabel *)self->_followTitleInformation setText:v9];
LABEL_5:

    goto LABEL_6;
  }

  v10 = [v4 objectForKeyedSubscript:@"PLBatteryUIFollowUpHeaderInformationAttributedStringKey"];

  if (v10)
  {
    v9 = [v4 objectForKeyedSubscript:@"PLBatteryUIFollowUpHeaderInformationAttributedStringKey"];
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
  v4 = [(UILabel *)self->_followTitleInformation centerYAnchor];
  v5 = [(UILabel *)self->_followTitle centerYAnchor];
  v6 = [v4 constraintEqualToAnchor:v5];

  v7 = [(UILabel *)self->_followTitleInformation trailingAnchor];
  v8 = [(PLFollowUpHeaderCell *)self layoutMarginsGuide];
  v9 = [v8 trailingAnchor];
  v10 = [v7 constraintEqualToAnchor:v9];

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