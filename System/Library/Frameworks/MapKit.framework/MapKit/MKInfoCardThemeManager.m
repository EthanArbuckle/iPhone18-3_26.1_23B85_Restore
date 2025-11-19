@interface MKInfoCardThemeManager
+ (id)currentTheme;
+ (id)themeWithThemeType:(unint64_t)a3;
+ (unint64_t)themeType;
+ (void)setTheme:(unint64_t)a3;
+ (void)setTintColorProvider:(id)a3;
- (BOOL)_isInSpotlightContext;
- (NSString)javaScriptName;
- (UIColor)tintColor;
- (id)_initWithThemeType:(unint64_t)a3;
- (void)_setTheme:(unint64_t)a3;
- (void)_setTintColorProvider:(id)a3;
@end

@implementation MKInfoCardThemeManager

+ (id)currentTheme
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __38__MKInfoCardThemeManager_currentTheme__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
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

- (void)_setTintColorProvider:(id)a3
{
  v4 = [a3 copy];
  tintColorProvider = self->_tintColorProvider;
  self->_tintColorProvider = v4;
}

- (void)_setTheme:(unint64_t)a3
{
  v39[25] = *MEMORY[0x1E69E9840];
  if ([(MKInfoCardThemeManager *)self themeType]!= a3)
  {
    self->_themeType = a3;
    if (a3 == 2)
    {
      v36[0] = @"textColor";
      v35 = [MEMORY[0x1E69DC888] labelColor];
      v37[0] = v35;
      v36[1] = @"lightTextColor";
      v34 = [MEMORY[0x1E69DC888] secondaryLabelColor];
      v37[1] = v34;
      v36[2] = @"tertiaryTextColor";
      v33 = [MEMORY[0x1E69DC888] tertiaryLabelColor];
      v37[2] = v33;
      v36[3] = @"separatorLineColor";
      v32 = [MEMORY[0x1E69DC888] quaternaryLabelColor];
      v37[3] = v32;
      v36[4] = @"selectedRowColor";
      v31 = [MEMORY[0x1E69DC888] colorWithWhite:1.0 alpha:0.100000001];
      v37[4] = v31;
      v36[5] = @"tintColor";
      v30 = [MEMORY[0x1E69DC888] redColor];
      v37[5] = v30;
      v36[6] = @"highlightedTintColor";
      v29 = [(MKInfoCardThemeManager *)self tintColor];
      v28 = [v29 colorWithAlphaComponent:0.25];
      v37[6] = v28;
      v36[7] = @"rowColor";
      v27 = [MEMORY[0x1E69DC888] clearColor];
      v37[7] = v27;
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
      v22 = [MEMORY[0x1E69DC888] redColor];
      v37[12] = v22;
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
      v5 = [MEMORY[0x1E69DC888] systemGreenColor];
      v37[16] = v5;
      v36[17] = @"transitDelayedTextColor";
      v6 = [MEMORY[0x1E69DC888] systemRedColor];
      v37[17] = v6;
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
      v10 = [MEMORY[0x1E69DC888] labelColor];
      v37[21] = v10;
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
      if (a3 != 1)
      {
        return;
      }

      v38[0] = @"textColor";
      v35 = [MEMORY[0x1E69DC888] labelColor];
      v39[0] = v35;
      v38[1] = @"lightTextColor";
      v34 = [MEMORY[0x1E69DC888] secondaryLabelColor];
      v39[1] = v34;
      v38[2] = @"tertiaryTextColor";
      v33 = [MEMORY[0x1E69DC888] tertiaryLabelColor];
      v39[2] = v33;
      v38[3] = @"separatorLineColor";
      v32 = [MEMORY[0x1E69DC888] quaternaryLabelColor];
      v39[3] = v32;
      v38[4] = @"tintColor";
      v31 = [MEMORY[0x1E69DC888] redColor];
      v39[4] = v31;
      v38[5] = @"highlightedTintColor";
      v30 = [(MKInfoCardThemeManager *)self tintColor];
      v29 = [v30 colorWithAlphaComponent:0.25];
      v39[5] = v29;
      v38[6] = @"rowColor";
      v28 = [MEMORY[0x1E69DC888] clearColor];
      v39[6] = v28;
      v38[7] = @"selectedRowColor";
      v27 = [MEMORY[0x1E69DC888] colorWithWhite:0.0 alpha:0.0599999987];
      v39[7] = v27;
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
      v22 = [MEMORY[0x1E69DC888] redColor];
      v39[12] = v22;
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
      v5 = [MEMORY[0x1E69DC888] systemGreenColor];
      v39[16] = v5;
      v38[17] = @"transitDelayedTextColor";
      v6 = [MEMORY[0x1E69DC888] systemRedColor];
      v39[17] = v6;
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
      v10 = [MEMORY[0x1E69DC888] labelColor];
      v39[21] = v10;
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

- (id)_initWithThemeType:(unint64_t)a3
{
  v7.receiver = self;
  v7.super_class = MKInfoCardThemeManager;
  v4 = [(MKInfoCardThemeManager *)&v7 init];
  v5 = v4;
  if (v4)
  {
    if (!a3)
    {
      a3 = [(MKInfoCardThemeManager *)v4 _currentSystemTheme];
    }

    [(MKInfoCardThemeManager *)v5 _setTheme:a3];
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

+ (void)setTintColorProvider:(id)a3
{
  v4 = a3;
  v5 = [a1 currentTheme];
  [v5 _setTintColorProvider:v4];
}

+ (unint64_t)themeType
{
  v2 = [a1 currentTheme];
  v3 = [v2 themeType];

  return v3;
}

+ (void)setTheme:(unint64_t)a3
{
  v4 = [a1 currentTheme];
  if (v4)
  {
    v4[8] = 1;
    v5 = v4;
    [v4 _setTheme:a3];
    v4 = v5;
  }
}

+ (id)themeWithThemeType:(unint64_t)a3
{
  v3 = [[a1 alloc] _initWithThemeType:a3];

  return v3;
}

@end