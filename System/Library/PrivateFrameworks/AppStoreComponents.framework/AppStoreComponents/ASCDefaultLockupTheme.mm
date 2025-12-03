@interface ASCDefaultLockupTheme
+ (ASCDefaultLockupTheme)sharedTheme;
+ (CGSize)preferredIconSizeForSize:(id)size compatibleWithTraitCollection:(id)collection;
+ (id)headingLabelColorForView:(id)view;
+ (id)headingLabelFontForSize:(id)size compatibleWithTraitCollection:(id)collection;
+ (id)subtitleLabelFontForView:(id)view compatibleWithTraitCollection:(id)collection;
+ (id)titleLabelFontForView:(id)view compatibleWithTraitCollection:(id)collection;
+ (int64_t)preferredLabelAlignmentForSize:(id)size;
+ (void)updateOfferStatusLabelColorForView:(id)view;
- (void)applyToLockupContentView:(id)view compatibleWithTraitCollection:(id)collection;
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

+ (CGSize)preferredIconSizeForSize:(id)size compatibleWithTraitCollection:(id)collection
{
  sizeCopy = size;
  IconSize = ASCLockupViewSizeGetIconSize(sizeCopy, [collection horizontalSizeClass]);
  v8 = v7;

  v9 = IconSize;
  v10 = v8;
  result.height = v10;
  result.width = v9;
  return result;
}

+ (int64_t)preferredLabelAlignmentForSize:(id)size
{
  sizeCopy = size;
  if (ASCLockupViewSizeIsMini(sizeCopy, v4) & 1) != 0 || (ASCLockupViewSizeIsSmall(sizeCopy, v5) & 1) != 0 || (ASCLockupViewSizeIsMedium(sizeCopy, v6) & 1) != 0 || (ASCLockupViewSizeIsSmallOfferButton(sizeCopy, v7) & 1) != 0 || (ASCLockupViewSizeIsMediumOfferButton(sizeCopy, v8))
  {
    v10 = 4;
  }

  else
  {
    if ((ASCLockupViewSizeIsLargeAppShowcase(sizeCopy, v9) & 1) == 0 && (ASCLockupViewSizeIsLargeAppAd(sizeCopy, v12) & 1) == 0)
    {
      ASCUnknownEnumCase(@"ASCLockupViewSize", sizeCopy);
    }

    v10 = 1;
  }

  return v10;
}

+ (id)headingLabelColorForView:(id)view
{
  lockupSize = [view lockupSize];
  if (ASCLockupViewSizeIsMini(lockupSize, v4))
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

+ (id)headingLabelFontForSize:(id)size compatibleWithTraitCollection:(id)collection
{
  collectionCopy = collection;
  if (ASCLockupViewSizeIsMini(size, v6))
  {
    [MEMORY[0x277D74300] asc_fontDerivedFromTextStyle:*MEMORY[0x277D76938] byApplyingFontWeight:collectionCopy compatibleWithTraitCollection:*MEMORY[0x277D74410]];
  }

  else
  {
    [MEMORY[0x277D74300] asc_preferredFontForTextStyle:*MEMORY[0x277D76968] withTraits:0x8000 compatibleWithTraitCollection:collectionCopy];
  }
  v7 = ;

  return v7;
}

+ (id)titleLabelFontForView:(id)view compatibleWithTraitCollection:(id)collection
{
  viewCopy = view;
  collectionCopy = collection;
  lockupSize = [viewCopy lockupSize];
  if (ASCLockupViewSizeIsMini(lockupSize, v8))
  {
    v10 = MEMORY[0x277D74300];
    v11 = *MEMORY[0x277D769D0];
    v12 = *MEMORY[0x277D74410];
LABEL_8:
    v17 = [v10 asc_preferredFontForTextStyle:v11 withTraits:v12 compatibleWithTraitCollection:collectionCopy];
    goto LABEL_9;
  }

  if ((ASCLockupViewSizeIsSmall(lockupSize, v9) & 1) != 0 || (ASCLockupViewSizeIsMedium(lockupSize, v13) & 1) != 0 || (ASCLockupViewSizeIsSmallOfferButton(lockupSize, v14) & 1) != 0 || ASCLockupViewSizeIsMediumOfferButton(lockupSize, v15))
  {
    v10 = MEMORY[0x277D74300];
    v11 = *MEMORY[0x277D76918];
    v12 = 0x8000;
    goto LABEL_8;
  }

  if ((ASCLockupViewSizeIsLargeAppShowcase(lockupSize, v16) & 1) == 0 && !ASCLockupViewSizeIsLargeAppAd(lockupSize, v20))
  {
    ASCUnknownEnumCase(@"ASCLockupViewSize", lockupSize);
  }

  v17 = [MEMORY[0x277D74300] asc_preferredFontForTextStyle:*MEMORY[0x277D76A20] compatibleWithTraitCollection:collectionCopy];
LABEL_9:
  v18 = v17;

  return v18;
}

+ (id)subtitleLabelFontForView:(id)view compatibleWithTraitCollection:(id)collection
{
  viewCopy = view;
  collectionCopy = collection;
  lockupSize = [viewCopy lockupSize];
  if (ASCLockupViewSizeIsMini(lockupSize, v8))
  {
    v10 = MEMORY[0x277D76938];
  }

  else if (ASCLockupViewSizeIsSmall(lockupSize, v9) & 1) != 0 || (ASCLockupViewSizeIsMedium(lockupSize, v11) & 1) != 0 || (ASCLockupViewSizeIsSmallOfferButton(lockupSize, v12) & 1) != 0 || (ASCLockupViewSizeIsMediumOfferButton(lockupSize, v13))
  {
    v10 = MEMORY[0x277D76968];
  }

  else
  {
    if ((ASCLockupViewSizeIsLargeAppShowcase(lockupSize, v14) & 1) == 0 && (ASCLockupViewSizeIsLargeAppAd(lockupSize, v17) & 1) == 0)
    {
      ASCUnknownEnumCase(@"ASCLockupViewSize", lockupSize);
    }

    v10 = MEMORY[0x277D769D0];
  }

  v15 = [MEMORY[0x277D74300] asc_preferredFontForTextStyle:*v10 compatibleWithTraitCollection:collectionCopy];

  return v15;
}

+ (void)updateOfferStatusLabelColorForView:(id)view
{
  offerStatusLabelIfLoaded = [view offerStatusLabelIfLoaded];
  [offerStatusLabelIfLoaded _setTextColorFollowsTintColor:1];
}

- (void)applyToLockupContentView:(id)view compatibleWithTraitCollection:(id)collection
{
  collectionCopy = collection;
  viewCopy = view;
  lockupSize = [viewCopy lockupSize];
  [ASCDefaultLockupTheme preferredIconSizeForSize:lockupSize compatibleWithTraitCollection:collectionCopy];
  v8 = v7;
  v10 = v9;
  iconArtworkView = [viewCopy iconArtworkView];
  [iconArtworkView setPreferredSize:{v8, v10}];

  v12 = [ASCDefaultLockupTheme preferredLabelAlignmentForSize:lockupSize];
  v13 = [ASCDefaultLockupTheme headingLabelFontForSize:lockupSize compatibleWithTraitCollection:collectionCopy];
  headingLabelIfLoaded = [viewCopy headingLabelIfLoaded];
  [headingLabelIfLoaded setFont:v13];

  v15 = [ASCDefaultLockupTheme headingLabelColorForView:viewCopy];
  headingLabelIfLoaded2 = [viewCopy headingLabelIfLoaded];
  [headingLabelIfLoaded2 setTextColor:v15];

  headingLabelIfLoaded3 = [viewCopy headingLabelIfLoaded];
  [headingLabelIfLoaded3 setTextAlignment:v12];

  headingLabelIfLoaded4 = [viewCopy headingLabelIfLoaded];
  [headingLabelIfLoaded4 setNumberOfLines:1];

  headingLabelIfLoaded5 = [viewCopy headingLabelIfLoaded];
  [headingLabelIfLoaded5 setLineBreakMode:4];

  v20 = [ASCDefaultLockupTheme titleLabelFontForView:viewCopy compatibleWithTraitCollection:collectionCopy];
  titleLabel = [viewCopy titleLabel];
  [titleLabel setFont:v20];

  titleLabel2 = [viewCopy titleLabel];
  [titleLabel2 setTextAlignment:v12];

  v23 = +[ASCSemanticColor loading];
  titleLabel3 = [viewCopy titleLabel];
  [titleLabel3 setSkeletonColor:v23];

  v25 = +[ASCSemanticColor primaryLabel];
  titleLabel4 = [viewCopy titleLabel];
  [titleLabel4 setTextColor:v25];

  v27 = [ASCDefaultLockupTheme numberOfLinesInTitleForSize:lockupSize compatibleWithTraitCollection:collectionCopy];
  titleLabel5 = [viewCopy titleLabel];
  [titleLabel5 setNumberOfLines:v27];

  titleLabel6 = [viewCopy titleLabel];
  [titleLabel6 setLineBreakMode:4];

  v30 = [ASCDefaultLockupTheme subtitleLabelFontForView:viewCopy compatibleWithTraitCollection:collectionCopy];
  subtitleLabel = [viewCopy subtitleLabel];
  [subtitleLabel setFont:v30];

  subtitleLabel2 = [viewCopy subtitleLabel];
  [subtitleLabel2 setTextAlignment:v12];

  v33 = +[ASCSemanticColor loading];
  subtitleLabel3 = [viewCopy subtitleLabel];
  [subtitleLabel3 setSkeletonColor:v33];

  v35 = +[ASCSemanticColor secondaryLabel];
  subtitleLabel4 = [viewCopy subtitleLabel];
  [subtitleLabel4 setTextColor:v35];

  v37 = [ASCDefaultLockupTheme numberOfLinesInSubtitleForSize:lockupSize compatibleWithTraitCollection:collectionCopy];
  subtitleLabel5 = [viewCopy subtitleLabel];
  [subtitleLabel5 setNumberOfLines:v37];

  subtitleLabel6 = [viewCopy subtitleLabel];
  [subtitleLabel6 setLineBreakMode:4];

  [ASCDefaultLockupTheme updateOfferStatusLabelColorForView:viewCopy];
  v40 = [ASCDefaultLockupTheme offerStatusLabelFontForSize:lockupSize compatibleWithTraitCollection:collectionCopy];

  offerStatusLabelIfLoaded = [viewCopy offerStatusLabelIfLoaded];
  [offerStatusLabelIfLoaded setFont:v40];

  offerStatusLabelIfLoaded2 = [viewCopy offerStatusLabelIfLoaded];
  [offerStatusLabelIfLoaded2 setTextAlignment:v12];

  offerStatusLabelIfLoaded3 = [viewCopy offerStatusLabelIfLoaded];
  [offerStatusLabelIfLoaded3 setNumberOfLines:1];

  offerStatusLabelIfLoaded4 = [viewCopy offerStatusLabelIfLoaded];

  [offerStatusLabelIfLoaded4 setLineBreakMode:4];
}

@end