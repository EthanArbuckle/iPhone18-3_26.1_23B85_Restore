@interface UIInterfaceActionRepresentationViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (BOOL)_showsFocusForFocusedView:(id)view;
- (id)accessibilityPath;
@end

@implementation UIInterfaceActionRepresentationViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  location[2] = self;
  location[1] = a2;
  v6 = location;
  obj = 0;
  location[0] = 0;
  objc_storeStrong(location, validations);
  v4 = "@";
  v3 = @"UIInterfaceActionRepresentationView";
  [location[0] validateClass:"@" hasInstanceMethod:0 withFullSignature:?];
  [location[0] validateClass:v3 hasInstanceMethod:@"backgroundHighlightView" withFullSignature:{v4, 0}];
  objc_storeStrong(v6, obj);
}

- (id)accessibilityPath
{
  selfCopy = self;
  v10 = a2;
  v5 = [(UIInterfaceActionRepresentationViewAccessibility *)self safeValueForKey:@"backgroundHighlightView"];
  accessibilityPath = [v5 accessibilityPath];
  v7 = 0;
  if (accessibilityPath)
  {
    v2 = MEMORY[0x29EDC9748](accessibilityPath);
  }

  else
  {
    v9.receiver = selfCopy;
    v9.super_class = UIInterfaceActionRepresentationViewAccessibility;
    accessibilityPath2 = [(UIInterfaceActionRepresentationViewAccessibility *)&v9 accessibilityPath];
    v7 = 1;
    v2 = MEMORY[0x29EDC9748](accessibilityPath2);
  }

  v12 = v2;
  if (v7)
  {
    MEMORY[0x29EDC9740](accessibilityPath2);
  }

  MEMORY[0x29EDC9740](accessibilityPath);
  MEMORY[0x29EDC9740](v5);
  v3 = v12;

  return v3;
}

- (BOOL)_showsFocusForFocusedView:(id)view
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, view);
  v5.receiver = selfCopy;
  v5.super_class = UIInterfaceActionRepresentationViewAccessibility;
  v6 = [(UIInterfaceActionRepresentationViewAccessibility *)&v5 _showsFocusForFocusedView:location[0]];
  if (([(UIInterfaceActionRepresentationViewAccessibility *)selfCopy _accessibilityIsFKARunningForFocusItem]& 1) != 0)
  {
    v6 = 0;
  }

  v4 = v6;
  objc_storeStrong(location, 0);
  return v4 & 1;
}

@end