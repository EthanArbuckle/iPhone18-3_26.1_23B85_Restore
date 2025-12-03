@interface QLImageDisplayBundleAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)_axPhotoDescriptionFromItem:(id)item;
- (void)loadWithHints:(id)hints;
@end

@implementation QLImageDisplayBundleAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"QLImageDisplayBundle" hasInstanceMethod:@"loadWithHints:" withFullSignature:{"v", "@", 0}];
  [validationsCopy validateClass:@"QLImageDisplayBundle" hasInstanceVariable:@"_previewItem" withType:"id<QLPreviewItem>"];
  [validationsCopy validateClass:@"QLImageDisplayBundle" hasInstanceVariable:@"_imageView" withType:"UIImageView"];
  [validationsCopy validateProtocol:@"QLPreviewItem" hasRequiredInstanceMethod:@"previewItemURL"];
  [validationsCopy validateProtocol:@"QLPreviewItem" hasOptionalInstanceMethod:@"previewItemTitle"];
}

- (void)loadWithHints:(id)hints
{
  v8.receiver = self;
  v8.super_class = QLImageDisplayBundleAccessibility;
  [(QLImageDisplayBundleAccessibility *)&v8 loadWithHints:hints];
  v4 = [(QLImageDisplayBundleAccessibility *)self safeValueForKey:@"_previewItem"];
  v5 = [(QLImageDisplayBundleAccessibility *)self _axPhotoDescriptionFromItem:v4];

  v6 = [(QLImageDisplayBundleAccessibility *)self safeValueForKey:@"_imageView"];
  [v6 setIsAccessibilityElement:1];

  v7 = [(QLImageDisplayBundleAccessibility *)self safeValueForKey:@"_imageView"];
  [v7 setAccessibilityLabel:v5];
}

- (id)_axPhotoDescriptionFromItem:(id)item
{
  itemCopy = item;
  v4 = [itemCopy safeValueForKey:@"previewItemURL"];
  v5 = [itemCopy safeValueForKey:@"previewItemTitle"];

  v6 = CGImageSourceCreateWithURL(v4, 0);
  ImageAtIndex = CGImageSourceCreateImageAtIndex(v6, 0, 0);
  v8 = UIAccessibilityMetadataDescriptionForImage();
  v9 = UIAXPhotoDescriptionString();
  if (ImageAtIndex)
  {
    CFRelease(ImageAtIndex);
  }

  if (v6)
  {
    CFRelease(v6);
  }

  v10 = __UIAXStringForVariables();

  return v10;
}

@end