@interface BCSTorchButtonView
- (BCSTorchButtonView)init;
- (BCSTorchButtonViewDelegate)delegate;
- (void)_torchButtonPressed:(id)a3;
- (void)_updateTorchButtonTintColor;
- (void)rotationAnimationDidFinish;
- (void)torchActivenessChangedTo:(BOOL)a3;
@end

@implementation BCSTorchButtonView

- (BCSTorchButtonView)init
{
  v57[10] = *MEMORY[0x277D85DE8];
  v56.receiver = self;
  v56.super_class = BCSTorchButtonView;
  v2 = [(BCSTorchButtonView *)&v56 init];
  if (v2)
  {
    v3 = [MEMORY[0x277D75220] buttonWithType:0];
    torchButton = v2->_torchButton;
    v2->_torchButton = v3;

    [(UIButton *)v2->_torchButton setTranslatesAutoresizingMaskIntoConstraints:0];
    v5 = MEMORY[0x277D755D0];
    v6 = _UISolariumEnabled();
    v7 = 30.0;
    if (v6)
    {
      v7 = 24.0;
    }

    v46 = [v5 configurationWithPointSize:v7];
    v55 = [MEMORY[0x277D755B8] _systemImageNamed:@"flashlight.on.fill" withConfiguration:v46];
    v47 = [MEMORY[0x277D755B8] _systemImageNamed:@"flashlight.off.fill" withConfiguration:v46];
    [(UIButton *)v2->_torchButton setImage:v47 forState:0];
    [(UIButton *)v2->_torchButton setImage:v55 forState:4];
    [(BCSTorchButtonView *)v2 _updateTorchButtonTintColor];
    [(UIButton *)v2->_torchButton _setTouchInsets:-10.0, -10.0, -10.0, -10.0];
    [(UIButton *)v2->_torchButton addTarget:v2 action:sel__torchButtonPressed_ forControlEvents:0x2000];
    if (_UISolariumEnabled())
    {
      v8 = objc_alloc_init(MEMORY[0x277D75D18]);
      torchButtonPlatter = v2->_torchButtonPlatter;
      v2->_torchButtonPlatter = v8;

      [(UIView *)v2->_torchButtonPlatter setOverrideUserInterfaceStyle:2];
      [(UIView *)v2->_torchButtonPlatter bcs_setGlassBackground];
    }

    else
    {
      v10 = objc_alloc(MEMORY[0x277D75D68]);
      v11 = [MEMORY[0x277D75210] effectWithStyle:2];
      v12 = [v10 initWithEffect:v11];
      v13 = v2->_torchButtonPlatter;
      v2->_torchButtonPlatter = v12;
    }

    [(UIView *)v2->_torchButtonPlatter setTranslatesAutoresizingMaskIntoConstraints:0];
    v14 = _UISolariumEnabled();
    v15 = 30.0;
    if (v14)
    {
      v15 = 24.0;
    }

    [(UIView *)v2->_torchButtonPlatter _setCornerRadius:v15];
    [(UIView *)v2->_torchButtonPlatter setClipsToBounds:1];
    v16 = _UISolariumEnabled();
    v17 = v2->_torchButtonPlatter;
    if (v16)
    {
      [(UIView *)v17 addSubview:v2->_torchButton];
    }

    else
    {
      v18 = [(UIView *)v17 contentView];
      [v18 addSubview:v2->_torchButton];
    }

    [(BCSTorchButtonView *)v2 addSubview:v2->_torchButtonPlatter];
    if (_UISolariumEnabled())
    {
      v19 = 48.0;
    }

    else
    {
      v19 = 60.0;
    }

    v20 = MEMORY[0x277CCAAD0];
    v54 = [(UIButton *)v2->_torchButton leadingAnchor];
    v45 = [(UIView *)v2->_torchButtonPlatter leadingAnchor];
    v44 = [v54 constraintEqualToAnchor:?];
    v57[0] = v44;
    v53 = [(UIButton *)v2->_torchButton trailingAnchor];
    v43 = [(UIView *)v2->_torchButtonPlatter trailingAnchor];
    v42 = [v53 constraintEqualToAnchor:?];
    v57[1] = v42;
    v52 = [(UIButton *)v2->_torchButton topAnchor];
    v41 = [(UIView *)v2->_torchButtonPlatter topAnchor];
    v40 = [v52 constraintEqualToAnchor:?];
    v57[2] = v40;
    v51 = [(UIButton *)v2->_torchButton bottomAnchor];
    v39 = [(UIView *)v2->_torchButtonPlatter bottomAnchor];
    v38 = [v51 constraintEqualToAnchor:?];
    v57[3] = v38;
    v50 = [(UIView *)v2->_torchButtonPlatter leadingAnchor];
    v37 = [(BCSTorchButtonView *)v2 leadingAnchor];
    v36 = [v50 constraintEqualToAnchor:?];
    v57[4] = v36;
    v49 = [(UIView *)v2->_torchButtonPlatter trailingAnchor];
    v35 = [(BCSTorchButtonView *)v2 trailingAnchor];
    v34 = [v49 constraintEqualToAnchor:?];
    v57[5] = v34;
    v48 = [(UIView *)v2->_torchButtonPlatter topAnchor];
    v33 = [(BCSTorchButtonView *)v2 topAnchor];
    v32 = [v48 constraintEqualToAnchor:?];
    v57[6] = v32;
    v21 = [(UIView *)v2->_torchButtonPlatter bottomAnchor];
    v22 = [(BCSTorchButtonView *)v2 bottomAnchor];
    v23 = [v21 constraintEqualToAnchor:v22];
    v57[7] = v23;
    v24 = [(UIView *)v2->_torchButtonPlatter widthAnchor];
    v25 = [v24 constraintEqualToConstant:v19];
    v57[8] = v25;
    v26 = [(UIView *)v2->_torchButtonPlatter heightAnchor];
    v27 = [v26 constraintEqualToConstant:v19];
    v57[9] = v27;
    v28 = [MEMORY[0x277CBEA60] arrayWithObjects:v57 count:10];
    [v20 activateConstraints:v28];

    v29 = v2;
  }

  v30 = *MEMORY[0x277D85DE8];
  return v2;
}

- (void)torchActivenessChangedTo:(BOOL)a3
{
  if (!a3)
  {
    [(UIButton *)self->_torchButton setSelected:0];
    [(BCSTorchButtonView *)self _updateTorchButtonTintColor];
    if (_UISolariumEnabled())
    {
      v4 = [MEMORY[0x277D75348] clearColor];
      [(UIView *)self->_torchButtonPlatter setBackgroundColor:?];
    }

    else
    {
      v4 = [MEMORY[0x277D75210] effectWithStyle:2];
      [(UIView *)self->_torchButtonPlatter setEffect:?];
    }
  }
}

- (void)rotationAnimationDidFinish
{
  [(UIView *)self->_torchButtonPlatter setAlpha:0.0];
  [(UIView *)self->_torchButtonPlatter setHidden:0];
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __48__BCSTorchButtonView_rotationAnimationDidFinish__block_invoke;
  v3[3] = &unk_278D01D58;
  v3[4] = self;
  [MEMORY[0x277D75D18] animateWithDuration:v3 animations:0.2];
}

- (void)_torchButtonPressed:(id)a3
{
  v8 = a3;
  v4 = [v8 isSelected];
  [(UIButton *)self->_torchButton setSelected:v4 ^ 1u];
  if (_UISolariumEnabled())
  {
    if (v4)
    {
      v5 = [MEMORY[0x277D75348] clearColor];
      v6 = v5;
    }

    else
    {
      v6 = [MEMORY[0x277D75348] whiteColor];
      v5 = [v6 colorWithAlphaComponent:0.9];
    }

    [(UIView *)self->_torchButtonPlatter setBackgroundColor:v5];
    if ((v4 & 1) == 0)
    {
    }
  }

  else
  {
    if (v4)
    {
      [MEMORY[0x277D75210] effectWithStyle:2];
    }

    else
    {
      [MEMORY[0x277D75210] effectWithStyle:1];
    }
    v6 = ;
    [(UIView *)self->_torchButtonPlatter setEffect:v6];
  }

  [(BCSTorchButtonView *)self _updateTorchButtonTintColor];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained torchButtonView:self torchModeChangedTo:v4 ^ 1u];
}

- (void)_updateTorchButtonTintColor
{
  if ([(UIButton *)self->_torchButton isSelected])
  {
    [MEMORY[0x277D75348] systemBlueColor];
  }

  else
  {
    [MEMORY[0x277D75348] systemWhiteColor];
  }
  v4 = ;
  v3 = [(UIButton *)self->_torchButton imageView];
  [v3 setTintColor:v4];
}

- (BCSTorchButtonViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end