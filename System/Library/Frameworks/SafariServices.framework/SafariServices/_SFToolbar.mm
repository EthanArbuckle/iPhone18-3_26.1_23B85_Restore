@interface _SFToolbar
+ (BOOL)_deviceSupportsMinibars;
- (CGSize)sizeThatFits:(CGSize)fits;
- (UIView)superviewOwningLayout;
- (_SFBarRegistrationToken)barRegistration;
- (_SFToolbar)initWithPlacement:(int64_t)placement hideBackground:(BOOL)background;
- (double)_contentMargin;
- (double)baselineOffsetAdjustment;
- (id)popoverSourceInfoForBarItem:(int64_t)item;
- (void)_cancelLinkAnimations;
- (void)animateLinkImage:(CGImage *)image fromRect:(CGRect)rect inView:(id)view toBarItem:(int64_t)item afterDestinationLayerBouncesBlock:(id)block;
- (void)dealloc;
- (void)didChangeArrangedBarItems:(id)items;
- (void)layoutSubviews;
- (void)setItems:(id)items animated:(BOOL)animated;
- (void)setPocketContainerInteraction:(id)interaction;
- (void)setTheme:(id)theme;
@end

@implementation _SFToolbar

- (void)_cancelLinkAnimations
{
  window = [(_SFToolbar *)self window];
  [MEMORY[0x1E69DD250] _sf_cancelLinkAnimationsOnSourceWindow:window destinationWindow:window];
}

- (void)dealloc
{
  [(_SFToolbar *)self _cancelLinkAnimations];
  v3.receiver = self;
  v3.super_class = _SFToolbar;
  [(_SFToolbar *)&v3 dealloc];
}

- (_SFToolbar)initWithPlacement:(int64_t)placement hideBackground:(BOOL)background
{
  backgroundCopy = background;
  v21.receiver = self;
  v21.super_class = _SFToolbar;
  v6 = [(_SFToolbar *)&v21 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  v7 = v6;
  if (v6)
  {
    v6->_hideBackground = backgroundCopy;
    v6->_placement = placement;
    if (placement)
    {
      v8 = @"BottomBrowserToolbar";
    }

    else
    {
      v8 = @"TopBrowserToolbar";
    }

    [(_SFToolbar *)v6 setAccessibilityIdentifier:v8];
    layer = [(_SFToolbar *)v7 layer];
    [layer setAllowsGroupOpacity:0];

    if (backgroundCopy)
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

      sf_barHairlineShadowColor = [MEMORY[0x1E69DC888] sf_barHairlineShadowColor];
      [(UIView *)v7->_separator setBackgroundColor:sf_barHairlineShadowColor];

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

- (CGSize)sizeThatFits:(CGSize)fits
{
  v7.receiver = self;
  v7.super_class = _SFToolbar;
  [(_SFToolbar *)&v7 sizeThatFits:fits.width, fits.height];
  v6 = fmax(v5, 44.0);
  if (self->_placement == 1)
  {
    v5 = v6;
  }

  result.height = v5;
  result.width = v4;
  return result;
}

- (void)setItems:(id)items animated:(BOOL)animated
{
  animatedCopy = animated;
  v18 = *MEMORY[0x1E69E9840];
  itemsCopy = items;
  v16.receiver = self;
  v16.super_class = _SFToolbar;
  [(_SFToolbar *)&v16 setItems:itemsCopy animated:animatedCopy];
  if (self->_hideBackground)
  {
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v7 = itemsCopy;
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
    window = [(_SFToolbar *)self window];
    windowScene = [window windowScene];
    if (([windowScene interfaceOrientation] - 3) >= 2)
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

- (void)setTheme:(id)theme
{
  themeCopy = theme;
  theme = self->_theme;
  if (theme != themeCopy)
  {
    v11 = themeCopy;
    v7 = [(_SFBarTheme *)theme isEqual:themeCopy];
    themeCopy = v11;
    if (!v7)
    {
      objc_storeStrong(&self->_theme, theme);
      [(_SFToolbar *)self _setOverrideUserInterfaceStyle:[(_SFBarTheme *)self->_theme overrideUserInterfaceStyle]];
      backdropIsDark = [(_SFBarTheme *)self->_theme backdropIsDark];
      [(_SFBarTheme *)self->_theme applyBackdropEffectsToView:self->_backgroundView];
      if ([(_SFToolbar *)self placement]== 1)
      {
        [(UIView *)self->_separator setAlpha:!backdropIsDark];
      }

      controlsTintColor = [(_SFBarTheme *)v11 controlsTintColor];
      [(_SFToolbar *)self setTintColor:controlsTintColor];

      if ([(_SFBarTheme *)v11 backdropIsDark])
      {
        v10 = 2;
      }

      else
      {
        v10 = 1;
      }

      [(_SFToolbar *)self _accessibilitySetInterfaceStyleIntent:v10];
      themeCopy = v11;
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

- (void)animateLinkImage:(CGImage *)image fromRect:(CGRect)rect inView:(id)view toBarItem:(int64_t)item afterDestinationLayerBouncesBlock:(id)block
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  viewCopy = view;
  blockCopy = block;
  placement = [(_SFToolbar *)self placement];
  WeakRetained = objc_loadWeakRetained(&self->_barRegistration);
  v18 = [WeakRetained UIBarButtonItemForItem:item];
  view = [v18 view];

  if (view)
  {
    v20 = MEMORY[0x1E69DD250];
    [view bounds];
    [v20 _sf_animateLinkImage:image withAnimation:placement == 0 fromRect:viewCopy inView:view toRect:0 inView:blockCopy afterImageDisappearsBlock:x afterDestinationLayerBouncesBlock:{y, width, height, v21, v22, v23, v24}];
  }

  else if (blockCopy)
  {
    dispatch_async(MEMORY[0x1E69E96A0], blockCopy);
  }
}

- (id)popoverSourceInfoForBarItem:(int64_t)item
{
  WeakRetained = objc_loadWeakRetained(&self->_barRegistration);
  v5 = [WeakRetained popoverSourceInfoForItem:item];

  return v5;
}

- (void)didChangeArrangedBarItems:(id)items
{
  WeakRetained = objc_loadWeakRetained(&self->_superviewOwningLayout);
  [WeakRetained setNeedsLayout];
}

- (void)setPocketContainerInteraction:(id)interaction
{
  interactionCopy = interaction;
  isSolariumEnabled = [MEMORY[0x1E69C8880] isSolariumEnabled];
  v6 = interactionCopy;
  if (isSolariumEnabled)
  {
    pocketContainerInteraction = self->_pocketContainerInteraction;
    if (pocketContainerInteraction != interactionCopy)
    {
      if (pocketContainerInteraction)
      {
        [(_SFToolbar *)self removeInteraction:?];
      }

      objc_storeStrong(&self->_pocketContainerInteraction, interaction);
      [(_SFToolbar *)self addInteraction:interactionCopy];
      v6 = interactionCopy;
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