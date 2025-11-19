@interface CNPropertyPhoneNumberCell
- (BOOL)shouldPerformDefaultAction;
- (BOOL)shouldShowEmergencyBadge;
- (CNPropertyPhoneNumberCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (void)addStaticIdentityBadgeView;
- (void)buildEmergencyImageView;
- (void)copy:(id)a3;
- (void)setEmergencyPhoneNumber:(BOOL)a3;
- (void)setProperty:(id)a3;
- (void)setStaticIdentityVerified:(BOOL)a3;
- (void)updateEmergencyBadge;
- (void)updateStaticIdentityBadge;
- (void)updateTransportButtons;
@end

@implementation CNPropertyPhoneNumberCell

- (void)copy:(id)a3
{
  v4 = [(CNPropertyCell *)self propertyItem];
  v7 = [v4 displayValue];

  if (![(CNPropertyPhoneNumberCell *)self effectiveUserInterfaceLayoutDirection])
  {
    v5 = [v7 _cn_stringBySanitizingPhoneNumber];

    v7 = v5;
  }

  v6 = [MEMORY[0x1E69DCD50] generalPasteboard];
  [v6 setString:v7];
}

- (void)updateTransportButtons
{
  if (![(CNPropertySimpleTransportCell *)self allowsActions]|| [(CNPropertyCell *)self isSuggested]|| ![(CNPropertySimpleTransportCell *)self shouldShowTransportButtons])
  {
    v13 = [(CNPropertySimpleTransportCell *)self transportIcon1];
    [v13 setTransportType:0];

    v14 = [(CNPropertySimpleTransportCell *)self transportIcon2];
    [v14 setTransportType:0];

    v11 = [(CNPropertySimpleTransportCell *)self transportIcon3];
    v12 = v11;
LABEL_9:
    v15 = 0;
LABEL_10:
    [v11 setTransportType:v15];

    goto LABEL_11;
  }

  v3 = [(CNPropertySimpleTransportCell *)self transportIcon3];
  [v3 setTransportType:0];

  v4 = [(CNPropertyCell *)self propertyItem];
  v5 = [v4 allowsPhone];

  if (!v5)
  {
    v16 = [(CNPropertySimpleTransportCell *)self transportIcon2];
    [v16 setTransportType:0];

    v17 = [(CNPropertyCell *)self propertyItem];
    v18 = [v17 allowsIMessage];

    v11 = [(CNPropertySimpleTransportCell *)self transportIcon1];
    v12 = v11;
    if (v18)
    {
      v15 = 2;
      goto LABEL_10;
    }

    goto LABEL_16;
  }

  v6 = [(CNPropertySimpleTransportCell *)self transportIcon1];
  [v6 setTransportType:1];

  v7 = [(CNPropertyCell *)self propertyItem];
  v8 = [v7 allowsTTY];

  v9 = [(CNPropertyCell *)self propertyItem];
  v10 = [v9 allowsIMessage];

  v11 = [(CNPropertySimpleTransportCell *)self transportIcon2];
  v12 = v11;
  if (!v10)
  {
    if (v8)
    {
      goto LABEL_15;
    }

LABEL_16:
    v11 = v12;
    goto LABEL_9;
  }

  [v11 setTransportType:2];

  if (v8)
  {
    v11 = [(CNPropertySimpleTransportCell *)self transportIcon3];
    v12 = v11;
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

  v6 = [(CNPropertyPhoneNumberCell *)self emergencyImageView];
  [v6 setTranslatesAutoresizingMaskIntoConstraints:0];

  v7 = [(CNPropertyPhoneNumberCell *)self emergencyImageView];
  LODWORD(v8) = 1148846080;
  [v7 setContentCompressionResistancePriority:0 forAxis:v8];

  v9 = [(CNPropertyPhoneNumberCell *)self contentView];
  v10 = [(CNPropertyPhoneNumberCell *)self emergencyImageView];
  [v9 addSubview:v10];

  v11 = MEMORY[0x1E695DF70];
  v32.receiver = self;
  v32.super_class = CNPropertyPhoneNumberCell;
  v12 = [(CNLabeledCell *)&v32 constantConstraints];
  v24 = [v11 arrayWithArray:v12];

  v30 = [(CNPropertyPhoneNumberCell *)self emergencyImageView];
  v28 = [v30 centerYAnchor];
  v29 = [(CNPropertyPhoneNumberCell *)self contentView];
  v27 = [v29 centerYAnchor];
  v26 = [v28 constraintEqualToAnchor:v27];
  v33[0] = v26;
  v25 = [(CNPropertyPhoneNumberCell *)self emergencyImageView];
  v22 = [v25 trailingAnchor];
  v23 = [(CNPropertyPhoneNumberCell *)self contentView];
  v13 = [v23 trailingAnchor];
  v14 = [v22 constraintEqualToAnchor:v13 constant:-16.0];
  v33[1] = v14;
  v15 = [(CNPropertyPhoneNumberCell *)self emergencyImageView];
  v16 = [v15 leadingAnchor];
  v17 = [(CNPropertySimpleCell *)self valueView];
  v18 = [v17 trailingAnchor];
  v19 = [v16 constraintEqualToAnchor:v18 constant:16.0];
  v33[2] = v19;
  v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:v33 count:3];
  [v24 addObjectsFromArray:v20];

  v21 = [(CNPropertyPhoneNumberCell *)self contentView];
  [v21 addConstraints:v24];
}

- (void)updateEmergencyBadge
{
  if ([(CNPropertyPhoneNumberCell *)self shouldShowEmergencyBadge])
  {
    v3 = [(CNPropertyPhoneNumberCell *)self emergencyImageView];

    if (!v3)
    {
      [(CNPropertyPhoneNumberCell *)self buildEmergencyImageView];
    }
  }

  v4 = [(CNPropertyPhoneNumberCell *)self shouldShowEmergencyBadge];
  v5 = [(CNPropertyPhoneNumberCell *)self emergencyImageView];
  [v5 setHidden:!v4];
}

- (BOOL)shouldPerformDefaultAction
{
  v7.receiver = self;
  v7.super_class = CNPropertyPhoneNumberCell;
  if (![(CNPropertySimpleTransportCell *)&v7 shouldPerformDefaultAction])
  {
    return [(CNPropertyCell *)self isSuggested];
  }

  v3 = [(CNPropertyCell *)self propertyItem];
  if ([v3 allowsPhone])
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

- (BOOL)shouldShowEmergencyBadge
{
  if ([(CNPropertySimpleTransportCell *)self shouldShowTransportButtons])
  {
    return 0;
  }

  return [(CNPropertyPhoneNumberCell *)self isEmergencyPhoneNumber];
}

- (void)setEmergencyPhoneNumber:(BOOL)a3
{
  if (self->_emergencyPhoneNumber != a3)
  {
    self->_emergencyPhoneNumber = a3;
    [(CNPropertyPhoneNumberCell *)self updateEmergencyBadge];
  }
}

- (void)addStaticIdentityBadgeView
{
  v19[2] = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(CNStaticIdentityBadgeView);
  [(CNStaticIdentityBadgeView *)v3 setTranslatesAutoresizingMaskIntoConstraints:0];
  v4 = [(CNPropertyPhoneNumberCell *)self contentView];
  [v4 addSubview:v3];

  v5 = MEMORY[0x1E695DF70];
  v18.receiver = self;
  v18.super_class = CNPropertyPhoneNumberCell;
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

  v15 = [(CNPropertyPhoneNumberCell *)self contentView];
  [v15 addConstraints:v7];

  [(CNPropertyPhoneNumberCell *)self setStaticIdentityBadgeView:v3];
}

- (void)updateStaticIdentityBadge
{
  if ([(CNPropertyPhoneNumberCell *)self isStaticIdentityVerified])
  {
    v3 = [(CNPropertyPhoneNumberCell *)self staticIdentityBadgeView];

    if (!v3)
    {
      [(CNPropertyPhoneNumberCell *)self addStaticIdentityBadgeView];
    }
  }

  v4 = [(CNPropertyPhoneNumberCell *)self isStaticIdentityVerified];
  v5 = [(CNPropertyPhoneNumberCell *)self staticIdentityBadgeView];
  [v5 setHidden:!v4];
}

- (void)setStaticIdentityVerified:(BOOL)a3
{
  if (self->_staticIdentityVerified != a3)
  {
    self->_staticIdentityVerified = a3;
    [(CNPropertyPhoneNumberCell *)self updateStaticIdentityBadge];
  }
}

- (void)setProperty:(id)a3
{
  v10.receiver = self;
  v10.super_class = CNPropertyPhoneNumberCell;
  v4 = a3;
  [(CNPropertyCell *)&v10 setProperty:v4];
  v5 = [v4 label];
  v6 = [(CNPropertySimpleCell *)self labelView];
  [v6 setAb_text:v5];

  v7 = [v4 value];

  v8 = [v7 formattedStringValue];
  v9 = [(CNPropertySimpleCell *)self valueView];
  [v9 setAb_text:v8];
}

- (CNPropertyPhoneNumberCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v5.receiver = self;
  v5.super_class = CNPropertyPhoneNumberCell;
  return [(CNPropertySimpleTransportCell *)&v5 initWithStyle:a3 reuseIdentifier:a4];
}

@end