@interface AKToolbarUtilities
+ (int64_t)attributeTagForCurrentSelectionState:(id)a3;
@end

@implementation AKToolbarUtilities

+ (int64_t)attributeTagForCurrentSelectionState:(id)a3
{
  v3 = 765101;
  v4 = [a3 currentPageController];
  v5 = [v4 pageModelController];

  v6 = [v5 selectedAnnotations];
  if ([v6 count] == 1)
  {
    v7 = [v6 anyObject];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v3 = 765106;
    }
  }

  return v3;
}

@end