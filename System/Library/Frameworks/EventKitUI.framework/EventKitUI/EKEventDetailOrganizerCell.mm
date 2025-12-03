@interface EKEventDetailOrganizerCell
+ (id)_organizerFont;
+ (id)_titleFont;
- (BOOL)shouldDisplayForEvent;
- (BOOL)update;
- (EKEventDetailOrganizerCell)initWithEvent:(id)event editable:(BOOL)editable organizerOverride:(id)override;
- (id)_organizerLabel;
- (id)_organizerView;
- (id)_titleView;
- (void)_updateDisclosureIndicator;
- (void)setHideDisclosureIndicator:(BOOL)indicator;
@end

@implementation EKEventDetailOrganizerCell

- (EKEventDetailOrganizerCell)initWithEvent:(id)event editable:(BOOL)editable organizerOverride:(id)override
{
  editableCopy = editable;
  overrideCopy = override;
  v68.receiver = self;
  v68.super_class = EKEventDetailOrganizerCell;
  v9 = [(EKEventDetailCell *)&v68 initWithEvent:event editable:editableCopy style:0];
  organizerOverride = v9->_organizerOverride;
  v9->_organizerOverride = overrideCopy;
  v67 = overrideCopy;

  _titleView = [(EKEventDetailOrganizerCell *)v9 _titleView];
  _organizerView = [(EKEventDetailOrganizerCell *)v9 _organizerView];
  _organizerLabel = [(EKEventDetailOrganizerCell *)v9 _organizerLabel];
  contentView = [(EKEventDetailOrganizerCell *)v9 contentView];
  [contentView addSubview:_titleView];

  contentView2 = [(EKEventDetailOrganizerCell *)v9 contentView];
  [contentView2 addSubview:_organizerLabel];

  contentView3 = [(EKEventDetailOrganizerCell *)v9 contentView];
  [contentView3 addSubview:_organizerView];

  v17 = _organizerView;
  v18 = _NSDictionaryOfVariableBindings(&cfstr_TitleAvatarNam.isa, _titleView, _organizerView, _organizerLabel, 0);
  array = [MEMORY[0x1E695DF70] array];
  v20 = [MEMORY[0x1E696ACD8] constraintsWithVisualFormat:@"H:|-[avatar(==37)]-(12)-[title]-|" options:0 metrics:0 views:v18];
  [array addObjectsFromArray:v20];

  v66 = v18;
  v21 = [MEMORY[0x1E696ACD8] constraintsWithVisualFormat:@"H:|-[avatar(==37)]-(12)-[name]-|" options:0 metrics:0 views:v18];
  [array addObjectsFromArray:v21];

  v22 = [MEMORY[0x1E696ACD8] constraintsWithVisualFormat:@"V:|-(>=0)-[avatar]-(>=0)-|" options:0 metrics:0 views:v18];
  [array addObjectsFromArray:v22];

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

  firstBaselineAnchor = [_organizerLabel firstBaselineAnchor];
  lastBaselineAnchor = [_titleView lastBaselineAnchor];
  v37 = [firstBaselineAnchor constraintEqualToAnchor:lastBaselineAnchor constant:v30];
  [array addObject:v37];

  v38 = objc_alloc_init(MEMORY[0x1E69DCC20]);
  contentView4 = [(EKEventDetailOrganizerCell *)v9 contentView];
  [contentView4 addLayoutGuide:v38];

  firstBaselineAnchor2 = [_titleView firstBaselineAnchor];
  topAnchor = [v38 topAnchor];
  v42 = [firstBaselineAnchor2 constraintEqualToAnchor:topAnchor constant:v26];
  [array addObject:v42];

  bottomAnchor = [v38 bottomAnchor];
  lastBaselineAnchor2 = [_organizerLabel lastBaselineAnchor];
  v45 = [bottomAnchor constraintEqualToAnchor:lastBaselineAnchor2 constant:v34];
  [array addObject:v45];

  centerYAnchor = [v38 centerYAnchor];
  contentView5 = [(EKEventDetailOrganizerCell *)v9 contentView];
  centerYAnchor2 = [contentView5 centerYAnchor];
  v49 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
  [array addObject:v49];

  topAnchor2 = [v38 topAnchor];
  contentView6 = [(EKEventDetailOrganizerCell *)v9 contentView];
  topAnchor3 = [contentView6 topAnchor];
  v53 = [topAnchor2 constraintGreaterThanOrEqualToAnchor:topAnchor3];
  [array addObject:v53];

  bottomAnchor2 = [v38 bottomAnchor];
  contentView7 = [(EKEventDetailOrganizerCell *)v9 contentView];
  bottomAnchor3 = [contentView7 bottomAnchor];
  v57 = [bottomAnchor2 constraintLessThanOrEqualToAnchor:bottomAnchor3];
  [array addObject:v57];

  centerYAnchor3 = [v17 centerYAnchor];
  contentView8 = [(EKEventDetailOrganizerCell *)v9 contentView];
  centerYAnchor4 = [contentView8 centerYAnchor];
  v61 = [centerYAnchor3 constraintEqualToAnchor:centerYAnchor4];
  [array addObject:v61];

  contentView9 = [(EKEventDetailOrganizerCell *)v9 contentView];
  heightAnchor = [contentView9 heightAnchor];
  v64 = [heightAnchor constraintGreaterThanOrEqualToConstant:60.0];
  [array addObject:v64];

  [(EKEventDetailOrganizerCell *)v9 update];
  [MEMORY[0x1E696ACD8] activateConstraints:array];

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
  organizer = [(EKEvent *)self->super._event organizer];
  v4 = organizer;
  v5 = organizer && ![organizer isCurrentUser] || self->_organizerOverride != 0;

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

    _titleView = [(EKEventDetailOrganizerCell *)self _titleView];
    [_titleView setText:v8];

    v10 = +[EKEventDetailOrganizerCell _titleFont];
    _titleView2 = [(EKEventDetailOrganizerCell *)self _titleView];
    [_titleView2 setFont:v10];

    secondaryLabelColor = [MEMORY[0x1E69DC888] secondaryLabelColor];
    _titleView3 = [(EKEventDetailOrganizerCell *)self _titleView];
    [_titleView3 setTextColor:secondaryLabelColor];

    textLabel = [(EKEventDetailOrganizerCell *)self textLabel];
    [textLabel setText:0];

    organizerName = self->_organizerName;
    self->_organizerName = 0;

    v16 = self->_organizerOverride;
    if (v16)
    {
      organizer = v16;
    }

    else
    {
      organizer = [(EKEvent *)self->super._event organizer];
      if (!organizer)
      {
LABEL_15:
        [(EKEventDetailOrganizerCell *)self _updateDisclosureIndicator];

        return v3;
      }
    }

    v18 = DisplayStringForIdentity(organizer, 1, 0);
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
      _organizerView = [(EKEventDetailOrganizerCell *)self _organizerView];
      [_organizerView setContact:v23];

      _organizerLabel2 = DisplayAddressForIdentity(organizer);
      _organizerLabel = [(EKEventDetailOrganizerCell *)self _organizerLabel];
      [_organizerLabel setText:_organizerLabel2];
    }

    else
    {
      _organizerView2 = [(EKEventDetailOrganizerCell *)self _organizerView];
      v28 = DisplayAddressForIdentity(organizer);
      [(EKIdentityProtocol *)organizer name];
      v39 = v3;
      v3 = v18;
      v30 = v29 = v8;
      firstName = [(EKIdentityProtocol *)organizer firstName];
      lastName = [(EKIdentityProtocol *)organizer lastName];
      [_organizerView2 updateWithAddress:v28 fullName:v30 firstName:firstName lastName:lastName];

      v8 = v29;
      v18 = v3;
      LOBYTE(v3) = v39;

      v33 = self->_organizerName;
      _organizerLabel2 = [(EKEventDetailOrganizerCell *)self _organizerLabel];
      [_organizerLabel2 setText:v33];
    }

    v34 = +[EKEventDetailOrganizerCell _organizerFont];
    _organizerLabel3 = [(EKEventDetailOrganizerCell *)self _organizerLabel];
    [_organizerLabel3 setFont:v34];

    labelColor = [MEMORY[0x1E69DC888] labelColor];
    _organizerLabel4 = [(EKEventDetailOrganizerCell *)self _organizerLabel];
    [_organizerLabel4 setTextColor:labelColor];

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

- (void)setHideDisclosureIndicator:(BOOL)indicator
{
  if (self->_hideDisclosureIndicator != indicator)
  {
    self->_hideDisclosureIndicator = indicator;
    [(EKEventDetailOrganizerCell *)self _updateDisclosureIndicator];
  }
}

@end