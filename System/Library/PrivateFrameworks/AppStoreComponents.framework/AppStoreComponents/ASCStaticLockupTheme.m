@interface ASCStaticLockupTheme
+ (ASCStaticLockupTheme)adTheme;
+ (ASCStaticLockupTheme)adWhiteTheme;
+ (ASCStaticLockupTheme)webBrowserTheme;
- (ASCStaticLockupTheme)initWithTitleTextColor:(id)a3 titleFontSizeProvider:(id)a4 titleFontWeight:(double)a5 subtitleTextColor:(id)a6 subtitleFontSizeProvider:(id)a7 subtitleFontWeight:(double)a8 headingTextColor:(id)a9 headingFontSizeProvider:(id)a10 headingFontWeight:(double)a11;
- (ASCStaticLockupTheme)initWithTitleTextColor:(id)a3 titleTextStyle:(id)a4 titleFontWeight:(double)a5 titleTraits:(unsigned int)a6 subtitleTextColor:(id)a7 subtitleTextStyle:(id)a8 subtitleFontWeight:(double)a9 subtitleTraits:(unsigned int)a10 headingTextColor:(id)a11 headingTextStyle:(id)a12 headingFontWeight:(double)a13 headingTraits:(unsigned int)a14;
- (BOOL)isEqual:(id)a3;
- (NSString)description;
- (id)headingFontCompatibleWithTraitCollection:(id)a3;
- (id)subtitleFontCompatibleWithTraitCollection:(id)a3;
- (id)titleFontCompatibleWithTraitCollection:(id)a3;
- (unint64_t)hash;
- (void)applyToLockupContentView:(id)a3 compatibleWithTraitCollection:(id)a4;
@end

@implementation ASCStaticLockupTheme

+ (ASCStaticLockupTheme)adTheme
{
  if (adTheme_onceToken_0 != -1)
  {
    +[ASCStaticLockupTheme adTheme];
  }

  v3 = adTheme_adTheme_0;

  return v3;
}

void __31__ASCStaticLockupTheme_adTheme__block_invoke()
{
  v0 = [ASCStaticLockupTheme alloc];
  v7 = +[ASCSemanticColor primaryLabel];
  v1 = *MEMORY[0x277D743F8];
  v2 = +[ASCSemanticColor secondaryLabel];
  v3 = *MEMORY[0x277D74410];
  v4 = +[ASCSemanticColor secondaryLabel];
  v5 = [(ASCStaticLockupTheme *)v0 initWithTitleTextColor:v7 titleFontSizeProvider:&__block_literal_global_4 titleFontWeight:v2 subtitleTextColor:&__block_literal_global_7_0 subtitleFontSizeProvider:v4 subtitleFontWeight:&__block_literal_global_9 headingTextColor:v1 headingFontSizeProvider:v3 headingFontWeight:*MEMORY[0x277D74418]];
  v6 = adTheme_adTheme_0;
  adTheme_adTheme_0 = v5;
}

+ (ASCStaticLockupTheme)adWhiteTheme
{
  if (adWhiteTheme_onceToken != -1)
  {
    +[ASCStaticLockupTheme adWhiteTheme];
  }

  v3 = adWhiteTheme_adWhiteTheme;

  return v3;
}

void __36__ASCStaticLockupTheme_adWhiteTheme__block_invoke()
{
  v0 = [ASCStaticLockupTheme alloc];
  v1 = [MEMORY[0x277D75C80] traitCollectionWithUserInterfaceStyle:2];
  v2 = +[ASCSemanticColor primaryLabel];
  v9 = [v2 resolvedColorWithTraitCollection:v1];

  v3 = *MEMORY[0x277D743F8];
  v4 = ASCLockupDarkStyleSubtitleColor();
  v5 = *MEMORY[0x277D74410];
  v6 = ASCLockupDarkStyleSubtitleColor();
  v7 = [(ASCStaticLockupTheme *)v0 initWithTitleTextColor:v9 titleFontSizeProvider:&__block_literal_global_13 titleFontWeight:v4 subtitleTextColor:&__block_literal_global_15 subtitleFontSizeProvider:v6 subtitleFontWeight:&__block_literal_global_17 headingTextColor:v3 headingFontSizeProvider:v5 headingFontWeight:*MEMORY[0x277D74418]];
  v8 = adWhiteTheme_adWhiteTheme;
  adWhiteTheme_adWhiteTheme = v7;
}

+ (ASCStaticLockupTheme)webBrowserTheme
{
  if (webBrowserTheme_onceToken != -1)
  {
    +[ASCStaticLockupTheme webBrowserTheme];
  }

  v3 = webBrowserTheme_webBrowserTheme;

  return v3;
}

void __39__ASCStaticLockupTheme_webBrowserTheme__block_invoke()
{
  v0 = [ASCStaticLockupTheme alloc];
  v9 = +[ASCSemanticColor primaryLabel];
  v1 = *MEMORY[0x277D76918];
  v2 = *MEMORY[0x277D74418];
  v3 = +[ASCSemanticColor secondaryLabel];
  v4 = *MEMORY[0x277D76938];
  v5 = +[ASCSemanticColor secondaryLabel];
  LODWORD(v8) = 0x8000;
  v6 = [(ASCStaticLockupTheme *)v0 initWithTitleTextColor:v9 titleTextStyle:v1 titleFontWeight:0x8000 titleTraits:v3 subtitleTextColor:v4 subtitleTextStyle:0x8000 subtitleFontWeight:v2 subtitleTraits:v2 headingTextColor:v2 headingTextStyle:v5 headingFontWeight:*MEMORY[0x277D76968] headingTraits:v8];
  v7 = webBrowserTheme_webBrowserTheme;
  webBrowserTheme_webBrowserTheme = v6;
}

- (ASCStaticLockupTheme)initWithTitleTextColor:(id)a3 titleTextStyle:(id)a4 titleFontWeight:(double)a5 titleTraits:(unsigned int)a6 subtitleTextColor:(id)a7 subtitleTextStyle:(id)a8 subtitleFontWeight:(double)a9 subtitleTraits:(unsigned int)a10 headingTextColor:(id)a11 headingTextStyle:(id)a12 headingFontWeight:(double)a13 headingTraits:(unsigned int)a14
{
  v22 = a3;
  v32 = a4;
  v31 = a7;
  v30 = a8;
  v23 = a11;
  v24 = a12;
  v33.receiver = self;
  v33.super_class = ASCStaticLockupTheme;
  v25 = [(ASCStaticLockupTheme *)&v33 init];
  v26 = v25;
  if (v25)
  {
    objc_storeStrong(&v25->_titleTextColor, a3);
    objc_storeStrong(&v26->_titleTextStyle, a4);
    v26->_titleFontWeight = a5;
    v26->_titleTraits = a6;
    objc_storeStrong(&v26->_subtitleTextColor, a7);
    objc_storeStrong(&v26->_subtitleTextStyle, a8);
    v26->_subtitleFontWeight = a9;
    v26->_subtitleTraits = a10;
    objc_storeStrong(&v26->_headingTextColor, a11);
    objc_storeStrong(&v26->_headingTextStyle, a12);
    v26->_headingFontWeight = a13;
    v26->_headingTraits = a14;
  }

  return v26;
}

- (ASCStaticLockupTheme)initWithTitleTextColor:(id)a3 titleFontSizeProvider:(id)a4 titleFontWeight:(double)a5 subtitleTextColor:(id)a6 subtitleFontSizeProvider:(id)a7 subtitleFontWeight:(double)a8 headingTextColor:(id)a9 headingFontSizeProvider:(id)a10 headingFontWeight:(double)a11
{
  v35 = a3;
  v21 = a4;
  v22 = a6;
  v23 = a7;
  v24 = a9;
  v25 = a10;
  v36.receiver = self;
  v36.super_class = ASCStaticLockupTheme;
  v26 = [(ASCStaticLockupTheme *)&v36 init];
  v27 = v26;
  if (v26)
  {
    objc_storeStrong(&v26->_titleTextColor, a3);
    v28 = MEMORY[0x216070C30](v21);
    titleFontSizeProvider = v27->_titleFontSizeProvider;
    v27->_titleFontSizeProvider = v28;

    v27->_titleFontWeight = a5;
    objc_storeStrong(&v27->_subtitleTextColor, a6);
    v30 = MEMORY[0x216070C30](v23);
    subtitleFontSizeProvider = v27->_subtitleFontSizeProvider;
    v27->_subtitleFontSizeProvider = v30;

    v27->_subtitleFontWeight = a8;
    objc_storeStrong(&v27->_headingTextColor, a9);
    v32 = MEMORY[0x216070C30](v25);
    headingFontSizeProvider = v27->_headingFontSizeProvider;
    v27->_headingFontSizeProvider = v32;

    v27->_headingFontWeight = a11;
  }

  return v27;
}

- (id)titleFontCompatibleWithTraitCollection:(id)a3
{
  v4 = a3;
  v5 = [(ASCStaticLockupTheme *)self titleFontSizeProvider];

  if (v5)
  {
    v6 = [(ASCStaticLockupTheme *)self titleFontSizeProvider];
    v7 = [v4 preferredContentSizeCategory];
    v8 = (v6)[2](v6, v7);

    if (!titleFontCompatibleWithTraitCollection__titleFont || ([titleFontCompatibleWithTraitCollection__titleFont pointSize], v9 != v8))
    {
      v10 = MEMORY[0x277D74300];
      [(ASCStaticLockupTheme *)self titleFontWeight];
      v12 = [v10 systemFontOfSize:v8 weight:v11];
      v13 = titleFontCompatibleWithTraitCollection__titleFont;
      titleFontCompatibleWithTraitCollection__titleFont = v12;
    }

    v14 = titleFontCompatibleWithTraitCollection__titleFont;
  }

  else
  {
    v15 = [(ASCStaticLockupTheme *)self titleTraits];
    v16 = MEMORY[0x277D74300];
    v17 = [(ASCStaticLockupTheme *)self titleTextStyle];
    if (v15)
    {
      [v16 asc_preferredFontForTextStyle:v17 withTraits:-[ASCStaticLockupTheme titleTraits](self compatibleWithTraitCollection:{"titleTraits"), v4}];
    }

    else
    {
      [(ASCStaticLockupTheme *)self titleFontWeight];
      [v16 asc_fontDerivedFromTextStyle:v17 byApplyingFontWeight:v4 compatibleWithTraitCollection:?];
    }
    v14 = ;
  }

  return v14;
}

- (id)subtitleFontCompatibleWithTraitCollection:(id)a3
{
  v4 = a3;
  v5 = [(ASCStaticLockupTheme *)self subtitleFontSizeProvider];

  if (v5)
  {
    v6 = [(ASCStaticLockupTheme *)self subtitleFontSizeProvider];
    v7 = [v4 preferredContentSizeCategory];
    v8 = (v6)[2](v6, v7);

    if (!subtitleFontCompatibleWithTraitCollection__subtitleFont || ([subtitleFontCompatibleWithTraitCollection__subtitleFont pointSize], v9 != v8))
    {
      v10 = MEMORY[0x277D74300];
      [(ASCStaticLockupTheme *)self subtitleFontWeight];
      v12 = [v10 systemFontOfSize:v8 weight:v11];
      v13 = subtitleFontCompatibleWithTraitCollection__subtitleFont;
      subtitleFontCompatibleWithTraitCollection__subtitleFont = v12;
    }

    v14 = subtitleFontCompatibleWithTraitCollection__subtitleFont;
  }

  else
  {
    v15 = [(ASCStaticLockupTheme *)self subtitleTraits];
    v16 = MEMORY[0x277D74300];
    v17 = [(ASCStaticLockupTheme *)self subtitleTextStyle];
    if (v15)
    {
      [v16 asc_preferredFontForTextStyle:v17 withTraits:-[ASCStaticLockupTheme subtitleTraits](self compatibleWithTraitCollection:{"subtitleTraits"), v4}];
    }

    else
    {
      [(ASCStaticLockupTheme *)self subtitleFontWeight];
      [v16 asc_fontDerivedFromTextStyle:v17 byApplyingFontWeight:v4 compatibleWithTraitCollection:?];
    }
    v14 = ;
  }

  return v14;
}

- (id)headingFontCompatibleWithTraitCollection:(id)a3
{
  v4 = a3;
  v5 = [(ASCStaticLockupTheme *)self headingFontSizeProvider];

  if (v5)
  {
    v6 = [(ASCStaticLockupTheme *)self headingFontSizeProvider];
    v7 = [v4 preferredContentSizeCategory];
    v8 = (v6)[2](v6, v7);

    if (!headingFontCompatibleWithTraitCollection__headingFont || ([headingFontCompatibleWithTraitCollection__headingFont pointSize], v9 != v8))
    {
      v10 = MEMORY[0x277D74300];
      [(ASCStaticLockupTheme *)self headingFontWeight];
      v12 = [v10 systemFontOfSize:v8 weight:v11];
      v13 = headingFontCompatibleWithTraitCollection__headingFont;
      headingFontCompatibleWithTraitCollection__headingFont = v12;
    }

    v14 = headingFontCompatibleWithTraitCollection__headingFont;
  }

  else
  {
    v15 = [(ASCStaticLockupTheme *)self headingTraits];
    v16 = MEMORY[0x277D74300];
    v17 = [(ASCStaticLockupTheme *)self headingTextStyle];
    if (v15)
    {
      [v16 asc_preferredFontForTextStyle:v17 withTraits:-[ASCStaticLockupTheme headingTraits](self compatibleWithTraitCollection:{"headingTraits"), v4}];
    }

    else
    {
      [(ASCStaticLockupTheme *)self headingFontWeight];
      [v16 asc_fontDerivedFromTextStyle:v17 byApplyingFontWeight:v4 compatibleWithTraitCollection:?];
    }
    v14 = ;
  }

  return v14;
}

- (void)applyToLockupContentView:(id)a3 compatibleWithTraitCollection:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(ASCStaticLockupTheme *)self titleTextColor];
  v9 = [v7 titleLabel];
  [v9 setTextColor:v8];

  v10 = [(ASCStaticLockupTheme *)self subtitleTextColor];
  v11 = [v7 subtitleLabel];
  [v11 setTextColor:v10];

  v12 = [(ASCStaticLockupTheme *)self headingTextColor];
  v13 = [v7 headingLabelIfLoaded];
  [v13 setTextColor:v12];

  v14 = [(ASCStaticLockupTheme *)self titleFontCompatibleWithTraitCollection:v6];
  v15 = [v7 titleLabel];
  [v15 setFont:v14];

  v16 = [(ASCStaticLockupTheme *)self subtitleFontCompatibleWithTraitCollection:v6];
  v17 = [v7 subtitleLabel];
  [v17 setFont:v16];

  v19 = [(ASCStaticLockupTheme *)self headingFontCompatibleWithTraitCollection:v6];

  v18 = [v7 headingLabelIfLoaded];

  [v18 setFont:v19];
}

- (unint64_t)hash
{
  v3 = objc_alloc_init(ASCHasher);
  v4 = [(ASCStaticLockupTheme *)self titleTextColor];
  [(ASCHasher *)v3 combineObject:v4];

  v5 = [(ASCStaticLockupTheme *)self titleTextStyle];
  [(ASCHasher *)v3 combineObject:v5];

  [(ASCStaticLockupTheme *)self titleFontWeight];
  [(ASCHasher *)v3 combineDouble:?];
  [(ASCHasher *)v3 combineUnsignedInteger:[(ASCStaticLockupTheme *)self titleTraits]];
  v6 = [(ASCStaticLockupTheme *)self subtitleTextColor];
  [(ASCHasher *)v3 combineObject:v6];

  v7 = [(ASCStaticLockupTheme *)self subtitleTextStyle];
  [(ASCHasher *)v3 combineObject:v7];

  [(ASCStaticLockupTheme *)self subtitleFontWeight];
  [(ASCHasher *)v3 combineDouble:?];
  [(ASCHasher *)v3 combineUnsignedInteger:[(ASCStaticLockupTheme *)self subtitleTraits]];
  v8 = [(ASCStaticLockupTheme *)self headingTextColor];
  [(ASCHasher *)v3 combineObject:v8];

  v9 = [(ASCStaticLockupTheme *)self headingTextStyle];
  [(ASCHasher *)v3 combineObject:v9];

  [(ASCStaticLockupTheme *)self headingFontWeight];
  [(ASCHasher *)v3 combineDouble:?];
  [(ASCHasher *)v3 combineUnsignedInteger:[(ASCStaticLockupTheme *)self headingTraits]];
  v10 = [(ASCHasher *)v3 finalizeHash];

  return v10;
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
    v8 = [(ASCStaticLockupTheme *)self titleTextColor];
    v9 = [v7 titleTextColor];
    v10 = v9;
    if (v8 && v9)
    {
      if ([v8 isEqual:v9])
      {
LABEL_10:
        v11 = [(ASCStaticLockupTheme *)self titleTextStyle];
        v12 = [v7 titleTextStyle];
        v13 = v12;
        if (v11 && v12)
        {
          if (![v11 isEqual:v12])
          {
            goto LABEL_33;
          }
        }

        else if (v11 != v12)
        {
          goto LABEL_33;
        }

        [(ASCStaticLockupTheme *)self titleFontWeight];
        v16 = v15;
        [v7 titleFontWeight];
        if (v16 == v17)
        {
          v18 = [(ASCStaticLockupTheme *)self subtitleTextColor];
          v19 = [v7 subtitleTextColor];
          v20 = v19;
          if (v18 && v19)
          {
            if ([v18 isEqual:v19])
            {
LABEL_22:
              v21 = [(ASCStaticLockupTheme *)self subtitleTextStyle];
              v22 = [v7 subtitleTextStyle];
              v23 = v22;
              if (v21 && v22)
              {
                v24 = v21;
                v51 = v20;
                v25 = v21;
                v26 = v23;
                v27 = [v24 isEqual:v23];
                v23 = v26;
                v21 = v25;
                v20 = v51;
                if (v27)
                {
                  goto LABEL_25;
                }
              }

              else if (v21 == v22)
              {
LABEL_25:
                v49 = v23;
                v50 = v21;
                [(ASCStaticLockupTheme *)self subtitleFontWeight];
                v29 = v28;
                [v7 subtitleFontWeight];
                if (v29 != v30)
                {
                  v14 = 0;
LABEL_45:
                  v23 = v49;
                  v21 = v50;
                  goto LABEL_46;
                }

                v31 = [(ASCStaticLockupTheme *)self headingTextColor];
                v32 = [v7 headingTextColor];
                v33 = v32;
                v52 = v31;
                if (v31 && v32)
                {
                  v34 = v32;
                  v35 = [v52 isEqual:v32];
                  v33 = v34;
                  if (v35)
                  {
LABEL_29:
                    v47 = v33;
                    v36 = [(ASCStaticLockupTheme *)self headingTextStyle];
                    v37 = [v7 headingTextStyle];
                    v38 = v37;
                    v48 = v36;
                    if (v36 && v37)
                    {
                      v39 = v37;
                      v40 = [v48 isEqual:v37];
                      v38 = v39;
                      if (v40)
                      {
LABEL_32:
                        v41 = self;
                        v42 = v38;
                        [(ASCStaticLockupTheme *)v41 headingFontWeight];
                        v44 = v43;
                        [v7 headingFontWeight];
                        v38 = v42;
                        v14 = v44 == v45;
LABEL_43:

                        v33 = v47;
                        goto LABEL_44;
                      }
                    }

                    else if (v36 == v37)
                    {
                      goto LABEL_32;
                    }

                    v14 = 0;
                    goto LABEL_43;
                  }
                }

                else if (v31 == v32)
                {
                  goto LABEL_29;
                }

                v14 = 0;
LABEL_44:

                goto LABEL_45;
              }

              v14 = 0;
LABEL_46:

              goto LABEL_47;
            }
          }

          else if (v18 == v19)
          {
            goto LABEL_22;
          }

          v14 = 0;
LABEL_47:

          goto LABEL_48;
        }

LABEL_33:
        v14 = 0;
LABEL_48:

        goto LABEL_49;
      }
    }

    else if (v8 == v9)
    {
      goto LABEL_10;
    }

    v14 = 0;
LABEL_49:

    goto LABEL_50;
  }

  v14 = 0;
LABEL_50:

  return v14;
}

- (NSString)description
{
  v3 = [[ASCDescriber alloc] initWithObject:self];
  v4 = [(ASCStaticLockupTheme *)self titleTextColor];
  [(ASCDescriber *)v3 addObject:v4 withName:@"titleTextColor"];

  v5 = [(ASCStaticLockupTheme *)self titleTextStyle];
  [(ASCDescriber *)v3 addObject:v5 withName:@"titleTextStyle"];

  [(ASCStaticLockupTheme *)self titleFontWeight];
  [(ASCDescriber *)v3 addDouble:@"titleFontWeight" withName:?];
  [(ASCDescriber *)v3 addUnsignedInteger:[(ASCStaticLockupTheme *)self titleTraits] withName:@"titleTraits"];
  v6 = [(ASCStaticLockupTheme *)self subtitleTextColor];
  [(ASCDescriber *)v3 addObject:v6 withName:@"subtitleTextColor"];

  v7 = [(ASCStaticLockupTheme *)self subtitleTextStyle];
  [(ASCDescriber *)v3 addObject:v7 withName:@"subtitleTextStyle"];

  [(ASCStaticLockupTheme *)self subtitleFontWeight];
  [(ASCDescriber *)v3 addDouble:@"subtitleFontWeight" withName:?];
  [(ASCDescriber *)v3 addUnsignedInteger:[(ASCStaticLockupTheme *)self subtitleTraits] withName:@"subtitleTraits"];
  v8 = [(ASCStaticLockupTheme *)self headingTextColor];
  [(ASCDescriber *)v3 addObject:v8 withName:@"headingTextColor"];

  v9 = [(ASCStaticLockupTheme *)self headingTextStyle];
  [(ASCDescriber *)v3 addObject:v9 withName:@"headingTextStyle"];

  [(ASCStaticLockupTheme *)self headingFontWeight];
  [(ASCDescriber *)v3 addDouble:@"headingFontWeight" withName:?];
  [(ASCDescriber *)v3 addUnsignedInteger:[(ASCStaticLockupTheme *)self headingTraits] withName:@"headingTraits"];
  v10 = [(ASCDescriber *)v3 finalizeDescription];

  return v10;
}

@end