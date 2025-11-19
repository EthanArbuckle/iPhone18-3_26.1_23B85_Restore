@interface STStorageHeaderLabelCell
+ (id)specifierWithTitle:(id)a3;
- (STStorageHeaderLabelCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4 specifier:(id)a5;
- (void)refreshCellContentsWithSpecifier:(id)a3;
- (void)updateConstraints;
@end

@implementation STStorageHeaderLabelCell

+ (id)specifierWithTitle:(id)a3
{
  v3 = a3;
  v4 = [PSSpecifier preferenceSpecifierNamed:&stru_AD3C8 target:0 set:0 get:0 detail:0 cell:-1 edit:0];
  [v4 setProperty:objc_opt_class() forKey:PSCellClassKey];
  v5 = [NSNumber numberWithBool:1];
  [v4 setProperty:v5 forKey:PSEnabledKey];

  [v4 setProperty:v3 forKey:STStorageTitleKey];

  return v4;
}

- (STStorageHeaderLabelCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4 specifier:(id)a5
{
  v8 = a5;
  v19.receiver = self;
  v19.super_class = STStorageHeaderLabelCell;
  v9 = [(STStorageHeaderLabelCell *)&v19 initWithStyle:a3 reuseIdentifier:a4 specifier:v8];
  v10 = v9;
  if (v9)
  {
    v11 = [(STStorageHeaderLabelCell *)v9 contentView];
    v12 = +[UIColor darkGrayColor];
    [v11 setBackgroundColor:v12];

    v13 = [[UILabel alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
    titleLabel = v10->_titleLabel;
    v10->_titleLabel = v13;

    v15 = [UIFont preferredFontForTextStyle:UIFontTextStyleFootnote];
    [(UILabel *)v10->_titleLabel setFont:v15];

    v16 = +[UIColor whiteColor];
    [(UILabel *)v10->_titleLabel setTextColor:v16];

    [(UILabel *)v10->_titleLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UILabel *)v10->_titleLabel setAccessibilityIdentifier:@"HeaderTitle"];
    [(UILabel *)v10->_titleLabel setNumberOfLines:1];
    [(UILabel *)v10->_titleLabel setLineBreakMode:4];
    [v11 addSubview:v10->_titleLabel];
    v20 = v10->_titleLabel;
    v17 = [NSArray arrayWithObjects:&v20 count:1];
    [v11 setAccessibilityElements:v17];

    [(STStorageHeaderLabelCell *)v10 setNeedsUpdateConstraints];
    [(STStorageHeaderLabelCell *)v10 updateConstraintsIfNeeded];
    [(STStorageHeaderLabelCell *)v10 refreshCellContentsWithSpecifier:v8];
  }

  return v10;
}

- (void)updateConstraints
{
  if (!self->_constraints)
  {
    v3 = [(STStorageHeaderLabelCell *)self contentView];
    v4 = +[NSMutableArray array];
    constraints = self->_constraints;
    self->_constraints = v4;

    v6 = self->_constraints;
    v7 = [NSLayoutConstraint constraintWithItem:self->_titleLabel attribute:9 relatedBy:0 toItem:v3 attribute:9 multiplier:1.0 constant:0.0];
    [(NSMutableArray *)v6 addObject:v7];

    v8 = self->_constraints;
    v9 = [NSLayoutConstraint constraintWithItem:self->_titleLabel attribute:3 relatedBy:0 toItem:v3 attribute:3 multiplier:1.0 constant:2.0];
    [(NSMutableArray *)v8 addObject:v9];

    v10 = self->_constraints;
    v11 = [NSLayoutConstraint constraintWithItem:v3 attribute:4 relatedBy:0 toItem:self->_titleLabel attribute:4 multiplier:1.0 constant:2.0];
    [(NSMutableArray *)v10 addObject:v11];

    [NSLayoutConstraint activateConstraints:self->_constraints];
  }

  v12.receiver = self;
  v12.super_class = STStorageHeaderLabelCell;
  [(STStorageHeaderLabelCell *)&v12 updateConstraints];
}

- (void)refreshCellContentsWithSpecifier:(id)a3
{
  v7.receiver = self;
  v7.super_class = STStorageHeaderLabelCell;
  v4 = a3;
  [(STStorageHeaderLabelCell *)&v7 refreshCellContentsWithSpecifier:v4];
  v5 = [v4 propertyForKey:{STStorageTitleKey, v7.receiver, v7.super_class}];

  v6 = [v5 uppercaseString];
  [(UILabel *)self->_titleLabel setText:v6];

  [(STStorageHeaderLabelCell *)self setNeedsLayout];
}

@end