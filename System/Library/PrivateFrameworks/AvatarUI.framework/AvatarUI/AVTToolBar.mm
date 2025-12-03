@interface AVTToolBar
- (AVTToolBar)initWithButtons:(id)buttons;
- (AVTToolBarDelegate)delegate;
- (id)buttonWithTitle:(id)title isDefault:(BOOL)default;
- (void)buttonPressed:(id)pressed;
- (void)layoutSubviews;
- (void)setEnabled:(BOOL)enabled forButtonAtIndex:(unint64_t)index;
- (void)setIsAnimating:(BOOL)animating;
- (void)setupBorder;
- (void)setupView;
@end

@implementation AVTToolBar

- (AVTToolBar)initWithButtons:(id)buttons
{
  buttonsCopy = buttons;
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
    v8 = [buttonsCopy avt_map:v11];
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

- (id)buttonWithTitle:(id)title isDefault:(BOOL)default
{
  defaultCopy = default;
  titleCopy = title;
  v7 = [MEMORY[0x1E69DC738] buttonWithType:1];
  v8 = v7;
  if (defaultCopy)
  {
    [v7 setRole:1];
  }

  [v8 setTitle:titleCopy forState:0];
  [v8 addTarget:self action:sel_buttonPressed_ forControlEvents:64];
  [v8 setTranslatesAutoresizingMaskIntoConstraints:0];
  widthAnchor = [v8 widthAnchor];
  v10 = [widthAnchor constraintGreaterThanOrEqualToConstant:90.0];
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
  selfCopy = self;
  v5 = [v3 alloc];
  buttons = [(AVTToolBar *)selfCopy buttons];
  v7 = [v5 initWithArrangedSubviews:buttons];

  [v7 setAlignment:3];
  [v7 setDistribution:1];
  [v7 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v7 setSpacing:8.0];
  [(AVTToolBar *)selfCopy addSubview:v7];
  topAnchor = [v7 topAnchor];
  topAnchor2 = [(AVTToolBar *)selfCopy topAnchor];
  v8 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v20[0] = v8;
  bottomAnchor = [v7 bottomAnchor];
  bottomAnchor2 = [(AVTToolBar *)selfCopy bottomAnchor];
  v11 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  v20[1] = v11;
  trailingAnchor = [v7 trailingAnchor];
  trailingAnchor2 = [(AVTToolBar *)selfCopy trailingAnchor];
  v14 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:-20.0];
  v20[2] = v14;
  v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v20 count:3];
  [(AVTToolBar *)selfCopy addConstraints:v15];
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
  border = [(AVTToolBar *)self border];
  [border setFrame:{0.0, 0.0, v4, v6}];
}

- (void)setIsAnimating:(BOOL)animating
{
  if (self->_isAnimating != animating)
  {
    animatingCopy = animating;
    self->_isAnimating = animating;
    visualEffectView = [(AVTToolBar *)self visualEffectView];
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
    [(AVTToolBar *)self setBackgroundColor:v7];
  }
}

- (void)setEnabled:(BOOL)enabled forButtonAtIndex:(unint64_t)index
{
  enabledCopy = enabled;
  buttons = [(AVTToolBar *)self buttons];
  v8 = [buttons count];

  if (v8 > index)
  {
    buttons2 = [(AVTToolBar *)self buttons];
    v11 = [buttons2 objectAtIndexedSubscript:index];

    [v11 setEnabled:enabledCopy];
    v10 = 0.7;
    if (enabledCopy)
    {
      v10 = 1.0;
    }

    [v11 setAlpha:v10];
  }
}

- (void)buttonPressed:(id)pressed
{
  pressedCopy = pressed;
  buttons = [(AVTToolBar *)self buttons];
  v6 = [buttons indexOfObject:pressedCopy];

  delegate = [(AVTToolBar *)self delegate];
  [delegate toolbar:self didSelectButton:pressedCopy atIndex:v6];
}

- (AVTToolBarDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end