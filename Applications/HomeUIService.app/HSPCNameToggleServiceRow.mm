@interface HSPCNameToggleServiceRow
- (HSPCNameToggleServiceRow)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (void)setSelected:(BOOL)selected;
@end

@implementation HSPCNameToggleServiceRow

- (HSPCNameToggleServiceRow)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v13.receiver = self;
  v13.super_class = HSPCNameToggleServiceRow;
  v4 = [(HSPCNameServiceRow *)&v13 initWithStyle:style reuseIdentifier:identifier];
  v5 = v4;
  if (v4)
  {
    leftView = [(HSPCRow *)v4 leftView];

    if (leftView)
    {
      leftView2 = [(HSPCRow *)v5 leftView];
      [leftView2 removeFromSuperview];
    }

    v8 = [UIImageView alloc];
    v9 = [UIImage systemImageNamed:@"circle"];
    v10 = [v8 initWithImage:v9 highlightedImage:0];

    [v10 setUserInteractionEnabled:1];
    contentView = [(HSPCNameToggleServiceRow *)v5 contentView];
    [contentView addSubview:v10];

    [(HSPCRow *)v5 setLeftView:v10];
  }

  return v5;
}

- (void)setSelected:(BOOL)selected
{
  selectedCopy = selected;
  v11.receiver = self;
  v11.super_class = HSPCNameToggleServiceRow;
  [(HSPCNameToggleServiceRow *)&v11 setSelected:?];
  objc_opt_class();
  leftView = [(HSPCRow *)self leftView];
  if (objc_opt_isKindOfClass())
  {
    v6 = leftView;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  if (selectedCopy)
  {
    v8 = [UIImage systemImageNamed:@"checkmark.circle.fill"];
    [v7 setImage:v8];

    +[UIColor hf_keyColor];
  }

  else
  {
    v9 = [UIImage systemImageNamed:@"circle"];
    [v7 setImage:v9];

    +[UIColor secondaryLabelColor];
  }
  v10 = ;
  [v7 setTintColor:v10];
}

@end