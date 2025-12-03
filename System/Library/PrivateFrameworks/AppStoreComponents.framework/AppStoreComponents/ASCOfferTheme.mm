@interface ASCOfferTheme
+ (ASCOfferTheme)adTheme;
+ (ASCOfferTheme)blueTheme;
+ (ASCOfferTheme)essoTheme;
+ (ASCOfferTheme)grayTheme;
+ (ASCOfferTheme)viewInAppStoreTheme;
+ (ASCOfferTheme)whiteOnGrayTheme;
+ (ASCOfferTheme)whiteTheme;
+ (id)confirmationForTheme:(id)theme;
- (ASCOfferTheme)initWithTitleBackgroundColor:(id)color titleTextColor:(id)textColor titleTextDisabledColor:(id)disabledColor subtitleTextColor:(id)subtitleTextColor iconTintColor:(id)tintColor progressColor:(id)progressColor;
- (ASCOfferTheme)initWithTitleBackgroundColor:(id)color titleTextColor:(id)textColor titleTextDisabledColor:(id)disabledColor subtitleTextColor:(id)subtitleTextColor iconTintColor:(id)tintColor progressColor:(id)progressColor progressLineWidth:(double)width progressLineCap:(int)self0 stopIndicatorRatio:(double)self1 stopIndicatorCornerSize:(CGSize)self2 backgroundStyle:(id)self3;
- (ASCOfferTheme)offerThemeWithBackgroundStyle:(id)style;
- (ASCOfferTheme)offerThemeWithProgressLineCap:(int)cap;
- (ASCOfferTheme)offerThemeWithProgressLineWidth:(double)width;
- (ASCOfferTheme)offerThemeWithStopIndicatorRatio:(double)ratio;
- (BOOL)isEqual:(id)equal;
- (CGSize)stopIndicatorCornerSize;
- (id)clone;
- (id)description;
- (unint64_t)hash;
@end

@implementation ASCOfferTheme

+ (ASCOfferTheme)grayTheme
{
  if (grayTheme_onceToken != -1)
  {
    +[ASCOfferTheme grayTheme];
  }

  v3 = grayTheme_theme;

  return v3;
}

void __26__ASCOfferTheme_grayTheme__block_invoke()
{
  v0 = [ASCOfferTheme alloc];
  v7 = [MEMORY[0x277D75348] tertiarySystemFillColor];
  v1 = [MEMORY[0x277D75348] systemBlueColor];
  v2 = [MEMORY[0x277D75348] systemGrayColor];
  v3 = [MEMORY[0x277D75348] systemBlueColor];
  v4 = [MEMORY[0x277D75348] systemFillColor];
  v5 = [(ASCOfferTheme *)v0 initWithTitleBackgroundColor:v7 titleTextColor:v1 subtitleTextColor:v2 iconTintColor:v3 progressColor:v4];
  v6 = grayTheme_theme;
  grayTheme_theme = v5;
}

+ (ASCOfferTheme)blueTheme
{
  if (blueTheme_onceToken[0] != -1)
  {
    +[ASCOfferTheme blueTheme];
  }

  v3 = blueTheme_theme;

  return v3;
}

void __26__ASCOfferTheme_blueTheme__block_invoke()
{
  v0 = [ASCOfferTheme alloc];
  v7 = [MEMORY[0x277D75348] systemBlueColor];
  v1 = [MEMORY[0x277D75348] whiteColor];
  v2 = [MEMORY[0x277D75348] systemGrayColor];
  v3 = [MEMORY[0x277D75348] systemBlueColor];
  v4 = [MEMORY[0x277D75348] systemFillColor];
  v5 = [(ASCOfferTheme *)v0 initWithTitleBackgroundColor:v7 titleTextColor:v1 subtitleTextColor:v2 iconTintColor:v3 progressColor:v4];
  v6 = blueTheme_theme;
  blueTheme_theme = v5;
}

+ (ASCOfferTheme)whiteTheme
{
  if (whiteTheme_onceToken != -1)
  {
    +[ASCOfferTheme whiteTheme];
  }

  v3 = whiteTheme_theme;

  return v3;
}

void __27__ASCOfferTheme_whiteTheme__block_invoke()
{
  v0 = [ASCOfferTheme alloc];
  v8 = [MEMORY[0x277D75348] tertiarySystemFillColor];
  v1 = [MEMORY[0x277D75348] systemBlueColor];
  v2 = [MEMORY[0x277D75348] colorWithRed:0.768481433 green:0.768305421 blue:0.788933814 alpha:1.0];
  v3 = [MEMORY[0x277D75348] systemGrayColor];
  v4 = [MEMORY[0x277D75348] systemBlueColor];
  v5 = [MEMORY[0x277D75348] whiteColor];
  v6 = [(ASCOfferTheme *)v0 initWithTitleBackgroundColor:v8 titleTextColor:v1 titleTextDisabledColor:v2 subtitleTextColor:v3 iconTintColor:v4 progressColor:v5];
  v7 = whiteTheme_theme;
  whiteTheme_theme = v6;
}

+ (ASCOfferTheme)whiteOnGrayTheme
{
  if (whiteOnGrayTheme_onceToken != -1)
  {
    +[ASCOfferTheme whiteOnGrayTheme];
  }

  v3 = whiteOnGrayTheme_theme;

  return v3;
}

void __33__ASCOfferTheme_whiteOnGrayTheme__block_invoke()
{
  v0 = [ASCOfferTheme alloc];
  v10 = [MEMORY[0x277D75348] tertiarySystemFillColor];
  v1 = [MEMORY[0x277D75348] labelColor];
  v2 = [MEMORY[0x277D75348] colorWithRed:0.768481433 green:0.768305421 blue:0.788933814 alpha:1.0];
  v3 = [MEMORY[0x277D75348] secondaryLabelColor];
  v4 = [MEMORY[0x277D75348] whiteColor];
  v5 = [MEMORY[0x277D75348] grayColor];
  v6 = +[ASCOfferBackgroundStyle defaultStyle];
  LODWORD(v9) = 1;
  v7 = [(ASCOfferTheme *)v0 initWithTitleBackgroundColor:v10 titleTextColor:v1 titleTextDisabledColor:v2 subtitleTextColor:v3 iconTintColor:v4 progressColor:v5 progressLineWidth:2.0 progressLineCap:0.3 stopIndicatorRatio:1.0 stopIndicatorCornerSize:1.0 backgroundStyle:v9, v6];
  v8 = whiteOnGrayTheme_theme;
  whiteOnGrayTheme_theme = v7;
}

+ (id)confirmationForTheme:(id)theme
{
  themeCopy = theme;
  v4 = [ASCOfferTheme alloc];
  systemGreenColor = [MEMORY[0x277D75348] systemGreenColor];
  whiteColor = [MEMORY[0x277D75348] whiteColor];
  if (themeCopy)
  {
    subtitleTextColor = [themeCopy subtitleTextColor];
    iconTintColor = [themeCopy iconTintColor];
    [themeCopy progressColor];
  }

  else
  {
    subtitleTextColor = [MEMORY[0x277D75348] systemGrayColor];
    iconTintColor = [MEMORY[0x277D75348] systemBlueColor];
    [MEMORY[0x277D75348] systemFillColor];
  }
  v9 = ;
  v10 = [(ASCOfferTheme *)v4 initWithTitleBackgroundColor:systemGreenColor titleTextColor:whiteColor subtitleTextColor:subtitleTextColor iconTintColor:iconTintColor progressColor:v9];

  return v10;
}

+ (ASCOfferTheme)adTheme
{
  if (adTheme_onceToken != -1)
  {
    +[ASCOfferTheme adTheme];
  }

  v3 = adTheme_adTheme;

  return v3;
}

void __24__ASCOfferTheme_adTheme__block_invoke()
{
  v0 = [ASCOfferTheme alloc];
  v1 = MEMORY[0x277D75348];
  v2 = [MEMORY[0x277D75348] whiteColor];
  v3 = [MEMORY[0x277D75348] whiteColor];
  v12 = [v1 asc_colorWithLightColor:v2 darkColor:v3];

  v4 = [MEMORY[0x277D75348] colorWithRed:0.149 green:0.529 blue:0.984 alpha:1.0];
  v5 = [MEMORY[0x277D75348] colorWithRed:0.039 green:0.517 blue:0.996 alpha:1.0];
  v6 = [MEMORY[0x277D75348] asc_colorWithLightColor:v4 darkColor:v5];

  v7 = [MEMORY[0x277D75348] systemGrayColor];
  v8 = [MEMORY[0x277D75348] systemBlueColor];
  v9 = [MEMORY[0x277D75348] systemFillColor];
  v10 = [(ASCOfferTheme *)v0 initWithTitleBackgroundColor:v12 titleTextColor:v6 subtitleTextColor:v7 iconTintColor:v8 progressColor:v9];
  v11 = adTheme_adTheme;
  adTheme_adTheme = v10;
}

+ (ASCOfferTheme)essoTheme
{
  if (essoTheme_onceToken != -1)
  {
    +[ASCOfferTheme essoTheme];
  }

  v3 = essoTheme_theme;

  return v3;
}

void __26__ASCOfferTheme_essoTheme__block_invoke()
{
  v5 = +[ASCOfferTheme blueTheme];
  v0 = [v5 offerThemeWithProgressLineWidth:3.0];
  v1 = [v0 offerThemeWithStopIndicatorRatio:0.35];
  v2 = [ASCOfferBackgroundStyle fixedCornerRadiusStyle:14.0];
  v3 = [v1 offerThemeWithBackgroundStyle:v2];
  v4 = essoTheme_theme;
  essoTheme_theme = v3;
}

+ (ASCOfferTheme)viewInAppStoreTheme
{
  if (viewInAppStoreTheme_onceToken != -1)
  {
    +[ASCOfferTheme viewInAppStoreTheme];
  }

  v3 = viewInAppStoreTheme_theme;

  return v3;
}

void __36__ASCOfferTheme_viewInAppStoreTheme__block_invoke()
{
  v0 = [ASCOfferTheme alloc];
  v7 = [MEMORY[0x277D75348] clearColor];
  v1 = [MEMORY[0x277D75348] secondaryLabelColor];
  v2 = [MEMORY[0x277D75348] clearColor];
  v3 = [MEMORY[0x277D75348] clearColor];
  v4 = [MEMORY[0x277D75348] clearColor];
  v5 = [(ASCOfferTheme *)v0 initWithTitleBackgroundColor:v7 titleTextColor:v1 subtitleTextColor:v2 iconTintColor:v3 progressColor:v4];
  v6 = viewInAppStoreTheme_theme;
  viewInAppStoreTheme_theme = v5;
}

- (ASCOfferTheme)initWithTitleBackgroundColor:(id)color titleTextColor:(id)textColor titleTextDisabledColor:(id)disabledColor subtitleTextColor:(id)subtitleTextColor iconTintColor:(id)tintColor progressColor:(id)progressColor
{
  progressColorCopy = progressColor;
  tintColorCopy = tintColor;
  subtitleTextColorCopy = subtitleTextColor;
  disabledColorCopy = disabledColor;
  textColorCopy = textColor;
  colorCopy = color;
  v20 = +[ASCOfferBackgroundStyle defaultStyle];
  LODWORD(v23) = 0;
  v21 = [(ASCOfferTheme *)self initWithTitleBackgroundColor:colorCopy titleTextColor:textColorCopy titleTextDisabledColor:disabledColorCopy subtitleTextColor:subtitleTextColorCopy iconTintColor:tintColorCopy progressColor:progressColorCopy progressLineWidth:2.0 progressLineCap:0.3 stopIndicatorRatio:1.0 stopIndicatorCornerSize:1.0 backgroundStyle:v23, v20];

  return v21;
}

- (ASCOfferTheme)initWithTitleBackgroundColor:(id)color titleTextColor:(id)textColor titleTextDisabledColor:(id)disabledColor subtitleTextColor:(id)subtitleTextColor iconTintColor:(id)tintColor progressColor:(id)progressColor progressLineWidth:(double)width progressLineCap:(int)self0 stopIndicatorRatio:(double)self1 stopIndicatorCornerSize:(CGSize)self2 backgroundStyle:(id)self3
{
  height = size.height;
  width = size.width;
  colorCopy = color;
  textColorCopy = textColor;
  disabledColorCopy = disabledColor;
  subtitleTextColorCopy = subtitleTextColor;
  tintColorCopy = tintColor;
  progressColorCopy = progressColor;
  styleCopy = style;
  +[ASCEligibility assertCurrentProcessEligibility];
  v34.receiver = self;
  v34.super_class = ASCOfferTheme;
  v27 = [(ASCOfferTheme *)&v34 init];
  v28 = v27;
  if (v27)
  {
    objc_storeStrong(&v27->_titleBackgroundColor, color);
    objc_storeStrong(&v28->_titleTextColor, textColor);
    objc_storeStrong(&v28->_titleTextDisabledColor, disabledColor);
    objc_storeStrong(&v28->_subtitleTextColor, subtitleTextColor);
    objc_storeStrong(&v28->_iconTintColor, tintColor);
    objc_storeStrong(&v28->_progressColor, progressColor);
    v28->_progressLineWidth = width;
    v28->_stopIndicatorRatio = ratio;
    v28->_progressLineCap = cap;
    v28->_stopIndicatorCornerSize.width = width;
    v28->_stopIndicatorCornerSize.height = height;
    objc_storeStrong(&v28->_backgroundStyle, style);
  }

  return v28;
}

- (id)clone
{
  v3 = objc_alloc(objc_opt_class());
  titleBackgroundColor = [(ASCOfferTheme *)self titleBackgroundColor];
  titleTextColor = [(ASCOfferTheme *)self titleTextColor];
  titleTextDisabledColor = [(ASCOfferTheme *)self titleTextDisabledColor];
  subtitleTextColor = [(ASCOfferTheme *)self subtitleTextColor];
  iconTintColor = [(ASCOfferTheme *)self iconTintColor];
  progressColor = [(ASCOfferTheme *)self progressColor];
  [(ASCOfferTheme *)self progressLineWidth];
  v11 = v10;
  progressLineCap = [(ASCOfferTheme *)self progressLineCap];
  [(ASCOfferTheme *)self stopIndicatorRatio];
  v14 = v13;
  [(ASCOfferTheme *)self stopIndicatorCornerSize];
  v16 = v15;
  v18 = v17;
  backgroundStyle = [(ASCOfferTheme *)self backgroundStyle];
  LODWORD(v22) = progressLineCap;
  v20 = [v3 initWithTitleBackgroundColor:titleBackgroundColor titleTextColor:titleTextColor titleTextDisabledColor:titleTextDisabledColor subtitleTextColor:subtitleTextColor iconTintColor:iconTintColor progressColor:progressColor progressLineWidth:v11 progressLineCap:v14 stopIndicatorRatio:v16 stopIndicatorCornerSize:v18 backgroundStyle:{v22, backgroundStyle}];

  return v20;
}

- (ASCOfferTheme)offerThemeWithProgressLineWidth:(double)width
{
  [(ASCOfferTheme *)self progressLineWidth];
  if (v5 == width)
  {
    selfCopy = self;
  }

  else
  {
    selfCopy = [(ASCOfferTheme *)self clone];
    selfCopy->_progressLineWidth = width;
  }

  return selfCopy;
}

- (ASCOfferTheme)offerThemeWithProgressLineCap:(int)cap
{
  if ([(ASCOfferTheme *)self progressLineCap]== cap)
  {
    selfCopy = self;
  }

  else
  {
    selfCopy = [(ASCOfferTheme *)self clone];
    selfCopy->_progressLineCap = cap;
  }

  return selfCopy;
}

- (ASCOfferTheme)offerThemeWithStopIndicatorRatio:(double)ratio
{
  [(ASCOfferTheme *)self stopIndicatorRatio];
  if (v5 == ratio)
  {
    selfCopy = self;
  }

  else
  {
    selfCopy = [(ASCOfferTheme *)self clone];
    selfCopy->_stopIndicatorRatio = ratio;
  }

  return selfCopy;
}

- (ASCOfferTheme)offerThemeWithBackgroundStyle:(id)style
{
  styleCopy = style;
  backgroundStyle = [(ASCOfferTheme *)self backgroundStyle];
  v7 = backgroundStyle;
  if (styleCopy && backgroundStyle)
  {
    v8 = [backgroundStyle isEqual:styleCopy];

    if (v8)
    {
LABEL_4:
      selfCopy = self;
      goto LABEL_7;
    }
  }

  else
  {

    if (v7 == styleCopy)
    {
      goto LABEL_4;
    }
  }

  selfCopy = [(ASCOfferTheme *)self clone];
  objc_storeStrong(&selfCopy->_backgroundStyle, style);
LABEL_7:

  return selfCopy;
}

- (unint64_t)hash
{
  v3 = objc_alloc_init(ASCHasher);
  titleBackgroundColor = [(ASCOfferTheme *)self titleBackgroundColor];
  [(ASCHasher *)v3 combineObject:titleBackgroundColor];

  titleTextColor = [(ASCOfferTheme *)self titleTextColor];
  [(ASCHasher *)v3 combineObject:titleTextColor];

  titleTextDisabledColor = [(ASCOfferTheme *)self titleTextDisabledColor];
  [(ASCHasher *)v3 combineObject:titleTextDisabledColor];

  subtitleTextColor = [(ASCOfferTheme *)self subtitleTextColor];
  [(ASCHasher *)v3 combineObject:subtitleTextColor];

  iconTintColor = [(ASCOfferTheme *)self iconTintColor];
  [(ASCHasher *)v3 combineObject:iconTintColor];

  progressColor = [(ASCOfferTheme *)self progressColor];
  [(ASCHasher *)v3 combineObject:progressColor];

  [(ASCOfferTheme *)self progressLineWidth];
  [(ASCHasher *)v3 combineDouble:?];
  [(ASCHasher *)v3 combineInteger:[(ASCOfferTheme *)self progressLineCap]];
  [(ASCOfferTheme *)self stopIndicatorRatio];
  [(ASCHasher *)v3 combineDouble:?];
  [(ASCOfferTheme *)self stopIndicatorCornerSize];
  [(ASCHasher *)v3 combineDouble:?];
  [(ASCOfferTheme *)self stopIndicatorCornerSize];
  [(ASCHasher *)v3 combineDouble:v10];
  backgroundStyle = [(ASCOfferTheme *)self backgroundStyle];
  [(ASCHasher *)v3 combineObject:backgroundStyle];

  finalizeHash = [(ASCHasher *)v3 finalizeHash];
  return finalizeHash;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  v5 = equalCopy;
  if (v5)
  {
    if (objc_opt_isKindOfClass())
    {
      v6 = v5;
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  if (v7)
  {
    titleBackgroundColor = [(ASCOfferTheme *)self titleBackgroundColor];
    titleBackgroundColor2 = [v7 titleBackgroundColor];
    v10 = titleBackgroundColor2;
    if (titleBackgroundColor && titleBackgroundColor2)
    {
      if ([titleBackgroundColor isEqual:titleBackgroundColor2])
      {
LABEL_10:
        titleTextColor = [(ASCOfferTheme *)self titleTextColor];
        titleTextColor2 = [v7 titleTextColor];
        v13 = titleTextColor2;
        if (titleTextColor && titleTextColor2)
        {
          if ([titleTextColor isEqual:titleTextColor2])
          {
LABEL_13:
            titleTextDisabledColor = [(ASCOfferTheme *)self titleTextDisabledColor];
            titleTextDisabledColor2 = [v7 titleTextDisabledColor];
            v16 = titleTextDisabledColor2;
            if (titleTextDisabledColor && titleTextDisabledColor2)
            {
              if ([titleTextDisabledColor isEqual:titleTextDisabledColor2])
              {
LABEL_16:
                subtitleTextColor = [(ASCOfferTheme *)self subtitleTextColor];
                subtitleTextColor2 = [v7 subtitleTextColor];
                v19 = subtitleTextColor2;
                v59 = subtitleTextColor;
                if (subtitleTextColor && subtitleTextColor2)
                {
                  v57 = titleTextDisabledColor;
                  v20 = v16;
                  v21 = subtitleTextColor2;
                  v22 = [subtitleTextColor isEqual:subtitleTextColor2];
                  v19 = v21;
                  v16 = v20;
                  titleTextDisabledColor = v57;
                  if (v22)
                  {
LABEL_19:
                    v55 = v19;
                    v56 = v16;
                    iconTintColor = [(ASCOfferTheme *)self iconTintColor];
                    iconTintColor2 = [v7 iconTintColor];
                    v25 = iconTintColor2;
                    v58 = iconTintColor;
                    if (iconTintColor && iconTintColor2)
                    {
                      v26 = iconTintColor2;
                      v27 = [v58 isEqual:iconTintColor2];
                      v25 = v26;
                      if (v27)
                      {
LABEL_22:
                        v53 = v25;
                        progressColor = [(ASCOfferTheme *)self progressColor];
                        progressColor2 = [v7 progressColor];
                        v30 = progressColor2;
                        v54 = progressColor;
                        if (progressColor && progressColor2)
                        {
                          v31 = progressColor2;
                          v32 = [v54 isEqual:progressColor2];
                          v30 = v31;
                          if (v32)
                          {
LABEL_25:
                            v33 = v30;
                            [(ASCOfferTheme *)self progressLineWidth];
                            v35 = v34;
                            [v7 progressLineWidth];
                            if (v35 == v36 && (v37 = -[ASCOfferTheme progressLineCap](self, "progressLineCap"), v37 == [v7 progressLineCap]) && (-[ASCOfferTheme stopIndicatorRatio](self, "stopIndicatorRatio"), v39 = v38, objc_msgSend(v7, "stopIndicatorRatio"), v39 == v40))
                            {
                              [(ASCOfferTheme *)self stopIndicatorCornerSize];
                              v42 = v41;
                              v44 = v43;
                              [v7 stopIndicatorCornerSize];
                              v46 = 0;
                              if (v42 == v47)
                              {
                                v30 = v33;
                                if (v44 == v45)
                                {
                                  backgroundStyle = [(ASCOfferTheme *)self backgroundStyle];
                                  backgroundStyle2 = [v7 backgroundStyle];
                                  v50 = backgroundStyle2;
                                  v52 = backgroundStyle;
                                  if (backgroundStyle && backgroundStyle2)
                                  {
                                    v46 = [backgroundStyle isEqual:backgroundStyle2];
                                  }

                                  else
                                  {
                                    v46 = backgroundStyle == backgroundStyle2;
                                  }

                                  goto LABEL_47;
                                }

LABEL_48:

                                v25 = v53;
                                goto LABEL_49;
                              }
                            }

                            else
                            {
                              v46 = 0;
                            }

LABEL_47:
                            v30 = v33;
                            goto LABEL_48;
                          }
                        }

                        else if (progressColor == progressColor2)
                        {
                          goto LABEL_25;
                        }

                        v46 = 0;
                        goto LABEL_48;
                      }
                    }

                    else if (iconTintColor == iconTintColor2)
                    {
                      goto LABEL_22;
                    }

                    v46 = 0;
LABEL_49:

                    v19 = v55;
                    v16 = v56;
                    goto LABEL_50;
                  }
                }

                else if (subtitleTextColor == subtitleTextColor2)
                {
                  goto LABEL_19;
                }

                v46 = 0;
LABEL_50:

                goto LABEL_51;
              }
            }

            else if (titleTextDisabledColor == titleTextDisabledColor2)
            {
              goto LABEL_16;
            }

            v46 = 0;
LABEL_51:

            goto LABEL_52;
          }
        }

        else if (titleTextColor == titleTextColor2)
        {
          goto LABEL_13;
        }

        v46 = 0;
LABEL_52:

        goto LABEL_53;
      }
    }

    else if (titleBackgroundColor == titleBackgroundColor2)
    {
      goto LABEL_10;
    }

    v46 = 0;
LABEL_53:

    goto LABEL_54;
  }

  v46 = 0;
LABEL_54:

  return v46;
}

- (id)description
{
  v3 = [[ASCDescriber alloc] initWithObject:self];
  titleBackgroundColor = [(ASCOfferTheme *)self titleBackgroundColor];
  [(ASCDescriber *)v3 addObject:titleBackgroundColor withName:@"titleBackgroundColor"];

  titleTextColor = [(ASCOfferTheme *)self titleTextColor];
  [(ASCDescriber *)v3 addObject:titleTextColor withName:@"titleTextColor"];

  titleTextDisabledColor = [(ASCOfferTheme *)self titleTextDisabledColor];
  [(ASCDescriber *)v3 addObject:titleTextDisabledColor withName:@"titleTextDisabledColor"];

  subtitleTextColor = [(ASCOfferTheme *)self subtitleTextColor];
  [(ASCDescriber *)v3 addObject:subtitleTextColor withName:@"subtitleTextColor"];

  iconTintColor = [(ASCOfferTheme *)self iconTintColor];
  [(ASCDescriber *)v3 addObject:iconTintColor withName:@"iconTintColor"];

  progressColor = [(ASCOfferTheme *)self progressColor];
  [(ASCDescriber *)v3 addObject:progressColor withName:@"progressColor"];

  [(ASCOfferTheme *)self progressLineWidth];
  [(ASCDescriber *)v3 addDouble:@"progressLineWidth" withName:?];
  [(ASCDescriber *)v3 addInteger:[(ASCOfferTheme *)self progressLineCap] withName:@"progressLineCap"];
  [(ASCOfferTheme *)self stopIndicatorRatio];
  [(ASCDescriber *)v3 addDouble:@"stopIndicatorRatio" withName:?];
  [(ASCOfferTheme *)self stopIndicatorCornerSize];
  [(ASCDescriber *)v3 addDouble:@"stopIndicatorCornerSize.width" withName:?];
  [(ASCOfferTheme *)self stopIndicatorCornerSize];
  [(ASCDescriber *)v3 addDouble:@"stopIndicatorCornerSize.height" withName:v10];
  backgroundStyle = [(ASCOfferTheme *)self backgroundStyle];
  [(ASCDescriber *)v3 addObject:backgroundStyle withName:@"backgroundStyle"];

  finalizeDescription = [(ASCDescriber *)v3 finalizeDescription];

  return finalizeDescription;
}

- (CGSize)stopIndicatorCornerSize
{
  width = self->_stopIndicatorCornerSize.width;
  height = self->_stopIndicatorCornerSize.height;
  result.height = height;
  result.width = width;
  return result;
}

@end