@interface AMSUIPasswordSettingsPurchasesCell
- (AMSUIPasswordSettingsPurchasesCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (void)layoutSubviews;
@end

@implementation AMSUIPasswordSettingsPurchasesCell

- (AMSUIPasswordSettingsPurchasesCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v9.receiver = self;
  v9.super_class = AMSUIPasswordSettingsPurchasesCell;
  v4 = [(AMSUIPasswordSettingsPurchasesCell *)&v9 initWithStyle:style reuseIdentifier:identifier];
  if (v4)
  {
    v5 = objc_alloc(MEMORY[0x1E69DD250]);
    [(AMSUIPasswordSettingsPurchasesCell *)v4 bounds];
    v6 = [v5 initWithFrame:?];
    clearColor = [MEMORY[0x1E69DC888] clearColor];
    [v6 setBackgroundColor:clearColor];

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
  selectedBackgroundView = [(AMSUIPasswordSettingsPurchasesCell *)self selectedBackgroundView];
  [selectedBackgroundView setFrame:{v4, v6, v8, v10}];
}

@end