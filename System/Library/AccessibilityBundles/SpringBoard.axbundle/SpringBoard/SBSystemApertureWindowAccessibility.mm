@interface SBSystemApertureWindowAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)_accessibilityHitTest:(CGPoint)a3 withEvent:(id)a4;
@end

@implementation SBSystemApertureWindowAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"SpringBoard" hasInstanceMethod:@"systemApertureControllerForMainDisplay" withFullSignature:{"@", 0}];
  [v3 validateClass:@"SBSystemApertureController" hasInstanceVariable:@"_systemApertureViewController" withType:"SBSystemApertureViewController"];
  [v3 validateClass:@"SBSystemApertureViewController" hasInstanceVariable:@"_systemApertureContainsAnyContent" withType:"BOOL"];
}

- (id)_accessibilityHitTest:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  v7 = a4;
  v8 = [*MEMORY[0x29EDC8008] safeValueForKey:@"systemApertureControllerForMainDisplay"];
  v9 = [v8 safeValueForKey:@"_systemApertureViewController"];
  if ([v9 safeBoolForKey:@"_systemApertureContainsAnyContent"])
  {
    v13.receiver = self;
    v13.super_class = SBSystemApertureWindowAccessibility;
    v10 = [(SBSystemApertureWindowAccessibility *)&v13 _accessibilityHitTest:v7 withEvent:x, y];
  }

  else
  {
    v10 = v9;
  }

  v11 = v10;

  return v11;
}

@end