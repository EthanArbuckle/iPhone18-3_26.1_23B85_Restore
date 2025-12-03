@interface AddToYourRingTableViewCellAccessibility
- (id)accessibilityElements;
@end

@implementation AddToYourRingTableViewCellAccessibility

- (id)accessibilityElements
{
  v11 = 0;
  objc_opt_class();
  v3 = [(AddToYourRingTableViewCellAccessibility *)self safeSwiftValueForKey:@"addToYourRingCollectionViewController"];
  v4 = __UIAccessibilityCastAsClass();

  collectionView = [v4 collectionView];
  v6 = collectionView;
  if (collectionView)
  {
    v12 = collectionView;
    accessibilityElements = [NSArray arrayWithObjects:&v12 count:1];
  }

  else
  {
    v10.receiver = self;
    v10.super_class = AddToYourRingTableViewCellAccessibility;
    accessibilityElements = [(AddToYourRingTableViewCellAccessibility *)&v10 accessibilityElements];
  }

  v8 = accessibilityElements;

  return v8;
}

@end