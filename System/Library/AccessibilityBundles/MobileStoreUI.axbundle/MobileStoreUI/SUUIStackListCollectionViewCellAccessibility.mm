@interface SUUIStackListCollectionViewCellAccessibility
- (id)accessibilityLabel;
@end

@implementation SUUIStackListCollectionViewCellAccessibility

- (id)accessibilityLabel
{
  objc_opt_class();
  v3 = [(SUUIStackListCollectionViewCellAccessibility *)self safeValueForKey:@"listViews"];
  v4 = __UIAccessibilityCastAsClass();

  keyEnumerator = [v4 keyEnumerator];
  allObjects = [keyEnumerator allObjects];
  v7 = MEMORY[0x29C2E1480]();

  return v7;
}

@end