@interface STSImageCellAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)accessibilityLabel;
@end

@implementation STSImageCellAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"STSImageCell" hasInstanceMethod:@"imageInfo" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"STSAnimatedImageInfo"];
  [validationsCopy validateClass:@"STSAnimatedImageInfo" hasInstanceMethod:@"duration" withFullSignature:{"d", 0}];
}

- (id)accessibilityLabel
{
  v3 = accessibilityLocalizedString(@"meme.label");
  v4 = [(STSImageCellAccessibility *)self safeValueForKey:@"imageInfo"];
  v5 = v4;
  if (!v4 || ([v4 safeFloatForKey:@"duration"], v6 == 0.0))
  {
    v7 = 0;
  }

  else
  {
    v7 = AXDurationStringForDuration();
  }

  v8 = __UIAXStringForVariables();

  return v8;
}

@end