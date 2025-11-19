@interface NTKCFaceDetailEditOptionCellAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)accessibilityElements;
- (id)collectionView:(id)a3 cellForItemAtIndexPath:(id)a4;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)_axAnnotateCell:(id)a3 atIndexPath:(id)a4;
@end

@implementation NTKCFaceDetailEditOptionCellAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"NTKCFaceDetailEditOptionCell" hasInstanceMethod:@"collectionView" withFullSignature:{"@", 0}];
  [v3 validateClass:@"NTKCFaceDetailEditOptionCell" hasInstanceMethod:@"optionsDescription" withFullSignature:{"@", 0}];
  [v3 validateClass:@"NTKCFaceDetailEditOptionCell" hasInstanceMethod:@"collectionView: cellForItemAtIndexPath:" withFullSignature:{"@", "@", "@", 0}];
  [v3 validateClass:@"NTKCFaceDetailEditOptionCell" hasInstanceMethod:@"collection" withFullSignature:{"@", 0}];
  [v3 validateClass:@"NTKEditOptionCollection"];
  [v3 validateClass:@"NTKEditOptionCollection" hasInstanceMethod:@"options" withFullSignature:{"@", 0}];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v17.receiver = self;
  v17.super_class = NTKCFaceDetailEditOptionCellAccessibility;
  [(NTKCFaceDetailEditOptionCellAccessibility *)&v17 _accessibilityLoadAccessibilityInformation];
  v16 = 0;
  objc_opt_class();
  v3 = [(NTKCFaceDetailEditOptionCellAccessibility *)self safeValueForKey:@"collectionView"];
  v4 = __UIAccessibilityCastAsClass();

  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = [v4 visibleCells];
  v6 = [v5 countByEnumeratingWithState:&v12 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v12 + 1) + 8 * i);
        v11 = [v4 indexPathForCell:v10];
        [(NTKCFaceDetailEditOptionCellAccessibility *)self _axAnnotateCell:v10 atIndexPath:v11];
      }

      v7 = [v5 countByEnumeratingWithState:&v12 objects:v18 count:16];
    }

    while (v7);
  }
}

- (id)accessibilityElements
{
  v3 = +[NSMutableArray array];
  v4 = [(NTKCFaceDetailEditOptionCellAccessibility *)self safeValueForKey:@"collectionView"];
  [v3 axSafelyAddObject:v4];

  v5 = [(NTKCFaceDetailEditOptionCellAccessibility *)self safeValueForKey:@"optionsDescription"];
  [v3 axSafelyAddObject:v5];

  if ([v3 count])
  {
    v6 = v3;
  }

  else
  {
    v9.receiver = self;
    v9.super_class = NTKCFaceDetailEditOptionCellAccessibility;
    v6 = [(NTKCFaceDetailEditOptionCellAccessibility *)&v9 accessibilityElements];
  }

  v7 = v6;

  return v7;
}

- (id)collectionView:(id)a3 cellForItemAtIndexPath:(id)a4
{
  v9.receiver = self;
  v9.super_class = NTKCFaceDetailEditOptionCellAccessibility;
  v6 = a4;
  v7 = [(NTKCFaceDetailEditOptionCellAccessibility *)&v9 collectionView:a3 cellForItemAtIndexPath:v6];
  [(NTKCFaceDetailEditOptionCellAccessibility *)self _axAnnotateCell:v7 atIndexPath:v6, v9.receiver, v9.super_class];

  return v7;
}

- (void)_axAnnotateCell:(id)a3 atIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(NTKCFaceDetailEditOptionCellAccessibility *)self safeValueForKey:@"collection"];
  objc_opt_class();
  v9 = [v8 safeValueForKey:@"options"];
  v10 = __UIAccessibilityCastAsClass();

  if (v10)
  {
    v11 = [v7 item];
    if (v11 < [v10 count])
    {
      v12 = [v10 objectAtIndex:{objc_msgSend(v7, "item")}];
      [v6 _accessibilitySetRetainedValue:v12 forKey:@"AXNTKEditOption"];
    }
  }
}

@end