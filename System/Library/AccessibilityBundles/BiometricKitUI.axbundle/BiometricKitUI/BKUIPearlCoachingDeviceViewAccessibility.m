@interface BKUIPearlCoachingDeviceViewAccessibility
- (CGRect)accessibilityFrame;
- (unint64_t)accessibilityTraits;
@end

@implementation BKUIPearlCoachingDeviceViewAccessibility

- (unint64_t)accessibilityTraits
{
  v3.receiver = self;
  v3.super_class = BKUIPearlCoachingDeviceViewAccessibility;
  return *MEMORY[0x29EDC7F88] | [(BKUIPearlCoachingDeviceViewAccessibility *)&v3 accessibilityTraits];
}

- (CGRect)accessibilityFrame
{
  v2 = [(BKUIPearlCoachingDeviceViewAccessibility *)self safeValueForKey:@"deviceView"];
  [v2 accessibilityFrame];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;

  v11 = v4;
  v12 = v6;
  v13 = v8;
  v14 = v10;
  result.size.height = v14;
  result.size.width = v13;
  result.origin.y = v12;
  result.origin.x = v11;
  return result;
}

@end