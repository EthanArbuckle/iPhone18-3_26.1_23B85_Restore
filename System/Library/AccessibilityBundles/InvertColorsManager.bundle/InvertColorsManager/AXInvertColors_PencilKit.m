@interface AXInvertColors_PencilKit
+ (void)installCategories:(id)a3;
+ (void)performValidations:(id)a3;
@end

@implementation AXInvertColors_PencilKit

+ (void)performValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"_PKColorAlphaSliderIOS"];
  [v3 validateClass:@"_UITextAttachmentDrawingView"];
  [v3 validateClass:@"PKColorMatrixView"];
}

+ (void)installCategories:(id)a3
{
  v3 = a3;
  [v3 installSafeCategory:@"_PKColorAlphaSliderIOSInvertColorsAccessibility" canInteractWithTargetClass:1];
  [v3 installSafeCategory:@"PKColorMatrixViewInvertColorsAccessibility" canInteractWithTargetClass:1];
  [v3 installSafeCategory:@"_UITextAttachmentDrawingViewInvertColorsAccessibility" canInteractWithTargetClass:1];
}

@end