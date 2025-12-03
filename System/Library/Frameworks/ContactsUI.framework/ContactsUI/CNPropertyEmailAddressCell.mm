@interface CNPropertyEmailAddressCell
- (BOOL)shouldPerformDefaultAction;
- (BOOL)shouldShowStar;
- (void)addStaticIdentityBadgeView;
- (void)setStaticIdentityVerified:(BOOL)verified;
- (void)updateStaticIdentityBadge;
- (void)updateTransportButtons;
- (void)updateValueWithPropertyItem:(id)item;
@end

@implementation CNPropertyEmailAddressCell

- (void)addStaticIdentityBadgeView
{
  v19[2] = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(CNStaticIdentityBadgeView);
  [(CNStaticIdentityBadgeView *)v3 setTranslatesAutoresizingMaskIntoConstraints:0];
  contentView = [(CNPropertyEmailAddressCell *)self contentView];
  [contentView addSubview:v3];

  v5 = MEMORY[0x1E695DF70];
  v18.receiver = self;
  v18.super_class = CNPropertyEmailAddressCell;
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

  contentView2 = [(CNPropertyEmailAddressCell *)self contentView];
  [contentView2 addConstraints:v7];

  [(CNPropertyEmailAddressCell *)self setStaticIdentityBadgeView:v3];
}

- (void)updateStaticIdentityBadge
{
  if ([(CNPropertyEmailAddressCell *)self isStaticIdentityVerified])
  {
    staticIdentityBadgeView = [(CNPropertyEmailAddressCell *)self staticIdentityBadgeView];

    if (!staticIdentityBadgeView)
    {
      [(CNPropertyEmailAddressCell *)self addStaticIdentityBadgeView];
    }
  }

  isStaticIdentityVerified = [(CNPropertyEmailAddressCell *)self isStaticIdentityVerified];
  staticIdentityBadgeView2 = [(CNPropertyEmailAddressCell *)self staticIdentityBadgeView];
  [staticIdentityBadgeView2 setHidden:!isStaticIdentityVerified];
}

- (void)setStaticIdentityVerified:(BOOL)verified
{
  if (self->_staticIdentityVerified != verified)
  {
    self->_staticIdentityVerified = verified;
    [(CNPropertyEmailAddressCell *)self updateStaticIdentityBadge];
  }
}

- (void)updateTransportButtons
{
  if (![(CNPropertySimpleTransportCell *)self allowsActions]|| [(CNPropertyCell *)self isSuggested])
  {
    transportIcon1 = [(CNPropertySimpleTransportCell *)self transportIcon1];
    v4 = transportIcon1;
    goto LABEL_4;
  }

  propertyItem = [(CNPropertyCell *)self propertyItem];
  if (([propertyItem allowsEmail] & 1) == 0)
  {

LABEL_12:
    propertyItem2 = [(CNPropertyCell *)self propertyItem];
    allowsIMessage = [propertyItem2 allowsIMessage];

    transportIcon1 = [(CNPropertySimpleTransportCell *)self transportIcon1];
    v4 = transportIcon1;
    if (allowsIMessage)
    {
      v5 = 2;
      goto LABEL_5;
    }

LABEL_4:
    v5 = 0;
LABEL_5:
    [transportIcon1 setTransportType:v5];
    v6 = 0;
    goto LABEL_6;
  }

  propertyItem3 = [(CNPropertyCell *)self propertyItem];
  allowsIMessage2 = [propertyItem3 allowsIMessage];

  if (!allowsIMessage2)
  {
    goto LABEL_12;
  }

  v11 = +[CNCapabilitiesManager defaultCapabilitiesManager];
  hasCellularTelephonyCapability = [v11 hasCellularTelephonyCapability];

  transportIcon12 = [(CNPropertySimpleTransportCell *)self transportIcon1];
  v4 = transportIcon12;
  if (hasCellularTelephonyCapability)
  {
    [transportIcon12 setTransportType:4];
    v6 = 2;
  }

  else
  {
    [transportIcon12 setTransportType:2];
    v6 = 4;
  }

LABEL_6:

  transportIcon2 = [(CNPropertySimpleTransportCell *)self transportIcon2];
  [transportIcon2 setTransportType:v6];

  v16.receiver = self;
  v16.super_class = CNPropertyEmailAddressCell;
  [(CNPropertySimpleTransportCell *)&v16 updateTransportButtons];
}

- (void)updateValueWithPropertyItem:(id)item
{
  itemCopy = item;
  if ([(CNPropertyEmailAddressCell *)self isEditing])
  {
    v12.receiver = self;
    v12.super_class = CNPropertyEmailAddressCell;
    [(CNPropertyCell *)&v12 updateValueWithPropertyItem:itemCopy];
  }

  else
  {
    v5 = *MEMORY[0x1E69964B8];
    valueString = [(CNPropertyCell *)self valueString];
    v7 = (*(v5 + 16))(v5, valueString);

    valueView = [(CNPropertySimpleCell *)self valueView];
    ab_text = [valueView ab_text];
    v10 = [v7 isEqualToString:ab_text];

    if ((v10 & 1) == 0)
    {
      valueView2 = [(CNPropertySimpleCell *)self valueView];
      [valueView2 setAb_text:v7];
    }
  }
}

- (BOOL)shouldPerformDefaultAction
{
  v7.receiver = self;
  v7.super_class = CNPropertyEmailAddressCell;
  if (![(CNPropertySimpleTransportCell *)&v7 shouldPerformDefaultAction])
  {
    return [(CNPropertyCell *)self isSuggested];
  }

  propertyItem = [(CNPropertyCell *)self propertyItem];
  if ([propertyItem allowsEmail])
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

- (BOOL)shouldShowStar
{
  v4.receiver = self;
  v4.super_class = CNPropertyEmailAddressCell;
  return [(CNPropertySimpleTransportCell *)&v4 shouldShowStar]|| [(CNPropertyEmailAddressCell *)self isVIP];
}

@end