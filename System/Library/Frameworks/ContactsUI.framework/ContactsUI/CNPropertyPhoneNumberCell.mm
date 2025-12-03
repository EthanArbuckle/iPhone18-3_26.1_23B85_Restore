@interface CNPropertyPhoneNumberCell
- (BOOL)shouldPerformDefaultAction;
- (BOOL)shouldShowEmergencyBadge;
- (CNPropertyPhoneNumberCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (void)addStaticIdentityBadgeView;
- (void)buildEmergencyImageView;
- (void)copy:(id)copy;
- (void)setEmergencyPhoneNumber:(BOOL)number;
- (void)setProperty:(id)property;
- (void)setStaticIdentityVerified:(BOOL)verified;
- (void)updateEmergencyBadge;
- (void)updateStaticIdentityBadge;
- (void)updateTransportButtons;
@end

@implementation CNPropertyPhoneNumberCell

- (void)copy:(id)copy
{
  propertyItem = [(CNPropertyCell *)self propertyItem];
  displayValue = [propertyItem displayValue];

  if (![(CNPropertyPhoneNumberCell *)self effectiveUserInterfaceLayoutDirection])
  {
    _cn_stringBySanitizingPhoneNumber = [displayValue _cn_stringBySanitizingPhoneNumber];

    displayValue = _cn_stringBySanitizingPhoneNumber;
  }

  generalPasteboard = [MEMORY[0x1E69DCD50] generalPasteboard];
  [generalPasteboard setString:displayValue];
}

- (void)updateTransportButtons
{
  if (![(CNPropertySimpleTransportCell *)self allowsActions]|| [(CNPropertyCell *)self isSuggested]|| ![(CNPropertySimpleTransportCell *)self shouldShowTransportButtons])
  {
    transportIcon1 = [(CNPropertySimpleTransportCell *)self transportIcon1];
    [transportIcon1 setTransportType:0];

    transportIcon2 = [(CNPropertySimpleTransportCell *)self transportIcon2];
    [transportIcon2 setTransportType:0];

    transportIcon3 = [(CNPropertySimpleTransportCell *)self transportIcon3];
    v12 = transportIcon3;
LABEL_9:
    v15 = 0;
LABEL_10:
    [transportIcon3 setTransportType:v15];

    goto LABEL_11;
  }

  transportIcon32 = [(CNPropertySimpleTransportCell *)self transportIcon3];
  [transportIcon32 setTransportType:0];

  propertyItem = [(CNPropertyCell *)self propertyItem];
  allowsPhone = [propertyItem allowsPhone];

  if (!allowsPhone)
  {
    transportIcon22 = [(CNPropertySimpleTransportCell *)self transportIcon2];
    [transportIcon22 setTransportType:0];

    propertyItem2 = [(CNPropertyCell *)self propertyItem];
    allowsIMessage = [propertyItem2 allowsIMessage];

    transportIcon3 = [(CNPropertySimpleTransportCell *)self transportIcon1];
    v12 = transportIcon3;
    if (allowsIMessage)
    {
      v15 = 2;
      goto LABEL_10;
    }

    goto LABEL_16;
  }

  transportIcon12 = [(CNPropertySimpleTransportCell *)self transportIcon1];
  [transportIcon12 setTransportType:1];

  propertyItem3 = [(CNPropertyCell *)self propertyItem];
  allowsTTY = [propertyItem3 allowsTTY];

  propertyItem4 = [(CNPropertyCell *)self propertyItem];
  allowsIMessage2 = [propertyItem4 allowsIMessage];

  transportIcon3 = [(CNPropertySimpleTransportCell *)self transportIcon2];
  v12 = transportIcon3;
  if (!allowsIMessage2)
  {
    if (allowsTTY)
    {
      goto LABEL_15;
    }

LABEL_16:
    transportIcon3 = v12;
    goto LABEL_9;
  }

  [transportIcon3 setTransportType:2];

  if (allowsTTY)
  {
    transportIcon3 = [(CNPropertySimpleTransportCell *)self transportIcon3];
    v12 = transportIcon3;
LABEL_15:
    v15 = 7;
    goto LABEL_10;
  }

LABEL_11:
  v19.receiver = self;
  v19.super_class = CNPropertyPhoneNumberCell;
  [(CNPropertySimpleTransportCell *)&v19 updateTransportButtons];
}

- (void)buildEmergencyImageView
{
  v33[3] = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E69DCAB8];
  v4 = +[CNUIColorRepository contactListEmergencyContactGlyphColor];
  v31 = [v3 cnui_symbolImageNamed:@"staroflife.fill" scale:3 withColor:v4 useFixedSize:0];

  v5 = [objc_alloc(MEMORY[0x1E69DCAE0]) initWithImage:v31];
  [(CNPropertyPhoneNumberCell *)self setEmergencyImageView:v5];

  emergencyImageView = [(CNPropertyPhoneNumberCell *)self emergencyImageView];
  [emergencyImageView setTranslatesAutoresizingMaskIntoConstraints:0];

  emergencyImageView2 = [(CNPropertyPhoneNumberCell *)self emergencyImageView];
  LODWORD(v8) = 1148846080;
  [emergencyImageView2 setContentCompressionResistancePriority:0 forAxis:v8];

  contentView = [(CNPropertyPhoneNumberCell *)self contentView];
  emergencyImageView3 = [(CNPropertyPhoneNumberCell *)self emergencyImageView];
  [contentView addSubview:emergencyImageView3];

  v11 = MEMORY[0x1E695DF70];
  v32.receiver = self;
  v32.super_class = CNPropertyPhoneNumberCell;
  constantConstraints = [(CNLabeledCell *)&v32 constantConstraints];
  v24 = [v11 arrayWithArray:constantConstraints];

  emergencyImageView4 = [(CNPropertyPhoneNumberCell *)self emergencyImageView];
  centerYAnchor = [emergencyImageView4 centerYAnchor];
  contentView2 = [(CNPropertyPhoneNumberCell *)self contentView];
  centerYAnchor2 = [contentView2 centerYAnchor];
  v26 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
  v33[0] = v26;
  emergencyImageView5 = [(CNPropertyPhoneNumberCell *)self emergencyImageView];
  trailingAnchor = [emergencyImageView5 trailingAnchor];
  contentView3 = [(CNPropertyPhoneNumberCell *)self contentView];
  trailingAnchor2 = [contentView3 trailingAnchor];
  v14 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:-16.0];
  v33[1] = v14;
  emergencyImageView6 = [(CNPropertyPhoneNumberCell *)self emergencyImageView];
  leadingAnchor = [emergencyImageView6 leadingAnchor];
  valueView = [(CNPropertySimpleCell *)self valueView];
  trailingAnchor3 = [valueView trailingAnchor];
  v19 = [leadingAnchor constraintEqualToAnchor:trailingAnchor3 constant:16.0];
  v33[2] = v19;
  v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:v33 count:3];
  [v24 addObjectsFromArray:v20];

  contentView4 = [(CNPropertyPhoneNumberCell *)self contentView];
  [contentView4 addConstraints:v24];
}

- (void)updateEmergencyBadge
{
  if ([(CNPropertyPhoneNumberCell *)self shouldShowEmergencyBadge])
  {
    emergencyImageView = [(CNPropertyPhoneNumberCell *)self emergencyImageView];

    if (!emergencyImageView)
    {
      [(CNPropertyPhoneNumberCell *)self buildEmergencyImageView];
    }
  }

  shouldShowEmergencyBadge = [(CNPropertyPhoneNumberCell *)self shouldShowEmergencyBadge];
  emergencyImageView2 = [(CNPropertyPhoneNumberCell *)self emergencyImageView];
  [emergencyImageView2 setHidden:!shouldShowEmergencyBadge];
}

- (BOOL)shouldPerformDefaultAction
{
  v7.receiver = self;
  v7.super_class = CNPropertyPhoneNumberCell;
  if (![(CNPropertySimpleTransportCell *)&v7 shouldPerformDefaultAction])
  {
    return [(CNPropertyCell *)self isSuggested];
  }

  propertyItem = [(CNPropertyCell *)self propertyItem];
  if ([propertyItem allowsPhone])
  {
    v4 = 1;
  }

  else
  {
    propertyItem2 = [(CNPropertyCell *)self propertyItem];
    v4 = ([propertyItem2 allowsIMessage] & 1) != 0 || -[CNPropertyCell isSuggested](self, "isSuggested");
  }

  return v4;
}

- (BOOL)shouldShowEmergencyBadge
{
  if ([(CNPropertySimpleTransportCell *)self shouldShowTransportButtons])
  {
    return 0;
  }

  return [(CNPropertyPhoneNumberCell *)self isEmergencyPhoneNumber];
}

- (void)setEmergencyPhoneNumber:(BOOL)number
{
  if (self->_emergencyPhoneNumber != number)
  {
    self->_emergencyPhoneNumber = number;
    [(CNPropertyPhoneNumberCell *)self updateEmergencyBadge];
  }
}

- (void)addStaticIdentityBadgeView
{
  v19[2] = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(CNStaticIdentityBadgeView);
  [(CNStaticIdentityBadgeView *)v3 setTranslatesAutoresizingMaskIntoConstraints:0];
  contentView = [(CNPropertyPhoneNumberCell *)self contentView];
  [contentView addSubview:v3];

  v5 = MEMORY[0x1E695DF70];
  v18.receiver = self;
  v18.super_class = CNPropertyPhoneNumberCell;
  constantConstraints = [(CNLabeledCell *)&v18 constantConstraints];
  v7 = [v5 arrayWithArray:constantConstraints];

  centerYAnchor = [(CNStaticIdentityBadgeView *)v3 centerYAnchor];
  labelLabel = [(CNPropertySimpleCell *)self labelLabel];
  centerYAnchor2 = [labelLabel centerYAnchor];
  v9 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
  v19[0] = v9;
  trailingAnchor = [(CNStaticIdentityBadgeView *)v3 trailingAnchor];
  valueLabel = [(CNPropertySimpleCell *)self valueLabel];
  trailingAnchor2 = [valueLabel trailingAnchor];
  v13 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v19[1] = v13;
  v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:2];
  [v7 addObjectsFromArray:v14];

  contentView2 = [(CNPropertyPhoneNumberCell *)self contentView];
  [contentView2 addConstraints:v7];

  [(CNPropertyPhoneNumberCell *)self setStaticIdentityBadgeView:v3];
}

- (void)updateStaticIdentityBadge
{
  if ([(CNPropertyPhoneNumberCell *)self isStaticIdentityVerified])
  {
    staticIdentityBadgeView = [(CNPropertyPhoneNumberCell *)self staticIdentityBadgeView];

    if (!staticIdentityBadgeView)
    {
      [(CNPropertyPhoneNumberCell *)self addStaticIdentityBadgeView];
    }
  }

  isStaticIdentityVerified = [(CNPropertyPhoneNumberCell *)self isStaticIdentityVerified];
  staticIdentityBadgeView2 = [(CNPropertyPhoneNumberCell *)self staticIdentityBadgeView];
  [staticIdentityBadgeView2 setHidden:!isStaticIdentityVerified];
}

- (void)setStaticIdentityVerified:(BOOL)verified
{
  if (self->_staticIdentityVerified != verified)
  {
    self->_staticIdentityVerified = verified;
    [(CNPropertyPhoneNumberCell *)self updateStaticIdentityBadge];
  }
}

- (void)setProperty:(id)property
{
  v10.receiver = self;
  v10.super_class = CNPropertyPhoneNumberCell;
  propertyCopy = property;
  [(CNPropertyCell *)&v10 setProperty:propertyCopy];
  label = [propertyCopy label];
  labelView = [(CNPropertySimpleCell *)self labelView];
  [labelView setAb_text:label];

  value = [propertyCopy value];

  formattedStringValue = [value formattedStringValue];
  valueView = [(CNPropertySimpleCell *)self valueView];
  [valueView setAb_text:formattedStringValue];
}

- (CNPropertyPhoneNumberCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v5.receiver = self;
  v5.super_class = CNPropertyPhoneNumberCell;
  return [(CNPropertySimpleTransportCell *)&v5 initWithStyle:style reuseIdentifier:identifier];
}

@end