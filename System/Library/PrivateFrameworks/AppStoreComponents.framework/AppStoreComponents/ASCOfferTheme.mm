@interface ASCOfferTheme
+ (ASCOfferTheme)adTheme;
+ (ASCOfferTheme)blueTheme;
+ (ASCOfferTheme)essoTheme;
+ (ASCOfferTheme)grayTheme;
+ (ASCOfferTheme)viewInAppStoreTheme;
+ (ASCOfferTheme)whiteOnGrayTheme;
+ (ASCOfferTheme)whiteTheme;
+ (id)confirmationForTheme:(id)a3;
- (ASCOfferTheme)initWithTitleBackgroundColor:(id)a3 titleTextColor:(id)a4 titleTextDisabledColor:(id)a5 subtitleTextColor:(id)a6 iconTintColor:(id)a7 progressColor:(id)a8;
- (ASCOfferTheme)initWithTitleBackgroundColor:(id)a3 titleTextColor:(id)a4 titleTextDisabledColor:(id)a5 subtitleTextColor:(id)a6 iconTintColor:(id)a7 progressColor:(id)a8 progressLineWidth:(double)a9 progressLineCap:(int)a10 stopIndicatorRatio:(double)a11 stopIndicatorCornerSize:(CGSize)a12 backgroundStyle:(id)a13;
- (ASCOfferTheme)offerThemeWithBackgroundStyle:(id)a3;
- (ASCOfferTheme)offerThemeWithProgressLineCap:(int)a3;
- (ASCOfferTheme)offerThemeWithProgressLineWidth:(double)a3;
- (ASCOfferTheme)offerThemeWithStopIndicatorRatio:(double)a3;
- (BOOL)isEqual:(id)a3;
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

+ (id)confirmationForTheme:(id)a3
{
  v3 = a3;
  v4 = [ASCOfferTheme alloc];
  v5 = [MEMORY[0x277D75348] systemGreenColor];
  v6 = [MEMORY[0x277D75348] whiteColor];
  if (v3)
  {
    v7 = [v3 subtitleTextColor];
    v8 = [v3 iconTintColor];
    [v3 progressColor];
  }

  else
  {
    v7 = [MEMORY[0x277D75348] systemGrayColor];
    v8 = [MEMORY[0x277D75348] systemBlueColor];
    [MEMORY[0x277D75348] systemFillColor];
  }
  v9 = ;
  v10 = [(ASCOfferTheme *)v4 initWithTitleBackgroundColor:v5 titleTextColor:v6 subtitleTextColor:v7 iconTintColor:v8 progressColor:v9];

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

- (ASCOfferTheme)initWithTitleBackgroundColor:(id)a3 titleTextColor:(id)a4 titleTextDisabledColor:(id)a5 subtitleTextColor:(id)a6 iconTintColor:(id)a7 progressColor:(id)a8
{
  v14 = a8;
  v15 = a7;
  v16 = a6;
  v17 = a5;
  v18 = a4;
  v19 = a3;
  v20 = +[ASCOfferBackgroundStyle defaultStyle];
  LODWORD(v23) = 0;
  v21 = [(ASCOfferTheme *)self initWithTitleBackgroundColor:v19 titleTextColor:v18 titleTextDisabledColor:v17 subtitleTextColor:v16 iconTintColor:v15 progressColor:v14 progressLineWidth:2.0 progressLineCap:0.3 stopIndicatorRatio:1.0 stopIndicatorCornerSize:1.0 backgroundStyle:v23, v20];

  return v21;
}

- (ASCOfferTheme)initWithTitleBackgroundColor:(id)a3 titleTextColor:(id)a4 titleTextDisabledColor:(id)a5 subtitleTextColor:(id)a6 iconTintColor:(id)a7 progressColor:(id)a8 progressLineWidth:(double)a9 progressLineCap:(int)a10 stopIndicatorRatio:(double)a11 stopIndicatorCornerSize:(CGSize)a12 backgroundStyle:(id)a13
{
  height = a12.height;
  width = a12.width;
  v24 = a3;
  v25 = a4;
  v33 = a5;
  v32 = a6;
  v31 = a7;
  v30 = a8;
  v26 = a13;
  +[ASCEligibility assertCurrentProcessEligibility];
  v34.receiver = self;
  v34.super_class = ASCOfferTheme;
  v27 = [(ASCOfferTheme *)&v34 init];
  v28 = v27;
  if (v27)
  {
    objc_storeStrong(&v27->_titleBackgroundColor, a3);
    objc_storeStrong(&v28->_titleTextColor, a4);
    objc_storeStrong(&v28->_titleTextDisabledColor, a5);
    objc_storeStrong(&v28->_subtitleTextColor, a6);
    objc_storeStrong(&v28->_iconTintColor, a7);
    objc_storeStrong(&v28->_progressColor, a8);
    v28->_progressLineWidth = a9;
    v28->_stopIndicatorRatio = a11;
    v28->_progressLineCap = a10;
    v28->_stopIndicatorCornerSize.width = width;
    v28->_stopIndicatorCornerSize.height = height;
    objc_storeStrong(&v28->_backgroundStyle, a13);
  }

  return v28;
}

- (id)clone
{
  v3 = objc_alloc(objc_opt_class());
  v4 = [(ASCOfferTheme *)self titleBackgroundColor];
  v5 = [(ASCOfferTheme *)self titleTextColor];
  v6 = [(ASCOfferTheme *)self titleTextDisabledColor];
  v7 = [(ASCOfferTheme *)self subtitleTextColor];
  v8 = [(ASCOfferTheme *)self iconTintColor];
  v9 = [(ASCOfferTheme *)self progressColor];
  [(ASCOfferTheme *)self progressLineWidth];
  v11 = v10;
  v12 = [(ASCOfferTheme *)self progressLineCap];
  [(ASCOfferTheme *)self stopIndicatorRatio];
  v14 = v13;
  [(ASCOfferTheme *)self stopIndicatorCornerSize];
  v16 = v15;
  v18 = v17;
  v19 = [(ASCOfferTheme *)self backgroundStyle];
  LODWORD(v22) = v12;
  v20 = [v3 initWithTitleBackgroundColor:v4 titleTextColor:v5 titleTextDisabledColor:v6 subtitleTextColor:v7 iconTintColor:v8 progressColor:v9 progressLineWidth:v11 progressLineCap:v14 stopIndicatorRatio:v16 stopIndicatorCornerSize:v18 backgroundStyle:{v22, v19}];

  return v20;
}

- (ASCOfferTheme)offerThemeWithProgressLineWidth:(double)a3
{
  [(ASCOfferTheme *)self progressLineWidth];
  if (v5 == a3)
  {
    v6 = self;
  }

  else
  {
    v6 = [(ASCOfferTheme *)self clone];
    v6->_progressLineWidth = a3;
  }

  return v6;
}

- (ASCOfferTheme)offerThemeWithProgressLineCap:(int)a3
{
  if ([(ASCOfferTheme *)self progressLineCap]== a3)
  {
    v5 = self;
  }

  else
  {
    v5 = [(ASCOfferTheme *)self clone];
    v5->_progressLineCap = a3;
  }

  return v5;
}

- (ASCOfferTheme)offerThemeWithStopIndicatorRatio:(double)a3
{
  [(ASCOfferTheme *)self stopIndicatorRatio];
  if (v5 == a3)
  {
    v6 = self;
  }

  else
  {
    v6 = [(ASCOfferTheme *)self clone];
    v6->_stopIndicatorRatio = a3;
  }

  return v6;
}

- (ASCOfferTheme)offerThemeWithBackgroundStyle:(id)a3
{
  v5 = a3;
  v6 = [(ASCOfferTheme *)self backgroundStyle];
  v7 = v6;
  if (v5 && v6)
  {
    v8 = [v6 isEqual:v5];

    if (v8)
    {
LABEL_4:
      v9 = self;
      goto LABEL_7;
    }
  }

  else
  {

    if (v7 == v5)
    {
      goto LABEL_4;
    }
  }

  v9 = [(ASCOfferTheme *)self clone];
  objc_storeStrong(&v9->_backgroundStyle, a3);
LABEL_7:

  return v9;
}

- (unint64_t)hash
{
  v3 = objc_alloc_init(ASCHasher);
  v4 = [(ASCOfferTheme *)self titleBackgroundColor];
  [(ASCHasher *)v3 combineObject:v4];

  v5 = [(ASCOfferTheme *)self titleTextColor];
  [(ASCHasher *)v3 combineObject:v5];

  v6 = [(ASCOfferTheme *)self titleTextDisabledColor];
  [(ASCHasher *)v3 combineObject:v6];

  v7 = [(ASCOfferTheme *)self subtitleTextColor];
  [(ASCHasher *)v3 combineObject:v7];

  v8 = [(ASCOfferTheme *)self iconTintColor];
  [(ASCHasher *)v3 combineObject:v8];

  v9 = [(ASCOfferTheme *)self progressColor];
  [(ASCHasher *)v3 combineObject:v9];

  [(ASCOfferTheme *)self progressLineWidth];
  [(ASCHasher *)v3 combineDouble:?];
  [(ASCHasher *)v3 combineInteger:[(ASCOfferTheme *)self progressLineCap]];
  [(ASCOfferTheme *)self stopIndicatorRatio];
  [(ASCHasher *)v3 combineDouble:?];
  [(ASCOfferTheme *)self stopIndicatorCornerSize];
  [(ASCHasher *)v3 combineDouble:?];
  [(ASCOfferTheme *)self stopIndicatorCornerSize];
  [(ASCHasher *)v3 combineDouble:v10];
  v11 = [(ASCOfferTheme *)self backgroundStyle];
  [(ASCHasher *)v3 combineObject:v11];

  v12 = [(ASCHasher *)v3 finalizeHash];
  return v12;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = v4;
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
    v8 = [(ASCOfferTheme *)self titleBackgroundColor];
    v9 = [v7 titleBackgroundColor];
    v10 = v9;
    if (v8 && v9)
    {
      if ([v8 isEqual:v9])
      {
LABEL_10:
        v11 = [(ASCOfferTheme *)self titleTextColor];
        v12 = [v7 titleTextColor];
        v13 = v12;
        if (v11 && v12)
        {
          if ([v11 isEqual:v12])
          {
LABEL_13:
            v14 = [(ASCOfferTheme *)self titleTextDisabledColor];
            v15 = [v7 titleTextDisabledColor];
            v16 = v15;
            if (v14 && v15)
            {
              if ([v14 isEqual:v15])
              {
LABEL_16:
                v17 = [(ASCOfferTheme *)self subtitleTextColor];
                v18 = [v7 subtitleTextColor];
                v19 = v18;
                v59 = v17;
                if (v17 && v18)
                {
                  v57 = v14;
                  v20 = v16;
                  v21 = v18;
                  v22 = [v17 isEqual:v18];
                  v19 = v21;
                  v16 = v20;
                  v14 = v57;
                  if (v22)
                  {
LABEL_19:
                    v55 = v19;
                    v56 = v16;
                    v23 = [(ASCOfferTheme *)self iconTintColor];
                    v24 = [v7 iconTintColor];
                    v25 = v24;
                    v58 = v23;
                    if (v23 && v24)
                    {
                      v26 = v24;
                      v27 = [v58 isEqual:v24];
                      v25 = v26;
                      if (v27)
                      {
LABEL_22:
                        v53 = v25;
                        v28 = [(ASCOfferTheme *)self progressColor];
                        v29 = [v7 progressColor];
                        v30 = v29;
                        v54 = v28;
                        if (v28 && v29)
                        {
                          v31 = v29;
                          v32 = [v54 isEqual:v29];
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
                                  v48 = [(ASCOfferTheme *)self backgroundStyle];
                                  v49 = [v7 backgroundStyle];
                                  v50 = v49;
                                  v52 = v48;
                                  if (v48 && v49)
                                  {
                                    v46 = [v48 isEqual:v49];
                                  }

                                  else
                                  {
                                    v46 = v48 == v49;
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

                        else if (v28 == v29)
                        {
                          goto LABEL_25;
                        }

                        v46 = 0;
                        goto LABEL_48;
                      }
                    }

                    else if (v23 == v24)
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

                else if (v17 == v18)
                {
                  goto LABEL_19;
                }

                v46 = 0;
LABEL_50:

                goto LABEL_51;
              }
            }

            else if (v14 == v15)
            {
              goto LABEL_16;
            }

            v46 = 0;
LABEL_51:

            goto LABEL_52;
          }
        }

        else if (v11 == v12)
        {
          goto LABEL_13;
        }

        v46 = 0;
LABEL_52:

        goto LABEL_53;
      }
    }

    else if (v8 == v9)
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
  v4 = [(ASCOfferTheme *)self titleBackgroundColor];
  [(ASCDescriber *)v3 addObject:v4 withName:@"titleBackgroundColor"];

  v5 = [(ASCOfferTheme *)self titleTextColor];
  [(ASCDescriber *)v3 addObject:v5 withName:@"titleTextColor"];

  v6 = [(ASCOfferTheme *)self titleTextDisabledColor];
  [(ASCDescriber *)v3 addObject:v6 withName:@"titleTextDisabledColor"];

  v7 = [(ASCOfferTheme *)self subtitleTextColor];
  [(ASCDescriber *)v3 addObject:v7 withName:@"subtitleTextColor"];

  v8 = [(ASCOfferTheme *)self iconTintColor];
  [(ASCDescriber *)v3 addObject:v8 withName:@"iconTintColor"];

  v9 = [(ASCOfferTheme *)self progressColor];
  [(ASCDescriber *)v3 addObject:v9 withName:@"progressColor"];

  [(ASCOfferTheme *)self progressLineWidth];
  [(ASCDescriber *)v3 addDouble:@"progressLineWidth" withName:?];
  [(ASCDescriber *)v3 addInteger:[(ASCOfferTheme *)self progressLineCap] withName:@"progressLineCap"];
  [(ASCOfferTheme *)self stopIndicatorRatio];
  [(ASCDescriber *)v3 addDouble:@"stopIndicatorRatio" withName:?];
  [(ASCOfferTheme *)self stopIndicatorCornerSize];
  [(ASCDescriber *)v3 addDouble:@"stopIndicatorCornerSize.width" withName:?];
  [(ASCOfferTheme *)self stopIndicatorCornerSize];
  [(ASCDescriber *)v3 addDouble:@"stopIndicatorCornerSize.height" withName:v10];
  v11 = [(ASCOfferTheme *)self backgroundStyle];
  [(ASCDescriber *)v3 addObject:v11 withName:@"backgroundStyle"];

  v12 = [(ASCDescriber *)v3 finalizeDescription];

  return v12;
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