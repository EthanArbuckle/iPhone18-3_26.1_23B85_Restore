@interface STStorageMessageItemCell
+ (id)specifierWithTitle:(id)title;
- (STStorageMessageItemCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier specifier:(id)specifier;
- (void)refreshCellContentsWithSpecifier:(id)specifier;
- (void)updateConstraints;
@end

@implementation STStorageMessageItemCell

+ (id)specifierWithTitle:(id)title
{
  titleCopy = title;
  v4 = [PSSpecifier preferenceSpecifierNamed:&stru_2D2D0 target:0 set:0 get:0 detail:0 cell:-1 edit:0];
  [v4 setProperty:objc_opt_class() forKey:PSCellClassKey];
  v5 = [NSNumber numberWithBool:1];
  [v4 setProperty:v5 forKey:PSEnabledKey];

  [v4 setProperty:titleCopy forKey:STStorageTitleKey];

  return v4;
}

- (STStorageMessageItemCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier specifier:(id)specifier
{
  specifierCopy = specifier;
  v19.receiver = self;
  v19.super_class = STStorageMessageItemCell;
  v9 = [(STStorageMessageItemCell *)&v19 initWithStyle:style reuseIdentifier:identifier specifier:specifierCopy];
  v10 = v9;
  if (v9)
  {
    contentView = [(STStorageMessageItemCell *)v9 contentView];
    v12 = +[UIColor clearColor];
    [contentView setBackgroundColor:v12];

    v13 = [[UILabel alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
    titleLabel = v10->_titleLabel;
    v10->_titleLabel = v13;

    v15 = [UIFont preferredFontForTextStyle:UIFontTextStyleBody];
    [(UILabel *)v10->_titleLabel setFont:v15];

    v16 = +[UIColor secondaryLabelColor];
    [(UILabel *)v10->_titleLabel setColor:v16];

    [(UILabel *)v10->_titleLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UILabel *)v10->_titleLabel setAccessibilityIdentifier:@"Title"];
    [(UILabel *)v10->_titleLabel setNumberOfLines:0];
    [contentView addSubview:v10->_titleLabel];
    v20 = v10->_titleLabel;
    v17 = [NSArray arrayWithObjects:&v20 count:1];
    [contentView setAccessibilityElements:v17];

    [(STStorageMessageItemCell *)v10 setNeedsUpdateConstraints];
    [(STStorageMessageItemCell *)v10 updateConstraintsIfNeeded];
    [(STStorageMessageItemCell *)v10 refreshCellContentsWithSpecifier:specifierCopy];
  }

  return v10;
}

- (void)updateConstraints
{
  if (!self->_constraints)
  {
    contentView = [(STStorageMessageItemCell *)self contentView];
    v4 = +[NSMutableArray array];
    constraints = self->_constraints;
    self->_constraints = v4;

    v6 = self->_constraints;
    v7 = [NSLayoutConstraint constraintWithItem:self->_titleLabel attribute:5 relatedBy:0 toItem:contentView attribute:5 multiplier:1.0 constant:15.0];
    [(NSMutableArray *)v6 addObject:v7];

    v8 = self->_constraints;
    v9 = [NSLayoutConstraint constraintWithItem:self->_titleLabel attribute:6 relatedBy:0 toItem:contentView attribute:6 multiplier:1.0 constant:-15.0];
    [(NSMutableArray *)v8 addObject:v9];

    v10 = self->_constraints;
    v11 = [NSLayoutConstraint constraintWithItem:self->_titleLabel attribute:9 relatedBy:0 toItem:contentView attribute:9 multiplier:1.0 constant:0.0];
    [(NSMutableArray *)v10 addObject:v11];

    v12 = self->_constraints;
    v13 = [NSLayoutConstraint constraintWithItem:self->_titleLabel attribute:3 relatedBy:0 toItem:contentView attribute:3 multiplier:1.0 constant:12.0];
    [(NSMutableArray *)v12 addObject:v13];

    v14 = self->_constraints;
    v15 = [NSLayoutConstraint constraintWithItem:contentView attribute:4 relatedBy:0 toItem:self->_titleLabel attribute:4 multiplier:1.0 constant:12.0];
    [(NSMutableArray *)v14 addObject:v15];

    [NSLayoutConstraint activateConstraints:self->_constraints];
  }

  v16.receiver = self;
  v16.super_class = STStorageMessageItemCell;
  [(STStorageMessageItemCell *)&v16 updateConstraints];
}

- (void)refreshCellContentsWithSpecifier:(id)specifier
{
  v6.receiver = self;
  v6.super_class = STStorageMessageItemCell;
  specifierCopy = specifier;
  [(STStorageMessageItemCell *)&v6 refreshCellContentsWithSpecifier:specifierCopy];
  v5 = [specifierCopy propertyForKey:{STStorageTitleKey, v6.receiver, v6.super_class}];

  [(UILabel *)self->_titleLabel setText:v5];
  [(STStorageMessageItemCell *)self setNeedsLayout];
}

@end