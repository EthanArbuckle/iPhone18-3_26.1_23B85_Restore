@interface ARViewAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)accessibilityElements;
- (id)accessibilityElementsForEntityWrappers:(id)a3;
@end

@implementation ARViewAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"RealityKit.ARView"];
  [v3 validateClass:@"RealityKit.ARView" hasInstanceMethod:@"entityAccessibilityWrappers" withFullSignature:{"@", 0}];
  [v3 validateClass:@"RealityKit.ARView" hasInstanceMethod:@"distanceInMetersFromEntityAccessibilityWrapper:" withFullSignature:{"f", "@", 0}];
  [v3 validateClass:@"RealityKit.ARView" hasInstanceMethod:@"handleTapForEntityAccessibilityWrapper:" withFullSignature:{"B", "@", 0}];
  [v3 validateClass:@"RealityKit.__EntityAccessibilityWrapper" hasInstanceMethod:@"identifier" withFullSignature:{"Q", 0}];
  [v3 validateClass:@"RealityKit.__EntityAccessibilityWrapper" hasInstanceMethod:@"rootEntityWrapper" withFullSignature:{"@", 0}];
  [v3 validateClass:@"RealityKit.__EntityAccessibilityWrapper" hasInstanceMethod:@"entityLabel" withFullSignature:{"@", 0}];
  [v3 validateClass:@"RealityKit.__EntityAccessibilityWrapper" hasInstanceMethod:@"entityDescription" withFullSignature:{"@", 0}];
  [v3 validateClass:@"RealityKit.__EntityAccessibilityWrapper" hasInstanceMethod:@"isEntityAccessible" withFullSignature:{"B", 0}];
  [v3 validateClass:@"RealityKit.__EntityAccessibilityWrapper" hasInstanceMethod:@"isEntityActive" withFullSignature:{"B", 0}];
  [v3 validateClass:@"RealityKit.__EntityAccessibilityWrapper" hasInstanceMethod:@"calculateScreenBoundingRectIn:" withFullSignature:{"{CGRect={CGPoint=dd}{CGSize=dd}}", "@", 0}];
  [v3 validateClass:@"RealityKit.__EntityAccessibilityWrapper" hasInstanceMethod:@"entityAccessibilityTraits" withFullSignature:{"Q", 0}];
  [v3 validateClass:@"RealityKit.__EntityAccessibilityWrapper" hasInstanceMethod:@"entityValue" withFullSignature:{"@", 0}];
  [v3 validateClass:@"RealityKit.__EntityAccessibilityWrapper" hasInstanceMethod:@"entitySupportsAccessibilityActivateAction" withFullSignature:{"B", 0}];
  [v3 validateClass:@"RealityKit.__EntityAccessibilityWrapper" hasInstanceMethod:@"entityPerformAccessibilityActivate" withFullSignature:{"v", 0}];
  [v3 validateClass:@"RealityKit.__EntityAccessibilityWrapper" hasInstanceMethod:@"entityAccessibilityCustomContent" withFullSignature:{"@", 0}];
  [v3 validateClass:@"RealityKit.__EntityAccessibilityWrapper" hasInstanceMethod:@"entityAccessibilityCustomActions" withFullSignature:{"@", 0}];
  [v3 validateClass:@"RealityKit.__EntityAccessibilityWrapper" hasInstanceMethod:@"entityAccessibilityCustomRotors" withFullSignature:{"@", 0}];
  [v3 validateClass:@"RealityKit.__EntityAccessibilityWrapper" hasInstanceMethod:@"entityPerformAccessibilityIncrement" withFullSignature:{"v", 0}];
  [v3 validateClass:@"RealityKit.__EntityAccessibilityWrapper" hasInstanceMethod:@"entityPerformAccessibilityDecrement" withFullSignature:{"v", 0}];
}

- (id)accessibilityElements
{
  v8.receiver = self;
  v8.super_class = ARViewAccessibility;
  v3 = [(ARViewAccessibility *)&v8 accessibilityElements];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v6 = [(ARViewAccessibility *)self safeArrayForKey:@"entityAccessibilityWrappers"];
    v5 = [(ARViewAccessibility *)self accessibilityElementsForEntityWrappers:v6];
  }

  return v5;
}

- (id)accessibilityElementsForEntityWrappers:(id)a3
{
  v24 = *MEMORY[0x29EDCA608];
  v4 = a3;
  v17 = self;
  v5 = [(ARViewAccessibility *)self _axCachedElementsByEntityWrapper];
  v6 = [MEMORY[0x29EDB8E00] dictionary];
  v7 = [MEMORY[0x29EDB8DE8] array];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  obj = v4;
  v8 = [obj countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v20;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v20 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v19 + 1) + 8 * i);
        v13 = [v12 safeValueForKey:@"identifier"];
        v14 = [v5 objectForKeyedSubscript:v13];
        if (!v14)
        {
          v14 = [[AXARViewElement alloc] initWithAccessibilityContainer:v17 entityWrapper:v12];
        }

        [v7 addObject:v14];
        [v6 setObject:v14 forKeyedSubscript:v13];
      }

      v9 = [obj countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v9);
  }

  [(ARViewAccessibility *)v17 _axSetCachedElementsByEntityWrapper:v6];
  v15 = *MEMORY[0x29EDCA608];

  return v7;
}

@end