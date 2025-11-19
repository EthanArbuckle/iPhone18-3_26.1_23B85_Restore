@interface SUUIStackListCollectionViewCellAccessibility
- (id)accessibilityLabel;
@end

@implementation SUUIStackListCollectionViewCellAccessibility

- (id)accessibilityLabel
{
  objc_opt_class();
  v3 = [(SUUIStackListCollectionViewCellAccessibility *)self safeValueForKey:@"listViews"];
  v4 = __UIAccessibilityCastAsClass();

  v5 = [v4 keyEnumerator];
  v6 = [v5 allObjects];
  v7 = MEMORY[0x29C2E1480]();

  return v7;
}

@end