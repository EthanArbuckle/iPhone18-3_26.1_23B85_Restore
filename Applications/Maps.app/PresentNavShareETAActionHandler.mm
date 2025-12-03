@interface PresentNavShareETAActionHandler
+ (void)performAction:(id)action inContext:(id)context;
@end

@implementation PresentNavShareETAActionHandler

+ (void)performAction:(id)action inContext:(id)context
{
  contextCopy = context;
  actionCopy = action;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    chrome = [contextCopy chrome];
    [chrome displayNavShareETA];
  }
}

@end