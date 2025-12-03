@interface OpenFavoritesActionHandler
+ (void)performAction:(id)action inContext:(id)context;
@end

@implementation OpenFavoritesActionHandler

+ (void)performAction:(id)action inContext:(id)context
{
  actionCopy = action;
  contextCopy = context;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = actionCopy;
    coordinator = [contextCopy coordinator];
    favoritesType = [v6 favoritesType];

    [coordinator viewController:0 showFavoritesType:favoritesType];
  }
}

@end