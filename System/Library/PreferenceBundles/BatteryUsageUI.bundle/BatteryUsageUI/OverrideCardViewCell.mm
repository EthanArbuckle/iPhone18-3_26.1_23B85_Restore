@interface OverrideCardViewCell
- (OverrideCardViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4 specifier:(id)a5;
- (void)setSeparatorStyle:(int64_t)a3;
@end

@implementation OverrideCardViewCell

- (OverrideCardViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4 specifier:(id)a5
{
  v8 = a5;
  v41.receiver = self;
  v41.super_class = OverrideCardViewCell;
  v9 = [(OverrideCardViewCell *)&v41 initWithStyle:a3 reuseIdentifier:a4 specifier:v8];
  if (v9)
  {
    v10 = [v8 objectForKeyedSubscript:@"OverrideCardViewCellSubTitleKey"];
    v11 = [v8 objectForKeyedSubscript:@"OverrideCardViewCellActionTitleKey"];
    v12 = [v8 objectForKeyedSubscript:@"OverrideCardViewCellActionKey"];
    v13 = [_TtC14BatteryUsageUI26OverrideCardViewController createWithSubtitle:v10 actionTitle:v11 action:v12];

    v14 = [v13 view];
    [v14 setTranslatesAutoresizingMaskIntoConstraints:0];

    v15 = [(OverrideCardViewCell *)v9 contentView];
    v16 = [v13 view];
    [v15 addSubview:v16];

    v40 = [v13 view];
    v38 = [v40 topAnchor];
    v39 = [(OverrideCardViewCell *)v9 contentView];
    v37 = [v39 topAnchor];
    v36 = [v38 constraintEqualToAnchor:v37];
    v42[0] = v36;
    v35 = [v13 view];
    v32 = [v35 leadingAnchor];
    v33 = [(OverrideCardViewCell *)v9 contentView];
    v31 = [v33 leadingAnchor];
    v30 = [v32 constraintEqualToAnchor:v31];
    v42[1] = v30;
    v34 = v13;
    v29 = [v13 view];
    v27 = [v29 trailingAnchor];
    v17 = [(OverrideCardViewCell *)v9 contentView];
    v18 = [v17 trailingAnchor];
    v19 = [v27 constraintEqualToAnchor:v18];
    v42[2] = v19;
    v20 = [v13 view];
    [v20 bottomAnchor];
    v22 = v21 = v8;
    v23 = [(OverrideCardViewCell *)v9 contentView];
    v24 = [v23 bottomAnchor];
    v25 = [v22 constraintEqualToAnchor:v24];
    v42[3] = v25;
    v28 = [NSArray arrayWithObjects:v42 count:4];

    v8 = v21;
    [NSLayoutConstraint activateConstraints:v28];
    [(OverrideCardViewCell *)v9 setNeedsLayout];
  }

  return v9;
}

- (void)setSeparatorStyle:(int64_t)a3
{
  v3.receiver = self;
  v3.super_class = OverrideCardViewCell;
  [(OverrideCardViewCell *)&v3 setSeparatorStyle:0];
}

@end