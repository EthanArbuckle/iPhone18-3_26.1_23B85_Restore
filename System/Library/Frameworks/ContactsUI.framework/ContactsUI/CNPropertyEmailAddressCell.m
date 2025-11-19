@interface CNPropertyEmailAddressCell
- (BOOL)shouldPerformDefaultAction;
- (BOOL)shouldShowStar;
- (void)addStaticIdentityBadgeView;
- (void)setStaticIdentityVerified:(BOOL)a3;
- (void)updateStaticIdentityBadge;
- (void)updateTransportButtons;
- (void)updateValueWithPropertyItem:(id)a3;
@end

@implementation CNPropertyEmailAddressCell

- (void)addStaticIdentityBadgeView
{
  v19[2] = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(CNStaticIdentityBadgeView);
  [(CNStaticIdentityBadgeView *)v3 setTranslatesAutoresizingMaskIntoConstraints:0];
  v4 = [(CNPropertyEmailAddressCell *)self contentView];
  [v4 addSubview:v3];

  v5 = MEMORY[0x1E695DF70];
  v18.receiver = self;
  v18.super_class = CNPropertyEmailAddressCell;
  v6 = [(CNLabeledCell *)&v18 constantConstraints];
  v7 = [v5 arrayWithArray:v6];

  v16 = [(CNStaticIdentityBadgeView *)v3 centerYAnchor];
  v17 = [(CNPropertySimpleCell *)self labelLabel];
  v8 = [v17 centerYAnchor];
  v9 = [v16 constraintEqualToAnchor:v8];
  v19[0] = v9;
  v10 = [(CNStaticIdentityBadgeView *)v3 trailingAnchor];
  v11 = [(CNPropertySimpleCell *)self valueLabel];
  v12 = [v11 trailingAnchor];
  v13 = [v10 constraintEqualToAnchor:v12];
  v19[1] = v13;
  v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:2];
  [v7 addObjectsFromArray:v14];

  v15 = [(CNPropertyEmailAddressCell *)self contentView];
  [v15 addConstraints:v7];

  [(CNPropertyEmailAddressCell *)self setStaticIdentityBadgeView:v3];
}

- (void)updateStaticIdentityBadge
{
  if ([(CNPropertyEmailAddressCell *)self isStaticIdentityVerified])
  {
    v3 = [(CNPropertyEmailAddressCell *)self staticIdentityBadgeView];

    if (!v3)
    {
      [(CNPropertyEmailAddressCell *)self addStaticIdentityBadgeView];
    }
  }

  v4 = [(CNPropertyEmailAddressCell *)self isStaticIdentityVerified];
  v5 = [(CNPropertyEmailAddressCell *)self staticIdentityBadgeView];
  [v5 setHidden:!v4];
}

- (void)setStaticIdentityVerified:(BOOL)a3
{
  if (self->_staticIdentityVerified != a3)
  {
    self->_staticIdentityVerified = a3;
    [(CNPropertyEmailAddressCell *)self updateStaticIdentityBadge];
  }
}

- (void)updateTransportButtons
{
  if (![(CNPropertySimpleTransportCell *)self allowsActions]|| [(CNPropertyCell *)self isSuggested])
  {
    v3 = [(CNPropertySimpleTransportCell *)self transportIcon1];
    v4 = v3;
    goto LABEL_4;
  }

  v8 = [(CNPropertyCell *)self propertyItem];
  if (([v8 allowsEmail] & 1) == 0)
  {

LABEL_12:
    v14 = [(CNPropertyCell *)self propertyItem];
    v15 = [v14 allowsIMessage];

    v3 = [(CNPropertySimpleTransportCell *)self transportIcon1];
    v4 = v3;
    if (v15)
    {
      v5 = 2;
      goto LABEL_5;
    }

LABEL_4:
    v5 = 0;
LABEL_5:
    [v3 setTransportType:v5];
    v6 = 0;
    goto LABEL_6;
  }

  v9 = [(CNPropertyCell *)self propertyItem];
  v10 = [v9 allowsIMessage];

  if (!v10)
  {
    goto LABEL_12;
  }

  v11 = +[CNCapabilitiesManager defaultCapabilitiesManager];
  v12 = [v11 hasCellularTelephonyCapability];

  v13 = [(CNPropertySimpleTransportCell *)self transportIcon1];
  v4 = v13;
  if (v12)
  {
    [v13 setTransportType:4];
    v6 = 2;
  }

  else
  {
    [v13 setTransportType:2];
    v6 = 4;
  }

LABEL_6:

  v7 = [(CNPropertySimpleTransportCell *)self transportIcon2];
  [v7 setTransportType:v6];

  v16.receiver = self;
  v16.super_class = CNPropertyEmailAddressCell;
  [(CNPropertySimpleTransportCell *)&v16 updateTransportButtons];
}

- (void)updateValueWithPropertyItem:(id)a3
{
  v4 = a3;
  if ([(CNPropertyEmailAddressCell *)self isEditing])
  {
    v12.receiver = self;
    v12.super_class = CNPropertyEmailAddressCell;
    [(CNPropertyCell *)&v12 updateValueWithPropertyItem:v4];
  }

  else
  {
    v5 = *MEMORY[0x1E69964B8];
    v6 = [(CNPropertyCell *)self valueString];
    v7 = (*(v5 + 16))(v5, v6);

    v8 = [(CNPropertySimpleCell *)self valueView];
    v9 = [v8 ab_text];
    v10 = [v7 isEqualToString:v9];

    if ((v10 & 1) == 0)
    {
      v11 = [(CNPropertySimpleCell *)self valueView];
      [v11 setAb_text:v7];
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

  v3 = [(CNPropertyCell *)self propertyItem];
  if ([v3 allowsEmail])
  {
    v4 = 1;
  }

  else
  {
    v5 = [(CNPropertyCell *)self propertyItem];
    v4 = ([v5 allowsIMessage] & 1) != 0 || -[CNPropertyCell isSuggested](self, "isSuggested");
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