@interface PresentNearbySearchActionHandler
+ (void)performAction:(id)action inContext:(id)context;
@end

@implementation PresentNearbySearchActionHandler

+ (void)performAction:(id)action inContext:(id)context
{
  contextCopy = context;
  actionCopy = action;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    chrome = [contextCopy chrome];
    [chrome displayNearbySearch];
  }
}

@end