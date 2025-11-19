@interface DirectionActionHandler
+ (void)performAction:(id)a3 inContext:(id)a4;
@end

@implementation DirectionActionHandler

+ (void)performAction:(id)a3 inContext:(id)a4
{
  v10 = a3;
  v5 = a4;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = v10;
    v7 = [v5 coordinator];
    v8 = [v6 directionItem];
    v9 = [v6 userInfo];

    [v7 viewController:0 doDirectionItem:v8 withUserInfo:v9];
  }
}

@end