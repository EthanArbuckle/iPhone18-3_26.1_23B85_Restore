@interface SBProximitySensorManagerAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (void)_setObjectInProximity:(BOOL)proximity detectionMode:(int)mode;
@end

@implementation SBProximitySensorManagerAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"SBProximitySensorManager" hasInstanceVariable:@"_objectInProximity" withType:"B"];
  [validationsCopy validateClass:@"SBProximitySensorManager" hasInstanceMethod:@"_setObjectInProximity:detectionMode:" withFullSignature:{"v", "B", "i", 0}];
}

- (void)_setObjectInProximity:(BOOL)proximity detectionMode:(int)mode
{
  v4 = *&mode;
  proximityCopy = proximity;
  v7 = [(SBProximitySensorManagerAccessibility *)self safeBoolForKey:@"_objectInProximity"];
  v8.receiver = self;
  v8.super_class = SBProximitySensorManagerAccessibility;
  [(SBProximitySensorManagerAccessibility *)&v8 _setObjectInProximity:proximityCopy detectionMode:v4];
  if ((v7 & 1) == 0 && proximityCopy)
  {
    UIAccessibilityPostNotification(*MEMORY[0x29EDC7EA8], *MEMORY[0x29EDBDAB0]);
  }
}

@end