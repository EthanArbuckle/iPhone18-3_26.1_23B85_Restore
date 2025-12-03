@interface DirectionActionHandler
+ (void)performAction:(id)action inContext:(id)context;
@end

@implementation DirectionActionHandler

+ (void)performAction:(id)action inContext:(id)context
{
  actionCopy = action;
  contextCopy = context;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = actionCopy;
    coordinator = [contextCopy coordinator];
    directionItem = [v6 directionItem];
    userInfo = [v6 userInfo];

    [coordinator viewController:0 doDirectionItem:directionItem withUserInfo:userInfo];
  }
}

@end