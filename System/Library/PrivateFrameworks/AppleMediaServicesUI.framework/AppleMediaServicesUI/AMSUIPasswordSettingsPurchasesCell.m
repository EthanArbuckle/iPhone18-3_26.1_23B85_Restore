@interface AMSUIPasswordSettingsPurchasesCell
- (AMSUIPasswordSettingsPurchasesCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (void)layoutSubviews;
@end

@implementation AMSUIPasswordSettingsPurchasesCell

- (AMSUIPasswordSettingsPurchasesCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v9.receiver = self;
  v9.super_class = AMSUIPasswordSettingsPurchasesCell;
  v4 = [(AMSUIPasswordSettingsPurchasesCell *)&v9 initWithStyle:a3 reuseIdentifier:a4];
  if (v4)
  {
    v5 = objc_alloc(MEMORY[0x1E69DD250]);
    [(AMSUIPasswordSettingsPurchasesCell *)v4 bounds];
    v6 = [v5 initWithFrame:?];
    v7 = [MEMORY[0x1E69DC888] clearColor];
    [v6 setBackgroundColor:v7];

    [(AMSUIPasswordSettingsPurchasesCell *)v4 setSelectedBackgroundView:v6];
  }

  return v4;
}

- (void)layoutSubviews
{
  v12.receiver = self;
  v12.super_class = AMSUIPasswordSettingsPurchasesCell;
  [(AMSUIPasswordSettingsPurchasesCell *)&v12 layoutSubviews];
  [(AMSUIPasswordSettingsPurchasesCell *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = [(AMSUIPasswordSettingsPurchasesCell *)self selectedBackgroundView];
  [v11 setFrame:{v4, v6, v8, v10}];
}

@end