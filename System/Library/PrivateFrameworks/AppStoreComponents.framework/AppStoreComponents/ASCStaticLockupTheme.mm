@interface ASCStaticLockupTheme
+ (ASCStaticLockupTheme)adTheme;
+ (ASCStaticLockupTheme)adWhiteTheme;
+ (ASCStaticLockupTheme)webBrowserTheme;
- (ASCStaticLockupTheme)initWithTitleTextColor:(id)color titleFontSizeProvider:(id)provider titleFontWeight:(double)weight subtitleTextColor:(id)textColor subtitleFontSizeProvider:(id)sizeProvider subtitleFontWeight:(double)fontWeight headingTextColor:(id)headingTextColor headingFontSizeProvider:(id)self0 headingFontWeight:(double)self1;
- (ASCStaticLockupTheme)initWithTitleTextColor:(id)color titleTextStyle:(id)style titleFontWeight:(double)weight titleTraits:(unsigned int)traits subtitleTextColor:(id)textColor subtitleTextStyle:(id)textStyle subtitleFontWeight:(double)fontWeight subtitleTraits:(unsigned int)self0 headingTextColor:(id)self1 headingTextStyle:(id)self2 headingFontWeight:(double)self3 headingTraits:(unsigned int)self4;
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (id)headingFontCompatibleWithTraitCollection:(id)collection;
- (id)subtitleFontCompatibleWithTraitCollection:(id)collection;
- (id)titleFontCompatibleWithTraitCollection:(id)collection;
- (unint64_t)hash;
- (void)applyToLockupContentView:(id)view compatibleWithTraitCollection:(id)collection;
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

- (ASCStaticLockupTheme)initWithTitleTextColor:(id)color titleTextStyle:(id)style titleFontWeight:(double)weight titleTraits:(unsigned int)traits subtitleTextColor:(id)textColor subtitleTextStyle:(id)textStyle subtitleFontWeight:(double)fontWeight subtitleTraits:(unsigned int)self0 headingTextColor:(id)self1 headingTextStyle:(id)self2 headingFontWeight:(double)self3 headingTraits:(unsigned int)self4
{
  colorCopy = color;
  styleCopy = style;
  textColorCopy = textColor;
  textStyleCopy = textStyle;
  headingTextColorCopy = headingTextColor;
  headingTextStyleCopy = headingTextStyle;
  v33.receiver = self;
  v33.super_class = ASCStaticLockupTheme;
  v25 = [(ASCStaticLockupTheme *)&v33 init];
  v26 = v25;
  if (v25)
  {
    objc_storeStrong(&v25->_titleTextColor, color);
    objc_storeStrong(&v26->_titleTextStyle, style);
    v26->_titleFontWeight = weight;
    v26->_titleTraits = traits;
    objc_storeStrong(&v26->_subtitleTextColor, textColor);
    objc_storeStrong(&v26->_subtitleTextStyle, textStyle);
    v26->_subtitleFontWeight = fontWeight;
    v26->_subtitleTraits = subtitleTraits;
    objc_storeStrong(&v26->_headingTextColor, headingTextColor);
    objc_storeStrong(&v26->_headingTextStyle, headingTextStyle);
    v26->_headingFontWeight = headingFontWeight;
    v26->_headingTraits = headingTraits;
  }

  return v26;
}

- (ASCStaticLockupTheme)initWithTitleTextColor:(id)color titleFontSizeProvider:(id)provider titleFontWeight:(double)weight subtitleTextColor:(id)textColor subtitleFontSizeProvider:(id)sizeProvider subtitleFontWeight:(double)fontWeight headingTextColor:(id)headingTextColor headingFontSizeProvider:(id)self0 headingFontWeight:(double)self1
{
  colorCopy = color;
  providerCopy = provider;
  textColorCopy = textColor;
  sizeProviderCopy = sizeProvider;
  headingTextColorCopy = headingTextColor;
  fontSizeProviderCopy = fontSizeProvider;
  v36.receiver = self;
  v36.super_class = ASCStaticLockupTheme;
  v26 = [(ASCStaticLockupTheme *)&v36 init];
  v27 = v26;
  if (v26)
  {
    objc_storeStrong(&v26->_titleTextColor, color);
    v28 = MEMORY[0x216070C30](providerCopy);
    titleFontSizeProvider = v27->_titleFontSizeProvider;
    v27->_titleFontSizeProvider = v28;

    v27->_titleFontWeight = weight;
    objc_storeStrong(&v27->_subtitleTextColor, textColor);
    v30 = MEMORY[0x216070C30](sizeProviderCopy);
    subtitleFontSizeProvider = v27->_subtitleFontSizeProvider;
    v27->_subtitleFontSizeProvider = v30;

    v27->_subtitleFontWeight = fontWeight;
    objc_storeStrong(&v27->_headingTextColor, headingTextColor);
    v32 = MEMORY[0x216070C30](fontSizeProviderCopy);
    headingFontSizeProvider = v27->_headingFontSizeProvider;
    v27->_headingFontSizeProvider = v32;

    v27->_headingFontWeight = headingFontWeight;
  }

  return v27;
}

- (id)titleFontCompatibleWithTraitCollection:(id)collection
{
  collectionCopy = collection;
  titleFontSizeProvider = [(ASCStaticLockupTheme *)self titleFontSizeProvider];

  if (titleFontSizeProvider)
  {
    titleFontSizeProvider2 = [(ASCStaticLockupTheme *)self titleFontSizeProvider];
    preferredContentSizeCategory = [collectionCopy preferredContentSizeCategory];
    v8 = (titleFontSizeProvider2)[2](titleFontSizeProvider2, preferredContentSizeCategory);

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
    titleTraits = [(ASCStaticLockupTheme *)self titleTraits];
    v16 = MEMORY[0x277D74300];
    titleTextStyle = [(ASCStaticLockupTheme *)self titleTextStyle];
    if (titleTraits)
    {
      [v16 asc_preferredFontForTextStyle:titleTextStyle withTraits:-[ASCStaticLockupTheme titleTraits](self compatibleWithTraitCollection:{"titleTraits"), collectionCopy}];
    }

    else
    {
      [(ASCStaticLockupTheme *)self titleFontWeight];
      [v16 asc_fontDerivedFromTextStyle:titleTextStyle byApplyingFontWeight:collectionCopy compatibleWithTraitCollection:?];
    }
    v14 = ;
  }

  return v14;
}

- (id)subtitleFontCompatibleWithTraitCollection:(id)collection
{
  collectionCopy = collection;
  subtitleFontSizeProvider = [(ASCStaticLockupTheme *)self subtitleFontSizeProvider];

  if (subtitleFontSizeProvider)
  {
    subtitleFontSizeProvider2 = [(ASCStaticLockupTheme *)self subtitleFontSizeProvider];
    preferredContentSizeCategory = [collectionCopy preferredContentSizeCategory];
    v8 = (subtitleFontSizeProvider2)[2](subtitleFontSizeProvider2, preferredContentSizeCategory);

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
    subtitleTraits = [(ASCStaticLockupTheme *)self subtitleTraits];
    v16 = MEMORY[0x277D74300];
    subtitleTextStyle = [(ASCStaticLockupTheme *)self subtitleTextStyle];
    if (subtitleTraits)
    {
      [v16 asc_preferredFontForTextStyle:subtitleTextStyle withTraits:-[ASCStaticLockupTheme subtitleTraits](self compatibleWithTraitCollection:{"subtitleTraits"), collectionCopy}];
    }

    else
    {
      [(ASCStaticLockupTheme *)self subtitleFontWeight];
      [v16 asc_fontDerivedFromTextStyle:subtitleTextStyle byApplyingFontWeight:collectionCopy compatibleWithTraitCollection:?];
    }
    v14 = ;
  }

  return v14;
}

- (id)headingFontCompatibleWithTraitCollection:(id)collection
{
  collectionCopy = collection;
  headingFontSizeProvider = [(ASCStaticLockupTheme *)self headingFontSizeProvider];

  if (headingFontSizeProvider)
  {
    headingFontSizeProvider2 = [(ASCStaticLockupTheme *)self headingFontSizeProvider];
    preferredContentSizeCategory = [collectionCopy preferredContentSizeCategory];
    v8 = (headingFontSizeProvider2)[2](headingFontSizeProvider2, preferredContentSizeCategory);

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
    headingTraits = [(ASCStaticLockupTheme *)self headingTraits];
    v16 = MEMORY[0x277D74300];
    headingTextStyle = [(ASCStaticLockupTheme *)self headingTextStyle];
    if (headingTraits)
    {
      [v16 asc_preferredFontForTextStyle:headingTextStyle withTraits:-[ASCStaticLockupTheme headingTraits](self compatibleWithTraitCollection:{"headingTraits"), collectionCopy}];
    }

    else
    {
      [(ASCStaticLockupTheme *)self headingFontWeight];
      [v16 asc_fontDerivedFromTextStyle:headingTextStyle byApplyingFontWeight:collectionCopy compatibleWithTraitCollection:?];
    }
    v14 = ;
  }

  return v14;
}

- (void)applyToLockupContentView:(id)view compatibleWithTraitCollection:(id)collection
{
  collectionCopy = collection;
  viewCopy = view;
  titleTextColor = [(ASCStaticLockupTheme *)self titleTextColor];
  titleLabel = [viewCopy titleLabel];
  [titleLabel setTextColor:titleTextColor];

  subtitleTextColor = [(ASCStaticLockupTheme *)self subtitleTextColor];
  subtitleLabel = [viewCopy subtitleLabel];
  [subtitleLabel setTextColor:subtitleTextColor];

  headingTextColor = [(ASCStaticLockupTheme *)self headingTextColor];
  headingLabelIfLoaded = [viewCopy headingLabelIfLoaded];
  [headingLabelIfLoaded setTextColor:headingTextColor];

  v14 = [(ASCStaticLockupTheme *)self titleFontCompatibleWithTraitCollection:collectionCopy];
  titleLabel2 = [viewCopy titleLabel];
  [titleLabel2 setFont:v14];

  v16 = [(ASCStaticLockupTheme *)self subtitleFontCompatibleWithTraitCollection:collectionCopy];
  subtitleLabel2 = [viewCopy subtitleLabel];
  [subtitleLabel2 setFont:v16];

  v19 = [(ASCStaticLockupTheme *)self headingFontCompatibleWithTraitCollection:collectionCopy];

  headingLabelIfLoaded2 = [viewCopy headingLabelIfLoaded];

  [headingLabelIfLoaded2 setFont:v19];
}

- (unint64_t)hash
{
  v3 = objc_alloc_init(ASCHasher);
  titleTextColor = [(ASCStaticLockupTheme *)self titleTextColor];
  [(ASCHasher *)v3 combineObject:titleTextColor];

  titleTextStyle = [(ASCStaticLockupTheme *)self titleTextStyle];
  [(ASCHasher *)v3 combineObject:titleTextStyle];

  [(ASCStaticLockupTheme *)self titleFontWeight];
  [(ASCHasher *)v3 combineDouble:?];
  [(ASCHasher *)v3 combineUnsignedInteger:[(ASCStaticLockupTheme *)self titleTraits]];
  subtitleTextColor = [(ASCStaticLockupTheme *)self subtitleTextColor];
  [(ASCHasher *)v3 combineObject:subtitleTextColor];

  subtitleTextStyle = [(ASCStaticLockupTheme *)self subtitleTextStyle];
  [(ASCHasher *)v3 combineObject:subtitleTextStyle];

  [(ASCStaticLockupTheme *)self subtitleFontWeight];
  [(ASCHasher *)v3 combineDouble:?];
  [(ASCHasher *)v3 combineUnsignedInteger:[(ASCStaticLockupTheme *)self subtitleTraits]];
  headingTextColor = [(ASCStaticLockupTheme *)self headingTextColor];
  [(ASCHasher *)v3 combineObject:headingTextColor];

  headingTextStyle = [(ASCStaticLockupTheme *)self headingTextStyle];
  [(ASCHasher *)v3 combineObject:headingTextStyle];

  [(ASCStaticLockupTheme *)self headingFontWeight];
  [(ASCHasher *)v3 combineDouble:?];
  [(ASCHasher *)v3 combineUnsignedInteger:[(ASCStaticLockupTheme *)self headingTraits]];
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
    titleTextColor = [(ASCStaticLockupTheme *)self titleTextColor];
    titleTextColor2 = [v7 titleTextColor];
    v10 = titleTextColor2;
    if (titleTextColor && titleTextColor2)
    {
      if ([titleTextColor isEqual:titleTextColor2])
      {
LABEL_10:
        titleTextStyle = [(ASCStaticLockupTheme *)self titleTextStyle];
        titleTextStyle2 = [v7 titleTextStyle];
        v13 = titleTextStyle2;
        if (titleTextStyle && titleTextStyle2)
        {
          if (![titleTextStyle isEqual:titleTextStyle2])
          {
            goto LABEL_33;
          }
        }

        else if (titleTextStyle != titleTextStyle2)
        {
          goto LABEL_33;
        }

        [(ASCStaticLockupTheme *)self titleFontWeight];
        v16 = v15;
        [v7 titleFontWeight];
        if (v16 == v17)
        {
          subtitleTextColor = [(ASCStaticLockupTheme *)self subtitleTextColor];
          subtitleTextColor2 = [v7 subtitleTextColor];
          v20 = subtitleTextColor2;
          if (subtitleTextColor && subtitleTextColor2)
          {
            if ([subtitleTextColor isEqual:subtitleTextColor2])
            {
LABEL_22:
              subtitleTextStyle = [(ASCStaticLockupTheme *)self subtitleTextStyle];
              subtitleTextStyle2 = [v7 subtitleTextStyle];
              v23 = subtitleTextStyle2;
              if (subtitleTextStyle && subtitleTextStyle2)
              {
                v24 = subtitleTextStyle;
                v51 = v20;
                v25 = subtitleTextStyle;
                v26 = v23;
                v27 = [v24 isEqual:v23];
                v23 = v26;
                subtitleTextStyle = v25;
                v20 = v51;
                if (v27)
                {
                  goto LABEL_25;
                }
              }

              else if (subtitleTextStyle == subtitleTextStyle2)
              {
LABEL_25:
                v49 = v23;
                v50 = subtitleTextStyle;
                [(ASCStaticLockupTheme *)self subtitleFontWeight];
                v29 = v28;
                [v7 subtitleFontWeight];
                if (v29 != v30)
                {
                  v14 = 0;
LABEL_45:
                  v23 = v49;
                  subtitleTextStyle = v50;
                  goto LABEL_46;
                }

                headingTextColor = [(ASCStaticLockupTheme *)self headingTextColor];
                headingTextColor2 = [v7 headingTextColor];
                v33 = headingTextColor2;
                v52 = headingTextColor;
                if (headingTextColor && headingTextColor2)
                {
                  v34 = headingTextColor2;
                  v35 = [v52 isEqual:headingTextColor2];
                  v33 = v34;
                  if (v35)
                  {
LABEL_29:
                    v47 = v33;
                    headingTextStyle = [(ASCStaticLockupTheme *)self headingTextStyle];
                    headingTextStyle2 = [v7 headingTextStyle];
                    v38 = headingTextStyle2;
                    v48 = headingTextStyle;
                    if (headingTextStyle && headingTextStyle2)
                    {
                      v39 = headingTextStyle2;
                      v40 = [v48 isEqual:headingTextStyle2];
                      v38 = v39;
                      if (v40)
                      {
LABEL_32:
                        selfCopy = self;
                        v42 = v38;
                        [(ASCStaticLockupTheme *)selfCopy headingFontWeight];
                        v44 = v43;
                        [v7 headingFontWeight];
                        v38 = v42;
                        v14 = v44 == v45;
LABEL_43:

                        v33 = v47;
                        goto LABEL_44;
                      }
                    }

                    else if (headingTextStyle == headingTextStyle2)
                    {
                      goto LABEL_32;
                    }

                    v14 = 0;
                    goto LABEL_43;
                  }
                }

                else if (headingTextColor == headingTextColor2)
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

          else if (subtitleTextColor == subtitleTextColor2)
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

    else if (titleTextColor == titleTextColor2)
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
  titleTextColor = [(ASCStaticLockupTheme *)self titleTextColor];
  [(ASCDescriber *)v3 addObject:titleTextColor withName:@"titleTextColor"];

  titleTextStyle = [(ASCStaticLockupTheme *)self titleTextStyle];
  [(ASCDescriber *)v3 addObject:titleTextStyle withName:@"titleTextStyle"];

  [(ASCStaticLockupTheme *)self titleFontWeight];
  [(ASCDescriber *)v3 addDouble:@"titleFontWeight" withName:?];
  [(ASCDescriber *)v3 addUnsignedInteger:[(ASCStaticLockupTheme *)self titleTraits] withName:@"titleTraits"];
  subtitleTextColor = [(ASCStaticLockupTheme *)self subtitleTextColor];
  [(ASCDescriber *)v3 addObject:subtitleTextColor withName:@"subtitleTextColor"];

  subtitleTextStyle = [(ASCStaticLockupTheme *)self subtitleTextStyle];
  [(ASCDescriber *)v3 addObject:subtitleTextStyle withName:@"subtitleTextStyle"];

  [(ASCStaticLockupTheme *)self subtitleFontWeight];
  [(ASCDescriber *)v3 addDouble:@"subtitleFontWeight" withName:?];
  [(ASCDescriber *)v3 addUnsignedInteger:[(ASCStaticLockupTheme *)self subtitleTraits] withName:@"subtitleTraits"];
  headingTextColor = [(ASCStaticLockupTheme *)self headingTextColor];
  [(ASCDescriber *)v3 addObject:headingTextColor withName:@"headingTextColor"];

  headingTextStyle = [(ASCStaticLockupTheme *)self headingTextStyle];
  [(ASCDescriber *)v3 addObject:headingTextStyle withName:@"headingTextStyle"];

  [(ASCStaticLockupTheme *)self headingFontWeight];
  [(ASCDescriber *)v3 addDouble:@"headingFontWeight" withName:?];
  [(ASCDescriber *)v3 addUnsignedInteger:[(ASCStaticLockupTheme *)self headingTraits] withName:@"headingTraits"];
  finalizeDescription = [(ASCDescriber *)v3 finalizeDescription];

  return finalizeDescription;
}

@end