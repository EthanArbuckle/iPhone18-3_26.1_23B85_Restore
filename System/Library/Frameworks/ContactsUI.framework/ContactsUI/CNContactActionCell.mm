@interface CNContactActionCell
- (CNContactAction)action;
- (id)labelView;
- (id)rightMostView;
- (id)variableConstraints;
- (void)setCardGroupItem:(id)item;
- (void)setLabelTextAttributes:(id)attributes;
- (void)tintColorDidChange;
@end

@implementation CNContactActionCell

- (void)tintColorDidChange
{
  v7[1] = *MEMORY[0x1E69E9840];
  v5.receiver = self;
  v5.super_class = CNContactActionCell;
  [(CNLabeledCell *)&v5 tintColorDidChange];
  v6 = *MEMORY[0x1E69DB650];
  tintColorOverride = [(UIView *)self tintColorOverride];
  v7[0] = tintColorOverride;
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v7 forKeys:&v6 count:1];
  [self cn_updateDictionaryForKey:@"labelTextAttributes" withChanges:v4];
}

- (id)variableConstraints
{
  v3 = MEMORY[0x1E695DF70];
  v16.receiver = self;
  v16.super_class = CNContactActionCell;
  variableConstraints = [(CNLabeledCell *)&v16 variableConstraints];
  v5 = [v3 arrayWithArray:variableConstraints];

  transportIcon = [(CNContactActionCell *)self transportIcon];

  if (transportIcon)
  {
    v7 = MEMORY[0x1E696ACD8];
    transportIcon2 = [(CNContactActionCell *)self transportIcon];
    labelView = [(CNContactActionCell *)self labelView];
    v10 = [v7 constraintWithItem:transportIcon2 attribute:10 relatedBy:0 toItem:labelView attribute:10 multiplier:1.0 constant:0.0];
    [v5 addObject:v10];

    v11 = MEMORY[0x1E696ACD8];
    labelView2 = [(CNContactActionCell *)self labelView];
    transportIcon3 = [(CNContactActionCell *)self transportIcon];
    v14 = [v11 constraintWithItem:labelView2 attribute:6 relatedBy:0 toItem:transportIcon3 attribute:5 multiplier:1.0 constant:-16.0];
    [v5 addObject:v14];
  }

  return v5;
}

- (CNContactAction)action
{
  actionGroupItem = [(CNContactActionCell *)self actionGroupItem];
  actions = [actionGroupItem actions];
  v4 = [actions objectAtIndexedSubscript:0];

  return v4;
}

- (void)setCardGroupItem:(id)item
{
  itemCopy = item;
  cardGroupItem = [(CNContactCell *)self cardGroupItem];

  if (cardGroupItem != itemCopy)
  {
    v26.receiver = self;
    v26.super_class = CNContactActionCell;
    [(CNContactCell *)&v26 setCardGroupItem:itemCopy];
    action = [(CNContactActionCell *)self action];
    title = [action title];
    label = [(CNContactActionCell *)self label];
    [label setText:title];

    action2 = [(CNContactActionCell *)self action];
    transportType = [action2 transportType];

    transportIcon = [(CNContactActionCell *)self transportIcon];
    v12 = transportIcon;
    if (transportType)
    {

      if (!v12)
      {
        v13 = +[CNTransportButton transportButton];
        [(CNContactActionCell *)self setTransportIcon:v13];

        transportIcon2 = [(CNContactActionCell *)self transportIcon];
        [transportIcon2 setTranslatesAutoresizingMaskIntoConstraints:0];

        contentView = [(CNContactActionCell *)self contentView];
        transportIcon3 = [(CNContactActionCell *)self transportIcon];
        [contentView addSubview:transportIcon3];

        [(CNContactActionCell *)self setNeedsUpdateConstraints];
      }

      action3 = [(CNContactActionCell *)self action];
      glyphColor = [action3 glyphColor];
      transportIcon4 = [(CNContactActionCell *)self transportIcon];
      [transportIcon4 setGlyphColor:glyphColor];

      action4 = [(CNContactActionCell *)self action];
      transportType2 = [action4 transportType];
      transportIcon5 = [(CNContactActionCell *)self transportIcon];
      [transportIcon5 setTransportType:transportType2];

      action5 = [(CNContactActionCell *)self action];
      showBackgroundPlatter = [action5 showBackgroundPlatter];
      transportIcon6 = [(CNContactActionCell *)self transportIcon];
      [transportIcon6 setShowBackgroundPlatter:showBackgroundPlatter];
    }

    else
    {
      [transportIcon removeFromSuperview];

      [(CNContactActionCell *)self setTransportIcon:0];
      [(CNContactActionCell *)self setNeedsUpdateConstraints];
    }
  }
}

- (void)setLabelTextAttributes:(id)attributes
{
  attributesCopy = attributes;
  if ([MEMORY[0x1E69DB878] ab_preferredContentSizeCategoryIsAccessibilityCategory])
  {
    v5 = 0;
    v6 = 0;
  }

  else
  {
    action = [(CNContactActionCell *)self action];
    wrapTitle = [action wrapTitle];

    v5 = wrapTitle ^ 1u;
    if (wrapTitle)
    {
      v6 = 0;
    }

    else
    {
      v6 = 4;
    }
  }

  label = [(CNContactActionCell *)self label];
  [label setNumberOfLines:v5];

  label2 = [(CNContactActionCell *)self label];
  [label2 setLineBreakMode:v6];

  action2 = [(CNContactActionCell *)self action];
  color = [action2 color];

  if (color)
  {
    v13 = [attributesCopy mutableCopy];
    action3 = [(CNContactActionCell *)self action];
    color2 = [action3 color];
    [v13 setObject:color2 forKeyedSubscript:*MEMORY[0x1E69DB650]];

    v21.receiver = self;
    v21.super_class = CNContactActionCell;
    [(CNLabeledCell *)&v21 setLabelTextAttributes:v13];
  }

  else
  {
    action4 = [(CNContactActionCell *)self action];
    isDestructive = [action4 isDestructive];

    if (!isDestructive)
    {
      v19.receiver = self;
      v19.super_class = CNContactActionCell;
      [(CNLabeledCell *)&v19 setLabelTextAttributes:attributesCopy];
      goto LABEL_11;
    }

    v13 = [attributesCopy mutableCopy];
    v18 = +[CNUIColorRepository contactCardDestructiveActionTitleTextColor];
    [v13 setObject:v18 forKeyedSubscript:*MEMORY[0x1E69DB650]];

    v20.receiver = self;
    v20.super_class = CNContactActionCell;
    [(CNLabeledCell *)&v20 setLabelTextAttributes:v13];
  }

LABEL_11:
}

- (id)rightMostView
{
  transportIcon = [(CNContactActionCell *)self transportIcon];

  if (transportIcon)
  {
    transportIcon2 = [(CNContactActionCell *)self transportIcon];
  }

  else
  {
    v6.receiver = self;
    v6.super_class = CNContactActionCell;
    transportIcon2 = [(CNLabeledCell *)&v6 rightMostView];
  }

  return transportIcon2;
}

- (id)labelView
{
  label = self->_label;
  if (!label)
  {
    standardLabelView = [(CNLabeledCell *)self standardLabelView];
    v5 = self->_label;
    self->_label = standardLabelView;

    label = self->_label;
  }

  return label;
}

@end