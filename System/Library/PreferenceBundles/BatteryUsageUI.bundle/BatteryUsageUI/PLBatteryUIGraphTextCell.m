@interface PLBatteryUIGraphTextCell
- (PLBatteryUIGraphTextCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4 specifier:(id)a5;
- (void)refreshCellContentsWithSpecifier:(id)a3;
- (void)updateConstraints;
@end

@implementation PLBatteryUIGraphTextCell

- (PLBatteryUIGraphTextCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4 specifier:(id)a5
{
  v8 = a5;
  v28.receiver = self;
  v28.super_class = PLBatteryUIGraphTextCell;
  v9 = [(PLBatteryUIGraphTextCell *)&v28 initWithStyle:a3 reuseIdentifier:a4 specifier:v8];
  v10 = v9;
  if (v9)
  {
    v11 = [(PLBatteryUIGraphTextCell *)v9 contentView];
    v12 = [[UILabel alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
    [(PLBatteryUIGraphTextCell *)v10 setBatteryUITextLabel:v12];

    v13 = [(PLBatteryUIGraphTextCell *)v10 batteryUITextLabel];
    [v13 setAccessibilityIdentifier:@"BATTERY_UILABEL_IDENTIFIER"];

    v14 = [UIFont preferredFontForTextStyle:UIFontTextStyleFootnote];
    v15 = [(PLBatteryUIGraphTextCell *)v10 batteryUITextLabel];
    [v15 setFont:v14];

    v16 = [(PLBatteryUIGraphTextCell *)v10 batteryUITextLabel];
    [v16 setTranslatesAutoresizingMaskIntoConstraints:0];

    v17 = +[UIColor systemGrayColor];
    v18 = [(PLBatteryUIGraphTextCell *)v10 batteryUITextLabel];
    [v18 setTextColor:v17];

    v19 = [(PLBatteryUIGraphTextCell *)v10 batteryUITextLabel];
    [v19 setTextAlignment:0];

    v20 = +[UIColor clearColor];
    v21 = [(PLBatteryUIGraphTextCell *)v10 batteryUITextLabel];
    [v21 setBackgroundColor:v20];

    v22 = [(PLBatteryUIGraphTextCell *)v10 batteryUITextLabel];
    [v22 setNumberOfLines:0];

    v23 = [(PLBatteryUIGraphTextCell *)v10 batteryUITextLabel];
    [v23 setLineBreakMode:0];

    v24 = [(PLBatteryUIGraphTextCell *)v10 batteryUITextLabel];
    [v11 addSubview:v24];

    [(PLBatteryUIGraphTextCell *)v10 setSeparatorInset:0.0, 0.0, 0.0, 0.0];
    v25 = [(PLBatteryUIGraphTextCell *)v10 batteryUITextLabel];
    v29 = v25;
    v26 = [NSArray arrayWithObjects:&v29 count:1];
    [v11 setAccessibilityElements:v26];

    [(PLBatteryUIGraphTextCell *)v10 refreshCellContentsWithSpecifier:v8];
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

- (void)refreshCellContentsWithSpecifier:(id)a3
{
  v7.receiver = self;
  v7.super_class = PLBatteryUIGraphTextCell;
  v4 = a3;
  [(PLBatteryUIGraphTextCell *)&v7 refreshCellContentsWithSpecifier:v4];
  v5 = [(PLBatteryUIGraphTextCell *)self batteryUITextLabel:v7.receiver];
  v6 = [v4 propertyForKey:@"PLBatteryUIGraphTextKey"];

  [v5 setText:v6];
  [(PLBatteryUIGraphTextCell *)self setNeedsUpdateConstraints];
  [(PLBatteryUIGraphTextCell *)self setNeedsDisplay];
}

@end