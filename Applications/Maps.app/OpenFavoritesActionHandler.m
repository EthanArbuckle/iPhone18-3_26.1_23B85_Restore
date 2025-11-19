@interface OpenFavoritesActionHandler
+ (void)performAction:(id)a3 inContext:(id)a4;
@end

@implementation OpenFavoritesActionHandler

+ (void)performAction:(id)a3 inContext:(id)a4
{
  v9 = a3;
  v5 = a4;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = v9;
    v7 = [v5 coordinator];
    v8 = [v6 favoritesType];

    [v7 viewController:0 showFavoritesType:v8];
  }
}

@end