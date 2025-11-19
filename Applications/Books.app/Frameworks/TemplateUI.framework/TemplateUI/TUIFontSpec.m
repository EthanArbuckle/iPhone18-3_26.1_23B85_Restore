@interface TUIFontSpec
+ (BOOL)determineUseFontFallbackFromLanguage:(id)a3;
+ (TUIFontSpec)fontSpecWithPostscriptName:(id)a3 size:(double)a4;
+ (double)_weightFromString:(id)a3;
+ (id)defaultFontSpec;
- (BOOL)isEqual:(id)a3;
- (NSDictionary)fontAttributes;
- (TUIFontSpec)fontSpecWithAdditionalLeading:(double)a3;
- (TUIFontSpec)fontSpecWithCaps:(unint64_t)a3;
- (TUIFontSpec)fontSpecWithColor:(id)a3;
- (TUIFontSpec)fontSpecWithDesign:(id)a3;
- (TUIFontSpec)fontSpecWithFamily:(id)a3;
- (TUIFontSpec)fontSpecWithLeading:(double)a3;
- (TUIFontSpec)fontSpecWithMaxContentSize:(id)a3;
- (TUIFontSpec)fontSpecWithMaxPointSize:(double)a3;
- (TUIFontSpec)fontSpecWithMinContentSize:(id)a3;
- (TUIFontSpec)fontSpecWithMinPointSize:(double)a3;
- (TUIFontSpec)fontSpecWithMonospacedDigits:(BOOL)a3;
- (TUIFontSpec)fontSpecWithPointSize:(double)a3;
- (TUIFontSpec)fontSpecWithScale:(double)a3;
- (TUIFontSpec)fontSpecWithTextStyle:(id)a3;
- (TUIFontSpec)fontSpecWithTracking:(double)a3;
- (TUIFontSpec)fontSpecWithWeight:(double)a3;
- (TUIFontSpec)init;
- (TUIFontSpec)initWithOther:(id)a3;
- (id)_mappedSpec:(BOOL)a3 traitCollection:(id)a4;
- (id)_resolvedFontSpecWithTraitCollection:(id)a3;
- (id)attributesForAttributedStringCentered:(BOOL)a3 truncated:(BOOL)a4 ignoreLeading:(BOOL)a5 lineSpacing:(double)a6;
- (id)font;
- (id)mappedSpecIfNeededWithEnvironment:(id)a3;
- (id)mappedSpecIfNeededWithTraitCollection:(id)a3;
- (unint64_t)hash;
@end

@implementation TUIFontSpec

+ (BOOL)determineUseFontFallbackFromLanguage:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (qword_2E6820 == -1)
  {
    if (!v3)
    {
LABEL_6:
      LOBYTE(v7) = 1;
      goto LABEL_7;
    }
  }

  else
  {
    sub_19BF90();
    if (!v4)
    {
      goto LABEL_6;
    }
  }

  v5 = [NSLocale componentsFromLocaleIdentifier:v4];
  v6 = [v5 objectForKeyedSubscript:NSLocaleLanguageCode];

  if (!v6)
  {
    goto LABEL_6;
  }

  v7 = [qword_2E6818 containsObject:v6] ^ 1;

LABEL_7:
  v8 = +[NSUserDefaults standardUserDefaults];
  v9 = [v8 BOOLForKey:@"TUIForceFallbackFont"];

  return (v9 | v7) & 1;
}

+ (double)_weightFromString:(id)a3
{
  v3 = qword_2E6830;
  v4 = a3;
  if (v3 != -1)
  {
    sub_19BFA4();
  }

  v5 = [v4 lowercaseString];

  if (v5 && ([qword_2E6828 objectForKeyedSubscript:v5], (v6 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v7 = v6;
    [v6 floatValue];
    v9 = v8;
  }

  else
  {
    v9 = UIFontWeightRegular;
  }

  return v9;
}

+ (TUIFontSpec)fontSpecWithPostscriptName:(id)a3 size:(double)a4
{
  v6 = a3;
  v7 = objc_alloc_init(TUIFontSpec);
  v25 = 0x7FF8000000000000;
  v8 = sub_16FDF8();
  v9 = sub_16FAFC(v6, &v25, v8);
  v10 = v9;
  if (v9)
  {
    v11 = v9;
  }

  else
  {
    v11 = v6;
  }

  v12 = v11;

  v13 = @"System-";
  if ([v12 hasPrefix:@"System-"])
  {
    v14 = &kCTFontUIFontDesignDefault;
LABEL_10:
    v15 = [v12 substringFromIndex:{-[__CFString length](v13, "length")}];
    [a1 _weightFromString:v15];
    v17 = v16;

    v18 = *v14;
    v12 = 0;
    goto LABEL_11;
  }

  v13 = @"SystemSerif-";
  if ([v12 hasPrefix:@"SystemSerif-"])
  {
    v14 = &kCTFontUIFontDesignSerif;
    goto LABEL_10;
  }

  v13 = @"SystemRounded-";
  if ([v12 hasPrefix:@"SystemRounded-"])
  {
    v14 = &kCTFontUIFontDesignRounded;
    goto LABEL_10;
  }

  v18 = 0;
  v17 = UIFontWeightRegular;
LABEL_11:
  v19 = [v12 copy];
  postscriptName = v7->_postscriptName;
  v7->_postscriptName = v19;

  v7->_pointSize = a4;
  v21 = v25;
  v7->_leading = 0.0;
  v7->_weight = v17;
  *&v7->_tracking = v21;
  fontDesignTrait = v7->_fontDesignTrait;
  v7->_fontDesignTrait = v18;
  v23 = v18;

  *&v7->_specified |= 3u;

  return v7;
}

- (TUIFontSpec)init
{
  v3.receiver = self;
  v3.super_class = TUIFontSpec;
  result = [(TUIFontSpec *)&v3 init];
  if (result)
  {
    result->_weight = UIFontWeightRegular;
    result->_tracking = NAN;
    *&result->_scale = xmmword_24D590;
    *&result->_specified = 0;
  }

  return result;
}

- (TUIFontSpec)initWithOther:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = TUIFontSpec;
  v5 = [(TUIFontSpec *)&v8 init];
  v6 = v5;
  if (v4 && v5)
  {
    objc_storeStrong(&v5->_postscriptName, v4[10]);
    *&v6->_pointSize = v4[8];
    *&v6->_tracking = v4[16];
    *&v6->_leading = v4[6];
    *&v6->_additionalLeading = v4[7];
    v6->_caps = v4[14];
    *&v6->_weight = v4[15];
    *(&v6->_specified + 1) = *(v4 + 73);
    objc_storeStrong(&v6->_foregroundColor, v4[17]);
    objc_storeStrong(&v6->_fontDesignTrait, v4[11]);
    objc_storeStrong(&v6->_fontFamilyName, v4[12]);
    objc_storeStrong(&v6->_textStyle, v4[13]);
    *&v6->_maxPointSize = v4[4];
    objc_storeStrong(&v6->_maxContentSize, v4[2]);
    *&v6->_minPointSize = v4[3];
    objc_storeStrong(&v6->_minContentSize, v4[1]);
    *&v6->_scale = v4[5];
    *&v6->_specified = *(v4 + 72);
  }

  return v6;
}

- (TUIFontSpec)fontSpecWithScale:(double)a3
{
  v3 = self;
  if (a3 != 1.0 && a3 != 0.0)
  {
    v4 = [[TUIFontSpec alloc] initWithOther:v3];

    v4->_pointSize = v4->_pointSize * a3;
    *&v4->_scale = vmulq_n_f64(*&v4->_scale, a3);
    v3 = v4;
  }

  return v3;
}

- (id)mappedSpecIfNeededWithEnvironment:(id)a3
{
  v4 = a3;
  v5 = [v4 useFontFallback];
  v6 = [v4 traitCollection];

  v7 = [(TUIFontSpec *)self _mappedSpec:v5 traitCollection:v6];

  return v7;
}

- (id)mappedSpecIfNeededWithTraitCollection:(id)a3
{
  v4 = a3;
  v5 = [(TUIFontSpec *)self _mappedSpec:sub_16FDF8() traitCollection:v4];

  return v5;
}

- (id)_mappedSpec:(BOOL)a3 traitCollection:(id)a4
{
  v4 = a3;
  v6 = a4;
  v7 = self;
  tracking = v7->_tracking;
  v8 = sub_16FAFC(v7->_postscriptName, &tracking, v4);
  if (!v8)
  {
    if (v4 && [(NSString *)v7->_fontDesignTrait isEqualToString:UIFontSystemFontDesignSerif])
    {
      v9 = [[TUIFontSpec alloc] initWithOther:v7];

      objc_storeStrong(&v9->_fontDesignTrait, UIFontSystemFontDesignDefault);
    }

    else
    {
      v9 = v7;
    }

    goto LABEL_14;
  }

  v9 = [[TUIFontSpec alloc] initWithOther:v7];

  if ([v8 hasPrefix:@"System-"])
  {
    postscriptName = v9->_postscriptName;
    v9->_postscriptName = 0;

    v11 = objc_opt_class();
    v12 = [v8 substringFromIndex:{objc_msgSend(@"System-", "length")}];
    [v11 _weightFromString:v12];
    v9->_weight = v13;

    v14 = &UIFontSystemFontDesignDefault;
  }

  else if ([v8 hasPrefix:@"SystemSerif-"])
  {
    v15 = v9->_postscriptName;
    v9->_postscriptName = 0;

    v16 = objc_opt_class();
    v17 = [v8 substringFromIndex:{objc_msgSend(@"SystemSerif-", "length")}];
    [v16 _weightFromString:v17];
    v9->_weight = v18;

    v14 = &UIFontSystemFontDesignSerif;
  }

  else
  {
    if (![v8 hasPrefix:@"SystemRounded-"])
    {
      objc_storeStrong(&v9->_postscriptName, v8);
      goto LABEL_13;
    }

    v19 = v9->_postscriptName;
    v9->_postscriptName = 0;

    v20 = objc_opt_class();
    v21 = [v8 substringFromIndex:{objc_msgSend(@"SystemRounded-", "length")}];
    [v20 _weightFromString:v21];
    v9->_weight = v22;

    v14 = &UIFontSystemFontDesignRounded;
  }

  objc_storeStrong(&v9->_fontDesignTrait, *v14);
  *&v9->_specified |= 1u;
LABEL_13:
  v9->_tracking = tracking;
LABEL_14:
  v23 = [(TUIFontSpec *)v9 _resolvedFontSpecWithTraitCollection:v6];

  return v23;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_postscriptName hash]^ self->_pointSize ^ self->_tracking ^ self->_leading ^ self->_additionalLeading ^ self->_caps ^ self->_weight;
  v4 = *(&self->_specified + 1);
  v5 = v4 ^ [(UIColor *)self->_foregroundColor hash];
  v6 = v5 ^ [(NSString *)self->_fontFamilyName hash];
  v7 = v6 ^ [(NSString *)self->_maxContentSize hash];
  v8 = v7 ^ [(NSString *)self->_fontDesignTrait hash];
  return v3 ^ v8 ^ [(NSString *)self->_textStyle hash]^ self->_minPointSize ^ self->_maxPointSize ^ (self->_scale * 1000.0);
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  if (v5 == objc_opt_class())
  {
    v6 = v4;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;
  v8 = v7;
  if (v7 == self)
  {
    goto LABEL_32;
  }

  if (!v7 || self->_specified != v7->_specified || (postscriptName = self->_postscriptName, postscriptName != v8->_postscriptName) && ![(NSString *)postscriptName isEqualToString:?]|| self->_pointSize != v8->_pointSize || !TUICGFloatIsEqualFloatOrBothNaN(self->_tracking, v8->_tracking) || !TUICGFloatIsEqualFloatOrBothNaN(self->_leading, v8->_leading) || self->_additionalLeading != v8->_additionalLeading || self->_caps != v8->_caps || self->_weight != v8->_weight || *(&self->_specified + 1) != *(&v8->_specified + 1) || (foregroundColor = self->_foregroundColor, foregroundColor != v8->_foregroundColor) && ![(UIColor *)foregroundColor isEqual:?]|| self->_scale != v8->_scale || self->_minPointSize != v8->_minPointSize || self->_maxPointSize != v8->_maxPointSize || (textStyle = self->_textStyle, textStyle != v8->_textStyle) && ![(NSString *)textStyle isEqualToString:?]|| (minContentSize = self->_minContentSize, minContentSize != v8->_minContentSize) && ![(NSString *)minContentSize isEqualToString:?]|| (maxContentSize = self->_maxContentSize, maxContentSize != v8->_maxContentSize) && ![(NSString *)maxContentSize isEqualToString:?]|| (fontFamilyName = self->_fontFamilyName, fontFamilyName != v8->_fontFamilyName) && ![(NSString *)fontFamilyName isEqualToString:?])
  {
    v16 = 0;
    goto LABEL_33;
  }

  fontDesignTrait = self->_fontDesignTrait;
  if (fontDesignTrait == v8->_fontDesignTrait)
  {
LABEL_32:
    v16 = 1;
    goto LABEL_33;
  }

  v16 = [(NSString *)fontDesignTrait isEqualToString:?];
LABEL_33:

  return v16;
}

- (id)font
{
  v3 = [(TUIFontSpec *)self fontAttributes];
  if (v3)
  {
    v4 = [UIFontDescriptor fontDescriptorWithFontAttributes:v3];
    v5 = [UIFont fontWithDescriptor:v4 size:self->_pointSize];

    if (!v5)
    {
      goto LABEL_15;
    }
  }

  else
  {
    if (*(&self->_specified + 1) == 1)
    {
      v6 = [UIFont monospacedDigitSystemFontOfSize:self->_pointSize weight:self->_weight];
    }

    else
    {
      pointSize = self->_pointSize;
      if (self->_postscriptName)
      {
        [UIFont fontWithName:pointSize size:?];
      }

      else
      {
        [UIFont systemFontOfSize:pointSize weight:self->_weight];
      }
      v6 = ;
    }

    v5 = v6;
    if (!v6)
    {
      goto LABEL_15;
    }
  }

  if (self->_caps == 3)
  {
    v8 = [v5 fontDescriptor];
    v21[0] = kCTFontFeatureTypeIdentifierKey;
    v21[1] = kCTFontFeatureSelectorIdentifierKey;
    v22[0] = &off_2754B8;
    v22[1] = &off_2754B8;
    v9 = [NSDictionary dictionaryWithObjects:v22 forKeys:v21 count:2];
    v23[0] = v9;
    v19 = kCTFontOpenTypeFeatureTag;
    v20 = @"smcp";
    v10 = [NSDictionary dictionaryWithObjects:&v20 forKeys:&v19 count:1];
    v23[1] = v10;
    v11 = [NSArray arrayWithObjects:v23 count:2];

    v12 = [v8 fontAttributes];
    v13 = [v12 mutableCopy];

    [v13 setObject:v11 forKeyedSubscript:UIFontDescriptorFeatureSettingsAttribute];
    v14 = [UIFontDescriptor fontDescriptorWithFontAttributes:v13];
    v15 = [UIFont fontWithDescriptor:v14 size:self->_pointSize];
    v16 = v15;
    if (v15)
    {
      v17 = v15;

      v5 = v17;
    }
  }

LABEL_15:

  return v5;
}

- (id)attributesForAttributedStringCentered:(BOOL)a3 truncated:(BOOL)a4 ignoreLeading:(BOOL)a5 lineSpacing:(double)a6
{
  v8 = a4;
  v9 = a3;
  v11 = [(TUIFontSpec *)self font];
  if (v11)
  {
    v12 = +[NSParagraphStyle defaultParagraphStyle];
    v13 = [v12 mutableCopy];

    [(TUIFontSpec *)self leading];
    if (!a5)
    {
      v15 = v14;
      if (v14 != 0.0)
      {
        [v13 setMinimumLineHeight:v14];
        [v13 setMaximumLineHeight:v15];
      }
    }

    if (v9)
    {
      [v13 setAlignment:1];
    }

    if (v8)
    {
      [v13 setLineBreakMode:4];
    }

    [v13 setLineSpacing:a6];
    v26[0] = v11;
    v25[0] = NSFontAttributeName;
    v25[1] = NSParagraphStyleAttributeName;
    v16 = [v13 copy];
    v26[1] = v16;
    v17 = [NSDictionary dictionaryWithObjects:v26 forKeys:v25 count:2];
    v18 = [NSMutableDictionary dictionaryWithDictionary:v17];

    v19 = [(TUIFontSpec *)self foregroundColor];

    if (v19)
    {
      v20 = [(TUIFontSpec *)self foregroundColor];
      [v18 setObject:v20 forKeyedSubscript:NSForegroundColorAttributeName];
    }

    v21 = self->_tracking * self->_pointSize / 1000.0;
    *&v21 = v21;
    v22 = [NSNumber numberWithFloat:v21];
    [v18 setObject:v22 forKeyedSubscript:NSKernAttributeName];
  }

  else
  {
    v18 = 0;
  }

  v23 = [[_TUIFontAttributes alloc] initWithAttributes:v18 caps:self->_caps];

  return v23;
}

+ (id)defaultFontSpec
{
  v2 = objc_alloc_init(TUIFontSpec);

  return v2;
}

- (TUIFontSpec)fontSpecWithFamily:(id)a3
{
  v4 = a3;
  v5 = [[TUIFontSpec alloc] initWithOther:self];
  postscriptName = v5->_postscriptName;
  v5->_postscriptName = 0;

  fontFamilyName = v5->_fontFamilyName;
  v5->_fontFamilyName = v4;
  v8 = v4;

  fontDesignTrait = v5->_fontDesignTrait;
  v5->_fontDesignTrait = 0;

  return v5;
}

- (TUIFontSpec)fontSpecWithDesign:(id)a3
{
  v4 = a3;
  v5 = [[TUIFontSpec alloc] initWithOther:self];
  postscriptName = v5->_postscriptName;
  v5->_postscriptName = 0;

  fontFamilyName = v5->_fontFamilyName;
  v5->_fontFamilyName = 0;

  fontDesignTrait = v5->_fontDesignTrait;
  v5->_fontDesignTrait = v4;

  return v5;
}

- (TUIFontSpec)fontSpecWithPointSize:(double)a3
{
  v4 = [[TUIFontSpec alloc] initWithOther:self];
  v4->_pointSize = a3;
  *&v4->_specified |= 2u;

  return v4;
}

- (TUIFontSpec)fontSpecWithTextStyle:(id)a3
{
  v4 = a3;
  v5 = [[TUIFontSpec alloc] initWithOther:self];
  textStyle = v5->_textStyle;
  v5->_textStyle = v4;

  *&v5->_specified |= 2u;

  return v5;
}

- (TUIFontSpec)fontSpecWithMinContentSize:(id)a3
{
  v4 = a3;
  v5 = [[TUIFontSpec alloc] initWithOther:self];
  minContentSize = v5->_minContentSize;
  v5->_minContentSize = v4;

  *&v5->_specified |= 2u;

  return v5;
}

- (TUIFontSpec)fontSpecWithMinPointSize:(double)a3
{
  v4 = [[TUIFontSpec alloc] initWithOther:self];
  v4->_minPointSize = a3;
  *&v4->_specified |= 2u;

  return v4;
}

- (TUIFontSpec)fontSpecWithMaxContentSize:(id)a3
{
  v4 = a3;
  v5 = [[TUIFontSpec alloc] initWithOther:self];
  maxContentSize = v5->_maxContentSize;
  v5->_maxContentSize = v4;

  *&v5->_specified |= 2u;

  return v5;
}

- (TUIFontSpec)fontSpecWithMaxPointSize:(double)a3
{
  v4 = [[TUIFontSpec alloc] initWithOther:self];
  v4->_maxPointSize = a3;
  *&v4->_specified |= 2u;

  return v4;
}

- (TUIFontSpec)fontSpecWithLeading:(double)a3
{
  v4 = [[TUIFontSpec alloc] initWithOther:self];
  v4->_leading = a3;

  return v4;
}

- (TUIFontSpec)fontSpecWithAdditionalLeading:(double)a3
{
  v4 = [[TUIFontSpec alloc] initWithOther:self];
  v4->_additionalLeading = a3;

  return v4;
}

- (TUIFontSpec)fontSpecWithWeight:(double)a3
{
  v4 = [[TUIFontSpec alloc] initWithOther:self];
  v4->_weight = a3;
  *&v4->_specified |= 1u;

  return v4;
}

- (TUIFontSpec)fontSpecWithCaps:(unint64_t)a3
{
  v4 = [[TUIFontSpec alloc] initWithOther:self];
  v4->_caps = a3;

  return v4;
}

- (TUIFontSpec)fontSpecWithColor:(id)a3
{
  v4 = a3;
  v5 = [[TUIFontSpec alloc] initWithOther:self];
  foregroundColor = v5->_foregroundColor;
  v5->_foregroundColor = v4;

  return v5;
}

- (TUIFontSpec)fontSpecWithTracking:(double)a3
{
  v4 = [[TUIFontSpec alloc] initWithOther:self];
  v4->_tracking = a3;

  return v4;
}

- (TUIFontSpec)fontSpecWithMonospacedDigits:(BOOL)a3
{
  if (*(&self->_specified + 1) == a3)
  {
    v3 = self;
  }

  else
  {
    v3 = [[TUIFontSpec alloc] initWithOther:self];
    *(&v3->_specified + 1) = a3;
    *&v3->_specified |= 4u;
  }

  return v3;
}

- (NSDictionary)fontAttributes
{
  if (self->_postscriptName)
  {
    v2 = 0;
    goto LABEL_20;
  }

  v2 = objc_opt_new();
  if (*&self->_specified)
  {
    v4 = objc_opt_new();
    v5 = [NSNumber numberWithDouble:self->_weight];
    [v4 setObject:v5 forKeyedSubscript:kCTFontWeightTrait];

    p_fontDesignTrait = &self->_fontDesignTrait;
    fontDesignTrait = self->_fontDesignTrait;
    if (fontDesignTrait)
    {
      if (v4)
      {
LABEL_9:
        v8 = kCTFontUIFontDesignTrait;
        v9 = v4;
LABEL_13:
        [v9 setObject:fontDesignTrait forKeyedSubscript:v8];
        goto LABEL_14;
      }

LABEL_8:
      v4 = objc_opt_new();
      fontDesignTrait = *p_fontDesignTrait;
      goto LABEL_9;
    }
  }

  else
  {
    p_fontDesignTrait = &self->_fontDesignTrait;
    if (self->_fontDesignTrait)
    {
      goto LABEL_8;
    }

    v4 = 0;
  }

  fontDesignTrait = self->_fontFamilyName;
  if (fontDesignTrait)
  {
    v8 = kCTFontFamilyNameAttribute;
    v9 = v2;
    goto LABEL_13;
  }

LABEL_14:
  if (v4)
  {
    [v2 setObject:v4 forKeyedSubscript:kCTFontTraitsAttribute];
  }

  if (*(&self->_specified + 1) == 1 && (*&self->_specified & 4) != 0)
  {
    v13[0] = UIFontFeatureTypeIdentifierKey;
    v13[1] = UIFontFeatureSelectorIdentifierKey;
    v14[0] = &off_2754D0;
    v14[1] = &off_2754E8;
    v10 = [NSDictionary dictionaryWithObjects:v14 forKeys:v13 count:2];
    v15 = v10;
    v11 = [NSArray arrayWithObjects:&v15 count:1];
    [v2 setObject:v11 forKeyedSubscript:UIFontDescriptorFeatureSettingsAttribute];
  }

LABEL_20:

  return v2;
}

- (id)_resolvedFontSpecWithTraitCollection:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = v5;
  textStyle = v5->_textStyle;
  if (textStyle)
  {
    minPointSize = v5->_minPointSize;
    maxPointSize = v5->_maxPointSize;
    v10 = [UIFont preferredFontForTextStyle:textStyle compatibleWithTraitCollection:v4];
    maxContentSize = v6->_maxContentSize;
    if (maxContentSize && ![(NSString *)maxContentSize isEqualToString:UIContentSizeCategoryUnspecified])
    {
      v12 = v6->_textStyle;
      v13 = [UITraitCollection traitCollectionWithPreferredContentSizeCategory:v6->_maxContentSize];
      v14 = [UIFont preferredFontForTextStyle:v12 compatibleWithTraitCollection:v13];

      [v14 pointSize];
      if (maxPointSize >= v15 || maxPointSize <= 0.0)
      {
        maxPointSize = v15;
      }
    }

    minContentSize = v6->_minContentSize;
    if (minContentSize && ![(NSString *)minContentSize isEqualToString:UIContentSizeCategoryUnspecified])
    {
      v18 = v6->_textStyle;
      v19 = [UITraitCollection traitCollectionWithPreferredContentSizeCategory:v6->_minContentSize];
      v20 = [UIFont preferredFontForTextStyle:v18 compatibleWithTraitCollection:v19];

      [v20 pointSize];
      if (minPointSize >= v21)
      {
        v22 = minPointSize;
      }

      else
      {
        v22 = v21;
      }

      if (minPointSize <= 0.0)
      {
        minPointSize = v21;
      }

      else
      {
        minPointSize = v22;
      }
    }

    if (v6->_pointSize == 0.0)
    {
      [v10 pointSize];
      if (maxPointSize < v23 && maxPointSize > 0.0)
      {
        v23 = maxPointSize;
      }

      if (minPointSize >= v23)
      {
        v25 = minPointSize;
      }

      else
      {
        v25 = v23;
      }

      if (minPointSize <= 0.0)
      {
        v26 = v23;
      }

      else
      {
        v26 = v25;
      }

      [v10 pointSize];
      if (v26 != v27)
      {
        v28 = [v10 fontWithSize:v26];

        v10 = v28;
      }
    }

    v29 = v6->_textStyle;
    v30 = [UITraitCollection traitCollectionWithPreferredContentSizeCategory:UIContentSizeCategoryLarge];
    v31 = [UIFont preferredFontForTextStyle:v29 compatibleWithTraitCollection:v30];

    if (v4)
    {
      [v4 displayScale];
      v33 = v32;
    }

    else
    {
      v33 = 1.0;
    }

    if (v6->_pointSize != 0.0)
    {
      [v31 pointSize];
      if (v34 != 0.0)
      {
        pointSize = v6->_pointSize;
        [v10 pointSize];
        v37 = pointSize * v36;
        [v31 pointSize];
        v39 = v37 / v38;
        if (maxPointSize < v39 && maxPointSize > 0.0)
        {
          v39 = maxPointSize;
        }

        if (minPointSize >= v39)
        {
          v41 = minPointSize;
        }

        else
        {
          v41 = v39;
        }

        if (minPointSize > 0.0)
        {
          v39 = v41;
        }

        v42 = round(v33 * v39) / v33;
        v43 = [v31 fontWithSize:v6->_pointSize];

        v44 = [v10 fontWithSize:v42];

        v31 = v43;
        v10 = v44;
      }
    }

    [v31 _bodyLeading];
    if (v45 == 0.0)
    {
      v48 = 1.0;
    }

    else
    {
      v46 = v45;
      [v10 _bodyLeading];
      v48 = v47 / v46;
    }

    leading = v6->_leading;
    additionalLeading = v6->_additionalLeading;
    if (additionalLeading != 0.0 && leading == 0.0)
    {
      [v31 _bodyLeading];
      additionalLeading = v6->_additionalLeading;
    }

    v51 = round(v33 * (v48 * (leading + additionalLeading))) / v33;
    [v10 pointSize];
    v53 = v52;
    if (v52 != v6->_pointSize || v51 != v6->_leading || v48 != v6->_scale)
    {
      v54 = [[TUIFontSpec alloc] initWithOther:v6];

      v54->_pointSize = v53;
      v54->_scale = v48;
      v54->_leading = v51;
      *&v54->_specified |= 2u;
      v6 = v54;
    }
  }

  return v6;
}

@end