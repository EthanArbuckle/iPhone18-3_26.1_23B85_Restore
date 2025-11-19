@interface _SFToolbar
+ (BOOL)_deviceSupportsMinibars;
- (CGSize)sizeThatFits:(CGSize)a3;
- (UIView)superviewOwningLayout;
- (_SFBarRegistrationToken)barRegistration;
- (_SFToolbar)initWithPlacement:(int64_t)a3 hideBackground:(BOOL)a4;
- (double)_contentMargin;
- (double)baselineOffsetAdjustment;
- (id)popoverSourceInfoForBarItem:(int64_t)a3;
- (void)_cancelLinkAnimations;
- (void)animateLinkImage:(CGImage *)a3 fromRect:(CGRect)a4 inView:(id)a5 toBarItem:(int64_t)a6 afterDestinationLayerBouncesBlock:(id)a7;
- (void)dealloc;
- (void)didChangeArrangedBarItems:(id)a3;
- (void)layoutSubviews;
- (void)setItems:(id)a3 animated:(BOOL)a4;
- (void)setPocketContainerInteraction:(id)a3;
- (void)setTheme:(id)a3;
@end

@implementation _SFToolbar

- (void)_cancelLinkAnimations
{
  v2 = [(_SFToolbar *)self window];
  [MEMORY[0x1E69DD250] _sf_cancelLinkAnimationsOnSourceWindow:v2 destinationWindow:v2];
}

- (void)dealloc
{
  [(_SFToolbar *)self _cancelLinkAnimations];
  v3.receiver = self;
  v3.super_class = _SFToolbar;
  [(_SFToolbar *)&v3 dealloc];
}

- (_SFToolbar)initWithPlacement:(int64_t)a3 hideBackground:(BOOL)a4
{
  v4 = a4;
  v21.receiver = self;
  v21.super_class = _SFToolbar;
  v6 = [(_SFToolbar *)&v21 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  v7 = v6;
  if (v6)
  {
    v6->_hideBackground = v4;
    v6->_placement = a3;
    if (a3)
    {
      v8 = @"BottomBrowserToolbar";
    }

    else
    {
      v8 = @"TopBrowserToolbar";
    }

    [(_SFToolbar *)v6 setAccessibilityIdentifier:v8];
    v9 = [(_SFToolbar *)v7 layer];
    [v9 setAllowsGroupOpacity:0];

    if (v4)
    {
      [(_SFToolbar *)v7 setBackgroundColor:0];
      [(_SFToolbar *)v7 setTranslucent:1];
      v10 = objc_alloc_init(MEMORY[0x1E69DCAB8]);
      [(_SFToolbar *)v7 setBackgroundImage:v10 forToolbarPosition:0 barMetrics:0];

      [(_SFToolbar *)v7 _setHidesShadow:1];
    }

    else
    {
      v11 = objc_alloc_init(MEMORY[0x1E69DD250]);
      separator = v7->_separator;
      v7->_separator = v11;

      v13 = [MEMORY[0x1E69DC888] sf_barHairlineShadowColor];
      [(UIView *)v7->_separator setBackgroundColor:v13];

      if (([MEMORY[0x1E69C8880] isSolariumEnabled] & 1) == 0)
      {
        [(_SFToolbar *)v7 addSubview:v7->_separator];
      }

      v14 = objc_alloc_init(MEMORY[0x1E69DCAE0]);
      v15 = objc_alloc(MEMORY[0x1E69DD298]);
      v16 = [MEMORY[0x1E69DC730] effectWithStyle:1100];
      v17 = [v15 initWithEffect:v16];
      backgroundView = v7->_backgroundView;
      v7->_backgroundView = v17;

      [(UIVisualEffectView *)v7->_backgroundView setAutoresizingMask:18];
      [v14 addSubview:v7->_backgroundView];
      if (([MEMORY[0x1E69C8880] isSolariumEnabled] & 1) == 0)
      {
        [(_SFToolbar *)v7 _setBackgroundView:v14];
      }
    }

    v19 = v7;
  }

  return v7;
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  v7.receiver = self;
  v7.super_class = _SFToolbar;
  [(_SFToolbar *)&v7 sizeThatFits:a3.width, a3.height];
  v6 = fmax(v5, 44.0);
  if (self->_placement == 1)
  {
    v5 = v6;
  }

  result.height = v5;
  result.width = v4;
  return result;
}

- (void)setItems:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  v18 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v16.receiver = self;
  v16.super_class = _SFToolbar;
  [(_SFToolbar *)&v16 setItems:v6 animated:v4];
  if (self->_hideBackground)
  {
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v7 = v6;
    v8 = [v7 countByEnumeratingWithState:&v12 objects:v17 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v13;
      do
      {
        v11 = 0;
        do
        {
          if (*v13 != v10)
          {
            objc_enumerationMutation(v7);
          }

          [*(*(&v12 + 1) + 8 * v11++) setHidesSharedBackground:{1, v12}];
        }

        while (v9 != v11);
        v9 = [v7 countByEnumeratingWithState:&v12 objects:v17 count:16];
      }

      while (v9);
    }
  }

  [(_SFToolbar *)self _cancelLinkAnimations];
}

- (double)baselineOffsetAdjustment
{
  v3 = 0.0;
  if ([objc_opt_class() _deviceSupportsMinibars])
  {
    v4 = [(_SFToolbar *)self window];
    v5 = [v4 windowScene];
    if (([v5 interfaceOrientation] - 3) >= 2)
    {
      v3 = 0.0;
    }

    else
    {
      v3 = 1.0;
    }
  }

  return v3;
}

+ (BOOL)_deviceSupportsMinibars
{
  if (_deviceSupportsMinibars_onceToken != -1)
  {
    +[_SFToolbar _deviceSupportsMinibars];
  }

  return _deviceSupportsMinibars_deviceSupportsMinibars;
}

- (void)layoutSubviews
{
  v6.receiver = self;
  v6.super_class = _SFToolbar;
  [(_SFToolbar *)&v6 layoutSubviews];
  _SFOnePixel();
  separator = self->_separator;
  v5 = -v4;
  [(_SFToolbar *)self bounds];
  [(UIView *)separator setFrame:0.0, v5];
}

- (void)setTheme:(id)a3
{
  v5 = a3;
  theme = self->_theme;
  if (theme != v5)
  {
    v11 = v5;
    v7 = [(_SFBarTheme *)theme isEqual:v5];
    v5 = v11;
    if (!v7)
    {
      objc_storeStrong(&self->_theme, a3);
      [(_SFToolbar *)self _setOverrideUserInterfaceStyle:[(_SFBarTheme *)self->_theme overrideUserInterfaceStyle]];
      v8 = [(_SFBarTheme *)self->_theme backdropIsDark];
      [(_SFBarTheme *)self->_theme applyBackdropEffectsToView:self->_backgroundView];
      if ([(_SFToolbar *)self placement]== 1)
      {
        [(UIView *)self->_separator setAlpha:!v8];
      }

      v9 = [(_SFBarTheme *)v11 controlsTintColor];
      [(_SFToolbar *)self setTintColor:v9];

      if ([(_SFBarTheme *)v11 backdropIsDark])
      {
        v10 = 2;
      }

      else
      {
        v10 = 1;
      }

      [(_SFToolbar *)self _accessibilitySetInterfaceStyleIntent:v10];
      v5 = v11;
    }
  }
}

- (double)_contentMargin
{
  if (![(_SFToolbar *)self placement])
  {
    return 0.0;
  }

  v4.receiver = self;
  v4.super_class = _SFToolbar;
  [(_SFToolbar *)&v4 _contentMargin];
  return result;
}

- (void)animateLinkImage:(CGImage *)a3 fromRect:(CGRect)a4 inView:(id)a5 toBarItem:(int64_t)a6 afterDestinationLayerBouncesBlock:(id)a7
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v25 = a5;
  v15 = a7;
  v16 = [(_SFToolbar *)self placement];
  WeakRetained = objc_loadWeakRetained(&self->_barRegistration);
  v18 = [WeakRetained UIBarButtonItemForItem:a6];
  v19 = [v18 view];

  if (v19)
  {
    v20 = MEMORY[0x1E69DD250];
    [v19 bounds];
    [v20 _sf_animateLinkImage:a3 withAnimation:v16 == 0 fromRect:v25 inView:v19 toRect:0 inView:v15 afterImageDisappearsBlock:x afterDestinationLayerBouncesBlock:{y, width, height, v21, v22, v23, v24}];
  }

  else if (v15)
  {
    dispatch_async(MEMORY[0x1E69E96A0], v15);
  }
}

- (id)popoverSourceInfoForBarItem:(int64_t)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_barRegistration);
  v5 = [WeakRetained popoverSourceInfoForItem:a3];

  return v5;
}

- (void)didChangeArrangedBarItems:(id)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_superviewOwningLayout);
  [WeakRetained setNeedsLayout];
}

- (void)setPocketContainerInteraction:(id)a3
{
  v8 = a3;
  v5 = [MEMORY[0x1E69C8880] isSolariumEnabled];
  v6 = v8;
  if (v5)
  {
    pocketContainerInteraction = self->_pocketContainerInteraction;
    if (pocketContainerInteraction != v8)
    {
      if (pocketContainerInteraction)
      {
        [(_SFToolbar *)self removeInteraction:?];
      }

      objc_storeStrong(&self->_pocketContainerInteraction, a3);
      [(_SFToolbar *)self addInteraction:v8];
      v6 = v8;
    }
  }
}

- (_SFBarRegistrationToken)barRegistration
{
  WeakRetained = objc_loadWeakRetained(&self->_barRegistration);

  return WeakRetained;
}

- (UIView)superviewOwningLayout
{
  WeakRetained = objc_loadWeakRetained(&self->_superviewOwningLayout);

  return WeakRetained;
}

@end