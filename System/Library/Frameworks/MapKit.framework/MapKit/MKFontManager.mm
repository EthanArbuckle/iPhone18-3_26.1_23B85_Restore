@interface MKFontManager
+ (id)sharedManager;
+ (void)setUseSmallFont:(BOOL)font;
- (UIFont)boldBodyFont;
- (UIFont)largeTitleFont;
- (UIFont)largeTitleFontStatic;
- (UIFont)largeTitleHeaderFont;
- (UIFont)lookAroundAttributionButtonFont;
- (UIFont)lookAroundButtonFont;
- (UIFont)lookAroundLabelFont;
- (UIFont)lookAroundSecondaryLabelFont;
- (UIFont)lookAroundTertiaryLabelFont;
- (UIFont)mediumBodyFont;
- (UIFont)mediumTitleFont;
- (UIFont)ratingCallToActionGlyphFont;
- (UIFont)ratingCallToActionHeaderLabelFont;
- (UIFont)ratingCallToActionLabelFont;
- (UIFont)ratingOverallFont;
- (UIFont)ratingOverallPercentageFont;
- (UIFont)recommendSubtitleFont;
- (UIFont)semiboldButtonCellFont;
- (UIFont)textBlurbFont;
- (id)iconFontToMatch:(id)match;
@end

@implementation MKFontManager

+ (id)sharedManager
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __30__MKFontManager_sharedManager__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (sharedManager_onceToken != -1)
  {
    dispatch_once(&sharedManager_onceToken, block);
  }

  v2 = sharedManager_manager;

  return v2;
}

void __30__MKFontManager_sharedManager__block_invoke(uint64_t a1)
{
  v1 = objc_alloc_init(*(a1 + 32));
  v2 = sharedManager_manager;
  sharedManager_manager = v1;
}

+ (void)setUseSmallFont:(BOOL)font
{
  fontCopy = font;
  sharedManager = [self sharedManager];
  [sharedManager setUseSmallFont:fontCopy];
}

- (id)iconFontToMatch:(id)match
{
  matchCopy = match;
  if (iconFontToMatch__onceToken != -1)
  {
    dispatch_once(&iconFontToMatch__onceToken, &__block_literal_global_13_12690);
  }

  v4 = iconFontToMatch__fontCache;
  v5 = MEMORY[0x1E696AD98];
  [matchCopy pointSize];
  v6 = [v5 numberWithDouble:?];
  v7 = [v4 objectForKeyedSubscript:v6];

  if (!v7)
  {
    v8 = MEMORY[0x1E69DB878];
    [matchCopy pointSize];
    v7 = [v8 fontWithName:@"pcf" size:?];
    if (!v7)
    {
      v9 = MEMORY[0x1E69DB878];
      [matchCopy pointSize];
      v7 = [v9 systemFontOfSize:?];
    }

    v10 = iconFontToMatch__fontCache;
    v11 = MEMORY[0x1E696AD98];
    [matchCopy pointSize];
    v12 = [v11 numberWithDouble:?];
    [v10 setObject:v7 forKeyedSubscript:v12];
  }

  return v7;
}

void __33__MKFontManager_iconFontToMatch___block_invoke()
{
  v0 = [MEMORY[0x1E696AAE8] _mapkitBundle];
  v1 = [v0 URLForResource:@"pcf" withExtension:@"otf"];

  v2 = [MEMORY[0x1E695DF90] dictionary];
  v3 = iconFontToMatch__fontCache;
  iconFontToMatch__fontCache = v2;

  error = 0;
  if (!CTFontManagerRegisterFontsForURL(v1, kCTFontManagerScopeProcess, &error))
  {
    v4 = CFErrorCopyDescription(error);
    NSLog(&cfstr_FailedToLoadFo.isa, v4);
    CFRelease(v4);
  }
}

- (UIFont)lookAroundAttributionButtonFont
{
  v2 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDD10]];
  v3 = [v2 _mapkit_fontWithWeight:*MEMORY[0x1E69DB958]];

  return v3;
}

- (UIFont)lookAroundTertiaryLabelFont
{
  v2 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDD28]];
  v3 = [v2 _mapkit_fontWithWeight:*MEMORY[0x1E69DB978]];

  return v3;
}

- (UIFont)lookAroundSecondaryLabelFont
{
  v2 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDD80]];
  v3 = [v2 _mapkit_fontWithWeight:*MEMORY[0x1E69DB978]];

  return v3;
}

- (UIFont)lookAroundLabelFont
{
  v2 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDDC0]];
  v3 = [v2 _mapkit_fontWithWeight:*MEMORY[0x1E69DB958]];

  return v3;
}

- (UIFont)lookAroundButtonFont
{
  v2 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDD80]];
  v3 = [v2 _mapkit_fontWithWeight:*MEMORY[0x1E69DB980]];

  return v3;
}

- (UIFont)largeTitleHeaderFont
{
  v2 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDD58]];
  v3 = [v2 _mapkit_fontWithWeight:*MEMORY[0x1E69DB980]];

  return v3;
}

- (UIFont)semiboldButtonCellFont
{
  v2 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDCF8]];
  v3 = [v2 _mapkit_fontWithWeight:*MEMORY[0x1E69DB980]];

  return v3;
}

- (UIFont)textBlurbFont
{
  v2 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDCF8]];
  v3 = [v2 _mapkit_fontWithWeight:*MEMORY[0x1E69DB970]];

  return v3;
}

- (UIFont)ratingCallToActionHeaderLabelFont
{
  v2 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDD78]];
  v3 = [v2 _mapkit_fontWithWeight:*MEMORY[0x1E69DB978]];

  return v3;
}

- (UIFont)ratingCallToActionLabelFont
{
  v2 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDCF8]];
  v3 = [v2 _mapkit_fontWithWeight:*MEMORY[0x1E69DB978]];

  return v3;
}

- (UIFont)ratingCallToActionGlyphFont
{
  v2 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDCF8]];
  v3 = [v2 _mapkit_fontWithWeight:*MEMORY[0x1E69DB980]];

  return v3;
}

- (UIFont)recommendSubtitleFont
{
  v2 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDD28]];
  v3 = [v2 _mapkit_fontWithWeight:*MEMORY[0x1E69DB970]];

  return v3;
}

- (UIFont)ratingOverallPercentageFont
{
  v2 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDDC0]];
  v3 = [v2 _mapkit_fontWithWeight:*MEMORY[0x1E69DB958]];

  return v3;
}

- (UIFont)ratingOverallFont
{
  v2 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDD58]];
  v3 = [v2 _mapkit_fontWithWeight:*MEMORY[0x1E69DB958]];

  return v3;
}

- (UIFont)mediumBodyFont
{
  v2 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDCF8]];
  v3 = [v2 _mapkit_fontWithSymbolicTraits:*MEMORY[0x1E69DB970]];

  return v3;
}

- (UIFont)mediumTitleFont
{
  v2 = MEMORY[0x1E69DB878];
  v3 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDDC8]];
  [v3 pointSize];
  v4 = [v2 systemFontOfSize:? weight:?];

  return v4;
}

- (UIFont)boldBodyFont
{
  v2 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDCF8]];
  v3 = [v2 _mapkit_fontWithSymbolicTraits:2];

  return v3;
}

- (UIFont)largeTitleFont
{
  if (self->_useSmallFont)
  {
    v2 = MEMORY[0x1E69DDCF8];
  }

  else
  {
    v2 = MEMORY[0x1E69DDDC0];
  }

  v3 = [MEMORY[0x1E69DB878] _mapkit_preferredFontForTextStyleInTableViewCell:*v2 addingSymbolicTraits:2];

  return v3;
}

- (UIFont)largeTitleFontStatic
{
  if (self->_useSmallFont)
  {
    [MEMORY[0x1E69DB878] boldSystemFontOfSize:17.0];
  }

  else
  {
    [MEMORY[0x1E69DB878] systemFontOfSize:22.0 weight:*MEMORY[0x1E69DB958]];
  }
  v2 = ;

  return v2;
}

@end