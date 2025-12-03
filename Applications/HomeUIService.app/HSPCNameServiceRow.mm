@interface HSPCNameServiceRow
- (HMService)service;
- (HSPCNameServiceRow)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (UIColor)defaultTextColor;
- (void)updateConstraints;
- (void)updateUIWithService:(id)service suggestedName:(id)name;
@end

@implementation HSPCNameServiceRow

- (HSPCNameServiceRow)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v11.receiver = self;
  v11.super_class = HSPCNameServiceRow;
  v4 = [(HSPCRow *)&v11 initWithStyle:style reuseIdentifier:identifier];
  v5 = v4;
  if (v4)
  {
    textField = [(HSPCRow *)v4 textField];
    textColor = [textField textColor];
    objc_storeWeak(&v5->_defaultTextColor, textColor);

    v8 = [[HUIconView alloc] initWithFrame:1 contentMode:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
    [v8 setIconSize:2];
    contentView = [(HSPCNameServiceRow *)v5 contentView];
    [contentView addSubview:v8];

    [(HSPCRow *)v5 setLeftView:v8];
  }

  return v5;
}

- (void)updateConstraints
{
  if (![(HSPCRow *)self constraintsSet])
  {
    leftView = [(HSPCRow *)self leftView];
    [leftView setTranslatesAutoresizingMaskIntoConstraints:0];

    leftView2 = [(HSPCRow *)self leftView];
    leadingAnchor = [leftView2 leadingAnchor];
    contentView = [(HSPCNameServiceRow *)self contentView];
    leadingAnchor2 = [contentView leadingAnchor];
    +[HSPCRow horizontalLeadingMargin];
    v35 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:?];
    v47[0] = v35;
    leftView3 = [(HSPCRow *)self leftView];
    centerYAnchor = [leftView3 centerYAnchor];
    contentView2 = [(HSPCNameServiceRow *)self contentView];
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
    contentView3 = [(HSPCNameServiceRow *)self contentView];
    topAnchor2 = [contentView3 topAnchor];
    v27 = [topAnchor constraintEqualToAnchor:topAnchor2];
    v46[1] = v27;
    textField4 = [(HSPCRow *)self textField];
    trailingAnchor2 = [textField4 trailingAnchor];
    contentView4 = [(HSPCNameServiceRow *)self contentView];
    trailingAnchor3 = [contentView4 trailingAnchor];
    +[HSPCRow horizontalTrailingMargin];
    v18 = [trailingAnchor2 constraintEqualToAnchor:trailingAnchor3 constant:-v17];
    v46[2] = v18;
    textField5 = [(HSPCRow *)self textField];
    bottomAnchor = [textField5 bottomAnchor];
    contentView5 = [(HSPCNameServiceRow *)self contentView];
    bottomAnchor2 = [contentView5 bottomAnchor];
    v23 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
    v46[3] = v23;
    v24 = [NSArray arrayWithObjects:v46 count:4];
    [NSLayoutConstraint activateConstraints:v24];

    [(HSPCRow *)self setConstraintsSet:1];
  }

  v45.receiver = self;
  v45.super_class = HSPCNameServiceRow;
  [(HSPCNameServiceRow *)&v45 updateConstraints];
}

- (void)updateUIWithService:(id)service suggestedName:(id)name
{
  serviceCopy = service;
  nameCopy = name;
  [(HSPCNameServiceRow *)self setService:serviceCopy];
  accessory = [serviceCopy accessory];
  hf_isTelevision = [accessory hf_isTelevision];

  hf_effectiveServiceType = [serviceCopy hf_effectiveServiceType];
  if (hf_isTelevision)
  {
    v10 = 0;
  }

  else
  {
    v10 = [HFServiceIconFactory defaultIconDescriptorForServiceType:hf_effectiveServiceType serviceSubtype:0];
  }

  textField = [(HSPCRow *)self textField];
  [textField setText:nameCopy];

  textField2 = [(HSPCRow *)self textField];
  [textField2 setPlaceholder:nameCopy];

  objc_opt_class();
  leftView = [(HSPCRow *)self leftView];
  if (objc_opt_isKindOfClass())
  {
    v14 = leftView;
  }

  else
  {
    v14 = 0;
  }

  v15 = v14;

  if (v10 && v15)
  {
    [v15 updateWithIconDescriptor:v10 displayStyle:1 animated:0];
  }

  serviceType = [serviceCopy serviceType];
  v17 = [serviceType isEqualToString:HMServiceTypeInputSource];

  v18 = [serviceCopy hf_characteristicOfType:HMCharacteristicTypeConfiguredName];
  hf_isWritable = [v18 hf_isWritable];
  textField3 = [(HSPCRow *)self textField];
  v21 = textField3;
  if (!v17 || (hf_isWritable & 1) != 0)
  {
    [textField3 setEnabled:1];

    defaultTextColor = [(HSPCNameServiceRow *)self defaultTextColor];
    v23 = 3;
  }

  else
  {
    [textField3 setEnabled:0];

    defaultTextColor = +[UIColor lightGrayColor];
    v23 = 0;
  }

  textField4 = [(HSPCRow *)self textField];
  [textField4 setTextColor:defaultTextColor];

  textField5 = [(HSPCRow *)self textField];
  [textField5 setClearButtonMode:v23];

  [(HSPCNameServiceRow *)self setNeedsUpdateConstraints];
}

- (HMService)service
{
  WeakRetained = objc_loadWeakRetained(&self->_service);

  return WeakRetained;
}

- (UIColor)defaultTextColor
{
  WeakRetained = objc_loadWeakRetained(&self->_defaultTextColor);

  return WeakRetained;
}

@end