@interface SearchSelectionActionHandler
+ (void)performAction:(id)action inContext:(id)context;
@end

@implementation SearchSelectionActionHandler

+ (void)performAction:(id)action inContext:(id)context
{
  actionCopy = action;
  contextCopy = context;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = actionCopy;
    v8 = +[SearchSession currentSearchSession];
    currentResults = [v8 currentResults];

    v10 = [currentResults count];
    if (v10 > [v7 selectedIndex])
    {
      v11 = [currentResults objectAtIndexedSubscript:{objc_msgSend(v7, "selectedIndex")}];
      v12 = [SearchFieldItem searchFieldItemWithObject:v11];
      v15 = @"SearchSessionTraitsSource";
      v16 = &off_1016E6770;
      v13 = [NSDictionary dictionaryWithObjects:&v16 forKeys:&v15 count:1];
      coordinator = [contextCopy coordinator];
      [coordinator viewController:0 doSearchItem:v12 withUserInfo:v13];
    }
  }
}

@end