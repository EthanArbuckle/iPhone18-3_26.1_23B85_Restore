@interface CNUIToolbar
- (BOOL)isEnabledForItem:(id)item;
- (CNUIToolbar)initWithItems:(id)items;
- (double)borderWidth;
- (id)buttonForItem:(id)item;
- (void)buttonPressed:(id)pressed;
- (void)layoutSubviews;
- (void)setEnabled:(BOOL)enabled forItem:(id)item;
- (void)setIsAnimating:(BOOL)animating;
- (void)setupBorder;
- (void)setupView;
@end

@implementation CNUIToolbar

- (void)buttonPressed:(id)pressed
{
  pressedCopy = pressed;
  buttons = [(CNUIToolbar *)self buttons];
  v6 = [buttons indexOfObject:pressedCopy];

  items = [(CNUIToolbar *)self items];
  v9 = [items objectAtIndexedSubscript:v6];

  actionBlock = [v9 actionBlock];
  (actionBlock)[2](actionBlock, v9);
}

- (void)setEnabled:(BOOL)enabled forItem:(id)item
{
  enabledCopy = enabled;
  itemCopy = item;
  items = [(CNUIToolbar *)self items];
  v8 = [items indexOfObject:itemCopy];

  if (v8 != 0x7FFFFFFFFFFFFFFFLL)
  {
    buttons = [(CNUIToolbar *)self buttons];
    v11 = [buttons objectAtIndexedSubscript:v8];

    [v11 setEnabled:enabledCopy];
    v10 = 0.7;
    if (enabledCopy)
    {
      v10 = 1.0;
    }

    [v11 setAlpha:v10];
  }
}

- (BOOL)isEnabledForItem:(id)item
{
  itemCopy = item;
  items = [(CNUIToolbar *)self items];
  v6 = [items indexOfObject:itemCopy];

  if (v6 == 0x7FFFFFFFFFFFFFFFLL)
  {
    return 0;
  }

  buttons = [(CNUIToolbar *)self buttons];
  v9 = [buttons objectAtIndexedSubscript:v6];

  LOBYTE(buttons) = [v9 isEnabled];
  return buttons;
}

- (void)setIsAnimating:(BOOL)animating
{
  if (self->_isAnimating != animating)
  {
    animatingCopy = animating;
    self->_isAnimating = animating;
    visualEffectView = [(CNUIToolbar *)self visualEffectView];
    [visualEffectView setHidden:animatingCopy];

    if (animatingCopy)
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
  border = [(CNUIToolbar *)self border];
  [border setFrame:{0.0, 0.0, v4, v6}];
}

- (double)borderWidth
{
  _screen = [(CNUIToolbar *)self _screen];
  [_screen scale];
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
  selfCopy = self;
  v5 = [v3 alloc];
  buttons = [(CNUIToolbar *)selfCopy buttons];
  v7 = [v5 initWithArrangedSubviews:buttons];

  [v7 setAlignment:3];
  [v7 setDistribution:4];
  [v7 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v7 setSpacing:8.0];
  [(CNUIToolbar *)selfCopy addSubview:v7];
  topAnchor = [v7 topAnchor];
  topAnchor2 = [(CNUIToolbar *)selfCopy topAnchor];
  v8 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v20[0] = v8;
  bottomAnchor = [v7 bottomAnchor];
  bottomAnchor2 = [(CNUIToolbar *)selfCopy bottomAnchor];
  v11 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  v20[1] = v11;
  trailingAnchor = [v7 trailingAnchor];
  trailingAnchor2 = [(CNUIToolbar *)selfCopy trailingAnchor];
  v14 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:-20.0];
  v20[2] = v14;
  v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v20 count:3];
  [(CNUIToolbar *)selfCopy addConstraints:v15];
}

- (void)setupBorder
{
  v3 = objc_alloc(MEMORY[0x1E69DD250]);
  [(CNUIToolbar *)self bounds];
  v4 = [v3 initWithFrame:{0.0, 0.0}];
  border = self->_border;
  self->_border = v4;

  opaqueSeparatorColor = [MEMORY[0x1E69DC888] opaqueSeparatorColor];
  [(UIView *)self->_border setBackgroundColor:opaqueSeparatorColor];

  [(UIView *)self->_border setAutoresizingMask:34];
  v7 = self->_border;

  [(CNUIToolbar *)self addSubview:v7];
}

- (id)buttonForItem:(id)item
{
  itemCopy = item;
  v5 = [MEMORY[0x1E69DC738] buttonWithType:127];
  if ([itemCopy isDefault])
  {
    v6 = 1;
  }

  else
  {
    if (![itemCopy isCancel])
    {
      goto LABEL_6;
    }

    v6 = 2;
  }

  [v5 setRole:v6];
LABEL_6:
  title = [itemCopy title];
  [v5 setTitle:title forState:0];

  [v5 addTarget:self action:sel_buttonPressed_ forControlEvents:64];
  [v5 setTranslatesAutoresizingMaskIntoConstraints:0];
  widthAnchor = [v5 widthAnchor];
  v9 = [widthAnchor constraintGreaterThanOrEqualToConstant:90.0];
  [v9 setActive:1];

  return v5;
}

- (CNUIToolbar)initWithItems:(id)items
{
  itemsCopy = items;
  v14.receiver = self;
  v14.super_class = CNUIToolbar;
  v6 = [(CNUIToolbar *)&v14 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_items, items);
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __29__CNUIToolbar_initWithItems___block_invoke;
    v12[3] = &unk_1E74E2350;
    v8 = v7;
    v13 = v8;
    v9 = [itemsCopy _cn_map:v12];
    buttons = v8->_buttons;
    v8->_buttons = v9;

    [(CNUIToolbar *)v8 setupView];
    [(CNUIToolbar *)v8 setupBorder];
  }

  return v7;
}

@end