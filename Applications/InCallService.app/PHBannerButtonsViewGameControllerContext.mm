@interface PHBannerButtonsViewGameControllerContext
- (PHBannerButtonsViewGameControllerContext)initWithGameControllerContext:(id)a3;
- (id)sfSymbolForButton:(unint64_t)a3;
@end

@implementation PHBannerButtonsViewGameControllerContext

- (PHBannerButtonsViewGameControllerContext)initWithGameControllerContext:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = PHBannerButtonsViewGameControllerContext;
  v6 = [(PHBannerButtonsViewGameControllerContext *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->gameControllerContext, a3);
  }

  return v7;
}

- (id)sfSymbolForButton:(unint64_t)a3
{
  if (a3 > 2)
  {
    v5 = 0;
  }

  else
  {
    v5 = [(CNKGameControllerContext *)self->gameControllerContext sfSymbolForButton:v3];
  }

  return v5;
}

@end