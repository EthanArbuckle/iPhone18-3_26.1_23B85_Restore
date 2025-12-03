@interface AKToolbarUtilities
+ (int64_t)attributeTagForCurrentSelectionState:(id)state;
@end

@implementation AKToolbarUtilities

+ (int64_t)attributeTagForCurrentSelectionState:(id)state
{
  v3 = 765101;
  currentPageController = [state currentPageController];
  pageModelController = [currentPageController pageModelController];

  selectedAnnotations = [pageModelController selectedAnnotations];
  if ([selectedAnnotations count] == 1)
  {
    anyObject = [selectedAnnotations anyObject];
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