@interface BSUIPurchaseParameters
- (BSUIPurchaseParameters)initWithBuyParams:(id)params isAudiobook:(BOOL)audiobook hasRacSupport:(BOOL)support supportsUnifiedProductPage:(id)page editionKind:(id)kind tracker:(id)tracker;
@end

@implementation BSUIPurchaseParameters

- (BSUIPurchaseParameters)initWithBuyParams:(id)params isAudiobook:(BOOL)audiobook hasRacSupport:(BOOL)support supportsUnifiedProductPage:(id)page editionKind:(id)kind tracker:(id)tracker
{
  supportCopy = support;
  audiobookCopy = audiobook;
  paramsCopy = params;
  pageCopy = page;
  kindCopy = kind;
  trackerCopy = tracker;
  v21.receiver = self;
  v21.super_class = BSUIPurchaseParameters;
  v18 = [(BSUIPurchaseParameters *)&v21 init];
  v19 = v18;
  if (v18)
  {
    [(BSUIPurchaseParameters *)v18 setBuyParams:paramsCopy];
    [(BSUIPurchaseParameters *)v19 setIsAudiobook:audiobookCopy];
    [(BSUIPurchaseParameters *)v19 setHasRacSupport:supportCopy];
    [(BSUIPurchaseParameters *)v19 setTracker:trackerCopy];
    [(BSUIPurchaseParameters *)v19 setSupportsUnifiedProductPage:pageCopy];
    [(BSUIPurchaseParameters *)v19 setEditionKind:kindCopy];
  }

  return v19;
}

@end