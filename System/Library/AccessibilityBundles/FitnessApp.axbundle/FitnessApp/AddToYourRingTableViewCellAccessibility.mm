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

  v5 = [v4 collectionView];
  v6 = v5;
  if (v5)
  {
    v12 = v5;
    v7 = [NSArray arrayWithObjects:&v12 count:1];
  }

  else
  {
    v10.receiver = self;
    v10.super_class = AddToYourRingTableViewCellAccessibility;
    v7 = [(AddToYourRingTableViewCellAccessibility *)&v10 accessibilityElements];
  }

  v8 = v7;

  return v8;
}

@end