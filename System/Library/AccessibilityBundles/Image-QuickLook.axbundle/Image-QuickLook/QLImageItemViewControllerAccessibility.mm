@interface QLImageItemViewControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)_axPhotoDescriptionFromContents:(id)contents context:(id)context;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)loadPreviewControllerWithContents:(id)contents context:(id)context completionHandler:(id)handler;
@end

@implementation QLImageItemViewControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"QLImageItemViewController" hasInstanceMethod:@"loadPreviewControllerWithContents:context:completionHandler:" withFullSignature:{"v", "@", "@", "@?", 0}];
  [validationsCopy validateClass:@"QLImageItemViewController" hasInstanceMethod:@"previewDidAppear:" withFullSignature:{"v", "B", 0}];
  [validationsCopy validateClass:@"QLImageItemViewController" hasInstanceVariable:@"_imageView" withType:"UIImageView"];
  [validationsCopy validateClass:@"QLImageItemViewController" isKindOfClass:@"QLItemViewController"];
  [validationsCopy validateClass:@"QLItemViewController" hasInstanceMethod:@"contents" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"QLItemViewController" hasInstanceMethod:@"context" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"QLPreviewContext"];
  [validationsCopy validateClass:@"QLPreviewContext" hasInstanceMethod:@"previewTitle" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"QLPreviewContext" hasInstanceMethod:@"item" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"QLItem" conformsToProtocol:@"QLPreviewItem"];
  [validationsCopy validateClass:@"QLItem" hasInstanceMethod:@"editedFileURL" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"QLAnimatedImage"];
  [validationsCopy validateClass:@"QLAnimatedImage" hasInstanceMethod:@"frameAtTime:" withFullSignature:{"@", "d", 0}];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v7.receiver = self;
  v7.super_class = QLImageItemViewControllerAccessibility;
  [(QLImageItemViewControllerAccessibility *)&v7 _accessibilityLoadAccessibilityInformation];
  v3 = [(QLImageItemViewControllerAccessibility *)self safeValueForKey:@"contents"];
  v4 = [(QLImageItemViewControllerAccessibility *)self safeValueForKey:@"context"];
  v5 = [(QLImageItemViewControllerAccessibility *)self _axPhotoDescriptionFromContents:v3 context:v4];
  v6 = [(QLImageItemViewControllerAccessibility *)self safeValueForKey:@"_imageView"];
  [v6 setIsAccessibilityElement:1];
  [v6 setAccessibilityLabel:v5];
}

- (void)loadPreviewControllerWithContents:(id)contents context:(id)context completionHandler:(id)handler
{
  v6.receiver = self;
  v6.super_class = QLImageItemViewControllerAccessibility;
  [(QLImageItemViewControllerAccessibility *)&v6 loadPreviewControllerWithContents:contents context:context completionHandler:handler];
  [(QLImageItemViewControllerAccessibility *)self _accessibilityLoadAccessibilityInformation];
}

- (id)_axPhotoDescriptionFromContents:(id)contents context:(id)context
{
  contentsCopy = contents;
  contextCopy = context;
  accessibilityLabel = [contextCopy accessibilityLabel];
  if (!accessibilityLabel)
  {
    accessibilityLabel = [contextCopy safeValueForKey:@"previewTitle"];
  }

  LOBYTE(v22) = 0;
  v8 = [contextCopy safeValueForKey:@"item"];
  v9 = [v8 safeValueForKey:@"editedFileURL"];
  v10 = __UIAccessibilitySafeClass();

  MEMORY[0x29C2DAA20](@"QLAnimatedImage");
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v17 = CGImageSourceCreateWithURL(v10, 0);
    ImageAtIndex = CGImageSourceCreateImageAtIndex(v17, 0, 0);
    v15 = UIAccessibilityMetadataDescriptionForImage();
    if (v17)
    {
      CFRelease(v17);
    }

    if (!ImageAtIndex)
    {
      v16 = 0;
      goto LABEL_13;
    }

    CFAutorelease(ImageAtIndex);
LABEL_11:
    v16 = UIAXPhotoDescriptionString();
    goto LABEL_13;
  }

  v22 = 0;
  v23 = &v22;
  v24 = 0x3032000000;
  v25 = __Block_byref_object_copy_;
  v26 = __Block_byref_object_dispose_;
  v27 = 0;
  v21 = contentsCopy;
  AXPerformSafeBlock();
  v11 = v23[5];

  _Block_object_dispose(&v22, 8);
  LOBYTE(v22) = 0;
  objc_opt_class();
  v12 = __UIAccessibilityCastAsClass();
  if (v22 == 1)
  {
    abort();
  }

  v13 = v12;
  cGImage = [v12 CGImage];

  v15 = 0;
  v16 = 0;
  if (cGImage)
  {
    goto LABEL_11;
  }

LABEL_13:
  v19 = __UIAXStringForVariables();

  return v19;
}

uint64_t __82__QLImageItemViewControllerAccessibility__axPhotoDescriptionFromContents_context___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) frameAtTime:0.0];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2A1C71028]();
}

@end