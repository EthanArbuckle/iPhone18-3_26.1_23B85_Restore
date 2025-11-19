@interface BKFlowingBookLayoutConfiguration
+ (BOOL)spreadPagesAllowedWithViewportSize:(CGSize)a3 fontSizeIndex:(int64_t)a4;
+ (id)_fontSizeCache;
- (BKFlowingBookLayoutConfiguration)initWithViewController:(id)a3 provider:(id)a4;
- (BOOL)_contentHasSpreadPages;
- (BOOL)_useCompactStrings;
- (BOOL)hasSpreadPages;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToFlowingBookLayoutConfiguration:(id)a3;
- (BOOL)pageLabelOnLeft;
- (BOOL)tocHasSpreadPages;
- (BOOL)usePaginationLineGrid;
- (CGRect)bookCoverRect;
- (CGRect)bottomBackgoundBarFrame;
- (CGRect)bottomFullWidthToolbarFrame;
- (CGRect)bottomLeftToolbarFrame;
- (CGRect)bottomRightToolbarFrame;
- (CGRect)contentContainerFrame;
- (CGRect)footerFrame;
- (CGRect)headerFrame;
- (CGRect)hiddenBottomLeftToolbarFrame;
- (CGRect)hiddenBottomRightToolbarFrame;
- (CGRect)insetContentViewFromContentContainerFrame:(CGRect)a3 isPrimary:(BOOL)a4;
- (CGRect)insetTOCorCoverViewFromContentContainerFrame:(CGRect)a3;
- (CGRect)leftContentContainerFrameForTwoUp;
- (CGRect)rightContentContainerFrameForTwoUp;
- (CGRect)scrubberFrame;
- (CGRect)topLeftToolbarFrame;
- (CGRect)topRightToolbarFrame;
- (CGSize)__layoutSizeForSpreadPages:(BOOL)a3;
- (CGSize)contentLayoutSize;
- (CGSize)layoutSize;
- (NSString)lastPageInChapterString;
- (UIEdgeInsets)bookCoverEdgeInsets;
- (UIEdgeInsets)contentInsets;
- (UIEdgeInsets)upsellContentInsets;
- (double)_averageCharacterWidth;
- (double)_calculatedWidthOfFontFamily:(id)a3 size:(double)a4;
- (double)_calculatedWidthOfFontFamily:(id)a3 size:(double)a4 cache:(id)a5 key:(id)a6;
- (double)_charactersPerLineForContentWidth:(double)a3 columns:(unint64_t)a4;
- (double)_fontSizeAdjustmentForFontFamily:(id)a3;
- (double)_fontSizeWithCurrentStyle;
- (double)_gutterWidthWithSpreadPages:(BOOL)a3;
- (double)_scrubberFrameHorizontalOriginY;
- (double)_scrubberLength;
- (double)_semanticSideInsetWithSpreadPages:(BOOL)a3;
- (double)be_pageLength;
- (double)charactersPerLine;
- (double)compactFontSize;
- (double)fontSize;
- (double)footerToolbarHeight;
- (double)gutterWidth;
- (double)headerToolbarHeight;
- (double)noteGlyphPadding;
- (double)regularFontSize;
- (double)scrubberCalloutWidth;
- (double)scrubberLeftRightInset;
- (double)scrubberWidth;
- (double)semanticSideInset;
- (double)snapshotArtificialGutterWidth;
- (id)backToPageWithPageTitle:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)goToPageWithPageTitle:(id)a3;
- (id)pluralPagesLeftInChapterWithRemainingPageCount:(unint64_t)a3;
- (id)singularPagesLeftInChapterWithRemainingPageCount:(unint64_t)a3;
- (void)invalidate;
- (void)setLargeSizeFactor:(double)a3;
- (void)setLayout:(unint64_t)a3;
- (void)setOverrideFontSize:(double)a3;
- (void)setStyle:(id)a3;
@end

@implementation BKFlowingBookLayoutConfiguration

- (BKFlowingBookLayoutConfiguration)initWithViewController:(id)a3 provider:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [[BKFlowingBookPlistConfigurationEnvironment alloc] initWithViewController:v7];
  [(BKFlowingBookPlistConfigurationEnvironment *)v8 setOverrideProvider:v6];

  v9 = [[BKFlowingBookFontSizeConfiguration alloc] initWithViewController:v7 configurationEnvironment:v8];
  [(BKFlowingBookPlistConfigurationEnvironment *)v8 setFontSizeConfiguration:v9];
  v10 = [(BKFlowingBookLayoutConfiguration *)self initWithViewController:v7 configurationEnvironment:v8];

  if (v10)
  {
    objc_storeStrong(&v10->_fontSizeConfiguration, v9);
    v11 = +[BCSemanticLayoutOptions current];
    options = v10->_options;
    v10->_options = v11;
  }

  return v10;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v15.receiver = self;
  v15.super_class = BKFlowingBookLayoutConfiguration;
  v5 = [(BKFlowingBookLayoutConfiguration *)&v15 copyWithZone:?];
  if (v5)
  {
    [(BKFlowingBookLayoutConfiguration *)self overrideFontSize];
    *(v5 + 4) = v6;
    *(v5 + 3) = [(BKFlowingBookLayoutConfiguration *)self layout];
    *(v5 + 17) = self->_contentHasSpreadPages;
    *(v5 + 19) = self->_disableContentSpreadPages;
    *(v5 + 18) = [(BKFlowingBookLayoutConfiguration *)self showingTOC];
    v7 = [(BKFlowingBookLayoutConfiguration *)self style];
    v8 = [v7 copyWithZone:a3];
    v9 = *(v5 + 1);
    *(v5 + 1) = v8;

    objc_storeStrong(v5 + 5, self->_options);
    v10 = [(BKFlowingBookFontSizeConfiguration *)self->_fontSizeConfiguration copyWithZone:a3];
    v11 = *(v5 + 6);
    *(v5 + 6) = v10;

    objc_opt_class();
    v12 = [v5 environment];
    v13 = BUDynamicCast();

    [v13 setFontSizeConfiguration:self->_fontSizeConfiguration];
  }

  return v5;
}

- (BOOL)isEqualToFlowingBookLayoutConfiguration:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_overrideFontSize == *(v4 + 4) && self->_layout == v4[3] && self->_contentHasSpreadPages == *(v4 + 17) && self->_disableContentSpreadPages == *(v4 + 19) && self->_showingTOC == *(v4 + 18) && ((style = self->_style, style == v5[1]) || [(ContentStyle *)style isEqual:?]))
  {
    options = self->_options;
    if (options == v5[5])
    {
      v8 = 1;
    }

    else
    {
      v8 = [(BCSemanticLayoutOptions *)options isEqual:?];
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && (v7.receiver = self, v7.super_class = BKFlowingBookLayoutConfiguration, [(BKFlowingBookLayoutConfiguration *)&v7 isEqual:v4]))
    {
      v5 = [(BKFlowingBookLayoutConfiguration *)self isEqualToFlowingBookLayoutConfiguration:v4];
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

- (void)invalidate
{
  v5.receiver = self;
  v5.super_class = BKFlowingBookLayoutConfiguration;
  [(BKFlowingBookLayoutConfiguration *)&v5 invalidate];
  v3 = +[NSUserDefaults standardUserDefaults];
  self->_useOldFontStepsAndSpacing = [v3 BOOLForKey:@"BKUseOldFontStepsAndSpacing"];

  [(BKFlowingBookLayoutConfiguration *)self fontSize];
  if (v4 > 0.0)
  {
    self->_contentHasSpreadPages = [(BKFlowingBookLayoutConfiguration *)self _contentHasSpreadPages];
  }
}

+ (id)_fontSizeCache
{
  if (qword_22CFF8 != -1)
  {
    sub_137020();
  }

  v3 = qword_22CFF0;

  return v3;
}

- (double)semanticSideInset
{
  v3 = [(BKFlowingBookLayoutConfiguration *)self contentHasSpreadPages];

  [(BKFlowingBookLayoutConfiguration *)self _semanticSideInsetWithSpreadPages:v3];
  return result;
}

- (double)_semanticSideInsetWithSpreadPages:(BOOL)a3
{
  v3 = a3;
  if ([(BKFlowingBookLayoutConfiguration *)self layout]== &dword_0 + 3)
  {
    return 0.0;
  }

  [(BKFlowingBookLayoutConfiguration *)self _gutterWidthWithSpreadPages:v3];
  v7 = v6;
  if ([(BKFlowingBookLayoutConfiguration *)self layout]!= &dword_0 + 2 && [(BKFlowingBookLayoutConfiguration *)self _manageSafeAreaInsets])
  {
    v8 = [(BKFlowingBookLayoutConfiguration *)self environment];
    [v8 safeAreaInsets];
    v10 = v9;
    v12 = v11;

    if (v10 >= v12)
    {
      v13 = v10;
    }

    else
    {
      v13 = v12;
    }

    v7 = v7 + v13;
  }

  return ceil(v7);
}

- (double)compactFontSize
{
  v2 = [(BKFlowingBookLayoutConfiguration *)self environment];
  [v2 size];
  v4 = round(sqrt(v3 + -19.3649167) + 16.0);

  return v4;
}

- (double)regularFontSize
{
  v2 = [(BKFlowingBookLayoutConfiguration *)self environment];
  [v2 size];
  v4 = round(sqrt(v3 + -28.8790582) + 20.0);

  return v4;
}

- (double)_fontSizeWithCurrentStyle
{
  [(BKFlowingBookLayoutConfiguration *)self fontSize];
  v4 = fmax(v3, 0.1);
  if (v4 > 20.0)
  {
    v4 = 20.0;
  }

  if (v3 <= 0.0)
  {
    v5 = 1.0;
  }

  else
  {
    v5 = v4;
  }

  [(BCSemanticLayoutOptions *)self->_options fontScale];
  return v6 * v5;
}

- (double)_averageCharacterWidth
{
  if ([(BKFlowingBookLayoutConfiguration *)self isScroll])
  {
    v3 = +[BKFlowingBookLayoutConfiguration _fontSizeCache];
    v4 = [(BKFlowingBookLayoutConfiguration *)self style];
    v5 = [v4 fontFamily];

    v6 = [v5 length];
    [(BKFlowingBookLayoutConfiguration *)self _fontSizeWithCurrentStyle];
    v8 = v7;
    if (v6)
    {
      v9 = [NSString stringWithFormat:@"A:%@:%.2f", v5, *&v7];
      objc_opt_class();
      v10 = [v3 objectForKeyedSubscript:v9];
      v11 = BUDynamicCast();

      if (v11)
      {
        [v11 doubleValue];
        v13 = v12;
      }

      else
      {
        v15 = [(BKFlowingBookLayoutConfiguration *)self style];
        v16 = [v15 fontFamily];
        [(BKFlowingBookLayoutConfiguration *)self _calculatedWidthOfFontFamily:v16 size:v3 cache:v9 key:v8];
        v18 = v17;

        v19 = [(BKFlowingBookLayoutConfiguration *)self _sampleCorpus];
        v13 = v18 / [v19 length];

        if (v13 <= 0.0)
        {
          v20 = +[BCSemanticLayoutOptions logger];
          if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
          {
            sub_137034();
          }

          v13 = 6.0;
        }

        v21 = [NSNumber numberWithDouble:v13];
        [v3 setObject:v21 forKeyedSubscript:v9];
      }
    }

    else
    {
      v13 = v7 * 0.4;
    }

LABEL_16:
    return v13;
  }

  [(BKFlowingBookLayoutConfiguration *)self _fontSizeWithCurrentStyle];
  v13 = v14 * 0.4;
  if (v14 * 0.4 <= 0.0)
  {
    v3 = +[BCSemanticLayoutOptions logger];
    v13 = 6.0;
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      sub_137034();
    }

    goto LABEL_16;
  }

  return v13;
}

- (double)_charactersPerLineForContentWidth:(double)a3 columns:(unint64_t)a4
{
  [(BKFlowingBookLayoutConfiguration *)self _contentWidthForAvailableWidth:a4 columns:a3];
  [(BKFlowingBookLayoutConfiguration *)self _charactersPerLineForContentWidthRaw:?];
  v6 = v5;
  v7 = [(BKFlowingBookLayoutConfiguration *)self style];

  if (v7)
  {
    v8 = [(BKFlowingBookLayoutConfiguration *)self style];
    v9 = [v8 fontFamily];
    [(BKFlowingBookLayoutConfiguration *)self _fontSizeAdjustmentForFontFamily:v9];
    v6 = v6 * v10;
  }

  v11 = +[BCSemanticLayoutOptions logger];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    sub_137074();
  }

  return v6;
}

- (double)charactersPerLine
{
  v3 = [(BKFlowingBookLayoutConfiguration *)self environment];
  [v3 size];
  v5 = v4;

  [(BKFlowingBookLayoutConfiguration *)self _charactersPerLineForContentWidth:1 columns:v5];
  return result;
}

- (double)noteGlyphPadding
{
  v3 = 0.0;
  if (![(BKFlowingBookLayoutConfiguration *)self isScroll])
  {
    v4 = [(BKFlowingBookLayoutConfiguration *)self environment];
    [v4 safeAreaInsets];
    v3 = v5;
    v7 = v6;

    if (v3 < v7)
    {
      v3 = v7;
    }
  }

  [(BKFlowingBookLayoutConfiguration *)self semanticSideInset];
  v9 = v8 - v3;
  [(BKFlowingBookLayoutConfiguration *)self noteSideLength];
  return floor((v9 - v10) * 0.5);
}

- (double)_scrubberLength
{
  v3 = [(BKFlowingBookLayoutConfiguration *)self scrubberStyle];
  options = self->_options;
  if (v3 == 1)
  {

    [(BCSemanticLayoutOptions *)options scrollerScrubberHeight];
  }

  else
  {
    [(BCSemanticLayoutOptions *)options classicScrubberHeight];
    v6 = v5;
    v7 = [(BKFlowingBookLayoutConfiguration *)self environment];
    [v7 size];
    v9 = v8;

    result = fmax(v6, 44.0);
    if (v9 <= 800.0)
    {
      return v6;
    }
  }

  return result;
}

- (double)scrubberWidth
{
  if ([(BKFlowingBookLayoutConfiguration *)self scrubberStyle]== &dword_0 + 1)
  {

    [(BKFlowingBookLayoutConfiguration *)self _scrubberLength];
  }

  else
  {
    options = self->_options;

    [(BCSemanticLayoutOptions *)options scrubberWidth];
  }

  return result;
}

- (double)_scrubberFrameHorizontalOriginY
{
  v3 = [(BKFlowingBookLayoutConfiguration *)self environment];
  [(BKFlowingBookLayoutConfiguration *)self scrubberHeight];
  v5 = v4;
  [v3 size];
  v7 = v6 - v5;
  [v3 safeAreaInsets];
  v9 = v7 - v8;
  [(BKFlowingBookLayoutConfiguration *)self footerToolbarHeight];
  v11 = v9 - v10;
  v12 = [(BKFlowingBookLayoutConfiguration *)self environment];
  v13 = [v12 overrideProvider];
  v14 = [v13 isScrubberDisabled];

  if (v14)
  {
    v11 = v5 + v11;
  }

  else
  {
    v15 = [(BKFlowingBookLayoutConfiguration *)self environment];
    if ([v15 isCompactHeight])
    {
    }

    else
    {
      v16 = [(BKFlowingBookLayoutConfiguration *)self environment];
      v17 = [v16 isCompactWidth];

      if (!v17)
      {
        goto LABEL_9;
      }
    }

    v18 = round(v5 * 0.5 + v11);
    if ([(BKFlowingBookLayoutConfiguration *)self layout]== &dword_0 + 3)
    {
      v11 = v18 + -10.0;
    }

    else
    {
      v11 = v18;
    }
  }

LABEL_9:

  return v11;
}

- (UIEdgeInsets)contentInsets
{
  v3 = [(BKFlowingBookLayoutConfiguration *)self environment];
  [v3 safeAreaInsets];
  v5 = v4;
  v7 = v6;
  [(BKFlowingBookLayoutConfiguration *)self headerToolbarHeight];
  v9 = v5 + v8;
  if ([(BKFlowingBookLayoutConfiguration *)self layout]== &dword_0 + 3)
  {
    [(BKFlowingBookLayoutConfiguration *)self noteSideLength];
    v9 = v9 + v10;
  }

  if ([(BKFlowingBookLayoutConfiguration *)self layout]== &dword_0 + 2)
  {
    [(BKFlowingBookLayoutConfiguration *)self scrubberHeight];
    v12 = v7 + v11;
    [(BKFlowingBookLayoutConfiguration *)self footerToolbarHeight];
    v14 = v12 + v13;
  }

  else
  {
    [v3 size];
    v16 = v15;
    [(BKFlowingBookLayoutConfiguration *)self _scrubberFrameHorizontalOriginY];
    v14 = v16 - v17;
  }

  [(BKFlowingBookLayoutConfiguration *)self semanticSideInset];
  v19 = v18;

  v20 = v9;
  v21 = v19;
  v22 = v14;
  v23 = v19;
  result.right = v23;
  result.bottom = v22;
  result.left = v21;
  result.top = v20;
  return result;
}

- (CGRect)insetContentViewFromContentContainerFrame:(CGRect)a3 isPrimary:(BOOL)a4
{
  v4 = a4;
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  [(BKFlowingBookLayoutConfiguration *)self contentInsets];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v17 = [(BKFlowingBookLayoutConfiguration *)self environment];
  [v17 size];
  v19 = v18;

  if (width < v19)
  {
    [(BKFlowingBookLayoutConfiguration *)self gutterWidth];
    v21 = v20 * 0.5;
    if (v4)
    {
      v16 = v21;
    }

    else
    {
      v12 = v21;
    }
  }

  v22 = x + v12;
  v23 = y + v10;
  v24 = width - (v16 + v12);
  v25 = height - (v10 + v14);
  result.size.height = v25;
  result.size.width = v24;
  result.origin.y = v23;
  result.origin.x = v22;
  return result;
}

- (BOOL)pageLabelOnLeft
{
  v3 = +[UIApplication sharedApplication];
  v4 = [v3 userInterfaceLayoutDirection] != 0;

  return [(BKFlowingBookLayoutConfiguration *)self isScroll]^ v4;
}

- (BOOL)tocHasSpreadPages
{
  if ((isPhone() & 1) != 0 || [(BKFlowingBookLayoutConfiguration *)self isScroll])
  {
    LOBYTE(v3) = 0;
  }

  else
  {
    v4 = [(BKFlowingBookLayoutConfiguration *)self environment];
    if ([v4 isLandscape])
    {
      v5 = [(BKFlowingBookLayoutConfiguration *)self environment];
      v3 = [v5 isCompactWidth] ^ 1;
    }

    else
    {
      LOBYTE(v3) = 0;
    }
  }

  return v3;
}

+ (BOOL)spreadPagesAllowedWithViewportSize:(CGSize)a3 fontSizeIndex:(int64_t)a4
{
  v4 = a3.width > 896.0;
  if (a3.height <= 500.0)
  {
    v4 = 0;
  }

  v5 = a4 < 2 && v4;
  if (a3.width <= a3.height)
  {
    return v5;
  }

  else
  {
    return v4;
  }
}

- (BOOL)_contentHasSpreadPages
{
  if ([(BKFlowingBookLayoutConfiguration *)self isScroll])
  {
    return 0;
  }

  if ([(BKFlowingBookLayoutConfiguration *)self disableContentSpreadPages])
  {
    return 0;
  }

  v3 = [(BKFlowingBookLayoutConfiguration *)self environment];
  v4 = [v3 isCompactWidth];

  if (v4)
  {
    return 0;
  }

  v6 = [(BKFlowingBookLayoutConfiguration *)self environment];
  [v6 size];
  v8 = v7;

  [(BKFlowingBookLayoutConfiguration *)self _charactersPerLineForContentWidth:1 columns:v8];
  v10 = v9;
  [(BCSemanticLayoutOptions *)self->_options minCPLForSpreadPages];
  return v10 >= v11;
}

- (double)snapshotArtificialGutterWidth
{
  v3 = [(BKFlowingBookLayoutConfiguration *)self environment];
  [v3 size];
  if (BCViewportSize() == 1)
  {
    v4 = [(BKFlowingBookLayoutConfiguration *)self environment];
    v5 = [v4 isCompactHeight];

    result = 22.0;
    if (v5)
    {
      return 27.0;
    }
  }

  else
  {

    return 22.0;
  }

  return result;
}

- (void)setLargeSizeFactor:(double)a3
{
  v4 = [(BKFlowingBookLayoutConfiguration *)self bookEnvironment];
  [v4 setLargeSizeFactor:a3];
}

- (void)setLayout:(unint64_t)a3
{
  if (self->_layout != a3)
  {
    v5 = [(BKFlowingBookLayoutConfiguration *)self allowsScrollMode];
    if ((a3 & 0xFFFFFFFFFFFFFFFELL) == 2)
    {
      v6 = 1;
    }

    else
    {
      v6 = a3;
    }

    if (v5)
    {
      v6 = a3;
    }

    self->_layout = v6;
    v7 = [(BKFlowingBookLayoutConfiguration *)self isScroll];
    v8 = [(BKFlowingBookLayoutConfiguration *)self bookEnvironment];
    [v8 setScroll:v7];

    [(BKFlowingBookLayoutConfiguration *)self invalidate];
  }
}

- (void)setOverrideFontSize:(double)a3
{
  if (vabdd_f64(self->_overrideFontSize, a3) > 0.00001)
  {
    self->_overrideFontSize = a3;
    v5 = [(BKFlowingBookLayoutConfiguration *)self bookEnvironment];
    [v5 setFontSize:a3];

    [(BKFlowingBookLayoutConfiguration *)self invalidate];
  }
}

- (double)_calculatedWidthOfFontFamily:(id)a3 size:(double)a4
{
  v6 = a3;
  if (([(__CFString *)v6 isEqualToString:@"ui-serif"]& 1) != 0)
  {
    v7 = @".AppleSystemUIFontSerif";
  }

  else
  {
    if (![(__CFString *)v6 isEqualToString:@"system-ui"])
    {
      goto LABEL_6;
    }

    v7 = @".AppleSystemUIFont";
  }

  v6 = v7;
LABEL_6:
  v8 = [UIFont fontWithName:v6 size:a4];
  if (v8)
  {
    v9 = [(BKFlowingBookLayoutConfiguration *)self _sampleCorpus];
    v22 = NSFontAttributeName;
    v23 = v8;
    v10 = [NSDictionary dictionaryWithObjects:&v23 forKeys:&v22 count:1];
    [v9 boundingRectWithSize:1 options:v10 attributes:0 context:{1.79769313e308, 1.79769313e308}];
    v12 = v11;
    v14 = v13;
    v16 = v15;
    v18 = v17;

    v24.origin.x = v12;
    v24.origin.y = v14;
    v24.size.width = v16;
    v24.size.height = v18;
    Width = CGRectGetWidth(v24);
  }

  else
  {
    v20 = +[BCSemanticLayoutOptions logger];
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
    {
      sub_1370F8();
    }

    Width = 0.0;
  }

  return Width;
}

- (double)_calculatedWidthOfFontFamily:(id)a3 size:(double)a4 cache:(id)a5 key:(id)a6
{
  v10 = a3;
  v11 = a5;
  v12 = a6;
  objc_opt_class();
  v13 = [v11 objectForKeyedSubscript:v10];
  v14 = BUDynamicCast();

  if (v14)
  {
    [v14 doubleValue];
    v16 = v15;
  }

  else
  {
    [(BKFlowingBookLayoutConfiguration *)self _calculatedWidthOfFontFamily:v10 size:a4];
    v16 = v17;
    v18 = [NSNumber numberWithDouble:?];
    [v11 setObject:v18 forKeyedSubscript:v12];
  }

  return v16;
}

- (double)_fontSizeAdjustmentForFontFamily:(id)a3
{
  v4 = a3;
  [(BKFlowingBookLayoutConfiguration *)self _fontSizeWithCurrentStyle];
  v6 = v5;
  v7 = +[BKFlowingBookLayoutConfiguration _fontSizeCache];
  v8 = [(BKFlowingBookLayoutConfiguration *)self _cacheKeyForFontFamily:v4 size:v6];
  objc_opt_class();
  v9 = [v7 objectForKeyedSubscript:v8];
  v10 = BUDynamicCast();

  if (v10)
  {
    [v10 doubleValue];
    v12 = v11;
  }

  else
  {
    if ([v4 length])
    {
      v13 = [(BKFlowingBookLayoutConfiguration *)self _cacheKeyForFontFamily:@".AppleSystemUIFontSerif" size:v6];
      [(BKFlowingBookLayoutConfiguration *)self _calculatedWidthOfFontFamily:@".AppleSystemUIFontSerif" size:v7 cache:v13 key:v6];
      v15 = v14;
      [(BKFlowingBookLayoutConfiguration *)self _calculatedWidthOfFontFamily:v4 size:v6];
      v17 = fmin(fabs(v16), fabs(v15));
      v18 = v16 / v15;
      if (v17 >= 0.00000011920929)
      {
        v12 = v18;
      }

      else
      {
        v12 = 1.0;
      }
    }

    else
    {
      v12 = 1.0;
    }

    v19 = +[BCSemanticLayoutOptions logger];
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
    {
      v22 = 138412802;
      v23 = v4;
      v24 = 2048;
      v25 = v6;
      v26 = 2048;
      v27 = v12;
      _os_log_debug_impl(&dword_0, v19, OS_LOG_TYPE_DEBUG, "Font factor for [%@] at %.2f is %.2f", &v22, 0x20u);
    }

    v20 = [NSNumber numberWithDouble:v12];
    [v7 setObject:v20 forKeyedSubscript:v8];
  }

  return v12;
}

- (void)setStyle:(id)a3
{
  v5 = a3;
  if (self->_style != v5)
  {
    objc_storeStrong(&self->_style, a3);
    [(ContentStyle *)v5 setOverrideProvider:self];
    v6 = +[BCSemanticLayoutOptions logger];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      style = self->_style;
      v8 = 138412290;
      v9 = style;
      _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "Style changed to:%@", &v8, 0xCu);
    }
  }
}

- (double)fontSize
{
  overrideFontSize = self->_overrideFontSize;
  if (overrideFontSize <= 0.0)
  {
    [(ContentStyle *)self->_style fontSize];
    v5 = v4;
    v6 = [(BKFlowingBookLayoutConfiguration *)self environment];
    [v6 size];
    [BKFlowingBookFontSizeConfiguration fontSizeFactorForViewportSize:self->_useOldFontStepsAndSpacing useOldFontStepsAndSpacing:?];
    overrideFontSize = v7 * v5;
  }

  return overrideFontSize;
}

- (id)description
{
  v18.receiver = self;
  v18.super_class = BKFlowingBookLayoutConfiguration;
  v3 = [(BKFlowingBookLayoutConfiguration *)&v18 description];
  [(BKFlowingBookLayoutConfiguration *)self contentInsets];
  v17[0] = v4;
  v17[1] = v5;
  v17[2] = v6;
  v17[3] = v7;
  v8 = [NSValue valueWithBytes:v17 objCType:"{UIEdgeInsets=dddd}"];
  [(BKFlowingBookLayoutConfiguration *)self gutterWidth];
  v9 = [NSNumber numberWithDouble:?];
  v10 = [NSNumber numberWithBool:[(BKFlowingBookLayoutConfiguration *)self isScroll]];
  [(BKFlowingBookLayoutConfiguration *)self fontSize];
  v11 = [NSNumber numberWithDouble:?];
  if ([(BKFlowingBookLayoutConfiguration *)self contentHasSpreadPages])
  {
    v12 = @"YES";
  }

  else
  {
    v12 = @"NO";
  }

  if ([(BKFlowingBookLayoutConfiguration *)self noJustification])
  {
    v13 = @"YES";
  }

  else
  {
    v13 = @"NO";
  }

  if ([(BKFlowingBookLayoutConfiguration *)self noAutoHyphenation])
  {
    v14 = @"YES";
  }

  else
  {
    v14 = @"NO";
  }

  v15 = [NSString stringWithFormat:@"%@\nBCFlowingBookLayoutConfiguration: contentInsets:%@ gutterWidth:%@ isScroll:%@ fontSize:%@ contentHasSpreadPages:%@ noJustification:%@ noAutoHyphenation:%@", v3, v8, v9, v10, v11, v12, v13, v14];

  return v15;
}

- (double)headerToolbarHeight
{
  v2 = [(BKFlowingBookLayoutConfiguration *)self environment];
  v3 = [v2 overrideProvider];
  [v3 topBarHeight];
  v5 = v4;

  return v5;
}

- (double)footerToolbarHeight
{
  v2 = [(BKFlowingBookLayoutConfiguration *)self environment];
  v3 = [v2 overrideProvider];
  [v3 bottomBarHeight];
  v5 = v4;

  return v5;
}

- (double)scrubberLeftRightInset
{
  if ([(BKFlowingBookLayoutConfiguration *)self layout]== &dword_0 + 3)
  {

    [(BKFlowingBookLayoutConfiguration *)self toolbarButtonMargin];
  }

  else
  {
    [(BKFlowingBookLayoutConfiguration *)self contentInsets];
    return v4;
  }

  return result;
}

- (UIEdgeInsets)bookCoverEdgeInsets
{
  v3 = [(BKFlowingBookLayoutConfiguration *)self environment];
  v4 = [v3 isCompactHeight];

  v5 = [(BKFlowingBookLayoutConfiguration *)self environment];
  [v5 statusBarHeight];
  v7 = v6;
  [(BKFlowingBookLayoutConfiguration *)self headerToolbarHeight];
  v9 = v8;
  [(BKFlowingBookLayoutConfiguration *)self footerToolbarHeight];
  v11 = v10;

  if (v4)
  {
    v12 = 18.0;
  }

  else
  {
    v12 = 32.0;
  }

  v13 = 82.0;
  if (v4)
  {
    v13 = 38.0;
  }

  v14 = v7 + v12 + v9;
  v15 = v11 + v12;
  result.right = v15;
  result.bottom = v12;
  result.left = v14;
  result.top = v13;
  return result;
}

- (CGRect)contentContainerFrame
{
  v3 = [(BKFlowingBookLayoutConfiguration *)self environment];
  [v3 size];
  v5 = v4;
  v6 = [(BKFlowingBookLayoutConfiguration *)self environment];
  [v6 size];
  v8 = v7;

  v9 = 0.0;
  v10 = 0.0;
  v11 = v5;
  v12 = v8;
  result.size.height = v12;
  result.size.width = v11;
  result.origin.y = v10;
  result.origin.x = v9;
  return result;
}

- (CGRect)leftContentContainerFrameForTwoUp
{
  v3 = [(BKFlowingBookLayoutConfiguration *)self environment];
  [v3 size];
  v5 = v4 * 0.5;
  v6 = [(BKFlowingBookLayoutConfiguration *)self environment];
  [v6 size];
  v8 = v7;

  v9 = 0.0;
  v10 = 0.0;
  v11 = v5;
  v12 = v8;
  result.size.height = v12;
  result.size.width = v11;
  result.origin.y = v10;
  result.origin.x = v9;
  return result;
}

- (CGRect)rightContentContainerFrameForTwoUp
{
  if ([(BKFlowingBookLayoutConfiguration *)self hasSpreadPages])
  {
    v3 = [(BKFlowingBookLayoutConfiguration *)self environment];
    [v3 size];
    x = v4 * 0.5;
    v6 = [(BKFlowingBookLayoutConfiguration *)self environment];
    [v6 size];
    width = v7 * 0.5;
    v9 = [(BKFlowingBookLayoutConfiguration *)self environment];
    [v9 size];
    height = v10;

    y = 0.0;
  }

  else
  {
    x = CGRectZero.origin.x;
    y = CGRectZero.origin.y;
    width = CGRectZero.size.width;
    height = CGRectZero.size.height;
  }

  v13 = x;
  v14 = width;
  v15 = height;
  result.size.height = v15;
  result.size.width = v14;
  result.origin.y = y;
  result.origin.x = v13;
  return result;
}

- (UIEdgeInsets)upsellContentInsets
{
  v3 = [(BKFlowingBookLayoutConfiguration *)self environment];
  [v3 safeAreaInsets];
  v5 = v4;
  v7 = v6;

  if ([(BKFlowingBookLayoutConfiguration *)self isScroll])
  {
    [(BKFlowingBookLayoutConfiguration *)self headerToolbarHeight];
    v9 = v5 + v8;
    [(BKFlowingBookLayoutConfiguration *)self footerToolbarHeight];
    v11 = v7 + v10;
    [(BKFlowingBookLayoutConfiguration *)self scrubberHeight];
    v13 = v11 + v12 * 0.5;
    v14 = 0.0;
    v15 = 0.0;
    v16 = v9;
  }

  else
  {
    [(BKFlowingBookLayoutConfiguration *)self contentInsets];

    _UIEdgeInsetsAdd(15);
  }

  result.right = v15;
  result.bottom = v13;
  result.left = v14;
  result.top = v16;
  return result;
}

- (double)gutterWidth
{
  v3 = [(BKFlowingBookLayoutConfiguration *)self contentHasSpreadPages];

  [(BKFlowingBookLayoutConfiguration *)self _gutterWidthWithSpreadPages:v3];
  return result;
}

- (double)_gutterWidthWithSpreadPages:(BOOL)a3
{
  v3 = a3;
  v5 = [(BKFlowingBookLayoutConfiguration *)self environment];
  [v5 size];
  v7 = v6;

  [(BCSemanticLayoutOptions *)self->_options sideInsetFactor];
  v9 = v7 * v8;
  if (v3)
  {
    v10 = +[UIScreen mainScreen];
    [v10 scale];
    [AEAnnotationMarker imageSizeForScale:?];
    v12 = v11;

    if (v12 + 6.0 >= v9 * 0.666666667)
    {
      v9 = v12 + 6.0;
    }

    else
    {
      v9 = v9 * 0.666666667;
    }
  }

  v13 = ceil(v9);
  if ([(BKFlowingBookLayoutConfiguration *)self isScroll])
  {
    v14 = [(BKFlowingBookLayoutConfiguration *)self environment];
    [v14 safeAreaInsetsAdjustingForNotch:0];
    v16 = v15;
    v18 = v17;

    if (v16 >= v18)
    {
      v18 = v16;
    }

    [(BKFlowingBookLayoutConfiguration *)self _averageCharacterWidth];
    v20 = v19;
    [(BCSemanticLayoutOptions *)self->_options minCPLForSpreadPages];
    v22 = floor((v7 + v18 * -2.0 - v20 * (v21 + 5.0)) * 0.5);
    if (v13 < v22)
    {
      return v22;
    }
  }

  return v13;
}

- (CGRect)bookCoverRect
{
  if ([(BKFlowingBookLayoutConfiguration *)self configurationHasABookCover])
  {
    [(BKFlowingBookLayoutConfiguration *)self bookCoverEdgeInsets];
    v4 = v3;
    [(BKFlowingBookLayoutConfiguration *)self bookCoverEdgeInsets];
    v6 = v5;
    v7 = [(BKFlowingBookLayoutConfiguration *)self environment];
    [v7 size];
    v9 = v8 * 0.5;
    [(BKFlowingBookLayoutConfiguration *)self bookCoverEdgeInsets];
    v11 = v9 + v10 * -2.0;
    v12 = [(BKFlowingBookLayoutConfiguration *)self environment];
    [v12 size];
    v14 = v13;
    [(BKFlowingBookLayoutConfiguration *)self bookCoverEdgeInsets];
    v16 = v15;
    [(BKFlowingBookLayoutConfiguration *)self bookCoverEdgeInsets];
    v26.size.height = v14 - (v16 + v17);
    v26.origin.x = v4;
    v26.origin.y = v6;
    v26.size.width = v11;
    v27 = CGRectIntegral(v26);
    x = v27.origin.x;
    y = v27.origin.y;
    width = v27.size.width;
    height = v27.size.height;
  }

  else
  {
    x = CGRectZero.origin.x;
    y = CGRectZero.origin.y;
    width = CGRectZero.size.width;
    height = CGRectZero.size.height;
  }

  v22 = x;
  v23 = y;
  v24 = width;
  v25 = height;
  result.size.height = v25;
  result.size.width = v24;
  result.origin.y = v23;
  result.origin.x = v22;
  return result;
}

- (CGRect)headerFrame
{
  v3 = [(BKFlowingBookLayoutConfiguration *)self environment];
  [v3 safeAreaInsets];
  v5 = v4;
  v6 = [(BKFlowingBookLayoutConfiguration *)self environment];
  [v6 size];
  v8 = v7;
  [(BKFlowingBookLayoutConfiguration *)self headerToolbarHeight];
  v10 = v9;

  v11 = 0.0;
  v12 = v5;
  v13 = v8;
  v14 = v10;
  result.size.height = v14;
  result.size.width = v13;
  result.origin.y = v12;
  result.origin.x = v11;
  return result;
}

- (CGRect)topLeftToolbarFrame
{
  if ([(BKFlowingBookLayoutConfiguration *)self configurationHasATopLeftToolbar])
  {
    [(BKFlowingBookLayoutConfiguration *)self headerFrame];
    x = v3;
    y = v5;
    height = v7;
    [(BKFlowingBookLayoutConfiguration *)self headerFrame];
    width = round(v9 * 0.5);
  }

  else
  {
    x = CGRectZero.origin.x;
    y = CGRectZero.origin.y;
    width = CGRectZero.size.width;
    height = CGRectZero.size.height;
  }

  v11 = x;
  v12 = y;
  v13 = height;
  result.size.height = v13;
  result.size.width = width;
  result.origin.y = v12;
  result.origin.x = v11;
  return result;
}

- (CGRect)topRightToolbarFrame
{
  [(BKFlowingBookLayoutConfiguration *)self headerFrame];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  if ([(BKFlowingBookLayoutConfiguration *)self configurationHasATopLeftToolbar])
  {
    v15.origin.x = v4;
    v15.origin.y = v6;
    v15.size.width = v8;
    v15.size.height = v10;
    v8 = round(CGRectGetWidth(v15) * 0.5);
    v4 = v8;
  }

  v11 = v4;
  v12 = v6;
  v13 = v8;
  v14 = v10;
  result.size.height = v14;
  result.size.width = v13;
  result.origin.y = v12;
  result.origin.x = v11;
  return result;
}

- (CGRect)footerFrame
{
  v3 = [(BKFlowingBookLayoutConfiguration *)self environment];
  [v3 safeAreaInsets];
  v5 = v4;

  [(BKFlowingBookLayoutConfiguration *)self footerToolbarHeight];
  v7 = v6;
  v8 = [(BKFlowingBookLayoutConfiguration *)self environment];
  [v8 size];
  v10 = v9;
  v12 = v11;

  if (![(BKFlowingBookLayoutConfiguration *)self isScroll])
  {
    v13 = [(BKFlowingBookLayoutConfiguration *)self environment];
    if ([v13 isCompactWidth])
    {
    }

    else
    {
      v14 = [(BKFlowingBookLayoutConfiguration *)self environment];
      v15 = [v14 isCompactHeight];

      if (!v15)
      {
        [(BKFlowingBookLayoutConfiguration *)self scrubberFrame];
        v17 = (v12 + CGRectGetMidY(v21) - v7) * 0.5;
        goto LABEL_6;
      }
    }
  }

  [(BKFlowingBookLayoutConfiguration *)self footerToolbarHeight];
  v17 = v12 - v16 - v5;
LABEL_6:
  v18 = 0.0;
  v19 = v10;
  v20 = v7;
  result.size.height = v20;
  result.size.width = v19;
  result.origin.y = v17;
  result.origin.x = v18;
  return result;
}

- (CGRect)bottomLeftToolbarFrame
{
  if ([(BKFlowingBookLayoutConfiguration *)self configurationHasABottomLeftToolbar])
  {
    [(BKFlowingBookLayoutConfiguration *)self footerFrame];
    v4 = v3;
    v6 = v5;
    v8 = v7;
    v10 = v9;
    [(BKFlowingBookLayoutConfiguration *)self contentInsets];
    v12 = v11;
    [(BKFlowingBookLayoutConfiguration *)self toolbarButtonMargin];
    v14 = v12 - v13;
    v23.origin.x = v4;
    v23.origin.y = v6;
    v23.size.width = v8;
    v23.size.height = v10;
    v15 = CGRectGetWidth(v23) * 0.5 - v12;
    [(BKFlowingBookLayoutConfiguration *)self gutterWidth];
    v17 = v15 - v16 * 0.5;
    [(BKFlowingBookLayoutConfiguration *)self toolbarButtonMargin];
    v19 = v17 + v18 * 2.0;
    v24.origin.x = v4;
    v24.origin.y = v6;
    v24.size.width = v8;
    v24.size.height = v10;
    Height = CGRectGetHeight(v24);
    v25.origin.x = v4;
    v25.origin.y = v6;
    v25.size.width = v8;
    v25.size.height = v10;
    MinX = CGRectGetMinX(v25);
    v26.origin.x = v4;
    v26.origin.y = v6;
    v26.size.width = v8;
    v26.size.height = v10;
    MinY = CGRectGetMinY(v26);
    v27.origin.y = 0.0;
    v27.origin.x = v14;
    v27.size.width = v19;
    v27.size.height = Height;
    v28 = CGRectOffset(v27, MinX, MinY);
    return CGRectIntegral(v28);
  }

  else
  {
    result.origin.x = CGRectZero.origin.x;
    result.origin.y = CGRectZero.origin.y;
    result.size.width = CGRectZero.size.width;
    result.size.height = CGRectZero.size.height;
  }

  return result;
}

- (CGRect)bottomRightToolbarFrame
{
  [(BKFlowingBookLayoutConfiguration *)self contentInsets];
  v4 = v3;
  [(BKFlowingBookLayoutConfiguration *)self footerFrame];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  if ([(BKFlowingBookLayoutConfiguration *)self configurationHasABottomLeftToolbar])
  {
    [(BKFlowingBookLayoutConfiguration *)self footerFrame];
    v14 = v13;
    [(BKFlowingBookLayoutConfiguration *)self gutterWidth];
    v16 = (v15 + v14) * 0.5;
    [(BKFlowingBookLayoutConfiguration *)self toolbarButtonMargin];
    v18 = v16 - v17;
    v25.origin.x = v6;
    v25.origin.y = v8;
    v25.size.width = v10;
    v25.size.height = v12;
    MinY = CGRectGetMinY(v25);
    v26.origin.x = v6;
    v26.origin.y = v8;
    v26.size.width = v10;
    v26.size.height = v12;
    v20 = CGRectGetWidth(v26) * 0.5 - v4;
    [(BKFlowingBookLayoutConfiguration *)self gutterWidth];
    v22 = v20 - v21 * 0.5;
    [(BKFlowingBookLayoutConfiguration *)self toolbarButtonMargin];
    v24 = v22 + v23 * 2.0;
    v27.origin.x = v6;
    v27.origin.y = v8;
    v27.size.width = v10;
    v27.size.height = v12;
    v28.size.height = CGRectGetHeight(v27);
    v28.origin.x = v18;
    v28.origin.y = MinY;
    v28.size.width = v24;
    return CGRectIntegral(v28);
  }

  else
  {
    [(BKFlowingBookLayoutConfiguration *)self bottomFullWidthToolbarFrame];
  }

  return result;
}

- (CGRect)bottomFullWidthToolbarFrame
{
  [(BKFlowingBookLayoutConfiguration *)self contentInsets];
  v4 = v3;
  v6 = v5;
  [(BKFlowingBookLayoutConfiguration *)self footerFrame];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  if ([(BKFlowingBookLayoutConfiguration *)self isScroll])
  {
    v33.origin.x = v8;
    v33.origin.y = v10;
    v33.size.width = v12;
    v33.size.height = v14;
    MinX = CGRectGetMinX(v33);
    v34.origin.x = v8;
    v34.origin.y = v10;
    v34.size.width = v12;
    v34.size.height = v14;
    MinY = CGRectGetMinY(v34);
    v17 = [(BKFlowingBookLayoutConfiguration *)self environment];
    [v17 size];
    width = v18;
    v35.origin.x = v8;
    v35.origin.y = v10;
    v35.size.width = v12;
    v35.size.height = v14;
    Height = CGRectGetHeight(v35);
  }

  else
  {
    [(BKFlowingBookLayoutConfiguration *)self toolbarButtonMargin];
    v22 = v4 - v21;
    v36.origin.x = v8;
    v36.origin.y = v10;
    v36.size.width = v12;
    v36.size.height = v14;
    v23 = CGRectGetWidth(v36) - v4 - v6;
    [(BKFlowingBookLayoutConfiguration *)self toolbarButtonMargin];
    v25 = v23 + v24 * 2.0;
    v37.origin.x = v8;
    v37.origin.y = v10;
    v37.size.width = v12;
    v37.size.height = v14;
    v26 = CGRectGetHeight(v37);
    v38.origin.x = v8;
    v38.origin.y = v10;
    v38.size.width = v12;
    v38.size.height = v14;
    v27 = CGRectGetMinX(v38);
    v39.origin.x = v8;
    v39.origin.y = v10;
    v39.size.width = v12;
    v39.size.height = v14;
    v28 = CGRectGetMinY(v39);
    v40.origin.y = 0.0;
    v40.origin.x = v22;
    v40.size.width = v25;
    v40.size.height = v26;
    v41 = CGRectOffset(v40, v27, v28);
    MinX = v41.origin.x;
    MinY = v41.origin.y;
    width = v41.size.width;
    Height = v41.size.height;
  }

  v29 = MinX;
  v30 = MinY;
  v31 = width;
  v32 = Height;
  result.size.height = v32;
  result.size.width = v31;
  result.origin.y = v30;
  result.origin.x = v29;
  return result;
}

- (CGRect)bottomBackgoundBarFrame
{
  [(BKFlowingBookLayoutConfiguration *)self footerFrame];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = [(BKFlowingBookLayoutConfiguration *)self environment];
  [v11 size];
  v13 = v12;
  v19.origin.x = v4;
  v19.origin.y = v6;
  v19.size.width = v8;
  v19.size.height = v10;
  v14 = v13 - CGRectGetMinY(v19);

  v15 = v4;
  v16 = v6;
  v17 = v8;
  v18 = v14;
  result.size.height = v18;
  result.size.width = v17;
  result.origin.y = v16;
  result.origin.x = v15;
  return result;
}

- (CGRect)hiddenBottomLeftToolbarFrame
{
  [(BKFlowingBookLayoutConfiguration *)self bottomLeftToolbarFrame];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  if (![(BKFlowingBookLayoutConfiguration *)self isScroll])
  {
    v16.origin.x = v4;
    v16.origin.y = v6;
    v16.size.width = v8;
    v16.size.height = v10;
    if (!CGRectIsEmpty(v16))
    {
      [(BKFlowingBookLayoutConfiguration *)self scrubberHeight];
      v6 = v6 + v11 * -0.5;
    }
  }

  v12 = v4;
  v13 = v6;
  v14 = v8;
  v15 = v10;
  result.size.height = v15;
  result.size.width = v14;
  result.origin.y = v13;
  result.origin.x = v12;
  return result;
}

- (CGRect)hiddenBottomRightToolbarFrame
{
  [(BKFlowingBookLayoutConfiguration *)self bottomRightToolbarFrame];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  if (![(BKFlowingBookLayoutConfiguration *)self isScroll])
  {
    v16.origin.x = v4;
    v16.origin.y = v6;
    v16.size.width = v8;
    v16.size.height = v10;
    if (!CGRectIsEmpty(v16))
    {
      [(BKFlowingBookLayoutConfiguration *)self scrubberHeight];
      v6 = v6 + v11 * -0.5;
    }
  }

  v12 = v4;
  v13 = v6;
  v14 = v8;
  v15 = v10;
  result.size.height = v15;
  result.size.width = v14;
  result.origin.y = v13;
  result.origin.x = v12;
  return result;
}

- (CGRect)scrubberFrame
{
  v3 = [(BKFlowingBookLayoutConfiguration *)self environment];
  [(BKFlowingBookLayoutConfiguration *)self _scrubberFrameHorizontalOriginY];
  [(BKFlowingBookLayoutConfiguration *)self layout];
  [(BKFlowingBookLayoutConfiguration *)self headerToolbarHeight];
  [(BKFlowingBookLayoutConfiguration *)self footerToolbarHeight];
  [(BKFlowingBookLayoutConfiguration *)self scrubberLeftRightInset];
  [(BKFlowingBookLayoutConfiguration *)self scrubberVerticalInset];
  [(BKFlowingBookLayoutConfiguration *)self scrubberWidth];
  [(BKFlowingBookLayoutConfiguration *)self scrubberHeight];
  BKScrubberFrame();
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  v12 = v5;
  v13 = v7;
  v14 = v9;
  v15 = v11;
  result.size.height = v15;
  result.size.width = v14;
  result.origin.y = v13;
  result.origin.x = v12;
  return result;
}

- (double)scrubberCalloutWidth
{
  v3 = [(BKFlowingBookLayoutConfiguration *)self environment];
  v4 = [v3 isCompactWidth];

  if (!v4)
  {
    return 403.0;
  }

  if ([(BKFlowingBookLayoutConfiguration *)self isScroll])
  {
    v5 = [(BKFlowingBookLayoutConfiguration *)self environment];
    [v5 size];
    v7 = v6 + -60.0;
    v8 = [(BKFlowingBookLayoutConfiguration *)self environment];
    [v8 safeAreaInsets];
    v10 = v7 - v9;
    v11 = [(BKFlowingBookLayoutConfiguration *)self environment];
    [v11 safeAreaInsets];
    v13 = v10 - v12;
  }

  else
  {
    [(BKFlowingBookLayoutConfiguration *)self scrubberFrame];
    return v14;
  }

  return v13;
}

- (BOOL)_useCompactStrings
{
  v3 = [(BKFlowingBookLayoutConfiguration *)self environment];
  if ([v3 isCompactWidth])
  {

LABEL_8:
    LOBYTE(v7) = 1;
    return v7;
  }

  [(BKFlowingBookLayoutConfiguration *)self contentLayoutSize];
  v5 = v4;
  v6 = kIMConfigurationSize_megaPhone;

  if (v5 <= v6)
  {
    goto LABEL_8;
  }

  v7 = isPhone();
  if (v7)
  {

    LOBYTE(v7) = [(BKFlowingBookLayoutConfiguration *)self contentHasSpreadPages];
  }

  return v7;
}

- (NSString)lastPageInChapterString
{
  v2 = [(BKFlowingBookLayoutConfiguration *)self _useCompactStrings];
  v3 = AEBundle();
  v4 = v3;
  if (v2)
  {
    v5 = @"Last page";
  }

  else
  {
    v5 = @"Last page in this chapter";
  }

  v6 = [v3 localizedStringForKey:v5 value:&stru_1E7188 table:0];

  return v6;
}

- (id)singularPagesLeftInChapterWithRemainingPageCount:(unint64_t)a3
{
  v4 = [NSNumberFormatter imaxLocalizedUnsignedInteger:a3 usesGroupingSeparator:0];
  LODWORD(self) = [(BKFlowingBookLayoutConfiguration *)self _useCompactStrings];
  v5 = AEBundle();
  v6 = v5;
  if (self)
  {
    v7 = @"%@ page left";
  }

  else
  {
    v7 = @"%@ page left in this chapter";
  }

  v8 = [v5 localizedStringForKey:v7 value:&stru_1E7188 table:0];

  v9 = [NSString stringWithFormat:v8, v4];

  return v9;
}

- (id)pluralPagesLeftInChapterWithRemainingPageCount:(unint64_t)a3
{
  v4 = [NSNumberFormatter imaxLocalizedUnsignedInteger:a3 usesGroupingSeparator:0];
  LODWORD(self) = [(BKFlowingBookLayoutConfiguration *)self _useCompactStrings];
  v5 = AEBundle();
  v6 = v5;
  if (self)
  {
    v7 = @"%@ pages left";
  }

  else
  {
    v7 = @"%@ pages left in this chapter";
  }

  v8 = [v5 localizedStringForKey:v7 value:&stru_1E7188 table:0];

  v9 = [NSString stringWithFormat:v8, v4];

  return v9;
}

- (id)backToPageWithPageTitle:(id)a3
{
  v4 = a3;
  LODWORD(self) = [(BKFlowingBookLayoutConfiguration *)self _useCompactStrings];
  v5 = AEBundle();
  v6 = v5;
  if (self)
  {
    v7 = @"Back to p.%@";
  }

  else
  {
    v7 = @"Back to page %@";
  }

  v8 = [v5 localizedStringForKey:v7 value:&stru_1E7188 table:0];

  v9 = [NSString stringWithFormat:v8, v4];

  return v9;
}

- (id)goToPageWithPageTitle:(id)a3
{
  v4 = a3;
  LODWORD(self) = [(BKFlowingBookLayoutConfiguration *)self _useCompactStrings];
  v5 = AEBundle();
  v6 = v5;
  if (self)
  {
    v7 = @"Go to p.%@";
  }

  else
  {
    v7 = @"Go to page %@";
  }

  v8 = [v5 localizedStringForKey:v7 value:&stru_1E7188 table:0];

  v9 = [NSString stringWithFormat:v8, v4];

  return v9;
}

- (BOOL)hasSpreadPages
{
  if ([(BKFlowingBookLayoutConfiguration *)self showingTOC])
  {

    return [(BKFlowingBookLayoutConfiguration *)self tocHasSpreadPages];
  }

  else
  {

    return [(BKFlowingBookLayoutConfiguration *)self contentHasSpreadPages];
  }
}

- (BOOL)usePaginationLineGrid
{
  v2 = +[NSUserDefaults standardUserDefaults];
  v3 = [v2 BOOLForKey:@"BKEpubPaginationLineGridEnabled"];

  return v3;
}

- (CGSize)__layoutSizeForSpreadPages:(BOOL)a3
{
  v3 = a3;
  [(BKFlowingBookLayoutConfiguration *)self contentContainerFrame];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  [(BKFlowingBookLayoutConfiguration *)self contentInsets];
  v14 = v6 + v13;
  v16 = v8 + v15;
  v18 = v10 - (v13 + v17);
  Height = v12 - (v15 + v19);
  if ([(BKFlowingBookLayoutConfiguration *)self _shouldLayoutRectInsetContentRectBySafeAreaInsets])
  {
    v21 = [(BKFlowingBookLayoutConfiguration *)self environment];
    [v21 safeAreaInsets];
    v14 = v14 + v22;
    v16 = v16 + v23;
    v18 = v18 - (v22 + v24);
    Height = Height - (v23 + v25);
  }

  if (v3)
  {
    v32.origin.x = v14;
    v32.origin.y = v16;
    v32.size.width = v18;
    v32.size.height = Height;
    Width = CGRectGetWidth(v32);
    [(BKFlowingBookLayoutConfiguration *)self gutterWidth];
    v28 = round((Width - v27) * 0.5);
    v33.origin.x = v14;
    v33.origin.y = v16;
    v33.size.width = v18;
    v33.size.height = Height;
    Height = CGRectGetHeight(v33);
    v18 = v28;
  }

  v29 = v18;
  v30 = Height;
  result.height = v30;
  result.width = v29;
  return result;
}

- (CGSize)layoutSize
{
  v3 = [(BKFlowingBookLayoutConfiguration *)self hasSpreadPages];

  [(BKFlowingBookLayoutConfiguration *)self __layoutSizeForSpreadPages:v3];
  result.height = v5;
  result.width = v4;
  return result;
}

- (CGSize)contentLayoutSize
{
  [(BKFlowingBookLayoutConfiguration *)self __layoutSizeForSpreadPages:[(BKFlowingBookLayoutConfiguration *)self contentHasSpreadPages]];
  v5 = v3;
  v6 = v4;
  if (*&qword_22D000 != v3 || *&qword_22D008 != v4)
  {
    qword_22D000 = *&v3;
    qword_22D008 = *&v4;
    v8 = BKSemanticLayoutInternalLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v16.width = v5;
      v16.height = v6;
      v9 = NSStringFromCGSize(v16);
      v12 = 138412546;
      v13 = v9;
      v14 = 2112;
      v15 = self;
      _os_log_impl(&dword_0, v8, OS_LOG_TYPE_DEFAULT, "contentLayoutSize: %@. %@", &v12, 0x16u);
    }
  }

  v10 = v5;
  v11 = v6;
  result.height = v11;
  result.width = v10;
  return result;
}

- (CGRect)insetTOCorCoverViewFromContentContainerFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8 = [(BKFlowingBookLayoutConfiguration *)self environment];
  [v8 safeAreaInsets];
  v10 = v9;
  v12 = v11;

  [(BKFlowingBookLayoutConfiguration *)self headerToolbarHeight];
  v14 = v10 + v13;
  [(BKFlowingBookLayoutConfiguration *)self footerToolbarHeight];
  v16 = v12 + v15;
  v17 = x + 0.0;
  v18 = y + v14;
  v19 = height - (v14 + v16);
  v20 = width;
  result.size.height = v19;
  result.size.width = v20;
  result.origin.y = v18;
  result.origin.x = v17;
  return result;
}

- (double)be_pageLength
{
  [(BKFlowingBookLayoutConfiguration *)self contentLayoutSize];
  v4 = v3;
  v6 = v5;
  v7 = [(BKFlowingBookLayoutConfiguration *)self layout];
  result = 0.0;
  if (v7 <= 1)
  {
    if (v7)
    {
      if (v7 != 1)
      {
        return result;
      }

      return v4;
    }

LABEL_10:
    v9 = _AEBookPluginsPageTurnLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = [NSNumber numberWithUnsignedInteger:[(BKFlowingBookLayoutConfiguration *)self layout]];
      v11 = 138412290;
      v12 = v10;
      _os_log_impl(&dword_0, v9, OS_LOG_TYPE_ERROR, "Unexpected layout configuration %@ -- returning pageLength for paginated layout", &v11, 0xCu);
    }

    return v4;
  }

  switch(v7)
  {
    case 4:
      goto LABEL_10;
    case 3:
      return v4;
    case 2:
      return v6;
  }

  return result;
}

@end