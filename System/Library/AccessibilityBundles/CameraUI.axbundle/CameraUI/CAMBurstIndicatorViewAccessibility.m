@interface CAMBurstIndicatorViewAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (void)_updateCountLabelWithNumberOfPhotos;
@end

@implementation CAMBurstIndicatorViewAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"CAMBurstIndicatorView" hasInstanceMethod:@"_updateCountLabelWithNumberOfPhotos" withFullSignature:{"v", 0}];
  [v3 validateClass:@"CAMBurstIndicatorView" hasInstanceVariable:@"__numberOfPhotos" withType:"q"];
}

- (void)_updateCountLabelWithNumberOfPhotos
{
  v11.receiver = self;
  v11.super_class = CAMBurstIndicatorViewAccessibility;
  [(CAMBurstIndicatorViewAccessibility *)&v11 _updateCountLabelWithNumberOfPhotos];
  v3 = [(CAMBurstIndicatorViewAccessibility *)self safeValueForKey:@"__numberOfPhotos"];
  v4 = [v3 integerValue];

  if (v4 >= 5)
  {
    v5 = MEMORY[0x29EDBA0F8];
    v6 = accessibilityCameraKitLocalizedString(@"camera.photo.burst.count");
    v7 = AXFormatInteger();
    v8 = [v5 stringWithFormat:v6, v7];

    v9 = [MEMORY[0x29EDBD7E8] axAttributedStringWithString:v8];
    v10 = [MEMORY[0x29EDBA070] numberWithInteger:10];
    [v9 setAttribute:v10 forKey:*MEMORY[0x29EDBD860]];

    UIAccessibilityPostNotification(*MEMORY[0x29EDC7EA8], v9);
  }
}

@end