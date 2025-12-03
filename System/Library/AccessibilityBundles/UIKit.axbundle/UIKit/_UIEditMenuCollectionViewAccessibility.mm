@interface _UIEditMenuCollectionViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (void)decrementTargetPage;
- (void)incrementTargetPage;
@end

@implementation _UIEditMenuCollectionViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  location[2] = self;
  location[1] = a2;
  v7 = location;
  v6 = 0;
  location[0] = 0;
  objc_storeStrong(location, validations);
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
  selfCopy = self;
  v10 = a2;
  [(_UIEditMenuCollectionViewAccessibility *)self safeFloatForKey:@"currentPage"];
  v9 = v2;
  [(_UIEditMenuCollectionViewAccessibility *)selfCopy setTargetPage:v2];
  v8.receiver = selfCopy;
  v8.super_class = _UIEditMenuCollectionViewAccessibility;
  [(_UIEditMenuCollectionViewAccessibility *)&v8 incrementTargetPage];
  v7 = [(_UIEditMenuCollectionViewAccessibility *)selfCopy safeArrayForKey:@"pages"];
  v6 = [(_UIEditMenuCollectionViewAccessibility *)selfCopy safeIntegerForKey:@"targetPage"];
  if (v6 == [v7 count] - 1)
  {
    objc_opt_class();
    v5 = __UIAccessibilityCastAsClass();
    visibleCells = [v5 visibleCells];
    argument = [visibleCells lastObject];
    MEMORY[0x29EDC9740](visibleCells);
    UIAccessibilityPostNotification(*MEMORY[0x29EDC7ED8], argument);
    objc_storeStrong(&argument, 0);
    objc_storeStrong(&v5, 0);
  }

  objc_storeStrong(&v7, 0);
}

- (void)decrementTargetPage
{
  selfCopy = self;
  v5 = a2;
  [(_UIEditMenuCollectionViewAccessibility *)self safeFloatForKey:@"currentPage"];
  v4 = v2;
  [(_UIEditMenuCollectionViewAccessibility *)selfCopy setTargetPage:v2];
  v3.receiver = selfCopy;
  v3.super_class = _UIEditMenuCollectionViewAccessibility;
  [(_UIEditMenuCollectionViewAccessibility *)&v3 decrementTargetPage];
  if (![(_UIEditMenuCollectionViewAccessibility *)selfCopy safeIntegerForKey:@"targetPage"])
  {
    UIAccessibilityPostNotification(*MEMORY[0x29EDC7ED8], selfCopy);
  }
}

@end