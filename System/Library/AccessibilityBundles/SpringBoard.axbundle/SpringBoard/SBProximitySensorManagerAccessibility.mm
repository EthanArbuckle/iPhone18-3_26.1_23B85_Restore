@interface SBProximitySensorManagerAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (void)_setObjectInProximity:(BOOL)a3 detectionMode:(int)a4;
@end

@implementation SBProximitySensorManagerAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"SBProximitySensorManager" hasInstanceVariable:@"_objectInProximity" withType:"B"];
  [v3 validateClass:@"SBProximitySensorManager" hasInstanceMethod:@"_setObjectInProximity:detectionMode:" withFullSignature:{"v", "B", "i", 0}];
}

- (void)_setObjectInProximity:(BOOL)a3 detectionMode:(int)a4
{
  v4 = *&a4;
  v5 = a3;
  v7 = [(SBProximitySensorManagerAccessibility *)self safeBoolForKey:@"_objectInProximity"];
  v8.receiver = self;
  v8.super_class = SBProximitySensorManagerAccessibility;
  [(SBProximitySensorManagerAccessibility *)&v8 _setObjectInProximity:v5 detectionMode:v4];
  if ((v7 & 1) == 0 && v5)
  {
    UIAccessibilityPostNotification(*MEMORY[0x29EDC7EA8], *MEMORY[0x29EDBDAB0]);
  }
}

@end