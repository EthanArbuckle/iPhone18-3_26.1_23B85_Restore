@interface HSPCNameServiceNoIconRow
- (void)updateConstraints;
@end

@implementation HSPCNameServiceNoIconRow

- (void)updateConstraints
{
  if (![(HSPCRow *)self constraintsSet])
  {
    textField = [(HSPCRow *)self textField];
    [textField setTranslatesAutoresizingMaskIntoConstraints:0];

    textField2 = [(HSPCRow *)self textField];
    leadingAnchor = [textField2 leadingAnchor];
    contentView = [(HSPCNameServiceNoIconRow *)self contentView];
    leadingAnchor2 = [contentView leadingAnchor];
    +[HSPCRow horizontalLeadingMargin];
    v21 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:?];
    v27[0] = v21;
    textField3 = [(HSPCRow *)self textField];
    topAnchor = [textField3 topAnchor];
    contentView2 = [(HSPCNameServiceNoIconRow *)self contentView];
    topAnchor2 = [contentView2 topAnchor];
    v16 = [topAnchor constraintEqualToAnchor:topAnchor2];
    v27[1] = v16;
    textField4 = [(HSPCRow *)self textField];
    trailingAnchor = [textField4 trailingAnchor];
    contentView3 = [(HSPCNameServiceNoIconRow *)self contentView];
    trailingAnchor2 = [contentView3 trailingAnchor];
    +[HSPCRow horizontalTrailingMargin];
    v7 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:-v6];
    v27[2] = v7;
    textField5 = [(HSPCRow *)self textField];
    bottomAnchor = [textField5 bottomAnchor];
    contentView4 = [(HSPCNameServiceNoIconRow *)self contentView];
    bottomAnchor2 = [contentView4 bottomAnchor];
    v12 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
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