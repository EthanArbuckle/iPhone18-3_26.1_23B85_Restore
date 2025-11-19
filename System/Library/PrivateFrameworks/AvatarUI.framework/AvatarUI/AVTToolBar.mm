@interface AVTToolBar
- (AVTToolBar)initWithButtons:(id)a3;
- (AVTToolBarDelegate)delegate;
- (id)buttonWithTitle:(id)a3 isDefault:(BOOL)a4;
- (void)buttonPressed:(id)a3;
- (void)layoutSubviews;
- (void)setEnabled:(BOOL)a3 forButtonAtIndex:(unint64_t)a4;
- (void)setIsAnimating:(BOOL)a3;
- (void)setupBorder;
- (void)setupView;
@end

@implementation AVTToolBar

- (AVTToolBar)initWithButtons:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = AVTToolBar;
  v5 = [(AVTToolBar *)&v13 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  v6 = v5;
  if (v5)
  {
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __30__AVTToolBar_initWithButtons___block_invoke;
    v11[3] = &unk_1E7F3C720;
    v7 = v5;
    v12 = v7;
    v8 = [v4 avt_map:v11];
    buttons = v7->_buttons;
    v7->_buttons = v8;

    [(AVTToolBar *)v7 setupView];
    [(AVTToolBar *)v7 setupBorder];
  }

  return v6;
}

id __30__AVTToolBar_initWithButtons___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v3 title];
  v5 = [v3 isDefault];

  v6 = [v2 buttonWithTitle:v4 isDefault:v5];

  return v6;
}

- (id)buttonWithTitle:(id)a3 isDefault:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [MEMORY[0x1E69DC738] buttonWithType:1];
  v8 = v7;
  if (v4)
  {
    [v7 setRole:1];
  }

  [v8 setTitle:v6 forState:0];
  [v8 addTarget:self action:sel_buttonPressed_ forControlEvents:64];
  [v8 setTranslatesAutoresizingMaskIntoConstraints:0];
  v9 = [v8 widthAnchor];
  v10 = [v9 constraintGreaterThanOrEqualToConstant:90.0];
  [v10 setActive:1];

  return v8;
}

- (void)setupBorder
{
  v3 = objc_alloc(MEMORY[0x1E69DD250]);
  [(AVTToolBar *)self bounds];
  v4 = [v3 initWithFrame:{0.0, 0.0}];
  border = self->_border;
  self->_border = v4;

  v6 = +[AVTUIColorRepository separatorColor];
  [(UIView *)self->_border setBackgroundColor:v6];

  [(UIView *)self->_border setAutoresizingMask:34];
  v7 = self->_border;

  [(AVTToolBar *)self addSubview:v7];
}

- (void)setupView
{
  v20[3] = *MEMORY[0x1E69E9840];
  v19 = [MEMORY[0x1E69DC730] effectWithStyle:9];
  v18 = [objc_alloc(MEMORY[0x1E69DD298]) initWithEffect:v19];
  [(AVTToolBar *)self bounds];
  [v18 setFrame:?];
  [v18 setAutoresizingMask:18];
  [(AVTToolBar *)self addSubview:v18];
  [(AVTToolBar *)self setVisualEffectView:v18];
  v3 = MEMORY[0x1E69DCF90];
  v4 = self;
  v5 = [v3 alloc];
  v6 = [(AVTToolBar *)v4 buttons];
  v7 = [v5 initWithArrangedSubviews:v6];

  [v7 setAlignment:3];
  [v7 setDistribution:1];
  [v7 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v7 setSpacing:8.0];
  [(AVTToolBar *)v4 addSubview:v7];
  v17 = [v7 topAnchor];
  v16 = [(AVTToolBar *)v4 topAnchor];
  v8 = [v17 constraintEqualToAnchor:v16];
  v20[0] = v8;
  v9 = [v7 bottomAnchor];
  v10 = [(AVTToolBar *)v4 bottomAnchor];
  v11 = [v9 constraintEqualToAnchor:v10];
  v20[1] = v11;
  v12 = [v7 trailingAnchor];
  v13 = [(AVTToolBar *)v4 trailingAnchor];
  v14 = [v12 constraintEqualToAnchor:v13 constant:-20.0];
  v20[2] = v14;
  v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v20 count:3];
  [(AVTToolBar *)v4 addConstraints:v15];
}

- (void)layoutSubviews
{
  v8.receiver = self;
  v8.super_class = AVTToolBar;
  [(AVTToolBar *)&v8 layoutSubviews];
  [(AVTToolBar *)self bounds];
  v4 = v3;
  [(AVTToolBar *)self borderWidth];
  v6 = v5;
  v7 = [(AVTToolBar *)self border];
  [v7 setFrame:{0.0, 0.0, v4, v6}];
}

- (void)setIsAnimating:(BOOL)a3
{
  if (self->_isAnimating != a3)
  {
    v4 = a3;
    self->_isAnimating = a3;
    v6 = [(AVTToolBar *)self visualEffectView];
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
    [(AVTToolBar *)self setBackgroundColor:v7];
  }
}

- (void)setEnabled:(BOOL)a3 forButtonAtIndex:(unint64_t)a4
{
  v5 = a3;
  v7 = [(AVTToolBar *)self buttons];
  v8 = [v7 count];

  if (v8 > a4)
  {
    v9 = [(AVTToolBar *)self buttons];
    v11 = [v9 objectAtIndexedSubscript:a4];

    [v11 setEnabled:v5];
    v10 = 0.7;
    if (v5)
    {
      v10 = 1.0;
    }

    [v11 setAlpha:v10];
  }
}

- (void)buttonPressed:(id)a3
{
  v4 = a3;
  v5 = [(AVTToolBar *)self buttons];
  v6 = [v5 indexOfObject:v4];

  v7 = [(AVTToolBar *)self delegate];
  [v7 toolbar:self didSelectButton:v4 atIndex:v6];
}

- (AVTToolBarDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end