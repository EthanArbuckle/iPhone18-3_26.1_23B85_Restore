@interface CLSSettingsActivityDetailListCell
- (CLSSettingsActivityDetailListCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (void)applyConstraints;
- (void)refreshCellContentsWithSpecifier:(id)a3;
- (void)setValue:(id)a3;
@end

@implementation CLSSettingsActivityDetailListCell

- (CLSSettingsActivityDetailListCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v8.receiver = self;
  v8.super_class = CLSSettingsActivityDetailListCell;
  v4 = [(CLSSettingsActivityDetailListCell *)&v8 initWithStyle:a3 reuseIdentifier:a4];
  v5 = v4;
  if (v4)
  {
    [(CLSSettingsActivityDetailListCell *)v4 setSelectionStyle:0];
    [(CLSSettingsActivityDetailListCell *)v5 setUserInteractionEnabled:0];
    v6 = [(CLSSettingsActivityDetailListCell *)v5 valueLabel];
    [v6 setAdjustsFontSizeToFitWidth:1];
    [v6 setMinimumScaleFactor:0.823529412];
    [(CLSSettingsActivityDetailListCell *)v5 applyConstraints];
  }

  return v5;
}

- (void)refreshCellContentsWithSpecifier:(id)a3
{
  v4.receiver = self;
  v4.super_class = CLSSettingsActivityDetailListCell;
  [(CLSSettingsActivityDetailListCell *)&v4 refreshCellContentsWithSpecifier:a3];
  [(CLSSettingsActivityDetailListCell *)self setAccessoryType:0];
}

- (void)setValue:(id)a3
{
  v3.receiver = self;
  v3.super_class = CLSSettingsActivityDetailListCell;
  [(CLSSettingsActivityDetailListCell *)&v3 setValue:a3];
}

- (void)applyConstraints
{
  v3 = [(CLSSettingsActivityDetailListCell *)self valueLabel];
  LODWORD(v4) = 1148846080;
  [v3 setContentCompressionResistancePriority:0 forAxis:v4];

  v5 = [(CLSSettingsActivityDetailListCell *)self valueLabel];
  [v5 setTranslatesAutoresizingMaskIntoConstraints:0];

  v37 = [(CLSSettingsActivityDetailListCell *)self valueLabel];
  v35 = [v37 trailingAnchor];
  v6 = [(CLSSettingsActivityDetailListCell *)self contentView];
  v7 = [v6 trailingAnchor];
  v8 = [v35 constraintEqualToAnchor:v7 constant:-16.0];
  v40[0] = v8;
  v9 = [(CLSSettingsActivityDetailListCell *)self valueLabel];
  v10 = [v9 centerYAnchor];
  v11 = [(CLSSettingsActivityDetailListCell *)self contentView];
  v12 = [v11 centerYAnchor];
  v13 = [v10 constraintEqualToAnchor:v12];
  v40[1] = v13;
  v14 = [NSArray arrayWithObjects:v40 count:2];
  [NSLayoutConstraint activateConstraints:v14];

  v15 = [(CLSSettingsActivityDetailListCell *)self titleLabel];
  [v15 setTranslatesAutoresizingMaskIntoConstraints:0];

  v38 = [(CLSSettingsActivityDetailListCell *)self titleLabel];
  v34 = [v38 trailingAnchor];
  v36 = [(CLSSettingsActivityDetailListCell *)self valueLabel];
  v33 = [v36 leadingAnchor];
  v32 = [v34 constraintEqualToAnchor:v33 constant:-16.0];
  v39[0] = v32;
  v31 = [(CLSSettingsActivityDetailListCell *)self titleLabel];
  v29 = [v31 topAnchor];
  v30 = [(CLSSettingsActivityDetailListCell *)self contentView];
  v28 = [v30 topAnchor];
  v27 = [v29 constraintEqualToAnchor:v28 constant:10.0];
  v39[1] = v27;
  v26 = [(CLSSettingsActivityDetailListCell *)self titleLabel];
  v16 = [v26 bottomAnchor];
  v17 = [(CLSSettingsActivityDetailListCell *)self contentView];
  v18 = [v17 bottomAnchor];
  v19 = [v16 constraintEqualToAnchor:v18 constant:-10.0];
  v39[2] = v19;
  v20 = [(CLSSettingsActivityDetailListCell *)self titleLabel];
  v21 = [v20 leadingAnchor];
  v22 = [(CLSSettingsActivityDetailListCell *)self contentView];
  v23 = [v22 leadingAnchor];
  v24 = [v21 constraintEqualToAnchor:v23 constant:16.0];
  v39[3] = v24;
  v25 = [NSArray arrayWithObjects:v39 count:4];
  [NSLayoutConstraint activateConstraints:v25];
}

@end