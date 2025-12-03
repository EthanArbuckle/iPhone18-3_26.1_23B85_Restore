@interface SKSceneAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (CGRect)accessibilityFrame;
- (id)accessibilityContainer;
- (void)didChangeSize:(CGSize)size;
- (void)didMoveToView:(id)view;
- (void)willMoveFromView:(id)view;
@end

@implementation SKSceneAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"SKScene" hasInstanceMethod:@"view" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"SKScene" hasInstanceMethod:@"didMoveToView:" withFullSignature:{"v", "@", 0}];
  [validationsCopy validateClass:@"SKScene" hasInstanceMethod:@"didChangeSize:" withFullSignature:{"v", "{CGSize=dd}", 0}];
}

- (CGRect)accessibilityFrame
{
  v29.receiver = self;
  v29.super_class = SKSceneAccessibility;
  [(SKSceneAccessibility *)&v29 accessibilityFrame];
  x = v30.origin.x;
  y = v30.origin.y;
  width = v30.size.width;
  height = v30.size.height;
  if (CGRectIsEmpty(v30))
  {
    objc_opt_class();
    v6 = __UIAccessibilityCastAsClass();
    view = [v6 view];
    [v6 frame];
    v9 = v8;
    v11 = v10;
    [v6 anchorPoint];
    v13 = v12 * v9;
    v15 = v14 * v11;
    v16 = 0.0 - v12 * v9;
    v17 = 0.0 - v14 * v11;
    v18 = v9 - v13;
    v19 = v11 - v15;
    [v6 convertPointToView:{v16, v17}];
    v21 = v20;
    v23 = v22;
    [v6 convertPointToView:{v18, v19}];
    v31.size.width = vabdd_f64(v24, v21);
    v31.size.height = vabdd_f64(v23, v31.origin.y);
    v31.origin.x = v21;
    v32 = UIAccessibilityConvertFrameToScreenCoordinates(v31, view);
    x = v32.origin.x;
    y = v32.origin.y;
    width = v32.size.width;
    height = v32.size.height;
  }

  v25 = x;
  v26 = y;
  v27 = width;
  v28 = height;
  result.size.height = v28;
  result.size.width = v27;
  result.origin.y = v26;
  result.origin.x = v25;
  return result;
}

- (id)accessibilityContainer
{
  v5.receiver = self;
  v5.super_class = SKSceneAccessibility;
  accessibilityContainer = [(SKSceneAccessibility *)&v5 accessibilityContainer];
  if (!accessibilityContainer)
  {
    accessibilityContainer = [(SKSceneAccessibility *)self safeValueForKey:@"view"];
  }

  return accessibilityContainer;
}

- (void)didMoveToView:(id)view
{
  v3.receiver = self;
  v3.super_class = SKSceneAccessibility;
  [(SKSceneAccessibility *)&v3 didMoveToView:view];
  UIAccessibilityPostNotification(*MEMORY[0x29EDC7ED8], 0);
}

- (void)didChangeSize:(CGSize)size
{
  v3.receiver = self;
  v3.super_class = SKSceneAccessibility;
  [(SKSceneAccessibility *)&v3 didChangeSize:size.width, size.height];
  UIAccessibilityPostNotification(*MEMORY[0x29EDC7ED8], 0);
}

- (void)willMoveFromView:(id)view
{
  v3.receiver = self;
  v3.super_class = SKSceneAccessibility;
  [(SKSceneAccessibility *)&v3 willMoveFromView:view];
  UIAccessibilityPostNotification(*MEMORY[0x29EDC7ED8], 0);
}

@end