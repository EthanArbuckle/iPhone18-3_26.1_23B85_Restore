@interface PHBannerButtonsViewGameControllerContext
- (PHBannerButtonsViewGameControllerContext)initWithGameControllerContext:(id)context;
- (id)sfSymbolForButton:(unint64_t)button;
@end

@implementation PHBannerButtonsViewGameControllerContext

- (PHBannerButtonsViewGameControllerContext)initWithGameControllerContext:(id)context
{
  contextCopy = context;
  v9.receiver = self;
  v9.super_class = PHBannerButtonsViewGameControllerContext;
  v6 = [(PHBannerButtonsViewGameControllerContext *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->gameControllerContext, context);
  }

  return v7;
}

- (id)sfSymbolForButton:(unint64_t)button
{
  if (button > 2)
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