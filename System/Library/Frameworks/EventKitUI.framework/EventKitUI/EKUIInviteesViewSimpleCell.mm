@interface EKUIInviteesViewSimpleCell
- (EKUIInviteesViewSimpleCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (void)updateConstraints;
@end

@implementation EKUIInviteesViewSimpleCell

- (EKUIInviteesViewSimpleCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v13.receiver = self;
  v13.super_class = EKUIInviteesViewSimpleCell;
  v4 = [(EKUIInviteesViewSimpleCell *)&v13 initWithStyle:style reuseIdentifier:identifier];
  v5 = v4;
  if (v4)
  {
    [(EKUIInviteesViewSimpleCell *)v4 setAccessoryType:1];
    v6 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    [v6 setTranslatesAutoresizingMaskIntoConstraints:0];
    _simpleTextLabelFont = [objc_opt_class() _simpleTextLabelFont];
    [v6 setFont:_simpleTextLabelFont];

    textLabel = [(EKUIInviteesViewSimpleCell *)v5 textLabel];
    textColor = [textLabel textColor];
    [v6 setTextColor:textColor];

    [v6 setNumberOfLines:0];
    labelText = [objc_opt_class() labelText];
    [v6 setText:labelText];

    contentView = [(EKUIInviteesViewSimpleCell *)v5 contentView];
    [contentView addSubview:v6];

    [(EKUIInviteesViewSimpleCell *)v5 setSimpleTextLabel:v6];
    [(EKUIInviteesViewSimpleCell *)v5 setSeparatorInset:*MEMORY[0x1E69DDCE0], *(MEMORY[0x1E69DDCE0] + 8), *(MEMORY[0x1E69DDCE0] + 16), *(MEMORY[0x1E69DDCE0] + 24)];
    [(EKUIInviteesViewSimpleCell *)v5 setNeedsUpdateConstraints];
  }

  return v5;
}

- (void)updateConstraints
{
  persistentConstraints = [(EKUIInviteesViewSimpleCell *)self persistentConstraints];

  if (!persistentConstraints)
  {
    v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
    if ([(EKUIInviteesViewSimpleCell *)self isCentered])
    {
      v5 = MEMORY[0x1E696ACD8];
      simpleTextLabel = [(EKUIInviteesViewSimpleCell *)self simpleTextLabel];
      contentView = [(EKUIInviteesViewSimpleCell *)self contentView];
      v8 = [v5 constraintWithItem:simpleTextLabel attribute:9 relatedBy:0 toItem:contentView attribute:9 multiplier:1.0 constant:0.0];
      [v4 addObject:v8];
    }

    v9 = MEMORY[0x1E696ACD8];
    simpleTextLabel2 = [(EKUIInviteesViewSimpleCell *)self simpleTextLabel];
    contentView2 = [(EKUIInviteesViewSimpleCell *)self contentView];
    v12 = [v9 constraintWithItem:simpleTextLabel2 attribute:5 relatedBy:0 toItem:contentView2 attribute:17 multiplier:1.0 constant:0.0];
    [v4 addObject:v12];

    v13 = MEMORY[0x1E696ACD8];
    simpleTextLabel3 = [(EKUIInviteesViewSimpleCell *)self simpleTextLabel];
    contentView3 = [(EKUIInviteesViewSimpleCell *)self contentView];
    v16 = [v13 constraintWithItem:simpleTextLabel3 attribute:6 relatedBy:0 toItem:contentView3 attribute:6 multiplier:1.0 constant:0.0];
    [v4 addObject:v16];

    v17 = MEMORY[0x1E696ACD8];
    simpleTextLabel4 = [(EKUIInviteesViewSimpleCell *)self simpleTextLabel];
    contentView4 = [(EKUIInviteesViewSimpleCell *)self contentView];
    _simpleTextLabelFont = [objc_opt_class() _simpleTextLabelFont];
    [_simpleTextLabelFont _scaledValueForValue:28.0];
    v22 = [v17 constraintWithItem:simpleTextLabel4 attribute:12 relatedBy:0 toItem:contentView4 attribute:3 multiplier:1.0 constant:v21];
    [v4 addObject:v22];

    v23 = MEMORY[0x1E696ACD8];
    contentView5 = [(EKUIInviteesViewSimpleCell *)self contentView];
    simpleTextLabel5 = [(EKUIInviteesViewSimpleCell *)self simpleTextLabel];
    _simpleTextLabelFont2 = [objc_opt_class() _simpleTextLabelFont];
    [_simpleTextLabelFont2 _scaledValueForValue:16.0];
    v28 = [v23 constraintWithItem:contentView5 attribute:4 relatedBy:0 toItem:simpleTextLabel5 attribute:11 multiplier:1.0 constant:v27];
    [v4 addObject:v28];

    v29 = MEMORY[0x1E696ACD8];
    contentView6 = [(EKUIInviteesViewSimpleCell *)self contentView];
    v31 = [v29 constraintWithItem:contentView6 attribute:8 relatedBy:1 toItem:0 attribute:0 multiplier:1.0 constant:EKUITableRowHeightDefault()];
    [v4 addObject:v31];

    contentView7 = [(EKUIInviteesViewSimpleCell *)self contentView];
    [contentView7 addConstraints:v4];

    [(EKUIInviteesViewSimpleCell *)self setPersistentConstraints:v4];
  }

  v33.receiver = self;
  v33.super_class = EKUIInviteesViewSimpleCell;
  [(EKUIInviteesViewSimpleCell *)&v33 updateConstraints];
}

@end