@interface AXInvertColors_PencilKit
+ (void)installCategories:(id)categories;
+ (void)performValidations:(id)validations;
@end

@implementation AXInvertColors_PencilKit

+ (void)performValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"_PKColorAlphaSliderIOS"];
  [validationsCopy validateClass:@"_UITextAttachmentDrawingView"];
  [validationsCopy validateClass:@"PKColorMatrixView"];
}

+ (void)installCategories:(id)categories
{
  categoriesCopy = categories;
  [categoriesCopy installSafeCategory:@"_PKColorAlphaSliderIOSInvertColorsAccessibility" canInteractWithTargetClass:1];
  [categoriesCopy installSafeCategory:@"PKColorMatrixViewInvertColorsAccessibility" canInteractWithTargetClass:1];
  [categoriesCopy installSafeCategory:@"_UITextAttachmentDrawingViewInvertColorsAccessibility" canInteractWithTargetClass:1];
}

@end