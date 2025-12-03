@interface PXUIMapWidgetAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)_axUpdateMapImageView;
- (void)_loadContainerView;
@end

@implementation PXUIMapWidgetAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"PXImageUIView"];
  [validationsCopy validateClass:@"PXUIMapWidget" hasInstanceMethod:@"_imageView" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"PXImageUIView" hasInstanceMethod:@"_imageView" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"PXUIMapWidget" hasInstanceMethod:@"_loadContainerView" withFullSignature:{"v", 0}];
}

- (void)_axUpdateMapImageView
{
  v4 = [(PXUIMapWidgetAccessibility *)self safeValueForKey:@"_imageView"];
  v2 = [v4 safeValueForKey:@"_imageView"];
  v3 = accessibilityPhotosUICoreLocalizedString(@"widget.map.summaryimage.label");
  [v2 setAccessibilityLabel:v3];

  [v2 setAccessibilityTraits:*MEMORY[0x29EDC7F70]];
  [v2 accessibilitySetIdentification:@"AXMemoryTileImageView"];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v3.receiver = self;
  v3.super_class = PXUIMapWidgetAccessibility;
  [(PXUIMapWidgetAccessibility *)&v3 _accessibilityLoadAccessibilityInformation];
  [(PXUIMapWidgetAccessibility *)self _axUpdateMapImageView];
}

- (void)_loadContainerView
{
  v3.receiver = self;
  v3.super_class = PXUIMapWidgetAccessibility;
  [(PXUIMapWidgetAccessibility *)&v3 _loadContainerView];
  [(PXUIMapWidgetAccessibility *)self _axUpdateMapImageView];
}

@end