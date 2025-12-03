@interface LPButtonStyle
+ (id)systemPillButtonStyleForPlatform:(int64_t)platform sizeClass:(unint64_t)class;
- (LPButtonStyle)initWithPlatform:(int64_t)platform;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation LPButtonStyle

- (LPButtonStyle)initWithPlatform:(int64_t)platform
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
    v9 = [[LPCircularProgressIndicatorStyle alloc] initWithPlatform:platform];
    progressIndicatorStyle = v4->_progressIndicatorStyle;
    v4->_progressIndicatorStyle = v9;

    v11 = v4;
  }

  return v4;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [LPButtonStyle allocWithZone:zone];
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

+ (id)systemPillButtonStyleForPlatform:(int64_t)platform sizeClass:(unint64_t)class
{
  v6 = [[LPButtonStyle alloc] initWithPlatform:platform];
  whiteColor = [MEMORY[0x1E69DC888] whiteColor];
  [(LPButtonStyle *)v6 setForegroundColor:whiteColor];

  systemBlueColor = [MEMORY[0x1E69DC888] systemBlueColor];
  [(LPButtonStyle *)v6 setBackgroundColor:systemBlueColor];

  secondarySystemFillColor = [MEMORY[0x1E69DC888] secondarySystemFillColor];
  [(LPButtonStyle *)v6 setMenuBackgroundColor:secondarySystemFillColor];

  if (+[LPTestingOverrides forceMonospaceFonts])
  {
    v10 = [MEMORY[0x1E69DB878] monospacedSystemFontOfSize:11.0 weight:*MEMORY[0x1E69DB970]];
  }

  else
  {
    if (platform == 5)
    {
      v11 = 0x8000;
    }

    else
    {
      v11 = 32770;
    }

    v12 = MEMORY[0x1E69DDD40];
    if (platform != 5)
    {
      v12 = MEMORY[0x1E69DDD80];
    }

    v10 = fontWithTraits(*v12, v11, class);
  }

  v13 = v10;
  [(LPButtonStyle *)v6 setFont:v10];

  if (+[LPTestingOverrides forceMonospaceFonts])
  {
    [MEMORY[0x1E69DB878] monospacedSystemFontOfSize:11.0 weight:*MEMORY[0x1E69DB970]];
  }

  else
  {
    fontWithTraits(*MEMORY[0x1E69DDD80], 0x8000, class);
  }
  v14 = ;
  [(LPButtonStyle *)v6 setMenuFont:v14];

  if (platform < 5 || platform == 6)
  {
    v15 = [MEMORY[0x1E69DCAD8] _lp_configurationWithTextStyle:*MEMORY[0x1E69DDCF8] weight:7 scale:1];
  }

  else
  {
    if (platform != 5)
    {
      goto LABEL_15;
    }

    v15 = [MEMORY[0x1E69DCAD8] configurationWithTextStyle:*MEMORY[0x1E69DDDC8] scale:2];
  }

  v14 = v15;
LABEL_15:
  [(LPButtonStyle *)v6 setSymbolConfiguration:v14];

  if (platform <= 6)
  {
    v14 = [[LPPointUnit alloc] initWithValue:dbl_1AE9C67B0[platform]];
  }

  padding = [(LPButtonStyle *)v6 padding];
  [padding setLeading:v14];

  padding2 = [(LPButtonStyle *)v6 padding];
  leading = [padding2 leading];
  padding3 = [(LPButtonStyle *)v6 padding];
  [padding3 setTrailing:leading];

  if (platform <= 6)
  {
    if (((1 << platform) & 0x65) != 0)
    {
      v20 = +[LPPointUnit zero];
    }

    else
    {
      v20 = [[LPPointUnit alloc] initWithValue:3.0];
    }

    padding2 = v20;
  }

  padding4 = [(LPButtonStyle *)v6 padding];
  [padding4 setTop:padding2];

  padding5 = [(LPButtonStyle *)v6 padding];
  v23 = [padding5 top];
  padding6 = [(LPButtonStyle *)v6 padding];
  [padding6 setBottom:v23];

  v25 = outerHorizontalIconMargin(platform);
  margin = [(LPButtonStyle *)v6 margin];
  [margin setLeading:v25];

  if (platform < 5)
  {
    goto LABEL_26;
  }

  if (platform == 5)
  {
    v27 = [[LPPointUnit alloc] initWithValue:20.0];
    goto LABEL_27;
  }

  if (platform == 6)
  {
LABEL_26:
    v27 = outerHorizontalIconMargin(platform);
LABEL_27:
    v25 = v27;
  }

  margin2 = [(LPButtonStyle *)v6 margin];
  [margin2 setTrailing:v25];

  margin3 = [(LPButtonStyle *)v6 margin];
  trailing = [margin3 trailing];
  margin4 = [(LPButtonStyle *)v6 margin];
  [margin4 setTop:trailing];

  margin5 = [(LPButtonStyle *)v6 margin];
  trailing2 = [margin5 trailing];
  margin6 = [(LPButtonStyle *)v6 margin];
  [margin6 setBottom:trailing2];

  v35 = [[LPPointUnit alloc] initWithValue:24.0];
  [(LPButtonStyle *)v6 setIndicatorSpacing:v35];

  if (platform <= 6)
  {
    if (((1 << platform) & 0x65) != 0)
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

  if (platform <= 6)
  {
    if (((1 << platform) & 0x1A) != 0)
    {
      v39 = +[LPPointUnit zero];
    }

    else
    {
      v37 = [LPPointUnit alloc];
      if (((1 << platform) & 0x45) != 0)
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

  if (platform <= 6)
  {
    if (((1 << platform) & 0x1A) != 0)
    {
      v42 = +[LPPointUnit zero];
    }

    else
    {
      v40 = [LPPointUnit alloc];
      if (((1 << platform) & 0x45) != 0)
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

  if (class == 12)
  {
    v43 = [[LPSize alloc] initWithSquareSize:44.0];
    [(LPButtonStyle *)v6 setFixedCollapsedSize:v43];
  }

  [(LPButtonStyle *)v6 setIgnoresInvertColors:0];
  if (platform == 5)
  {
    [(LPButtonStyle *)v6 setUseSystemButtonAppearance:1];
  }

  return v6;
}

@end