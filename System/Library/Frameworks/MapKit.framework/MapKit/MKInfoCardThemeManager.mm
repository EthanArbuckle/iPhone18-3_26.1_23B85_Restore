@interface MKInfoCardThemeManager
+ (id)currentTheme;
+ (id)themeWithThemeType:(unint64_t)type;
+ (unint64_t)themeType;
+ (void)setTheme:(unint64_t)theme;
+ (void)setTintColorProvider:(id)provider;
- (BOOL)_isInSpotlightContext;
- (NSString)javaScriptName;
- (UIColor)tintColor;
- (id)_initWithThemeType:(unint64_t)type;
- (void)_setTheme:(unint64_t)theme;
- (void)_setTintColorProvider:(id)provider;
@end

@implementation MKInfoCardThemeManager

+ (id)currentTheme
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __38__MKInfoCardThemeManager_currentTheme__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (currentTheme_onceToken != -1)
  {
    dispatch_once(&currentTheme_onceToken, block);
  }

  v2 = currentTheme_manager;

  return v2;
}

void __38__MKInfoCardThemeManager_currentTheme__block_invoke(uint64_t a1)
{
  v1 = [objc_alloc(*(a1 + 32)) _initWithThemeType:0];
  v2 = currentTheme_manager;
  currentTheme_manager = v1;
}

- (UIColor)tintColor
{
  tintColorProvider = self->_tintColorProvider;
  if (tintColorProvider)
  {
    v4 = tintColorProvider[2](tintColorProvider, a2);
  }

  else
  {
    if (self->_themeType == 2)
    {
      v5 = 0.109803922;
      v6 = 0.686274529;
      v7 = 0.925490201;
    }

    else
    {
      v6 = 0.478431374;
      v5 = 0.0;
      v7 = 1.0;
    }

    v4 = [MEMORY[0x1E69DC888] colorWithRed:v5 green:v6 blue:v7 alpha:1.0];
  }

  return v4;
}

- (NSString)javaScriptName
{
  themeType = self->_themeType;
  v3 = @"invalid";
  if (themeType == 1)
  {
    v3 = @"light";
  }

  if (themeType == 2)
  {
    return @"dark";
  }

  else
  {
    return &v3->isa;
  }
}

- (void)_setTintColorProvider:(id)provider
{
  v4 = [provider copy];
  tintColorProvider = self->_tintColorProvider;
  self->_tintColorProvider = v4;
}

- (void)_setTheme:(unint64_t)theme
{
  v39[25] = *MEMORY[0x1E69E9840];
  if ([(MKInfoCardThemeManager *)self themeType]!= theme)
  {
    self->_themeType = theme;
    if (theme == 2)
    {
      v36[0] = @"textColor";
      labelColor = [MEMORY[0x1E69DC888] labelColor];
      v37[0] = labelColor;
      v36[1] = @"lightTextColor";
      secondaryLabelColor = [MEMORY[0x1E69DC888] secondaryLabelColor];
      v37[1] = secondaryLabelColor;
      v36[2] = @"tertiaryTextColor";
      tertiaryLabelColor = [MEMORY[0x1E69DC888] tertiaryLabelColor];
      v37[2] = tertiaryLabelColor;
      v36[3] = @"separatorLineColor";
      quaternaryLabelColor = [MEMORY[0x1E69DC888] quaternaryLabelColor];
      v37[3] = quaternaryLabelColor;
      v36[4] = @"selectedRowColor";
      redColor3 = [MEMORY[0x1E69DC888] colorWithWhite:1.0 alpha:0.100000001];
      v37[4] = redColor3;
      v36[5] = @"tintColor";
      redColor = [MEMORY[0x1E69DC888] redColor];
      v37[5] = redColor;
      v36[6] = @"highlightedTintColor";
      tintColor = [(MKInfoCardThemeManager *)self tintColor];
      clearColor2 = [tintColor colorWithAlphaComponent:0.25];
      v37[6] = clearColor2;
      v36[7] = @"rowColor";
      clearColor = [MEMORY[0x1E69DC888] clearColor];
      v37[7] = clearColor;
      v36[8] = @"disabledActionRowTextColor";
      v26 = [MEMORY[0x1E69DC888] colorWithWhite:1.0 alpha:0.200000003];
      v37[8] = v26;
      v36[9] = @"disabledActionRowBackgroundColor";
      v25 = [MEMORY[0x1E69DC888] colorWithWhite:1.0 alpha:0.0500000007];
      v37[9] = v25;
      v36[10] = @"normalActionRowBackgroundColor";
      v24 = [MEMORY[0x1E69DC888] colorWithWhite:1.0 alpha:0.0599999987];
      v37[10] = v24;
      v36[11] = @"normalActionRowBackgroundPressedColor";
      v23 = [MEMORY[0x1E69DC888] colorWithWhite:1.0 alpha:0.180000007];
      v37[11] = v23;
      v36[12] = @"headerPrimaryButtonNormalColor";
      redColor2 = [MEMORY[0x1E69DC888] redColor];
      v37[12] = redColor2;
      v36[13] = @"headerPrimaryButtonHighlightedColor";
      v21 = [MEMORY[0x1E69DC888] colorWithRed:0.286274523 green:0.749019623 blue:0.937254906 alpha:1.0];
      v37[13] = v21;
      v36[14] = @"buttonNormalColor";
      v20 = [MEMORY[0x1E69DC888] colorWithWhite:1.0 alpha:0.899999976];
      v37[14] = v20;
      v36[15] = @"buttonHighlightedColor";
      v19 = [MEMORY[0x1E69DC888] colorWithWhite:1.0 alpha:0.400000006];
      v37[15] = v19;
      v36[16] = @"transitOntimeTextColor";
      systemGreenColor = [MEMORY[0x1E69DC888] systemGreenColor];
      v37[16] = systemGreenColor;
      v36[17] = @"transitDelayedTextColor";
      systemRedColor = [MEMORY[0x1E69DC888] systemRedColor];
      v37[17] = systemRedColor;
      v36[18] = @"transitChevronBackgroundColor";
      v7 = [MEMORY[0x1E69DC888] colorWithRed:0.949019611 green:0.956862748 blue:0.988235295 alpha:0.140000001];
      v37[18] = v7;
      v36[19] = @"normalBackgroundColor";
      v8 = [MEMORY[0x1E69DC888] colorWithWhite:1.0 alpha:0.100000001];
      v37[19] = v8;
      v36[20] = @"ratingBarStartColor";
      v9 = [MEMORY[0x1E69DC888] colorWithRed:0.556862772 green:0.556862772 blue:0.576470613 alpha:1.0];
      v37[20] = v9;
      v36[21] = @"ratingBarEndColor";
      labelColor2 = [MEMORY[0x1E69DC888] labelColor];
      v37[21] = labelColor2;
      v36[22] = @"ratingBarBackgroundColor";
      v11 = [MEMORY[0x1E69DC888] colorWithWhite:1.0 alpha:0.0500000007];
      v37[22] = v11;
      v36[23] = @"transitIncidentBackgroundColor";
      v12 = [MEMORY[0x1E69DC888] colorWithWhite:1.0 alpha:0.100000001];
      v37[23] = v12;
      v36[24] = @"mapsui_cardBackgroundColor";
      v13 = [MEMORY[0x1E69DC888] colorWithWhite:0.0 alpha:1.0];
      v37[24] = v13;
      v14 = MEMORY[0x1E695DF20];
      v15 = v37;
      v16 = v36;
    }

    else
    {
      if (theme != 1)
      {
        return;
      }

      v38[0] = @"textColor";
      labelColor = [MEMORY[0x1E69DC888] labelColor];
      v39[0] = labelColor;
      v38[1] = @"lightTextColor";
      secondaryLabelColor = [MEMORY[0x1E69DC888] secondaryLabelColor];
      v39[1] = secondaryLabelColor;
      v38[2] = @"tertiaryTextColor";
      tertiaryLabelColor = [MEMORY[0x1E69DC888] tertiaryLabelColor];
      v39[2] = tertiaryLabelColor;
      v38[3] = @"separatorLineColor";
      quaternaryLabelColor = [MEMORY[0x1E69DC888] quaternaryLabelColor];
      v39[3] = quaternaryLabelColor;
      v38[4] = @"tintColor";
      redColor3 = [MEMORY[0x1E69DC888] redColor];
      v39[4] = redColor3;
      v38[5] = @"highlightedTintColor";
      redColor = [(MKInfoCardThemeManager *)self tintColor];
      tintColor = [redColor colorWithAlphaComponent:0.25];
      v39[5] = tintColor;
      v38[6] = @"rowColor";
      clearColor2 = [MEMORY[0x1E69DC888] clearColor];
      v39[6] = clearColor2;
      v38[7] = @"selectedRowColor";
      clearColor = [MEMORY[0x1E69DC888] colorWithWhite:0.0 alpha:0.0599999987];
      v39[7] = clearColor;
      v38[8] = @"disabledActionRowTextColor";
      v26 = [MEMORY[0x1E69DC888] colorWithWhite:0.0 alpha:0.200000003];
      v39[8] = v26;
      v38[9] = @"disabledActionRowBackgroundColor";
      v25 = [MEMORY[0x1E69DC888] colorWithWhite:0.0 alpha:0.0399999991];
      v39[9] = v25;
      v38[10] = @"normalActionRowBackgroundColor";
      v24 = [MEMORY[0x1E69DC888] colorWithWhite:0.0 alpha:0.0599999987];
      v39[10] = v24;
      v38[11] = @"normalActionRowBackgroundPressedColor";
      v23 = [MEMORY[0x1E69DC888] colorWithWhite:0.0 alpha:0.100000001];
      v39[11] = v23;
      v38[12] = @"headerPrimaryButtonNormalColor";
      redColor2 = [MEMORY[0x1E69DC888] redColor];
      v39[12] = redColor2;
      v38[13] = @"headerPrimaryButtonHighlightedColor";
      v21 = [MEMORY[0x1E69DC888] colorWithRed:0.0 green:0.419607848 blue:0.87843138 alpha:1.0];
      v39[13] = v21;
      v38[14] = @"buttonNormalColor";
      v20 = [MEMORY[0x1E69DC888] colorWithWhite:1.0 alpha:0.899999976];
      v39[14] = v20;
      v38[15] = @"buttonHighlightedColor";
      v19 = [MEMORY[0x1E69DC888] colorWithWhite:1.0 alpha:0.400000006];
      v39[15] = v19;
      v38[16] = @"transitOntimeTextColor";
      systemGreenColor = [MEMORY[0x1E69DC888] systemGreenColor];
      v39[16] = systemGreenColor;
      v38[17] = @"transitDelayedTextColor";
      systemRedColor = [MEMORY[0x1E69DC888] systemRedColor];
      v39[17] = systemRedColor;
      v38[18] = @"transitChevronBackgroundColor";
      v7 = [MEMORY[0x1E69DC888] colorWithRed:0.0392156877 green:0.0392156877 blue:0.470588237 alpha:0.0500000007];
      v39[18] = v7;
      v38[19] = @"normalBackgroundColor";
      v8 = [MEMORY[0x1E69DC888] colorWithWhite:0.0 alpha:0.100000001];
      v39[19] = v8;
      v38[20] = @"ratingBarStartColor";
      v9 = [MEMORY[0x1E69DC888] colorWithRed:0.556862772 green:0.556862772 blue:0.576470613 alpha:1.0];
      v39[20] = v9;
      v38[21] = @"ratingBarEndColor";
      labelColor2 = [MEMORY[0x1E69DC888] labelColor];
      v39[21] = labelColor2;
      v38[22] = @"ratingBarBackgroundColor";
      v11 = [MEMORY[0x1E69DC888] colorWithWhite:0.0 alpha:0.0500000007];
      v39[22] = v11;
      v38[23] = @"transitIncidentBackgroundColor";
      v12 = [MEMORY[0x1E69DC888] colorWithWhite:1.0 alpha:1.0];
      v39[23] = v12;
      v38[24] = @"mapsui_cardBackgroundColor";
      v13 = [MEMORY[0x1E69DC888] colorWithWhite:1.0 alpha:1.0];
      v39[24] = v13;
      v14 = MEMORY[0x1E695DF20];
      v15 = v39;
      v16 = v38;
    }

    v17 = [v14 dictionaryWithObjects:v15 forKeys:v16 count:25];
    colors = self->_colors;
    self->_colors = v17;
  }
}

- (id)_initWithThemeType:(unint64_t)type
{
  v7.receiver = self;
  v7.super_class = MKInfoCardThemeManager;
  v4 = [(MKInfoCardThemeManager *)&v7 init];
  v5 = v4;
  if (v4)
  {
    if (!type)
    {
      type = [(MKInfoCardThemeManager *)v4 _currentSystemTheme];
    }

    [(MKInfoCardThemeManager *)v5 _setTheme:type];
  }

  return v5;
}

- (BOOL)_isInSpotlightContext
{
  if (_isInSpotlightContext_onceToken != -1)
  {
    dispatch_once(&_isInSpotlightContext_onceToken, &__block_literal_global_43404);
  }

  return _isInSpotlightContext_isInSpotlightContext;
}

void __47__MKInfoCardThemeManager__isInSpotlightContext__block_invoke()
{
  v1 = [MEMORY[0x1E696AAE8] mainBundle];
  v0 = [v1 bundleIdentifier];
  _isInSpotlightContext_isInSpotlightContext = [v0 isEqualToString:@"com.apple.Spotlight"];
}

+ (void)setTintColorProvider:(id)provider
{
  providerCopy = provider;
  currentTheme = [self currentTheme];
  [currentTheme _setTintColorProvider:providerCopy];
}

+ (unint64_t)themeType
{
  currentTheme = [self currentTheme];
  themeType = [currentTheme themeType];

  return themeType;
}

+ (void)setTheme:(unint64_t)theme
{
  currentTheme = [self currentTheme];
  if (currentTheme)
  {
    currentTheme[8] = 1;
    v5 = currentTheme;
    [currentTheme _setTheme:theme];
    currentTheme = v5;
  }
}

+ (id)themeWithThemeType:(unint64_t)type
{
  v3 = [[self alloc] _initWithThemeType:type];

  return v3;
}

@end