@interface QLGIFDisplayBundleAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
@end

@implementation QLGIFDisplayBundleAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"QLGIFDisplayBundle" hasInstanceVariable:@"_imageView" withType:"UIImageView"];
  [v3 validateProtocol:@"QLSwippableItemProtocol" hasRequiredInstanceMethod:@"previewItem"];
  [v3 validateProtocol:@"QLPreviewItem" hasRequiredInstanceMethod:@"previewItemURL"];
}

@end