@interface EKUIInviteesViewSimpleCell
- (EKUIInviteesViewSimpleCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (void)updateConstraints;
@end

@implementation EKUIInviteesViewSimpleCell

- (EKUIInviteesViewSimpleCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v13.receiver = self;
  v13.super_class = EKUIInviteesViewSimpleCell;
  v4 = [(EKUIInviteesViewSimpleCell *)&v13 initWithStyle:a3 reuseIdentifier:a4];
  v5 = v4;
  if (v4)
  {
    [(EKUIInviteesViewSimpleCell *)v4 setAccessoryType:1];
    v6 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    [v6 setTranslatesAutoresizingMaskIntoConstraints:0];
    v7 = [objc_opt_class() _simpleTextLabelFont];
    [v6 setFont:v7];

    v8 = [(EKUIInviteesViewSimpleCell *)v5 textLabel];
    v9 = [v8 textColor];
    [v6 setTextColor:v9];

    [v6 setNumberOfLines:0];
    v10 = [objc_opt_class() labelText];
    [v6 setText:v10];

    v11 = [(EKUIInviteesViewSimpleCell *)v5 contentView];
    [v11 addSubview:v6];

    [(EKUIInviteesViewSimpleCell *)v5 setSimpleTextLabel:v6];
    [(EKUIInviteesViewSimpleCell *)v5 setSeparatorInset:*MEMORY[0x1E69DDCE0], *(MEMORY[0x1E69DDCE0] + 8), *(MEMORY[0x1E69DDCE0] + 16), *(MEMORY[0x1E69DDCE0] + 24)];
    [(EKUIInviteesViewSimpleCell *)v5 setNeedsUpdateConstraints];
  }

  return v5;
}

- (void)updateConstraints
{
  v3 = [(EKUIInviteesViewSimpleCell *)self persistentConstraints];

  if (!v3)
  {
    v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
    if ([(EKUIInviteesViewSimpleCell *)self isCentered])
    {
      v5 = MEMORY[0x1E696ACD8];
      v6 = [(EKUIInviteesViewSimpleCell *)self simpleTextLabel];
      v7 = [(EKUIInviteesViewSimpleCell *)self contentView];
      v8 = [v5 constraintWithItem:v6 attribute:9 relatedBy:0 toItem:v7 attribute:9 multiplier:1.0 constant:0.0];
      [v4 addObject:v8];
    }

    v9 = MEMORY[0x1E696ACD8];
    v10 = [(EKUIInviteesViewSimpleCell *)self simpleTextLabel];
    v11 = [(EKUIInviteesViewSimpleCell *)self contentView];
    v12 = [v9 constraintWithItem:v10 attribute:5 relatedBy:0 toItem:v11 attribute:17 multiplier:1.0 constant:0.0];
    [v4 addObject:v12];

    v13 = MEMORY[0x1E696ACD8];
    v14 = [(EKUIInviteesViewSimpleCell *)self simpleTextLabel];
    v15 = [(EKUIInviteesViewSimpleCell *)self contentView];
    v16 = [v13 constraintWithItem:v14 attribute:6 relatedBy:0 toItem:v15 attribute:6 multiplier:1.0 constant:0.0];
    [v4 addObject:v16];

    v17 = MEMORY[0x1E696ACD8];
    v18 = [(EKUIInviteesViewSimpleCell *)self simpleTextLabel];
    v19 = [(EKUIInviteesViewSimpleCell *)self contentView];
    v20 = [objc_opt_class() _simpleTextLabelFont];
    [v20 _scaledValueForValue:28.0];
    v22 = [v17 constraintWithItem:v18 attribute:12 relatedBy:0 toItem:v19 attribute:3 multiplier:1.0 constant:v21];
    [v4 addObject:v22];

    v23 = MEMORY[0x1E696ACD8];
    v24 = [(EKUIInviteesViewSimpleCell *)self contentView];
    v25 = [(EKUIInviteesViewSimpleCell *)self simpleTextLabel];
    v26 = [objc_opt_class() _simpleTextLabelFont];
    [v26 _scaledValueForValue:16.0];
    v28 = [v23 constraintWithItem:v24 attribute:4 relatedBy:0 toItem:v25 attribute:11 multiplier:1.0 constant:v27];
    [v4 addObject:v28];

    v29 = MEMORY[0x1E696ACD8];
    v30 = [(EKUIInviteesViewSimpleCell *)self contentView];
    v31 = [v29 constraintWithItem:v30 attribute:8 relatedBy:1 toItem:0 attribute:0 multiplier:1.0 constant:EKUITableRowHeightDefault()];
    [v4 addObject:v31];

    v32 = [(EKUIInviteesViewSimpleCell *)self contentView];
    [v32 addConstraints:v4];

    [(EKUIInviteesViewSimpleCell *)self setPersistentConstraints:v4];
  }

  v33.receiver = self;
  v33.super_class = EKUIInviteesViewSimpleCell;
  [(EKUIInviteesViewSimpleCell *)&v33 updateConstraints];
}

@end