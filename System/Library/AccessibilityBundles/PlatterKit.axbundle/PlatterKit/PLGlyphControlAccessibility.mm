@interface PLGlyphControlAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (CGPoint)accessibilityActivationPoint;
- (id)accessibilityPath;
@end

@implementation PLGlyphControlAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"PLGlyphControl" hasInstanceMethod:@"_backgroundMaterialView" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"PLGlyphControl" hasInstanceMethod:@"_cornerRadius" withFullSignature:{"d", 0}];
}

- (id)accessibilityPath
{
  v3 = [(PLGlyphControlAccessibility *)self safeValueForKey:@"_backgroundMaterialView"];
  [v3 _accessibilityBounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  v12 = MEMORY[0x29EDC7948];
  [(PLGlyphControlAccessibility *)self safeCGFloatForKey:@"_cornerRadius"];
  v14 = [v12 bezierPathWithRoundedRect:v5 cornerRadius:{v7, v9, v11, v13}];
  v15 = [(PLGlyphControlAccessibility *)self safeValueForKey:@"_backgroundMaterialView"];
  v16 = UIAccessibilityConvertPathToScreenCoordinates(v14, v15);

  return v16;
}

- (CGPoint)accessibilityActivationPoint
{
  v2 = [(PLGlyphControlAccessibility *)self safeValueForKey:@"_backgroundMaterialView"];
  [v2 accessibilityActivationPoint];
  v4 = v3;
  v6 = v5;

  v7 = v4;
  v8 = v6;
  result.y = v8;
  result.x = v7;
  return result;
}

@end