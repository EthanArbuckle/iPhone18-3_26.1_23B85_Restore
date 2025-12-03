@interface HSPCAssociatedServiceRow
- (HSPCAssociatedServiceRow)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (void)updateConstraints;
- (void)updateUIWithServiceType:(id)type;
- (void)updateUIWithTuple:(id)tuple;
@end

@implementation HSPCAssociatedServiceRow

- (HSPCAssociatedServiceRow)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v10.receiver = self;
  v10.super_class = HSPCAssociatedServiceRow;
  v4 = [(HSPCRow *)&v10 initWithStyle:style reuseIdentifier:identifier];
  if (v4)
  {
    v5 = [[HUIconView alloc] initWithFrame:1 contentMode:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
    [v5 setIconSize:2];
    contentView = [(HSPCAssociatedServiceRow *)v4 contentView];
    [contentView addSubview:v5];

    [(HSPCRow *)v4 setLeftView:v5];
    textField = [(HSPCRow *)v4 textField];
    [textField setEnabled:0];

    textField2 = [(HSPCRow *)v4 textField];
    [textField2 setClearButtonMode:0];
  }

  return v4;
}

- (void)updateConstraints
{
  if (![(HSPCRow *)self constraintsSet])
  {
    leftView = [(HSPCRow *)self leftView];
    [leftView setTranslatesAutoresizingMaskIntoConstraints:0];

    leftView2 = [(HSPCRow *)self leftView];
    leadingAnchor = [leftView2 leadingAnchor];
    contentView = [(HSPCAssociatedServiceRow *)self contentView];
    leadingAnchor2 = [contentView leadingAnchor];
    +[HSPCRow horizontalLeadingMargin];
    v35 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:?];
    v47[0] = v35;
    leftView3 = [(HSPCRow *)self leftView];
    centerYAnchor = [leftView3 centerYAnchor];
    contentView2 = [(HSPCAssociatedServiceRow *)self contentView];
    centerYAnchor2 = [contentView2 centerYAnchor];
    v5 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
    v47[1] = v5;
    leftView4 = [(HSPCRow *)self leftView];
    heightAnchor = [leftView4 heightAnchor];
    +[HSPCRow leftImageSize];
    v9 = [heightAnchor constraintEqualToConstant:v8];
    v47[2] = v9;
    leftView5 = [(HSPCRow *)self leftView];
    widthAnchor = [leftView5 widthAnchor];
    +[HSPCRow leftImageSize];
    v12 = [widthAnchor constraintEqualToConstant:?];
    v47[3] = v12;
    v13 = [NSArray arrayWithObjects:v47 count:4];
    [NSLayoutConstraint activateConstraints:v13];

    textField = [(HSPCRow *)self textField];
    [textField setTranslatesAutoresizingMaskIntoConstraints:0];

    textField2 = [(HSPCRow *)self textField];
    leadingAnchor3 = [textField2 leadingAnchor];
    leftView6 = [(HSPCRow *)self leftView];
    trailingAnchor = [leftView6 trailingAnchor];
    +[HSPCRow horizontalSpacing];
    v36 = [leadingAnchor3 constraintEqualToAnchor:trailingAnchor constant:?];
    v46[0] = v36;
    textField3 = [(HSPCRow *)self textField];
    topAnchor = [textField3 topAnchor];
    contentView3 = [(HSPCAssociatedServiceRow *)self contentView];
    topAnchor2 = [contentView3 topAnchor];
    v27 = [topAnchor constraintEqualToAnchor:topAnchor2];
    v46[1] = v27;
    textField4 = [(HSPCRow *)self textField];
    trailingAnchor2 = [textField4 trailingAnchor];
    contentView4 = [(HSPCAssociatedServiceRow *)self contentView];
    trailingAnchor3 = [contentView4 trailingAnchor];
    +[HSPCRow horizontalTrailingMargin];
    v18 = [trailingAnchor2 constraintEqualToAnchor:trailingAnchor3 constant:-v17];
    v46[2] = v18;
    textField5 = [(HSPCRow *)self textField];
    bottomAnchor = [textField5 bottomAnchor];
    contentView5 = [(HSPCAssociatedServiceRow *)self contentView];
    bottomAnchor2 = [contentView5 bottomAnchor];
    v23 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
    v46[3] = v23;
    v24 = [NSArray arrayWithObjects:v46 count:4];
    [NSLayoutConstraint activateConstraints:v24];

    [(HSPCRow *)self setConstraintsSet:1];
  }

  v45.receiver = self;
  v45.super_class = HSPCAssociatedServiceRow;
  [(HSPCAssociatedServiceRow *)&v45 updateConstraints];
}

- (void)updateUIWithServiceType:(id)type
{
  typeCopy = type;
  v10 = [HFServiceIconFactory defaultIconDescriptorForServiceType:typeCopy serviceSubtype:0];
  objc_opt_class();
  leftView = [(HSPCRow *)self leftView];
  if (objc_opt_isKindOfClass())
  {
    v6 = leftView;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  [v7 updateWithIconDescriptor:v10 displayStyle:1 animated:0];
  v8 = [HMService hf_userFriendlyLocalizedCapitalizedDescription:typeCopy];

  textField = [(HSPCRow *)self textField];
  [textField setText:v8];

  [(HSPCAssociatedServiceRow *)self setNeedsUpdateConstraints];
}

- (void)updateUIWithTuple:(id)tuple
{
  tupleCopy = tuple;
  accessory = [tupleCopy accessory];
  v11 = [HFServiceIconFactory iconDescriptorForAccessory:accessory];

  objc_opt_class();
  leftView = [(HSPCRow *)self leftView];
  if (objc_opt_isKindOfClass())
  {
    v7 = leftView;
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;

  [v8 updateWithIconDescriptor:v11 displayStyle:1 animated:0];
  titleForAccessory = [tupleCopy titleForAccessory];

  textField = [(HSPCRow *)self textField];
  [textField setText:titleForAccessory];

  [(HSPCAssociatedServiceRow *)self setNeedsUpdateConstraints];
}

@end