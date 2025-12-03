@interface BrandActionHandler
+ (void)performAction:(id)action inContext:(id)context;
@end

@implementation BrandActionHandler

+ (void)performAction:(id)action inContext:(id)context
{
  actionCopy = action;
  contextCopy = context;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = actionCopy;
    chrome = [contextCopy chrome];
    currentTraits = [chrome currentTraits];

    [currentTraits setSource:1];
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_100B0A84C;
    v10[3] = &unk_101638170;
    v11 = contextCopy;
    [v7 resolveBrandPOIsWithTraits:currentTraits completion:v10];
  }
}

@end