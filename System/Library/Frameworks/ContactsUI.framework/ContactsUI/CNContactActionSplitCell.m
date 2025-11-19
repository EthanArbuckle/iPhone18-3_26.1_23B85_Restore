@interface CNContactActionSplitCell
- (CNContactActionSplitCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (id)constantConstraints;
- (id)labelView;
- (id)standardButton;
- (void)_setupButton:(id)a3 forAction:(id)a4;
- (void)setCardGroupItem:(id)a3;
- (void)setLabelTextAttributes:(id)a3;
@end

@implementation CNContactActionSplitCell

- (void)_setupButton:(id)a3 forAction:(id)a4
{
  v11 = a3;
  v6 = a4;
  v7 = [v6 title];
  [v11 setTitle:v7 forState:0];

  if (v6)
  {
    v8 = [v6 target];
    [v11 addTarget:v8 action:objc_msgSend(v6 forControlEvents:{"selector"), 64}];
  }

  else
  {
    [v11 removeTarget:0 action:0 forControlEvents:0xFFFFFFFFLL];
  }

  v9 = [v6 isDestructive];

  if (v9)
  {
    +[CNUIColorRepository contactCardDestructiveActionTitleTextColor];
  }

  else
  {
    [(CNContactActionSplitCell *)self tintColor];
  }
  v10 = ;
  [v11 setTitleColor:v10 forState:0];
}

- (id)constantConstraints
{
  v3 = MEMORY[0x1E695DF70];
  v16.receiver = self;
  v16.super_class = CNContactActionSplitCell;
  v4 = [(CNLabeledCell *)&v16 constantConstraints];
  v5 = [v3 arrayWithArray:v4];

  v6 = [MEMORY[0x1E696ACD8] constraintWithItem:self->_rightLabel attribute:5 relatedBy:0 toItem:self->_leftLabel attribute:6 multiplier:1.0 constant:16.0];
  [v5 addObject:v6];

  v7 = MEMORY[0x1E696ACD8];
  rightLabel = self->_rightLabel;
  v9 = [(CNContactActionSplitCell *)self contentView];
  v10 = [v7 constraintWithItem:rightLabel attribute:5 relatedBy:0 toItem:v9 attribute:9 multiplier:1.0 constant:0.0];
  [v5 addObject:v10];

  v11 = [v5 lastObject];
  LODWORD(v12) = 1132068864;
  [v11 setPriority:v12];

  v13 = [MEMORY[0x1E696ACD8] constraintWithItem:self->_rightLabel attribute:3 relatedBy:0 toItem:self->_leftLabel attribute:3 multiplier:1.0 constant:0.0];
  [v5 addObject:v13];

  v14 = [MEMORY[0x1E696ACD8] constraintWithItem:self->_rightLabel attribute:4 relatedBy:0 toItem:self->_leftLabel attribute:4 multiplier:1.0 constant:0.0];
  [v5 addObject:v14];

  return v5;
}

- (void)setLabelTextAttributes:(id)a3
{
  v5.receiver = self;
  v5.super_class = CNContactActionSplitCell;
  v4 = a3;
  [(CNLabeledCell *)&v5 setLabelTextAttributes:v4];
  [(UIButton *)self->_rightLabel setAb_textAttributes:v4, v5.receiver, v5.super_class];
}

- (id)labelView
{
  leftLabel = self->_leftLabel;
  if (!leftLabel)
  {
    v4 = [(CNContactActionSplitCell *)self standardButton];
    v5 = self->_leftLabel;
    self->_leftLabel = v4;

    leftLabel = self->_leftLabel;
  }

  return leftLabel;
}

- (id)standardButton
{
  v2 = [MEMORY[0x1E69DC738] buttonWithType:1];
  [v2 setTranslatesAutoresizingMaskIntoConstraints:0];
  v3 = [v2 titleLabel];
  [v3 setNumberOfLines:2];

  [v2 setExclusiveTouch:1];
  v4 = [MEMORY[0x1E69DB878] defaultFontForTextStyle:*MEMORY[0x1E69DDD80]];
  v5 = [v2 titleLabel];
  [v5 setFont:v4];

  LODWORD(v6) = 1148846080;
  [v2 setContentCompressionResistancePriority:1 forAxis:v6];
  LODWORD(v7) = 1132003328;
  [v2 setContentHuggingPriority:0 forAxis:v7];
  if ([*MEMORY[0x1E69DDA98] userInterfaceLayoutDirection] == 1)
  {
    v8 = 2;
  }

  else
  {
    v8 = 1;
  }

  [v2 setContentHorizontalAlignment:v8];

  return v2;
}

- (void)setCardGroupItem:(id)a3
{
  v4 = a3;
  v5 = [(CNContactCell *)self cardGroupItem];

  if (v5 != v4)
  {
    v15.receiver = self;
    v15.super_class = CNContactActionSplitCell;
    [(CNContactCell *)&v15 setCardGroupItem:v4];
    v6 = [(CNContactActionSplitCell *)self leftLabel];
    v7 = [v4 actions];
    v8 = [v7 objectAtIndexedSubscript:0];
    [(CNContactActionSplitCell *)self _setupButton:v6 forAction:v8];

    v9 = [v4 actions];
    v10 = [v9 count];

    v11 = [(CNContactActionSplitCell *)self rightLabel];
    v12 = v11;
    if (v10 < 2)
    {
      [v11 setTitle:0 forState:0];

      v12 = [(CNContactActionSplitCell *)self rightLabel];
      [v12 removeTarget:0 action:0 forControlEvents:64];
    }

    else
    {
      v13 = [v4 actions];
      v14 = [v13 objectAtIndexedSubscript:1];
      [(CNContactActionSplitCell *)self _setupButton:v12 forAction:v14];
    }
  }
}

- (CNContactActionSplitCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v13.receiver = self;
  v13.super_class = CNContactActionSplitCell;
  v4 = [(CNLabeledCell *)&v13 initWithStyle:a3 reuseIdentifier:a4];
  v5 = v4;
  if (v4)
  {
    v6 = [(CNContactActionSplitCell *)v4 standardButton];
    rightLabel = v5->_rightLabel;
    v5->_rightLabel = v6;

    v8 = [(CNContactActionSplitCell *)v5 contentView];
    [v8 addSubview:v5->_rightLabel];

    v9 = [(CNContactActionSplitCell *)v5 labelView];
    [(UIButton *)v5->_rightLabel contentHuggingPriorityForAxis:0];
    *&v11 = v10 + 1.0;
    [v9 setContentHuggingPriority:0 forAxis:v11];
  }

  return v5;
}

@end