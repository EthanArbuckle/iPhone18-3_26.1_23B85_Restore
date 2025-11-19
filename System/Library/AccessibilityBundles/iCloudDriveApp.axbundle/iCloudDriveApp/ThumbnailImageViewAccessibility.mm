@interface ThumbnailImageViewAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (BOOL)_axIsDownloaded;
- (id)accessibilityValue;
- (unint64_t)accessibilityTraits;
- (void)setItem:(id)a3;
@end

@implementation ThumbnailImageViewAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"ThumbnailImageView" hasInstanceMethod:@"item" withFullSignature:{"@", 0}];
  [v3 validateClass:@"DRItem"];
  [v3 validateClass:@"DRItem" hasInstanceMethod:@"thumbnail" withFullSignature:{"@", 0}];
  [v3 validateClass:@"DRItem" hasInstanceMethod:@"isDownloaded" withFullSignature:{"B", 0}];
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
  v4 = [(ThumbnailImageViewAccessibility *)self _axIsDownloaded];
  v5 = *MEMORY[0x29EDC7FF0];
  if (v4)
  {
    v5 = 0;
  }

  return v3 | v5;
}

- (void)setItem:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = ThumbnailImageViewAccessibility;
  [(ThumbnailImageViewAccessibility *)&v9 setItem:v4];
  objc_opt_class();
  v5 = [v4 safeValueForKey:@"thumbnail"];
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