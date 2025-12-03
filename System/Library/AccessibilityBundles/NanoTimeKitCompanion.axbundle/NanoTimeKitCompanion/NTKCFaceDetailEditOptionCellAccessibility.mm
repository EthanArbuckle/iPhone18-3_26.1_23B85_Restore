@interface NTKCFaceDetailEditOptionCellAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)accessibilityElements;
- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)_axAnnotateCell:(id)cell atIndexPath:(id)path;
@end

@implementation NTKCFaceDetailEditOptionCellAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"NTKCFaceDetailEditOptionCell" hasInstanceMethod:@"collectionView" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"NTKCFaceDetailEditOptionCell" hasInstanceMethod:@"optionsDescription" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"NTKCFaceDetailEditOptionCell" hasInstanceMethod:@"collectionView: cellForItemAtIndexPath:" withFullSignature:{"@", "@", "@", 0}];
  [validationsCopy validateClass:@"NTKCFaceDetailEditOptionCell" hasInstanceMethod:@"collection" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"NTKEditOptionCollection"];
  [validationsCopy validateClass:@"NTKEditOptionCollection" hasInstanceMethod:@"options" withFullSignature:{"@", 0}];
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
  visibleCells = [v4 visibleCells];
  v6 = [visibleCells countByEnumeratingWithState:&v12 objects:v18 count:16];
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
          objc_enumerationMutation(visibleCells);
        }

        v10 = *(*(&v12 + 1) + 8 * i);
        v11 = [v4 indexPathForCell:v10];
        [(NTKCFaceDetailEditOptionCellAccessibility *)self _axAnnotateCell:v10 atIndexPath:v11];
      }

      v7 = [visibleCells countByEnumeratingWithState:&v12 objects:v18 count:16];
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
    accessibilityElements = v3;
  }

  else
  {
    v9.receiver = self;
    v9.super_class = NTKCFaceDetailEditOptionCellAccessibility;
    accessibilityElements = [(NTKCFaceDetailEditOptionCellAccessibility *)&v9 accessibilityElements];
  }

  v7 = accessibilityElements;

  return v7;
}

- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path
{
  v9.receiver = self;
  v9.super_class = NTKCFaceDetailEditOptionCellAccessibility;
  pathCopy = path;
  v7 = [(NTKCFaceDetailEditOptionCellAccessibility *)&v9 collectionView:view cellForItemAtIndexPath:pathCopy];
  [(NTKCFaceDetailEditOptionCellAccessibility *)self _axAnnotateCell:v7 atIndexPath:pathCopy, v9.receiver, v9.super_class];

  return v7;
}

- (void)_axAnnotateCell:(id)cell atIndexPath:(id)path
{
  cellCopy = cell;
  pathCopy = path;
  v8 = [(NTKCFaceDetailEditOptionCellAccessibility *)self safeValueForKey:@"collection"];
  objc_opt_class();
  v9 = [v8 safeValueForKey:@"options"];
  v10 = __UIAccessibilityCastAsClass();

  if (v10)
  {
    item = [pathCopy item];
    if (item < [v10 count])
    {
      v12 = [v10 objectAtIndex:{objc_msgSend(pathCopy, "item")}];
      [cellCopy _accessibilitySetRetainedValue:v12 forKey:@"AXNTKEditOption"];
    }
  }
}

@end