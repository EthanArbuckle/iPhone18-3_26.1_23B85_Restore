@interface BKCollectionsListCellAccessibility
- (unint64_t)accessibilityTraits;
@end

@implementation BKCollectionsListCellAccessibility

- (unint64_t)accessibilityTraits
{
  v11.receiver = self;
  v11.super_class = BKCollectionsListCellAccessibility;
  v3 = [(BKCollectionsListCellAccessibility *)&v11 accessibilityTraits];
  v10 = 10003;
  v4 = [[NSString alloc] initWithCharacters:&v10 length:1];
  v5 = [(BKCollectionsListCellAccessibility *)self accessoryView];
  v6 = [v5 accessibilityLabel];
  v7 = [v6 isEqualToString:v4];

  if (v7)
  {
    v8 = UIAccessibilityTraitSelected;
  }

  else
  {
    v8 = 0;
  }

  return v8 | v3;
}

@end