@interface ClosableActionCardViewCell
- (ClosableActionCardViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4 specifier:(id)a5;
@end

@implementation ClosableActionCardViewCell

- (ClosableActionCardViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4 specifier:(id)a5
{
  v8 = a5;
  v44.receiver = self;
  v44.super_class = ClosableActionCardViewCell;
  v9 = [(ClosableActionCardViewCell *)&v44 initWithStyle:a3 reuseIdentifier:a4 specifier:v8];
  if (v9)
  {
    v10 = [v8 objectForKeyedSubscript:@"ClosableActionCardViewCellTitleKey"];
    v11 = [v8 objectForKeyedSubscript:@"ClosableActionCardViewCellSubtitleKey"];
    v12 = [v8 objectForKeyedSubscript:@"ClosableActionCardViewCellActionTitleKey"];
    v13 = [v8 objectForKeyedSubscript:@"ClosableActionCardViewCellActionKey"];
    v14 = [v8 objectForKeyedSubscript:@"ClosableActionCardViewCellCloseKey"];
    v15 = [_TtC14BatteryUsageUI29ClosableActionCardViewFactory createWithTitle:v10 subtitle:v11 actionTitle:v12 action:v13 close:v14];
    [(ClosableActionCardViewCell *)v9 setChild:v15];

    v43 = [(ClosableActionCardViewCell *)v9 contentView];
    v16 = [(ClosableActionCardViewCell *)v9 child];
    v17 = [v16 view];
    [(ClosableActionCardViewCell *)v9 setCardView:v17];

    v18 = [(ClosableActionCardViewCell *)v9 cardView];
    [v18 setTranslatesAutoresizingMaskIntoConstraints:0];

    v19 = [(ClosableActionCardViewCell *)v9 cardView];
    [v43 addSubview:v19];

    v42 = [(ClosableActionCardViewCell *)v9 cardView];
    v40 = [v42 topAnchor];
    v41 = [(ClosableActionCardViewCell *)v9 contentView];
    v39 = [v41 topAnchor];
    v38 = [v40 constraintEqualToAnchor:v39];
    v45[0] = v38;
    v37 = [(ClosableActionCardViewCell *)v9 cardView];
    v35 = [v37 leadingAnchor];
    v36 = [(ClosableActionCardViewCell *)v9 contentView];
    v34 = [v36 leadingAnchor];
    v33 = [v35 constraintEqualToAnchor:v34];
    v45[1] = v33;
    v32 = [(ClosableActionCardViewCell *)v9 cardView];
    v30 = [v32 trailingAnchor];
    v20 = [(ClosableActionCardViewCell *)v9 contentView];
    v21 = [v20 trailingAnchor];
    v22 = [v30 constraintEqualToAnchor:v21];
    v45[2] = v22;
    v23 = [(ClosableActionCardViewCell *)v9 cardView];
    v24 = [v23 bottomAnchor];
    v25 = [(ClosableActionCardViewCell *)v9 contentView];
    [v25 bottomAnchor];
    v27 = v26 = v8;
    v28 = [v24 constraintEqualToAnchor:v27];
    v45[3] = v28;
    v31 = [NSArray arrayWithObjects:v45 count:4];

    v8 = v26;
    [NSLayoutConstraint activateConstraints:v31];
    [(ClosableActionCardViewCell *)v9 setNeedsLayout];
  }

  return v9;
}

@end