@interface MKPlaceHoursViewHelper
+ (void)determineExtraRulesForPlaceHoursViews:(id)views withBusinessHours:(id)hours;
@end

@implementation MKPlaceHoursViewHelper

+ (void)determineExtraRulesForPlaceHoursViews:(id)views withBusinessHours:(id)hours
{
  v20 = *MEMORY[0x1E69E9840];
  viewsCopy = views;
  hoursCopy = hours;
  if ([hoursCopy count] == 1)
  {
    v7 = [hoursCopy objectAtIndex:0];
    if ([v7 hoursType] == 1 && objc_msgSend(viewsCopy, "count") == 1)
    {
      v8 = [viewsCopy objectAtIndex:0];
      [v8 setPlaceHoursViewOptions:{objc_msgSend(v8, "placeHoursViewOptions") | 0x10}];

      goto LABEL_15;
    }
  }

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v7 = viewsCopy;
  v9 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v16;
    do
    {
      v12 = 0;
      do
      {
        if (*v16 != v11)
        {
          objc_enumerationMutation(v7);
        }

        v13 = *(*(&v15 + 1) + 8 * v12);
        v14 = [v7 objectAtIndex:{0, v15}];

        if (v13 != v14)
        {
          [v13 setPlaceHoursViewOptions:{objc_msgSend(v13, "placeHoursViewOptions") | 0x100}];
        }

        ++v12;
      }

      while (v10 != v12);
      v10 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v10);
  }

LABEL_15:
}

@end