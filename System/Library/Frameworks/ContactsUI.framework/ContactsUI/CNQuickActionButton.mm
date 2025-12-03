@interface CNQuickActionButton
- (CNQuickActionButton)initWithFrame:(CGRect)frame;
- (CNQuickActionButtonDelegate)delegate;
- (UIButton)button;
- (UILabel)label;
- (void)onLongPress:(id)press;
- (void)performAction;
- (void)setAction:(id)action;
- (void)setShowBackgroundPlatter:(BOOL)platter;
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
    tintColor = [(CNQuickActionButton *)self tintColor];
    [(UILabel *)self->_label setTextColor:tintColor];

    label = self->_label;
  }

  [(CNQuickActionButton *)self addSubview:label];
  action = [(CNQuickActionButton *)self action];
  v10 = [action titleForContext:0];
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

- (void)onLongPress:(id)press
{
  if ([press state] == 1)
  {
    action = [(CNQuickActionButton *)self action];
    [action setIsLongPress:1];

    [(CNQuickActionButton *)self performAction];
    action2 = [(CNQuickActionButton *)self action];
    [action2 setIsLongPress:0];
  }
}

- (void)performAction
{
  action = [(CNQuickActionButton *)self action];
  if (action)
  {
    v7 = action;
    [action setSourceView:self];
    delegate = [(CNQuickActionButton *)self delegate];
    action2 = [(CNQuickActionButton *)self action];
    v6 = [delegate quickActionButton:self performAction:action2];

    if ((v6 & 1) == 0)
    {
      [v7 perform];
    }

    [v7 setSourceView:0];
    action = v7;
  }
}

- (void)updateConstraints
{
  v25[1] = *MEMORY[0x1E69E9840];
  v23.receiver = self;
  v23.super_class = CNQuickActionButton;
  [(CNQuickActionButton *)&v23 updateConstraints];
  v3 = MEMORY[0x1E696ACD8];
  activatedConstraints = [(CNQuickActionButton *)self activatedConstraints];
  [v3 deactivateConstraints:activatedConstraints];

  array = [MEMORY[0x1E695DF70] array];
  v6 = MEMORY[0x1E695DF90];
  v24 = @"button";
  button = [(CNQuickActionButton *)self button];
  v25[0] = button;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v25 forKeys:&v24 count:1];
  v9 = [v6 dictionaryWithDictionary:v8];

  v10 = MEMORY[0x1E696ACD8];
  button2 = [(CNQuickActionButton *)self button];
  v12 = [v10 constraintWithItem:button2 attribute:7 relatedBy:0 toItem:0 attribute:0 multiplier:1.0 constant:37.0];
  [array addObject:v12];

  v13 = MEMORY[0x1E696ACD8];
  button3 = [(CNQuickActionButton *)self button];
  v15 = [v13 constraintWithItem:button3 attribute:8 relatedBy:0 toItem:0 attribute:0 multiplier:1.0 constant:37.0];
  [array addObject:v15];

  if ([(CNQuickActionButton *)self showTitle])
  {
    label = [(CNQuickActionButton *)self label];
    [v9 setObject:label forKey:@"label"];

    button5 = [MEMORY[0x1E696ACD8] constraintsWithVisualFormat:@"V:|[button]-[label]|" options:512 metrics:0 views:v9];
    [array addObjectsFromArray:button5];
  }

  else
  {
    v18 = MEMORY[0x1E696ACD8];
    button4 = [(CNQuickActionButton *)self button];
    v20 = [v18 constraintWithItem:button4 attribute:9 relatedBy:0 toItem:self attribute:9 multiplier:1.0 constant:0.0];
    [array addObject:v20];

    v21 = MEMORY[0x1E696ACD8];
    button5 = [(CNQuickActionButton *)self button];
    v22 = [v21 constraintWithItem:button5 attribute:10 relatedBy:0 toItem:self attribute:10 multiplier:1.0 constant:0.0];
    [array addObject:v22];
  }

  [(CNQuickActionButton *)self setActivatedConstraints:array];
  [MEMORY[0x1E696ACD8] activateConstraints:array];
}

- (void)setShowBackgroundPlatter:(BOOL)platter
{
  if (self->_showBackgroundPlatter != platter)
  {
    self->_showBackgroundPlatter = platter;
    v5 = +[CNContactStyle currentStyle];
    transportBackgroundColor = [v5 transportBackgroundColor];
    button = [(CNQuickActionButton *)self button];
    [button setBackgroundColor:transportBackgroundColor];

    button2 = [(CNQuickActionButton *)self button];
    _screen = [button2 _screen];
    [_screen scale];
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

    button3 = [(CNQuickActionButton *)self button];
    layer = [button3 layer];
    [layer setCornerRadius:v11];

    mainScreen = [MEMORY[0x1E69DCEB0] mainScreen];
    [mainScreen scale];
    v16 = 1.0 / v15;
    button4 = [(CNQuickActionButton *)self button];
    layer2 = [button4 layer];
    [layer2 setBorderWidth:v16];

    v23 = +[CNContactStyle currentStyle];
    transportBorderColor = [v23 transportBorderColor];
    cGColor = [transportBorderColor CGColor];
    button5 = [(CNQuickActionButton *)self button];
    layer3 = [button5 layer];
    [layer3 setBorderColor:cGColor];
  }
}

- (void)setAction:(id)action
{
  actionCopy = action;
  if (self->_action != actionCopy)
  {
    v8 = actionCopy;
    objc_storeStrong(&self->_action, action);
    v6 = [(CNQuickAction *)v8 imageForContext:5];
    button = [(CNQuickActionButton *)self button];
    [button setImage:v6 forState:0];

    actionCopy = v8;
  }
}

- (CNQuickActionButton)initWithFrame:(CGRect)frame
{
  v13.receiver = self;
  v13.super_class = CNQuickActionButton;
  v3 = [(CNQuickActionButton *)&v13 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  button = [(CNQuickActionButton *)v3 button];
  [button addTarget:v3 action:sel_performAction forControlEvents:64];

  button2 = [(CNQuickActionButton *)v3 button];
  v6 = [objc_alloc(MEMORY[0x1E69DCC48]) initWithTarget:v3 action:sel_onLongPress_];
  [button2 addGestureRecognizer:v6];

  button3 = [(CNQuickActionButton *)v3 button];
  imageView = [button3 imageView];
  [imageView setContentMode:1];

  v9 = +[CNUIColorRepository quickActionButtonTintColor];
  button4 = [(CNQuickActionButton *)v3 button];
  imageView2 = [button4 imageView];
  [imageView2 setTintColor:v9];

  return v3;
}

@end