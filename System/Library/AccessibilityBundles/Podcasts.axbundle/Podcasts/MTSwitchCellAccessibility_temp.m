@interface MTSwitchCellAccessibility_temp
+ (void)_accessibilityPerformValidations:(id)a3;
- (CGPoint)accessibilityActivationPoint;
- (id)accessibilityValue;
- (unint64_t)accessibilityTraits;
@end

@implementation MTSwitchCellAccessibility_temp

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"MTSwitchCell" hasInstanceMethod:@"toggle" withFullSignature:{"@", 0}];
  [v3 validateClass:@"MTSwitchCell" hasInstanceMethod:@"toggleChanged:" withFullSignature:{"v", "@", 0}];
}

- (id)accessibilityValue
{
  v2 = [(MTSwitchCellAccessibility_temp *)self safeValueForKey:@"toggle"];
  v3 = [v2 accessibilityValue];

  return v3;
}

- (CGPoint)accessibilityActivationPoint
{
  v2 = [(MTSwitchCellAccessibility_temp *)self safeValueForKey:@"toggle"];
  [v2 accessibilityActivationPoint];
  v4 = v3;
  v6 = v5;

  v7 = v4;
  v8 = v6;
  result.y = v8;
  result.x = v7;
  return result;
}

- (unint64_t)accessibilityTraits
{
  v2 = [(MTSwitchCellAccessibility_temp *)self safeValueForKey:@"toggle"];
  [v2 accessibilityTraits];

  v3 = *MEMORY[0x29EDBDBD0];

  return _AXTraitsRemoveTrait();
}

@end