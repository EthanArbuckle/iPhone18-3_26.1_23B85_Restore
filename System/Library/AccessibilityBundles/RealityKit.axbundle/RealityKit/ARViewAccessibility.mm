@interface ARViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)accessibilityElements;
- (id)accessibilityElementsForEntityWrappers:(id)wrappers;
@end

@implementation ARViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"RealityKit.ARView"];
  [validationsCopy validateClass:@"RealityKit.ARView" hasInstanceMethod:@"entityAccessibilityWrappers" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"RealityKit.ARView" hasInstanceMethod:@"distanceInMetersFromEntityAccessibilityWrapper:" withFullSignature:{"f", "@", 0}];
  [validationsCopy validateClass:@"RealityKit.ARView" hasInstanceMethod:@"handleTapForEntityAccessibilityWrapper:" withFullSignature:{"B", "@", 0}];
  [validationsCopy validateClass:@"RealityKit.__EntityAccessibilityWrapper" hasInstanceMethod:@"identifier" withFullSignature:{"Q", 0}];
  [validationsCopy validateClass:@"RealityKit.__EntityAccessibilityWrapper" hasInstanceMethod:@"rootEntityWrapper" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"RealityKit.__EntityAccessibilityWrapper" hasInstanceMethod:@"entityLabel" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"RealityKit.__EntityAccessibilityWrapper" hasInstanceMethod:@"entityDescription" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"RealityKit.__EntityAccessibilityWrapper" hasInstanceMethod:@"isEntityAccessible" withFullSignature:{"B", 0}];
  [validationsCopy validateClass:@"RealityKit.__EntityAccessibilityWrapper" hasInstanceMethod:@"isEntityActive" withFullSignature:{"B", 0}];
  [validationsCopy validateClass:@"RealityKit.__EntityAccessibilityWrapper" hasInstanceMethod:@"calculateScreenBoundingRectIn:" withFullSignature:{"{CGRect={CGPoint=dd}{CGSize=dd}}", "@", 0}];
  [validationsCopy validateClass:@"RealityKit.__EntityAccessibilityWrapper" hasInstanceMethod:@"entityAccessibilityTraits" withFullSignature:{"Q", 0}];
  [validationsCopy validateClass:@"RealityKit.__EntityAccessibilityWrapper" hasInstanceMethod:@"entityValue" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"RealityKit.__EntityAccessibilityWrapper" hasInstanceMethod:@"entitySupportsAccessibilityActivateAction" withFullSignature:{"B", 0}];
  [validationsCopy validateClass:@"RealityKit.__EntityAccessibilityWrapper" hasInstanceMethod:@"entityPerformAccessibilityActivate" withFullSignature:{"v", 0}];
  [validationsCopy validateClass:@"RealityKit.__EntityAccessibilityWrapper" hasInstanceMethod:@"entityAccessibilityCustomContent" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"RealityKit.__EntityAccessibilityWrapper" hasInstanceMethod:@"entityAccessibilityCustomActions" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"RealityKit.__EntityAccessibilityWrapper" hasInstanceMethod:@"entityAccessibilityCustomRotors" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"RealityKit.__EntityAccessibilityWrapper" hasInstanceMethod:@"entityPerformAccessibilityIncrement" withFullSignature:{"v", 0}];
  [validationsCopy validateClass:@"RealityKit.__EntityAccessibilityWrapper" hasInstanceMethod:@"entityPerformAccessibilityDecrement" withFullSignature:{"v", 0}];
}

- (id)accessibilityElements
{
  v8.receiver = self;
  v8.super_class = ARViewAccessibility;
  accessibilityElements = [(ARViewAccessibility *)&v8 accessibilityElements];
  v4 = accessibilityElements;
  if (accessibilityElements)
  {
    v5 = accessibilityElements;
  }

  else
  {
    v6 = [(ARViewAccessibility *)self safeArrayForKey:@"entityAccessibilityWrappers"];
    v5 = [(ARViewAccessibility *)self accessibilityElementsForEntityWrappers:v6];
  }

  return v5;
}

- (id)accessibilityElementsForEntityWrappers:(id)wrappers
{
  v24 = *MEMORY[0x29EDCA608];
  wrappersCopy = wrappers;
  selfCopy = self;
  _axCachedElementsByEntityWrapper = [(ARViewAccessibility *)self _axCachedElementsByEntityWrapper];
  dictionary = [MEMORY[0x29EDB8E00] dictionary];
  array = [MEMORY[0x29EDB8DE8] array];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  obj = wrappersCopy;
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
        v14 = [_axCachedElementsByEntityWrapper objectForKeyedSubscript:v13];
        if (!v14)
        {
          v14 = [[AXARViewElement alloc] initWithAccessibilityContainer:selfCopy entityWrapper:v12];
        }

        [array addObject:v14];
        [dictionary setObject:v14 forKeyedSubscript:v13];
      }

      v9 = [obj countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v9);
  }

  [(ARViewAccessibility *)selfCopy _axSetCachedElementsByEntityWrapper:dictionary];
  v15 = *MEMORY[0x29EDCA608];

  return array;
}

@end