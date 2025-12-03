@interface QLGIFDisplayBundleAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
@end

@implementation QLGIFDisplayBundleAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"QLGIFDisplayBundle" hasInstanceVariable:@"_imageView" withType:"UIImageView"];
  [validationsCopy validateProtocol:@"QLSwippableItemProtocol" hasRequiredInstanceMethod:@"previewItem"];
  [validationsCopy validateProtocol:@"QLPreviewItem" hasRequiredInstanceMethod:@"previewItemURL"];
}

@end