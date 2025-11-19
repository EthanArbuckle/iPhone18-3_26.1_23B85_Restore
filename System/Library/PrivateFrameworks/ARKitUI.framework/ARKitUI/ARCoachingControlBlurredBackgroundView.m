@interface ARCoachingControlBlurredBackgroundView
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
- (ARCoachingControlBlurredBackgroundView)initWithFrame:(CGRect)a3 backgroundStyle:(int64_t)a4 controlStyle:(int64_t)a5;
- (void)setControlStyle:(int64_t)a3;
- (void)setEnabled:(BOOL)a3;
- (void)setHighlighted:(BOOL)a3;
- (void)setSelected:(BOOL)a3;
- (void)updateBackgroundEffects;
@end

@implementation ARCoachingControlBlurredBackgroundView

+ (id)disabledEffectsForARStyle
{
  if (disabledEffectsForARStyle_onceToken != -1)
  {
    +[ARCoachingControlBlurredBackgroundView disabledEffectsForARStyle];
  }

  v3 = disabledEffectsForARStyle_disabledEffectsForARStyle;

  return v3;
}

void __67__ARCoachingControlBlurredBackgroundView_disabledEffectsForARStyle__block_invoke()
{
  v13[4] = *MEMORY[0x277D85DE8];
  v0 = MEMORY[0x277D75D58];
  v1 = [MEMORY[0x277D75348] whiteColor];
  v2 = [v0 effectCompositingColor:v1 withMode:24 alpha:0.375];
  v13[0] = v2;
  v3 = MEMORY[0x277D75D58];
  v4 = [MEMORY[0x277D75348] blackColor];
  v5 = [v3 effectCompositingColor:v4 withMode:1010 alpha:0.26];
  v13[1] = v5;
  v6 = MEMORY[0x277D75210];
  v7 = [MEMORY[0x277D759A0] mainScreen];
  UIRoundToScreenScale();
  v8 = [v6 effectWithBlurRadius:?];
  v13[2] = v8;
  v9 = [MEMORY[0x277D75358] colorEffectSaturate:1.5];
  v13[3] = v9;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:4];
  v11 = disabledEffectsForARStyle_disabledEffectsForARStyle;
  disabledEffectsForARStyle_disabledEffectsForARStyle = v10;

  v12 = *MEMORY[0x277D85DE8];
}

+ (id)disabledEffectsForStudioStyle
{
  if (disabledEffectsForStudioStyle_onceToken != -1)
  {
    +[ARCoachingControlBlurredBackgroundView disabledEffectsForStudioStyle];
  }

  v3 = disabledEffectsForStudioStyle_disabledEffectsForStudioStyle;

  return v3;
}

void __71__ARCoachingControlBlurredBackgroundView_disabledEffectsForStudioStyle__block_invoke()
{
  v13[4] = *MEMORY[0x277D85DE8];
  v0 = MEMORY[0x277D75D58];
  v1 = [MEMORY[0x277D75348] whiteColor];
  v2 = [v0 effectCompositingColor:v1 withMode:24 alpha:0.425];
  v13[0] = v2;
  v3 = MEMORY[0x277D75D58];
  v4 = [MEMORY[0x277D75348] blackColor];
  v5 = [v3 effectCompositingColor:v4 withMode:1010 alpha:0.27];
  v13[1] = v5;
  v6 = MEMORY[0x277D75210];
  v7 = [MEMORY[0x277D759A0] mainScreen];
  UIRoundToScreenScale();
  v8 = [v6 effectWithBlurRadius:?];
  v13[2] = v8;
  v9 = [MEMORY[0x277D75358] colorEffectSaturate:1.5];
  v13[3] = v9;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:4];
  v11 = disabledEffectsForStudioStyle_disabledEffectsForStudioStyle;
  disabledEffectsForStudioStyle_disabledEffectsForStudioStyle = v10;

  v12 = *MEMORY[0x277D85DE8];
}

+ (id)normalEffectsForARStyle
{
  if (normalEffectsForARStyle_onceToken != -1)
  {
    +[ARCoachingControlBlurredBackgroundView normalEffectsForARStyle];
  }

  v3 = normalEffectsForARStyle_normalEffectsForARStyle;

  return v3;
}

void __65__ARCoachingControlBlurredBackgroundView_normalEffectsForARStyle__block_invoke()
{
  v13[4] = *MEMORY[0x277D85DE8];
  v0 = MEMORY[0x277D75D58];
  v1 = [MEMORY[0x277D75348] whiteColor];
  v2 = [v0 effectCompositingColor:v1 withMode:24 alpha:0.75];
  v13[0] = v2;
  v3 = MEMORY[0x277D75D58];
  v4 = [MEMORY[0x277D75348] blackColor];
  v5 = [v3 effectCompositingColor:v4 withMode:1010 alpha:0.26];
  v13[1] = v5;
  v6 = MEMORY[0x277D75210];
  v7 = [MEMORY[0x277D759A0] mainScreen];
  UIRoundToScreenScale();
  v8 = [v6 effectWithBlurRadius:?];
  v13[2] = v8;
  v9 = [MEMORY[0x277D75358] colorEffectSaturate:1.5];
  v13[3] = v9;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:4];
  v11 = normalEffectsForARStyle_normalEffectsForARStyle;
  normalEffectsForARStyle_normalEffectsForARStyle = v10;

  v12 = *MEMORY[0x277D85DE8];
}

+ (id)normalEffectsForStudioStyle
{
  if (normalEffectsForStudioStyle_onceToken != -1)
  {
    +[ARCoachingControlBlurredBackgroundView normalEffectsForStudioStyle];
  }

  v3 = normalEffectsForStudioStyle_normalEffectsForStudioStyle;

  return v3;
}

void __69__ARCoachingControlBlurredBackgroundView_normalEffectsForStudioStyle__block_invoke()
{
  v13[4] = *MEMORY[0x277D85DE8];
  v0 = MEMORY[0x277D75D58];
  v1 = [MEMORY[0x277D75348] whiteColor];
  v2 = [v0 effectCompositingColor:v1 withMode:24 alpha:0.85];
  v13[0] = v2;
  v3 = MEMORY[0x277D75D58];
  v4 = [MEMORY[0x277D75348] blackColor];
  v5 = [v3 effectCompositingColor:v4 withMode:1010 alpha:0.27];
  v13[1] = v5;
  v6 = MEMORY[0x277D75210];
  v7 = [MEMORY[0x277D759A0] mainScreen];
  UIRoundToScreenScale();
  v8 = [v6 effectWithBlurRadius:?];
  v13[2] = v8;
  v9 = [MEMORY[0x277D75358] colorEffectSaturate:1.5];
  v13[3] = v9;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:4];
  v11 = normalEffectsForStudioStyle_normalEffectsForStudioStyle;
  normalEffectsForStudioStyle_normalEffectsForStudioStyle = v10;

  v12 = *MEMORY[0x277D85DE8];
}

+ (id)highlightedEffectsForARStyle
{
  if (highlightedEffectsForARStyle_onceToken != -1)
  {
    +[ARCoachingControlBlurredBackgroundView highlightedEffectsForARStyle];
  }

  v3 = highlightedEffectsForARStyle_highlightedEffectsForARStyle;

  return v3;
}

void __70__ARCoachingControlBlurredBackgroundView_highlightedEffectsForARStyle__block_invoke()
{
  v13[4] = *MEMORY[0x277D85DE8];
  v0 = MEMORY[0x277D75D58];
  v1 = [MEMORY[0x277D75348] whiteColor];
  v2 = [v0 effectCompositingColor:v1 withMode:24 alpha:0.8];
  v13[0] = v2;
  v3 = MEMORY[0x277D75D58];
  v4 = [MEMORY[0x277D75348] blackColor];
  v5 = [v3 effectCompositingColor:v4 withMode:1010 alpha:0.15];
  v13[1] = v5;
  v6 = MEMORY[0x277D75210];
  v7 = [MEMORY[0x277D759A0] mainScreen];
  UIRoundToScreenScale();
  v8 = [v6 effectWithBlurRadius:?];
  v13[2] = v8;
  v9 = [MEMORY[0x277D75358] colorEffectSaturate:1.5];
  v13[3] = v9;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:4];
  v11 = highlightedEffectsForARStyle_highlightedEffectsForARStyle;
  highlightedEffectsForARStyle_highlightedEffectsForARStyle = v10;

  v12 = *MEMORY[0x277D85DE8];
}

+ (id)highlightedEffectsForStudioStyle
{
  if (highlightedEffectsForStudioStyle_onceToken != -1)
  {
    +[ARCoachingControlBlurredBackgroundView highlightedEffectsForStudioStyle];
  }

  v3 = highlightedEffectsForStudioStyle_highlightedEffectsForStudioStyle;

  return v3;
}

void __74__ARCoachingControlBlurredBackgroundView_highlightedEffectsForStudioStyle__block_invoke()
{
  v13[4] = *MEMORY[0x277D85DE8];
  v0 = MEMORY[0x277D75D58];
  v1 = [MEMORY[0x277D75348] whiteColor];
  v2 = [v0 effectCompositingColor:v1 withMode:24 alpha:0.85];
  v13[0] = v2;
  v3 = MEMORY[0x277D75D58];
  v4 = [MEMORY[0x277D75348] blackColor];
  v5 = [v3 effectCompositingColor:v4 withMode:1010 alpha:0.23];
  v13[1] = v5;
  v6 = MEMORY[0x277D75210];
  v7 = [MEMORY[0x277D759A0] mainScreen];
  UIRoundToScreenScale();
  v8 = [v6 effectWithBlurRadius:?];
  v13[2] = v8;
  v9 = [MEMORY[0x277D75358] colorEffectSaturate:1.5];
  v13[3] = v9;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:4];
  v11 = highlightedEffectsForStudioStyle_highlightedEffectsForStudioStyle;
  highlightedEffectsForStudioStyle_highlightedEffectsForStudioStyle = v10;

  v12 = *MEMORY[0x277D85DE8];
}

+ (id)disabledSelectedEffects
{
  if (disabledSelectedEffects_onceToken != -1)
  {
    +[ARCoachingControlBlurredBackgroundView disabledSelectedEffects];
  }

  v3 = disabledSelectedEffects_disabledSelectedEffects;

  return v3;
}

void __65__ARCoachingControlBlurredBackgroundView_disabledSelectedEffects__block_invoke()
{
  v6[1] = *MEMORY[0x277D85DE8];
  v0 = MEMORY[0x277D75D58];
  v1 = [MEMORY[0x277D75348] whiteColor];
  v2 = [v0 effectCompositingColor:v1 withMode:24 alpha:0.5];
  v6[0] = v2;
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v6 count:1];
  v4 = disabledSelectedEffects_disabledSelectedEffects;
  disabledSelectedEffects_disabledSelectedEffects = v3;

  v5 = *MEMORY[0x277D85DE8];
}

+ (id)selectedEffects
{
  if (selectedEffects_onceToken != -1)
  {
    +[ARCoachingControlBlurredBackgroundView selectedEffects];
  }

  v3 = selectedEffects_selectedEffects;

  return v3;
}

void __57__ARCoachingControlBlurredBackgroundView_selectedEffects__block_invoke()
{
  v6[1] = *MEMORY[0x277D85DE8];
  v0 = MEMORY[0x277D75D58];
  v1 = [MEMORY[0x277D75348] whiteColor];
  v2 = [v0 effectCompositingColor:v1 withMode:24 alpha:1.0];
  v6[0] = v2;
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v6 count:1];
  v4 = selectedEffects_selectedEffects;
  selectedEffects_selectedEffects = v3;

  v5 = *MEMORY[0x277D85DE8];
}

+ (id)normalEffectsForARDarkStyle
{
  if (normalEffectsForARDarkStyle_onceToken != -1)
  {
    +[ARCoachingControlBlurredBackgroundView normalEffectsForARDarkStyle];
  }

  v3 = normalEffectsForARDarkStyle_normalEffectsForARDarkStyle;

  return v3;
}

void __69__ARCoachingControlBlurredBackgroundView_normalEffectsForARDarkStyle__block_invoke()
{
  v10[3] = *MEMORY[0x277D85DE8];
  v0 = MEMORY[0x277D75D58];
  v1 = [MEMORY[0x277D75348] whiteColor];
  v2 = [v0 effectCompositingColor:v1 withMode:24 alpha:0.15];
  v3 = MEMORY[0x277D75210];
  v4 = [MEMORY[0x277D759A0] mainScreen];
  UIRoundToScreenScale();
  v5 = [v3 effectWithBlurRadius:?];
  v10[1] = v5;
  v6 = [MEMORY[0x277D75358] colorEffectSaturate:1.5];
  v10[2] = v6;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:3];
  v8 = normalEffectsForARDarkStyle_normalEffectsForARDarkStyle;
  normalEffectsForARDarkStyle_normalEffectsForARDarkStyle = v7;

  v9 = *MEMORY[0x277D85DE8];
}

+ (id)selectedEffectsForARDarkStyle
{
  if (selectedEffectsForARDarkStyle_onceToken != -1)
  {
    +[ARCoachingControlBlurredBackgroundView selectedEffectsForARDarkStyle];
  }

  v3 = selectedEffectsForARDarkStyle_selectedEffectsForARDarkStyle;

  return v3;
}

void __71__ARCoachingControlBlurredBackgroundView_selectedEffectsForARDarkStyle__block_invoke()
{
  v10[3] = *MEMORY[0x277D85DE8];
  v0 = MEMORY[0x277D75D58];
  v1 = [MEMORY[0x277D75348] whiteColor];
  v2 = [v0 effectCompositingColor:v1 withMode:24 alpha:0.3];
  v3 = MEMORY[0x277D75210];
  v4 = [MEMORY[0x277D759A0] mainScreen];
  UIRoundToScreenScale();
  v5 = [v3 effectWithBlurRadius:?];
  v10[1] = v5;
  v6 = [MEMORY[0x277D75358] colorEffectSaturate:1.5];
  v10[2] = v6;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:3];
  v8 = selectedEffectsForARDarkStyle_selectedEffectsForARDarkStyle;
  selectedEffectsForARDarkStyle_selectedEffectsForARDarkStyle = v7;

  v9 = *MEMORY[0x277D85DE8];
}

+ (id)normalEffectsForDarkModeStyle
{
  if (normalEffectsForDarkModeStyle_onceToken != -1)
  {
    +[ARCoachingControlBlurredBackgroundView normalEffectsForDarkModeStyle];
  }

  v3 = normalEffectsForDarkModeStyle_normalEffectsForDarkModeStyle;

  return v3;
}

void __71__ARCoachingControlBlurredBackgroundView_normalEffectsForDarkModeStyle__block_invoke()
{
  v13[4] = *MEMORY[0x277D85DE8];
  v0 = MEMORY[0x277D75D58];
  v1 = [MEMORY[0x277D75348] blackColor];
  v2 = [v0 effectCompositingColor:v1 withMode:0 alpha:0.55];
  v13[0] = v2;
  v3 = MEMORY[0x277D75D58];
  v4 = [MEMORY[0x277D75348] whiteColor];
  v5 = [v3 effectCompositingColor:v4 withMode:0 alpha:0.14];
  v13[1] = v5;
  v6 = MEMORY[0x277D75210];
  v7 = [MEMORY[0x277D759A0] mainScreen];
  UIRoundToScreenScale();
  v8 = [v6 effectWithBlurRadius:?];
  v13[2] = v8;
  v9 = [MEMORY[0x277D75358] colorEffectSaturate:1.8];
  v13[3] = v9;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:4];
  v11 = normalEffectsForDarkModeStyle_normalEffectsForDarkModeStyle;
  normalEffectsForDarkModeStyle_normalEffectsForDarkModeStyle = v10;

  v12 = *MEMORY[0x277D85DE8];
}

+ (id)selectedEffectsForDarkModeStyle
{
  if (selectedEffectsForDarkModeStyle_onceToken != -1)
  {
    +[ARCoachingControlBlurredBackgroundView selectedEffectsForDarkModeStyle];
  }

  v3 = selectedEffectsForDarkModeStyle_selectedEffectsForDarkModeStyle;

  return v3;
}

void __73__ARCoachingControlBlurredBackgroundView_selectedEffectsForDarkModeStyle__block_invoke()
{
  v9[2] = *MEMORY[0x277D85DE8];
  v0 = MEMORY[0x277D75D58];
  v1 = [MEMORY[0x277D75348] blackColor];
  v2 = [v0 effectCompositingColor:v1 withMode:23 alpha:0.6];
  v9[0] = v2;
  v3 = MEMORY[0x277D75210];
  v4 = [MEMORY[0x277D759A0] mainScreen];
  UIRoundToScreenScale();
  v5 = [v3 effectWithBlurRadius:?];
  v9[1] = v5;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:2];
  v7 = selectedEffectsForDarkModeStyle_selectedEffectsForDarkModeStyle;
  selectedEffectsForDarkModeStyle_selectedEffectsForDarkModeStyle = v6;

  v8 = *MEMORY[0x277D85DE8];
}

- (ARCoachingControlBlurredBackgroundView)initWithFrame:(CGRect)a3 backgroundStyle:(int64_t)a4 controlStyle:(int64_t)a5
{
  v10.receiver = self;
  v10.super_class = ARCoachingControlBlurredBackgroundView;
  v7 = [(ARCoachingControlBlurredBackgroundView *)&v10 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v8 = v7;
  if (v7)
  {
    v7->_enabled = 1;
    v7->_selected = 0;
    v7->_highlighted = 0;
    v7->_backgroundStyle = a4;
    v7->_controlStyle = a5;
    [(ARCoachingControlBlurredBackgroundView *)v7 updateBackgroundEffects];
  }

  return v8;
}

- (void)setControlStyle:(int64_t)a3
{
  if (self->_controlStyle != a3)
  {
    self->_controlStyle = a3;
    [(ARCoachingControlBlurredBackgroundView *)self updateBackgroundEffects];
  }
}

- (void)setHighlighted:(BOOL)a3
{
  if (self->_highlighted != a3)
  {
    self->_highlighted = a3;
    [(ARCoachingControlBlurredBackgroundView *)self updateBackgroundEffects];
  }
}

- (void)setSelected:(BOOL)a3
{
  if (self->_selected != a3)
  {
    self->_selected = a3;
    [(ARCoachingControlBlurredBackgroundView *)self updateBackgroundEffects];
  }
}

- (void)setEnabled:(BOOL)a3
{
  if (self->_enabled != a3)
  {
    self->_enabled = a3;
    [(ARCoachingControlBlurredBackgroundView *)self updateBackgroundEffects];
  }
}

- (void)updateBackgroundEffects
{
  if ([(ARCoachingControlBlurredBackgroundView *)self controlStyle]== 2)
  {
    if ([(ARCoachingControlBlurredBackgroundView *)self isHighlighted]|| [(ARCoachingControlBlurredBackgroundView *)self isSelected])
    {
      v3 = [objc_opt_class() selectedEffectsForARDarkStyle];
    }

    else
    {
      v3 = [objc_opt_class() normalEffectsForARDarkStyle];
    }
  }

  else if ([(ARCoachingControlBlurredBackgroundView *)self controlStyle]== 3)
  {
    if ([(ARCoachingControlBlurredBackgroundView *)self isHighlighted]|| [(ARCoachingControlBlurredBackgroundView *)self isSelected])
    {
      v3 = [objc_opt_class() selectedEffectsForDarkModeStyle];
    }

    else
    {
      v3 = [objc_opt_class() normalEffectsForDarkModeStyle];
    }
  }

  else
  {
    if ([(ARCoachingControlBlurredBackgroundView *)self isSelected]|| [(ARCoachingControlBlurredBackgroundView *)self backgroundStyle]== 1)
    {
      v4 = [(ARCoachingControlBlurredBackgroundView *)self isEnabled];
      v5 = objc_opt_class();
      if (v4)
      {
        [v5 selectedEffects];
      }

      else
      {
        [v5 disabledSelectedEffects];
      }
    }

    else if ([(ARCoachingControlBlurredBackgroundView *)self isEnabled])
    {
      v6 = [(ARCoachingControlBlurredBackgroundView *)self isHighlighted];
      v7 = [(ARCoachingControlBlurredBackgroundView *)self controlStyle];
      v8 = objc_opt_class();
      if (v6)
      {
        if (v7)
        {
          [v8 highlightedEffectsForARStyle];
        }

        else
        {
          [v8 highlightedEffectsForStudioStyle];
        }
      }

      else if (v7)
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
      v9 = [(ARCoachingControlBlurredBackgroundView *)self controlStyle];
      v10 = objc_opt_class();
      if (v9)
      {
        [v10 disabledEffectsForARStyle];
      }

      else
      {
        [v10 disabledEffectsForStudioStyle];
      }
    }
    v3 = ;
  }

  v11 = v3;
  [(ARCoachingControlBlurredBackgroundView *)self setBackgroundEffects:v3];
}

@end