@interface SBSystemApertureWindowAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)_accessibilityHitTest:(CGPoint)test withEvent:(id)event;
@end

@implementation SBSystemApertureWindowAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"SpringBoard" hasInstanceMethod:@"systemApertureControllerForMainDisplay" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"SBSystemApertureController" hasInstanceVariable:@"_systemApertureViewController" withType:"SBSystemApertureViewController"];
  [validationsCopy validateClass:@"SBSystemApertureViewController" hasInstanceVariable:@"_systemApertureContainsAnyContent" withType:"BOOL"];
}

- (id)_accessibilityHitTest:(CGPoint)test withEvent:(id)event
{
  y = test.y;
  x = test.x;
  eventCopy = event;
  v8 = [*MEMORY[0x29EDC8008] safeValueForKey:@"systemApertureControllerForMainDisplay"];
  v9 = [v8 safeValueForKey:@"_systemApertureViewController"];
  if ([v9 safeBoolForKey:@"_systemApertureContainsAnyContent"])
  {
    v13.receiver = self;
    v13.super_class = SBSystemApertureWindowAccessibility;
    v10 = [(SBSystemApertureWindowAccessibility *)&v13 _accessibilityHitTest:eventCopy withEvent:x, y];
  }

  else
  {
    v10 = v9;
  }

  v11 = v10;

  return v11;
}

@end