@interface SCNSceneAccessibility
- (BOOL)accessibilityContainerIsSet;
- (CGRect)accessibilityFrame;
- (id)accessibilityContainer;
- (id)accessibilityElements;
- (void)dealloc;
@end

@implementation SCNSceneAccessibility

- (void)dealloc
{
  [(SCNSceneAccessibility *)self _accessibilityUnregister];
  v3.receiver = self;
  v3.super_class = SCNSceneAccessibility;
  [(SCNSceneAccessibility *)&v3 dealloc];
}

- (id)accessibilityElements
{
  v3 = [(SCNSceneAccessibility *)self safeValueForKey:@"rootNode"];
  [v3 setAccessibilityContainer:self];
  v4 = [MEMORY[0x29EDB8D80] axArrayByIgnoringNilElementsWithCount:{1, v3}];

  return v4;
}

- (BOOL)accessibilityContainerIsSet
{
  v5.receiver = self;
  v5.super_class = SCNSceneAccessibility;
  v2 = [(SCNSceneAccessibility *)&v5 accessibilityContainer];
  v3 = v2 != 0;

  return v3;
}

- (id)accessibilityContainer
{
  v4.receiver = self;
  v4.super_class = SCNSceneAccessibility;
  v2 = [(SCNSceneAccessibility *)&v4 accessibilityContainer];
  if (!v2)
  {
    _AXAssert();
  }

  return v2;
}

- (CGRect)accessibilityFrame
{
  v2 = [(SCNSceneAccessibility *)self accessibilityContainer];
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