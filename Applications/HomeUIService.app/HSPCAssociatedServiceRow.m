@interface HSPCAssociatedServiceRow
- (HSPCAssociatedServiceRow)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (void)updateConstraints;
- (void)updateUIWithServiceType:(id)a3;
- (void)updateUIWithTuple:(id)a3;
@end

@implementation HSPCAssociatedServiceRow

- (HSPCAssociatedServiceRow)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v10.receiver = self;
  v10.super_class = HSPCAssociatedServiceRow;
  v4 = [(HSPCRow *)&v10 initWithStyle:a3 reuseIdentifier:a4];
  if (v4)
  {
    v5 = [[HUIconView alloc] initWithFrame:1 contentMode:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
    [v5 setIconSize:2];
    v6 = [(HSPCAssociatedServiceRow *)v4 contentView];
    [v6 addSubview:v5];

    [(HSPCRow *)v4 setLeftView:v5];
    v7 = [(HSPCRow *)v4 textField];
    [v7 setEnabled:0];

    v8 = [(HSPCRow *)v4 textField];
    [v8 setClearButtonMode:0];
  }

  return v4;
}

- (void)updateConstraints
{
  if (![(HSPCRow *)self constraintsSet])
  {
    v3 = [(HSPCRow *)self leftView];
    [v3 setTranslatesAutoresizingMaskIntoConstraints:0];

    v43 = [(HSPCRow *)self leftView];
    v39 = [v43 leadingAnchor];
    v41 = [(HSPCAssociatedServiceRow *)self contentView];
    v37 = [v41 leadingAnchor];
    +[HSPCRow horizontalLeadingMargin];
    v35 = [v39 constraintEqualToAnchor:v37 constant:?];
    v47[0] = v35;
    v33 = [(HSPCRow *)self leftView];
    v29 = [v33 centerYAnchor];
    v30 = [(HSPCAssociatedServiceRow *)self contentView];
    v4 = [v30 centerYAnchor];
    v5 = [v29 constraintEqualToAnchor:v4];
    v47[1] = v5;
    v6 = [(HSPCRow *)self leftView];
    v7 = [v6 heightAnchor];
    +[HSPCRow leftImageSize];
    v9 = [v7 constraintEqualToConstant:v8];
    v47[2] = v9;
    v10 = [(HSPCRow *)self leftView];
    v11 = [v10 widthAnchor];
    +[HSPCRow leftImageSize];
    v12 = [v11 constraintEqualToConstant:?];
    v47[3] = v12;
    v13 = [NSArray arrayWithObjects:v47 count:4];
    [NSLayoutConstraint activateConstraints:v13];

    v14 = [(HSPCRow *)self textField];
    [v14 setTranslatesAutoresizingMaskIntoConstraints:0];

    v44 = [(HSPCRow *)self textField];
    v40 = [v44 leadingAnchor];
    v42 = [(HSPCRow *)self leftView];
    v38 = [v42 trailingAnchor];
    +[HSPCRow horizontalSpacing];
    v36 = [v40 constraintEqualToAnchor:v38 constant:?];
    v46[0] = v36;
    v34 = [(HSPCRow *)self textField];
    v31 = [v34 topAnchor];
    v32 = [(HSPCAssociatedServiceRow *)self contentView];
    v28 = [v32 topAnchor];
    v27 = [v31 constraintEqualToAnchor:v28];
    v46[1] = v27;
    v26 = [(HSPCRow *)self textField];
    v25 = [v26 trailingAnchor];
    v15 = [(HSPCAssociatedServiceRow *)self contentView];
    v16 = [v15 trailingAnchor];
    +[HSPCRow horizontalTrailingMargin];
    v18 = [v25 constraintEqualToAnchor:v16 constant:-v17];
    v46[2] = v18;
    v19 = [(HSPCRow *)self textField];
    v20 = [v19 bottomAnchor];
    v21 = [(HSPCAssociatedServiceRow *)self contentView];
    v22 = [v21 bottomAnchor];
    v23 = [v20 constraintEqualToAnchor:v22];
    v46[3] = v23;
    v24 = [NSArray arrayWithObjects:v46 count:4];
    [NSLayoutConstraint activateConstraints:v24];

    [(HSPCRow *)self setConstraintsSet:1];
  }

  v45.receiver = self;
  v45.super_class = HSPCAssociatedServiceRow;
  [(HSPCAssociatedServiceRow *)&v45 updateConstraints];
}

- (void)updateUIWithServiceType:(id)a3
{
  v4 = a3;
  v10 = [HFServiceIconFactory defaultIconDescriptorForServiceType:v4 serviceSubtype:0];
  objc_opt_class();
  v5 = [(HSPCRow *)self leftView];
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  [v7 updateWithIconDescriptor:v10 displayStyle:1 animated:0];
  v8 = [HMService hf_userFriendlyLocalizedCapitalizedDescription:v4];

  v9 = [(HSPCRow *)self textField];
  [v9 setText:v8];

  [(HSPCAssociatedServiceRow *)self setNeedsUpdateConstraints];
}

- (void)updateUIWithTuple:(id)a3
{
  v4 = a3;
  v5 = [v4 accessory];
  v11 = [HFServiceIconFactory iconDescriptorForAccessory:v5];

  objc_opt_class();
  v6 = [(HSPCRow *)self leftView];
  if (objc_opt_isKindOfClass())
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;

  [v8 updateWithIconDescriptor:v11 displayStyle:1 animated:0];
  v9 = [v4 titleForAccessory];

  v10 = [(HSPCRow *)self textField];
  [v10 setText:v9];

  [(HSPCAssociatedServiceRow *)self setNeedsUpdateConstraints];
}

@end