@interface HSPCNameServiceNoIconRow
- (void)updateConstraints;
@end

@implementation HSPCNameServiceNoIconRow

- (void)updateConstraints
{
  if (![(HSPCRow *)self constraintsSet])
  {
    v3 = [(HSPCRow *)self textField];
    [v3 setTranslatesAutoresizingMaskIntoConstraints:0];

    v25 = [(HSPCRow *)self textField];
    v23 = [v25 leadingAnchor];
    v24 = [(HSPCNameServiceNoIconRow *)self contentView];
    v22 = [v24 leadingAnchor];
    +[HSPCRow horizontalLeadingMargin];
    v21 = [v23 constraintEqualToAnchor:v22 constant:?];
    v27[0] = v21;
    v20 = [(HSPCRow *)self textField];
    v18 = [v20 topAnchor];
    v19 = [(HSPCNameServiceNoIconRow *)self contentView];
    v17 = [v19 topAnchor];
    v16 = [v18 constraintEqualToAnchor:v17];
    v27[1] = v16;
    v15 = [(HSPCRow *)self textField];
    v14 = [v15 trailingAnchor];
    v4 = [(HSPCNameServiceNoIconRow *)self contentView];
    v5 = [v4 trailingAnchor];
    +[HSPCRow horizontalTrailingMargin];
    v7 = [v14 constraintEqualToAnchor:v5 constant:-v6];
    v27[2] = v7;
    v8 = [(HSPCRow *)self textField];
    v9 = [v8 bottomAnchor];
    v10 = [(HSPCNameServiceNoIconRow *)self contentView];
    v11 = [v10 bottomAnchor];
    v12 = [v9 constraintEqualToAnchor:v11];
    v27[3] = v12;
    v13 = [NSArray arrayWithObjects:v27 count:4];
    [NSLayoutConstraint activateConstraints:v13];

    [(HSPCRow *)self setConstraintsSet:1];
  }

  v26.receiver = self;
  v26.super_class = HSPCNameServiceNoIconRow;
  [(HSPCNameServiceRow *)&v26 updateConstraints];
}

@end