@interface SKUIStackListCollectionViewCellAccessibility
- (id)accessibilityLabel;
@end

@implementation SKUIStackListCollectionViewCellAccessibility

- (id)accessibilityLabel
{
  objc_opt_class();
  v3 = [(SKUIStackListCollectionViewCellAccessibility *)self safeValueForKey:@"listViews"];
  v4 = __UIAccessibilityCastAsClass();

  v5 = [v4 keyEnumerator];
  v6 = [v5 allObjects];
  v7 = MEMORY[0x29ED3A170]();

  return v7;
}

@end