@interface BSUIPurchaseParameters
- (BSUIPurchaseParameters)initWithBuyParams:(id)a3 isAudiobook:(BOOL)a4 hasRacSupport:(BOOL)a5 supportsUnifiedProductPage:(id)a6 editionKind:(id)a7 tracker:(id)a8;
@end

@implementation BSUIPurchaseParameters

- (BSUIPurchaseParameters)initWithBuyParams:(id)a3 isAudiobook:(BOOL)a4 hasRacSupport:(BOOL)a5 supportsUnifiedProductPage:(id)a6 editionKind:(id)a7 tracker:(id)a8
{
  v11 = a5;
  v12 = a4;
  v14 = a3;
  v15 = a6;
  v16 = a7;
  v17 = a8;
  v21.receiver = self;
  v21.super_class = BSUIPurchaseParameters;
  v18 = [(BSUIPurchaseParameters *)&v21 init];
  v19 = v18;
  if (v18)
  {
    [(BSUIPurchaseParameters *)v18 setBuyParams:v14];
    [(BSUIPurchaseParameters *)v19 setIsAudiobook:v12];
    [(BSUIPurchaseParameters *)v19 setHasRacSupport:v11];
    [(BSUIPurchaseParameters *)v19 setTracker:v17];
    [(BSUIPurchaseParameters *)v19 setSupportsUnifiedProductPage:v15];
    [(BSUIPurchaseParameters *)v19 setEditionKind:v16];
  }

  return v19;
}

@end