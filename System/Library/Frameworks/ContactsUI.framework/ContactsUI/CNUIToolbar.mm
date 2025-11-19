@interface CNUIToolbar
- (BOOL)isEnabledForItem:(id)a3;
- (CNUIToolbar)initWithItems:(id)a3;
- (double)borderWidth;
- (id)buttonForItem:(id)a3;
- (void)buttonPressed:(id)a3;
- (void)layoutSubviews;
- (void)setEnabled:(BOOL)a3 forItem:(id)a4;
- (void)setIsAnimating:(BOOL)a3;
- (void)setupBorder;
- (void)setupView;
@end

@implementation CNUIToolbar

- (void)buttonPressed:(id)a3
{
  v4 = a3;
  v5 = [(CNUIToolbar *)self buttons];
  v6 = [v5 indexOfObject:v4];

  v7 = [(CNUIToolbar *)self items];
  v9 = [v7 objectAtIndexedSubscript:v6];

  v8 = [v9 actionBlock];
  (v8)[2](v8, v9);
}

- (void)setEnabled:(BOOL)a3 forItem:(id)a4
{
  v4 = a3;
  v6 = a4;
  v7 = [(CNUIToolbar *)self items];
  v8 = [v7 indexOfObject:v6];

  if (v8 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v9 = [(CNUIToolbar *)self buttons];
    v11 = [v9 objectAtIndexedSubscript:v8];

    [v11 setEnabled:v4];
    v10 = 0.7;
    if (v4)
    {
      v10 = 1.0;
    }

    [v11 setAlpha:v10];
  }
}

- (BOOL)isEnabledForItem:(id)a3
{
  v4 = a3;
  v5 = [(CNUIToolbar *)self items];
  v6 = [v5 indexOfObject:v4];

  if (v6 == 0x7FFFFFFFFFFFFFFFLL)
  {
    return 0;
  }

  v8 = [(CNUIToolbar *)self buttons];
  v9 = [v8 objectAtIndexedSubscript:v6];

  LOBYTE(v8) = [v9 isEnabled];
  return v8;
}

- (void)setIsAnimating:(BOOL)a3
{
  if (self->_isAnimating != a3)
  {
    v4 = a3;
    self->_isAnimating = a3;
    v6 = [(CNUIToolbar *)self visualEffectView];
    [v6 setHidden:v4];

    if (v4)
    {
      [MEMORY[0x1E69DC888] secondarySystemBackgroundColor];
    }

    else
    {
      [MEMORY[0x1E69DC888] clearColor];
    }
    v7 = ;
    [(CNUIToolbar *)self setBackgroundColor:v7];
  }
}

- (void)layoutSubviews
{
  v8.receiver = self;
  v8.super_class = CNUIToolbar;
  [(CNUIToolbar *)&v8 layoutSubviews];
  [(CNUIToolbar *)self bounds];
  v4 = v3;
  [(CNUIToolbar *)self borderWidth];
  v6 = v5;
  v7 = [(CNUIToolbar *)self border];
  [v7 setFrame:{0.0, 0.0, v4, v6}];
}

- (double)borderWidth
{
  v2 = [(CNUIToolbar *)self _screen];
  [v2 scale];
  if (v3 == 0.0)
  {
    if (RoundToScale_onceToken != -1)
    {
      dispatch_once(&RoundToScale_onceToken, &__block_literal_global_33);
    }

    v3 = *&RoundToScale___s;
  }

  v4 = 1.0;
  if (v3 != 1.0)
  {
    v4 = round(v3) / v3;
  }

  return v4;
}

- (void)setupView
{
  v20[3] = *MEMORY[0x1E69E9840];
  v19 = [MEMORY[0x1E69DC730] effectWithStyle:9];
  v18 = [objc_alloc(MEMORY[0x1E69DD298]) initWithEffect:v19];
  [(CNUIToolbar *)self bounds];
  [v18 setFrame:?];
  [v18 setAutoresizingMask:18];
  [(CNUIToolbar *)self addSubview:v18];
  [(CNUIToolbar *)self setVisualEffectView:v18];
  v3 = MEMORY[0x1E69DCF90];
  v4 = self;
  v5 = [v3 alloc];
  v6 = [(CNUIToolbar *)v4 buttons];
  v7 = [v5 initWithArrangedSubviews:v6];

  [v7 setAlignment:3];
  [v7 setDistribution:4];
  [v7 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v7 setSpacing:8.0];
  [(CNUIToolbar *)v4 addSubview:v7];
  v17 = [v7 topAnchor];
  v16 = [(CNUIToolbar *)v4 topAnchor];
  v8 = [v17 constraintEqualToAnchor:v16];
  v20[0] = v8;
  v9 = [v7 bottomAnchor];
  v10 = [(CNUIToolbar *)v4 bottomAnchor];
  v11 = [v9 constraintEqualToAnchor:v10];
  v20[1] = v11;
  v12 = [v7 trailingAnchor];
  v13 = [(CNUIToolbar *)v4 trailingAnchor];
  v14 = [v12 constraintEqualToAnchor:v13 constant:-20.0];
  v20[2] = v14;
  v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v20 count:3];
  [(CNUIToolbar *)v4 addConstraints:v15];
}

- (void)setupBorder
{
  v3 = objc_alloc(MEMORY[0x1E69DD250]);
  [(CNUIToolbar *)self bounds];
  v4 = [v3 initWithFrame:{0.0, 0.0}];
  border = self->_border;
  self->_border = v4;

  v6 = [MEMORY[0x1E69DC888] opaqueSeparatorColor];
  [(UIView *)self->_border setBackgroundColor:v6];

  [(UIView *)self->_border setAutoresizingMask:34];
  v7 = self->_border;

  [(CNUIToolbar *)self addSubview:v7];
}

- (id)buttonForItem:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x1E69DC738] buttonWithType:127];
  if ([v4 isDefault])
  {
    v6 = 1;
  }

  else
  {
    if (![v4 isCancel])
    {
      goto LABEL_6;
    }

    v6 = 2;
  }

  [v5 setRole:v6];
LABEL_6:
  v7 = [v4 title];
  [v5 setTitle:v7 forState:0];

  [v5 addTarget:self action:sel_buttonPressed_ forControlEvents:64];
  [v5 setTranslatesAutoresizingMaskIntoConstraints:0];
  v8 = [v5 widthAnchor];
  v9 = [v8 constraintGreaterThanOrEqualToConstant:90.0];
  [v9 setActive:1];

  return v5;
}

- (CNUIToolbar)initWithItems:(id)a3
{
  v5 = a3;
  v14.receiver = self;
  v14.super_class = CNUIToolbar;
  v6 = [(CNUIToolbar *)&v14 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_items, a3);
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __29__CNUIToolbar_initWithItems___block_invoke;
    v12[3] = &unk_1E74E2350;
    v8 = v7;
    v13 = v8;
    v9 = [v5 _cn_map:v12];
    buttons = v8->_buttons;
    v8->_buttons = v9;

    [(CNUIToolbar *)v8 setupView];
    [(CNUIToolbar *)v8 setupBorder];
  }

  return v7;
}

@end