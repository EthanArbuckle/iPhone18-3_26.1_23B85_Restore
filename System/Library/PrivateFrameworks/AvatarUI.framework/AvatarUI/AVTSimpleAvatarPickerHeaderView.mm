@interface AVTSimpleAvatarPickerHeaderView
- (AVTSimpleAvatarPickerHeaderView)initWithFrame:(CGRect)frame;
- (UIImageSymbolConfiguration)ellipsisSymbolConfiguration;
- (UIImageSymbolConfiguration)plusSymbolConfiguration;
- (void)buttonPressed:(id)pressed;
- (void)setupLayout;
- (void)updateForEditMode:(BOOL)mode animated:(BOOL)animated;
- (void)updateWithSymbolNamed:(id)named configuration:(id)configuration animated:(BOOL)animated;
@end

@implementation AVTSimpleAvatarPickerHeaderView

- (AVTSimpleAvatarPickerHeaderView)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v12.receiver = self;
  v12.super_class = AVTSimpleAvatarPickerHeaderView;
  v7 = [(AVTSimpleAvatarPickerHeaderView *)&v12 initWithFrame:?];
  if (v7)
  {
    height = [[AVTCircularButton alloc] initWithFrame:x, y, width, height];
    [(AVTCircularButton *)height addTarget:v7 action:sel_buttonPressed_ forControlEvents:64];
    [(AVTCircularButton *)height setTranslatesAutoresizingMaskIntoConstraints:0];
    button = v7->_button;
    v7->_button = height;
    v10 = height;

    [(AVTSimpleAvatarPickerHeaderView *)v7 addSubview:v10];
    [(AVTSimpleAvatarPickerHeaderView *)v7 setupLayout];
    [(AVTSimpleAvatarPickerHeaderView *)v7 updateForEditMode:0 animated:0];
  }

  return v7;
}

- (void)setupLayout
{
  v22[4] = *MEMORY[0x1E69E9840];
  v14 = MEMORY[0x1E696ACD8];
  button = [(AVTSimpleAvatarPickerHeaderView *)self button];
  heightAnchor = [button heightAnchor];
  heightAnchor2 = [(AVTSimpleAvatarPickerHeaderView *)self heightAnchor];
  v18 = [heightAnchor constraintEqualToAnchor:heightAnchor2 multiplier:0.64 constant:0.0];
  v22[0] = v18;
  button2 = [(AVTSimpleAvatarPickerHeaderView *)self button];
  widthAnchor = [button2 widthAnchor];
  button3 = [(AVTSimpleAvatarPickerHeaderView *)self button];
  heightAnchor3 = [button3 heightAnchor];
  v3 = [widthAnchor constraintEqualToAnchor:heightAnchor3];
  v22[1] = v3;
  button4 = [(AVTSimpleAvatarPickerHeaderView *)self button];
  centerXAnchor = [button4 centerXAnchor];
  centerXAnchor2 = [(AVTSimpleAvatarPickerHeaderView *)self centerXAnchor];
  v7 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
  v22[2] = v7;
  button5 = [(AVTSimpleAvatarPickerHeaderView *)self button];
  centerYAnchor = [button5 centerYAnchor];
  centerYAnchor2 = [(AVTSimpleAvatarPickerHeaderView *)self centerYAnchor];
  v11 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
  v22[3] = v11;
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v22 count:4];
  [v14 activateConstraints:v12];
}

- (UIImageSymbolConfiguration)ellipsisSymbolConfiguration
{
  ellipsisSymbolConfiguration = self->_ellipsisSymbolConfiguration;
  if (!ellipsisSymbolConfiguration)
  {
    v4 = [MEMORY[0x1E69DCAD8] configurationWithPointSize:5 weight:21.0];
    v5 = self->_ellipsisSymbolConfiguration;
    self->_ellipsisSymbolConfiguration = v4;

    ellipsisSymbolConfiguration = self->_ellipsisSymbolConfiguration;
  }

  return ellipsisSymbolConfiguration;
}

- (UIImageSymbolConfiguration)plusSymbolConfiguration
{
  plusSymbolConfiguration = self->_plusSymbolConfiguration;
  if (!plusSymbolConfiguration)
  {
    v4 = [MEMORY[0x1E69DCAD8] configurationWithPointSize:5 weight:18.0];
    v5 = self->_plusSymbolConfiguration;
    self->_plusSymbolConfiguration = v4;

    plusSymbolConfiguration = self->_plusSymbolConfiguration;
  }

  return plusSymbolConfiguration;
}

- (void)updateForEditMode:(BOOL)mode animated:(BOOL)animated
{
  animatedCopy = animated;
  v7 = kAVTCircularButtonEllipsisImageName;
  if (!mode)
  {
    v7 = kAVTCircularButtonPlusImageName;
  }

  v8 = *v7;
  if (mode)
  {
    [(AVTSimpleAvatarPickerHeaderView *)self ellipsisSymbolConfiguration];
  }

  else
  {
    [(AVTSimpleAvatarPickerHeaderView *)self plusSymbolConfiguration];
  }
  v9 = ;
  [(AVTSimpleAvatarPickerHeaderView *)self updateWithSymbolNamed:v8 configuration:v9 animated:animatedCopy];
}

- (void)updateWithSymbolNamed:(id)named configuration:(id)configuration animated:(BOOL)animated
{
  animatedCopy = animated;
  namedCopy = named;
  configurationCopy = configuration;
  currentSymbolName = [(AVTSimpleAvatarPickerHeaderView *)self currentSymbolName];
  v11 = [currentSymbolName isEqualToString:namedCopy];

  if ((v11 & 1) == 0)
  {
    [(AVTSimpleAvatarPickerHeaderView *)self setCurrentSymbolName:namedCopy];
    button = [(AVTSimpleAvatarPickerHeaderView *)self button];
    [button setSymbolImageWithName:namedCopy configuration:configurationCopy];

    if (animatedCopy)
    {
      v14[0] = MEMORY[0x1E69E9820];
      v14[1] = 3221225472;
      v14[2] = __80__AVTSimpleAvatarPickerHeaderView_updateWithSymbolNamed_configuration_animated___block_invoke;
      v14[3] = &unk_1E7F3A9B8;
      v14[4] = self;
      v13[0] = MEMORY[0x1E69E9820];
      v13[1] = 3221225472;
      v13[2] = __80__AVTSimpleAvatarPickerHeaderView_updateWithSymbolNamed_configuration_animated___block_invoke_2;
      v13[3] = &unk_1E7F3AA80;
      v13[4] = self;
      [MEMORY[0x1E69DD250] animateWithDuration:0 delay:v14 usingSpringWithDamping:v13 initialSpringVelocity:0.15 options:0.0 animations:0.25 completion:0.0];
    }
  }
}

void __80__AVTSimpleAvatarPickerHeaderView_updateWithSymbolNamed_configuration_animated___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) button];
  CGAffineTransformMakeScale(&v2, 1.15, 1.15);
  [v1 setTransform:&v2];
}

uint64_t __80__AVTSimpleAvatarPickerHeaderView_updateWithSymbolNamed_configuration_animated___block_invoke_2(uint64_t a1)
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __80__AVTSimpleAvatarPickerHeaderView_updateWithSymbolNamed_configuration_animated___block_invoke_3;
  v2[3] = &unk_1E7F3A9B8;
  v2[4] = *(a1 + 32);
  return [MEMORY[0x1E69DD250] animateWithDuration:0 delay:v2 usingSpringWithDamping:0 initialSpringVelocity:1.0 options:0.0 animations:0.25 completion:0.0];
}

void __80__AVTSimpleAvatarPickerHeaderView_updateWithSymbolNamed_configuration_animated___block_invoke_3(uint64_t a1)
{
  v1 = [*(a1 + 32) button];
  v2 = *(MEMORY[0x1E695EFD0] + 16);
  v3[0] = *MEMORY[0x1E695EFD0];
  v3[1] = v2;
  v3[2] = *(MEMORY[0x1E695EFD0] + 32);
  [v1 setTransform:v3];
}

- (void)buttonPressed:(id)pressed
{
  buttonPressedBlock = [(AVTSimpleAvatarPickerHeaderView *)self buttonPressedBlock];

  if (buttonPressedBlock)
  {
    buttonPressedBlock2 = [(AVTSimpleAvatarPickerHeaderView *)self buttonPressedBlock];
    buttonPressedBlock2[2]();
  }
}

@end