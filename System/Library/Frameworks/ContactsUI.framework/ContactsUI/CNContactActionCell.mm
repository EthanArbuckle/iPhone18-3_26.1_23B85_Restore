@interface CNContactActionCell
- (CNContactAction)action;
- (id)labelView;
- (id)rightMostView;
- (id)variableConstraints;
- (void)setCardGroupItem:(id)a3;
- (void)setLabelTextAttributes:(id)a3;
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
  v3 = [(UIView *)self tintColorOverride];
  v7[0] = v3;
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v7 forKeys:&v6 count:1];
  [self cn_updateDictionaryForKey:@"labelTextAttributes" withChanges:v4];
}

- (id)variableConstraints
{
  v3 = MEMORY[0x1E695DF70];
  v16.receiver = self;
  v16.super_class = CNContactActionCell;
  v4 = [(CNLabeledCell *)&v16 variableConstraints];
  v5 = [v3 arrayWithArray:v4];

  v6 = [(CNContactActionCell *)self transportIcon];

  if (v6)
  {
    v7 = MEMORY[0x1E696ACD8];
    v8 = [(CNContactActionCell *)self transportIcon];
    v9 = [(CNContactActionCell *)self labelView];
    v10 = [v7 constraintWithItem:v8 attribute:10 relatedBy:0 toItem:v9 attribute:10 multiplier:1.0 constant:0.0];
    [v5 addObject:v10];

    v11 = MEMORY[0x1E696ACD8];
    v12 = [(CNContactActionCell *)self labelView];
    v13 = [(CNContactActionCell *)self transportIcon];
    v14 = [v11 constraintWithItem:v12 attribute:6 relatedBy:0 toItem:v13 attribute:5 multiplier:1.0 constant:-16.0];
    [v5 addObject:v14];
  }

  return v5;
}

- (CNContactAction)action
{
  v2 = [(CNContactActionCell *)self actionGroupItem];
  v3 = [v2 actions];
  v4 = [v3 objectAtIndexedSubscript:0];

  return v4;
}

- (void)setCardGroupItem:(id)a3
{
  v4 = a3;
  v5 = [(CNContactCell *)self cardGroupItem];

  if (v5 != v4)
  {
    v26.receiver = self;
    v26.super_class = CNContactActionCell;
    [(CNContactCell *)&v26 setCardGroupItem:v4];
    v6 = [(CNContactActionCell *)self action];
    v7 = [v6 title];
    v8 = [(CNContactActionCell *)self label];
    [v8 setText:v7];

    v9 = [(CNContactActionCell *)self action];
    v10 = [v9 transportType];

    v11 = [(CNContactActionCell *)self transportIcon];
    v12 = v11;
    if (v10)
    {

      if (!v12)
      {
        v13 = +[CNTransportButton transportButton];
        [(CNContactActionCell *)self setTransportIcon:v13];

        v14 = [(CNContactActionCell *)self transportIcon];
        [v14 setTranslatesAutoresizingMaskIntoConstraints:0];

        v15 = [(CNContactActionCell *)self contentView];
        v16 = [(CNContactActionCell *)self transportIcon];
        [v15 addSubview:v16];

        [(CNContactActionCell *)self setNeedsUpdateConstraints];
      }

      v17 = [(CNContactActionCell *)self action];
      v18 = [v17 glyphColor];
      v19 = [(CNContactActionCell *)self transportIcon];
      [v19 setGlyphColor:v18];

      v20 = [(CNContactActionCell *)self action];
      v21 = [v20 transportType];
      v22 = [(CNContactActionCell *)self transportIcon];
      [v22 setTransportType:v21];

      v23 = [(CNContactActionCell *)self action];
      v24 = [v23 showBackgroundPlatter];
      v25 = [(CNContactActionCell *)self transportIcon];
      [v25 setShowBackgroundPlatter:v24];
    }

    else
    {
      [v11 removeFromSuperview];

      [(CNContactActionCell *)self setTransportIcon:0];
      [(CNContactActionCell *)self setNeedsUpdateConstraints];
    }
  }
}

- (void)setLabelTextAttributes:(id)a3
{
  v4 = a3;
  if ([MEMORY[0x1E69DB878] ab_preferredContentSizeCategoryIsAccessibilityCategory])
  {
    v5 = 0;
    v6 = 0;
  }

  else
  {
    v7 = [(CNContactActionCell *)self action];
    v8 = [v7 wrapTitle];

    v5 = v8 ^ 1u;
    if (v8)
    {
      v6 = 0;
    }

    else
    {
      v6 = 4;
    }
  }

  v9 = [(CNContactActionCell *)self label];
  [v9 setNumberOfLines:v5];

  v10 = [(CNContactActionCell *)self label];
  [v10 setLineBreakMode:v6];

  v11 = [(CNContactActionCell *)self action];
  v12 = [v11 color];

  if (v12)
  {
    v13 = [v4 mutableCopy];
    v14 = [(CNContactActionCell *)self action];
    v15 = [v14 color];
    [v13 setObject:v15 forKeyedSubscript:*MEMORY[0x1E69DB650]];

    v21.receiver = self;
    v21.super_class = CNContactActionCell;
    [(CNLabeledCell *)&v21 setLabelTextAttributes:v13];
  }

  else
  {
    v16 = [(CNContactActionCell *)self action];
    v17 = [v16 isDestructive];

    if (!v17)
    {
      v19.receiver = self;
      v19.super_class = CNContactActionCell;
      [(CNLabeledCell *)&v19 setLabelTextAttributes:v4];
      goto LABEL_11;
    }

    v13 = [v4 mutableCopy];
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
  v3 = [(CNContactActionCell *)self transportIcon];

  if (v3)
  {
    v4 = [(CNContactActionCell *)self transportIcon];
  }

  else
  {
    v6.receiver = self;
    v6.super_class = CNContactActionCell;
    v4 = [(CNLabeledCell *)&v6 rightMostView];
  }

  return v4;
}

- (id)labelView
{
  label = self->_label;
  if (!label)
  {
    v4 = [(CNLabeledCell *)self standardLabelView];
    v5 = self->_label;
    self->_label = v4;

    label = self->_label;
  }

  return label;
}

@end