@interface ASVBlurredBackgroundView
+ (id)disabledEffectsForARStyle;
+ (id)disabledEffectsForStudioStyle;
+ (id)disabledSelectedEffects;
+ (id)highlightedEffectsForARStyle;
+ (id)highlightedEffectsForStudioStyle;
+ (id)normalEffectsForARDarkStyle;
+ (id)normalEffectsForARStyle;
+ (id)normalEffectsForDarkModeStyle;
+ (id)normalEffectsForStudioStyle;
+ (id)selectedEffects;
+ (id)selectedEffectsForARDarkStyle;
+ (id)selectedEffectsForDarkModeStyle;
- (ASVBlurredBackgroundView)initWithFrame:(CGRect)frame backgroundStyle:(int64_t)style controlStyle:(int64_t)controlStyle;
- (void)setControlStyle:(int64_t)style;
- (void)setEnabled:(BOOL)enabled;
- (void)setHighlighted:(BOOL)highlighted;
- (void)setSelected:(BOOL)selected;
- (void)updateBackgroundEffects;
@end

@implementation ASVBlurredBackgroundView

+ (id)disabledEffectsForARStyle
{
  if (disabledEffectsForARStyle_onceToken != -1)
  {
    +[ASVBlurredBackgroundView disabledEffectsForARStyle];
  }

  v3 = disabledEffectsForARStyle_disabledEffectsForARStyle;

  return v3;
}

void __53__ASVBlurredBackgroundView_disabledEffectsForARStyle__block_invoke()
{
  v12[4] = *MEMORY[0x277D85DE8];
  v0 = MEMORY[0x277D75D58];
  v1 = [MEMORY[0x277D75348] whiteColor];
  v2 = [v0 effectCompositingColor:v1 withMode:24 alpha:0.375];
  v12[0] = v2;
  v3 = MEMORY[0x277D75D58];
  v4 = [MEMORY[0x277D75348] blackColor];
  v5 = [v3 effectCompositingColor:v4 withMode:1010 alpha:0.26];
  v12[1] = v5;
  v6 = MEMORY[0x277D75210];
  v7 = [MEMORY[0x277D759A0] mainScreen];
  UIRoundToScreenScale();
  v8 = [v6 effectWithBlurRadius:?];
  v12[2] = v8;
  v9 = [MEMORY[0x277D75358] colorEffectSaturate:1.5];
  v12[3] = v9;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:4];
  v11 = disabledEffectsForARStyle_disabledEffectsForARStyle;
  disabledEffectsForARStyle_disabledEffectsForARStyle = v10;
}

+ (id)disabledEffectsForStudioStyle
{
  if (disabledEffectsForStudioStyle_onceToken != -1)
  {
    +[ASVBlurredBackgroundView disabledEffectsForStudioStyle];
  }

  v3 = disabledEffectsForStudioStyle_disabledEffectsForStudioStyle;

  return v3;
}

void __57__ASVBlurredBackgroundView_disabledEffectsForStudioStyle__block_invoke()
{
  v12[4] = *MEMORY[0x277D85DE8];
  v0 = MEMORY[0x277D75D58];
  v1 = [MEMORY[0x277D75348] whiteColor];
  v2 = [v0 effectCompositingColor:v1 withMode:24 alpha:0.425];
  v12[0] = v2;
  v3 = MEMORY[0x277D75D58];
  v4 = [MEMORY[0x277D75348] blackColor];
  v5 = [v3 effectCompositingColor:v4 withMode:1010 alpha:0.27];
  v12[1] = v5;
  v6 = MEMORY[0x277D75210];
  v7 = [MEMORY[0x277D759A0] mainScreen];
  UIRoundToScreenScale();
  v8 = [v6 effectWithBlurRadius:?];
  v12[2] = v8;
  v9 = [MEMORY[0x277D75358] colorEffectSaturate:1.5];
  v12[3] = v9;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:4];
  v11 = disabledEffectsForStudioStyle_disabledEffectsForStudioStyle;
  disabledEffectsForStudioStyle_disabledEffectsForStudioStyle = v10;
}

+ (id)normalEffectsForARStyle
{
  if (normalEffectsForARStyle_onceToken != -1)
  {
    +[ASVBlurredBackgroundView normalEffectsForARStyle];
  }

  v3 = normalEffectsForARStyle_normalEffectsForARStyle;

  return v3;
}

void __51__ASVBlurredBackgroundView_normalEffectsForARStyle__block_invoke()
{
  v12[4] = *MEMORY[0x277D85DE8];
  v0 = MEMORY[0x277D75D58];
  v1 = [MEMORY[0x277D75348] whiteColor];
  v2 = [v0 effectCompositingColor:v1 withMode:24 alpha:0.75];
  v12[0] = v2;
  v3 = MEMORY[0x277D75D58];
  v4 = [MEMORY[0x277D75348] blackColor];
  v5 = [v3 effectCompositingColor:v4 withMode:1010 alpha:0.26];
  v12[1] = v5;
  v6 = MEMORY[0x277D75210];
  v7 = [MEMORY[0x277D759A0] mainScreen];
  UIRoundToScreenScale();
  v8 = [v6 effectWithBlurRadius:?];
  v12[2] = v8;
  v9 = [MEMORY[0x277D75358] colorEffectSaturate:1.5];
  v12[3] = v9;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:4];
  v11 = normalEffectsForARStyle_normalEffectsForARStyle;
  normalEffectsForARStyle_normalEffectsForARStyle = v10;
}

+ (id)normalEffectsForStudioStyle
{
  if (normalEffectsForStudioStyle_onceToken != -1)
  {
    +[ASVBlurredBackgroundView normalEffectsForStudioStyle];
  }

  v3 = normalEffectsForStudioStyle_normalEffectsForStudioStyle;

  return v3;
}

void __55__ASVBlurredBackgroundView_normalEffectsForStudioStyle__block_invoke()
{
  v12[4] = *MEMORY[0x277D85DE8];
  v0 = MEMORY[0x277D75D58];
  v1 = [MEMORY[0x277D75348] whiteColor];
  v2 = [v0 effectCompositingColor:v1 withMode:24 alpha:0.85];
  v12[0] = v2;
  v3 = MEMORY[0x277D75D58];
  v4 = [MEMORY[0x277D75348] blackColor];
  v5 = [v3 effectCompositingColor:v4 withMode:1010 alpha:0.27];
  v12[1] = v5;
  v6 = MEMORY[0x277D75210];
  v7 = [MEMORY[0x277D759A0] mainScreen];
  UIRoundToScreenScale();
  v8 = [v6 effectWithBlurRadius:?];
  v12[2] = v8;
  v9 = [MEMORY[0x277D75358] colorEffectSaturate:1.5];
  v12[3] = v9;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:4];
  v11 = normalEffectsForStudioStyle_normalEffectsForStudioStyle;
  normalEffectsForStudioStyle_normalEffectsForStudioStyle = v10;
}

+ (id)highlightedEffectsForARStyle
{
  if (highlightedEffectsForARStyle_onceToken != -1)
  {
    +[ASVBlurredBackgroundView highlightedEffectsForARStyle];
  }

  v3 = highlightedEffectsForARStyle_highlightedEffectsForARStyle;

  return v3;
}

void __56__ASVBlurredBackgroundView_highlightedEffectsForARStyle__block_invoke()
{
  v12[4] = *MEMORY[0x277D85DE8];
  v0 = MEMORY[0x277D75D58];
  v1 = [MEMORY[0x277D75348] whiteColor];
  v2 = [v0 effectCompositingColor:v1 withMode:24 alpha:0.8];
  v12[0] = v2;
  v3 = MEMORY[0x277D75D58];
  v4 = [MEMORY[0x277D75348] blackColor];
  v5 = [v3 effectCompositingColor:v4 withMode:1010 alpha:0.15];
  v12[1] = v5;
  v6 = MEMORY[0x277D75210];
  v7 = [MEMORY[0x277D759A0] mainScreen];
  UIRoundToScreenScale();
  v8 = [v6 effectWithBlurRadius:?];
  v12[2] = v8;
  v9 = [MEMORY[0x277D75358] colorEffectSaturate:1.5];
  v12[3] = v9;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:4];
  v11 = highlightedEffectsForARStyle_highlightedEffectsForARStyle;
  highlightedEffectsForARStyle_highlightedEffectsForARStyle = v10;
}

+ (id)highlightedEffectsForStudioStyle
{
  if (highlightedEffectsForStudioStyle_onceToken != -1)
  {
    +[ASVBlurredBackgroundView highlightedEffectsForStudioStyle];
  }

  v3 = highlightedEffectsForStudioStyle_highlightedEffectsForStudioStyle;

  return v3;
}

void __60__ASVBlurredBackgroundView_highlightedEffectsForStudioStyle__block_invoke()
{
  v12[4] = *MEMORY[0x277D85DE8];
  v0 = MEMORY[0x277D75D58];
  v1 = [MEMORY[0x277D75348] whiteColor];
  v2 = [v0 effectCompositingColor:v1 withMode:24 alpha:0.85];
  v12[0] = v2;
  v3 = MEMORY[0x277D75D58];
  v4 = [MEMORY[0x277D75348] blackColor];
  v5 = [v3 effectCompositingColor:v4 withMode:1010 alpha:0.23];
  v12[1] = v5;
  v6 = MEMORY[0x277D75210];
  v7 = [MEMORY[0x277D759A0] mainScreen];
  UIRoundToScreenScale();
  v8 = [v6 effectWithBlurRadius:?];
  v12[2] = v8;
  v9 = [MEMORY[0x277D75358] colorEffectSaturate:1.5];
  v12[3] = v9;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:4];
  v11 = highlightedEffectsForStudioStyle_highlightedEffectsForStudioStyle;
  highlightedEffectsForStudioStyle_highlightedEffectsForStudioStyle = v10;
}

+ (id)disabledSelectedEffects
{
  if (disabledSelectedEffects_onceToken != -1)
  {
    +[ASVBlurredBackgroundView disabledSelectedEffects];
  }

  v3 = disabledSelectedEffects_disabledSelectedEffects;

  return v3;
}

void __51__ASVBlurredBackgroundView_disabledSelectedEffects__block_invoke()
{
  v5[1] = *MEMORY[0x277D85DE8];
  v0 = MEMORY[0x277D75D58];
  v1 = [MEMORY[0x277D75348] whiteColor];
  v2 = [v0 effectCompositingColor:v1 withMode:24 alpha:0.5];
  v5[0] = v2;
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:1];
  v4 = disabledSelectedEffects_disabledSelectedEffects;
  disabledSelectedEffects_disabledSelectedEffects = v3;
}

+ (id)selectedEffects
{
  if (selectedEffects_onceToken != -1)
  {
    +[ASVBlurredBackgroundView selectedEffects];
  }

  v3 = selectedEffects_selectedEffects;

  return v3;
}

void __43__ASVBlurredBackgroundView_selectedEffects__block_invoke()
{
  v5[1] = *MEMORY[0x277D85DE8];
  v0 = MEMORY[0x277D75D58];
  v1 = [MEMORY[0x277D75348] whiteColor];
  v2 = [v0 effectCompositingColor:v1 withMode:24 alpha:1.0];
  v5[0] = v2;
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:1];
  v4 = selectedEffects_selectedEffects;
  selectedEffects_selectedEffects = v3;
}

+ (id)normalEffectsForARDarkStyle
{
  if (normalEffectsForARDarkStyle_onceToken != -1)
  {
    +[ASVBlurredBackgroundView normalEffectsForARDarkStyle];
  }

  v3 = normalEffectsForARDarkStyle_normalEffectsForARDarkStyle;

  return v3;
}

void __55__ASVBlurredBackgroundView_normalEffectsForARDarkStyle__block_invoke()
{
  v9[3] = *MEMORY[0x277D85DE8];
  v0 = MEMORY[0x277D75D58];
  v1 = [MEMORY[0x277D75348] whiteColor];
  v2 = [v0 effectCompositingColor:v1 withMode:24 alpha:0.15];
  v3 = MEMORY[0x277D75210];
  v4 = [MEMORY[0x277D759A0] mainScreen];
  UIRoundToScreenScale();
  v5 = [v3 effectWithBlurRadius:?];
  v9[1] = v5;
  v6 = [MEMORY[0x277D75358] colorEffectSaturate:1.5];
  v9[2] = v6;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:3];
  v8 = normalEffectsForARDarkStyle_normalEffectsForARDarkStyle;
  normalEffectsForARDarkStyle_normalEffectsForARDarkStyle = v7;
}

+ (id)selectedEffectsForARDarkStyle
{
  if (selectedEffectsForARDarkStyle_onceToken != -1)
  {
    +[ASVBlurredBackgroundView selectedEffectsForARDarkStyle];
  }

  v3 = selectedEffectsForARDarkStyle_selectedEffectsForARDarkStyle;

  return v3;
}

void __57__ASVBlurredBackgroundView_selectedEffectsForARDarkStyle__block_invoke()
{
  v9[3] = *MEMORY[0x277D85DE8];
  v0 = MEMORY[0x277D75D58];
  v1 = [MEMORY[0x277D75348] whiteColor];
  v2 = [v0 effectCompositingColor:v1 withMode:24 alpha:0.3];
  v3 = MEMORY[0x277D75210];
  v4 = [MEMORY[0x277D759A0] mainScreen];
  UIRoundToScreenScale();
  v5 = [v3 effectWithBlurRadius:?];
  v9[1] = v5;
  v6 = [MEMORY[0x277D75358] colorEffectSaturate:1.5];
  v9[2] = v6;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:3];
  v8 = selectedEffectsForARDarkStyle_selectedEffectsForARDarkStyle;
  selectedEffectsForARDarkStyle_selectedEffectsForARDarkStyle = v7;
}

+ (id)normalEffectsForDarkModeStyle
{
  if (normalEffectsForDarkModeStyle_onceToken != -1)
  {
    +[ASVBlurredBackgroundView normalEffectsForDarkModeStyle];
  }

  v3 = normalEffectsForDarkModeStyle_normalEffectsForDarkModeStyle;

  return v3;
}

void __57__ASVBlurredBackgroundView_normalEffectsForDarkModeStyle__block_invoke()
{
  v12[4] = *MEMORY[0x277D85DE8];
  v0 = MEMORY[0x277D75D58];
  v1 = [MEMORY[0x277D75348] blackColor];
  v2 = [v0 effectCompositingColor:v1 withMode:0 alpha:0.55];
  v12[0] = v2;
  v3 = MEMORY[0x277D75D58];
  v4 = [MEMORY[0x277D75348] whiteColor];
  v5 = [v3 effectCompositingColor:v4 withMode:0 alpha:0.14];
  v12[1] = v5;
  v6 = MEMORY[0x277D75210];
  v7 = [MEMORY[0x277D759A0] mainScreen];
  UIRoundToScreenScale();
  v8 = [v6 effectWithBlurRadius:?];
  v12[2] = v8;
  v9 = [MEMORY[0x277D75358] colorEffectSaturate:1.8];
  v12[3] = v9;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:4];
  v11 = normalEffectsForDarkModeStyle_normalEffectsForDarkModeStyle;
  normalEffectsForDarkModeStyle_normalEffectsForDarkModeStyle = v10;
}

+ (id)selectedEffectsForDarkModeStyle
{
  if (selectedEffectsForDarkModeStyle_onceToken != -1)
  {
    +[ASVBlurredBackgroundView selectedEffectsForDarkModeStyle];
  }

  v3 = selectedEffectsForDarkModeStyle_selectedEffectsForDarkModeStyle;

  return v3;
}

void __59__ASVBlurredBackgroundView_selectedEffectsForDarkModeStyle__block_invoke()
{
  v8[2] = *MEMORY[0x277D85DE8];
  v0 = MEMORY[0x277D75D58];
  v1 = [MEMORY[0x277D75348] blackColor];
  v2 = [v0 effectCompositingColor:v1 withMode:23 alpha:0.6];
  v8[0] = v2;
  v3 = MEMORY[0x277D75210];
  v4 = [MEMORY[0x277D759A0] mainScreen];
  UIRoundToScreenScale();
  v5 = [v3 effectWithBlurRadius:?];
  v8[1] = v5;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:2];
  v7 = selectedEffectsForDarkModeStyle_selectedEffectsForDarkModeStyle;
  selectedEffectsForDarkModeStyle_selectedEffectsForDarkModeStyle = v6;
}

- (ASVBlurredBackgroundView)initWithFrame:(CGRect)frame backgroundStyle:(int64_t)style controlStyle:(int64_t)controlStyle
{
  v10.receiver = self;
  v10.super_class = ASVBlurredBackgroundView;
  v7 = [(ASVBlurredBackgroundView *)&v10 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v8 = v7;
  if (v7)
  {
    v7->_enabled = 1;
    v7->_selected = 0;
    v7->_highlighted = 0;
    v7->_backgroundStyle = style;
    v7->_controlStyle = controlStyle;
    [(ASVBlurredBackgroundView *)v7 updateBackgroundEffects];
  }

  return v8;
}

- (void)setControlStyle:(int64_t)style
{
  if (self->_controlStyle != style)
  {
    self->_controlStyle = style;
    [(ASVBlurredBackgroundView *)self updateBackgroundEffects];
  }
}

- (void)setHighlighted:(BOOL)highlighted
{
  if (self->_highlighted != highlighted)
  {
    self->_highlighted = highlighted;
    [(ASVBlurredBackgroundView *)self updateBackgroundEffects];
  }
}

- (void)setSelected:(BOOL)selected
{
  if (self->_selected != selected)
  {
    self->_selected = selected;
    [(ASVBlurredBackgroundView *)self updateBackgroundEffects];
  }
}

- (void)setEnabled:(BOOL)enabled
{
  if (self->_enabled != enabled)
  {
    self->_enabled = enabled;
    [(ASVBlurredBackgroundView *)self updateBackgroundEffects];
  }
}

- (void)updateBackgroundEffects
{
  if ([(ASVBlurredBackgroundView *)self controlStyle]== 2)
  {
    if ([(ASVBlurredBackgroundView *)self isHighlighted]|| [(ASVBlurredBackgroundView *)self isSelected])
    {
      selectedEffectsForARDarkStyle = [objc_opt_class() selectedEffectsForARDarkStyle];
    }

    else
    {
      selectedEffectsForARDarkStyle = [objc_opt_class() normalEffectsForARDarkStyle];
    }
  }

  else if ([(ASVBlurredBackgroundView *)self controlStyle]== 3)
  {
    if ([(ASVBlurredBackgroundView *)self isHighlighted]|| [(ASVBlurredBackgroundView *)self isSelected])
    {
      selectedEffectsForARDarkStyle = [objc_opt_class() selectedEffectsForDarkModeStyle];
    }

    else
    {
      selectedEffectsForARDarkStyle = [objc_opt_class() normalEffectsForDarkModeStyle];
    }
  }

  else
  {
    if ([(ASVBlurredBackgroundView *)self isSelected]|| [(ASVBlurredBackgroundView *)self backgroundStyle]== 1)
    {
      isEnabled = [(ASVBlurredBackgroundView *)self isEnabled];
      v5 = objc_opt_class();
      if (isEnabled)
      {
        [v5 selectedEffects];
      }

      else
      {
        [v5 disabledSelectedEffects];
      }
    }

    else if ([(ASVBlurredBackgroundView *)self isEnabled])
    {
      isHighlighted = [(ASVBlurredBackgroundView *)self isHighlighted];
      controlStyle = [(ASVBlurredBackgroundView *)self controlStyle];
      v8 = objc_opt_class();
      if (isHighlighted)
      {
        if (controlStyle)
        {
          [v8 highlightedEffectsForARStyle];
        }

        else
        {
          [v8 highlightedEffectsForStudioStyle];
        }
      }

      else if (controlStyle)
      {
        [v8 normalEffectsForARStyle];
      }

      else
      {
        [v8 normalEffectsForStudioStyle];
      }
    }

    else
    {
      controlStyle2 = [(ASVBlurredBackgroundView *)self controlStyle];
      v10 = objc_opt_class();
      if (controlStyle2)
      {
        [v10 disabledEffectsForARStyle];
      }

      else
      {
        [v10 disabledEffectsForStudioStyle];
      }
    }
    selectedEffectsForARDarkStyle = ;
  }

  v11 = selectedEffectsForARDarkStyle;
  [(ASVBlurredBackgroundView *)self setBackgroundEffects:selectedEffectsForARDarkStyle];
}

@end