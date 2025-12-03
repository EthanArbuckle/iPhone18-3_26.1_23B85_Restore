@interface SKUIStackListCollectionViewCellAccessibility
- (id)accessibilityLabel;
@end

@implementation SKUIStackListCollectionViewCellAccessibility

- (id)accessibilityLabel
{
  objc_opt_class();
  v3 = [(SKUIStackListCollectionViewCellAccessibility *)self safeValueForKey:@"listViews"];
  v4 = __UIAccessibilityCastAsClass();

  keyEnumerator = [v4 keyEnumerator];
  allObjects = [keyEnumerator allObjects];
  v7 = MEMORY[0x29ED3A170]();

  return v7;
}

@end