@interface BKStyleManager
+ (id)styleManagerWithLanguage:(id)language;
+ (void)initialize;
- (BKStyleManager)initWithLanguage:(id)language;
- (BOOL)canDecreaseFontSize;
- (BOOL)canIncreaseFontSize;
- (BOOL)isFontAvailable:(id)available;
- (BOOL)isFontPreregistered:(id)preregistered;
- (BOOL)languageIsSimplifiedChinese;
- (NSString)font;
- (float)fontSize;
- (float)fontSizeForFont:(id)font category:(id)category;
- (float)fontSizeForFont:(id)font presetIndex:(int64_t)index;
- (float)lineHeight;
- (id)_defaultFontName;
- (id)_detailsForFont:(id)font;
- (id)_presetsForFontName:(id)name;
- (id)defaultStyleWithOriginalFonts:(BOOL)fonts;
- (id)fallbackFontFamiliesForFontFamily:(id)family;
- (id)fontFaceMappings;
- (id)fontForFontFamily:(id)family;
- (id)fonts;
- (id)presets;
- (id)styleForFont:(id)font presetIndex:(int64_t)index;
- (int64_t)_maxFontStepsForFont:(id)font;
- (void)coordinator:(id)coordinator observerDidDecreaseFontSize:(id)size;
- (void)coordinator:(id)coordinator observerDidIncreaseFontSize:(id)size;
- (void)dealloc;
- (void)decreaseFontSizeNotifyingCoordinator:(BOOL)coordinator;
- (void)fontStateChanged:(id)changed;
- (void)increaseFontSizeNotifyingCoordinator:(BOOL)coordinator;
- (void)notifyStyleChanged;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)reloadCurrentStyle;
- (void)setAutoHyphenation:(BOOL)hyphenation;
- (void)setDefaultFontSize;
- (void)setFont:(id)font;
- (void)setFontSize:(float)size;
- (void)setLineHeight:(float)height;
- (void)setOptimizeLegibility:(BOOL)legibility;
- (void)setStyle:(id)style;
- (void)storeDefaultStyle:(id)style;
@end

@implementation BKStyleManager

+ (void)initialize
{
  if (objc_opt_class() == self)
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

+ (id)styleManagerWithLanguage:(id)language
{
  languageCopy = language;
  v4 = [[BKStyleManager alloc] initWithLanguage:languageCopy];

  return v4;
}

- (BKStyleManager)initWithLanguage:(id)language
{
  languageCopy = language;
  v24.receiver = self;
  v24.super_class = BKStyleManager;
  v5 = [(BKStyleManager *)&v24 init];
  if (v5)
  {
    if (![(__CFString *)languageCopy length])
    {
      v6 = +[NSLocale preferredLanguages];
      v7 = [v6 objectAtIndexedSubscript:0];

      if (v7 && ([NSLocale localeWithLocaleIdentifier:v7], (v8 = objc_claimAutoreleasedReturnValue()) != 0))
      {
        v9 = v8;
        languageCode = [(__CFString *)v8 languageCode];

        languageCopy = v9;
      }

      else
      {
        languageCode = @"en";
      }

      languageCopy = languageCode;
    }

    objc_storeStrong(&v5->_language, languageCopy);
    v11 = [BKStyleManager suffixForLanguage:languageCopy];
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
    [v14 prewarmFontsForLanguage:languageCopy completion:0];

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
  language = [(BKStyleManager *)self language];
  v3 = [BKStyleManager languageIsSimplifiedChinese:language];

  return v3;
}

- (id)fallbackFontFamiliesForFontFamily:(id)family
{
  familyCopy = family;
  language = [(BKStyleManager *)self language];
  v6 = [BKFontFallbackProvider fallbacksForFontFamily:familyCopy language:language];

  return v6;
}

- (void)setAutoHyphenation:(BOOL)hyphenation
{
  if (self->_autoHyphenation != hyphenation)
  {
    hyphenationCopy = hyphenation;
    self->_autoHyphenation = hyphenation;
    style = [(BKStyleManager *)self style];
    v7 = [style copy];

    [v7 setAutoHyphenate:hyphenationCopy];
    [(BKStyleManager *)self setStyle:v7];
  }
}

- (void)setOptimizeLegibility:(BOOL)legibility
{
  if (self->_legibility != legibility)
  {
    legibilityCopy = legibility;
    self->_legibility = legibility;
    style = [(BKStyleManager *)self style];
    v7 = [style copy];

    [v7 setOptimizeLegibility:legibilityCopy];
    [(BKStyleManager *)self setStyle:v7];
  }
}

- (id)presets
{
  v3 = +[BKFontCache sharedInstance];
  language = [(BKStyleManager *)self language];
  v5 = [v3 presetsForLanguage:language];

  return v5;
}

- (void)setStyle:(id)style
{
  styleCopy = style;
  if (![(ContentStyle *)self->_style isEqual:?])
  {
    style = self->_style;
    objc_storeStrong(&self->_style, style);
    [(BKStyleManager *)self storeDefaultStyle:styleCopy];
    if (style)
    {
      [(BKStyleManager *)self notifyStyleChanged];
    }
  }
}

- (id)_defaultFontName
{
  v3 = +[BKFontCache sharedInstance];
  language = [(BKStyleManager *)self language];
  v5 = [v3 defaultFontNameForLanguage:language];

  return v5;
}

- (id)_presetsForFontName:(id)name
{
  nameCopy = name;
  v5 = +[BKFontCache sharedInstance];
  language = [(BKStyleManager *)self language];
  v7 = [v5 presetSettingsForFontFamily:nameCopy language:language];

  return v7;
}

- (id)styleForFont:(id)font presetIndex:(int64_t)index
{
  fontCopy = font;
  v7 = [(BKStyleManager *)self _presetsForFontName:fontCopy];
  v8 = v7;
  if (v7)
  {
    v9 = [v7 count];
    indexCopy = index;
    if (v9 <= index)
    {
      indexCopy = [v8 count] - 1;
    }

    v11 = [v8 objectAtIndex:indexCopy];
    v12 = [[ContentStyle alloc] initWithFontFamily:fontCopy andDetails:v11];
    [(ContentStyle *)v12 setAutoHyphenate:[(BKStyleManager *)self autoHyphenation]];
    [(ContentStyle *)v12 setOptimizeLegibility:[(BKStyleManager *)self optimizeLegibility]];
    v13 = +[NSUserDefaults standardUserDefaults];
    v14 = [v13 BOOLForKey:@"BKUseOldFontStepsAndSpacing"];

    if ((v14 & 1) == 0)
    {
      if (index >= 0xE)
      {
        indexCopy2 = 14;
      }

      else
      {
        indexCopy2 = index;
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
      v30 = dbl_193480[v27] * dbl_1933E8[indexCopy2];
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

- (float)fontSizeForFont:(id)font category:(id)category
{
  v6 = qword_22D098;
  categoryCopy = category;
  fontCopy = font;
  if (v6 != -1)
  {
    sub_138468();
  }

  v9 = [qword_22D090 indexOfObject:categoryCopy];

  [(BKStyleManager *)self fontSizeForFont:fontCopy presetIndex:v9];
  v11 = v10;

  return v11;
}

- (float)fontSizeForFont:(id)font presetIndex:(int64_t)index
{
  v4 = [(BKStyleManager *)self styleForFont:font presetIndex:index];
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
  language = [(BKStyleManager *)self language];
  v5 = [v3 fontsForLanguage:language];

  return v5;
}

- (id)fontForFontFamily:(id)family
{
  familyCopy = family;
  v5 = +[BKFontCache sharedInstance];
  language = [(BKStyleManager *)self language];
  v7 = [v5 fontFromFamilyName:familyCopy language:language];

  return v7;
}

- (id)fontFaceMappings
{
  v3 = +[BKFontCache sharedInstance];
  language = [(BKStyleManager *)self language];
  v5 = [v3 presetPostscriptsLookupForLanguage:language];

  return v5;
}

- (NSString)font
{
  style = [(BKStyleManager *)self style];
  fontFamily = [style fontFamily];

  if (fontFamily)
  {
    v4 = fontFamily;
  }

  else
  {
    v4 = &stru_1E7188;
  }

  return v4;
}

- (id)_detailsForFont:(id)font
{
  fontCopy = font;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  fonts = [(BKStyleManager *)self fonts];
  v6 = [fonts countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = *v14;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(fonts);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        familyName = [v9 familyName];
        v11 = [familyName isEqualToString:fontCopy];

        if (v11)
        {
          v6 = v9;
          goto LABEL_11;
        }
      }

      v6 = [fonts countByEnumeratingWithState:&v13 objects:v17 count:16];
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

- (BOOL)isFontPreregistered:(id)preregistered
{
  v3 = [(BKStyleManager *)self _detailsForFont:preregistered];
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

- (BOOL)isFontAvailable:(id)available
{
  v3 = [(BKStyleManager *)self _detailsForFont:available];
  isAvailable = [v3 isAvailable];

  return isAvailable;
}

- (void)setFont:(id)font
{
  fontCopy = font;
  font = [(BKStyleManager *)self font];
  v5 = [fontCopy isEqualToString:font];

  if ((v5 & 1) == 0)
  {
    v6 = [(BKStyleManager *)self styleForFont:fontCopy presetIndex:self->_index];
    [(BKStyleManager *)self setStyle:v6];

    v7 = +[BCThemeCoordinator shared];
    style = [(BKStyleManager *)self style];
    fontFamily = [style fontFamily];
    [v7 observer:self didChangeFont:fontFamily];
  }
}

- (float)fontSize
{
  style = [(BKStyleManager *)self style];
  [style fontSize];
  v4 = v3;

  return v4;
}

- (void)setFontSize:(float)size
{
  [(BKStyleManager *)self fontSize];
  if (v5 != size)
  {
    style = [(BKStyleManager *)self style];
    v8 = [style copy];

    *&v7 = size;
    [v8 setFontSize:v7];
    [(BKStyleManager *)self setStyle:v8];
  }
}

- (void)reloadCurrentStyle
{
  font = [(BKStyleManager *)self font];
  v3 = [(BKStyleManager *)self styleForFont:font presetIndex:self->_index];
  [(BKStyleManager *)self setStyle:v3];
}

- (float)lineHeight
{
  style = [(BKStyleManager *)self style];
  [style lineHeight];
  v4 = v3;

  return v4;
}

- (void)setLineHeight:(float)height
{
  [(BKStyleManager *)self lineHeight];
  if (v5 != height)
  {
    style = [(BKStyleManager *)self style];
    v8 = [style copy];

    *&v7 = height;
    [v8 setLineHeight:v7];
    [(BKStyleManager *)self setStyle:v8];
  }
}

- (int64_t)_maxFontStepsForFont:(id)font
{
  fontCopy = font;
  v5 = +[NSUserDefaults standardUserDefaults];
  v6 = [v5 BOOLForKey:@"BKUseOldFontStepsAndSpacing"];

  v7 = [(BKStyleManager *)self _presetsForFontName:fontCopy];

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
  font = [(BKStyleManager *)self font];

  if (!font)
  {
    return 0;
  }

  font2 = [(BKStyleManager *)self font];
  v5 = [(BKStyleManager *)self _maxFontStepsForFont:font2];

  return self->_index < v5 - 1;
}

- (BOOL)canDecreaseFontSize
{
  font = [(BKStyleManager *)self font];

  if (!font)
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

  defaultFontSizeIndex = [objc_opt_class() defaultFontSizeIndex];
  if (v4 != defaultFontSizeIndex)
  {
    v6 = defaultFontSizeIndex;
    self->_index = defaultFontSizeIndex;
    font = [(BKStyleManager *)self font];
    v8 = [(BKStyleManager *)self styleForFont:font presetIndex:self->_index];
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

- (void)increaseFontSizeNotifyingCoordinator:(BOOL)coordinator
{
  coordinatorCopy = coordinator;
  font = [(BKStyleManager *)self font];
  v12 = [(BKStyleManager *)self _presetsForFontName:font];

  index = self->_index;
  v7 = [v12 count] - 1;
  if (index + 1 < v7)
  {
    v7 = (index + 1);
  }

  self->_index = v7;
  font2 = [(BKStyleManager *)self font];
  v9 = [(BKStyleManager *)self styleForFont:font2 presetIndex:self->_index];
  [(BKStyleManager *)self setStyle:v9];

  v10 = +[NSUserDefaults standardUserDefaults];
  [v10 setInteger:self->_index forKey:BKStyleManagerLastStyleIndexKey];

  if (coordinatorCopy)
  {
    v11 = +[BCThemeCoordinator shared];
    [v11 observerDidIncreaseFontSize:self];
  }
}

- (void)decreaseFontSizeNotifyingCoordinator:(BOOL)coordinator
{
  coordinatorCopy = coordinator;
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
  font = [(BKStyleManager *)self font];
  v10 = [(BKStyleManager *)self styleForFont:font presetIndex:self->_index];
  [(BKStyleManager *)self setStyle:v10];

  v11 = +[NSUserDefaults standardUserDefaults];
  [v11 setInteger:self->_index forKey:BKStyleManagerLastStyleIndexKey];

  if (coordinatorCopy)
  {
    v12 = +[BCThemeCoordinator shared];
    [v12 observerDidDecreaseFontSize:self];
  }
}

- (void)notifyStyleChanged
{
  v7 = objc_opt_new();
  style = [(BKStyleManager *)self style];
  [v7 setObject:style forKeyedSubscript:BKStyleManagerNewStyleUserInfoKey[0]];

  v4 = +[NSNotificationCenter defaultCenter];
  v5 = BKStyleManagerDidChangeStyleNotification[0];
  v6 = [v7 copy];
  [v4 postNotificationName:v5 object:self userInfo:v6];
}

- (id)defaultStyleWithOriginalFonts:(BOOL)fonts
{
  fontsCopy = fonts;
  languageSuffix = [(BKStyleManager *)self languageSuffix];
  v6 = +[NSUserDefaults standardUserDefaults];
  v7 = [v6 integerForKey:BKStyleManagerLastStyleIndexKey];

  if (fontsCopy)
  {
    v8 = [(BKStyleManager *)self styleForFont:&stru_1E7188 presetIndex:v7];
    if (v8)
    {
      goto LABEL_25;
    }
  }

  v9 = [NSString stringWithFormat:@"%@%@", BKStyleManagerLastFontKey, languageSuffix];
  v10 = +[NSUserDefaults standardUserDefaults];
  v11 = [v10 stringForKey:v9];

  if ([(__CFString *)v11 hasPrefix:@".SFUIText"])
  {

    v12 = +[NSUserDefaults standardUserDefaults];
    v11 = @"-apple-system";
    [v12 setObject:@"-apple-system" forKey:v9];
  }

  if (!-[__CFString length](v11, "length") && ![languageSuffix length])
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
    _defaultFontName = [(BKStyleManager *)self _defaultFontName];

    v11 = _defaultFontName;
  }

  v8 = [(BKStyleManager *)self styleForFont:v11 presetIndex:v7];
  if (!v8)
  {
    _defaultFontName2 = [(BKStyleManager *)self _defaultFontName];
    v8 = [(BKStyleManager *)self styleForFont:_defaultFontName2 presetIndex:v7];
  }

LABEL_25:
  [v8 setAutoHyphenate:{-[BKStyleManager autoHyphenation](self, "autoHyphenation")}];
  [v8 setOptimizeLegibility:{-[BKStyleManager optimizeLegibility](self, "optimizeLegibility")}];

  return v8;
}

- (void)storeDefaultStyle:(id)style
{
  styleCopy = style;
  fontFamily = [styleCopy fontFamily];
  v5 = [fontFamily length];

  if (v5)
  {
    v6 = BKStyleManagerLastFontKey;
    languageSuffix = [(BKStyleManager *)self languageSuffix];
    v8 = [NSString stringWithFormat:@"%@%@", v6, languageSuffix];

    v9 = +[NSUserDefaults standardUserDefaults];
    fontFamily2 = [styleCopy fontFamily];
    [v9 setObject:fontFamily2 forKey:v8];
  }
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  pathCopy = path;
  objectCopy = object;
  changeCopy = change;
  if (off_22BB28 == context)
  {
    objc_initWeak(&location, self);
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_AAC4C;
    v18[3] = &unk_1E5118;
    v19 = changeCopy;
    v20 = pathCopy;
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
    [(BKStyleManager *)&v15 observeValueForKeyPath:pathCopy ofObject:objectCopy change:changeCopy context:context];
  }
}

- (void)fontStateChanged:(id)changed
{
  object = [changed object];
  v5 = _AEBookPluginsFontCacheLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v12 = 138412290;
    v13 = object;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_INFO, "StateChanged for font: %@", &v12, 0xCu);
  }

  familyName = [object familyName];
  font = [(BKStyleManager *)self font];
  v8 = [familyName isEqualToString:font];

  if (v8 && ([object state] == 2 || objc_msgSend(object, "state") == 4))
  {
    _defaultFontName = [(BKStyleManager *)self _defaultFontName];
    v10 = [(BKStyleManager *)self styleForFont:_defaultFontName presetIndex:0];

    v11 = _AEBookPluginsFontCacheLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 138412546;
      v13 = object;
      v14 = 2112;
      v15 = v10;
      _os_log_impl(&dword_0, v11, OS_LOG_TYPE_DEFAULT, "Setting fallback style for font: %@ to %@", &v12, 0x16u);
    }

    [(BKStyleManager *)self setStyle:v10];
  }
}

- (void)coordinator:(id)coordinator observerDidIncreaseFontSize:(id)size
{
  if ([(BKStyleManager *)self canIncreaseFontSize:coordinator])
  {

    [(BKStyleManager *)self increaseFontSizeNotifyingCoordinator:0];
  }
}

- (void)coordinator:(id)coordinator observerDidDecreaseFontSize:(id)size
{
  if ([(BKStyleManager *)self canDecreaseFontSize:coordinator])
  {

    [(BKStyleManager *)self decreaseFontSizeNotifyingCoordinator:0];
  }
}

@end