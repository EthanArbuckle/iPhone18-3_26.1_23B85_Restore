@interface CAMFlipAspectRatioButtonAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)accessibilityLabel;
- (unint64_t)accessibilityTraits;
- (void)setActive:(BOOL)a3 animated:(BOOL)a4;
@end

@implementation CAMFlipAspectRatioButtonAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"CAMFlipAspectRatioButton" hasInstanceMethod:@"active" withFullSignature:{"B", 0}];
  [v3 validateClass:@"CAMFlipAspectRatioButton" hasInstanceMethod:@"setActive:animated:" withFullSignature:{"v", "B", "B", 0}];
  [v3 validateClass:@"CAMFlipAspectRatioButton" isKindOfClass:@"CAMCircleButton"];
  [v3 validateClass:@"CAMCircleButton" hasInstanceMethod:@"orientation" withFullSignature:{"q", 0}];
}

- (id)accessibilityLabel
{
  v3 = [(CAMFlipAspectRatioButtonAccessibility *)self safeBoolForKey:@"active"];
  v4 = ([(CAMFlipAspectRatioButtonAccessibility *)self safeIntegerForKey:@"orientation"]- 3) < 2;
  v5 = accessibilityCameraUIFRSVLocalizedString(@"flip.aspect.ratio.landscape");
  v6 = accessibilityCameraUIFRSVLocalizedString(@"flip.aspect.ratio.portrait");
  v7 = v6;
  if (v3 != v4)
  {
    v8 = v6;
  }

  else
  {
    v8 = v5;
  }

  v9 = v8;

  return v8;
}

- (unint64_t)accessibilityTraits
{
  v3.receiver = self;
  v3.super_class = CAMFlipAspectRatioButtonAccessibility;
  return *MEMORY[0x29EDC7F70] | [(CAMFlipAspectRatioButtonAccessibility *)&v3 accessibilityTraits];
}

- (void)setActive:(BOOL)a3 animated:(BOOL)a4
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = CAMFlipAspectRatioButtonAccessibility;
  [(CAMFlipAspectRatioButtonAccessibility *)&v14 setActive:a3 animated:a4];
  v6 = ([(CAMFlipAspectRatioButtonAccessibility *)self safeIntegerForKey:@"orientation"]- 3) < 2;
  v7 = accessibilityCameraUIFRSVLocalizedString(@"flipped.aspect.ratio.landscape");
  v8 = accessibilityCameraUIFRSVLocalizedString(@"flipped.aspect.ratio.portrait");
  v9 = v8;
  if (v6 != v4)
  {
    v10 = v7;
  }

  else
  {
    v10 = v8;
  }

  v11 = [MEMORY[0x29EDBD7E8] axAttributedStringWithString:v10];
  [v11 setAttribute:&unk_2A214D030 forKey:*MEMORY[0x29EDBD860]];
  v13 = v11;
  v12 = v11;
  AXPerformBlockOnMainThread();
}

@end