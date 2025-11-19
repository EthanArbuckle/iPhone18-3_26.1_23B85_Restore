@interface SearchSelectionActionHandler
+ (void)performAction:(id)a3 inContext:(id)a4;
@end

@implementation SearchSelectionActionHandler

+ (void)performAction:(id)a3 inContext:(id)a4
{
  v5 = a3;
  v6 = a4;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = v5;
    v8 = +[SearchSession currentSearchSession];
    v9 = [v8 currentResults];

    v10 = [v9 count];
    if (v10 > [v7 selectedIndex])
    {
      v11 = [v9 objectAtIndexedSubscript:{objc_msgSend(v7, "selectedIndex")}];
      v12 = [SearchFieldItem searchFieldItemWithObject:v11];
      v15 = @"SearchSessionTraitsSource";
      v16 = &off_1016E6770;
      v13 = [NSDictionary dictionaryWithObjects:&v16 forKeys:&v15 count:1];
      v14 = [v6 coordinator];
      [v14 viewController:0 doSearchItem:v12 withUserInfo:v13];
    }
  }
}

@end