@interface MapsTheme
+ (Class)visualEffectClassAllowingBlur:(BOOL)blur;
+ (UIColor)ugcAddPhotoCellBackgroundColor;
+ (UIColor)ugcHairlineColor;
+ (UIColor)ugcPOIEnrichmentEditorBackgroundColor;
+ (UIImage)locationImage;
+ (double)buttonCornerRadius;
+ (double)cardCornerRadius;
+ (double)macButtonCornerRadius;
+ (id)_colorWithAssetCatalogName:(id)name;
+ (id)blurEffect;
+ (id)globalThemes;
+ (id)sharedTheme;
+ (id)visualEffectViewAllowingBlur:(BOOL)blur;
- (BOOL)updateMapsThemeStyleIfNeeded:(unint64_t)needed;
- (BOOL)updateVisualEffectStyleIfNeeded:(unint64_t)needed;
- (MapsTheme)initWithMapsThemeStyle:(unint64_t)style visualEffectStyle:(unint64_t)effectStyle;
- (UIColor)dynamicControlBackgroundColor;
- (UIColor)dynamicHairlineColor;
- (UIColor)navEndButtonBackgroundHighlightedColor;
- (UIColor)navPauseButtonBackgroundHighlightedColor;
- (UIColor)navResumeRouteBannerHighlightColor;
- (UIColor)navSignSecondaryColor;
- (id)_mapsThemeStyleKey:(unint64_t)key;
- (id)_maps_colorNamed:(id)named;
- (id)blackCircleButtonBackgroundColor:(unint64_t)color;
- (id)blueButtonBackgroundColor:(unint64_t)color;
- (id)blueButtonTitleColor:(unint64_t)color;
- (id)fadedGrayButtonBackgroundColor:(unint64_t)color;
- (id)fadedGrayButtonTitleColor:(unint64_t)color;
- (id)flyoverTourButtonBackgroundColor:(BOOL)color;
- (id)greenButtonBackgroundColor:(unint64_t)color;
- (id)greenButtonTitleColor:(unint64_t)color;
- (id)lazyLoadingImageWithKey:(id)key factory:(id)factory;
- (id)lazyLoadingImageWithKey:(id)key imageName:(id)name imageColor:(id)color supportRTL:(BOOL)l;
- (id)lazyLoadingImageWithKey:(id)key imageName:(id)name supportRTL:(BOOL)l;
- (id)ridesharingRatingStarColorOn:(BOOL)on;
- (id)ridesharingTippingOptionsBackgroundColor:(BOOL)color;
- (id)ridesharingTippingOptionsForegroundColor:(BOOL)color;
- (id)ridesharingTippingOptionsForegroundCurrencyColor:(BOOL)color;
- (id)statusIndicatorBackgroundColor:(unint64_t)color;
- (id)statusIndicatorTextColorForStyleDefault:(unint64_t)default;
- (id)statusIndicatorTextColorForStyleLightContent:(unint64_t)content;
- (int64_t)blurDarkeningAppearance;
- (int64_t)selectionBackgroundAppearance;
- (int64_t)textFieldKeyboardAppearance;
- (unint64_t)infoCardThemeType;
- (unint64_t)interfaceStyleIntent;
- (void)_updateCurrentTheme;
@end

@implementation MapsTheme

+ (Class)visualEffectClassAllowingBlur:(BOOL)blur
{
  v3 = objc_opt_class();

  return v3;
}

+ (id)visualEffectViewAllowingBlur:(BOOL)blur
{
  v4 = objc_alloc([self visualEffectClassAllowingBlur:blur]);
  blurEffect = [self blurEffect];
  v6 = [v4 initWithEffect:blurEffect];

  [v6 _setGroupName:@"MapsTheme"];

  return v6;
}

+ (id)blurEffect
{
  v2 = +[UIDevice currentDevice];
  userInterfaceIdiom = [v2 userInterfaceIdiom];

  if ((GEOConfigGetBOOL() & (userInterfaceIdiom != &dword_4 + 1)) != 0)
  {
    v4 = 9;
  }

  else
  {
    v4 = 10;
  }

  v5 = [UIBlurEffect effectWithStyle:v4];

  return v5;
}

- (BOOL)updateMapsThemeStyleIfNeeded:(unint64_t)needed
{
  mapsThemeStyle = self->_mapsThemeStyle;
  if (mapsThemeStyle != needed)
  {
    self->_mapsThemeStyle = needed;
    [(MapsTheme *)self _updateCurrentTheme];
  }

  return mapsThemeStyle != needed;
}

- (BOOL)updateVisualEffectStyleIfNeeded:(unint64_t)needed
{
  currentVisualEffectStyle = self->_currentVisualEffectStyle;
  if (currentVisualEffectStyle != needed)
  {
    self->_currentVisualEffectStyle = needed;
    [(MapsTheme *)self _updateCurrentTheme];
  }

  return currentVisualEffectStyle != needed;
}

- (void)_updateCurrentTheme
{
  globalThemes = [objc_opt_class() globalThemes];
  v3 = [(MapsTheme *)self _mapsThemeStyleKey:self->_mapsThemeStyle];
  v4 = [globalThemes objectForKeyedSubscript:v3];
  colorsForCurrentTheme = self->_colorsForCurrentTheme;
  self->_colorsForCurrentTheme = v4;
}

- (id)_mapsThemeStyleKey:(unint64_t)key
{
  currentVisualEffectStyle = self->_currentVisualEffectStyle;
  v4 = @"DarkThemeWithoutVisualEffect";
  if (key != 1)
  {
    v4 = 0;
  }

  if (!key)
  {
    v4 = @"StandardThemeWithoutVisualEffect";
  }

  if (key == 1)
  {
    v5 = @"DarkTheme";
  }

  else
  {
    v5 = 0;
  }

  if (!key)
  {
    v5 = @"StandardTheme";
  }

  if (currentVisualEffectStyle)
  {
    v5 = 0;
  }

  if (currentVisualEffectStyle == 1)
  {
    return v4;
  }

  else
  {
    return v5;
  }
}

- (MapsTheme)initWithMapsThemeStyle:(unint64_t)style visualEffectStyle:(unint64_t)effectStyle
{
  v14.receiver = self;
  v14.super_class = MapsTheme;
  v6 = [(MapsTheme *)&v14 init];
  v7 = v6;
  if (v6)
  {
    v6->_mapsThemeStyle = style;
    v6->_currentVisualEffectStyle = effectStyle;
    globalThemes = [objc_opt_class() globalThemes];
    v9 = [(MapsTheme *)v7 _mapsThemeStyleKey:v7->_mapsThemeStyle];
    v10 = [globalThemes objectForKeyedSubscript:v9];
    colorsForCurrentTheme = v7->_colorsForCurrentTheme;
    v7->_colorsForCurrentTheme = v10;

    v12 = +[UIApplication sharedApplication];
    v7->_isRTL = [v12 userInterfaceLayoutDirection] == &dword_0 + 1;
  }

  return v7;
}

+ (id)globalThemes
{
  if (qword_965E0 != -1)
  {
    sub_3AB74();
  }

  v3 = qword_965D8;

  return v3;
}

+ (id)sharedTheme
{
  if (qword_965F0 != -1)
  {
    sub_3AB88();
  }

  v3 = qword_965E8;

  return v3;
}

+ (UIImage)locationImage
{
  v2 = [UIImage systemImageNamed:@"location"];
  v3 = [UIImageSymbolConfiguration configurationWithPointSize:17.0];
  v4 = [v2 imageWithConfiguration:v3];

  return v4;
}

- (id)lazyLoadingImageWithKey:(id)key imageName:(id)name supportRTL:(BOOL)l
{
  lCopy = l;
  nameCopy = name;
  keyCopy = key;
  keyColor = [(MapsTheme *)self keyColor];
  v11 = [(MapsTheme *)self lazyLoadingImageWithKey:keyCopy imageName:nameCopy imageColor:keyColor supportRTL:lCopy];

  return v11;
}

- (id)lazyLoadingImageWithKey:(id)key imageName:(id)name imageColor:(id)color supportRTL:(BOOL)l
{
  keyCopy = key;
  nameCopy = name;
  colorCopy = color;
  v13 = [(NSDictionary *)self->_colorsForCurrentTheme objectForKeyedSubscript:keyCopy];
  v14 = v13;
  if (v13)
  {
    v15 = v13;
  }

  else
  {
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_42CC;
    v17[3] = &unk_69158;
    v18 = colorCopy;
    lCopy = l;
    v19 = nameCopy;
    selfCopy = self;
    v15 = [(MapsTheme *)self lazyLoadingImageWithKey:keyCopy factory:v17];
  }

  return v15;
}

- (id)lazyLoadingImageWithKey:(id)key factory:(id)factory
{
  keyCopy = key;
  factoryCopy = factory;
  v8 = [(NSDictionary *)self->_colorsForCurrentTheme objectForKeyedSubscript:keyCopy];
  if (!v8)
  {
    v9 = [(MapsTheme *)self _mapsThemeStyleKey:self->_mapsThemeStyle];
    globalThemes = [objc_opt_class() globalThemes];
    v11 = [globalThemes objectForKeyedSubscript:v9];

    v12 = [v11 objectForKeyedSubscript:keyCopy];
    if (v12)
    {
      v8 = v12;
      v13 = v11;
    }

    else
    {
      v8 = factoryCopy[2](factoryCopy);
      v14 = [NSMutableDictionary dictionaryWithDictionary:v11];
      [v14 setObject:v8 forKeyedSubscript:keyCopy];
      v13 = [v14 copy];

      globalThemes2 = [objc_opt_class() globalThemes];
      [globalThemes2 setObject:v13 forKeyedSubscript:v9];
    }

    colorsForCurrentTheme = self->_colorsForCurrentTheme;
    self->_colorsForCurrentTheme = v13;
  }

  return v8;
}

+ (double)cardCornerRadius
{
  if (qword_96600 != -1)
  {
    sub_3AB9C();
  }

  return *&qword_965F8;
}

+ (double)buttonCornerRadius
{
  if (qword_96610 != -1)
  {
    sub_3ABB0();
  }

  return *&qword_96608;
}

+ (double)macButtonCornerRadius
{
  if (qword_96620 != -1)
  {
    sub_3ABC4();
  }

  return *&qword_96618;
}

- (unint64_t)interfaceStyleIntent
{
  mapsThemeStyle = self->_mapsThemeStyle;
  if (mapsThemeStyle)
  {
    return 2 * (mapsThemeStyle == 1);
  }

  else
  {
    return 1;
  }
}

- (unint64_t)infoCardThemeType
{
  if ([(MapsTheme *)self visualEffectStyle]&& [(MapsTheme *)self visualEffectStyle]!= &dword_0 + 1)
  {
    return 0;
  }

  if ([(MapsTheme *)self mapsThemeStyle])
  {
    return 2;
  }

  return 1;
}

- (int64_t)textFieldKeyboardAppearance
{
  if (self->_mapsThemeStyle)
  {
    return 1;
  }

  else
  {
    return 2;
  }
}

- (int64_t)blurDarkeningAppearance
{
  if (self->_mapsThemeStyle)
  {
    return 1;
  }

  else
  {
    return 2;
  }
}

- (int64_t)selectionBackgroundAppearance
{
  if (self->_mapsThemeStyle)
  {
    return 1;
  }

  else
  {
    return 4;
  }
}

- (id)statusIndicatorTextColorForStyleDefault:(unint64_t)default
{
  if (default == 1)
  {
    [UIColor colorWithWhite:0.0 alpha:0.400000006];
  }

  else
  {
    +[UIColor blackColor];
  }
  v3 = ;

  return v3;
}

- (id)statusIndicatorTextColorForStyleLightContent:(unint64_t)content
{
  if (content == 1)
  {
    [UIColor colorWithWhite:1.0 alpha:0.400000006];
  }

  else
  {
    +[UIColor whiteColor];
  }
  v3 = ;

  return v3;
}

- (id)statusIndicatorBackgroundColor:(unint64_t)color
{
  if (color == 1)
  {
    [(MapsTheme *)self colorForTag:@"StatusIndicatorHighlightedColorKey"];
  }

  else
  {
    [(MapsTheme *)self blueButtonBackgroundColor:0];
  }
  v3 = ;

  return v3;
}

- (id)blackCircleButtonBackgroundColor:(unint64_t)color
{
  v3 = [UIColor colorWithWhite:dbl_48D00[color == 1] alpha:1.0];

  return v3;
}

- (UIColor)navResumeRouteBannerHighlightColor
{
  v2 = +[UIColor _maps_keyColor];
  v3 = [UIColor colorWithWhite:0.0 alpha:0.100000001];
  v4 = [v2 _colorBlendedWithColor:v3];

  return v4;
}

- (id)fadedGrayButtonBackgroundColor:(unint64_t)color
{
  if (color == 1)
  {
    v3 = [UIColor colorWithWhite:0.0 alpha:0.0500000007];
    v4 = [UIColor colorWithWhite:0.0 alpha:0.300000012];
    v5 = [v3 _colorBlendedWithColor:v4];
  }

  else
  {
    v5 = [(MapsTheme *)self _maps_colorNamed:@"FadedGrayButtonColorKey"];
  }

  return v5;
}

+ (UIColor)ugcAddPhotoCellBackgroundColor
{
  v2 = +[UIColor labelColor];
  v3 = [v2 colorWithAlphaComponent:0.0500000007];

  return v3;
}

+ (UIColor)ugcPOIEnrichmentEditorBackgroundColor
{
  v2 = +[UIColor labelColor];
  v3 = [v2 colorWithAlphaComponent:0.0500000007];

  return v3;
}

+ (UIColor)ugcHairlineColor
{
  v2 = +[UIColor labelColor];
  v3 = [v2 colorWithAlphaComponent:0.100000001];

  return v3;
}

+ (id)_colorWithAssetCatalogName:(id)name
{
  nameCopy = name;
  v4 = [NSBundle bundleForClass:NSClassFromString(@"MapsSettingsController")];
  v5 = [UIColor colorNamed:nameCopy inBundle:v4 compatibleWithTraitCollection:0];

  return v5;
}

- (id)_maps_colorNamed:(id)named
{
  namedCopy = named;
  v4 = [UIColor colorNamed:namedCopy];
  if (!v4)
  {
    v5 = [NSBundle bundleForClass:NSClassFromString(@"MapsSettingsController")];
    v4 = [UIColor colorNamed:namedCopy inBundle:v5 compatibleWithTraitCollection:0];
  }

  return v4;
}

- (id)greenButtonTitleColor:(unint64_t)color
{
  if (color == 1)
  {
    v3 = @"GreenButtonHighlightedTitleColorKey";
  }

  else
  {
    v3 = @"GreenButtonTitleColorKey";
  }

  v4 = [(MapsTheme *)self _maps_colorNamed:v3];

  return v4;
}

- (id)blueButtonTitleColor:(unint64_t)color
{
  if (color == 1)
  {
    v3 = @"BlueButtonHighlightedTitleColorKey";
  }

  else
  {
    v3 = @"BlueButtonTitleColorKey";
  }

  v4 = [(MapsTheme *)self _maps_colorNamed:v3];

  return v4;
}

- (id)fadedGrayButtonTitleColor:(unint64_t)color
{
  if (color == 1)
  {
    v3 = @"FadedGrayButtonTitleColorKey";
  }

  else
  {
    v3 = @"FadedGrayButtonHighlightedTitleColorKey";
  }

  v4 = [(MapsTheme *)self _maps_colorNamed:v3];

  return v4;
}

- (UIColor)navSignSecondaryColor
{
  if (qword_96630 != -1)
  {
    sub_3ABD8();
  }

  v3 = qword_96628;

  return v3;
}

- (id)ridesharingRatingStarColorOn:(BOOL)on
{
  if (on)
  {
    v3 = @"RidesharingRatingStarOnColor";
  }

  else
  {
    v3 = @"RidesharingRatingStarOffColor";
  }

  v4 = [(MapsTheme *)self _maps_colorNamed:v3];

  return v4;
}

- (id)ridesharingTippingOptionsBackgroundColor:(BOOL)color
{
  if (color)
  {
    v3 = @"RidesharingTippingOptionsBackgroundSelectedColor";
  }

  else
  {
    v3 = @"RidesharingTippingOptionsBackgroundUnselectedColor";
  }

  v4 = [(MapsTheme *)self _maps_colorNamed:v3];

  return v4;
}

- (id)ridesharingTippingOptionsForegroundColor:(BOOL)color
{
  if (color)
  {
    v3 = @"RidesharingTippingOptionsForegroundSelectedColor";
  }

  else
  {
    v3 = @"RidesharingTippingOptionsForegroundUnselectedColor";
  }

  v4 = [(MapsTheme *)self _maps_colorNamed:v3];

  return v4;
}

- (id)ridesharingTippingOptionsForegroundCurrencyColor:(BOOL)color
{
  if (color)
  {
    v3 = @"RidesharingTippingOptionsForegroundCurrencySelectedColor";
  }

  else
  {
    v3 = @"RidesharingTippingOptionsForegroundCurrencyUnselectedColor";
  }

  v4 = [(MapsTheme *)self _maps_colorNamed:v3];

  return v4;
}

- (id)flyoverTourButtonBackgroundColor:(BOOL)color
{
  if (color)
  {
    v3 = @"FlyoverTourButtonBackgroundSelectedColor";
  }

  else
  {
    v3 = @"FlyoverTourButtonBackgroundUnselectedColor";
  }

  v4 = [(MapsTheme *)self _maps_colorNamed:v3];

  return v4;
}

- (UIColor)dynamicControlBackgroundColor
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_5358;
  block[3] = &unk_69228;
  block[4] = self;
  if (qword_96640 != -1)
  {
    dispatch_once(&qword_96640, block);
  }

  return qword_96638;
}

- (UIColor)dynamicHairlineColor
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_55F8;
  block[3] = &unk_69228;
  block[4] = self;
  if (qword_96650 != -1)
  {
    dispatch_once(&qword_96650, block);
  }

  return qword_96648;
}

- (id)greenButtonBackgroundColor:(unint64_t)color
{
  if (color == 1)
  {
    v3 = @"GreenButtonHighlightedColorKey";
  }

  else
  {
    v3 = @"GreenButtonColorKey";
  }

  v4 = [(MapsTheme *)self colorForTag:v3];

  return v4;
}

- (id)blueButtonBackgroundColor:(unint64_t)color
{
  if (color == 1)
  {
    [(MapsTheme *)self colorForTag:@"BlueButtonHighlightedColorKey"];
  }

  else
  {
    +[UIColor _maps_keyColor];
  }
  v3 = ;

  return v3;
}

- (UIColor)navEndButtonBackgroundHighlightedColor
{
  v2 = [UIColor colorWithRed:1.0 green:0.282352954 blue:0.282352954 alpha:1.0];
  v3 = [UIColor colorWithWhite:0.0 alpha:0.100000001];
  v4 = [v2 _colorBlendedWithColor:v3];

  return v4;
}

- (UIColor)navPauseButtonBackgroundHighlightedColor
{
  v2 = +[UIColor tertiarySystemFillColor];
  v3 = [UIColor colorWithWhite:0.0 alpha:0.100000001];
  v4 = [v2 _colorBlendedWithColor:v3];

  return v4;
}

@end