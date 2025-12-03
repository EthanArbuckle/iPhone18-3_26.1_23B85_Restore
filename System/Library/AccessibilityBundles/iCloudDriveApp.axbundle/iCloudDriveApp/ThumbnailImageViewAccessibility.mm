@interface ThumbnailImageViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (BOOL)_axIsDownloaded;
- (id)accessibilityValue;
- (unint64_t)accessibilityTraits;
- (void)setItem:(id)item;
@end

@implementation ThumbnailImageViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"ThumbnailImageView" hasInstanceMethod:@"item" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"DRItem"];
  [validationsCopy validateClass:@"DRItem" hasInstanceMethod:@"thumbnail" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"DRItem" hasInstanceMethod:@"isDownloaded" withFullSignature:{"B", 0}];
}

- (id)accessibilityValue
{
  if ([(ThumbnailImageViewAccessibility *)self _axIsDownloaded])
  {
    v2 = 0;
  }

  else
  {
    v2 = accessibilityLocalizedString(@"thumbnailview.downloading");
  }

  return v2;
}

- (unint64_t)accessibilityTraits
{
  v7.receiver = self;
  v7.super_class = ThumbnailImageViewAccessibility;
  v3 = *MEMORY[0x29EDC7F88] | [(ThumbnailImageViewAccessibility *)&v7 accessibilityTraits];
  _axIsDownloaded = [(ThumbnailImageViewAccessibility *)self _axIsDownloaded];
  v5 = *MEMORY[0x29EDC7FF0];
  if (_axIsDownloaded)
  {
    v5 = 0;
  }

  return v3 | v5;
}

- (void)setItem:(id)item
{
  itemCopy = item;
  v9.receiver = self;
  v9.super_class = ThumbnailImageViewAccessibility;
  [(ThumbnailImageViewAccessibility *)&v9 setItem:itemCopy];
  objc_opt_class();
  v5 = [itemCopy safeValueForKey:@"thumbnail"];
  v6 = __UIAccessibilityCastAsClass();

  if (v6)
  {
    [v6 CGImage];
    v7 = UIAXPhotoDescriptionString();
    v8 = __UIAXStringForVariables();
    [(ThumbnailImageViewAccessibility *)self setAccessibilityHint:v8, @"__AXStringForVariablesSentinel"];
  }

  else
  {
    [(ThumbnailImageViewAccessibility *)self setAccessibilityHint:0];
  }
}

- (BOOL)_axIsDownloaded
{
  v2 = [(ThumbnailImageViewAccessibility *)self safeValueForKey:@"item"];
  v3 = [v2 safeBoolForKey:@"isDownloaded"];

  return v3;
}

@end