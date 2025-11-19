@interface LPButtonStyle
+ (id)systemPillButtonStyleForPlatform:(int64_t)a3 sizeClass:(unint64_t)a4;
- (LPButtonStyle)initWithPlatform:(int64_t)a3;
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation LPButtonStyle

- (LPButtonStyle)initWithPlatform:(int64_t)a3
{
  v13.receiver = self;
  v13.super_class = LPButtonStyle;
  v4 = [(LPButtonStyle *)&v13 init];
  if (v4)
  {
    v5 = objc_alloc_init(LPPadding);
    padding = v4->_padding;
    v4->_padding = v5;

    v7 = objc_alloc_init(LPPadding);
    margin = v4->_margin;
    v4->_margin = v7;

    v4->_enableUserInteractionForDecorativeButton = 1;
    v9 = [[LPCircularProgressIndicatorStyle alloc] initWithPlatform:a3];
    progressIndicatorStyle = v4->_progressIndicatorStyle;
    v4->_progressIndicatorStyle = v9;

    v11 = v4;
  }

  return v4;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [LPButtonStyle allocWithZone:a3];
  if (v4)
  {
    v5 = [(UIColor *)self->_foregroundColor copy];
    foregroundColor = v4->_foregroundColor;
    v4->_foregroundColor = v5;

    v7 = [(UIColor *)self->_backgroundColor copy];
    backgroundColor = v4->_backgroundColor;
    v4->_backgroundColor = v7;

    v9 = [(UIColor *)self->_menuBackgroundColor copy];
    menuBackgroundColor = v4->_menuBackgroundColor;
    v4->_menuBackgroundColor = v9;

    v11 = [(UIFont *)self->_font copy];
    font = v4->_font;
    v4->_font = v11;

    v13 = [(UIFont *)self->_menuFont copy];
    menuFont = v4->_menuFont;
    v4->_menuFont = v13;

    v15 = [(UIImageSymbolConfiguration *)self->_symbolConfiguration copy];
    symbolConfiguration = v4->_symbolConfiguration;
    v4->_symbolConfiguration = v15;

    v17 = [(LPPadding *)self->_padding copy];
    padding = v4->_padding;
    v4->_padding = v17;

    v19 = [(LPPadding *)self->_margin copy];
    margin = v4->_margin;
    v4->_margin = v19;

    objc_storeStrong(&v4->_imagePadding, self->_imagePadding);
    objc_storeStrong(&v4->_menuMinimumWidth, self->_menuMinimumWidth);
    objc_storeStrong(&v4->_minimumWidth, self->_minimumWidth);
    objc_storeStrong(&v4->_minimumHeight, self->_minimumHeight);
    objc_storeStrong(&v4->_height, self->_height);
    v21 = [(LPSize *)self->_fixedCollapsedSize copy];
    fixedCollapsedSize = v4->_fixedCollapsedSize;
    v4->_fixedCollapsedSize = v21;

    objc_storeStrong(&v4->_additionalVerticalPadding, self->_additionalVerticalPadding);
    objc_storeStrong(&v4->_indicatorSpacing, self->_indicatorSpacing);
    v23 = [(LPCircularProgressIndicatorStyle *)self->_progressIndicatorStyle copy];
    progressIndicatorStyle = v4->_progressIndicatorStyle;
    v4->_progressIndicatorStyle = v23;

    v4->_ignoresInvertColors = self->_ignoresInvertColors;
    v4->_enableUserInteractionForDecorativeButton = self->_enableUserInteractionForDecorativeButton;
    v4->_showsChevronForSingleAction = self->_showsChevronForSingleAction;
    v4->_useSystemButtonAppearance = self->_useSystemButtonAppearance;
    v4->_useGlassButtonAppearance = self->_useGlassButtonAppearance;
    v4->_useSegmentedControl = self->_useSegmentedControl;
    v4->_prefersBehavioralStylePad = self->_prefersBehavioralStylePad;
    v4->_behavior = self->_behavior;
    v25 = v4;
  }

  return v4;
}

+ (id)systemPillButtonStyleForPlatform:(int64_t)a3 sizeClass:(unint64_t)a4
{
  v6 = [[LPButtonStyle alloc] initWithPlatform:a3];
  v7 = [MEMORY[0x1E69DC888] whiteColor];
  [(LPButtonStyle *)v6 setForegroundColor:v7];

  v8 = [MEMORY[0x1E69DC888] systemBlueColor];
  [(LPButtonStyle *)v6 setBackgroundColor:v8];

  v9 = [MEMORY[0x1E69DC888] secondarySystemFillColor];
  [(LPButtonStyle *)v6 setMenuBackgroundColor:v9];

  if (+[LPTestingOverrides forceMonospaceFonts])
  {
    v10 = [MEMORY[0x1E69DB878] monospacedSystemFontOfSize:11.0 weight:*MEMORY[0x1E69DB970]];
  }

  else
  {
    if (a3 == 5)
    {
      v11 = 0x8000;
    }

    else
    {
      v11 = 32770;
    }

    v12 = MEMORY[0x1E69DDD40];
    if (a3 != 5)
    {
      v12 = MEMORY[0x1E69DDD80];
    }

    v10 = fontWithTraits(*v12, v11, a4);
  }

  v13 = v10;
  [(LPButtonStyle *)v6 setFont:v10];

  if (+[LPTestingOverrides forceMonospaceFonts])
  {
    [MEMORY[0x1E69DB878] monospacedSystemFontOfSize:11.0 weight:*MEMORY[0x1E69DB970]];
  }

  else
  {
    fontWithTraits(*MEMORY[0x1E69DDD80], 0x8000, a4);
  }
  v14 = ;
  [(LPButtonStyle *)v6 setMenuFont:v14];

  if (a3 < 5 || a3 == 6)
  {
    v15 = [MEMORY[0x1E69DCAD8] _lp_configurationWithTextStyle:*MEMORY[0x1E69DDCF8] weight:7 scale:1];
  }

  else
  {
    if (a3 != 5)
    {
      goto LABEL_15;
    }

    v15 = [MEMORY[0x1E69DCAD8] configurationWithTextStyle:*MEMORY[0x1E69DDDC8] scale:2];
  }

  v14 = v15;
LABEL_15:
  [(LPButtonStyle *)v6 setSymbolConfiguration:v14];

  if (a3 <= 6)
  {
    v14 = [[LPPointUnit alloc] initWithValue:dbl_1AE9C67B0[a3]];
  }

  v16 = [(LPButtonStyle *)v6 padding];
  [v16 setLeading:v14];

  v17 = [(LPButtonStyle *)v6 padding];
  v18 = [v17 leading];
  v19 = [(LPButtonStyle *)v6 padding];
  [v19 setTrailing:v18];

  if (a3 <= 6)
  {
    if (((1 << a3) & 0x65) != 0)
    {
      v20 = +[LPPointUnit zero];
    }

    else
    {
      v20 = [[LPPointUnit alloc] initWithValue:3.0];
    }

    v17 = v20;
  }

  v21 = [(LPButtonStyle *)v6 padding];
  [v21 setTop:v17];

  v22 = [(LPButtonStyle *)v6 padding];
  v23 = [v22 top];
  v24 = [(LPButtonStyle *)v6 padding];
  [v24 setBottom:v23];

  v25 = outerHorizontalIconMargin(a3);
  v26 = [(LPButtonStyle *)v6 margin];
  [v26 setLeading:v25];

  if (a3 < 5)
  {
    goto LABEL_26;
  }

  if (a3 == 5)
  {
    v27 = [[LPPointUnit alloc] initWithValue:20.0];
    goto LABEL_27;
  }

  if (a3 == 6)
  {
LABEL_26:
    v27 = outerHorizontalIconMargin(a3);
LABEL_27:
    v25 = v27;
  }

  v28 = [(LPButtonStyle *)v6 margin];
  [v28 setTrailing:v25];

  v29 = [(LPButtonStyle *)v6 margin];
  v30 = [v29 trailing];
  v31 = [(LPButtonStyle *)v6 margin];
  [v31 setTop:v30];

  v32 = [(LPButtonStyle *)v6 margin];
  v33 = [v32 trailing];
  v34 = [(LPButtonStyle *)v6 margin];
  [v34 setBottom:v33];

  v35 = [[LPPointUnit alloc] initWithValue:24.0];
  [(LPButtonStyle *)v6 setIndicatorSpacing:v35];

  if (a3 <= 6)
  {
    if (((1 << a3) & 0x65) != 0)
    {
      v36 = [[LPPointUnit alloc] initWithValue:72.0];
    }

    else
    {
      v36 = +[LPPointUnit zero];
    }

    v35 = v36;
  }

  [(LPButtonStyle *)v6 setMinimumWidth:v35];

  if (a3 <= 6)
  {
    if (((1 << a3) & 0x1A) != 0)
    {
      v39 = +[LPPointUnit zero];
    }

    else
    {
      v37 = [LPPointUnit alloc];
      if (((1 << a3) & 0x45) != 0)
      {
        v38 = 36.0;
      }

      else
      {
        v38 = 44.0;
      }

      v39 = [(LPPointUnit *)v37 initWithValue:v38];
    }

    v35 = v39;
  }

  [(LPButtonStyle *)v6 setMinimumHeight:v35];

  if (a3 <= 6)
  {
    if (((1 << a3) & 0x1A) != 0)
    {
      v42 = +[LPPointUnit zero];
    }

    else
    {
      v40 = [LPPointUnit alloc];
      if (((1 << a3) & 0x45) != 0)
      {
        v41 = 36.0;
      }

      else
      {
        v41 = 44.0;
      }

      v42 = [(LPPointUnit *)v40 initWithValue:v41];
    }

    v35 = v42;
  }

  [(LPButtonStyle *)v6 setHeight:v35];

  if (a4 == 12)
  {
    v43 = [[LPSize alloc] initWithSquareSize:44.0];
    [(LPButtonStyle *)v6 setFixedCollapsedSize:v43];
  }

  [(LPButtonStyle *)v6 setIgnoresInvertColors:0];
  if (a3 == 5)
  {
    [(LPButtonStyle *)v6 setUseSystemButtonAppearance:1];
  }

  return v6;
}

@end