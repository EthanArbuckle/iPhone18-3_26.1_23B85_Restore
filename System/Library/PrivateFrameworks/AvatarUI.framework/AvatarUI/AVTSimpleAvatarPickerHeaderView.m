@interface AVTSimpleAvatarPickerHeaderView
- (AVTSimpleAvatarPickerHeaderView)initWithFrame:(CGRect)a3;
- (UIImageSymbolConfiguration)ellipsisSymbolConfiguration;
- (UIImageSymbolConfiguration)plusSymbolConfiguration;
- (void)buttonPressed:(id)a3;
- (void)setupLayout;
- (void)updateForEditMode:(BOOL)a3 animated:(BOOL)a4;
- (void)updateWithSymbolNamed:(id)a3 configuration:(id)a4 animated:(BOOL)a5;
@end

@implementation AVTSimpleAvatarPickerHeaderView

- (AVTSimpleAvatarPickerHeaderView)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v12.receiver = self;
  v12.super_class = AVTSimpleAvatarPickerHeaderView;
  v7 = [(AVTSimpleAvatarPickerHeaderView *)&v12 initWithFrame:?];
  if (v7)
  {
    v8 = [[AVTCircularButton alloc] initWithFrame:x, y, width, height];
    [(AVTCircularButton *)v8 addTarget:v7 action:sel_buttonPressed_ forControlEvents:64];
    [(AVTCircularButton *)v8 setTranslatesAutoresizingMaskIntoConstraints:0];
    button = v7->_button;
    v7->_button = v8;
    v10 = v8;

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
  v21 = [(AVTSimpleAvatarPickerHeaderView *)self button];
  v20 = [v21 heightAnchor];
  v19 = [(AVTSimpleAvatarPickerHeaderView *)self heightAnchor];
  v18 = [v20 constraintEqualToAnchor:v19 multiplier:0.64 constant:0.0];
  v22[0] = v18;
  v17 = [(AVTSimpleAvatarPickerHeaderView *)self button];
  v15 = [v17 widthAnchor];
  v16 = [(AVTSimpleAvatarPickerHeaderView *)self button];
  v13 = [v16 heightAnchor];
  v3 = [v15 constraintEqualToAnchor:v13];
  v22[1] = v3;
  v4 = [(AVTSimpleAvatarPickerHeaderView *)self button];
  v5 = [v4 centerXAnchor];
  v6 = [(AVTSimpleAvatarPickerHeaderView *)self centerXAnchor];
  v7 = [v5 constraintEqualToAnchor:v6];
  v22[2] = v7;
  v8 = [(AVTSimpleAvatarPickerHeaderView *)self button];
  v9 = [v8 centerYAnchor];
  v10 = [(AVTSimpleAvatarPickerHeaderView *)self centerYAnchor];
  v11 = [v9 constraintEqualToAnchor:v10];
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

- (void)updateForEditMode:(BOOL)a3 animated:(BOOL)a4
{
  v4 = a4;
  v7 = kAVTCircularButtonEllipsisImageName;
  if (!a3)
  {
    v7 = kAVTCircularButtonPlusImageName;
  }

  v8 = *v7;
  if (a3)
  {
    [(AVTSimpleAvatarPickerHeaderView *)self ellipsisSymbolConfiguration];
  }

  else
  {
    [(AVTSimpleAvatarPickerHeaderView *)self plusSymbolConfiguration];
  }
  v9 = ;
  [(AVTSimpleAvatarPickerHeaderView *)self updateWithSymbolNamed:v8 configuration:v9 animated:v4];
}

- (void)updateWithSymbolNamed:(id)a3 configuration:(id)a4 animated:(BOOL)a5
{
  v5 = a5;
  v8 = a3;
  v9 = a4;
  v10 = [(AVTSimpleAvatarPickerHeaderView *)self currentSymbolName];
  v11 = [v10 isEqualToString:v8];

  if ((v11 & 1) == 0)
  {
    [(AVTSimpleAvatarPickerHeaderView *)self setCurrentSymbolName:v8];
    v12 = [(AVTSimpleAvatarPickerHeaderView *)self button];
    [v12 setSymbolImageWithName:v8 configuration:v9];

    if (v5)
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

- (void)buttonPressed:(id)a3
{
  v4 = [(AVTSimpleAvatarPickerHeaderView *)self buttonPressedBlock];

  if (v4)
  {
    v5 = [(AVTSimpleAvatarPickerHeaderView *)self buttonPressedBlock];
    v5[2]();
  }
}

@end