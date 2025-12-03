@interface MT_UICollectionViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (void)moveItemAtIndexPath:(id)path toIndexPath:(id)indexPath;
@end

@implementation MT_UICollectionViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"UICollectionView" hasInstanceMethod:@"dataSource" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"UICollectionView" hasInstanceMethod:@"moveItemAtIndexPath: toIndexPath:" withFullSignature:{"v", "@", "@", 0}];
}

- (void)moveItemAtIndexPath:(id)path toIndexPath:(id)indexPath
{
  pathCopy = path;
  indexPathCopy = indexPath;
  v12.receiver = self;
  v12.super_class = MT_UICollectionViewAccessibility;
  [(MT_UICollectionViewAccessibility *)&v12 moveItemAtIndexPath:pathCopy toIndexPath:indexPathCopy];
  accessibilityIdentifier = [(MT_UICollectionViewAccessibility *)self accessibilityIdentifier];
  v9 = [accessibilityIdentifier isEqualToString:@"AXMTWorldClockCollectionView"];

  if (v9)
  {
    objc_opt_class();
    v10 = [(MT_UICollectionViewAccessibility *)self safeValueForKey:@"_dataSource"];
    v11 = __UIAccessibilityCastAsSafeCategory();

    [v11 movedItemAtIndexPath:pathCopy toIndexPath:indexPathCopy];
  }
}

@end