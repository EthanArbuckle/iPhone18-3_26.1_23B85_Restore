@interface CNQuickActionButton
- (CNQuickActionButton)initWithFrame:(CGRect)a3;
- (CNQuickActionButtonDelegate)delegate;
- (UIButton)button;
- (UILabel)label;
- (void)onLongPress:(id)a3;
- (void)performAction;
- (void)setAction:(id)a3;
- (void)setShowBackgroundPlatter:(BOOL)a3;
- (void)updateConstraints;
@end

@implementation CNQuickActionButton

- (CNQuickActionButtonDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (UILabel)label
{
  label = self->_label;
  if (!label)
  {
    v4 = objc_alloc(MEMORY[0x1E69DCC10]);
    v5 = [v4 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
    v6 = self->_label;
    self->_label = v5;

    [(UILabel *)self->_label setTranslatesAutoresizingMaskIntoConstraints:0];
    v7 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDD28]];
    [(UILabel *)self->_label setFont:v7];

    [(UILabel *)self->_label setNumberOfLines:1];
    v8 = [(CNQuickActionButton *)self tintColor];
    [(UILabel *)self->_label setTextColor:v8];

    label = self->_label;
  }

  [(CNQuickActionButton *)self addSubview:label];
  v9 = [(CNQuickActionButton *)self action];
  v10 = [v9 titleForContext:0];
  [(UILabel *)self->_label setText:v10];

  [(UILabel *)self->_label sizeToFit];
  v11 = self->_label;

  return v11;
}

- (UIButton)button
{
  button = self->_button;
  if (!button)
  {
    v4 = [MEMORY[0x1E69DC738] buttonWithType:?];
    v5 = self->_button;
    self->_button = v4;

    [(UIButton *)self->_button setTranslatesAutoresizingMaskIntoConstraints:0];
    button = self->_button;
  }

  [(CNQuickActionButton *)self addSubview:button];
  v6 = self->_button;

  return v6;
}

- (void)onLongPress:(id)a3
{
  if ([a3 state] == 1)
  {
    v4 = [(CNQuickActionButton *)self action];
    [v4 setIsLongPress:1];

    [(CNQuickActionButton *)self performAction];
    v5 = [(CNQuickActionButton *)self action];
    [v5 setIsLongPress:0];
  }
}

- (void)performAction
{
  v3 = [(CNQuickActionButton *)self action];
  if (v3)
  {
    v7 = v3;
    [v3 setSourceView:self];
    v4 = [(CNQuickActionButton *)self delegate];
    v5 = [(CNQuickActionButton *)self action];
    v6 = [v4 quickActionButton:self performAction:v5];

    if ((v6 & 1) == 0)
    {
      [v7 perform];
    }

    [v7 setSourceView:0];
    v3 = v7;
  }
}

- (void)updateConstraints
{
  v25[1] = *MEMORY[0x1E69E9840];
  v23.receiver = self;
  v23.super_class = CNQuickActionButton;
  [(CNQuickActionButton *)&v23 updateConstraints];
  v3 = MEMORY[0x1E696ACD8];
  v4 = [(CNQuickActionButton *)self activatedConstraints];
  [v3 deactivateConstraints:v4];

  v5 = [MEMORY[0x1E695DF70] array];
  v6 = MEMORY[0x1E695DF90];
  v24 = @"button";
  v7 = [(CNQuickActionButton *)self button];
  v25[0] = v7;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v25 forKeys:&v24 count:1];
  v9 = [v6 dictionaryWithDictionary:v8];

  v10 = MEMORY[0x1E696ACD8];
  v11 = [(CNQuickActionButton *)self button];
  v12 = [v10 constraintWithItem:v11 attribute:7 relatedBy:0 toItem:0 attribute:0 multiplier:1.0 constant:37.0];
  [v5 addObject:v12];

  v13 = MEMORY[0x1E696ACD8];
  v14 = [(CNQuickActionButton *)self button];
  v15 = [v13 constraintWithItem:v14 attribute:8 relatedBy:0 toItem:0 attribute:0 multiplier:1.0 constant:37.0];
  [v5 addObject:v15];

  if ([(CNQuickActionButton *)self showTitle])
  {
    v16 = [(CNQuickActionButton *)self label];
    [v9 setObject:v16 forKey:@"label"];

    v17 = [MEMORY[0x1E696ACD8] constraintsWithVisualFormat:@"V:|[button]-[label]|" options:512 metrics:0 views:v9];
    [v5 addObjectsFromArray:v17];
  }

  else
  {
    v18 = MEMORY[0x1E696ACD8];
    v19 = [(CNQuickActionButton *)self button];
    v20 = [v18 constraintWithItem:v19 attribute:9 relatedBy:0 toItem:self attribute:9 multiplier:1.0 constant:0.0];
    [v5 addObject:v20];

    v21 = MEMORY[0x1E696ACD8];
    v17 = [(CNQuickActionButton *)self button];
    v22 = [v21 constraintWithItem:v17 attribute:10 relatedBy:0 toItem:self attribute:10 multiplier:1.0 constant:0.0];
    [v5 addObject:v22];
  }

  [(CNQuickActionButton *)self setActivatedConstraints:v5];
  [MEMORY[0x1E696ACD8] activateConstraints:v5];
}

- (void)setShowBackgroundPlatter:(BOOL)a3
{
  if (self->_showBackgroundPlatter != a3)
  {
    self->_showBackgroundPlatter = a3;
    v5 = +[CNContactStyle currentStyle];
    v6 = [v5 transportBackgroundColor];
    v7 = [(CNQuickActionButton *)self button];
    [v7 setBackgroundColor:v6];

    v8 = [(CNQuickActionButton *)self button];
    v9 = [v8 _screen];
    [v9 scale];
    if (v10 == 0.0)
    {
      if (RoundToScale_onceToken != -1)
      {
        dispatch_once(&RoundToScale_onceToken, &__block_literal_global_33);
      }

      v10 = *&RoundToScale___s;
    }

    v11 = 19.0;
    if (v10 != 1.0)
    {
      v11 = round(v10 * 18.5) / v10;
    }

    v12 = [(CNQuickActionButton *)self button];
    v13 = [v12 layer];
    [v13 setCornerRadius:v11];

    v14 = [MEMORY[0x1E69DCEB0] mainScreen];
    [v14 scale];
    v16 = 1.0 / v15;
    v17 = [(CNQuickActionButton *)self button];
    v18 = [v17 layer];
    [v18 setBorderWidth:v16];

    v23 = +[CNContactStyle currentStyle];
    v19 = [v23 transportBorderColor];
    v20 = [v19 CGColor];
    v21 = [(CNQuickActionButton *)self button];
    v22 = [v21 layer];
    [v22 setBorderColor:v20];
  }
}

- (void)setAction:(id)a3
{
  v5 = a3;
  if (self->_action != v5)
  {
    v8 = v5;
    objc_storeStrong(&self->_action, a3);
    v6 = [(CNQuickAction *)v8 imageForContext:5];
    v7 = [(CNQuickActionButton *)self button];
    [v7 setImage:v6 forState:0];

    v5 = v8;
  }
}

- (CNQuickActionButton)initWithFrame:(CGRect)a3
{
  v13.receiver = self;
  v13.super_class = CNQuickActionButton;
  v3 = [(CNQuickActionButton *)&v13 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = [(CNQuickActionButton *)v3 button];
  [v4 addTarget:v3 action:sel_performAction forControlEvents:64];

  v5 = [(CNQuickActionButton *)v3 button];
  v6 = [objc_alloc(MEMORY[0x1E69DCC48]) initWithTarget:v3 action:sel_onLongPress_];
  [v5 addGestureRecognizer:v6];

  v7 = [(CNQuickActionButton *)v3 button];
  v8 = [v7 imageView];
  [v8 setContentMode:1];

  v9 = +[CNUIColorRepository quickActionButtonTintColor];
  v10 = [(CNQuickActionButton *)v3 button];
  v11 = [v10 imageView];
  [v11 setTintColor:v9];

  return v3;
}

@end