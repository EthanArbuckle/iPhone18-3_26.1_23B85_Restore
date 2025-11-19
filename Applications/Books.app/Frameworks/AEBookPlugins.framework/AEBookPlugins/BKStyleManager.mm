@interface BKStyleManager
+ (id)styleManagerWithLanguage:(id)a3;
+ (void)initialize;
- (BKStyleManager)initWithLanguage:(id)a3;
- (BOOL)canDecreaseFontSize;
- (BOOL)canIncreaseFontSize;
- (BOOL)isFontAvailable:(id)a3;
- (BOOL)isFontPreregistered:(id)a3;
- (BOOL)languageIsSimplifiedChinese;
- (NSString)font;
- (float)fontSize;
- (float)fontSizeForFont:(id)a3 category:(id)a4;
- (float)fontSizeForFont:(id)a3 presetIndex:(int64_t)a4;
- (float)lineHeight;
- (id)_defaultFontName;
- (id)_detailsForFont:(id)a3;
- (id)_presetsForFontName:(id)a3;
- (id)defaultStyleWithOriginalFonts:(BOOL)a3;
- (id)fallbackFontFamiliesForFontFamily:(id)a3;
- (id)fontFaceMappings;
- (id)fontForFontFamily:(id)a3;
- (id)fonts;
- (id)presets;
- (id)styleForFont:(id)a3 presetIndex:(int64_t)a4;
- (int64_t)_maxFontStepsForFont:(id)a3;
- (void)coordinator:(id)a3 observerDidDecreaseFontSize:(id)a4;
- (void)coordinator:(id)a3 observerDidIncreaseFontSize:(id)a4;
- (void)dealloc;
- (void)decreaseFontSizeNotifyingCoordinator:(BOOL)a3;
- (void)fontStateChanged:(id)a3;
- (void)increaseFontSizeNotifyingCoordinator:(BOOL)a3;
- (void)notifyStyleChanged;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)reloadCurrentStyle;
- (void)setAutoHyphenation:(BOOL)a3;
- (void)setDefaultFontSize;
- (void)setFont:(id)a3;
- (void)setFontSize:(float)a3;
- (void)setLineHeight:(float)a3;
- (void)setOptimizeLegibility:(BOOL)a3;
- (void)setStyle:(id)a3;
- (void)storeDefaultStyle:(id)a3;
@end

@implementation BKStyleManager

+ (void)initialize
{
  if (objc_opt_class() == a1)
  {
    v2 = +[NSUserDefaults standardUserDefaults];
    v5[0] = BKAutoHyphenation[0];
    v5[1] = BKOptimizeLegibility[0];
    v6[0] = &__kCFBooleanTrue;
    v6[1] = &__kCFBooleanFalse;
    v6[2] = &__kCFBooleanFalse;
    v5[2] = @"BKUseOldFontStepsAndSpacing";
    v5[3] = BKStyleManagerLastStyleIndexKey;
    isPad();
    v3 = [NSNumber numberWithInteger:3];
    v6[3] = v3;
    v4 = [NSDictionary dictionaryWithObjects:v6 forKeys:v5 count:4];
    [v2 registerDefaults:v4];
  }
}

+ (id)styleManagerWithLanguage:(id)a3
{
  v3 = a3;
  v4 = [[BKStyleManager alloc] initWithLanguage:v3];

  return v4;
}

- (BKStyleManager)initWithLanguage:(id)a3
{
  v4 = a3;
  v24.receiver = self;
  v24.super_class = BKStyleManager;
  v5 = [(BKStyleManager *)&v24 init];
  if (v5)
  {
    if (![(__CFString *)v4 length])
    {
      v6 = +[NSLocale preferredLanguages];
      v7 = [v6 objectAtIndexedSubscript:0];

      if (v7 && ([NSLocale localeWithLocaleIdentifier:v7], (v8 = objc_claimAutoreleasedReturnValue()) != 0))
      {
        v9 = v8;
        v10 = [(__CFString *)v8 languageCode];

        v4 = v9;
      }

      else
      {
        v10 = @"en";
      }

      v4 = v10;
    }

    objc_storeStrong(&v5->_language, v4);
    v11 = [BKStyleManager suffixForLanguage:v4];
    if ([v11 length])
    {
      v12 = [NSString stringWithFormat:@"-%@", v11];
    }

    else
    {
      v12 = &stru_1E7188;
    }

    languageSuffix = v5->_languageSuffix;
    v5->_languageSuffix = &v12->isa;

    v14 = +[BKFontCache sharedInstance];
    [v14 prewarmFontsForLanguage:v4 completion:0];

    v15 = +[NSUserDefaults standardUserDefaults];
    v5->_autoHyphenation = [v15 BOOLForKey:BKAutoHyphenation[0]];

    v16 = +[NSUserDefaults standardUserDefaults];
    v5->_legibility = [v16 BOOLForKey:BKOptimizeLegibility[0]];

    v17 = +[NSUserDefaults standardUserDefaults];
    v18 = [v17 objectForKey:BKStyleManagerLastStyleIndexKey];

    if (!v18 || (v19 = [v18 integerValue], v5->_index = v19, v19 < 0))
    {
      v5->_index = [objc_opt_class() defaultFontSizeIndex];
    }

    v20 = +[BCThemeCoordinator shared];
    [v20 addObserver:v5];

    v21 = +[NSNotificationCenter defaultCenter];
    [v21 addObserver:v5 selector:"fontStateChanged:" name:BEFontStateChangedNotification object:0];
    v22 = +[NSUserDefaults standardUserDefaults];
    [v22 addObserver:v5 forKeyPath:BKAutoHyphenation[0] options:1 context:off_22BB28];
  }

  return v5;
}

- (void)dealloc
{
  if (+[NSThread isMainThread])
  {
    v3 = +[BCThemeCoordinator shared];
    [v3 removeObserver:self];
  }

  v4 = +[NSNotificationCenter defaultCenter];
  [v4 removeObserver:self];

  v5 = +[NSUserDefaults standardUserDefaults];
  [v5 removeObserver:self forKeyPath:BKAutoHyphenation[0] context:off_22BB28];

  v6.receiver = self;
  v6.super_class = BKStyleManager;
  [(BKStyleManager *)&v6 dealloc];
}

- (BOOL)languageIsSimplifiedChinese
{
  v2 = [(BKStyleManager *)self language];
  v3 = [BKStyleManager languageIsSimplifiedChinese:v2];

  return v3;
}

- (id)fallbackFontFamiliesForFontFamily:(id)a3
{
  v4 = a3;
  v5 = [(BKStyleManager *)self language];
  v6 = [BKFontFallbackProvider fallbacksForFontFamily:v4 language:v5];

  return v6;
}

- (void)setAutoHyphenation:(BOOL)a3
{
  if (self->_autoHyphenation != a3)
  {
    v4 = a3;
    self->_autoHyphenation = a3;
    v6 = [(BKStyleManager *)self style];
    v7 = [v6 copy];

    [v7 setAutoHyphenate:v4];
    [(BKStyleManager *)self setStyle:v7];
  }
}

- (void)setOptimizeLegibility:(BOOL)a3
{
  if (self->_legibility != a3)
  {
    v4 = a3;
    self->_legibility = a3;
    v6 = [(BKStyleManager *)self style];
    v7 = [v6 copy];

    [v7 setOptimizeLegibility:v4];
    [(BKStyleManager *)self setStyle:v7];
  }
}

- (id)presets
{
  v3 = +[BKFontCache sharedInstance];
  v4 = [(BKStyleManager *)self language];
  v5 = [v3 presetsForLanguage:v4];

  return v5;
}

- (void)setStyle:(id)a3
{
  v6 = a3;
  if (![(ContentStyle *)self->_style isEqual:?])
  {
    style = self->_style;
    objc_storeStrong(&self->_style, a3);
    [(BKStyleManager *)self storeDefaultStyle:v6];
    if (style)
    {
      [(BKStyleManager *)self notifyStyleChanged];
    }
  }
}

- (id)_defaultFontName
{
  v3 = +[BKFontCache sharedInstance];
  v4 = [(BKStyleManager *)self language];
  v5 = [v3 defaultFontNameForLanguage:v4];

  return v5;
}

- (id)_presetsForFontName:(id)a3
{
  v4 = a3;
  v5 = +[BKFontCache sharedInstance];
  v6 = [(BKStyleManager *)self language];
  v7 = [v5 presetSettingsForFontFamily:v4 language:v6];

  return v7;
}

- (id)styleForFont:(id)a3 presetIndex:(int64_t)a4
{
  v6 = a3;
  v7 = [(BKStyleManager *)self _presetsForFontName:v6];
  v8 = v7;
  if (v7)
  {
    v9 = [v7 count];
    v10 = a4;
    if (v9 <= a4)
    {
      v10 = [v8 count] - 1;
    }

    v11 = [v8 objectAtIndex:v10];
    v12 = [[ContentStyle alloc] initWithFontFamily:v6 andDetails:v11];
    [(ContentStyle *)v12 setAutoHyphenate:[(BKStyleManager *)self autoHyphenation]];
    [(ContentStyle *)v12 setOptimizeLegibility:[(BKStyleManager *)self optimizeLegibility]];
    v13 = +[NSUserDefaults standardUserDefaults];
    v14 = [v13 BOOLForKey:@"BKUseOldFontStepsAndSpacing"];

    if ((v14 & 1) == 0)
    {
      if (a4 >= 0xE)
      {
        v15 = 14;
      }

      else
      {
        v15 = a4;
      }

      v16 = +[UIScreen mainScreen];
      [v16 bounds];
      v18 = v17;
      v20 = v19;
      v22 = v21;
      v24 = v23;

      v34.origin.x = v18;
      v34.origin.y = v20;
      v34.size.width = v22;
      v34.size.height = v24;
      Width = CGRectGetWidth(v34);
      v35.origin.x = v18;
      v35.origin.y = v20;
      v35.size.width = v22;
      v35.size.height = v24;
      Height = CGRectGetHeight(v35);
      if (Width < Height)
      {
        Height = Width;
      }

      if (Height >= 320.0)
      {
        v27 = -1;
        v28 = &qword_193468;
        while (v27 != 2)
        {
          v29 = *v28++;
          ++v27;
          if (v29 > Height)
          {
            goto LABEL_18;
          }
        }

        v27 = 3;
      }

      else
      {
        v27 = 1;
      }

LABEL_18:
      v30 = dbl_193480[v27] * dbl_1933E8[v15];
      *&v30 = v30;
      [(ContentStyle *)v12 setFontSize:v30];
      LODWORD(v31) = 1.0;
      [(ContentStyle *)v12 setLineHeight:v31];
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (float)fontSizeForFont:(id)a3 category:(id)a4
{
  v6 = qword_22D098;
  v7 = a4;
  v8 = a3;
  if (v6 != -1)
  {
    sub_138468();
  }

  v9 = [qword_22D090 indexOfObject:v7];

  [(BKStyleManager *)self fontSizeForFont:v8 presetIndex:v9];
  v11 = v10;

  return v11;
}

- (float)fontSizeForFont:(id)a3 presetIndex:(int64_t)a4
{
  v4 = [(BKStyleManager *)self styleForFont:a3 presetIndex:a4];
  v5 = v4;
  if (v4)
  {
    [v4 fontSize];
    v7 = v6;
  }

  else
  {
    v7 = 1.0;
  }

  return v7;
}

- (id)fonts
{
  v3 = +[BKFontCache sharedInstance];
  v4 = [(BKStyleManager *)self language];
  v5 = [v3 fontsForLanguage:v4];

  return v5;
}

- (id)fontForFontFamily:(id)a3
{
  v4 = a3;
  v5 = +[BKFontCache sharedInstance];
  v6 = [(BKStyleManager *)self language];
  v7 = [v5 fontFromFamilyName:v4 language:v6];

  return v7;
}

- (id)fontFaceMappings
{
  v3 = +[BKFontCache sharedInstance];
  v4 = [(BKStyleManager *)self language];
  v5 = [v3 presetPostscriptsLookupForLanguage:v4];

  return v5;
}

- (NSString)font
{
  v2 = [(BKStyleManager *)self style];
  v3 = [v2 fontFamily];

  if (v3)
  {
    v4 = v3;
  }

  else
  {
    v4 = &stru_1E7188;
  }

  return v4;
}

- (id)_detailsForFont:(id)a3
{
  v4 = a3;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = [(BKStyleManager *)self fonts];
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = *v14;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        v10 = [v9 familyName];
        v11 = [v10 isEqualToString:v4];

        if (v11)
        {
          v6 = v9;
          goto LABEL_11;
        }
      }

      v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v6;
}

- (BOOL)isFontPreregistered:(id)a3
{
  v3 = [(BKStyleManager *)self _detailsForFont:a3];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 kind] != 0;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)isFontAvailable:(id)a3
{
  v3 = [(BKStyleManager *)self _detailsForFont:a3];
  v4 = [v3 isAvailable];

  return v4;
}

- (void)setFont:(id)a3
{
  v10 = a3;
  v4 = [(BKStyleManager *)self font];
  v5 = [v10 isEqualToString:v4];

  if ((v5 & 1) == 0)
  {
    v6 = [(BKStyleManager *)self styleForFont:v10 presetIndex:self->_index];
    [(BKStyleManager *)self setStyle:v6];

    v7 = +[BCThemeCoordinator shared];
    v8 = [(BKStyleManager *)self style];
    v9 = [v8 fontFamily];
    [v7 observer:self didChangeFont:v9];
  }
}

- (float)fontSize
{
  v2 = [(BKStyleManager *)self style];
  [v2 fontSize];
  v4 = v3;

  return v4;
}

- (void)setFontSize:(float)a3
{
  [(BKStyleManager *)self fontSize];
  if (v5 != a3)
  {
    v6 = [(BKStyleManager *)self style];
    v8 = [v6 copy];

    *&v7 = a3;
    [v8 setFontSize:v7];
    [(BKStyleManager *)self setStyle:v8];
  }
}

- (void)reloadCurrentStyle
{
  v4 = [(BKStyleManager *)self font];
  v3 = [(BKStyleManager *)self styleForFont:v4 presetIndex:self->_index];
  [(BKStyleManager *)self setStyle:v3];
}

- (float)lineHeight
{
  v2 = [(BKStyleManager *)self style];
  [v2 lineHeight];
  v4 = v3;

  return v4;
}

- (void)setLineHeight:(float)a3
{
  [(BKStyleManager *)self lineHeight];
  if (v5 != a3)
  {
    v6 = [(BKStyleManager *)self style];
    v8 = [v6 copy];

    *&v7 = a3;
    [v8 setLineHeight:v7];
    [(BKStyleManager *)self setStyle:v8];
  }
}

- (int64_t)_maxFontStepsForFont:(id)a3
{
  v4 = a3;
  v5 = +[NSUserDefaults standardUserDefaults];
  v6 = [v5 BOOLForKey:@"BKUseOldFontStepsAndSpacing"];

  v7 = [(BKStyleManager *)self _presetsForFontName:v4];

  v8 = [v7 count];
  v9 = 15;
  if (v8 < 0xF)
  {
    v9 = v8;
  }

  if (v6)
  {
    v10 = v8;
  }

  else
  {
    v10 = v9;
  }

  return v10;
}

- (BOOL)canIncreaseFontSize
{
  v3 = [(BKStyleManager *)self font];

  if (!v3)
  {
    return 0;
  }

  v4 = [(BKStyleManager *)self font];
  v5 = [(BKStyleManager *)self _maxFontStepsForFont:v4];

  return self->_index < v5 - 1;
}

- (BOOL)canDecreaseFontSize
{
  v3 = [(BKStyleManager *)self font];

  if (!v3)
  {
    return 0;
  }

  if (isPad())
  {
    v4 = 0;
  }

  else
  {
    v6 = +[UIScreen mainScreen];
    [v6 scale];
    v8 = v7;

    v4 = 2;
    if (v8 >= 2.0)
    {
      v4 = 0;
    }
  }

  return self->_index > v4;
}

- (void)setDefaultFontSize
{
  v3 = +[NSUserDefaults standardUserDefaults];
  v4 = [v3 integerForKey:BKStyleManagerLastStyleIndexKey];

  v5 = [objc_opt_class() defaultFontSizeIndex];
  if (v4 != v5)
  {
    v6 = v5;
    self->_index = v5;
    v7 = [(BKStyleManager *)self font];
    v8 = [(BKStyleManager *)self styleForFont:v7 presetIndex:self->_index];
    [(BKStyleManager *)self setStyle:v8];

    v9 = +[NSUserDefaults standardUserDefaults];
    [v9 setInteger:self->_index forKey:BKStyleManagerLastStyleIndexKey];

    v10 = +[BCThemeCoordinator shared];
    v11 = v10;
    if (v4 >= v6)
    {
      [v10 observerDidDecreaseFontSize:self];
    }

    else
    {
      [v10 observerDidIncreaseFontSize:self];
    }
  }
}

- (void)increaseFontSizeNotifyingCoordinator:(BOOL)a3
{
  v3 = a3;
  v5 = [(BKStyleManager *)self font];
  v12 = [(BKStyleManager *)self _presetsForFontName:v5];

  index = self->_index;
  v7 = [v12 count] - 1;
  if (index + 1 < v7)
  {
    v7 = (index + 1);
  }

  self->_index = v7;
  v8 = [(BKStyleManager *)self font];
  v9 = [(BKStyleManager *)self styleForFont:v8 presetIndex:self->_index];
  [(BKStyleManager *)self setStyle:v9];

  v10 = +[NSUserDefaults standardUserDefaults];
  [v10 setInteger:self->_index forKey:BKStyleManagerLastStyleIndexKey];

  if (v3)
  {
    v11 = +[BCThemeCoordinator shared];
    [v11 observerDidIncreaseFontSize:self];
  }
}

- (void)decreaseFontSizeNotifyingCoordinator:(BOOL)a3
{
  v3 = a3;
  if (isPad())
  {
    v5 = 0;
  }

  else
  {
    v6 = +[UIScreen mainScreen];
    [v6 scale];
    v8 = v7;

    v5 = 2;
    if (v8 >= 2.0)
    {
      v5 = 0;
    }
  }

  if (self->_index - 1 > v5)
  {
    v5 = self->_index - 1;
  }

  self->_index = v5;
  v9 = [(BKStyleManager *)self font];
  v10 = [(BKStyleManager *)self styleForFont:v9 presetIndex:self->_index];
  [(BKStyleManager *)self setStyle:v10];

  v11 = +[NSUserDefaults standardUserDefaults];
  [v11 setInteger:self->_index forKey:BKStyleManagerLastStyleIndexKey];

  if (v3)
  {
    v12 = +[BCThemeCoordinator shared];
    [v12 observerDidDecreaseFontSize:self];
  }
}

- (void)notifyStyleChanged
{
  v7 = objc_opt_new();
  v3 = [(BKStyleManager *)self style];
  [v7 setObject:v3 forKeyedSubscript:BKStyleManagerNewStyleUserInfoKey[0]];

  v4 = +[NSNotificationCenter defaultCenter];
  v5 = BKStyleManagerDidChangeStyleNotification[0];
  v6 = [v7 copy];
  [v4 postNotificationName:v5 object:self userInfo:v6];
}

- (id)defaultStyleWithOriginalFonts:(BOOL)a3
{
  v3 = a3;
  v5 = [(BKStyleManager *)self languageSuffix];
  v6 = +[NSUserDefaults standardUserDefaults];
  v7 = [v6 integerForKey:BKStyleManagerLastStyleIndexKey];

  if (v3)
  {
    v8 = [(BKStyleManager *)self styleForFont:&stru_1E7188 presetIndex:v7];
    if (v8)
    {
      goto LABEL_25;
    }
  }

  v9 = [NSString stringWithFormat:@"%@%@", BKStyleManagerLastFontKey, v5];
  v10 = +[NSUserDefaults standardUserDefaults];
  v11 = [v10 stringForKey:v9];

  if ([(__CFString *)v11 hasPrefix:@".SFUIText"])
  {

    v12 = +[NSUserDefaults standardUserDefaults];
    v11 = @"-apple-system";
    [v12 setObject:@"-apple-system" forKey:v9];
  }

  if (!-[__CFString length](v11, "length") && ![v5 length])
  {
    v13 = +[NSUserDefaults standardUserDefaults];
    v14 = [v13 objectForKey:BKStyleManagerLastStyleKey];

    if (!v14)
    {
LABEL_19:

      goto LABEL_20;
    }

    v15 = [ContentStyle fontNameFromSummaryString:v14];
    v16 = [(BKStyleManager *)self styleForFont:v15 presetIndex:v7];
    if (v16)
    {
      v17 = v15;
    }

    else if (([(__CFString *)v11 isEqualToString:@"Verdana"]& 1) != 0)
    {
      v17 = @"Seravek";
    }

    else if (([(__CFString *)v11 isEqualToString:@"Baskerville"]& 1) != 0 || ([(__CFString *)v11 isEqualToString:@"Georgia"]& 1) != 0)
    {
      v17 = @"Iowan Old Style";
    }

    else
    {
      if (([(__CFString *)v11 isEqualToString:@"Cochin"]& 1) == 0)
      {
        goto LABEL_16;
      }

      v17 = @"Athelas";
    }

    v11 = v17;
LABEL_16:
    v18 = +[NSUserDefaults standardUserDefaults];
    [v18 removeObjectForKey:BKStyleManagerLastStyleKey];

    if ([(__CFString *)v11 length])
    {
      v19 = +[NSUserDefaults standardUserDefaults];
      [v19 setObject:v11 forKey:v9];
    }

    goto LABEL_19;
  }

LABEL_20:
  if (![(__CFString *)v11 length])
  {
    v20 = [(BKStyleManager *)self _defaultFontName];

    v11 = v20;
  }

  v8 = [(BKStyleManager *)self styleForFont:v11 presetIndex:v7];
  if (!v8)
  {
    v21 = [(BKStyleManager *)self _defaultFontName];
    v8 = [(BKStyleManager *)self styleForFont:v21 presetIndex:v7];
  }

LABEL_25:
  [v8 setAutoHyphenate:{-[BKStyleManager autoHyphenation](self, "autoHyphenation")}];
  [v8 setOptimizeLegibility:{-[BKStyleManager optimizeLegibility](self, "optimizeLegibility")}];

  return v8;
}

- (void)storeDefaultStyle:(id)a3
{
  v11 = a3;
  v4 = [v11 fontFamily];
  v5 = [v4 length];

  if (v5)
  {
    v6 = BKStyleManagerLastFontKey;
    v7 = [(BKStyleManager *)self languageSuffix];
    v8 = [NSString stringWithFormat:@"%@%@", v6, v7];

    v9 = +[NSUserDefaults standardUserDefaults];
    v10 = [v11 fontFamily];
    [v9 setObject:v10 forKey:v8];
  }
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  if (off_22BB28 == a6)
  {
    objc_initWeak(&location, self);
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_AAC4C;
    v18[3] = &unk_1E5118;
    v19 = v12;
    v20 = v10;
    objc_copyWeak(&v21, &location);
    v13 = objc_retainBlock(v18);
    v14 = objc_retainBlock(v13);
    if (v14)
    {
      if (+[NSThread isMainThread])
      {
        v14[2](v14);
      }

      else
      {
        block[0] = _NSConcreteStackBlock;
        block[1] = 3221225472;
        block[2] = sub_AAD0C;
        block[3] = &unk_1E2E08;
        v17 = v14;
        dispatch_async(&_dispatch_main_q, block);
      }
    }

    objc_destroyWeak(&v21);
    objc_destroyWeak(&location);
  }

  else
  {
    v15.receiver = self;
    v15.super_class = BKStyleManager;
    [(BKStyleManager *)&v15 observeValueForKeyPath:v10 ofObject:v11 change:v12 context:a6];
  }
}

- (void)fontStateChanged:(id)a3
{
  v4 = [a3 object];
  v5 = _AEBookPluginsFontCacheLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v12 = 138412290;
    v13 = v4;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_INFO, "StateChanged for font: %@", &v12, 0xCu);
  }

  v6 = [v4 familyName];
  v7 = [(BKStyleManager *)self font];
  v8 = [v6 isEqualToString:v7];

  if (v8 && ([v4 state] == 2 || objc_msgSend(v4, "state") == 4))
  {
    v9 = [(BKStyleManager *)self _defaultFontName];
    v10 = [(BKStyleManager *)self styleForFont:v9 presetIndex:0];

    v11 = _AEBookPluginsFontCacheLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 138412546;
      v13 = v4;
      v14 = 2112;
      v15 = v10;
      _os_log_impl(&dword_0, v11, OS_LOG_TYPE_DEFAULT, "Setting fallback style for font: %@ to %@", &v12, 0x16u);
    }

    [(BKStyleManager *)self setStyle:v10];
  }
}

- (void)coordinator:(id)a3 observerDidIncreaseFontSize:(id)a4
{
  if ([(BKStyleManager *)self canIncreaseFontSize:a3])
  {

    [(BKStyleManager *)self increaseFontSizeNotifyingCoordinator:0];
  }
}

- (void)coordinator:(id)a3 observerDidDecreaseFontSize:(id)a4
{
  if ([(BKStyleManager *)self canDecreaseFontSize:a3])
  {

    [(BKStyleManager *)self decreaseFontSizeNotifyingCoordinator:0];
  }
}

@end