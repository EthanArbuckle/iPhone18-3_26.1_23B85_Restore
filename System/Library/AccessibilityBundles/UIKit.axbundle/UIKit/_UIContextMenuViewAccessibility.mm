@interface _UIContextMenuViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (BOOL)_accessibilityAllowOutOfBoundsHitTestAtPoint:(CGPoint)point withEvent:(id)event;
- (BOOL)accessibilityScrollToVisible;
- (id)accessibilityElements;
- (void)displayMenu:(id)menu updateType:(unint64_t)type alongsideAnimations:(id)animations;
@end

@implementation _UIContextMenuViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  location[2] = self;
  location[1] = a2;
  v10 = location;
  v9 = 0;
  location[0] = 0;
  objc_storeStrong(location, validations);
  v3 = @"_UIContextMenuView";
  v4 = "@";
  [location[0] validateClass:0 hasInstanceMethod:? withFullSignature:?];
  [location[0] validateClass:v3 hasInstanceMethod:@"currentListView" withFullSignature:{v4, 0}];
  v8 = "Q";
  v6 = "v";
  [location[0] validateClass:v3 hasInstanceMethod:@"displayMenu:updateType:alongsideAnimations:" withFullSignature:{v4, "Q", "@?", 0}];
  [location[0] validateClass:@"_UIContextMenuUIController" hasInstanceMethod:@"platterPanController" withFullSignature:{v4, 0}];
  v7 = @"_UIContextMenuPanController";
  v5 = "B";
  [location[0] validateClass:0 hasInstanceMethod:? withFullSignature:?];
  [location[0] validateClass:v7 hasInstanceMethod:@"moveToDetentPosition:updateScrubPath:" withFullSignature:{v6, "q", v5, 0}];
  [location[0] validateClass:v7 hasInstanceVariable:@"_currentDetentIndex" withType:v8];
  objc_storeStrong(v10, v9);
}

- (void)displayMenu:(id)menu updateType:(unint64_t)type alongsideAnimations:(id)animations
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, menu);
  typeCopy = type;
  v16 = 0;
  objc_storeStrong(&v16, animations);
  v7 = selfCopy;
  v8 = location[0];
  v9 = typeCopy;
  v11 = MEMORY[0x29EDCA5F8];
  v12 = 3221225472;
  v13 = __78___UIContextMenuViewAccessibility_displayMenu_updateType_alongsideAnimations___block_invoke;
  v14 = &unk_29F30CA98;
  v15 = MEMORY[0x29EDC9748](v16);
  v10.receiver = v7;
  v10.super_class = _UIContextMenuViewAccessibility;
  [(_UIContextMenuViewAccessibility *)&v10 displayMenu:v8 updateType:v9 alongsideAnimations:?];
  objc_storeStrong(&v15, 0);
  objc_storeStrong(&v16, 0);
  objc_storeStrong(location, 0);
}

- (id)accessibilityElements
{
  v3 = MEMORY[0x29EDB8D80];
  v4 = [(_UIContextMenuViewAccessibility *)self safeValueForKey:@"currentListView"];
  v5 = [v3 axArrayByIgnoringNilElementsWithCount:{1, v4}];
  MEMORY[0x29EDC9740](v4);

  return v5;
}

- (BOOL)accessibilityScrollToVisible
{
  v8[2] = self;
  v8[1] = a2;
  v4 = [(_UIContextMenuViewAccessibility *)self safeValueForKey:@"delegate"];
  v8[0] = [v4 safeValueForKey:@"platterPanController"];
  if ([v8[0] safeBoolForKey:{@"enabled", MEMORY[0x29EDC9740](v4).n128_f64[0]}])
  {
    v6 = [v8[0] safeIntegerForKey:?];
    v5 = MEMORY[0x29EDC9748](v8[0]);
    AXPerformSafeBlock();
    v2 = [v8[0] safeIntegerForKey:@"_currentDetentIndex"];
    v9 = v2 != v6;
    v7 = 1;
    objc_storeStrong(&v5, 0);
  }

  else
  {
    v9 = 0;
    v7 = 1;
  }

  objc_storeStrong(v8, 0);
  return v9;
}

- (BOOL)_accessibilityAllowOutOfBoundsHitTestAtPoint:(CGPoint)point withEvent:(id)event
{
  pointCopy = point;
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, event);
  v13.receiver = selfCopy;
  v13.super_class = _UIContextMenuViewAccessibility;
  v14 = [(_UIContextMenuViewAccessibility *)&v13 _accessibilityAllowOutOfBoundsHitTestAtPoint:location[0] withEvent:pointCopy];
  if (v14)
  {
    v18 = v14 & 1;
  }

  else
  {
    v12 = [(_UIContextMenuViewAccessibility *)selfCopy safeUIViewForKey:@"currentListView"];
    v10 = 0;
    objc_opt_class();
    v9 = __UIAccessibilityCastAsClass();
    v8 = MEMORY[0x29EDC9748](v9);
    objc_storeStrong(&v9, 0);
    v11 = v8;
    UIAccessibilityPointForPoint();
    point.x = v4;
    point.y = v5;
    [v12 accessibilityFrame];
    v18 = CGRectContainsPoint(v19, point);
    objc_storeStrong(&v11, 0);
    objc_storeStrong(&v12, 0);
  }

  objc_storeStrong(location, 0);
  return v18 & 1;
}

@end