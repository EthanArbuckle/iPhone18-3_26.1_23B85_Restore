@interface EKEventDetailOrganizerCell
+ (id)_organizerFont;
+ (id)_titleFont;
- (BOOL)shouldDisplayForEvent;
- (BOOL)update;
- (EKEventDetailOrganizerCell)initWithEvent:(id)a3 editable:(BOOL)a4 organizerOverride:(id)a5;
- (id)_organizerLabel;
- (id)_organizerView;
- (id)_titleView;
- (void)_updateDisclosureIndicator;
- (void)setHideDisclosureIndicator:(BOOL)a3;
@end

@implementation EKEventDetailOrganizerCell

- (EKEventDetailOrganizerCell)initWithEvent:(id)a3 editable:(BOOL)a4 organizerOverride:(id)a5
{
  v5 = a4;
  v8 = a5;
  v68.receiver = self;
  v68.super_class = EKEventDetailOrganizerCell;
  v9 = [(EKEventDetailCell *)&v68 initWithEvent:a3 editable:v5 style:0];
  organizerOverride = v9->_organizerOverride;
  v9->_organizerOverride = v8;
  v67 = v8;

  v11 = [(EKEventDetailOrganizerCell *)v9 _titleView];
  v12 = [(EKEventDetailOrganizerCell *)v9 _organizerView];
  v13 = [(EKEventDetailOrganizerCell *)v9 _organizerLabel];
  v14 = [(EKEventDetailOrganizerCell *)v9 contentView];
  [v14 addSubview:v11];

  v15 = [(EKEventDetailOrganizerCell *)v9 contentView];
  [v15 addSubview:v13];

  v16 = [(EKEventDetailOrganizerCell *)v9 contentView];
  [v16 addSubview:v12];

  v17 = v12;
  v18 = _NSDictionaryOfVariableBindings(&cfstr_TitleAvatarNam.isa, v11, v12, v13, 0);
  v19 = [MEMORY[0x1E695DF70] array];
  v20 = [MEMORY[0x1E696ACD8] constraintsWithVisualFormat:@"H:|-[avatar(==37)]-(12)-[title]-|" options:0 metrics:0 views:v18];
  [v19 addObjectsFromArray:v20];

  v66 = v18;
  v21 = [MEMORY[0x1E696ACD8] constraintsWithVisualFormat:@"H:|-[avatar(==37)]-(12)-[name]-|" options:0 metrics:0 views:v18];
  [v19 addObjectsFromArray:v21];

  v22 = [MEMORY[0x1E696ACD8] constraintsWithVisualFormat:@"V:|-(>=0)-[avatar]-(>=0)-|" options:0 metrics:0 views:v18];
  [v19 addObjectsFromArray:v22];

  v23 = +[EKEventDetailOrganizerCell _titleFont];
  [v23 _scaledValueForValue:25.0];
  CalRoundToScreenScale(v24);
  v26 = v25;

  v27 = +[EKEventDetailOrganizerCell _organizerFont];
  [v27 _scaledValueForValue:20.0];
  CalRoundToScreenScale(v28);
  v30 = v29;

  v31 = +[EKEventDetailOrganizerCell _titleFont];
  [v31 _scaledValueForValue:15.0];
  CalRoundToScreenScale(v32);
  v34 = v33;

  v35 = [v13 firstBaselineAnchor];
  v36 = [v11 lastBaselineAnchor];
  v37 = [v35 constraintEqualToAnchor:v36 constant:v30];
  [v19 addObject:v37];

  v38 = objc_alloc_init(MEMORY[0x1E69DCC20]);
  v39 = [(EKEventDetailOrganizerCell *)v9 contentView];
  [v39 addLayoutGuide:v38];

  v40 = [v11 firstBaselineAnchor];
  v41 = [v38 topAnchor];
  v42 = [v40 constraintEqualToAnchor:v41 constant:v26];
  [v19 addObject:v42];

  v43 = [v38 bottomAnchor];
  v44 = [v13 lastBaselineAnchor];
  v45 = [v43 constraintEqualToAnchor:v44 constant:v34];
  [v19 addObject:v45];

  v46 = [v38 centerYAnchor];
  v47 = [(EKEventDetailOrganizerCell *)v9 contentView];
  v48 = [v47 centerYAnchor];
  v49 = [v46 constraintEqualToAnchor:v48];
  [v19 addObject:v49];

  v50 = [v38 topAnchor];
  v51 = [(EKEventDetailOrganizerCell *)v9 contentView];
  v52 = [v51 topAnchor];
  v53 = [v50 constraintGreaterThanOrEqualToAnchor:v52];
  [v19 addObject:v53];

  v54 = [v38 bottomAnchor];
  v55 = [(EKEventDetailOrganizerCell *)v9 contentView];
  v56 = [v55 bottomAnchor];
  v57 = [v54 constraintLessThanOrEqualToAnchor:v56];
  [v19 addObject:v57];

  v58 = [v17 centerYAnchor];
  v59 = [(EKEventDetailOrganizerCell *)v9 contentView];
  v60 = [v59 centerYAnchor];
  v61 = [v58 constraintEqualToAnchor:v60];
  [v19 addObject:v61];

  v62 = [(EKEventDetailOrganizerCell *)v9 contentView];
  v63 = [v62 heightAnchor];
  v64 = [v63 constraintGreaterThanOrEqualToConstant:60.0];
  [v19 addObject:v64];

  [(EKEventDetailOrganizerCell *)v9 update];
  [MEMORY[0x1E696ACD8] activateConstraints:v19];

  return v9;
}

+ (id)_titleFont
{
  v2 = [MEMORY[0x1E69DB880] preferredFontDescriptorWithTextStyle:*MEMORY[0x1E69DDD80] addingSymbolicTraits:0x8000 options:0];
  v3 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDDC0]];
  [v3 pointSize];
  v5 = v4;

  v6 = [MEMORY[0x1E69DB878] fontWithDescriptor:v2 size:v5 * 0.700999975];

  return v6;
}

+ (id)_organizerFont
{
  v2 = [MEMORY[0x1E69DB880] preferredFontDescriptorWithTextStyle:*MEMORY[0x1E69DDD40] addingSymbolicTraits:0x8000 options:0];
  v3 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDDC0]];
  [v3 pointSize];
  v5 = v4;

  v6 = [MEMORY[0x1E69DB878] fontWithDescriptor:v2 size:v5 * 0.700999975];

  return v6;
}

- (BOOL)shouldDisplayForEvent
{
  v3 = [(EKEvent *)self->super._event organizer];
  v4 = v3;
  v5 = v3 && ![v3 isCurrentUser] || self->_organizerOverride != 0;

  return v5;
}

- (BOOL)update
{
  LODWORD(v3) = [(EKEventDetailOrganizerCell *)self shouldDisplayForEvent];
  if (v3)
  {
    organizerOverride = self->_organizerOverride;
    v5 = EventKitUIBundle();
    v6 = v5;
    if (organizerOverride)
    {
      v7 = @"Proposed by";
    }

    else
    {
      v7 = @"Invitation from";
    }

    v8 = [v5 localizedStringForKey:v7 value:&stru_1F4EF6790 table:0];

    v9 = [(EKEventDetailOrganizerCell *)self _titleView];
    [v9 setText:v8];

    v10 = +[EKEventDetailOrganizerCell _titleFont];
    v11 = [(EKEventDetailOrganizerCell *)self _titleView];
    [v11 setFont:v10];

    v12 = [MEMORY[0x1E69DC888] secondaryLabelColor];
    v13 = [(EKEventDetailOrganizerCell *)self _titleView];
    [v13 setTextColor:v12];

    v14 = [(EKEventDetailOrganizerCell *)self textLabel];
    [v14 setText:0];

    organizerName = self->_organizerName;
    self->_organizerName = 0;

    v16 = self->_organizerOverride;
    if (v16)
    {
      v17 = v16;
    }

    else
    {
      v17 = [(EKEvent *)self->super._event organizer];
      if (!v17)
      {
LABEL_15:
        [(EKEventDetailOrganizerCell *)self _updateDisclosureIndicator];

        return v3;
      }
    }

    v18 = DisplayStringForIdentity(v17, 1, 0);
    if ([v18 length])
    {
      v19 = v18;
      v20 = self->_organizerName;
      self->_organizerName = v19;
    }

    else
    {
      v20 = EventKitUIBundle();
      v21 = [v20 localizedStringForKey:@"Unknown" value:&stru_1F4EF6790 table:0];
      v22 = self->_organizerName;
      self->_organizerName = v21;
    }

    if ([(EKEvent *)self->super._event couldBeJunk])
    {
      v23 = objc_opt_new();
      v24 = [(EKEventDetailOrganizerCell *)self _organizerView];
      [v24 setContact:v23];

      v25 = DisplayAddressForIdentity(v17);
      v26 = [(EKEventDetailOrganizerCell *)self _organizerLabel];
      [v26 setText:v25];
    }

    else
    {
      v27 = [(EKEventDetailOrganizerCell *)self _organizerView];
      v28 = DisplayAddressForIdentity(v17);
      [(EKIdentityProtocol *)v17 name];
      v39 = v3;
      v3 = v18;
      v30 = v29 = v8;
      v31 = [(EKIdentityProtocol *)v17 firstName];
      v32 = [(EKIdentityProtocol *)v17 lastName];
      [v27 updateWithAddress:v28 fullName:v30 firstName:v31 lastName:v32];

      v8 = v29;
      v18 = v3;
      LOBYTE(v3) = v39;

      v33 = self->_organizerName;
      v25 = [(EKEventDetailOrganizerCell *)self _organizerLabel];
      [v25 setText:v33];
    }

    v34 = +[EKEventDetailOrganizerCell _organizerFont];
    v35 = [(EKEventDetailOrganizerCell *)self _organizerLabel];
    [v35 setFont:v34];

    v36 = [MEMORY[0x1E69DC888] labelColor];
    v37 = [(EKEventDetailOrganizerCell *)self _organizerLabel];
    [v37 setTextColor:v36];

    goto LABEL_15;
  }

  return v3;
}

- (id)_titleView
{
  titleView = self->_titleView;
  if (!titleView)
  {
    v4 = [objc_alloc(MEMORY[0x1E69DCC10]) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
    v5 = self->_titleView;
    self->_titleView = v4;

    [(UILabel *)self->_titleView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UILabel *)self->_titleView setNumberOfLines:0];
    titleView = self->_titleView;
  }

  return titleView;
}

- (id)_organizerLabel
{
  organizerLabel = self->_organizerLabel;
  if (!organizerLabel)
  {
    v4 = [objc_alloc(MEMORY[0x1E69DCC10]) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
    v5 = self->_organizerLabel;
    self->_organizerLabel = v4;

    [(UILabel *)self->_organizerLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UILabel *)self->_organizerLabel setNumberOfLines:0];
    organizerLabel = self->_organizerLabel;
  }

  return organizerLabel;
}

- (id)_organizerView
{
  organizerView = self->_organizerView;
  if (!organizerView)
  {
    v4 = [[EKUILabeledAvatarView alloc] initWithPlacement:0 options:0];
    v5 = self->_organizerView;
    self->_organizerView = v4;

    [(EKUILabeledAvatarView *)self->_organizerView setTranslatesAutoresizingMaskIntoConstraints:0];
    organizerView = self->_organizerView;
  }

  return organizerView;
}

- (void)_updateDisclosureIndicator
{
  v3 = !self->_hideDisclosureIndicator && [(NSString *)self->_organizerName length]!= 0;

  [(EKEventDetailOrganizerCell *)self setAccessoryType:v3];
}

- (void)setHideDisclosureIndicator:(BOOL)a3
{
  if (self->_hideDisclosureIndicator != a3)
  {
    self->_hideDisclosureIndicator = a3;
    [(EKEventDetailOrganizerCell *)self _updateDisclosureIndicator];
  }
}

@end