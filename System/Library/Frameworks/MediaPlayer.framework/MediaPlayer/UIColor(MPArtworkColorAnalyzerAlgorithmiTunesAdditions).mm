@interface UIColor(MPArtworkColorAnalyzerAlgorithmiTunesAdditions)
- (uint64_t)MP_isArtworkColorAnalyzerLightColorForAlgorithm:()MPArtworkColorAnalyzerAlgorithmiTunesAdditions;
@end

@implementation UIColor(MPArtworkColorAnalyzerAlgorithmiTunesAdditions)

- (uint64_t)MP_isArtworkColorAnalyzerLightColorForAlgorithm:()MPArtworkColorAnalyzerAlgorithmiTunesAdditions
{
  if (a3 != 1)
  {
    return 0;
  }

  v4 = MEMORY[0x1E69B13B0];
  cGColor = [self CGColor];

  return [v4 isLightColor:cGColor];
}

@end