@interface ASCDefaultLockupTheme
+ (ASCDefaultLockupTheme)sharedTheme;
+ (CGSize)preferredIconSizeForSize:(id)a3 compatibleWithTraitCollection:(id)a4;
+ (id)headingLabelColorForView:(id)a3;
+ (id)headingLabelFontForSize:(id)a3 compatibleWithTraitCollection:(id)a4;
+ (id)subtitleLabelFontForView:(id)a3 compatibleWithTraitCollection:(id)a4;
+ (id)titleLabelFontForView:(id)a3 compatibleWithTraitCollection:(id)a4;
+ (int64_t)preferredLabelAlignmentForSize:(id)a3;
+ (void)updateOfferStatusLabelColorForView:(id)a3;
- (void)applyToLockupContentView:(id)a3 compatibleWithTraitCollection:(id)a4;
@end

@implementation ASCDefaultLockupTheme

+ (ASCDefaultLockupTheme)sharedTheme
{
  if (sharedTheme_onceToken != -1)
  {
    +[ASCDefaultLockupTheme sharedTheme];
  }

  v3 = sharedTheme_sharedTheme;

  return v3;
}

uint64_t __36__ASCDefaultLockupTheme_sharedTheme__block_invoke()
{
  sharedTheme_sharedTheme = objc_alloc_init(ASCDefaultLockupTheme);

  return MEMORY[0x2821F96F8]();
}

+ (CGSize)preferredIconSizeForSize:(id)a3 compatibleWithTraitCollection:(id)a4
{
  v5 = a3;
  IconSize = ASCLockupViewSizeGetIconSize(v5, [a4 horizontalSizeClass]);
  v8 = v7;

  v9 = IconSize;
  v10 = v8;
  result.height = v10;
  result.width = v9;
  return result;
}

+ (int64_t)preferredLabelAlignmentForSize:(id)a3
{
  v3 = a3;
  if (ASCLockupViewSizeIsMini(v3, v4) & 1) != 0 || (ASCLockupViewSizeIsSmall(v3, v5) & 1) != 0 || (ASCLockupViewSizeIsMedium(v3, v6) & 1) != 0 || (ASCLockupViewSizeIsSmallOfferButton(v3, v7) & 1) != 0 || (ASCLockupViewSizeIsMediumOfferButton(v3, v8))
  {
    v10 = 4;
  }

  else
  {
    if ((ASCLockupViewSizeIsLargeAppShowcase(v3, v9) & 1) == 0 && (ASCLockupViewSizeIsLargeAppAd(v3, v12) & 1) == 0)
    {
      ASCUnknownEnumCase(@"ASCLockupViewSize", v3);
    }

    v10 = 1;
  }

  return v10;
}

+ (id)headingLabelColorForView:(id)a3
{
  v3 = [a3 lockupSize];
  if (ASCLockupViewSizeIsMini(v3, v4))
  {
    +[ASCSemanticColor primaryLabel];
  }

  else
  {
    +[ASCSemanticColor secondaryLabel];
  }
  v5 = ;

  return v5;
}

+ (id)headingLabelFontForSize:(id)a3 compatibleWithTraitCollection:(id)a4
{
  v5 = a4;
  if (ASCLockupViewSizeIsMini(a3, v6))
  {
    [MEMORY[0x277D74300] asc_fontDerivedFromTextStyle:*MEMORY[0x277D76938] byApplyingFontWeight:v5 compatibleWithTraitCollection:*MEMORY[0x277D74410]];
  }

  else
  {
    [MEMORY[0x277D74300] asc_preferredFontForTextStyle:*MEMORY[0x277D76968] withTraits:0x8000 compatibleWithTraitCollection:v5];
  }
  v7 = ;

  return v7;
}

+ (id)titleLabelFontForView:(id)a3 compatibleWithTraitCollection:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v5 lockupSize];
  if (ASCLockupViewSizeIsMini(v7, v8))
  {
    v10 = MEMORY[0x277D74300];
    v11 = *MEMORY[0x277D769D0];
    v12 = *MEMORY[0x277D74410];
LABEL_8:
    v17 = [v10 asc_preferredFontForTextStyle:v11 withTraits:v12 compatibleWithTraitCollection:v6];
    goto LABEL_9;
  }

  if ((ASCLockupViewSizeIsSmall(v7, v9) & 1) != 0 || (ASCLockupViewSizeIsMedium(v7, v13) & 1) != 0 || (ASCLockupViewSizeIsSmallOfferButton(v7, v14) & 1) != 0 || ASCLockupViewSizeIsMediumOfferButton(v7, v15))
  {
    v10 = MEMORY[0x277D74300];
    v11 = *MEMORY[0x277D76918];
    v12 = 0x8000;
    goto LABEL_8;
  }

  if ((ASCLockupViewSizeIsLargeAppShowcase(v7, v16) & 1) == 0 && !ASCLockupViewSizeIsLargeAppAd(v7, v20))
  {
    ASCUnknownEnumCase(@"ASCLockupViewSize", v7);
  }

  v17 = [MEMORY[0x277D74300] asc_preferredFontForTextStyle:*MEMORY[0x277D76A20] compatibleWithTraitCollection:v6];
LABEL_9:
  v18 = v17;

  return v18;
}

+ (id)subtitleLabelFontForView:(id)a3 compatibleWithTraitCollection:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v5 lockupSize];
  if (ASCLockupViewSizeIsMini(v7, v8))
  {
    v10 = MEMORY[0x277D76938];
  }

  else if (ASCLockupViewSizeIsSmall(v7, v9) & 1) != 0 || (ASCLockupViewSizeIsMedium(v7, v11) & 1) != 0 || (ASCLockupViewSizeIsSmallOfferButton(v7, v12) & 1) != 0 || (ASCLockupViewSizeIsMediumOfferButton(v7, v13))
  {
    v10 = MEMORY[0x277D76968];
  }

  else
  {
    if ((ASCLockupViewSizeIsLargeAppShowcase(v7, v14) & 1) == 0 && (ASCLockupViewSizeIsLargeAppAd(v7, v17) & 1) == 0)
    {
      ASCUnknownEnumCase(@"ASCLockupViewSize", v7);
    }

    v10 = MEMORY[0x277D769D0];
  }

  v15 = [MEMORY[0x277D74300] asc_preferredFontForTextStyle:*v10 compatibleWithTraitCollection:v6];

  return v15;
}

+ (void)updateOfferStatusLabelColorForView:(id)a3
{
  v3 = [a3 offerStatusLabelIfLoaded];
  [v3 _setTextColorFollowsTintColor:1];
}

- (void)applyToLockupContentView:(id)a3 compatibleWithTraitCollection:(id)a4
{
  v5 = a4;
  v6 = a3;
  v45 = [v6 lockupSize];
  [ASCDefaultLockupTheme preferredIconSizeForSize:v45 compatibleWithTraitCollection:v5];
  v8 = v7;
  v10 = v9;
  v11 = [v6 iconArtworkView];
  [v11 setPreferredSize:{v8, v10}];

  v12 = [ASCDefaultLockupTheme preferredLabelAlignmentForSize:v45];
  v13 = [ASCDefaultLockupTheme headingLabelFontForSize:v45 compatibleWithTraitCollection:v5];
  v14 = [v6 headingLabelIfLoaded];
  [v14 setFont:v13];

  v15 = [ASCDefaultLockupTheme headingLabelColorForView:v6];
  v16 = [v6 headingLabelIfLoaded];
  [v16 setTextColor:v15];

  v17 = [v6 headingLabelIfLoaded];
  [v17 setTextAlignment:v12];

  v18 = [v6 headingLabelIfLoaded];
  [v18 setNumberOfLines:1];

  v19 = [v6 headingLabelIfLoaded];
  [v19 setLineBreakMode:4];

  v20 = [ASCDefaultLockupTheme titleLabelFontForView:v6 compatibleWithTraitCollection:v5];
  v21 = [v6 titleLabel];
  [v21 setFont:v20];

  v22 = [v6 titleLabel];
  [v22 setTextAlignment:v12];

  v23 = +[ASCSemanticColor loading];
  v24 = [v6 titleLabel];
  [v24 setSkeletonColor:v23];

  v25 = +[ASCSemanticColor primaryLabel];
  v26 = [v6 titleLabel];
  [v26 setTextColor:v25];

  v27 = [ASCDefaultLockupTheme numberOfLinesInTitleForSize:v45 compatibleWithTraitCollection:v5];
  v28 = [v6 titleLabel];
  [v28 setNumberOfLines:v27];

  v29 = [v6 titleLabel];
  [v29 setLineBreakMode:4];

  v30 = [ASCDefaultLockupTheme subtitleLabelFontForView:v6 compatibleWithTraitCollection:v5];
  v31 = [v6 subtitleLabel];
  [v31 setFont:v30];

  v32 = [v6 subtitleLabel];
  [v32 setTextAlignment:v12];

  v33 = +[ASCSemanticColor loading];
  v34 = [v6 subtitleLabel];
  [v34 setSkeletonColor:v33];

  v35 = +[ASCSemanticColor secondaryLabel];
  v36 = [v6 subtitleLabel];
  [v36 setTextColor:v35];

  v37 = [ASCDefaultLockupTheme numberOfLinesInSubtitleForSize:v45 compatibleWithTraitCollection:v5];
  v38 = [v6 subtitleLabel];
  [v38 setNumberOfLines:v37];

  v39 = [v6 subtitleLabel];
  [v39 setLineBreakMode:4];

  [ASCDefaultLockupTheme updateOfferStatusLabelColorForView:v6];
  v40 = [ASCDefaultLockupTheme offerStatusLabelFontForSize:v45 compatibleWithTraitCollection:v5];

  v41 = [v6 offerStatusLabelIfLoaded];
  [v41 setFont:v40];

  v42 = [v6 offerStatusLabelIfLoaded];
  [v42 setTextAlignment:v12];

  v43 = [v6 offerStatusLabelIfLoaded];
  [v43 setNumberOfLines:1];

  v44 = [v6 offerStatusLabelIfLoaded];

  [v44 setLineBreakMode:4];
}

@end