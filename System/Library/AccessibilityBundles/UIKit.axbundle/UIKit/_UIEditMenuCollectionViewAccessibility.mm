@interface _UIEditMenuCollectionViewAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (void)decrementTargetPage;
- (void)incrementTargetPage;
@end

@implementation _UIEditMenuCollectionViewAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  location[2] = a1;
  location[1] = a2;
  v7 = location;
  v6 = 0;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v4 = @"_UIEditMenuCollectionView";
  [location[0] validateClass:? isKindOfClass:?];
  [location[0] validateClass:@"_UIEditMenuCollectionView" hasInstanceMethod:@"currentPage" withFullSignature:{"d", 0}];
  v3 = "v";
  [location[0] validateClass:v4 hasInstanceMethod:@"incrementTargetPage" withFullSignature:0];
  [location[0] validateClass:v4 hasInstanceMethod:@"decrementTargetPage" withFullSignature:{v3, 0}];
  v5 = "q";
  [location[0] validateClass:v4 hasInstanceMethod:@"setTargetPage:" withFullSignature:{v3, "q", 0}];
  [location[0] validateClass:v4 hasInstanceMethod:@"pages" withFullSignature:{"@", 0}];
  [location[0] validateClass:v4 hasInstanceMethod:@"targetPage" withFullSignature:{v5, 0}];
  objc_storeStrong(v7, v6);
}

- (void)incrementTargetPage
{
  v11 = self;
  v10 = a2;
  [(_UIEditMenuCollectionViewAccessibility *)self safeFloatForKey:@"currentPage"];
  v9 = v2;
  [(_UIEditMenuCollectionViewAccessibility *)v11 setTargetPage:v2];
  v8.receiver = v11;
  v8.super_class = _UIEditMenuCollectionViewAccessibility;
  [(_UIEditMenuCollectionViewAccessibility *)&v8 incrementTargetPage];
  v7 = [(_UIEditMenuCollectionViewAccessibility *)v11 safeArrayForKey:@"pages"];
  v6 = [(_UIEditMenuCollectionViewAccessibility *)v11 safeIntegerForKey:@"targetPage"];
  if (v6 == [v7 count] - 1)
  {
    objc_opt_class();
    v5 = __UIAccessibilityCastAsClass();
    v3 = [v5 visibleCells];
    argument = [v3 lastObject];
    MEMORY[0x29EDC9740](v3);
    UIAccessibilityPostNotification(*MEMORY[0x29EDC7ED8], argument);
    objc_storeStrong(&argument, 0);
    objc_storeStrong(&v5, 0);
  }

  objc_storeStrong(&v7, 0);
}

- (void)decrementTargetPage
{
  v6 = self;
  v5 = a2;
  [(_UIEditMenuCollectionViewAccessibility *)self safeFloatForKey:@"currentPage"];
  v4 = v2;
  [(_UIEditMenuCollectionViewAccessibility *)v6 setTargetPage:v2];
  v3.receiver = v6;
  v3.super_class = _UIEditMenuCollectionViewAccessibility;
  [(_UIEditMenuCollectionViewAccessibility *)&v3 decrementTargetPage];
  if (![(_UIEditMenuCollectionViewAccessibility *)v6 safeIntegerForKey:@"targetPage"])
  {
    UIAccessibilityPostNotification(*MEMORY[0x29EDC7ED8], v6);
  }
}

@end