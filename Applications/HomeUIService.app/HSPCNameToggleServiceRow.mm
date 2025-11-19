@interface HSPCNameToggleServiceRow
- (HSPCNameToggleServiceRow)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (void)setSelected:(BOOL)a3;
@end

@implementation HSPCNameToggleServiceRow

- (HSPCNameToggleServiceRow)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v13.receiver = self;
  v13.super_class = HSPCNameToggleServiceRow;
  v4 = [(HSPCNameServiceRow *)&v13 initWithStyle:a3 reuseIdentifier:a4];
  v5 = v4;
  if (v4)
  {
    v6 = [(HSPCRow *)v4 leftView];

    if (v6)
    {
      v7 = [(HSPCRow *)v5 leftView];
      [v7 removeFromSuperview];
    }

    v8 = [UIImageView alloc];
    v9 = [UIImage systemImageNamed:@"circle"];
    v10 = [v8 initWithImage:v9 highlightedImage:0];

    [v10 setUserInteractionEnabled:1];
    v11 = [(HSPCNameToggleServiceRow *)v5 contentView];
    [v11 addSubview:v10];

    [(HSPCRow *)v5 setLeftView:v10];
  }

  return v5;
}

- (void)setSelected:(BOOL)a3
{
  v3 = a3;
  v11.receiver = self;
  v11.super_class = HSPCNameToggleServiceRow;
  [(HSPCNameToggleServiceRow *)&v11 setSelected:?];
  objc_opt_class();
  v5 = [(HSPCRow *)self leftView];
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  if (v3)
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