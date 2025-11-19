@interface MT_UICollectionViewAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (void)moveItemAtIndexPath:(id)a3 toIndexPath:(id)a4;
@end

@implementation MT_UICollectionViewAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"UICollectionView" hasInstanceMethod:@"dataSource" withFullSignature:{"@", 0}];
  [v3 validateClass:@"UICollectionView" hasInstanceMethod:@"moveItemAtIndexPath: toIndexPath:" withFullSignature:{"v", "@", "@", 0}];
}

- (void)moveItemAtIndexPath:(id)a3 toIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  v12.receiver = self;
  v12.super_class = MT_UICollectionViewAccessibility;
  [(MT_UICollectionViewAccessibility *)&v12 moveItemAtIndexPath:v6 toIndexPath:v7];
  v8 = [(MT_UICollectionViewAccessibility *)self accessibilityIdentifier];
  v9 = [v8 isEqualToString:@"AXMTWorldClockCollectionView"];

  if (v9)
  {
    objc_opt_class();
    v10 = [(MT_UICollectionViewAccessibility *)self safeValueForKey:@"_dataSource"];
    v11 = __UIAccessibilityCastAsSafeCategory();

    [v11 movedItemAtIndexPath:v6 toIndexPath:v7];
  }
}

@end