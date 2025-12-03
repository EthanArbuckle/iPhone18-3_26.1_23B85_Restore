@interface MPArtworkColorAnalyzer
+ (id)translateFromMLColorAnalysis:(id)analysis;
- (MPArtworkColorAnalyzer)initWithImage:(id)image;
- (id)_fallbackColorAnalysis;
- (id)analyze;
- (void)analyzeWithCompletionHandler:(id)handler;
@end

@implementation MPArtworkColorAnalyzer

+ (id)translateFromMLColorAnalysis:(id)analysis
{
  analysisCopy = analysis;
  v4 = objc_alloc_init(MPMutableArtworkColorAnalysis);
  backgroundColor = [analysisCopy backgroundColor];
  mP_colorFromHexString = [backgroundColor MP_colorFromHexString];
  [(MPMutableArtworkColorAnalysis *)v4 setBackgroundColor:mP_colorFromHexString];

  -[MPMutableArtworkColorAnalysis setBackgroundColorLight:](v4, "setBackgroundColorLight:", [analysisCopy isBackgroundColorLight]);
  primaryTextColor = [analysisCopy primaryTextColor];
  mP_colorFromHexString2 = [primaryTextColor MP_colorFromHexString];
  [(MPMutableArtworkColorAnalysis *)v4 setPrimaryTextColor:mP_colorFromHexString2];

  -[MPMutableArtworkColorAnalysis setPrimaryTextColorLight:](v4, "setPrimaryTextColorLight:", [analysisCopy isPrimaryTextColorLight]);
  secondaryTextColor = [analysisCopy secondaryTextColor];
  mP_colorFromHexString3 = [secondaryTextColor MP_colorFromHexString];
  [(MPMutableArtworkColorAnalysis *)v4 setSecondaryTextColor:mP_colorFromHexString3];

  -[MPMutableArtworkColorAnalysis setSecondaryTextColorLight:](v4, "setSecondaryTextColorLight:", [analysisCopy isSecondaryTextColorLight]);
  tertiaryTextColor = [analysisCopy tertiaryTextColor];
  mP_colorFromHexString4 = [tertiaryTextColor MP_colorFromHexString];
  [(MPMutableArtworkColorAnalysis *)v4 setTertiaryTextColor:mP_colorFromHexString4];

  -[MPMutableArtworkColorAnalysis setTertiaryTextColorLight:](v4, "setTertiaryTextColorLight:", [analysisCopy isTertiaryTextColorLight]);

  return v4;
}

- (id)_fallbackColorAnalysis
{
  v2 = objc_alloc_init(MPMutableArtworkColorAnalysis);
  whiteColor = [MEMORY[0x1E69DC888] whiteColor];
  [(MPMutableArtworkColorAnalysis *)v2 setBackgroundColor:whiteColor];

  [(MPMutableArtworkColorAnalysis *)v2 setBackgroundColorLight:1];
  blackColor = [MEMORY[0x1E69DC888] blackColor];
  [(MPMutableArtworkColorAnalysis *)v2 setPrimaryTextColor:blackColor];

  [(MPMutableArtworkColorAnalysis *)v2 setPrimaryTextColorLight:0];
  darkGrayColor = [MEMORY[0x1E69DC888] darkGrayColor];
  [(MPMutableArtworkColorAnalysis *)v2 setSecondaryTextColor:darkGrayColor];

  [(MPMutableArtworkColorAnalysis *)v2 setSecondaryTextColorLight:0];
  darkGrayColor2 = [MEMORY[0x1E69DC888] darkGrayColor];
  [(MPMutableArtworkColorAnalysis *)v2 setTertiaryTextColor:darkGrayColor2];

  [(MPMutableArtworkColorAnalysis *)v2 setTertiaryTextColorLight:0];

  return v2;
}

- (void)analyzeWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v5 = dispatch_get_global_queue(0, 0);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __55__MPArtworkColorAnalyzer_analyzeWithCompletionHandler___block_invoke;
  v7[3] = &unk_1E76824C8;
  v7[4] = self;
  v8 = handlerCopy;
  v6 = handlerCopy;
  dispatch_async(v5, v7);
}

void __55__MPArtworkColorAnalyzer_analyzeWithCompletionHandler___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  v3 = [v2 analyze];
  (*(v1 + 16))(v1, v2);
}

- (id)analyze
{
  v3 = objc_alloc(MEMORY[0x1E69B13B0]);
  image = [(MPArtworkColorAnalyzer *)self image];
  v5 = [v3 initWithSourceImage:{objc_msgSend(image, "CGImage")}];

  analyze = [v5 analyze];
  v7 = objc_alloc_init(MPMutableArtworkColorAnalysis);
  backgroundColorHex = [analyze backgroundColorHex];
  mP_colorFromHexString = [backgroundColorHex MP_colorFromHexString];
  [(MPMutableArtworkColorAnalysis *)v7 setBackgroundColor:mP_colorFromHexString];

  -[MPMutableArtworkColorAnalysis setBackgroundColorLight:](v7, "setBackgroundColorLight:", [analyze isBackgroundColorLight]);
  primaryTextColorHex = [analyze primaryTextColorHex];
  mP_colorFromHexString2 = [primaryTextColorHex MP_colorFromHexString];
  [(MPMutableArtworkColorAnalysis *)v7 setPrimaryTextColor:mP_colorFromHexString2];

  -[MPMutableArtworkColorAnalysis setPrimaryTextColorLight:](v7, "setPrimaryTextColorLight:", [analyze isPrimaryTextColorLight]);
  secondaryTextColorHex = [analyze secondaryTextColorHex];
  mP_colorFromHexString3 = [secondaryTextColorHex MP_colorFromHexString];
  [(MPMutableArtworkColorAnalysis *)v7 setSecondaryTextColor:mP_colorFromHexString3];

  -[MPMutableArtworkColorAnalysis setSecondaryTextColorLight:](v7, "setSecondaryTextColorLight:", [analyze isSecondaryTextColorLight]);
  tertiaryTextColorHex = [analyze tertiaryTextColorHex];
  mP_colorFromHexString4 = [tertiaryTextColorHex MP_colorFromHexString];
  [(MPMutableArtworkColorAnalysis *)v7 setTertiaryTextColor:mP_colorFromHexString4];

  -[MPMutableArtworkColorAnalysis setTertiaryTextColorLight:](v7, "setTertiaryTextColorLight:", [analyze isTertiaryTextColorLight]);

  return v7;
}

- (MPArtworkColorAnalyzer)initWithImage:(id)image
{
  imageCopy = image;
  v6 = [(MPArtworkColorAnalyzer *)self init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_image, image);
  }

  return v7;
}

@end