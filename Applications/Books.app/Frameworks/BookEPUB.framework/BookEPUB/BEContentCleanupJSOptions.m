@interface BEContentCleanupJSOptions
+ (id)expandedContentOptions;
+ (id)fixedLayoutOptionsWithLanguage:(id)a3;
- (BEContentCleanupJSOptions)init;
- (BEContentCleanupJSOptions)initWithMode:(unint64_t)a3 useNewTextStyling:(BOOL)a4 fontFamily:(id)a5 language:(id)a6 respectImageSizeClass:(id)a7 respectImageSizeClassIsPrefix:(BOOL)a8 hasBuiltInFonts:(BOOL)a9 justification:(unint64_t)a10 fontWeight:(unint64_t)a11 overrideLineHeight:(BOOL)a12 overrideLetterSpacing:(BOOL)a13 overrideWordSpacing:(BOOL)a14 readingMode:(unint64_t)a15;
- (NSString)jsonRepresentation;
- (id)_dictionaryRepresentation;
- (id)description;
@end

@implementation BEContentCleanupJSOptions

- (BEContentCleanupJSOptions)init
{
  BYTE2(v4) = 0;
  LOWORD(v4) = 0;
  LOBYTE(v3) = 0;
  return [BEContentCleanupJSOptions initWithMode:"initWithMode:useNewTextStyling:fontFamily:language:respectImageSizeClass:respectImageSizeClassIsPrefix:hasBuiltInFonts:justification:fontWeight:overrideLineHeight:overrideLetterSpacing:overrideWordSpacing:readingMode:" useNewTextStyling:0 fontFamily:0 language:&stru_33E120 respectImageSizeClass:&stru_33E120 respectImageSizeClassIsPrefix:&stru_33E120 hasBuiltInFonts:0 justification:v3 fontWeight:0 overrideLineHeight:0 overrideLetterSpacing:v4 overrideWordSpacing:0 readingMode:?];
}

- (BEContentCleanupJSOptions)initWithMode:(unint64_t)a3 useNewTextStyling:(BOOL)a4 fontFamily:(id)a5 language:(id)a6 respectImageSizeClass:(id)a7 respectImageSizeClassIsPrefix:(BOOL)a8 hasBuiltInFonts:(BOOL)a9 justification:(unint64_t)a10 fontWeight:(unint64_t)a11 overrideLineHeight:(BOOL)a12 overrideLetterSpacing:(BOOL)a13 overrideWordSpacing:(BOOL)a14 readingMode:(unint64_t)a15
{
  v21 = a5;
  v22 = a6;
  v23 = a7;
  v33.receiver = self;
  v33.super_class = BEContentCleanupJSOptions;
  v24 = [(BEContentCleanupJSOptions *)&v33 init];
  v25 = v24;
  if (v24)
  {
    v24->_mode = a3;
    v24->_useNewTextStyling = a4;
    v26 = [v21 copy];
    fontFamily = v25->_fontFamily;
    v25->_fontFamily = v26;

    v28 = [v22 copy];
    language = v25->_language;
    v25->_language = v28;

    v30 = [v23 copy];
    respectImageSizeClass = v25->_respectImageSizeClass;
    v25->_respectImageSizeClass = v30;

    v25->_respectImageSizeClassIsPrefix = a8;
    v25->_hasBuiltInFonts = a9;
    v25->_justification = a10;
    v25->_fontWeight = a11;
    v25->_overrideLineHeight = a12;
    v25->_overrideLetterSpacing = a13;
    v25->_overrideWordSpacing = a14;
    v25->_readingMode = a15;
  }

  return v25;
}

+ (id)fixedLayoutOptionsWithLanguage:(id)a3
{
  v3 = a3;
  BYTE2(v7) = 0;
  LOWORD(v7) = 0;
  LOBYTE(v6) = 0;
  v4 = [BEContentCleanupJSOptions initWithMode:"initWithMode:useNewTextStyling:fontFamily:language:respectImageSizeClass:respectImageSizeClassIsPrefix:hasBuiltInFonts:justification:fontWeight:overrideLineHeight:overrideLetterSpacing:overrideWordSpacing:readingMode:" useNewTextStyling:3 fontFamily:0 language:0 respectImageSizeClass:v3 respectImageSizeClassIsPrefix:0 hasBuiltInFonts:0 justification:v6 fontWeight:0 overrideLineHeight:0 overrideLetterSpacing:v7 overrideWordSpacing:0 readingMode:?];

  return v4;
}

+ (id)expandedContentOptions
{
  BYTE2(v5) = 0;
  LOWORD(v5) = 0;
  LOBYTE(v4) = 0;
  v2 = [BEContentCleanupJSOptions initWithMode:"initWithMode:useNewTextStyling:fontFamily:language:respectImageSizeClass:respectImageSizeClassIsPrefix:hasBuiltInFonts:justification:fontWeight:overrideLineHeight:overrideLetterSpacing:overrideWordSpacing:readingMode:" useNewTextStyling:1 fontFamily:0 language:0 respectImageSizeClass:0 respectImageSizeClassIsPrefix:0 hasBuiltInFonts:0 justification:v4 fontWeight:0 overrideLineHeight:0 overrideLetterSpacing:v5 overrideWordSpacing:0 readingMode:?];

  return v2;
}

- (id)_dictionaryRepresentation
{
  v3 = objc_alloc_init(NSMutableDictionary);
  v4 = [NSNumber numberWithBool:self->_useNewTextStyling];
  [v3 setObject:v4 forKeyedSubscript:@"useNewTextStyling"];

  if (self->_useNewTextStyling)
  {
    v5 = [NSNumber numberWithBool:[(BEContentCleanupJSOptions *)self overrideFontFamily]];
    [v3 setObject:v5 forKeyedSubscript:@"overrideFontFamily"];

    v6 = [NSNumber numberWithBool:[(BEContentCleanupJSOptions *)self hasBuiltInFonts]];
    v7 = @"hasBuiltInFonts";
    v8 = v3;
    v9 = v6;
LABEL_5:
    [v8 setObject:v9 forKeyedSubscript:v7];

    goto LABEL_7;
  }

  if ([(BEContentCleanupJSOptions *)self overrideFontFamily])
  {
    v10 = [(NSString *)self->_fontFamily be_sanitizedFontFamilyName];
    v6 = [NSString stringWithFormat:@"iBooks_%@", v10];

    [v3 setObject:v6 forKeyedSubscript:@"fontFamily"];
    v9 = &__kCFBooleanTrue;
    v7 = @"customFontFamily";
    v8 = v3;
    goto LABEL_5;
  }

  [v3 setObject:&__kCFBooleanFalse forKeyedSubscript:@"customFontFamily"];
LABEL_7:
  if ([(NSString *)self->_language length])
  {
    [v3 setObject:self->_language forKeyedSubscript:@"language"];
  }

  if ([(NSString *)self->_respectImageSizeClass length])
  {
    [v3 setObject:self->_respectImageSizeClass forKeyedSubscript:@"respectImageSizeClass"];
  }

  v11 = [NSNumber numberWithBool:self->_respectImageSizeClassIsPrefix];
  [v3 setObject:v11 forKeyedSubscript:@"respectImageSizeClassIsPrefix"];

  if (self->_useNewTextStyling)
  {
    v12 = [NSNumber numberWithBool:[(BEContentCleanupJSOptions *)self overrideTextAlign]];
    [v3 setObject:v12 forKeyedSubscript:@"overrideTextAlign"];

    v13 = [NSNumber numberWithBool:[(BEContentCleanupJSOptions *)self overrideFontWeight]];
    [v3 setObject:v13 forKeyedSubscript:@"overrideFontWeight"];

    v14 = [NSNumber numberWithBool:[(BEContentCleanupJSOptions *)self overrideLineHeight]];
    [v3 setObject:v14 forKeyedSubscript:@"overrideLineHeight"];

    v15 = [NSNumber numberWithBool:[(BEContentCleanupJSOptions *)self overrideLetterSpacing]];
    [v3 setObject:v15 forKeyedSubscript:@"overrideLetterSpacing"];

    v16 = [NSNumber numberWithBool:[(BEContentCleanupJSOptions *)self overrideWordSpacing]];
    [v3 setObject:v16 forKeyedSubscript:@"overrideWordSpacing"];

    goto LABEL_23;
  }

  justification = self->_justification;
  if (justification == 1)
  {
    v18 = &__kCFBooleanTrue;
  }

  else
  {
    if (justification != 2)
    {
      goto LABEL_18;
    }

    v18 = &__kCFBooleanFalse;
  }

  [v3 setObject:v18 forKeyedSubscript:@"justification"];
LABEL_18:
  fontWeight = self->_fontWeight;
  if (fontWeight == 2)
  {
    v20 = &__kCFBooleanTrue;
  }

  else
  {
    if (fontWeight != 1)
    {
      goto LABEL_23;
    }

    v20 = &__kCFBooleanFalse;
  }

  [v3 setObject:v20 forKeyedSubscript:@"boldWeight"];
LABEL_23:
  v21 = [NSNumber numberWithUnsignedInteger:self->_mode];
  [v3 setObject:v21 forKeyedSubscript:@"mode"];

  v22 = [NSNumber numberWithUnsignedInteger:self->_readingMode];
  [v3 setObject:v22 forKeyedSubscript:@"readingMode"];

  return v3;
}

- (NSString)jsonRepresentation
{
  v2 = [(BEContentCleanupJSOptions *)self _dictionaryRepresentation];
  v6 = 0;
  v3 = [NSJSONSerialization dataWithJSONObject:v2 options:0 error:&v6];

  if ([v3 length])
  {
    v4 = [[NSString alloc] initWithData:v3 encoding:4];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)description
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = [(BEContentCleanupJSOptions *)self mode];
  if (v5 - 1 > 2)
  {
    v6 = @"unknown";
  }

  else
  {
    v6 = off_3289D0[v5 - 1];
  }

  v30 = v6;
  v7 = @"NO";
  if ([(BEContentCleanupJSOptions *)self useNewTextStyling])
  {
    v8 = @"YES";
  }

  else
  {
    v8 = @"NO";
  }

  v28 = v8;
  v33 = [(BEContentCleanupJSOptions *)self fontFamily];
  v32 = [v33 length];
  if (v32)
  {
    v9 = [(BEContentCleanupJSOptions *)self fontFamily];
  }

  else
  {
    v9 = @"original";
  }

  v29 = [(BEContentCleanupJSOptions *)self language];
  v27 = [v29 length];
  if (v27)
  {
    v10 = [(BEContentCleanupJSOptions *)self language];
  }

  else
  {
    v10 = @"{unset}";
  }

  v11 = [(BEContentCleanupJSOptions *)self respectImageSizeClass];
  v12 = [v11 length];
  v34 = v4;
  v31 = v9;
  v26 = v10;
  if (v12)
  {
    v25 = [(BEContentCleanupJSOptions *)self respectImageSizeClass];
  }

  else
  {
    v25 = @"{unset}";
  }

  v13 = @"NO";
  if ([(BEContentCleanupJSOptions *)self respectImageSizeClassIsPrefix])
  {
    v7 = @"YES";
  }

  v14 = [(BEContentCleanupJSOptions *)self justification];
  v15 = @"full-justify";
  if (v14 != 1)
  {
    v15 = @"unset";
  }

  if (v14 == 2)
  {
    v15 = @"no-justify";
  }

  v16 = v15;
  v17 = [(BEContentCleanupJSOptions *)self fontWeight];
  v18 = @"light";
  if (v17 != 1)
  {
    v18 = @"unset";
  }

  if (v17 == 2)
  {
    v18 = @"heavy";
  }

  v19 = v18;
  if ([(BEContentCleanupJSOptions *)self overrideLineHeight])
  {
    v20 = @"YES";
  }

  else
  {
    v20 = @"NO";
  }

  if ([(BEContentCleanupJSOptions *)self overrideLetterSpacing])
  {
    v21 = @"YES";
  }

  else
  {
    v21 = @"NO";
  }

  if ([(BEContentCleanupJSOptions *)self overrideWordSpacing])
  {
    v13 = @"YES";
  }

  v22 = [NSNumber numberWithUnsignedInteger:[(BEContentCleanupJSOptions *)self readingMode]];
  v23 = [NSString stringWithFormat:@"<%@ %p mode=%@ useNewTextStyling=%@ fontFamily=%@ language=%@respectImageSizeClass=%@ respectImageSizeClassIsPrefix=%@ justification=%@ fontWeight=%@ overrideLineHeight=%@ overrideLetterSpacing=%@ overrideWordSpacing=%@ readingMode=%@>", v34, self, v30, v28, v31, v26, v25, v7, v16, v19, v20, v21, v13, v22];

  if (v12)
  {
  }

  if (v27)
  {
  }

  if (v32)
  {
  }

  return v23;
}

@end