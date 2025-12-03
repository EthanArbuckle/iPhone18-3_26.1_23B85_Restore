@interface PLBatteryUIGraphTextCell
- (PLBatteryUIGraphTextCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier specifier:(id)specifier;
- (void)refreshCellContentsWithSpecifier:(id)specifier;
- (void)updateConstraints;
@end

@implementation PLBatteryUIGraphTextCell

- (PLBatteryUIGraphTextCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier specifier:(id)specifier
{
  specifierCopy = specifier;
  v28.receiver = self;
  v28.super_class = PLBatteryUIGraphTextCell;
  v9 = [(PLBatteryUIGraphTextCell *)&v28 initWithStyle:style reuseIdentifier:identifier specifier:specifierCopy];
  v10 = v9;
  if (v9)
  {
    contentView = [(PLBatteryUIGraphTextCell *)v9 contentView];
    v12 = [[UILabel alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
    [(PLBatteryUIGraphTextCell *)v10 setBatteryUITextLabel:v12];

    batteryUITextLabel = [(PLBatteryUIGraphTextCell *)v10 batteryUITextLabel];
    [batteryUITextLabel setAccessibilityIdentifier:@"BATTERY_UILABEL_IDENTIFIER"];

    v14 = [UIFont preferredFontForTextStyle:UIFontTextStyleFootnote];
    batteryUITextLabel2 = [(PLBatteryUIGraphTextCell *)v10 batteryUITextLabel];
    [batteryUITextLabel2 setFont:v14];

    batteryUITextLabel3 = [(PLBatteryUIGraphTextCell *)v10 batteryUITextLabel];
    [batteryUITextLabel3 setTranslatesAutoresizingMaskIntoConstraints:0];

    v17 = +[UIColor systemGrayColor];
    batteryUITextLabel4 = [(PLBatteryUIGraphTextCell *)v10 batteryUITextLabel];
    [batteryUITextLabel4 setTextColor:v17];

    batteryUITextLabel5 = [(PLBatteryUIGraphTextCell *)v10 batteryUITextLabel];
    [batteryUITextLabel5 setTextAlignment:0];

    v20 = +[UIColor clearColor];
    batteryUITextLabel6 = [(PLBatteryUIGraphTextCell *)v10 batteryUITextLabel];
    [batteryUITextLabel6 setBackgroundColor:v20];

    batteryUITextLabel7 = [(PLBatteryUIGraphTextCell *)v10 batteryUITextLabel];
    [batteryUITextLabel7 setNumberOfLines:0];

    batteryUITextLabel8 = [(PLBatteryUIGraphTextCell *)v10 batteryUITextLabel];
    [batteryUITextLabel8 setLineBreakMode:0];

    batteryUITextLabel9 = [(PLBatteryUIGraphTextCell *)v10 batteryUITextLabel];
    [contentView addSubview:batteryUITextLabel9];

    [(PLBatteryUIGraphTextCell *)v10 setSeparatorInset:0.0, 0.0, 0.0, 0.0];
    batteryUITextLabel10 = [(PLBatteryUIGraphTextCell *)v10 batteryUITextLabel];
    v29 = batteryUITextLabel10;
    v26 = [NSArray arrayWithObjects:&v29 count:1];
    [contentView setAccessibilityElements:v26];

    [(PLBatteryUIGraphTextCell *)v10 refreshCellContentsWithSpecifier:specifierCopy];
    [(PLBatteryUIGraphTextCell *)v10 setConstraintsAdded:0];
  }

  return v10;
}

- (void)updateConstraints
{
  if ([(PLBatteryUIGraphTextCell *)self constraintsAdded])
  {
    v8.receiver = self;
    v8.super_class = PLBatteryUIGraphTextCell;
    [(PLBatteryUIGraphTextCell *)&v8 updateConstraints];
  }

  else
  {
    v3 = +[NSMutableArray array];
    v4 = _NSDictionaryOfVariableBindings(@"_batteryUITextLabel", self->_batteryUITextLabel, 0);
    v5 = +[NSLayoutConstraint constraintsWithVisualFormat:options:metrics:views:](NSLayoutConstraint, "constraintsWithVisualFormat:options:metrics:views:", @"H:|-15-[_batteryUITextLabel]-15-|", 0, 0, v4);
    v6 = +[NSLayoutConstraint constraintsWithVisualFormat:options:metrics:views:](NSLayoutConstraint, "constraintsWithVisualFormat:options:metrics:views:", @"V:|-15-[_batteryUITextLabel]-15-|", 0, 0, v4);
    [v3 addObjectsFromArray:v5];
    [v3 addObjectsFromArray:v6];
    [NSLayoutConstraint activateConstraints:v3];
    [(PLBatteryUIGraphTextCell *)self setConstraintsAdded:1];
    v7.receiver = self;
    v7.super_class = PLBatteryUIGraphTextCell;
    [(PLBatteryUIGraphTextCell *)&v7 updateConstraints];
  }
}

- (void)refreshCellContentsWithSpecifier:(id)specifier
{
  v7.receiver = self;
  v7.super_class = PLBatteryUIGraphTextCell;
  specifierCopy = specifier;
  [(PLBatteryUIGraphTextCell *)&v7 refreshCellContentsWithSpecifier:specifierCopy];
  v5 = [(PLBatteryUIGraphTextCell *)self batteryUITextLabel:v7.receiver];
  v6 = [specifierCopy propertyForKey:@"PLBatteryUIGraphTextKey"];

  [v5 setText:v6];
  [(PLBatteryUIGraphTextCell *)self setNeedsUpdateConstraints];
  [(PLBatteryUIGraphTextCell *)self setNeedsDisplay];
}

@end