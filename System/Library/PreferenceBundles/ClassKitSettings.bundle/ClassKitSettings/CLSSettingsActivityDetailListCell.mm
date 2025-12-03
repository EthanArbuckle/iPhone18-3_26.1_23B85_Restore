@interface CLSSettingsActivityDetailListCell
- (CLSSettingsActivityDetailListCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (void)applyConstraints;
- (void)refreshCellContentsWithSpecifier:(id)specifier;
- (void)setValue:(id)value;
@end

@implementation CLSSettingsActivityDetailListCell

- (CLSSettingsActivityDetailListCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v8.receiver = self;
  v8.super_class = CLSSettingsActivityDetailListCell;
  v4 = [(CLSSettingsActivityDetailListCell *)&v8 initWithStyle:style reuseIdentifier:identifier];
  v5 = v4;
  if (v4)
  {
    [(CLSSettingsActivityDetailListCell *)v4 setSelectionStyle:0];
    [(CLSSettingsActivityDetailListCell *)v5 setUserInteractionEnabled:0];
    valueLabel = [(CLSSettingsActivityDetailListCell *)v5 valueLabel];
    [valueLabel setAdjustsFontSizeToFitWidth:1];
    [valueLabel setMinimumScaleFactor:0.823529412];
    [(CLSSettingsActivityDetailListCell *)v5 applyConstraints];
  }

  return v5;
}

- (void)refreshCellContentsWithSpecifier:(id)specifier
{
  v4.receiver = self;
  v4.super_class = CLSSettingsActivityDetailListCell;
  [(CLSSettingsActivityDetailListCell *)&v4 refreshCellContentsWithSpecifier:specifier];
  [(CLSSettingsActivityDetailListCell *)self setAccessoryType:0];
}

- (void)setValue:(id)value
{
  v3.receiver = self;
  v3.super_class = CLSSettingsActivityDetailListCell;
  [(CLSSettingsActivityDetailListCell *)&v3 setValue:value];
}

- (void)applyConstraints
{
  valueLabel = [(CLSSettingsActivityDetailListCell *)self valueLabel];
  LODWORD(v4) = 1148846080;
  [valueLabel setContentCompressionResistancePriority:0 forAxis:v4];

  valueLabel2 = [(CLSSettingsActivityDetailListCell *)self valueLabel];
  [valueLabel2 setTranslatesAutoresizingMaskIntoConstraints:0];

  valueLabel3 = [(CLSSettingsActivityDetailListCell *)self valueLabel];
  trailingAnchor = [valueLabel3 trailingAnchor];
  contentView = [(CLSSettingsActivityDetailListCell *)self contentView];
  trailingAnchor2 = [contentView trailingAnchor];
  v8 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:-16.0];
  v40[0] = v8;
  valueLabel4 = [(CLSSettingsActivityDetailListCell *)self valueLabel];
  centerYAnchor = [valueLabel4 centerYAnchor];
  contentView2 = [(CLSSettingsActivityDetailListCell *)self contentView];
  centerYAnchor2 = [contentView2 centerYAnchor];
  v13 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
  v40[1] = v13;
  v14 = [NSArray arrayWithObjects:v40 count:2];
  [NSLayoutConstraint activateConstraints:v14];

  titleLabel = [(CLSSettingsActivityDetailListCell *)self titleLabel];
  [titleLabel setTranslatesAutoresizingMaskIntoConstraints:0];

  titleLabel2 = [(CLSSettingsActivityDetailListCell *)self titleLabel];
  trailingAnchor3 = [titleLabel2 trailingAnchor];
  valueLabel5 = [(CLSSettingsActivityDetailListCell *)self valueLabel];
  leadingAnchor = [valueLabel5 leadingAnchor];
  v32 = [trailingAnchor3 constraintEqualToAnchor:leadingAnchor constant:-16.0];
  v39[0] = v32;
  titleLabel3 = [(CLSSettingsActivityDetailListCell *)self titleLabel];
  topAnchor = [titleLabel3 topAnchor];
  contentView3 = [(CLSSettingsActivityDetailListCell *)self contentView];
  topAnchor2 = [contentView3 topAnchor];
  v27 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:10.0];
  v39[1] = v27;
  titleLabel4 = [(CLSSettingsActivityDetailListCell *)self titleLabel];
  bottomAnchor = [titleLabel4 bottomAnchor];
  contentView4 = [(CLSSettingsActivityDetailListCell *)self contentView];
  bottomAnchor2 = [contentView4 bottomAnchor];
  v19 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2 constant:-10.0];
  v39[2] = v19;
  titleLabel5 = [(CLSSettingsActivityDetailListCell *)self titleLabel];
  leadingAnchor2 = [titleLabel5 leadingAnchor];
  contentView5 = [(CLSSettingsActivityDetailListCell *)self contentView];
  leadingAnchor3 = [contentView5 leadingAnchor];
  v24 = [leadingAnchor2 constraintEqualToAnchor:leadingAnchor3 constant:16.0];
  v39[3] = v24;
  v25 = [NSArray arrayWithObjects:v39 count:4];
  [NSLayoutConstraint activateConstraints:v25];
}

@end