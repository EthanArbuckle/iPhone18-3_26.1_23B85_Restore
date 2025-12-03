@interface CNContactActionSplitCell
- (CNContactActionSplitCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (id)constantConstraints;
- (id)labelView;
- (id)standardButton;
- (void)_setupButton:(id)button forAction:(id)action;
- (void)setCardGroupItem:(id)item;
- (void)setLabelTextAttributes:(id)attributes;
@end

@implementation CNContactActionSplitCell

- (void)_setupButton:(id)button forAction:(id)action
{
  buttonCopy = button;
  actionCopy = action;
  title = [actionCopy title];
  [buttonCopy setTitle:title forState:0];

  if (actionCopy)
  {
    target = [actionCopy target];
    [buttonCopy addTarget:target action:objc_msgSend(actionCopy forControlEvents:{"selector"), 64}];
  }

  else
  {
    [buttonCopy removeTarget:0 action:0 forControlEvents:0xFFFFFFFFLL];
  }

  isDestructive = [actionCopy isDestructive];

  if (isDestructive)
  {
    +[CNUIColorRepository contactCardDestructiveActionTitleTextColor];
  }

  else
  {
    [(CNContactActionSplitCell *)self tintColor];
  }
  v10 = ;
  [buttonCopy setTitleColor:v10 forState:0];
}

- (id)constantConstraints
{
  v3 = MEMORY[0x1E695DF70];
  v16.receiver = self;
  v16.super_class = CNContactActionSplitCell;
  constantConstraints = [(CNLabeledCell *)&v16 constantConstraints];
  v5 = [v3 arrayWithArray:constantConstraints];

  v6 = [MEMORY[0x1E696ACD8] constraintWithItem:self->_rightLabel attribute:5 relatedBy:0 toItem:self->_leftLabel attribute:6 multiplier:1.0 constant:16.0];
  [v5 addObject:v6];

  v7 = MEMORY[0x1E696ACD8];
  rightLabel = self->_rightLabel;
  contentView = [(CNContactActionSplitCell *)self contentView];
  v10 = [v7 constraintWithItem:rightLabel attribute:5 relatedBy:0 toItem:contentView attribute:9 multiplier:1.0 constant:0.0];
  [v5 addObject:v10];

  lastObject = [v5 lastObject];
  LODWORD(v12) = 1132068864;
  [lastObject setPriority:v12];

  v13 = [MEMORY[0x1E696ACD8] constraintWithItem:self->_rightLabel attribute:3 relatedBy:0 toItem:self->_leftLabel attribute:3 multiplier:1.0 constant:0.0];
  [v5 addObject:v13];

  v14 = [MEMORY[0x1E696ACD8] constraintWithItem:self->_rightLabel attribute:4 relatedBy:0 toItem:self->_leftLabel attribute:4 multiplier:1.0 constant:0.0];
  [v5 addObject:v14];

  return v5;
}

- (void)setLabelTextAttributes:(id)attributes
{
  v5.receiver = self;
  v5.super_class = CNContactActionSplitCell;
  attributesCopy = attributes;
  [(CNLabeledCell *)&v5 setLabelTextAttributes:attributesCopy];
  [(UIButton *)self->_rightLabel setAb_textAttributes:attributesCopy, v5.receiver, v5.super_class];
}

- (id)labelView
{
  leftLabel = self->_leftLabel;
  if (!leftLabel)
  {
    standardButton = [(CNContactActionSplitCell *)self standardButton];
    v5 = self->_leftLabel;
    self->_leftLabel = standardButton;

    leftLabel = self->_leftLabel;
  }

  return leftLabel;
}

- (id)standardButton
{
  v2 = [MEMORY[0x1E69DC738] buttonWithType:1];
  [v2 setTranslatesAutoresizingMaskIntoConstraints:0];
  titleLabel = [v2 titleLabel];
  [titleLabel setNumberOfLines:2];

  [v2 setExclusiveTouch:1];
  v4 = [MEMORY[0x1E69DB878] defaultFontForTextStyle:*MEMORY[0x1E69DDD80]];
  titleLabel2 = [v2 titleLabel];
  [titleLabel2 setFont:v4];

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

- (void)setCardGroupItem:(id)item
{
  itemCopy = item;
  cardGroupItem = [(CNContactCell *)self cardGroupItem];

  if (cardGroupItem != itemCopy)
  {
    v15.receiver = self;
    v15.super_class = CNContactActionSplitCell;
    [(CNContactCell *)&v15 setCardGroupItem:itemCopy];
    leftLabel = [(CNContactActionSplitCell *)self leftLabel];
    actions = [itemCopy actions];
    v8 = [actions objectAtIndexedSubscript:0];
    [(CNContactActionSplitCell *)self _setupButton:leftLabel forAction:v8];

    actions2 = [itemCopy actions];
    v10 = [actions2 count];

    rightLabel = [(CNContactActionSplitCell *)self rightLabel];
    rightLabel2 = rightLabel;
    if (v10 < 2)
    {
      [rightLabel setTitle:0 forState:0];

      rightLabel2 = [(CNContactActionSplitCell *)self rightLabel];
      [rightLabel2 removeTarget:0 action:0 forControlEvents:64];
    }

    else
    {
      actions3 = [itemCopy actions];
      v14 = [actions3 objectAtIndexedSubscript:1];
      [(CNContactActionSplitCell *)self _setupButton:rightLabel2 forAction:v14];
    }
  }
}

- (CNContactActionSplitCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v13.receiver = self;
  v13.super_class = CNContactActionSplitCell;
  v4 = [(CNLabeledCell *)&v13 initWithStyle:style reuseIdentifier:identifier];
  v5 = v4;
  if (v4)
  {
    standardButton = [(CNContactActionSplitCell *)v4 standardButton];
    rightLabel = v5->_rightLabel;
    v5->_rightLabel = standardButton;

    contentView = [(CNContactActionSplitCell *)v5 contentView];
    [contentView addSubview:v5->_rightLabel];

    labelView = [(CNContactActionSplitCell *)v5 labelView];
    [(UIButton *)v5->_rightLabel contentHuggingPriorityForAxis:0];
    *&v11 = v10 + 1.0;
    [labelView setContentHuggingPriority:0 forAxis:v11];
  }

  return v5;
}

@end